;╔══════════════════════════════════════════╗
;║ S_PL0B : Captain America Program         ║
;╚══════════════════════════════════════════╝
    
#symbol loc_8c02fec4 0x8C02FEC4
#symbol loc_8c034dee 0x8C034DEE
#symbol loc_8c034e8c 0x8C034E8C
#symbol loc_8c035162 0x8C035162
#symbol loc_8c042008 0x8C042008
#symbol loc_8c04223a 0x8C04223A
#symbol loc_8c0423fc 0x8C0423FC
#symbol loc_8c0424a6 0x8C0424A6
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
#symbol loc_8c0523d8 0x8C0523D8
#symbol loc_8c05248e 0x8C05248E
#symbol loc_8c05264c 0x8C05264C
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
#symbol loc_8c055c3a 0x8C055C3A
#symbol loc_8c056de4 0x8C056DE4
#symbol loc_8c056f2a 0x8C056F2A
#symbol loc_8c05933c 0x8C05933C
#symbol loc_8c059f64 0x8C059F64
#symbol loc_8c06e9dc 0x8C06E9DC
#symbol loc_8c0c21b0 0x8C0C21B0
#symbol loc_8c0c220a 0x8C0C220A
#symbol loc_8c0c3018 0x8C0C3018
#symbol loc_8c0fdab6 0x8C0FDAB6
#symbol loc_8c0fdb4e 0x8C0FDB4E
#symbol loc_8c1025ca 0x8C1025CA
#symbol loc_8c103660 0x8C103660
#symbol loc_8c11e730 0x8C11E730
#symbol loc_8c129728 0x8C129728
#symbol loc_8c26823c 0x8C26823C
#symbol loc_8c26a518 0x8C26A518
#symbol loc_8c2895f0 0x8C2895F0
#symbol loc_8c289636 0x8C289636
#symbol loc_8c2896b0 0x8C2896B0

;=============================================

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
    bsr FUN_ce30128
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce3016e
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce301b4
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30224
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce302a2
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce302ee
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30398
    mov r14,r4
    tst r0,r0
    bf LAB_ce300b8
    bsr FUN_ce30360
    mov r14,r4
    extu.b r0,r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce300be:
    #data 0x0428
    #align4

PTR_ce300c0:
    #data PTR_ce34b0c
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

;=============================================

FUN_ce300dc:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30208,pc),r5
    mov.w @(DAT_ce301fa,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce300fc
    mov.w @(DAT_ce301fc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30104

LAB_ce300fc:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30104:
    mov.w @(DAT_ce301fe,pc),r0
    mov 0x02,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x05,r3
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30200,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30128:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30214,pc),r5
    mov.w @(DAT_ce30202,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30148
    mov.w @(DAT_ce301fc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30150

LAB_ce30148:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30150:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x06,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30200,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3016e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30218,pc),r5
    mov.w @(DAT_ce30204,pc),r6
    mov.l @(PTR_ce3020c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3018e
    mov.w @(DAT_ce301fc,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30196

LAB_ce3018e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30196:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x08,r3
    mov.b r0,@(0x7,r14)
    mov 0x1D,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30200,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce301b4:
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
    bf LAB_ce301d2
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce301d2:
    mov.w @(DAT_ce30206,pc),r5
    mov.l @(PTR_ce30220,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x01,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce30200,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30210,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce301fa:
    #data 0x0364
DAT_ce301fc:
    #data 0x040c
DAT_ce301fe:
    #data 0x01a3
DAT_ce30200:
    #data 0x01e9
DAT_ce30202:
    #data 0x036c
DAT_ce30204:
    #data 0x0374
DAT_ce30206:
    #data 0x037c
    #align4

PTR_ce30208:
    #data DAT_ce34a98
PTR_ce3020c:
    #data loc_8c054e58
PTR_ce30210:
    #data loc_8c0530d8
PTR_ce30214:
    #data DAT_ce34aa8
PTR_ce30218:
    #data DAT_ce34ab8
PTR_ce3021c:
    #data DAT_ce34ac8
PTR_ce30220:
    #data loc_8c055c3a

;=============================================

FUN_ce30224:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30334,pc),r3
    mov r4,r14
    mov.w @(DAT_ce30336,pc),r6
    add r14,r3
    mov.l @(PTR_ce30348,pc),r5
    mov.l r3,@r15
    add r14,r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30266
    mov.l @r15,r3
    mov.b @(0xe,r3),r0
    tst r0,r0
    bf LAB_ce30266
    mov.w @(DAT_ce30338,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce30276
    mov.w @(DAT_ce3033a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30276
    mov.w @(DAT_ce3033c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce30270

LAB_ce30266:
    mov 0x00,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30270:
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)

LAB_ce30276:
    mov.w @(DAT_ce30336,pc),r5
    mov.l @(PTR_ce30350,pc),r2
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
    mov.w @(DAT_ce3033e,pc),r0
    mov.l @(PTR_ce30354,pc),r3
    mov.b r4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302a2:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30358,pc),r5
    mov.w @(DAT_ce30340,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce302c0
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce302c0:
    mov.w @(DAT_ce30340,pc),r5
    mov.l @(PTR_ce30350,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30342,pc),r0
    mov 0x03,r2
    mov 0x02,r3
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x15,r5
    mov.b r0,@(0x7,r14)
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce302ee:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3035c,pc),r5
    mov.w @(DAT_ce30344,pc),r6
    mov.l @(PTR_ce3034c,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3030c
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3030c:
    mov.w @(DAT_ce30344,pc),r5
    mov.l @(PTR_ce30350,pc),r3
    add r14,r5
    jsr @r3
    mov r14,r4
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x03,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3033e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce30354,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30334:
    #data 0x02a4
DAT_ce30336:
    #data 0x0384
DAT_ce30338:
    #data 0x01f9
DAT_ce3033a:
    #data 0x01fc
DAT_ce3033c:
    #data 0x01d4
DAT_ce3033e:
    #data 0x01e9
DAT_ce30340:
    #data 0x038c
DAT_ce30342:
    #data 0x01f2
DAT_ce30344:
    #data 0x0394
    #align4

PTR_ce30348:
    #data DAT_ce34ad8
PTR_ce3034c:
    #data loc_8c054e58
PTR_ce30350:
    #data loc_8c055c3a
PTR_ce30354:
    #data loc_8c0530d8
PTR_ce30358:
    #data DAT_ce34ae8
PTR_ce3035c:
    #data DAT_ce34afc

;=============================================

FUN_ce30360:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30488,pc),r3
    jsr @r3
    mov 0x04,r5
    extu.b r0,r0
    tst r0,r0
    bf LAB_ce3037a
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3037a:
    mov 0x00,r0
    mov.b r0,@(0x5,r14)
    mov 0x04,r3
    mov.b r0,@(0x7,r14)
    mov 0x15,r5
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3047a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3048c,pc),r3
    jsr @r3
    mov r14,r4
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30398:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30490,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce303b0
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce303b8

LAB_ce303b0:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce303b8:
    mov.w @(DAT_ce3047a,pc),r0
    mov 0x0E,r3
    mov 0x1D,r5
    mov.b r3,@(r0,r14)
    mov 0x00,r0
    mov.l @(PTR_ce3048c,pc),r3
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

FUN_ce303d8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce30494,pc),r5
    mov.w @(DAT_ce3047e,pc),r6
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce303f8
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30400

LAB_ce303f8:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30400:
    mov.w @(DAT_ce30480,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce3040e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce3049c,pc),r5
    mov.w @(DAT_ce30482,pc),r6
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce3042e
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce30436

LAB_ce3042e:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce30436:
    mov.w @(DAT_ce30480,pc),r0
    mov 0x08,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30444:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce304a0,pc),r5
    mov.w @(DAT_ce30484,pc),r6
    mov.l @(PTR_ce30498,pc),r3
    jsr @r3
    add r14,r6
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30464
    mov.w @(DAT_ce3047c,pc),r0
    mov.l @(r0,r14),r2
    mov.b @r2,r3
    tst r3,r3
    bf LAB_ce3046c

LAB_ce30464:
    lds.l @r15+,PR
    mov 0x00,r0
    rts
    mov.l @r15+,r14

LAB_ce3046c:
    mov.w @(DAT_ce30480,pc),r0
    mov 0x06,r3
    mov.b r3,@(r0,r14)
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3047a:
    #data 0x01e9
DAT_ce3047c:
    #data 0x040c
DAT_ce3047e:
    #data 0x0364
DAT_ce30480:
    #data 0x0258
DAT_ce30482:
    #data 0x0374
DAT_ce30484:
    #data 0x036c
    #align4

PTR_ce30488:
    #data loc_8c054da0
PTR_ce3048c:
    #data loc_8c0530d8
PTR_ce30490:
    #data loc_8c054d1c
PTR_ce30494:
    #data DAT_ce34a98
PTR_ce30498:
    #data loc_8c054e58
PTR_ce3049c:
    #data DAT_ce34ab8
PTR_ce304a0:
    #data DAT_ce34aa8

;=============================================

LAB_ce304a4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    bsr FUN_ce303d8
    mov r4,r14
    tst r0,r0
    bf LAB_ce304c0
    bsr FUN_ce30444
    mov r14,r4
    tst r0,r0
    bf LAB_ce304c0
    bsr FUN_ce3040e
    mov r14,r4
    tst r0,r0
    bt LAB_ce304c8

LAB_ce304c0:
    lds.l @r15+,PR
    mov 0x01,r0
    rts
    mov.l @r15+,r14

LAB_ce304c8:
    mov 0x00,r0
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce304d0:
    mov.w @(DAT_ce30582,pc),r5
    mov 0x15,r0
    add r4,r5
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce3050c
    mov.b @(0x5,r4),r0
    tst r0,r0
    bf LAB_ce30506
    mov.w @(DAT_ce30584,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x15,r0
    bf LAB_ce304f4
    mov.w @(DAT_ce30586,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce3050c

LAB_ce304f4:
    mov.w @(DAT_ce30584,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x1D,r0
    bf LAB_ce30506
    mov.w @(DAT_ce30586,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bf LAB_ce3050c

LAB_ce30506:
    mov 0x15,r0
    mov 0x00,r3
    mov.b r3,@(r0,r5)

LAB_ce3050c:
    rts
    nop

LAB_ce30510:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce30588,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov 0x01,r12
    mov.l r11,@-r15
    mov.w @(DAT_ce30582,pc),r4
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r4
    mov.l @(PTR_ce30594,pc),r11
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3053c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3055a
    cmp/eq 0x02,r0
    bt LAB_ce305a0
    bra LAB_ce305ce
    nop

LAB_ce3053c:
    mov.w @(DAT_ce3058a,pc),r0
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r13,@(r0,r14)
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3058c,pc),r0
    mov.l @(PTR_ce30598,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3058e,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce30590,pc),r0
    bra LAB_ce305cc
    nop

LAB_ce3055a:
    mov.w @(DAT_ce3058a,pc),r0
    mov.b r12,@(r0,r14)
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce3056c
    mov 0x15,r5
    mov.w @(DAT_ce30592,pc),r0
    bra LAB_ce30572
    mov.b r12,@(r0,r14)

LAB_ce3056c:
    mov.w @(DAT_ce30592,pc),r0
    mov 0x12,r2
    mov.b r2,@(r0,r14)

LAB_ce30572:
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3058c,pc),r0
    mov.l @(PTR_ce3059c,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3058e,pc),r0
    bra LAB_ce305cc
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30582:
    #data 0x02a4
DAT_ce30584:
    #data 0x01d0
DAT_ce30586:
    #data 0x0141
DAT_ce30588:
    #data 0x01e8
DAT_ce3058a:
    #data 0x0158
DAT_ce3058c:
    #data 0x03f4
DAT_ce3058e:
    #data 0x01a7
DAT_ce30590:
    #data 0x02a2
DAT_ce30592:
    #data 0x01a1
    #align4

PTR_ce30594:
    #data loc_8c04223a
PTR_ce30598:
    #data DAT_ce34a50
PTR_ce3059c:
    #data DAT_ce34a54

;=============================================

LAB_ce305a0:
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce305b2
    mov 0x02,r12
    mov.w @(DAT_ce3069a,pc),r0
    mov.b r12,@(r0,r14)
    add 0x49,r0
    bra LAB_ce305be
    mov.b r12,@(r0,r14)

LAB_ce305b2:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x04,r2
    mov 0x13,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce305be:
    mov 0x16,r5
    jsr @r11
    mov r14,r4
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306a8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3069e,pc),r0

LAB_ce305cc:
    mov.b r12,@(r0,r14)

LAB_ce305ce:
    mov.w @(DAT_ce306a0,pc),r0
    mov 0x07,r5
    mov.l @(PTR_ce306ac,pc),r3
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
    mov.w @(DAT_ce3069a,pc),r0
    mov.l @(PTR_ce306b0,pc),r2
    mov.l @r15+,r11
    mov.b @(r0,r14),r6
    mov.l @r15+,r12
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30602:
    mov.w @(DAT_ce306a4,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.w @(DAT_ce306a2,pc),r4
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r4
    mov.l @(PTR_ce306b4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3062a
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30654
    cmp/eq 0x02,r0
    bt LAB_ce30684
    bra LAB_ce306dc
    nop

LAB_ce3062a:
    mov.w @(DAT_ce3069a,pc),r0
    mov.b r13,@(r0,r14)
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce3063e
    mov 0x14,r5
    mov.w @(DAT_ce306a6,pc),r0
    mov 0x06,r3
    bra LAB_ce30644
    mov.b r3,@(r0,r14)

LAB_ce3063e:
    mov.w @(DAT_ce306a6,pc),r0
    mov 0x14,r1
    mov.b r1,@(r0,r14)

LAB_ce30644:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306b8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce3069e,pc),r0
    bra LAB_ce306dc
    mov.b r13,@(r0,r14)

LAB_ce30654:
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce3066a
    mov 0x15,r5
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x01,r3
    mov 0x07,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30676
    mov.b r2,@(r0,r14)

LAB_ce3066a:
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x04,r1
    mov 0x15,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30676:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce3069c,pc),r0
    mov.l @(PTR_ce306bc,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce306d8
    mov 0x01,r2

LAB_ce30684:
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce306c0
    mov 0x16,r5
    mov.w @(DAT_ce3069a,pc),r0
    mov 0x02,r3
    mov 0x08,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce306cc
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3069a:
    #data 0x0158
DAT_ce3069c:
    #data 0x03f4
DAT_ce3069e:
    #data 0x01a7
DAT_ce306a0:
    #data 0x01ac
DAT_ce306a2:
    #data 0x02a4
DAT_ce306a4:
    #data 0x01e8
DAT_ce306a6:
    #data 0x01a1
    #align4

PTR_ce306a8:
    #data DAT_ce34a58
PTR_ce306ac:
    #data loc_8c2896b0
PTR_ce306b0:
    #data loc_8c034e8c
PTR_ce306b4:
    #data loc_8c04223a
PTR_ce306b8:
    #data DAT_ce34a50
PTR_ce306bc:
    #data DAT_ce34a54

;=============================================

LAB_ce306c0:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x05,r1
    mov 0x16,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce306cc:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307e0,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce307e8,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce306d8:
    mov.w @(DAT_ce307e2,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce306dc:
    mov.w @(DAT_ce307e4,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce307ec,pc),r3
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
    mov.w @(DAT_ce307de,pc),r0
    mov.l @(PTR_ce307f0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3070e:
    mov.w @(DAT_ce307e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307f4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30732
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce3074e
    cmp/eq 0x02,r0
    bt LAB_ce3076a
    bra LAB_ce30788
    nop

LAB_ce30732:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x03,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307e0,pc),r0
    mov.l @(PTR_ce307f8,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce307e2,pc),r0
    bra LAB_ce30788
    mov.b r13,@(r0,r14)

LAB_ce3074e:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x01,r2
    mov 0x04,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307e0,pc),r0
    mov.l @(PTR_ce307fc,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30784
    mov 0x01,r2

LAB_ce3076a:
    mov.w @(DAT_ce307de,pc),r0
    mov 0x02,r1
    mov 0x05,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce307e0,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30800,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30784:
    mov.w @(DAT_ce307e2,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce30788:
    mov.w @(DAT_ce307e4,pc),r0
    mov 0x08,r5
    mov.l @(PTR_ce307ec,pc),r3
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
    mov.w @(DAT_ce307de,pc),r0
    mov.l @(PTR_ce307f0,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce307ba:
    mov.w @(DAT_ce307e6,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce307f4,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30804
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30820
    cmp/eq 0x02,r0
    bt LAB_ce3083c
    bra LAB_ce3085a
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce307de:
    #data 0x0158
DAT_ce307e0:
    #data 0x03f4
DAT_ce307e2:
    #data 0x01a7
DAT_ce307e4:
    #data 0x01ac
DAT_ce307e6:
    #data 0x01e8
    #align4

PTR_ce307e8:
    #data DAT_ce34a58
PTR_ce307ec:
    #data loc_8c2896b0
PTR_ce307f0:
    #data loc_8c034e8c
PTR_ce307f4:
    #data loc_8c04223a
PTR_ce307f8:
    #data DAT_ce34a5c
PTR_ce307fc:
    #data DAT_ce34a60
PTR_ce30800:
    #data DAT_ce34a64

;=============================================

LAB_ce30804:
    mov.w @(DAT_ce308fe,pc),r0
    mov 0x09,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30900,pc),r0
    mov.l @(PTR_ce30910,pc),r3
    mov.l r3,@(r0,r14)
    mov.w @(DAT_ce30902,pc),r0
    bra LAB_ce3085a
    mov.b r13,@(r0,r14)

LAB_ce30820:
    mov.w @(DAT_ce308fe,pc),r0
    mov 0x01,r2
    mov 0x0A,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30900,pc),r0
    mov.l @(PTR_ce30914,pc),r3
    mov.l r3,@(r0,r14)
    bra LAB_ce30856
    mov 0x01,r2

LAB_ce3083c:
    mov.w @(DAT_ce308fe,pc),r0
    mov 0x02,r1
    mov 0x0B,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov 0x16,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30900,pc),r0
    mov 0x02,r2
    mov.l @(PTR_ce30918,pc),r3
    mov.l r3,@(r0,r14)

LAB_ce30856:
    mov.w @(DAT_ce30902,pc),r0
    mov.b r2,@(r0,r14)

LAB_ce3085a:
    mov.w @(DAT_ce30904,pc),r0
    mov 0x0A,r5
    mov.l @(PTR_ce3091c,pc),r3
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
    mov.w @(DAT_ce308fe,pc),r0
    mov.l @(PTR_ce30920,pc),r2
    mov.l @r15+,r12
    mov.b @(r0,r14),r6
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3088c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30924,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce30906,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308ba
    mov.w @(DAT_ce30908,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308b2
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce307ba
    mov.l @r15+,r14

LAB_ce308b2:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce3070e
    mov.l @r15+,r14

LAB_ce308ba:
    mov.w @(DAT_ce30908,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce308cc
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30602
    mov.l @r15+,r14

LAB_ce308cc:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30510
    mov.l @r15+,r14

LAB_ce308d4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce3090c,pc),r0
    mov.l r13,@-r15
    mov.l r12,@-r15
    mov.l r11,@-r15
    mov.w @(DAT_ce3090a,pc),r4
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    add r14,r4
    mov.l @(PTR_ce30928,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3092c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30958
    cmp/eq 0x02,r0
    bt LAB_ce309a2
    bra LAB_ce309e4
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce308fe:
    #data 0x0158
DAT_ce30900:
    #data 0x03f4
DAT_ce30902:
    #data 0x01a7
DAT_ce30904:
    #data 0x01ac
DAT_ce30906:
    #data 0x01fe
DAT_ce30908:
    #data 0x01f9
DAT_ce3090a:
    #data 0x02a4
DAT_ce3090c:
    #data 0x01e8
    #align4

PTR_ce30910:
    #data DAT_ce34a5c
PTR_ce30914:
    #data DAT_ce34a60
PTR_ce30918:
    #data DAT_ce34a64
PTR_ce3091c:
    #data loc_8c2896b0
PTR_ce30920:
    #data loc_8c034e8c
PTR_ce30924:
    #data loc_8c052b4c
PTR_ce30928:
    #data loc_8c04223a

;=============================================

LAB_ce3092c:
    mov.w @(DAT_ce30a2a,pc),r0
    mov 0x0C,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3094c
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a38,pc),r3
    bra LAB_ce30952
    mov.l r3,@(r0,r14)

LAB_ce3094c:
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30952:
    mov.w @(DAT_ce30a30,pc),r0
    bra LAB_ce309e4
    mov.b r13,@(r0,r14)

LAB_ce30958:
    mov.b @(0xe,r4),r0
    mov 0x0D,r5
    tst r0,r0
    bt/s LAB_ce3096c
    mov 0x01,r11
    mov.w @(DAT_ce30a2a,pc),r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30978
    mov.b r5,@(r0,r14)

LAB_ce3096c:
    mov.w @(DAT_ce30a2a,pc),r0
    mov 0x06,r2
    mov 0x17,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce30978:
    mov.w @(DAT_ce30a2a,pc),r0
    mov.b r11,@(r0,r14)
    add 0x49,r0
    mov.b r5,@(r0,r14)
    mov 0x15,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30996
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a40,pc),r3
    bra LAB_ce3099c
    mov.l r3,@(r0,r14)

LAB_ce30996:
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce3099c:
    mov.w @(DAT_ce30a30,pc),r0
    bra LAB_ce309e4
    mov.b r11,@(r0,r14)

LAB_ce309a2:
    mov.b @(0xe,r4),r0
    tst r0,r0
    bt/s LAB_ce309b8
    mov 0x16,r5
    mov.w @(DAT_ce30a2a,pc),r0
    mov 0x02,r3
    mov 0x0E,r2
    mov.b r3,@(r0,r14)
    add 0x49,r0
    bra LAB_ce309c4
    mov.b r2,@(r0,r14)

LAB_ce309b8:
    mov.w @(DAT_ce30a2a,pc),r0
    mov 0x07,r1
    mov 0x18,r3
    mov.b r1,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)

LAB_ce309c4:
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30a2c,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce309d8
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a48,pc),r3
    bra LAB_ce309de
    mov.l r3,@(r0,r14)

LAB_ce309d8:
    mov.w @(DAT_ce30a2e,pc),r0
    mov.l @(PTR_ce30a4c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce309de:
    mov.w @(DAT_ce30a30,pc),r0
    mov 0x02,r3
    mov.b r3,@(r0,r14)

LAB_ce309e4:
    mov.w @(DAT_ce30a32,pc),r0
    mov 0x0B,r5
    mov.l @(PTR_ce30a50,pc),r3
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
    mov.w @(DAT_ce30a2a,pc),r0
    mov.l @(PTR_ce30a54,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30a34,pc),r0
    mov.b @(r0,r14),r0
    tst 0x0F,r0
    bt LAB_ce30a1e
    mov.w @(DAT_ce30a34,pc),r0
    mov.b @(r0,r14),r2
    add 0xFF,r2
    mov.b r2,@(r0,r14)

LAB_ce30a1e:
    lds.l @r15+,PR
    mov.l @r15+,r11
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30a2a:
    #data 0x0158
DAT_ce30a2c:
    #data 0x01fc
DAT_ce30a2e:
    #data 0x03f4
DAT_ce30a30:
    #data 0x01a7
DAT_ce30a32:
    #data 0x01ac
DAT_ce30a34:
    #data 0x01d6
    #align4

PTR_ce30a38:
    #data DAT_ce34a68
PTR_ce30a3c:
    #data DAT_ce34a80
PTR_ce30a40:
    #data DAT_ce34a6c
PTR_ce30a44:
    #data DAT_ce34a84
PTR_ce30a48:
    #data DAT_ce34a70
PTR_ce30a4c:
    #data DAT_ce34a88
PTR_ce30a50:
    #data loc_8c2896b0
PTR_ce30a54:
    #data loc_8c034e8c

;=============================================

LAB_ce30a58:
    mov.w @(DAT_ce30b24,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.l r12,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    mov.l @(PTR_ce30b34,pc),r12
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt/s LAB_ce30a7c
    mov 0x00,r13
    cmp/eq 0x01,r0
    bt LAB_ce30aa8
    cmp/eq 0x02,r0
    bt LAB_ce30ad4
    bra LAB_ce30b58
    nop

LAB_ce30a7c:
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x0F,r3
    mov 0x14,r5
    mov.b r13,@(r0,r14)
    add 0x49,r0
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30a9c
    mov.w @(DAT_ce30b2a,pc),r0
    mov.l @(PTR_ce30b38,pc),r3
    bra LAB_ce30aa2
    mov.l r3,@(r0,r14)

LAB_ce30a9c:
    mov.w @(DAT_ce30b2a,pc),r0
    mov.l @(PTR_ce30b3c,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30aa2:
    mov.w @(DAT_ce30b2c,pc),r0
    bra LAB_ce30b58
    mov.b r13,@(r0,r14)

LAB_ce30aa8:
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x01,r2
    mov 0x10,r3
    mov.b r2,@(r0,r14)
    add 0x49,r0
    mov 0x15,r5
    mov.b r3,@(r0,r14)
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30aca
    mov.w @(DAT_ce30b2a,pc),r0
    mov.l @(PTR_ce30b40,pc),r3
    bra LAB_ce30ad0
    mov.l r3,@(r0,r14)

LAB_ce30aca:
    mov.w @(DAT_ce30b2a,pc),r0
    mov.l @(PTR_ce30b44,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30ad0:
    bra LAB_ce30b54
    mov 0x01,r3

LAB_ce30ad4:
    mov.w @(DAT_ce30b2e,pc),r0
    mov.w @(DAT_ce30b30,pc),r3
    mov.w @(r0,r14),r1
    extu.w r1,r1
    tst r3,r1
    bt LAB_ce30aee
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x03,r2
    mov 0x1E,r1
    mov.b r2,@(r0,r14)
    add 0x49,r0
    bra LAB_ce30b0e
    mov.b r1,@(r0,r14)

LAB_ce30aee:
    mov.w @(r0,r14),r2
    mov.w @(DAT_ce30b32,pc),r1
    extu.w r2,r2
    tst r1,r2
    bt LAB_ce30b02
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x04,r3
    mov.b r3,@(r0,r14)
    bra LAB_ce30b0a
    mov 0x1F,r2

LAB_ce30b02:
    mov.w @(DAT_ce30b26,pc),r0
    mov 0x02,r3
    mov 0x11,r2
    mov.b r3,@(r0,r14)

LAB_ce30b0a:
    add 0x49,r0
    mov.b r2,@(r0,r14)

LAB_ce30b0e:
    mov 0x16,r5
    jsr @r12
    mov r14,r4
    mov.w @(DAT_ce30b28,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce30b4c
    mov.w @(DAT_ce30b2a,pc),r0
    mov.l @(PTR_ce30b48,pc),r3
    bra LAB_ce30b52
    mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30b24:
    #data 0x01e8
DAT_ce30b26:
    #data 0x0158
DAT_ce30b28:
    #data 0x01fc
DAT_ce30b2a:
    #data 0x03f4
DAT_ce30b2c:
    #data 0x01a7
DAT_ce30b2e:
    #data 0x01fa
DAT_ce30b30:
    #data 0x1000
DAT_ce30b32:
    #data 0x2000
    #align4

PTR_ce30b34:
    #data loc_8c04223a
PTR_ce30b38:
    #data DAT_ce34a74
PTR_ce30b3c:
    #data DAT_ce34a8c
PTR_ce30b40:
    #data DAT_ce34a78
PTR_ce30b44:
    #data DAT_ce34a90
PTR_ce30b48:
    #data DAT_ce34a7c

;=============================================

LAB_ce30b4c:
    mov.w @(DAT_ce30c50,pc),r0
    mov.l @(PTR_ce30c60,pc),r1
    mov.l r1,@(r0,r14)

LAB_ce30b52:
    mov 0x02,r3

LAB_ce30b54:
    mov.w @(DAT_ce30c52,pc),r0
    mov.b r3,@(r0,r14)

LAB_ce30b58:
    mov.w @(DAT_ce30c54,pc),r0
    mov 0x0C,r5
    mov.l @(PTR_ce30c64,pc),r3
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
    mov.w @(DAT_ce30c56,pc),r0
    mov.l @(PTR_ce30c68,pc),r2
    mov.b @(r0,r14),r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r14),r0
    tst 0xF0,r0
    bt LAB_ce30b92
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r14),r2
    add 0xF0,r2
    mov.b r2,@(r0,r14)

LAB_ce30b92:
    lds.l @r15+,PR
    mov.l @r15+,r12
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce30b9c:
    mov.w @(DAT_ce30c5a,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30baa
    bra LAB_ce30a58
    nop

LAB_ce30baa:
    bra LAB_ce308d4
    nop

LAB_ce30bae:
    mov.w @(DAT_ce30c5a,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bf LAB_ce30bbe
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r4),r0
    tst 0x0F,r0
    bf LAB_ce30bce

LAB_ce30bbe:
    mov.w @(DAT_ce30c5a,pc),r0
    mov.b @(r0,r4),r2
    tst r2,r2
    bt LAB_ce30bd2
    mov.w @(DAT_ce30c58,pc),r0
    mov.b @(r0,r4),r0
    tst 0xF0,r0
    bt LAB_ce30bd2

LAB_ce30bce:
    bra LAB_ce30b9c
    nop

LAB_ce30bd2:
    rts
    nop

LAB_ce30bd6:
    bra LAB_ce3088c
    nop

LAB_ce30bda:
    mov.w @(DAT_ce30c5c,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30c6c,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce30bee:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c08
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c08:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30c10:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30c70,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30c2a
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30c74,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30c2a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30c32:
    mov.w @(DAT_ce30c5e,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce30cea
    cmp/eq 0x01,r0
    bt LAB_ce30c78
    cmp/eq 0x02,r0
    bt LAB_ce30cea
    bra LAB_ce30d02
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30c50:
    #data 0x03f4
DAT_ce30c52:
    #data 0x01a7
DAT_ce30c54:
    #data 0x01ac
DAT_ce30c56:
    #data 0x0158
DAT_ce30c58:
    #data 0x01d6
DAT_ce30c5a:
    #data 0x01fe
DAT_ce30c5c:
    #data 0x01ff
DAT_ce30c5e:
    #data 0x01e8
    #align4

PTR_ce30c60:
    #data DAT_ce34a94
PTR_ce30c64:
    #data loc_8c2896b0
PTR_ce30c68:
    #data loc_8c034e8c
PTR_ce30c6c:
    #data PTR_ce34b7c
PTR_ce30c70:
    #data loc_8c034dee
PTR_ce30c74:
    #data loc_8c051648

;=============================================

LAB_ce30c78:
    mov.l @(PTR_ce30da0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce30cf6
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30d02
    mov.w @(DAT_ce30d94,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce30d02
    mov.w @(DAT_ce30d98,pc),r3
    mov.w @(DAT_ce30d96,pc),r0
    add r14,r3
    mov.w @r3,r3
    mov.w @(r0,r14),r0
    extu.w r3,r3
    extu.w r0,r0
    or r3,r0
    tst 0x40,r0
    bt LAB_ce30d02
    mov.w @(DAT_ce30d98,pc),r0
    mov 0x00,r13
    mov.l @(PTR_ce30da4,pc),r3
    mov 0x08,r5
    mov.w r13,@(r0,r14)
    mov 0x04,r6
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30da8,pc),r2
    mov 0x15,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30d9a,pc),r0
    mov 0x19,r3
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce30dac,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    bra LAB_ce30d02
    mov.w r1,@(r0,r2)

LAB_ce30cea:
    mov.l @(PTR_ce30da0,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d02

LAB_ce30cf6:
    lds.l @r15+,PR
    mov.l @(PTR_ce30db0,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce30d02:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce30d0a:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30da0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30d24
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30db0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30d24:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30d2c:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce30db4,pc),r3
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
    mov.w @(DAT_ce30d9c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30db8
    mov.w @(DAT_ce30d9e,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30d8c
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30d0a
    mov.l @r15+,r14

LAB_ce30d8c:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30c32
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30d94:
    #data 0x0141
DAT_ce30d96:
    #data 0x034e
DAT_ce30d98:
    #data 0x0352
DAT_ce30d9a:
    #data 0x01a1
DAT_ce30d9c:
    #data 0x01fe
DAT_ce30d9e:
    #data 0x01f9
    #align4

PTR_ce30da0:
    #data loc_8c034dee
PTR_ce30da4:
    #data loc_8c034e8c
PTR_ce30da8:
    #data loc_8c04223a
PTR_ce30dac:
    #data loc_8c2896b0
PTR_ce30db0:
    #data loc_8c051648
PTR_ce30db4:
    #data loc_8c052c84

;=============================================

LAB_ce30db8:
    mov.w @(DAT_ce30e94,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30dca
    lds.l @r15+,PR
    mov r14,r4
    bra FUN_ce30c10
    mov.l @r15+,r14

LAB_ce30dca:
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30bee
    mov.l @r15+,r14

;=============================================

FUN_ce30dd2:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30dec
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ea0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30dec:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;=============================================

FUN_ce30df4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce30e9c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30e0e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce30ea0,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce30e0e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce30e16:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30ea4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30ea8,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30e96,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bf LAB_ce30e38
    bsr FUN_ce30df4
    mov r14,r4
    bra LAB_ce30e3c
    nop

LAB_ce30e38:
    bsr FUN_ce30dd2
    mov r14,r4

LAB_ce30e3c:
    mov.l @(PTR_ce30eac,pc),r3
    jsr @r3
    mov r14,r4
    extu.b r0,r0
    tst r0,r0
    bt LAB_ce30e52
    lds.l @r15+,PR
    mov.l @(PTR_ce30eb0,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce30e52:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30e58:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce30eb4,pc),r3
    jsr @r3
    mov r4,r14
    mov.l @(PTR_ce30eb8,pc),r2
    jsr @r2
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce30e16
    mov.l @r15+,r14

LAB_ce30e70:
    sts.l PR,@-r15
    mov.l @(PTR_ce30ebc,pc),r3
    jsr @r3
    mov.l r4,@-r15
    mov.l @r15,r4
    add 0x04,r15
    bra LAB_ce30d2c
    lds.l @r15+,PR

LAB_ce30e80:
    mov.w @(DAT_ce30e98,pc),r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce30ec0,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30e94:
    #data 0x01f9
DAT_ce30e96:
    #data 0x01fe
DAT_ce30e98:
    #data 0x01ff
    #align4

PTR_ce30e9c:
    #data loc_8c034dee
PTR_ce30ea0:
    #data loc_8c05176e
PTR_ce30ea4:
    #data loc_8c04fea8
PTR_ce30ea8:
    #data loc_8c050048
PTR_ce30eac:
    #data loc_8c052ce2
PTR_ce30eb0:
    #data loc_8c052dac
PTR_ce30eb4:
    #data loc_8c050084
PTR_ce30eb8:
    #data loc_8c04ff88
PTR_ce30ebc:
    #data loc_8c0511e2
PTR_ce30ec0:
    #data PTR_ce34b8c

;=============================================

LAB_ce30ec4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce30fc4,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.b @(0x6,r14),r0
    tst r0,r0
    bf LAB_ce30f44
    mov.l @(PTR_ce30fd0,pc),r3
    jsr @r3
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce30fd4,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce30fc6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce30f44
    mov.w @(DAT_ce30fc8,pc),r0
    mov 0x01,r1
    mov.b r1,@(r0,r14)
    mov.l @r15,r3
    mov.b @(0xe,r3),r0
    tst r0,r0
    bt/s LAB_ce30f0e
    mov 0x14,r5
    mov.w @(DAT_ce30fca,pc),r0
    mov 0x57,r2
    mov.b r2,@(r0,r14)
    bra LAB_ce30f16
    mov 0x07,r6

LAB_ce30f0e:
    mov.w @(DAT_ce30fca,pc),r0
    mov 0x58,r3
    mov 0x08,r6
    mov.b r3,@(r0,r14)

LAB_ce30f16:
    mov.l @(PTR_ce30fd8,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce30fdc,pc),r2
    mov 0x16,r5
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce30fcc,pc),r0
    mov 0x00,r4
    mov.l @(PTR_ce30fe0,pc),r3
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

LAB_ce30f44:
    mov.w @(DAT_ce30fce,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce30f54
    mov.l @(PTR_ce30fe4,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce30f54:
    mov 0x5C,r1
    mov.l @(PTR_ce30fe8,pc),r3
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
    mov.l @(PTR_ce30fec,pc),r2
    jsr @r2
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce30faa
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce30ff0,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce30faa:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce30fb2:
    mov r4,r3
    mov.l @(PTR_ce30ff4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce30fc4:
    #data 0x02a4
DAT_ce30fc6:
    #data 0x01fe
DAT_ce30fc8:
    #data 0x01f9
DAT_ce30fca:
    #data 0x01a1
DAT_ce30fcc:
    #data 0x01ac
DAT_ce30fce:
    #data 0x01ff
    #align4

PTR_ce30fd0:
    #data loc_8c052b4c
PTR_ce30fd4:
    #data loc_8c056de4
PTR_ce30fd8:
    #data loc_8c034e8c
PTR_ce30fdc:
    #data loc_8c04223a
PTR_ce30fe0:
    #data loc_8c2896b0
PTR_ce30fe4:
    #data loc_8c0511e2
PTR_ce30fe8:
    #data loc_8c052c84
PTR_ce30fec:
    #data loc_8c034dee
PTR_ce30ff0:
    #data loc_8c051648
PTR_ce30ff4:
    #data PTR_ce34b9c

;=============================================

LAB_ce30ff8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31148,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31144,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce31052
    mov.b @(0x6,r14),r0
    fldi0 fr4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31146,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31034
    mova @(DAT_ce3114c,pc),r0
    bra LAB_ce31038
    fmov.s @r0,fr3

LAB_ce31034:
    mova @(DAT_ce31150,pc),r0
    fmov.s @r0,fr3

LAB_ce31038:
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31146,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3104a
    mova @(DAT_ce31154,pc),r0
    bra LAB_ce3104e
    fmov.s @r0,fr3

LAB_ce3104a:
    mova @(DAT_ce31158,pc),r0
    fmov.s @r0,fr3

LAB_ce3104e:
    mov 0x68,r0
    fmov fr3,@(r0,r14)

LAB_ce31052:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31058:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31148,pc),r3
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
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce310ae
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce310ae:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce310b4:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce31148,pc),r3
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
    bt LAB_ce31112
    mov.b @(0x6,r14),r0
    mov 0x02,r6
    mov.l @(PTR_ce3115c,pc),r3
    mov r6,r5
    add 0x01,r0
    mov r14,r4
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31112:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31118:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31148,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31164
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    mov.l @(PTR_ce31160,pc),r3
    mov r14,r4
    fmov fr4,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31144:
    #data 0x0141
DAT_ce31146:
    #data 0x01d2
    #align4

PTR_ce31148:
    #data loc_8c034dee
DAT_ce3114c:
    #data 0x417d5555
DAT_ce31150:
    #data 0xc17d5555
DAT_ce31154:
    #data 0xbebaaaaa
DAT_ce31158:
    #data 0x3ebaaaaa
PTR_ce3115c:
    #data loc_8c034e8c
PTR_ce31160:
    #data loc_8c051648

;=============================================

LAB_ce31164:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3116a:
    mov r4,r3
    mov.l @(PTR_ce31254,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3117c:
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
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce311a2
    mova @(DAT_ce31258,pc),r0
    bra LAB_ce311a6
    fmov.s @r0,fr3

LAB_ce311a2:
    mova @(DAT_ce3125c,pc),r0
    fmov.s @r0,fr3

LAB_ce311a6:
    mov 0x5C,r0
    fmov fr3,@(r0,r4)
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce311b8
    mova @(DAT_ce31260,pc),r0
    bra LAB_ce311bc
    fmov.s @r0,fr3

LAB_ce311b8:
    mova @(DAT_ce31264,pc),r0
    fmov.s @r0,fr3

LAB_ce311bc:
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce311c0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31268,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31252,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31212
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce311e0
    mova @(DAT_ce3126c,pc),r0
    bra LAB_ce311e4
    fmov.s @r0,fr4

LAB_ce311e0:
    mova @(DAT_ce31270,pc),r0
    fmov.s @r0,fr4

LAB_ce311e4:
    mov.w @(DAT_ce31252,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bt LAB_ce31204
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31200
    mova @(DAT_ce31274,pc),r0
    bra LAB_ce31204
    fmov.s @r0,fr4

LAB_ce31200:
    mova @(DAT_ce31278,pc),r0
    fmov.s @r0,fr4

LAB_ce31204:
    mov.w @(DAT_ce31252,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce31212:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31218:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31268,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31252,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce312d6
    mova @(DAT_ce3127c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31280,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31250,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31288
    mova @(DAT_ce31258,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31284,pc),r0
    bra LAB_ce31294
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31250:
    #data 0x01d2
DAT_ce31252:
    #data 0x0141
    #align4

PTR_ce31254:
    #data PTR_ce34bac
DAT_ce31258:
    #data 0xc1555555
DAT_ce3125c:
    #data 0x41555555
DAT_ce31260:
    #data 0xbdd55555
DAT_ce31264:
    #data 0x3dd55555
PTR_ce31268:
    #data loc_8c034dee
DAT_ce3126c:
    #data 0xc3055555
DAT_ce31270:
    #data 0x43055555
DAT_ce31274:
    #data 0xc2a00000
DAT_ce31278:
    #data 0x42a00000
DAT_ce3127c:
    #data 0x411a4924
DAT_ce31280:
    #data 0xc0092492
DAT_ce31284:
    #data 0x3f555555

;=============================================

LAB_ce31288:
    mova @(DAT_ce313a4,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce313a8,pc),r0
    fmov.s @r0,fr3

LAB_ce31294:
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r1
    mov.b @(0x6,r14),r0
    add r14,r1
    add 0x01,r0
    mov.b r0,@(0x6,r14)
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

LAB_ce312d6:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce312dc:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce313ac,pc),r3
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
    mov.w @(DAT_ce3139e,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce31398
    mov.w @(DAT_ce3139e,pc),r0
    mov 0x02,r5
    mov.l @(PTR_ce313b0,pc),r3
    mov 0x03,r6
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
    mov.w @(DAT_ce313a0,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce31374
    mov.l @(DAT_ce313b4,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce313b8,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce313bc,pc),r0
    bra LAB_ce3138e
    fmov.s @r0,fr2

LAB_ce31374:
    mov.l @(DAT_ce313c0,pc),r1
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce313c4,pc),r0
    fmov.s @r0,fr2
    mov 0x5C,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce313c8,pc),r0
    fmov.s @r0,fr2

LAB_ce3138e:
    mov 0x68,r0
    fmov fr2,@(r0,r14)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce31398:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3139e:
    #data 0x041c
DAT_ce313a0:
    #data 0x01d2
    #align4

DAT_ce313a4:
    #data 0x41555555
DAT_ce313a8:
    #data 0xbf555555
PTR_ce313ac:
    #data loc_8c034dee
PTR_ce313b0:
    #data loc_8c034e8c
DAT_ce313b4:
    #data 0xc2555555
DAT_ce313b8:
    #data 0xc0baaaaa
DAT_ce313bc:
    #data 0x3ed55555
DAT_ce313c0:
    #data 0x42555555
DAT_ce313c4:
    #data 0x40baaaaa
DAT_ce313c8:
    #data 0xbed55555

;=============================================

LAB_ce313cc:
    mov.l r14,@-r15
    mov 0x5C,r0
    mov r4,r14
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr4
    mov.w @(DAT_ce31502,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce313e2
    fldi0 fr3
    fneg fr4

LAB_ce313e2:
    fcmp/gt fr4,fr3
    bf/s LAB_ce31420
    mov r14,r4
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

LAB_ce31420:
    mov.l @(PTR_ce3150c,pc),r3
    jsr @r3
    nop
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31436
    lds.l @r15+,PR
    mov.l @(PTR_ce31510,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31436:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3143c:
    mov r4,r3
    mov.l @(PTR_ce31514,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3144e:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x01,r3
    mov.l @(PTR_ce31518,pc),r2
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31504,pc),r0
    jsr @r2
    mov.b r3,@(r0,r14)
    tst 0x01,r0
    bt LAB_ce31474
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce316be
    mov.l @r15+,r14

LAB_ce31474:
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    bra LAB_ce31818
    mov.l @r15+,r14

LAB_ce31482:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3150c,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3149a
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce3149a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce314a2:
    mov.w @(DAT_ce31508,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce31506,pc),r4
    cmp/pz r3
    bf/s LAB_ce314f8
    add r14,r4
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
    mov.w @(DAT_ce3150a,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce3151c

LAB_ce314f8:
    lds.l @r15+,PR
    mov.l @(PTR_ce3150c,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31502:
    #data 0x01d2
DAT_ce31504:
    #data 0x012c
DAT_ce31506:
    #data 0x02a4
DAT_ce31508:
    #data 0x0141
DAT_ce3150a:
    #data 0x041c
    #align4

PTR_ce3150c:
    #data loc_8c034dee
PTR_ce31510:
    #data loc_8c051648
PTR_ce31514:
    #data PTR_ce34bc0
PTR_ce31518:
    #data loc_8c11e730

;=============================================

LAB_ce3151c:
    mov.w @(0x8,r4),r0
    mov r0,r3
    lds r3,FPUL
    mov 0x34,r0
    mov.l @(PTR_ce31604,pc),r3
    float FPUL,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce315fc,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31608,pc),r3
    mov 0x04,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce3154a:
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
    mov.w @(DAT_ce315fe,pc),r0
    mov.b @(r0,r14),r3
    cmp/pl r3
    bt LAB_ce315b4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce3160c,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov.s @(r0,r14),fr2
    fdiv fr3,fr2
    fneg fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31610,pc),r0
    fmov.s @r0,fr2
    mov 0x60,r0
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31614,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)

LAB_ce315b4:
    mov.l @(PTR_ce31618,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x03,r0
    bf LAB_ce315c8
    mov.l @(PTR_ce3161c,pc),r1
    mov 0x02,r5
    mov 0x00,r6
    jsr @r1
    mov r14,r4

LAB_ce315c8:
    lds.l @r15+,PR
    mov.l @(PTR_ce31620,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce315d2:
    mov.l @(PTR_ce31624,pc),r2
    mov 0x02,r1
    mov.b @r2,r3
    extu.b r3,r3
    cmp/ge r1,r3
    bt LAB_ce315e8
    mov.w @(DAT_ce31600,pc),r3
    mov 0x00,r0
    add r4,r3
    rts
    mov.b r0,@r3

LAB_ce315e8:
    mov.b @(0x7,r4),r0
    mov 0x01,r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce31600,pc),r0
    mov.b r3,@(r0,r4)
    bra LAB_ce3154a
    nop
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce315fc:
    #data 0x041c
DAT_ce315fe:
    #data 0x0141
DAT_ce31600:
    #data 0x012c
    #align4

PTR_ce31604:
    #data loc_8c0511b4
PTR_ce31608:
    #data loc_8c034e8c
DAT_ce3160c:
    #data 0x40800000
DAT_ce31610:
    #data 0x40092492
DAT_ce31614:
    #data 0xbecdb6db
PTR_ce31618:
    #data loc_8c26823c
PTR_ce3161c:
    #data loc_8c0c3018
PTR_ce31620:
    #data loc_8c034dee
PTR_ce31624:
    #data loc_8c2895f0

;=============================================

LAB_ce31628:
    mov.l r14,@-r15
    mov 0x34,r0
    mov r4,r14
    mov.w @(DAT_ce3176e,pc),r4
    mov.l @(DAT_ce31774,pc),r1
    add r14,r4
    sts.l PR,@-r15
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    mov.w r0,@(0x8,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r0
    lds r1,FPUL
    mov.w r0,@(0xa,r4)
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fsts FPUL,fr3
    fadd fr3,fr2
    mov.l @(DAT_ce31778,pc),r4
    fmov fr2,@(r0,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce3165e
    mov.l @(DAT_ce3177c,pc),r4

LAB_ce3165e:
    lds r4,FPUL
    mova @(DAT_ce31780,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce31784,pc),r0
    fmov.s @r0,fr4
    mov 0x34,r0
    float FPUL,fr3
    fmov.s @(r0,r14),fr2
    mov.l @(DAT_ce31788,pc),r4
    fmul fr4,fr3
    fdiv fr5,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov.b @(0x2,r14),r0
    tst r0,r0
    bt LAB_ce31680
    mov.l @(DAT_ce3178c,pc),r4

LAB_ce31680:
    lds r4,FPUL
    mov 0x5C,r0
    mov.l @(PTR_ce31794,pc),r3
    mov 0x12,r5
    mov 0x03,r6
    float FPUL,fr3
    fmul fr4,fr3
    fldi0 fr4
    fdiv fr5,fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce31790,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce31798,pc),r2
    mov 0x00,r6
    mov r6,r5
    jsr @r2
    mov r14,r4
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce316be:
    mov r4,r3
    mov.l @(PTR_ce3179c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce316d0:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce317a0,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce316e8
    mov.l @r15,r3
    mov.b @(0x5,r3),r0
    add 0x01,r0
    mov.b r0,@(0x5,r3)

LAB_ce316e8:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce316f0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce317a0,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce31770,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce3173a
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

LAB_ce3173a:
    mov.w @(DAT_ce31772,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31768
    mov.w @(DAT_ce31772,pc),r0
    mov.l @(PTR_ce317a4,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31794,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r5
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce31768:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3176e:
    #data 0x02a4
DAT_ce31770:
    #data 0x0141
DAT_ce31772:
    #data 0x041c
    #align4

DAT_ce31774:
    #data 0x432b6db6
DAT_ce31778:
    #data 0xffb06000
DAT_ce3177c:
    #data 0x004fa000
DAT_ce31780:
    #data 0x47800000
DAT_ce31784:
    #data 0x3fd55555
DAT_ce31788:
    #data 0x00068000
DAT_ce3178c:
    #data 0xfff98000
DAT_ce31790:
    #data 0xbf4db6db
PTR_ce31794:
    #data loc_8c034e8c
PTR_ce31798:
    #data loc_8c0c3018
PTR_ce3179c:
    #data PTR_ce34bcc
PTR_ce317a0:
    #data loc_8c034dee
PTR_ce317a4:
    #data loc_8c0511b4

;=============================================

LAB_ce317a8:
    mov.w @(0x1c,r4),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r4)
    exts.w r0,r0
    tst r0,r0
    bt LAB_ce317ba
    mov.l @(PTR_ce318bc,pc),r3
    jmp @r3
    nop

LAB_ce317ba:
    mov.b @(0x7,r4),r0
    mov 0x01,r6
    fldi0 fr4
    add 0x01,r0
    mov.l @(PTR_ce318c8,pc),r3
    mov.b r0,@(0x7,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce318c0,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce318c4,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce317e2:
    mov.l @(PTR_ce318cc,pc),r3
    mov.b @r3,r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce317f2
    mov.l @(PTR_ce318bc,pc),r2
    jmp @r2
    nop

LAB_ce317f2:
    mov.b @(0x7,r4),r0
    add 0x01,r0
    bra LAB_ce317a8
    mov.b r0,@(0x7,r4)

LAB_ce317fa:
    mov.b @(0x7,r4),r0
    mov 0x00,r6
    mov.w @(DAT_ce318b6,pc),r5
    add 0x01,r0
    mov.l @(PTR_ce318c8,pc),r3
    mov.b r0,@(0x7,r4)
    mov 0x01,r0
    add r4,r5
    mov.b r0,@(0xe,r5)
    mov 0x08,r0
    mov.b r0,@(0xf,r5)
    mov 0x40,r0
    mov.w r0,@(0x1c,r4)
    jmp @r3
    mov 0x12,r5

LAB_ce31818:
    mov r4,r3
    mov.l @(PTR_ce318d0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3182a:
    mov r4,r3
    mov.l @(PTR_ce318d4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3183c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce318b6,pc),r3
    mov r4,r14
    mov 0x01,r13
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce318d8,pc),r3
    mov.l @r3,r4
    mov.l @(0x1c,r4),r2
    tst r13,r2
    bt LAB_ce31860
    mov.w @(DAT_ce318b8,pc),r0
    mov.b @(r0,r4),r0
    tst r0,r0
    bt LAB_ce3189a

LAB_ce31860:
    mov.l @(PTR_ce318dc,pc),r1
    mov.b @r1,r3
    tst r3,r3
    bt LAB_ce3188c
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r14,r4
    cmp/eq 0x01,r0
    bf LAB_ce3188c
    mov 0x21,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov 0x00,r6
    mov.w @(DAT_ce318ba,pc),r0
    mov 0x07,r2
    mov.l @(PTR_ce318e4,pc),r3
    mov r6,r5
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce31918
    nop

LAB_ce3188c:
    mov.l @(PTR_ce318e8,pc),r3
    jsr @r3
    nop
    tst r13,r0
    bf LAB_ce318f6
    bra LAB_ce31902
    nop

LAB_ce3189a:
    mov.l @(PTR_ce318dc,pc),r2
    mov.b @r2,r3
    tst r3,r3
    bt LAB_ce318ec
    mov.l @(PTR_ce318e0,pc),r3
    jsr @r3
    mov r14,r4
    cmp/eq 0x01,r0
    bf LAB_ce318ec
    mov 0x21,r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce318ba,pc),r0
    bra LAB_ce31918
    mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce318b6:
    #data 0x02a4
DAT_ce318b8:
    #data 0x0088
DAT_ce318ba:
    #data 0x0158
    #align4

PTR_ce318bc:
    #data loc_8c034dee
DAT_ce318c0:
    #data 0x41632492
DAT_ce318c4:
    #data 0xbf092492
PTR_ce318c8:
    #data loc_8c034e8c
PTR_ce318cc:
    #data loc_8c2895f0
PTR_ce318d0:
    #data PTR_ce34be0
PTR_ce318d4:
    #data PTR_ce34bf4
PTR_ce318d8:
    #data loc_8c26823c
PTR_ce318dc:
    #data loc_8c289636
PTR_ce318e0:
    #data loc_8c0514b8
PTR_ce318e4:
    #data loc_8c0c21b0
PTR_ce318e8:
    #data loc_8c11e730

;=============================================

LAB_ce318ec:
    mov.l @(PTR_ce31a24,pc),r2
    jsr @r2
    nop
    tst r13,r0
    bt LAB_ce31902

LAB_ce318f6:
    mov 0x21,r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31a1c,pc),r0
    bra LAB_ce31918
    mov.b r4,@(r0,r14)

LAB_ce31902:
    mov 0x21,r0
    mov 0x02,r2
    mov.b r2,@(r0,r14)
    mov 0x04,r3
    mov.w @(DAT_ce31a1c,pc),r0
    mov 0x00,r5
    mov r2,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31a28,pc),r3
    jsr @r3
    mov.l @r15,r4

LAB_ce31918:
    mov.w @(DAT_ce31a1e,pc),r0
    mov 0x13,r2
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31a2c,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce31934:
    mov.l r14,@-r15
    mov 0x21,r0
    mov 0x03,r3
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x13,r2
    mov.w @(DAT_ce31a1e,pc),r0
    mov 0x02,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31a2c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce31958:
    mov.l r14,@-r15
    mov 0x21,r0
    mov 0x04,r3
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x13,r2
    mov.w @(DAT_ce31a1e,pc),r0
    mov 0x03,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31a2c,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3197c:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x6,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov 0x20,r0
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31a30,pc),r0
    extu.b r3,r3
    shll2 r3
    mov.l @(r0,r3),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce3199c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31a34,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce319b4
    lds.l @r15+,PR
    mov.l @(PTR_ce31a38,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319b4:
    lds.l @r15+,PR
    mov.l @(PTR_ce31a3c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce319be:
    mov r4,r3
    mov.l @(PTR_ce31a40,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce319d0:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31a20,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce31a3c,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31a14
    mov 0x01,r0
    mov r14,r4
    mov.b r0,@(0x7,r14)
    mov 0x11,r0
    mov.l @r15,r3
    mov 0x00,r2
    mov.b r2,@(r0,r3)
    mov 0x13,r3
    mov.w @(DAT_ce31a1e,pc),r0
    mov 0x06,r2
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31a2c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31a14:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31a1c:
    #data 0x0158
DAT_ce31a1e:
    #data 0x0159
DAT_ce31a20:
    #data 0x02a4
    #align4

PTR_ce31a24:
    #data loc_8c11e730
PTR_ce31a28:
    #data loc_8c06e9dc
PTR_ce31a2c:
    #data loc_8c034e8c
PTR_ce31a30:
    #data PTR_ce34bfc
PTR_ce31a34:
    #data loc_8c046c8a
PTR_ce31a38:
    #data loc_8c051648
PTR_ce31a3c:
    #data loc_8c034dee
PTR_ce31a40:
    #data PTR_ce34c10

;=============================================

LAB_ce31a44:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce31b84,pc),r4
    mov 0x11,r0
    sts.l PR,@-r15
    add r14,r4
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce31a7c
    mov.b @(0x7,r14),r0
    mov 0x13,r3
    mov 0x05,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce31b86,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31b90,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov r14,r4
    bra LAB_ce319d0
    mov.l @r15+,r14

LAB_ce31a7c:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31a82:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce31b84,pc),r3
    mov r4,r14
    add r14,r3
    mov.l r3,@r15
    mov.l @(PTR_ce31b94,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce31ab0
    mov.l @r15,r3
    mov 0x11,r0
    mov 0x00,r2
    mov.b r2,@(r0,r3)
    mov 0x40,r0
    mov.w r0,@(0x1c,r14)
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ab0:
    mov.b @(0x7,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce31a44
    mov.l @r15+,r14
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31ac8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce31b98,pc),r3
    jsr @r3
    mov r4,r14
    tst r0,r0
    bt LAB_ce31ae0
    lds.l @r15+,PR
    mov.l @(PTR_ce31b9c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce31ae0:
    mov.l @(PTR_ce31ba0,pc),r3
    mov.l @r3,r0
    mov.l @(0x1c,r0),r0
    tst 0x07,r0
    bf LAB_ce31af4
    mov.l @(PTR_ce31ba4,pc),r1
    mov 0x02,r5
    mov 0x00,r6
    jsr @r1
    mov r14,r4

LAB_ce31af4:
    mov.b @(0x7,r14),r0
    mov r14,r4
    mov.l @(PTR_ce31ba8,pc),r1
    extu.b r0,r0
    lds.l @r15+,PR
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31b06:
    mov r4,r3
    mov.l @(PTR_ce31bac,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b18:
    mov r4,r3
    mov.l @(PTR_ce31bb0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b2a:
    mov r4,r3
    mov.l @(PTR_ce31bb4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b3c:
    mov.w @(DAT_ce31b88,pc),r3
    mov.w @(DAT_ce31b8a,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce31b98,pc),r3
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31b94,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce31b58:
    mov 0x21,r0
    mov r4,r3
    mov.l r4,@-r15
    mov.b @(r0,r3),r2
    mov.l @(PTR_ce31bb8,pc),r0
    extu.b r2,r2
    shll2 r2
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce31b6c:
    mov.w @(DAT_ce31b8c,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(r0,r14),r3
    mov.l @(PTR_ce31bbc,pc),r0
    extu.b r3,r3
    mov.w @(DAT_ce31b84,pc),r5
    shll2 r3
    mov.l @(r0,r3),r2
    add r14,r5
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31b84:
    #data 0x02a4
DAT_ce31b86:
    #data 0x0159
DAT_ce31b88:
    #data 0x00ff
DAT_ce31b8a:
    #data 0x0326
DAT_ce31b8c:
    #data 0x01e9
    #align4

PTR_ce31b90:
    #data loc_8c034e8c
PTR_ce31b94:
    #data loc_8c034dee
PTR_ce31b98:
    #data loc_8c046c8a
PTR_ce31b9c:
    #data loc_8c051648
PTR_ce31ba0:
    #data loc_8c26823c
PTR_ce31ba4:
    #data loc_8c0c21b0
PTR_ce31ba8:
    #data PTR_ce34c14
PTR_ce31bac:
    #data PTR_ce34c20
PTR_ce31bb0:
    #data PTR_ce34c24
PTR_ce31bb4:
    #data PTR_ce34c28
PTR_ce31bb8:
    #data PTR_ce34c2c
PTR_ce31bbc:
    #data PTR_ce34c44

;=============================================

FUN_ce31bc0:
    mov.l r14,@-r15
    mov 0x5C,r0
    fldi0 fr4
    mov r4,r14
    mov 0x00,r4
    mov.l @(PTR_ce31cf4,pc),r3
    sts.l PR,@-r15
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov.w @(DAT_ce31ce6,pc),r0
    mov.b r4,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce31ce8,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce31cf8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

;=============================================

FUN_ce31bfa:
    mov.w @(DAT_ce31cea,pc),r0
    mov.l @(PTR_ce31cfc,pc),r6
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce31c10
    mov 0x00,r5
    mov.w @(DAT_ce31cec,pc),r0
    mov 0x44,r2
    bra LAB_ce31c1a
    mov.b r2,@(r0,r4)

LAB_ce31c10:
    mov.w @(DAT_ce31cee,pc),r0
    mov.b @(r0,r4),r3
    add 0xFE,r0
    add 0x44,r3
    mov.b r3,@(r0,r4)

LAB_ce31c1a:
    mov.w @(DAT_ce31cf0,pc),r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)
    mov.w @(DAT_ce31ce6,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31c66
    mov.w @(DAT_ce31cee,pc),r0
    mov.b @(r0,r4),r2
    add 0xFE,r0
    add 0x48,r2
    mov.b r2,@(r0,r4)
    add 0x0B,r0
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r6,r3
    extu.b r0,r0
    shll r0
    add 0x7C,r3
    mov.w @(r0,r3),r2
    add 0x01,r2
    mov.w r2,@(r0,r3)

LAB_ce31c66:
    rts
    nop

LAB_ce31c6a:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce31d00,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce31bfa
    mov r14,r4
    mov.w @(DAT_ce31ce6,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31cc2
    mov.l @(PTR_ce31cf4,pc),r2
    jsr @r2
    mov r14,r4
    mova @(DAT_ce31d04,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    fmov.s @(r0,r14),fr3
    fdiv fr4,fr3
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce31cee,pc),r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x02,r3
    bra LAB_ce31cce
    mov.b r3,@(r0,r14)

LAB_ce31cc2:
    mov.w @(DAT_ce31cee,pc),r0
    mov.b @(r0,r14),r1
    add 0xB5,r0
    mov.b r1,@(r0,r14)
    bsr FUN_ce31bc0
    mov r14,r4

LAB_ce31cce:
    mov.w @(DAT_ce31cf2,pc),r0
    mov 0x15,r2
    mov.l @(PTR_ce31d08,pc),r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31ce6:
    #data 0x01f9
DAT_ce31ce8:
    #data 0x041c
DAT_ce31cea:
    #data 0x0255
DAT_ce31cec:
    #data 0x01a1
DAT_ce31cee:
    #data 0x01a3
DAT_ce31cf0:
    #data 0x01ac
DAT_ce31cf2:
    #data 0x0159
    #align4

PTR_ce31cf4:
    #data loc_8c05218a
PTR_ce31cf8:
    #data loc_8c05115a
PTR_ce31cfc:
    #data loc_8c2896b0
PTR_ce31d00:
    #data loc_8c056de4
DAT_ce31d04:
    #data 0x41000000
PTR_ce31d08:
    #data loc_8c034e8c

;=============================================

LAB_ce31d0c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce31e1c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce31d5a
    mov.w @(DAT_ce31e14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31d4e
    mov.l @(DAT_ce31e20,pc),r1
    mov 0x60,r0
    fmov.s @(r0,r14),fr2
    mov r14,r4
    lds r1,FPUL
    fsts FPUL,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mova @(DAT_ce31e24,pc),r0
    fmov.s @r0,fr2
    mov 0x6C,r0
    fmov fr2,@(r0,r14)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31e28,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d4e:
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31e2c,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce31d5a:
    mov.l @(PTR_ce31e30,pc),r2
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
    mov.w @(DAT_ce31e16,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce31dbe
    mov.w @(DAT_ce31e16,pc),r0
    fldi0 fr4
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

LAB_ce31dbe:
    mov.l @r15,r3
    mov.b @(0xe,r3),r0
    tst r0,r0
    bf LAB_ce31e4c
    mov.w @(DAT_ce31e18,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce31e4c
    mov 0x00,r2
    mov.b r2,@(r0,r14)
    add 0x5E,r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce31e3e
    mov.w @(DAT_ce31e14,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce31dfe
    mov.w @(DAT_ce31e1a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31df6
    cmp/eq 0x01,r0
    bt LAB_ce31dfa
    bra LAB_ce31e36
    nop

LAB_ce31df6:
    bra LAB_ce31e36
    mov 0x06,r6

LAB_ce31dfa:
    bra LAB_ce31e36
    mov 0x04,r6

LAB_ce31dfe:
    mov.w @(DAT_ce31e1a,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31e10
    cmp/eq 0x01,r0
    bt LAB_ce31e34
    bra LAB_ce31e36
    nop

LAB_ce31e10:
    bra LAB_ce31e36
    mov 0x01,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31e14:
    #data 0x01f9
DAT_ce31e16:
    #data 0x041c
DAT_ce31e18:
    #data 0x0140
DAT_ce31e1a:
    #data 0x01a3
    #align4

PTR_ce31e1c:
    #data loc_8c034dee
DAT_ce31e20:
    #data 0x40092492
DAT_ce31e24:
    #data 0xbf092492
PTR_ce31e28:
    #data loc_8c05176e
PTR_ce31e2c:
    #data loc_8c051648
PTR_ce31e30:
    #data loc_8c052c84

;=============================================

LAB_ce31e34:
    mov 0x02,r6

LAB_ce31e36:
    mov.l @(PTR_ce31f4c,pc),r3
    mov 0x01,r5
    jsr @r3
    mov.l @r15,r4

LAB_ce31e3e:
    mov r14,r4
    mov 0x1E,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce31f50,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce31e4c:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce31e54:
    mov r4,r3
    mov.l @(PTR_ce31f54,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce31e66:
    mov 0x14,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce31ef6
    mov.w @(DAT_ce31f40,pc),r0
    mov 0x7F,r6
    mov.b @(r0,r4),r7
    exts.b r7,r0
    tst 0x7F,r0
    bt/s LAB_ce31ef6
    and r7,r6
    mov.w @(DAT_ce31f40,pc),r0
    mov.w @(DAT_ce31f40,pc),r1
    mov.b @(r0,r4),r0
    add r4,r1
    and 0x80,r0
    mov.b r0,@r1
    mov 0x14,r0
    mov.b @(r0,r5),r3
    cmp/pz r3
    bt/s LAB_ce31e9c
    mov 0x00,r7
    mov.b @(r0,r5),r0
    mov 0x14,r1
    add r5,r1
    and 0x7F,r0
    mov.b r0,@r1

LAB_ce31e9c:
    mov.w @(DAT_ce31f42,pc),r0
    mov.b @(r0,r4),r3
    cmp/pz r3
    bt LAB_ce31eb6
    mov 0x14,r0
    mov.b @(r0,r5),r2
    add 0xFF,r2
    mov.b r2,@(r0,r5)
    mov.b @(r0,r5),r3
    cmp/pl r3
    bt LAB_ce31eb6
    rts
    mov.b r7,@(r0,r5)

LAB_ce31eb6:
    mov.w @(DAT_ce31f44,pc),r0
    mov.b @(r0,r4),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf LAB_ce31ed2
    mov.b @(0xe,r5),r0
    tst r0,r0
    bf LAB_ce31eca
    bra LAB_ce31ecc
    add 0x23,r6

LAB_ce31eca:
    add 0x1B,r6

LAB_ce31ecc:
    mov.w @(DAT_ce31f46,pc),r0
    bra LAB_ce31ed8
    mov.b r6,@(r0,r4)

LAB_ce31ed2:
    mov.w @(DAT_ce31f46,pc),r0
    add 0x2F,r6
    mov.b r6,@(r0,r4)

LAB_ce31ed8:
    mov.w @(DAT_ce31f48,pc),r0
    mov.l @(PTR_ce31f58,pc),r3
    mov.w r7,@(r0,r4)
    add 0xF2,r0
    mov.b r7,@(r0,r4)
    add 0x26,r0
    mov.l r7,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)

LAB_ce31ef6:
    rts
    nop

LAB_ce31efa:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce31f5c,pc),r3
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x14,r0
    mov 0x81,r3
    mov.b r3,@(r0,r2)
    mov 0x15,r2
    mov.w @(DAT_ce31f4a,pc),r0
    mov.b r2,@(r0,r14)
    add 0x4A,r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x05,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce31f60,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce31e66
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce31f40:
    #data 0x0141
DAT_ce31f42:
    #data 0x019e
DAT_ce31f44:
    #data 0x0255
DAT_ce31f46:
    #data 0x01a1
DAT_ce31f48:
    #data 0x01ac
DAT_ce31f4a:
    #data 0x0159
    #align4

PTR_ce31f4c:
    #data loc_8c06e9dc
PTR_ce31f50:
    #data loc_8c042008
PTR_ce31f54:
    #data PTR_ce34c80
PTR_ce31f58:
    #data loc_8c2896b0
PTR_ce31f5c:
    #data loc_8c052b4c
PTR_ce31f60:
    #data loc_8c034e8c

;=============================================

LAB_ce31f64:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    fmov.s fr14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce320a4,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce31e66
    mov r14,r4
    mova @(DAT_ce320a8,pc),r0
    fmov.s @r0,fr14
    mova @(DAT_ce320ac,pc),r0
    fmov.s @r0,fr15
    mov.w @(DAT_ce3209c,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x00,r0
    bt LAB_ce31f98
    cmp/eq 0x02,r0
    bt LAB_ce3205a
    bra LAB_ce32128
    nop

LAB_ce31f98:
    mov.w @(DAT_ce3209e,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bf LAB_ce31fe8
    mov 0x5C,r1
    mov r14,r4
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
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce320b0,pc),r3
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    jmp @r3
    mov.l @r15+,r14

LAB_ce31fe8:
    mov.l @(PTR_ce320b4,pc),r3
    jsr @r3
    mov r14,r4
    mova @(DAT_ce320b8,pc),r0
    mov.l @(PTR_ce320bc,pc),r3
    fmov.s @r0,fr4
    mov.w @(DAT_ce320a0,pc),r0
    mov.b @(r0,r14),r4
    add 0x8D,r0
    mov.w @(r0,r14),r2
    extu.b r4,r4
    shll2 r4
    shll2 r4
    add r3,r4
    mov.l @r4+,r5
    tst r2,r2
    bt/s LAB_ce32016
    mov.l @r4+,r6
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr4,fr3
    bra LAB_ce32022
    fmov fr3,@(r0,r14)

LAB_ce32016:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    neg r6,r6
    neg r5,r5
    fsub fr4,fr3
    fmov fr3,@(r0,r14)

LAB_ce32022:
    lds r5,FPUL
    mova @(DAT_ce320c0,pc),r0
    fmov.s @r0,fr4
    mov 0x5C,r0
    float FPUL,fr3
    lds r6,FPUL
    fmul fr4,fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    float FPUL,fr3
    mov 0x68,r0
    fmul fr4,fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    mov.l @r4+,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr14,fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    mov 0x6C,r0
    mov.l @r4,r3
    lds r3,FPUL
    float FPUL,fr3
    fmul fr14,fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)

LAB_ce3205a:
    mov.w @(DAT_ce3209e,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce320c4
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
    bra LAB_ce32128
    fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3209c:
    #data 0x01f9
DAT_ce3209e:
    #data 0x0141
DAT_ce320a0:
    #data 0x01a3
    #align4

PTR_ce320a4:
    #data loc_8c034dee
DAT_ce320a8:
    #data 0x40092492
DAT_ce320ac:
    #data 0x47800000
PTR_ce320b0:
    #data loc_8c052c84
PTR_ce320b4:
    #data loc_8c053082
DAT_ce320b8:
    #data 0x42a00000
PTR_ce320bc:
    #data DAT_ce349d0
DAT_ce320c0:
    #data 0x3fd55555

;=============================================

LAB_ce320c4:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce321fc,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce321f6,pc),r0
    mov.b @(r0,r14),r4
    add 0x8D,r0
    mov.w @(r0,r14),r2
    extu.b r4,r4
    shll2 r4
    shll2 r4
    add r3,r4
    mov.l @r4+,r6
    tst r2,r2
    bf/s LAB_ce320e8
    mov.l @r4+,r5
    neg r5,r5
    neg r6,r6

LAB_ce320e8:
    lds r6,FPUL
    mov 0x5C,r0
    float FPUL,fr3
    lds r5,FPUL
    fmov fr3,@(r0,r14)
    float FPUL,fr3
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x60,r0
    mov.l @r4+,r3
    fmov.s @(r0,r14),fr2
    lds r3,FPUL
    float FPUL,fr3
    fmul fr14,fr3
    fdiv fr15,fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r14)
    mov 0x6C,r0
    mov.l @r4,r3
    mov r14,r4
    lds r3,FPUL
    float FPUL,fr3
    fmul fr14,fr3
    fdiv fr15,fr3
    fmov fr3,@(r0,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    bra LAB_ce32134
    mov.l @r15+,r14

LAB_ce32128:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr14
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

LAB_ce32134:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32200,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32204,pc),r3
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
    bt LAB_ce321cc
    mov.b @(0x7,r14),r0
    mov 0x15,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce321f8,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @r15,r2
    mov.b @(0xe,r2),r0
    tst r0,r0
    bt LAB_ce321a8
    mov.w @(DAT_ce321f6,pc),r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x07,r3
    bra LAB_ce321b2
    mov.b r3,@(r0,r14)

LAB_ce321a8:
    mov.w @(DAT_ce321f6,pc),r0
    mov.b @(r0,r14),r1
    add 0xB5,r0
    add 0x0B,r1
    mov.b r1,@(r0,r14)

LAB_ce321b2:
    mov.w @(DAT_ce321fa,pc),r0
    mov.l @(PTR_ce32208,pc),r3
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3220c,pc),r2
    jmp @r2
    mov.l @r15+,r14

LAB_ce321cc:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce321d4:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32200,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce321ee
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32210,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce321ee:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce321f6:
    #data 0x01a3
DAT_ce321f8:
    #data 0x0159
DAT_ce321fa:
    #data 0x0158
    #align4

PTR_ce321fc:
    #data DAT_ce34a10
PTR_ce32200:
    #data loc_8c034dee
PTR_ce32204:
    #data loc_8c052ce2
PTR_ce32208:
    #data loc_8c034e8c
PTR_ce3220c:
    #data loc_8c0511b4
PTR_ce32210:
    #data loc_8c051648

;=============================================

LAB_ce32214:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce32354,pc),r3
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x14,r0
    mov 0x81,r3
    mov.b r3,@(r0,r2)
    mov 0x15,r2
    mov.w @(DAT_ce3234c,pc),r0
    mov.b r2,@(r0,r14)
    add 0x4A,r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x09,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32358,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce31e66
    mov.l @r15+,r14

LAB_ce3225a:
    mov r4,r3
    mov.l @(PTR_ce3235c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3226c:
    mov r4,r3
    mov.l @(PTR_ce32360,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3227e:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov 0x05,r5
    mov.l @(PTR_ce32364,pc),r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3234e,pc),r0
    mov 0x30,r2
    mov 0x00,r4
    mov.l @(PTR_ce32368,pc),r3
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
    bsr FUN_ce31bc0
    mov r14,r4
    mov.b @(0xe,r13),r0
    tst r0,r0
    bt LAB_ce322d2
    lds.l @r15+,PR
    mov r13,r5
    mov r14,r4
    mov.l @r15+,r13
    bra LAB_ce3225a
    mov.l @r15+,r14

LAB_ce322d2:
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce3226c
    mov.l @r15+,r14

LAB_ce322e4:
    mov r4,r3
    mov.l @(PTR_ce3236c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce322f6:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32370,pc),r3
    mov.w @(DAT_ce32350,pc),r0
    jsr @r3
    mov.l @(r0,r14),r13
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce32374
    mov.w @(DAT_ce32352,pc),r0
    mov 0x01,r3
    mov 0x5C,r1
    mov.b r3,@(r0,r14)
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
    bra LAB_ce323c0
    fmov fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3234c:
    #data 0x0159
DAT_ce3234e:
    #data 0x01a1
DAT_ce32350:
    #data 0x020c
DAT_ce32352:
    #data 0x01f5
    #align4

PTR_ce32354:
    #data loc_8c052b4c
PTR_ce32358:
    #data loc_8c034e8c
PTR_ce3235c:
    #data PTR_ce34c88
PTR_ce32360:
    #data PTR_ce34c98
PTR_ce32364:
    #data loc_8c056de4
PTR_ce32368:
    #data loc_8c2896b0
PTR_ce3236c:
    #data PTR_ce34ca8
PTR_ce32370:
    #data loc_8c034dee

;=============================================

LAB_ce32374:
    mov.w @(DAT_ce324b4,pc),r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    add 0x9B,r0
    mov.b @(r0,r14),r2
    mov 0x01,r3
    xor r3,r2
    mov.b r2,@(r0,r14)
    add 0x2B,r0
    mov.b @(r0,r13),r2
    mov.b @(r0,r14),r1
    cmp/eq r2,r1
    bf LAB_ce323b4
    mov.w @(DAT_ce324b6,pc),r0
    mov.b @(r0,r13),r0
    cmp/eq 0x01,r0
    bf LAB_ce323a2
    mov 0x34,r0
    fldi1 fr3
    fmov.s @(r0,r14),fr2
    fneg fr3
    fadd fr3,fr2
    fmov fr2,@(r0,r13)

LAB_ce323a2:
    mov.w @(DAT_ce324b6,pc),r0
    mov.b @(r0,r13),r0
    cmp/eq 0x02,r0
    bf LAB_ce323b4
    mov 0x34,r0
    fldi1 fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    fmov fr2,@(r0,r13)

LAB_ce323b4:
    lds.l @r15+,PR
    mov.l @(PTR_ce324c4,pc),r3
    mov r14,r4
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce323c0:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce323c8:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce324c8,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce324b8,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce323e4
    mova @(DAT_ce324cc,pc),r0
    fmov.s @r0,fr4

LAB_ce323e4:
    mov 0x5C,r0
    mov.l @(PTR_ce324d0,pc),r3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr4
    mov 0x04,r5
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324ba,pc),r0
    mov 0x15,r2
    mov 0x04,r3
    mov r14,r4
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce324d4,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3241a:
    mov.w @(DAT_ce324bc,pc),r0
    mov 0x03,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov r14,r4
    mov.b @(0x6,r14),r0
    mov.l @(PTR_ce324d8,pc),r1
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce32434:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce324d0,pc),r3
    mov.l r5,@r15
    mov 0x0A,r5
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    bsr FUN_ce31bc0
    mov r14,r4
    mov.l @(PTR_ce324dc,pc),r3
    mov 0x00,r5
    mov 0x01,r6
    jsr @r3
    mov.l @r15,r4
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce32466
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce32466:
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32774
    mov.l @r15+,r14

LAB_ce32472:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce324e0,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324ba,pc),r0
    mov 0x15,r2
    mov.b r2,@(r0,r14)
    add 0x4A,r0
    mov.b @(r0,r14),r3
    add 0xB5,r0
    add 0x0D,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce324d4,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce324be,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce324e4
    mov 0x00,r4
    mov.w @(DAT_ce324c0,pc),r0
    mov 0x41,r2
    bra LAB_ce324ee
    mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce324b4:
    #data 0x0237
DAT_ce324b6:
    #data 0x01fd
DAT_ce324b8:
    #data 0x0130
DAT_ce324ba:
    #data 0x0159
DAT_ce324bc:
    #data 0x01f2
DAT_ce324be:
    #data 0x0255
DAT_ce324c0:
    #data 0x01a1
    #align4

PTR_ce324c4:
    #data loc_8c051648
DAT_ce324c8:
    #data 0x41055555
DAT_ce324cc:
    #data 0xc1055555
PTR_ce324d0:
    #data loc_8c056de4
PTR_ce324d4:
    #data loc_8c034e8c
PTR_ce324d8:
    #data PTR_ce34cb4
PTR_ce324dc:
    #data loc_8c06e9dc
PTR_ce324e0:
    #data loc_8c052b4c

;=============================================

LAB_ce324e4:
    mov.w @(DAT_ce325e8,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x40,r3
    mov.b r3,@(r0,r14)

LAB_ce324ee:
    mov.w @(DAT_ce325ea,pc),r0
    mov r4,r6
    mov.l @(PTR_ce325f0,pc),r3
    mov 0x08,r5
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    mov.l @(PTR_ce325f4,pc),r3
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;=============================================

FUN_ce3251a:
    mova @(DAT_ce325f8,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce325fc,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32600,pc),r0
    fmov.s @r0,fr6
    mov.w @(DAT_ce325ec,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bf LAB_ce3253a
    mova @(DAT_ce32604,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32608,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3260c,pc),r0
    fmov.s @r0,fr6

LAB_ce3253a:
    mov.w @(DAT_ce325e8,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce32548
    mov 0x5C,r0
    bra LAB_ce3254c
    fmov fr4,@(r0,r4)

LAB_ce32548:
    mov 0x5C,r0
    fmov fr5,@(r0,r4)

LAB_ce3254c:
    mov 0x68,r0
    fldi0 fr4
    fmov fr6,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce3255c:
    mova @(DAT_ce32610,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32614,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce325ec,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bf LAB_ce32574
    mova @(DAT_ce32618,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3261c,pc),r0
    fmov.s @r0,fr5

LAB_ce32574:
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce32588:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32620,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce325ee,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32628
    mov 0x5C,r1
    mov r14,r4
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
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce32624,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce325e8:
    #data 0x01a3
DAT_ce325ea:
    #data 0x01ac
DAT_ce325ec:
    #data 0x0130
DAT_ce325ee:
    #data 0x0141
    #align4

PTR_ce325f0:
    #data loc_8c2896b0
PTR_ce325f4:
    #data loc_8c0c21b0
DAT_ce325f8:
    #data 0x41855555
DAT_ce325fc:
    #data 0x4192aaaa
DAT_ce32600:
    #data 0xbe555555
DAT_ce32604:
    #data 0xc1855555
DAT_ce32608:
    #data 0xc192aaaa
DAT_ce3260c:
    #data 0x3e555555
DAT_ce32610:
    #data 0x40a00000
DAT_ce32614:
    #data 0xbdd55555
DAT_ce32618:
    #data 0xc0a00000
DAT_ce3261c:
    #data 0x3dd55555
PTR_ce32620:
    #data loc_8c034dee
PTR_ce32624:
    #data loc_8c052c84

;=============================================

LAB_ce32628:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    bsr FUN_ce3251a
    mov r14,r4
    mov.l @(PTR_ce32790,pc),r13
    mov 0x04,r5
    mov 0x00,r6
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    mov 0x01,r6
    jsr @r13
    mov r14,r4
    mov 0x04,r5
    mov 0x02,r6
    jsr @r13
    mov r14,r4
    mov.w @(DAT_ce32786,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x03,r0
    bf/s LAB_ce32662
    mov 0x00,r4
    mov.w @(DAT_ce32788,pc),r0
    mov 0x43,r2
    bra LAB_ce3266c
    mov.b r2,@(r0,r14)

LAB_ce32662:
    mov.w @(DAT_ce3278a,pc),r0
    mov.b @(r0,r14),r3
    add 0xFE,r0
    add 0x42,r3
    mov.b r3,@(r0,r14)

LAB_ce3266c:
    mov.w @(DAT_ce3278c,pc),r0
    mov.l @(PTR_ce32794,pc),r3
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
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32698
    mov.l @r15+,r14

LAB_ce32698:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32798,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3278e,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce326f0
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
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce326f0:
    mov.b @(0x7,r14),r0
    mov 0x00,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x15,r0
    mov.l @r15,r3
    mov.b r2,@(r0,r3)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce3255c
    mov.l @r15+,r14
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32712:
    mov 0x15,r0
    mov 0x01,r3
    mov.b r3,@(r0,r5)
    bra LAB_ce32698
    nop

LAB_ce3271c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32798,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32736
    lds.l @r15+,PR
    mov.l @(PTR_ce3279c,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32736:
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
    rts
    mov.l @r15+,r14

LAB_ce32774:
    mov r4,r3
    mov.l @(PTR_ce327a0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32786:
    #data 0x0255
DAT_ce32788:
    #data 0x01a1
DAT_ce3278a:
    #data 0x01a3
DAT_ce3278c:
    #data 0x01ac
DAT_ce3278e:
    #data 0x0141
    #align4

PTR_ce32790:
    #data loc_8c0c21b0
PTR_ce32794:
    #data loc_8c2896b0
PTR_ce32798:
    #data loc_8c034dee
PTR_ce3279c:
    #data loc_8c051648
PTR_ce327a0:
    #data PTR_ce34cbc

;=============================================

LAB_ce327a4:
    mov r4,r3
    mov.l @(PTR_ce328f4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce327b6:
    mov r4,r3
    mov.l @(PTR_ce328f8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce327c8:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov 0x14,r1
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
    mov.w @(DAT_ce328e6,pc),r0
    mov.w @(r0,r14),r2
    mov r0,r3
    add 0xCE,r3
    and r3,r2
    mov.w r2,@(r0,r14)
    add 0x29,r0
    mov.b r1,@(r0,r14)
    add 0x79,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce32804
    bra LAB_ce32806
    mov 0x03,r2

LAB_ce32804:
    mov 0x04,r2

LAB_ce32806:
    mov.w @(DAT_ce328e8,pc),r0
    mov.l @(PTR_ce328fc,pc),r3
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32900,pc),r2
    mov 0x21,r5
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32822:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce32904,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3285e
    mov.b @(0x6,r14),r0
    mov 0x14,r2
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce328ea,pc),r0
    mov.b @(r0,r14),r3
    mov.w @(DAT_ce328e6,pc),r0
    extu.b r3,r3
    mov.w r3,@(r0,r14)
    add 0x29,r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov 0x05,r3
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    lds.l @r15+,PR
    mov.l @(PTR_ce328fc,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce3285e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;=============================================

FUN_ce32864:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce32904,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce3287e
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce32908,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce3287e:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

LAB_ce32886:
    mov r4,r3
    mov.l @(PTR_ce3290c,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce32898:
    mova @(DAT_ce32910,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce32914,pc),r0
    fmov.s @r0,fr5
    mov.w @(DAT_ce328e6,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bf LAB_ce328b0
    mova @(DAT_ce32918,pc),r0
    fmov.s @r0,fr4
    mova @(DAT_ce3291c,pc),r0
    fmov.s @r0,fr5

LAB_ce328b0:
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr5,@(r0,r4)
    mov 0x60,r0
    fldi0 fr4
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    rts
    fmov fr4,@(r0,r4)

LAB_ce328c4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce328ec,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce328ee,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce328f0,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32920
    bra LAB_ce32922
    mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce328e6:
    #data 0x0130
DAT_ce328e8:
    #data 0x0158
DAT_ce328ea:
    #data 0x01d2
DAT_ce328ec:
    #data 0x03f8
DAT_ce328ee:
    #data 0x0328
DAT_ce328f0:
    #data 0x0255
    #align4

PTR_ce328f4:
    #data PTR_ce34ccc
PTR_ce328f8:
    #data PTR_ce34cdc
PTR_ce328fc:
    #data loc_8c034e8c
PTR_ce32900:
    #data loc_8c042008
PTR_ce32904:
    #data loc_8c034dee
PTR_ce32908:
    #data loc_8c051648
PTR_ce3290c:
    #data PTR_ce34ce8
DAT_ce32910:
    #data 0x4192aaaa
DAT_ce32914:
    #data 0xbf555555
DAT_ce32918:
    #data 0xc192aaaa
DAT_ce3291c:
    #data 0x3f555555

;=============================================

LAB_ce32920:
    mov 0x00,r3

LAB_ce32922:
    mov.w @(DAT_ce32a72,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32a84,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32984
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov 0x50,r3
    mov.w @(DAT_ce32a74,pc),r0
    mov r15,r5
    mov 0x01,r6
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32a76,pc),r0
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32a88,pc),r3
    mov.l r4,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mova @(DAT_ce32a8c,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32a90,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mov.l @(PTR_ce32a94,pc),r2
    jsr @r2
    mov r14,r4

LAB_ce32984:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3298c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32a78,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce329ac
    mov.w @(DAT_ce32a74,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32a7a,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce329ac:
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    bsr FUN_ce31bc0
    mov r14,r4
    mov.w @(DAT_ce32a7c,pc),r0
    mov 0x16,r2
    mov 0x0D,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32a98,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce328c4
    mov.l @r15+,r14

;=============================================

FUN_ce329da:
    mov.w @(DAT_ce32a7e,pc),r0
    mov 0x0F,r3
    mov.b @(r0,r4),r5
    and r3,r5
    extu.b r5,r2
    tst r2,r2
    bt LAB_ce32a18
    mov.b @(r0,r4),r2
    mov r0,r3
    add 0xAF,r3
    and r3,r2
    mov.b r2,@(r0,r4)
    add 0x60,r0
    add 0x4F,r5
    mov.l @(PTR_ce32a88,pc),r2
    mov.b r5,@(r0,r4)
    add 0x0B,r0
    mov 0x00,r5
    mov.w r5,@(r0,r4)
    add 0xF2,r0
    mov.b r5,@(r0,r4)
    add 0x26,r0
    mov.l r5,@(r0,r4)
    mov.b @(0x2,r4),r0
    mov.l @r2,r1
    extu.b r0,r0
    shll r0
    add 0x7C,r1
    mov.w @(r0,r1),r3
    add 0x01,r3
    mov.w r3,@(r0,r1)

LAB_ce32a18:
    rts
    nop

LAB_ce32a1c:
    mov.w @(DAT_ce32a80,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov 0x05,r2
    mov.l r13,@-r15
    mov r5,r13
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x87,r3
    mov.w @(DAT_ce32a82,pc),r0
    mov.b r2,@(r0,r14)
    mov 0x16,r2
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x14,r0
    mov.b r3,@(r0,r13)
    mov 0x00,r3
    mov.w @(DAT_ce32a7c,pc),r0
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32a98,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov r13,r5
    bsr FUN_ce31e66
    mov r14,r4
    mov r13,r5
    bsr FUN_ce32898
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32a9c,pc),r2
    mov 0x00,r6
    mov 0x06,r5
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32a72:
    #data 0x03f1
DAT_ce32a74:
    #data 0x03f0
DAT_ce32a76:
    #data 0x01a1
DAT_ce32a78:
    #data 0x0255
DAT_ce32a7a:
    #data 0x00ff
DAT_ce32a7c:
    #data 0x0159
DAT_ce32a7e:
    #data 0x0141
DAT_ce32a80:
    #data 0x03f8
DAT_ce32a82:
    #data 0x0328
    #align4

PTR_ce32a84:
    #data loc_8c034dee
PTR_ce32a88:
    #data loc_8c2896b0
DAT_ce32a8c:
    #data 0x41d55555
DAT_ce32a90:
    #data 0x42cdb6db
PTR_ce32a94:
    #data loc_8c050834
PTR_ce32a98:
    #data loc_8c034e8c
PTR_ce32a9c:
    #data loc_8c0c21b0

;=============================================

LAB_ce32aa0:
    mov.l r14,@-r15
    fmov.s fr15,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32b7c,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b7e,pc),r0
    mov.l @(PTR_ce32b88,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce329da
    mov r14,r4
    mov.w @(DAT_ce32b80,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce32b72
    fldi0 fr15
    cmp/eq 0x01,r0
    bt LAB_ce32ade
    cmp/eq 0x02,r0
    bt LAB_ce32aec
    cmp/eq 0x03,r0
    bt LAB_ce32b28
    bra LAB_ce32b72
    nop

LAB_ce32ade:
    mov.w @(DAT_ce32b80,pc),r0
    mov.b @(r0,r14),r3
    add 0x01,r3
    mov.b r3,@(r0,r14)
    mov.l @r15,r5
    bsr FUN_ce32898
    mov r14,r4

LAB_ce32aec:
    mov 0x5C,r0
    fmov.s @(r0,r14),fr4
    mov 0x68,r0
    fmov.s @(r0,r14),fr3
    mov.w @(DAT_ce32b82,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf/s LAB_ce32b08
    fadd fr3,fr4
    fldi0 fr3
    fcmp/gt fr3,fr4
    bt LAB_ce32b0e
    bra LAB_ce32b14
    nop

LAB_ce32b08:
    fldi0 fr3
    fcmp/gt fr4,fr3
    bf LAB_ce32b14

LAB_ce32b0e:
    mov 0x68,r0
    fmov fr15,fr4
    fmov fr4,@(r0,r14)

LAB_ce32b14:
    mov 0x5C,r0
    mov 0x5C,r1
    fmov fr4,@(r0,r14)
    add r14,r1
    mov 0x34,r0
    fmov.s @r1,fr3
    fmov.s @(r0,r14),fr2
    fadd fr3,fr2
    bra LAB_ce32b72
    fmov fr2,@(r0,r14)

LAB_ce32b28:
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov 0x02,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32b80,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32b84,pc),r0
    mov.b r2,@(r0,r14)
    mova @(DAT_ce32b8c,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32b90,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32b86,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32b52
    mova @(DAT_ce32b94,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce32b98,pc),r0
    fmov.s @r0,fr4

LAB_ce32b52:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fadd fr5,fr3
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr15,@(r0,r14)
    mova @(DAT_ce32b9c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32ba0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32b72:
    add 0x04,r15
    lds.l @r15+,PR
    fmov.s @r15+,fr15
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32b7c:
    #data 0x03f8
DAT_ce32b7e:
    #data 0x0328
DAT_ce32b80:
    #data 0x0140
DAT_ce32b82:
    #data 0x0130
DAT_ce32b84:
    #data 0x01f9
DAT_ce32b86:
    #data 0x01d2
    #align4

PTR_ce32b88:
    #data loc_8c034dee
DAT_ce32b8c:
    #data 0x42a00000
DAT_ce32b90:
    #data 0x40d55555
DAT_ce32b94:
    #data 0xc2a00000
DAT_ce32b98:
    #data 0xc0d55555
DAT_ce32b9c:
    #data 0x421a4924
DAT_ce32ba0:
    #data 0x3f892492

;=============================================

LAB_ce32ba4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32ce2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce32ce4,pc),r0
    mov.l @(PTR_ce32cf0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce329da
    mov r14,r4
    mov.w @(DAT_ce32ce6,pc),r0
    mov.b @(r0,r14),r0
    cmp/eq 0x03,r0
    bt LAB_ce32c1e
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
    mov.w @(DAT_ce32ce8,pc),r0
    fmov.s @(r0,r14),fr3
    ftrc fr3,FPUL
    sts FPUL,r4
    lds r4,FPUL
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    float FPUL,fr3
    fmov fr3,fr4
    fcmp/gt fr4,fr2
    bt LAB_ce32c50
    fmov fr4,@(r0,r14)

LAB_ce32c1e:
    mov.w @(DAT_ce32cea,pc),r0
    mov 0x00,r4
    fldi0 fr3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32cec,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cf4,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32cf8,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)

LAB_ce32c50:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32c58:
    mov.w @(DAT_ce32ce2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32ce4,pc),r0
    mov.l @(PTR_ce32cf0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov.l @(PTR_ce32cfc,pc),r3
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
    bt LAB_ce32cdc
    mov.b @(0x7,r14),r0
    mov 0x16,r3
    mov 0x01,r2
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce32cee,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32d00,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce32d04,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce32cdc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32ce2:
    #data 0x03f8
DAT_ce32ce4:
    #data 0x0328
DAT_ce32ce6:
    #data 0x0140
DAT_ce32ce8:
    #data 0x041c
DAT_ce32cea:
    #data 0x03f9
DAT_ce32cec:
    #data 0x0327
DAT_ce32cee:
    #data 0x0159
    #align4

PTR_ce32cf0:
    #data loc_8c034dee
DAT_ce32cf4:
    #data 0x41092492
DAT_ce32cf8:
    #data 0xbf892492
PTR_ce32cfc:
    #data loc_8c052ce2
PTR_ce32d00:
    #data loc_8c034e8c
PTR_ce32d04:
    #data loc_8c0511b4

;=============================================

LAB_ce32d08:
    mov.w @(DAT_ce32dd6,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32dd8,pc),r0
    mov.l @(PTR_ce32de0,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32d30
    lds.l @r15+,PR
    mov.l @(PTR_ce32de4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce32d30:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce32d36:
    mov r4,r3
    mov.l @(PTR_ce32de8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d48:
    mov r4,r3
    mov.l @(PTR_ce32dec,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d5a:
    mov r4,r3
    mov.l @(PTR_ce32df0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce32d6c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce32dd6,pc),r0
    mov r4,r14
    mov 0x02,r3
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce32dd8,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce32dda,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32d8e
    bra LAB_ce32d90
    mov 0x02,r3

LAB_ce32d8e:
    mov 0x00,r3

LAB_ce32d90:
    mov.w @(DAT_ce32ddc,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce32de0,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce32dce
    mov.b @(0x6,r14),r0
    mov 0x00,r4
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r4,r0
    nop
    mov.b r0,@(0x7,r14)
    mov r15,r5
    mov.w @(DAT_ce32dde,pc),r0
    mov 0x01,r6
    mov.l @(PTR_ce32dfc,pc),r3
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mova @(DAT_ce32df4,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce32df8,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce32dce:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32dd6:
    #data 0x03f8
DAT_ce32dd8:
    #data 0x0328
DAT_ce32dda:
    #data 0x0255
DAT_ce32ddc:
    #data 0x03f1
DAT_ce32dde:
    #data 0x03f0
    #align4

PTR_ce32de0:
    #data loc_8c034dee
PTR_ce32de4:
    #data loc_8c051648
PTR_ce32de8:
    #data PTR_ce34cf4
PTR_ce32dec:
    #data PTR_ce34cfc
PTR_ce32df0:
    #data PTR_ce34d10
DAT_ce32df4:
    #data 0x42200000
DAT_ce32df8:
    #data 0x43474924
PTR_ce32dfc:
    #data loc_8c050834

;=============================================

LAB_ce32e00:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce32f2c,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce32e22
    mov.w @(DAT_ce32f30,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce32f2e,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce32e22:
    mov.b @(0x7,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x13,r0
    mov.l @r15,r3
    mov.b r13,@(r0,r3)
    mov.l @(PTR_ce32f3c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce32f32,pc),r0
    mov 0x16,r2
    mov 0x02,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32f40,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce32f44,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce32f34,pc),r0
    mov 0x4C,r3
    mov r14,r4
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r13,@(r0,r14)
    add 0xF2,r0
    mov.b r13,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce32f48,pc),r3
    mov.l r13,@(r0,r14)
    mov.b @(0x2,r14),r0
    mov.l @r3,r2
    extu.b r0,r0
    shll r0
    add 0x7C,r2
    mov.w @(r0,r2),r1
    add 0x01,r1
    mov.w r1,@(r0,r2)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32d6c
    mov.l @r15+,r14

LAB_ce32e86:
    mov.l r14,@-r15
    mov r4,r14
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32f4c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32f36,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32ea0
    mova @(DAT_ce32f50,pc),r0
    fmov.s @r0,fr4

LAB_ce32ea0:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f54,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x16,r3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce32f58,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x03,r2
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce32f32,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32f40,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

LAB_ce32ed4:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce32f38,pc),r0
    mov 0x00,r4
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov.w @(DAT_ce32f3a,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mova @(DAT_ce32f5c,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce32f36,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bf LAB_ce32f00
    mova @(DAT_ce32f60,pc),r0
    fmov.s @r0,fr4

LAB_ce32f00:
    mov 0x5C,r0
    mov r14,r4
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fldi0 fr4
    mov 0x16,r3
    fmov fr4,@(r0,r14)
    mov 0x60,r0
    fmov fr4,@(r0,r14)
    mov 0x6C,r0
    fmov fr4,@(r0,r14)
    mov 0x04,r2
    mov.w @(DAT_ce32f32,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce32f40,pc),r3
    mov.b @(r0,r14),r5
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce32f2c:
    #data 0x0255
DAT_ce32f2e:
    #data 0x00ff
DAT_ce32f30:
    #data 0x03f0
DAT_ce32f32:
    #data 0x0159
DAT_ce32f34:
    #data 0x01a1
DAT_ce32f36:
    #data 0x0130
DAT_ce32f38:
    #data 0x03f9
DAT_ce32f3a:
    #data 0x0327
    #align4

PTR_ce32f3c:
    #data FUN_ce31bc0
PTR_ce32f40:
    #data loc_8c034e8c
PTR_ce32f44:
    #data loc_8c05115a
PTR_ce32f48:
    #data loc_8c2896b0
DAT_ce32f4c:
    #data 0x41855555
DAT_ce32f50:
    #data 0xc1855555
DAT_ce32f54:
    #data 0x404db6db
DAT_ce32f58:
    #data 0xbeab6db6
DAT_ce32f5c:
    #data 0x40855555
DAT_ce32f60:
    #data 0xc0855555

;=============================================

LAB_ce32f64:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33082,pc),r0
    mov r4,r14
    mov.l @(PTR_ce33098,pc),r3
    mov.l r5,@r15
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce33084,pc),r0
    mov.l @(r0,r14),r13
    jsr @r3
    mov r14,r4
    tst r0,r0
    bt LAB_ce32f90
    mov.w @(DAT_ce33086,pc),r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce32f9e

LAB_ce32f90:
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    bra LAB_ce32ed4
    mov.l @r15+,r14

LAB_ce32f9e:
    mov.w @(DAT_ce33088,pc),r3
    mov r13,r5
    mov.l @r15,r2
    mov.l r13,@(0x4,r2)
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov 0x00,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3308a,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce3309c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3308c,pc),r0
    mov 0x02,r4
    mov 0x11,r2
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    add 0xBF,r0
    mov.l r14,@(r0,r13)
    mov.w @(DAT_ce3308e,pc),r0
    mov.w @(r0,r14),r3
    mov.w r3,@(r0,r13)
    mov 0x4C,r3
    mov.w @(DAT_ce33090,pc),r0
    mov.b r2,@(r0,r13)
    add 0x03,r0
    mov.b r4,@(r0,r13)
    add 0xA8,r0
    mov.b r3,@(r0,r13)
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce32fe8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33092,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r4
    exts.b r4,r3
    cmp/pz r3
    bt LAB_ce3301c
    mov 0x7F,r3
    and r3,r4
    exts.b r4,r4
    tst r4,r4
    bf LAB_ce33012
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32f64
    mov.l @r15+,r14

LAB_ce33012:
    mov.w @(DAT_ce33082,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    bra LAB_ce3306e
    fmov fr3,@(r0,r14)

LAB_ce3301c:
    mov.l @(PTR_ce330a0,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33094,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce3307a
    mov 0x5C,r1
    mov.l @(PTR_ce330a4,pc),r3
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
    bt LAB_ce3307a

LAB_ce3306e:
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce32ed4
    mov.l @r15+,r14

LAB_ce3307a:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33082:
    #data 0x041c
DAT_ce33084:
    #data 0x01b0
DAT_ce33086:
    #data 0x0233
DAT_ce33088:
    #data 0x00c5
DAT_ce3308a:
    #data 0x01f7
DAT_ce3308c:
    #data 0x01ed
DAT_ce3308e:
    #data 0x0130
DAT_ce33090:
    #data 0x01f6
DAT_ce33092:
    #data 0x019e
DAT_ce33094:
    #data 0x0141
    #align4

PTR_ce33098:
    #data loc_8c05264c
PTR_ce3309c:
    #data loc_8c0523d8
PTR_ce330a0:
    #data loc_8c034dee
PTR_ce330a4:
    #data loc_8c052ce2

;=============================================

LAB_ce330a8:
    mov.l r14,@-r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov 0x34,r0
    mov.l @(PTR_ce331f0,pc),r3
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
    bt LAB_ce330fc
    lds.l @r15+,PR
    mov.l @(PTR_ce331f4,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce330fc:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33102:
    mov.l @(0x4,r5),r6
    mov 0x60,r0
    fldi0 fr3
    fmov.s @(r0,r6),fr2
    fcmp/gt fr3,fr2
    bt LAB_ce3315a
    fmov.s @(r0,r6),fr4
    mova @(DAT_ce331f8,pc),r0
    fmov.s @r0,fr5
    mova @(DAT_ce331fc,pc),r0
    fmov.s @r0,fr6
    fcmp/gt fr4,fr6
    bf/s LAB_ce33120
    mov 0x6C,r0
    fmov fr6,fr4

LAB_ce33120:
    fmov.s @(r0,r6),fr3
    fcmp/gt fr5,fr3
    bf LAB_ce33128
    fmov.s @(r0,r6),fr5

LAB_ce33128:
    fadd fr5,fr4
    mov.w @(DAT_ce331ea,pc),r0
    fmov.s @(r0,r6),fr3
    mov 0x38,r0
    fadd fr4,fr4
    fadd fr3,fr4
    fmov.s @(r0,r6),fr3
    fcmp/gt fr3,fr4
    bf LAB_ce3315a
    fmov fr4,@(r0,r6)
    mov 0x5C,r0
    fldi0 fr4
    fmov fr4,@(r0,r6)
    mov 0x60,r0
    fmov fr4,@(r0,r6)
    mov 0x68,r0
    fmov fr4,@(r0,r6)
    mov 0x6C,r0
    fmov fr4,@(r0,r6)
    mov.b @(0x6,r4),r0
    add 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x00,r0
    bra LAB_ce33a5c
    mov.b r0,@(0x7,r4)

LAB_ce3315a:
    rts
    nop

LAB_ce3315e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov 0x5C,r1
    mov r4,r14
    add r14,r1
    mov.l @(PTR_ce331f0,pc),r3
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
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce331b2
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce331b2:
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33102
    mov.l @r15+,r14

LAB_ce331be:
    mov.b @(0x7,r4),r0
    mov.w @(DAT_ce331ec,pc),r1
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    add r4,r1
    mov.w @(DAT_ce331ec,pc),r0
    mov.w @(r0,r4),r0
    xor 0x01,r0
    mov.w r0,@r1
    mov.w @(DAT_ce331ee,pc),r0
    mov.w @(DAT_ce331ee,pc),r1
    mov.b @(r0,r4),r0
    add r4,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce331ec,pc),r0
    mov.w @(r0,r4),r3
    tst r3,r3
    bt LAB_ce33204
    mova @(DAT_ce33200,pc),r0
    bra LAB_ce33208
    fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce331ea:
    #data 0x041c
DAT_ce331ec:
    #data 0x0130
DAT_ce331ee:
    #data 0x01d2
    #align4

PTR_ce331f0:
    #data loc_8c034dee
PTR_ce331f4:
    #data loc_8c051648
DAT_ce331f8:
    #data 0x40092492
DAT_ce331fc:
    #data 0x42009249
DAT_ce33200:
    #data 0xc1200000

;=============================================

LAB_ce33204:
    mova @(DAT_ce33330,pc),r0
    fmov.s @r0,fr3

LAB_ce33208:
    mov 0x5C,r0
    fldi0 fr4
    fmov fr3,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mov 0x60,r0
    fmov fr4,@(r0,r4)
    mov 0x6C,r0
    fmov fr4,@(r0,r4)
    mov 0x00,r3
    mov.w @(DAT_ce33320,pc),r0
    mov 0x04,r6
    mov.l @(0x4,r5),r5
    mov.b r3,@(r0,r5)
    mov.l @(PTR_ce33334,pc),r3
    jmp @r3
    mov 0x16,r5

LAB_ce3322a:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.l @(PTR_ce33338,pc),r3
    mov 0x00,r13
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33252
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    bra LAB_ce332c4
    mov.b r0,@(0x7,r14)

LAB_ce33252:
    mov.w @(DAT_ce33322,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce332c4
    mov.l @r15,r4
    mov.w @(DAT_ce33324,pc),r0
    mov.l @(0x4,r4),r4
    mov.l r14,@(r0,r4)
    add 0x8C,r0
    mov.b @(r0,r14),r3
    add 0x61,r0
    add 0x4C,r3
    mov.b r3,@(r0,r14)
    add 0x9F,r0
    mov.b @(r0,r14),r2
    add 0x61,r0
    mov.l @(PTR_ce3333c,pc),r3
    add 0x4C,r2
    mov.b r2,@(r0,r4)
    add 0x9F,r0
    mov.b r13,@(r0,r14)
    jsr @r3
    mov r14,r4
    mova @(DAT_ce33340,pc),r0
    mov r15,r5
    fmov.s @r0,fr3
    mov 0x04,r0
    mov.l @(PTR_ce33348,pc),r3
    add 0x04,r5
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33344,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3334c,pc),r3
    mov r14,r5
    mov.l @r15,r4
    jsr @r3
    mov.l @(0x4,r4),r4
    mov.w @(DAT_ce33326,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce332c4
    mov.w @(DAT_ce33328,pc),r3
    mov r3,r0
    nop
    add 0x4C,r0
    mov.l @(PTR_ce33350,pc),r2
    mov.b @(r0,r14),r5
    add 0x7D,r0
    add r3,r5
    jsr @r2
    mov.l @(r0,r14),r4
    mov.w @(DAT_ce33326,pc),r0
    mov.b r13,@(r0,r14)

LAB_ce332c4:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce332ce:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov.l @(PTR_ce33334,pc),r3
    mov.l r5,@r15
    mov 0x16,r5
    mov.b @(0x7,r14),r0
    mov 0x05,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3332c,pc),r0
    mov r14,r4
    mov.w @(DAT_ce3332a,pc),r2
    mov.b r2,@(r0,r14)
    mov.l @r15,r5
    mov.l @(0x4,r5),r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33354,pc),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce332fe:
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33338,pc),r3
    jsr @r3
    mov.l r4,@r15
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33318
    mov.l @r15,r4
    add 0x04,r15
    mov.l @(PTR_ce33358,pc),r3
    jmp @r3
    lds.l @r15+,PR

LAB_ce33318:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33320:
    #data 0x0236
DAT_ce33322:
    #data 0x0140
DAT_ce33324:
    #data 0x01b4
DAT_ce33326:
    #data 0x014b
DAT_ce33328:
    #data 0x00ff
DAT_ce3332a:
    #data 0x00c5
DAT_ce3332c:
    #data 0x01f7
    #align4

DAT_ce33330:
    #data 0x41200000
PTR_ce33334:
    #data loc_8c034e8c
PTR_ce33338:
    #data loc_8c034dee
PTR_ce3333c:
    #data loc_8c05933c
DAT_ce33340:
    #data 0xc2a00000
DAT_ce33344:
    #data 0x43092492
PTR_ce33348:
    #data loc_8c0fdb4e
PTR_ce3334c:
    #data loc_8c059f64
PTR_ce33350:
    #data loc_8c0424a6
PTR_ce33354:
    #data loc_8c05248e
PTR_ce33358:
    #data loc_8c051648

;=============================================

LAB_ce3335c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33468,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce3346c,pc),r3
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
    bt LAB_ce333c4
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33470,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33474,pc),r2
    mov r14,r4
    mov 0x08,r6
    mov 0x16,r5
    jmp @r2
    mov.l @r15+,r14

LAB_ce333c4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce333ca:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    add 0x01,r0
    exts.w r0,r0
    tst r0,r0
    bf LAB_ce33458
    mov.b @(0x7,r14),r0
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3345e,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33478,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33460,pc),r0
    mov 0x24,r3
    mov 0x02,r2
    mov.w @(DAT_ce33462,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    add r14,r1
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    add 0xFD,r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce33464,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce3342c
    mova @(DAT_ce3347c,pc),r0
    bra LAB_ce33430
    fmov.s @r0,fr3

LAB_ce3342c:
    mova @(DAT_ce33480,pc),r0
    fmov.s @r0,fr3

LAB_ce33430:
    mov 0x5C,r0
    mov.l @(PTR_ce33474,pc),r3
    fmov fr3,@(r0,r14)
    mov 0x68,r0
    fldi0 fr3
    mov r14,r4
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33484,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x07,r6
    fmov fr3,@(r0,r14)
    mova @(DAT_ce33488,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x16,r5
    fmov fr3,@(r0,r14)
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce33458:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3345e:
    #data 0x0141
DAT_ce33460:
    #data 0x01c8
DAT_ce33462:
    #data 0x01d2
DAT_ce33464:
    #data 0x0130
    #align4

PTR_ce33468:
    #data loc_8c034dee
PTR_ce3346c:
    #data loc_8c052ce2
PTR_ce33470:
    #data loc_8c0511b4
PTR_ce33474:
    #data loc_8c034e8c
PTR_ce33478:
    #data loc_8c02fec4
DAT_ce3347c:
    #data 0xc1555555
DAT_ce33480:
    #data 0x41555555
DAT_ce33484:
    #data 0x41892492
DAT_ce33488:
    #data 0xbf892492

;=============================================

FUN_ce3348c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce335e4,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce335dc,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce334da
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

LAB_ce334da:
    mov.w @(DAT_ce335de,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr3,fr2
    bf LAB_ce33514
    mov 0x20,r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33570
    mova @(DAT_ce335e8,pc),r0
    fmov.s @r0,fr3
    mov.w @(DAT_ce335de,pc),r0
    fmov.s @(r0,r14),fr2
    mov 0x38,r0
    fmov.s @(r0,r14),fr1
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bt LAB_ce33570
    mov 0x20,r0
    mov.l @(PTR_ce335ec,pc),r3
    mov.b @(r0,r14),r2
    mov 0x05,r5
    add 0x01,r2
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    bra LAB_ce33570
    nop

LAB_ce33514:
    mov.w @(DAT_ce335de,pc),r0
    mov 0x25,r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x10,r0
    mov.w r0,@(0x1c,r14)
    mov.w @(DAT_ce335e0,pc),r0
    mov.l @(r0,r14),r13
    add 0xEC,r0
    mov.l r14,@(r0,r13)
    add 0xED,r0
    mov.b r3,@(r0,r13)
    mov.l @(PTR_ce335f0,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce335f4,pc),r2
    mov r14,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce335f8,pc),r4
    mov 0x03,r0
    mov.l @(PTR_ce335fc,pc),r3
    mov 0x01,r5
    mov.b r0,@(0x5,r4)
    mov 0x01,r0
    mov.b r0,@(0x6,r4)
    mov 0x34,r0
    fmov.s @(r0,r13),fr3
    mov.w @(DAT_ce335de,pc),r0
    fmov.s fr3,@r15
    fmov.s @(r0,r13),fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r15,r4
    mov.l @(PTR_ce33600,pc),r2
    mov 0x4A,r5
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce33604,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce33570:
    add 0x0C,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce3357a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov r4,r14
    fldi0 fr4
    mov 0x00,r3
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    mov r15,r5
    add 0x04,r5
    mov r3,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x5C,r0
    fmov fr4,@(r0,r14)
    mov 0x68,r0
    fmov fr4,@(r0,r14)
    mova @(DAT_ce33608,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3360c,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r14)
    mov 0x20,r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce33610,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33614,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    mov.l @(PTR_ce33618,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33600,pc),r2
    mov 0x23,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce3348c
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce335dc:
    #data 0x0141
DAT_ce335de:
    #data 0x041c
DAT_ce335e0:
    #data 0x01c8
    #align4

PTR_ce335e4:
    #data loc_8c034dee
DAT_ce335e8:
    #data 0x43892492
PTR_ce335ec:
    #data loc_8c042008
PTR_ce335f0:
    #data loc_8c05933c
PTR_ce335f4:
    #data loc_8c059f64
PTR_ce335f8:
    #data loc_8c26a518
PTR_ce335fc:
    #data loc_8c1025ca
PTR_ce33600:
    #data loc_8c04223a
PTR_ce33604:
    #data loc_8c0423fc
DAT_ce33608:
    #data 0xc1092492
DAT_ce3360c:
    #data 0xc0092492
DAT_ce33610:
    #data 0x80000000
DAT_ce33614:
    #data 0x42676db6
PTR_ce33618:
    #data loc_8c0fdab6

;=============================================

LAB_ce3361c:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce3373c,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33730,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce336fa
    mov 0x5C,r1
    mov.l @(PTR_ce33740,pc),r3
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
    bt LAB_ce3368a
    mov.l @(PTR_ce33744,pc),r3
    mov 0x00,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33748,pc),r2
    mov r14,r4
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce3368a:
    mov.w @(DAT_ce33732,pc),r0
    mov.l @(r0,r14),r13
    add 0x31,r0
    mov.b @(r0,r13),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce336fa
    mov 0x34,r0
    fmov.s @(r0,r13),fr4
    fmov.s @(r0,r14),fr3
    fsub fr3,fr4
    fldi0 fr3
    fcmp/gt fr4,fr3
    bf LAB_ce336a8
    fneg fr4

LAB_ce336a8:
    mova @(DAT_ce3374c,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bt LAB_ce336fa
    mov 0x38,r0
    fldi0 fr1
    fmov.s @(r0,r13),fr2
    fmov.s @(r0,r14),fr3
    mova @(DAT_ce33750,pc),r0
    fsub fr3,fr2
    fmov.s @r0,fr3
    fadd fr3,fr2
    fcmp/gt fr2,fr1
    bf LAB_ce336fa
    mov.l @(PTR_ce33754,pc),r2
    mov 0x0F,r5
    mov 0x04,r6
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33736,pc),r0
    mov r13,r5
    mov.w @(DAT_ce33734,pc),r3
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33758,pc),r3
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce3375c,pc),r2
    mov r14,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce33744,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33738,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r13)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)

LAB_ce336fa:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33702:
    mov.b @(0x7,r4),r0
    mov 0x02,r3
    fldi0 fr4
    mov 0x06,r6
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mov.w @(DAT_ce3373a,pc),r0
    mov.b r3,@(r0,r4)
    mov 0x5C,r0
    fmov fr4,@(r0,r4)
    mov 0x68,r0
    fmov fr4,@(r0,r4)
    mova @(DAT_ce33760,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov.l @(PTR_ce33754,pc),r3
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33764,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33730:
    #data 0x0141
DAT_ce33732:
    #data 0x01c8
DAT_ce33734:
    #data 0x00c4
DAT_ce33736:
    #data 0x01f7
DAT_ce33738:
    #data 0x0236
DAT_ce3373a:
    #data 0x01f9
    #align4

PTR_ce3373c:
    #data loc_8c034dee
PTR_ce33740:
    #data loc_8c052ce2
PTR_ce33744:
    #data loc_8c02fec4
PTR_ce33748:
    #data loc_8c051648
DAT_ce3374c:
    #data 0x42d55555
DAT_ce33750:
    #data 0x42892492
PTR_ce33754:
    #data loc_8c034e8c
PTR_ce33758:
    #data loc_8c05248e
PTR_ce3375c:
    #data loc_8c059f64
DAT_ce33760:
    #data 0x424db6db
DAT_ce33764:
    #data 0xbf4db6db

;=============================================

FUN_ce33768:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce3389c,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33790
    mov.b @(0x7,r14),r0
    mov r14,r4
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33702
    mov.l @r15+,r14

LAB_ce33790:
    mov.w @(DAT_ce33892,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce337b8
    mov 0x00,r6
    mov.b r6,@(r0,r14)
    mova @(DAT_ce338a0,pc),r0
    fmov.s @r0,fr4
    mov.w @(DAT_ce33894,pc),r0
    mov.w @(r0,r14),r3
    tst r3,r3
    bt LAB_ce337b0
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    bra LAB_ce337b6
    fadd fr4,fr3

LAB_ce337b0:
    mov 0x34,r0
    fmov.s @(r0,r14),fr3
    fsub fr4,fr3

LAB_ce337b6:
    fmov fr3,@(r0,r14)

LAB_ce337b8:
    mov.w @(DAT_ce33896,pc),r0
    mov.b @(r0,r14),r0
    and 0x7F,r0
    mov r0,r5
    exts.b r5,r3
    tst r3,r3
    bt LAB_ce33802
    mova @(DAT_ce338a4,pc),r0
    mov.l @(PTR_ce338ac,pc),r3
    fmov.s @r0,fr5
    mova @(DAT_ce338a8,pc),r0
    fmov.s @r0,fr4
    exts.b r5,r4
    mov.w @(DAT_ce33894,pc),r0
    shll r4
    mov.w @(r0,r14),r2
    tst r2,r2
    bt/s LAB_ce337f0
    add r3,r4
    mov.w @r4,r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fdiv fr5,fr3
    bra LAB_ce33800
    fadd fr3,fr2

LAB_ce337f0:
    mov.w @r4,r2
    mov 0x34,r0
    fmov.s @(r0,r14),fr2
    lds r2,FPUL
    float FPUL,fr3
    fmul fr4,fr3
    fdiv fr5,fr3
    fsub fr3,fr2

LAB_ce33800:
    fmov fr2,@(r0,r14)

LAB_ce33802:
    mov.w @(DAT_ce33896,pc),r0
    mov.b @(r0,r14),r3
    cmp/pz r3
    bt LAB_ce33836
    mov.b r6,@(r0,r14)
    mov 0x23,r3
    mov.w @(DAT_ce33898,pc),r0
    mov 0x02,r2
    mov.w @(DAT_ce3389a,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    add r14,r1
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    add 0xFD,r0
    mov 0x11,r3
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce33836:
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3383e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov r4,r14
    fldi0 fr4
    mov.l r5,@r15
    mov r15,r5
    mov.b @(0x7,r14),r0
    add 0x04,r5
    mov.l @(PTR_ce338b8,pc),r3
    mov 0x00,r6
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
    mova @(DAT_ce338b0,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    mova @(DAT_ce338b4,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce338bc,pc),r2
    mov 0x23,r5
    jsr @r2
    mov r14,r4
    mov.l @r15,r5
    bsr FUN_ce33768
    mov r14,r4
    add 0x10,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33892:
    #data 0x0140
DAT_ce33894:
    #data 0x0130
DAT_ce33896:
    #data 0x0141
DAT_ce33898:
    #data 0x01c8
DAT_ce3389a:
    #data 0x01d2
    #align4

PTR_ce3389c:
    #data loc_8c034dee
DAT_ce338a0:
    #data 0x42555555
DAT_ce338a4:
    #data 0x43800000
DAT_ce338a8:
    #data 0x3fd55555
PTR_ce338ac:
    #data DAT_ce34d18
DAT_ce338b0:
    #data 0xc2995555
DAT_ce338b4:
    #data 0x43474924
PTR_ce338b8:
    #data loc_8c0fdab6
PTR_ce338bc:
    #data loc_8c04223a

;=============================================

LAB_ce338c0:
    mov.l r14,@-r15
    mov.l r13,@-r15
    mov.w @(DAT_ce33a16,pc),r0
    sts.l PR,@-r15
    mov.l @(0x4,r5),r13
    mov.w @(r0,r13),r3
    tst r3,r3
    bf/s LAB_ce338e6
    mov r4,r14
    mova @(DAT_ce33a28,pc),r0
    mov.l @(PTR_ce33a2c,pc),r3
    fmov.s @r0,fr3
    mov 0x60,r0
    mov r14,r4
    fmov fr3,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce338e6:
    mov.b @(0x7,r14),r0
    mov 0x0F,r5
    mov.l @(PTR_ce33a30,pc),r3
    mov 0x03,r6
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a1a,pc),r0
    mov r13,r5
    mov.w @(DAT_ce33a18,pc),r2
    mov.l @(PTR_ce33a34,pc),r3
    mov.b r2,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33a38,pc),r2
    mov r14,r5
    jsr @r2
    mov r13,r4
    mov.l @(PTR_ce33a3c,pc),r3
    mov 0x05,r6
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33a1c,pc),r0
    mov 0x00,r2
    mov.b r2,@(r0,r13)
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33924:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33a40,pc),r3
    jsr @r3
    mov r4,r14
    mov.w @(DAT_ce33a1e,pc),r0
    mov.b @(r0,r14),r2
    cmp/pz r2
    bf LAB_ce3396e
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

LAB_ce3396e:
    mov.w @(DAT_ce33a20,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov.s @(r0,r14),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce33992
    mov.w @(DAT_ce33a20,pc),r0
    mov.l @(PTR_ce33a44,pc),r3
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce33a48,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce33992:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33998:
    mov.b @(0x7,r4),r0
    mov 0x06,r6
    mov.l @(PTR_ce33a30,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r4)
    mova @(DAT_ce33a4c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    fmov fr3,@(r0,r4)
    mova @(DAT_ce33a28,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    fmov fr3,@(r0,r4)
    jmp @r3
    mov 0x16,r5

LAB_ce339b6:
    mov r4,r3
    mov.l @(PTR_ce33a50,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce339c8:
    mov.w @(DAT_ce33a22,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33a24,pc),r0
    mov r14,r4
    mov.l @(PTR_ce33a54,pc),r1
    mov.b r2,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce339e8:
    mov.w @(DAT_ce33a26,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x02,r4
    mov.l @(PTR_ce33a58,pc),r1
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33a22,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce33a24,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33a16:
    #data 0x0420
DAT_ce33a18:
    #data 0x00c3
DAT_ce33a1a:
    #data 0x01f7
DAT_ce33a1c:
    #data 0x0236
DAT_ce33a1e:
    #data 0x0141
DAT_ce33a20:
    #data 0x041c
DAT_ce33a22:
    #data 0x03f8
DAT_ce33a24:
    #data 0x0328
DAT_ce33a26:
    #data 0x01ea
    #align4

DAT_ce33a28:
    #data 0xbf4db6db
PTR_ce33a2c:
    #data loc_8c051648
PTR_ce33a30:
    #data loc_8c034e8c
PTR_ce33a34:
    #data loc_8c05248e
PTR_ce33a38:
    #data loc_8c059f64
PTR_ce33a3c:
    #data loc_8c02fec4
PTR_ce33a40:
    #data loc_8c034dee
PTR_ce33a44:
    #data loc_8c0511b4
PTR_ce33a48:
    #data loc_8c052dac
DAT_ce33a4c:
    #data 0x424db6db
PTR_ce33a50:
    #data PTR_ce34d24
PTR_ce33a54:
    #data PTR_ce34d2c
PTR_ce33a58:
    #data PTR_ce34d38

;=============================================

LAB_ce33a5c:
    mov.w @(DAT_ce33ba0,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x03,r0
    mov 0x02,r4
    mov.l @(PTR_ce33bb0,pc),r1
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov 0x05,r3
    mov.w @(DAT_ce33ba2,pc),r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.w @(DAT_ce33ba4,pc),r0
    mov.b r3,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33a8a:
    mov.l r14,@-r15
    mov r4,r14
    mov.w @(DAT_ce33ba2,pc),r0
    mov 0x02,r4
    mov 0x05,r3
    mov.l @(PTR_ce33bb4,pc),r1
    mov.b r4,@(r0,r14)
    mov 0x01,r2
    mov.w @(DAT_ce33ba4,pc),r0
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ba0,pc),r0
    mov.b r2,@(r0,r14)
    add 0x03,r0
    mov.b r4,@(r0,r14)
    add 0x08,r0
    mov.b r4,@(r0,r14)
    mov r14,r4
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ab8:
    mov.w @(DAT_ce33ba2,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce33ba4,pc),r0
    mov r14,r4
    mov.l @(PTR_ce33bb8,pc),r1
    mov.b r2,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33ad8:
    mov r4,r3
    mov.l @(PTR_ce33bbc,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;=============================================

FUN_ce33aea:
    mov.w @(DAT_ce33ba6,pc),r0
    mov.l @(PTR_ce33bc0,pc),r3
    mov.b @(r0,r4),r5
    add 0x61,r0
    add 0x51,r5
    mov.b r5,@(r0,r4)
    add 0x0B,r0
    mov 0x00,r5
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
    rts
    mov.w r1,@(r0,r2)

LAB_ce33b16:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xF0,r15
    mov.w @(DAT_ce33ba2,pc),r0
    mov 0x02,r3
    mov r4,r14
    mov 0x05,r2
    mov.l r5,@r15
    mov.b r3,@(r0,r14)
    mov.w @(DAT_ce33ba4,pc),r0
    mov.b r2,@(r0,r14)
    mov.w @(DAT_ce33ba8,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33b3c
    bra LAB_ce33b3e
    mov 0x02,r3

LAB_ce33b3c:
    mov 0x00,r3

LAB_ce33b3e:
    mov.w @(DAT_ce33baa,pc),r0
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce33bc4,pc),r3
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33b96
    mov.b @(0x6,r14),r0
    mov 0x00,r13
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov r13,r0
    nop
    mov.l @(PTR_ce33bc8,pc),r3
    mov r0,r5
    mov.b r0,@(0x7,r14)
    mov 0x01,r6
    jsr @r3
    mov.l @r15,r4
    exts.b r0,r0
    tst r0,r0
    bf LAB_ce33b72
    mov.b @(0x6,r14),r0
    add 0x01,r0
    mov.b r0,@(0x6,r14)

LAB_ce33b72:
    mov.w @(DAT_ce33bac,pc),r0
    mov r15,r5
    mov.l @(PTR_ce33bd4,pc),r3
    add 0x04,r5
    mov.b r13,@(r0,r14)
    add 0x01,r0
    mov.b r13,@(r0,r14)
    mova @(DAT_ce33bcc,pc),r0
    fmov.s @r0,fr3
    mov 0x04,r0
    mov 0x01,r6
    fmov fr3,@(r0,r15)
    mova @(DAT_ce33bd0,pc),r0
    fmov.s @r0,fr3
    mov 0x08,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce33b96:
    add 0x10,r15
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33ba0:
    #data 0x01ea
DAT_ce33ba2:
    #data 0x03f8
DAT_ce33ba4:
    #data 0x0328
DAT_ce33ba6:
    #data 0x0140
DAT_ce33ba8:
    #data 0x0255
DAT_ce33baa:
    #data 0x03f1
DAT_ce33bac:
    #data 0x03f0
    #align4

PTR_ce33bb0:
    #data PTR_ce34d44
PTR_ce33bb4:
    #data PTR_ce34d4c
PTR_ce33bb8:
    #data PTR_ce34d74
PTR_ce33bbc:
    #data PTR_ce34d7c
PTR_ce33bc0:
    #data loc_8c2896b0
PTR_ce33bc4:
    #data loc_8c034dee
PTR_ce33bc8:
    #data loc_8c06e9dc
DAT_ce33bcc:
    #data 0xc1d55555
DAT_ce33bd0:
    #data 0x431a4924
PTR_ce33bd4:
    #data loc_8c050834

;=============================================

LAB_ce33bd8:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.w @(DAT_ce33d30,pc),r0
    mov r4,r14
    mov.l r5,@r15
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x06,r0
    bf LAB_ce33bf8
    mov.w @(DAT_ce33d34,pc),r0
    mov 0x10,r3
    mov.w @(DAT_ce33d32,pc),r2
    mov.b r2,@(r0,r14)
    add 0x01,r0
    mov.b r3,@(r0,r14)

LAB_ce33bf8:
    mov.b @(0x7,r14),r0
    mov.l @(PTR_ce33d3c,pc),r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce33d40,pc),r2
    jsr @r2
    mov r14,r4
    mov.w @(DAT_ce33d36,pc),r0
    mov 0x16,r3
    mov 0x0C,r2
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce33d44,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d38,pc),r0
    mov 0x52,r2
    mov 0x00,r4
    mov.l @(PTR_ce33d48,pc),r3
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
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    bra LAB_ce33b16
    mov.l @r15+,r14

LAB_ce33c54:
    mov.l r14,@-r15
    mov.l r13,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov r4,r14
    mov 0x00,r13
    mov.l r5,@r15
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov 0x12,r0
    mov.l @r15,r3
    mov.b r13,@(r0,r3)
    mov.l @(PTR_ce33d4c,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d36,pc),r0
    mov 0x16,r2
    mov 0x09,r3
    mov.b r2,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce33d44,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r2
    mov 0x14,r0
    mov 0x08,r3
    mov r13,r6
    mov.b r3,@(r0,r2)
    mov 0x52,r2
    mov.w @(DAT_ce33d38,pc),r0
    mov 0x09,r5
    mov.l @(PTR_ce33d48,pc),r3
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
    mov.l @(PTR_ce33d50,pc),r2
    jsr @r2
    mov r14,r4
    mov r14,r4
    mov 0x09,r5
    mov 0x02,r6
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33d50,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33cd4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33d54,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce33d3a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33d5c
    mov 0x5C,r1
    mov r14,r4
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
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce33d58,pc),r3
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33d30:
    #data 0x0255
DAT_ce33d32:
    #data 0x00ff
DAT_ce33d34:
    #data 0x03f0
DAT_ce33d36:
    #data 0x0159
DAT_ce33d38:
    #data 0x01a1
DAT_ce33d3a:
    #data 0x0141
    #align4

PTR_ce33d3c:
    #data FUN_ce31bc0
PTR_ce33d40:
    #data loc_8c05115a
PTR_ce33d44:
    #data loc_8c034e8c
PTR_ce33d48:
    #data loc_8c2896b0
PTR_ce33d4c:
    #data loc_8c052b4c
PTR_ce33d50:
    #data loc_8c0c220a
PTR_ce33d54:
    #data loc_8c034dee
PTR_ce33d58:
    #data loc_8c052c84

;=============================================

LAB_ce33d5c:
    mov 0x20,r0
    mov.l @(PTR_ce33ebc,pc),r3
    mov.w r0,@(0x1c,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.l @r15,r5
    jsr @r3
    mov r14,r4
    mov.l @r15,r5
    mov r14,r4
    add 0x04,r15
    lds.l @r15+,PR
    bra FUN_ce33aea
    mov.l @r15+,r14

LAB_ce33d7a:
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce33ec0,pc),r3
    jsr @r3
    mov r5,r13
    mov.w @(0x1c,r14),r0
    add 0xFF,r0
    mov.w r0,@(0x1c,r14)
    exts.w r0,r0
    cmp/pz r0
    bf LAB_ce33dba
    mov.w @(DAT_ce33eb4,pc),r0
    mov.b @(r0,r14),r0
    tst 0x80,r0
    bt LAB_ce33db0
    mov 0x12,r0
    mov 0xFF,r2
    mov.b r2,@(r0,r13)
    mov 0x14,r0
    mov.b @(r0,r13),r3
    add 0xFF,r3
    mov.b r3,@(r0,r13)
    exts.b r3,r3
    cmp/pl r3
    bf LAB_ce33dba

LAB_ce33db0:
    mov r13,r5
    bsr FUN_ce33aea
    mov r14,r4
    bra LAB_ce33de6
    nop

LAB_ce33dba:
    mov 0x12,r0
    mov.b @(r0,r13),r3
    tst r3,r3
    bf/s LAB_ce33e20
    mov 0x16,r4
    mov.b @(0x7,r14),r0
    mov 0x0B,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33eb6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce33ec4,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4

LAB_ce33de6:
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
    bra LAB_ce33e56
    fmov fr2,@(r0,r14)

LAB_ce33e20:
    mov.b @(0x7,r14),r0
    mov 0x0A,r3
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce33eb6,pc),r0
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r3,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce33ec4,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov r13,r5
    bsr FUN_ce33aea
    mov r14,r4
    mov.w @(DAT_ce33eb8,pc),r0
    mov 0x00,r3
    mov r13,r5
    mov r14,r4
    mov.b r3,@(r0,r14)
    lds.l @r15+,PR
    mov.l @(PTR_ce33ec8,pc),r3
    mov.l @r15+,r13
    jmp @r3
    mov.l @r15+,r14

LAB_ce33e56:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce33e5e:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xFC,r15
    mov.l @(PTR_ce33ec0,pc),r3
    mov r4,r14
    mov.l r5,@r15
    jsr @r3
    mov r14,r4
    exts.b r0,r0
    cmp/pz r0
    bf LAB_ce33ecc
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
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce33eb4:
    #data 0x019e
DAT_ce33eb6:
    #data 0x0159
DAT_ce33eb8:
    #data 0x0140
    #align4

PTR_ce33ebc:
    #data FUN_ce3251a
PTR_ce33ec0:
    #data loc_8c034dee
PTR_ce33ec4:
    #data loc_8c034e8c
PTR_ce33ec8:
    #data LAB_ce3255c

;=============================================

LAB_ce33ecc:
    mov.w @(DAT_ce3402a,pc),r0
    mov 0x00,r4
    mov 0x16,r3
    mov.b r4,@(r0,r14)
    add 0xFF,r0
    mov.b r4,@(r0,r14)
    mov 0x0B,r2
    mov.w @(DAT_ce3402c,pc),r0
    mov.b r4,@(r0,r14)
    add 0x01,r0
    mov.b r4,@(r0,r14)
    mov.b @(0x7,r14),r0
    add 0x01,r0
    mov.b r0,@(0x7,r14)
    mov.w @(DAT_ce3402e,pc),r0
    mov.b r3,@(r0,r14)
    add 0xFF,r0
    mov.b r2,@(r0,r14)
    mov.b @(r0,r14),r6
    add 0x01,r0
    mov.l @(PTR_ce34038,pc),r3
    mov.b @(r0,r14),r5
    jsr @r3
    mov r14,r4
    mov 0x5C,r1
    mov r14,r4
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
    mov.l @r15,r5
    add 0x04,r15
    lds.l @r15+,PR
    mov.l @(PTR_ce3403c,pc),r3
    jmp @r3
    mov.l @r15+,r14
    add 0x04,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33f4a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34040,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce33f64
    lds.l @r15+,PR
    mov.l @(PTR_ce34044,pc),r3
    mov r14,r4
    jmp @r3
    mov.l @r15+,r14

LAB_ce33f64:
    mov.w @(DAT_ce34030,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bf LAB_ce33fa4
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

LAB_ce33fa4:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce33faa:
    mov 0x15,r0
    mov 0xFF,r3
    mov.b r3,@(r0,r5)
    bra LAB_ce33d7a
    nop

LAB_ce33fb4:
    mov r4,r3
    mov.l @(PTR_ce34048,pc),r1
    mov.l r4,@-r15
    mov.b @(0x7,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce33fc6:
    mov.w @(DAT_ce34032,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce34034,pc),r0
    mov r14,r4
    mov.l @(PTR_ce3404c,pc),r1
    mov.b r2,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce33fe6:
    mov.w @(DAT_ce34032,pc),r0
    mov 0x02,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    mov 0x05,r2
    mov.w @(DAT_ce34034,pc),r0
    mov r14,r4
    mov.l @(PTR_ce34050,pc),r1
    mov.b r2,@(r0,r14)
    mov.b @(0x7,r14),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce34006:
    mov r4,r3
    mov.l @(PTR_ce34054,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce34018:
    mov r4,r3
    mov.l @(PTR_ce34058,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3402a:
    #data 0x03f9
DAT_ce3402c:
    #data 0x0327
DAT_ce3402e:
    #data 0x0159
DAT_ce34030:
    #data 0x0141
DAT_ce34032:
    #data 0x03f8
DAT_ce34034:
    #data 0x0328
    #align4

PTR_ce34038:
    #data loc_8c034e8c
PTR_ce3403c:
    #data LAB_ce3255c
PTR_ce34040:
    #data loc_8c034dee
PTR_ce34044:
    #data loc_8c051648
PTR_ce34048:
    #data PTR_ce34d94
PTR_ce3404c:
    #data PTR_ce34d9c
PTR_ce34050:
    #data PTR_ce34db0
PTR_ce34054:
    #data PTR_ce34dc4
PTR_ce34058:
    #data PTR_ce34dd0

;=============================================

LAB_ce3405c:
    mov.l r14,@-r15
    mov r4,r14
    fldi0 fr4
    mov.l r13,@-r15
    mov 0x00,r13
    sts.l PR,@-r15
    mov.b @(0x6,r14),r0
    mov r13,r5
    mov.l @(PTR_ce3414c,pc),r3
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
    mov.w @(DAT_ce34142,pc),r0
    mov.b r13,@(r0,r14)
    mov.w @(DAT_ce34144,pc),r0
    fmov.s @(r0,r14),fr3
    mov 0x38,r0
    fmov fr3,@(r0,r14)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34150,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34154,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce34146,pc),r0
    mov 0x56,r2
    mov.l @(PTR_ce34158,pc),r3
    mov 0x0F,r6
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
    mov.l @(PTR_ce3415c,pc),r2
    mov.l @r15+,r13
    jmp @r2
    mov.l @r15+,r14

LAB_ce340d2:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce34160,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce340f2
    mov.l @(PTR_ce34164,pc),r3
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce340f2:
    mov.w @(DAT_ce34148,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34114
    mov 0x00,r3
    mov r15,r5
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34168,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce3416c,pc),r0
    mov.l @(PTR_ce34170,pc),r3
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4

LAB_ce34114:
    mov.w @(DAT_ce3414a,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34128
    mov 0x00,r3
    mov.b r3,@(r0,r14)
    mov 0x16,r5
    mov.l @(PTR_ce34174,pc),r3
    jsr @r3
    mov r14,r4

LAB_ce34128:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34130:
    mov r4,r3
    mov.l @(PTR_ce34178,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34142:
    #data 0x01f9
DAT_ce34144:
    #data 0x041c
DAT_ce34146:
    #data 0x01a1
DAT_ce34148:
    #data 0x0141
DAT_ce3414a:
    #data 0x014b
    #align4

PTR_ce3414c:
    #data loc_8c035162
PTR_ce34150:
    #data loc_8c05218a
PTR_ce34154:
    #data loc_8c05115a
PTR_ce34158:
    #data loc_8c2896b0
PTR_ce3415c:
    #data loc_8c034e8c
PTR_ce34160:
    #data loc_8c034dee
PTR_ce34164:
    #data loc_8c051648
DAT_ce34168:
    #data 0x41d55555
DAT_ce3416c:
    #data 0x42cdb6db
PTR_ce34170:
    #data loc_8c050ea4
PTR_ce34174:
    #data loc_8c04223a
PTR_ce34178:
    #data PTR_ce34dd8

;=============================================

LAB_ce3417c:
    mov.l r14,@-r15
    mov r4,r14
    sts.l PR,@-r15
    mov.l @(PTR_ce34294,pc),r3
    jsr @r3
    mov 0x00,r5
    mov.b @(0x6,r14),r0
    mov 0x02,r3
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    mov.w @(DAT_ce3428c,pc),r0
    mov.b r3,@(r0,r14)
    mova @(DAT_ce34298,pc),r0
    fmov.s @r0,fr3
    mov 0x5C,r0
    fmov fr3,@(r0,r14)
    mov.w @(DAT_ce3428e,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bf LAB_ce341ac
    mov 0x5C,r0
    fmov.s @(r0,r14),fr3
    fneg fr3
    fmov fr3,@(r0,r14)

LAB_ce341ac:
    mov 0x68,r0
    fldi0 fr3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce3429c,pc),r0
    fmov.s @r0,fr3
    mov 0x60,r0
    mov 0x55,r3
    fmov fr3,@(r0,r14)
    mova @(DAT_ce342a0,pc),r0
    fmov.s @r0,fr3
    mov 0x6C,r0
    mov 0x00,r4
    fmov fr3,@(r0,r14)
    mov 0x14,r5
    mov.w @(DAT_ce34290,pc),r0
    mov 0x06,r6
    mov.b r3,@(r0,r14)
    add 0x0B,r0
    mov.w r4,@(r0,r14)
    add 0xF2,r0
    mov.b r4,@(r0,r14)
    add 0x26,r0
    mov.l @(PTR_ce342a4,pc),r3
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
    mov.l @(PTR_ce342a8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce341f6:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce342ac,pc),r3
    jsr @r3
    mov r4,r14
    mov 0x5C,r1
    mov.l @(PTR_ce342b0,pc),r3
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
    bt LAB_ce3425e
    mov.b @(0x6,r14),r0
    mov 0x14,r5
    mov.l @(PTR_ce342a8,pc),r3
    mov 0x02,r6
    add 0x01,r0
    mov.b r0,@(0x6,r14)
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce342b4,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce3425e:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34264:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce342ac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34286
    mov.l @(PTR_ce34294,pc),r3
    mov 0x00,r5
    jsr @r3
    mov r14,r4
    lds.l @r15+,PR
    mov.l @(PTR_ce342b8,pc),r2
    mov r14,r4
    jmp @r2
    mov.l @r15+,r14

LAB_ce34286:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce3428c:
    #data 0x01f9
DAT_ce3428e:
    #data 0x01d2
DAT_ce34290:
    #data 0x01a1
    #align4

PTR_ce34294:
    #data loc_8c035162
DAT_ce34298:
    #data 0x41f00000
DAT_ce3429c:
    #data 0x3e892492
DAT_ce342a0:
    #data 0xbf4db6db
PTR_ce342a4:
    #data loc_8c2896b0
PTR_ce342a8:
    #data loc_8c034e8c
PTR_ce342ac:
    #data loc_8c034dee
PTR_ce342b0:
    #data loc_8c052ce2
PTR_ce342b4:
    #data loc_8c0511b4
PTR_ce342b8:
    #data loc_8c051854

;=============================================

LAB_ce342bc:
    mov.w @(DAT_ce343c8,pc),r0
    mov.l r14,@-r15
    mov r4,r14
    mov.l r13,@-r15
    mov.w @(DAT_ce343ca,pc),r2
    sts.l PR,@-r15
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt LAB_ce34338
    mov.w @(DAT_ce343cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x01,r0
    bt LAB_ce34338
    mov.w @(DAT_ce343ce,pc),r0
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34338
    mov.w @(DAT_ce343d0,pc),r0
    mov.l @(PTR_ce343dc,pc),r13
    mov.b @(r0,r14),r3
    tst r3,r3
    bt LAB_ce34308
    mov.w @(DAT_ce343cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bt LAB_ce34338
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34338
    mov r0,r4
    mov.w @(DAT_ce343d2,pc),r0
    mov 0x01,r2
    bra LAB_ce34334
    mov.b r2,@(r0,r14)

LAB_ce34308:
    mov.w @(DAT_ce343cc,pc),r0
    mov.b @(r0,r14),r0
    extu.b r0,r0
    cmp/eq 0x02,r0
    bf LAB_ce34324
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34338
    mov r0,r4
    mov.w @(DAT_ce343d2,pc),r0
    mov 0x02,r3
    bra LAB_ce34334
    mov.b r3,@(r0,r14)

LAB_ce34324:
    jsr @r13
    mov r14,r4
    tst r0,r0
    bt/s LAB_ce34338
    mov r0,r4
    mov.w @(DAT_ce343d2,pc),r0
    mov 0x00,r3
    mov.b r3,@(r0,r14)

LAB_ce34334:
    bra LAB_ce3433a
    mov r4,r0

LAB_ce34338:
    mov 0x00,r0

LAB_ce3433a:
    lds.l @r15+,PR
    mov.l @r15+,r13
    rts
    mov.l @r15+,r14

LAB_ce34342:
    mov.l r4,@-r15
    mov r4,r0
    nop
    mov.w @(DAT_ce343d2,pc),r1
    mov.l @(PTR_ce343e0,pc),r2
    mov.b @(r0,r1),r0
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r2),r3
    jmp @r3
    add 0x04,r15

LAB_ce3435a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce343c8,pc),r0
    mov r4,r14
    mov.w @(DAT_ce343d4,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce34388
    mov 0x05,r6
    mov.w @(DAT_ce343d6,pc),r0
    mov.w @(DAT_ce343d6,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce343d8,pc),r0
    mov.w @(DAT_ce343d8,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce34388:
    mov.l @(PTR_ce343e4,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce343da,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce343f0,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce343e8,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce343ec,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce343f4,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce343f8,pc),r3
    mov 0x0F,r5
    mov 0x00,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce343c8:
    #data 0x01fa
DAT_ce343ca:
    #data 0x0c00
DAT_ce343cc:
    #data 0x01f9
DAT_ce343ce:
    #data 0x01a3
DAT_ce343d0:
    #data 0x01fe
DAT_ce343d2:
    #data 0x01f7
DAT_ce343d4:
    #data 0x0800
DAT_ce343d6:
    #data 0x01d2
DAT_ce343d8:
    #data 0x0130
DAT_ce343da:
    #data 0x01a0
    #align4

PTR_ce343dc:
    #data loc_8c045790
PTR_ce343e0:
    #data PTR_ce34de4
PTR_ce343e4:
    #data loc_8c02fec4
DAT_ce343e8:
    #data 0xc2555555
DAT_ce343ec:
    #data 0x43092492
PTR_ce343f0:
    #data loc_8c103660
PTR_ce343f4:
    #data loc_8c056f2a
PTR_ce343f8:
    #data loc_8c034e8c

;=============================================

LAB_ce343fc:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34524,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34526,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce3442a
    mov 0x05,r6
    mov.w @(DAT_ce34528,pc),r0
    mov.w @(DAT_ce34528,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce3452a,pc),r0
    mov.w @(DAT_ce3452a,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce3442a:
    mov.l @(PTR_ce34530,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3452c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3453c,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce34534,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34538,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34540,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34544,pc),r3
    mov 0x0F,r5
    mov 0x01,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce3446a:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.w @(DAT_ce34524,pc),r0
    mov r4,r14
    mov.w @(DAT_ce34526,pc),r2
    mov.w @(r0,r14),r3
    extu.w r3,r3
    tst r2,r3
    bt/s LAB_ce34498
    mov 0x05,r6
    mov.w @(DAT_ce34528,pc),r0
    mov.w @(DAT_ce34528,pc),r1
    mov.b @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.b r0,@r1
    mov.w @(DAT_ce3452a,pc),r0
    mov.w @(DAT_ce3452a,pc),r1
    mov.w @(r0,r14),r0
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1

LAB_ce34498:
    mov.l @(PTR_ce34530,pc),r3
    mov r6,r5
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3452c,pc),r0
    mov 0x0A,r2
    mov.l @(PTR_ce3453c,pc),r3
    mov r15,r5
    mov.b r2,@(r0,r14)
    mov 0x00,r0
    mov.b r0,@(0x6,r14)
    mova @(DAT_ce34548,pc),r0
    fmov.s @r0,fr3
    mova @(DAT_ce34538,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce34540,pc),r2
    jsr @r2
    mov r14,r4
    mov.l @(PTR_ce34544,pc),r3
    mov 0x0F,r5
    mov 0x02,r6
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce344d8:
    rts
    nop

LAB_ce344dc:
    rts
    nop

LAB_ce344e0:
    mov.w @(DAT_ce3452e,pc),r0
    mov 0x01,r3
    mov.l r14,@-r15
    mov r4,r14
    mov.b r3,@(r0,r14)
    add 0x0D,r0
    mov.b @(r0,r14),r0
    mov r14,r4
    mov.l @(PTR_ce3454c,pc),r1
    extu.b r0,r0
    and 0x3F,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    mov.l @r15+,r14

LAB_ce344fe:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce34550,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce34558
    mov.w @(DAT_ce3452a,pc),r0
    mov r14,r4
    mov.w @(DAT_ce3452a,pc),r1
    mov.w @(r0,r14),r0
    mov.l @(PTR_ce34554,pc),r3
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34524:
    #data 0x01fa
DAT_ce34526:
    #data 0x0800
DAT_ce34528:
    #data 0x01d2
DAT_ce3452a:
    #data 0x0130
DAT_ce3452c:
    #data 0x01a0
DAT_ce3452e:
    #data 0x01ea
    #align4

PTR_ce34530:
    #data loc_8c02fec4
DAT_ce34534:
    #data 0xc2d55555
DAT_ce34538:
    #data 0x43092492
PTR_ce3453c:
    #data loc_8c103660
PTR_ce34540:
    #data loc_8c056f2a
PTR_ce34544:
    #data loc_8c034e8c
DAT_ce34548:
    #data 0xc2a00000
PTR_ce3454c:
    #data PTR_ce34df8
PTR_ce34550:
    #data loc_8c034dee
PTR_ce34554:
    #data loc_8c051648

;=============================================

LAB_ce34558:
    mov.w @(DAT_ce34698,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce345a2
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce346a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3469a,pc),r0
    mov 0x20,r3
    mov 0x02,r2
    mov.w @(DAT_ce3469c,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    add r14,r1
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    add 0xFD,r0
    mov 0x0B,r3
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce346a4,pc),r3
    mov.b r2,@(r0,r4)
    mov r14,r4
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce345a2:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce345a8:
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
    bra LAB_ce344fe
    fmov fr4,@(r0,r4)

LAB_ce345c2:
    mov r4,r3
    mov.l @(PTR_ce346a8,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce345d4:
    mov.l r14,@-r15
    sts.l PR,@-r15
    mov.l @(PTR_ce346ac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce345fa
    mov.w @(DAT_ce3469e,pc),r0
    mov r14,r4
    mov.w @(DAT_ce3469e,pc),r1
    mov.w @(r0,r14),r0
    mov.l @(PTR_ce346b0,pc),r3
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1
    lds.l @r15+,PR
    jmp @r3
    mov.l @r15+,r14

LAB_ce345fa:
    mov.w @(DAT_ce34698,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce3463a
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce346a0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce3469a,pc),r0
    mov 0x21,r3
    mov 0x02,r2
    mov.w @(DAT_ce3469c,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    add r14,r1
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    add 0xFD,r0
    mov 0x01,r3
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1

LAB_ce3463a:
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34640:
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
    bra LAB_ce345d4
    fmov fr4,@(r0,r4)

LAB_ce3465a:
    mov r4,r3
    mov.l @(PTR_ce346b4,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3466c:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xF4,r15
    mov.l @(PTR_ce346ac,pc),r3
    jsr @r3
    mov r4,r14
    exts.b r0,r0
    cmp/pz r0
    bt LAB_ce346bc
    mov.w @(DAT_ce3469e,pc),r0
    mov.w @(DAT_ce3469e,pc),r1
    mov.w @(r0,r14),r0
    mov.l @(PTR_ce346b8,pc),r3
    add r14,r1
    xor 0x01,r0
    mov.w r0,@r1
    jsr @r3
    mov r14,r4
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce34698:
    #data 0x0141
DAT_ce3469a:
    #data 0x01c8
DAT_ce3469c:
    #data 0x01d2
DAT_ce3469e:
    #data 0x0130
    #align4

PTR_ce346a0:
    #data loc_8c02fec4
PTR_ce346a4:
    #data loc_8c0423fc
PTR_ce346a8:
    #data PTR_ce34e0c
PTR_ce346ac:
    #data loc_8c034dee
PTR_ce346b0:
    #data loc_8c051648
PTR_ce346b4:
    #data PTR_ce34e14
PTR_ce346b8:
    #data loc_8c05176e

;=============================================

LAB_ce346bc:
    mov.w @(DAT_ce347c6,pc),r0
    mov.b @(r0,r14),r2
    tst r2,r2
    bt LAB_ce34718
    mov 0x00,r3
    mov r3,r5
    mov r3,r6
    mov.b r3,@(r0,r14)
    mov.l @(PTR_ce347d0,pc),r3
    jsr @r3
    mov r14,r4
    mov.w @(DAT_ce347c8,pc),r0
    mov 0x22,r3
    mov 0x02,r2
    mov.w @(DAT_ce347ca,pc),r1
    mov.l @(r0,r14),r4
    add 0xEC,r0
    add r14,r1
    fldi0 fr3
    mov.l r14,@(r0,r4)
    add 0xED,r0
    mov.b r3,@(r0,r4)
    add 0x58,r0
    mov.b r2,@(r0,r4)
    add 0xFD,r0
    mov 0x01,r3
    mov r15,r5
    mov.b r3,@(r0,r4)
    add 0xDC,r0
    mov.b @(r0,r14),r2
    mov.l @(PTR_ce347d8,pc),r3
    mov.b r2,@(r0,r4)
    mov.b @(r0,r14),r0
    xor 0x01,r0
    mov.b r0,@r1
    mova @(DAT_ce347d4,pc),r0
    fmov.s fr3,@r15
    fmov.s @r0,fr3
    mov 0x04,r0
    fmov fr3,@(r0,r15)
    jsr @r3
    mov r14,r4
    mov.l @(PTR_ce347dc,pc),r2
    mov 0x01,r5
    jsr @r2
    mov r14,r4

LAB_ce34718:
    add 0x0C,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

LAB_ce34720:
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
    bra LAB_ce3466c
    fmov fr4,@(r0,r4)

LAB_ce3473a:
    mov r4,r3
    mov.l @(PTR_ce347e0,pc),r1
    mov.l r4,@-r15
    mov.b @(0x6,r3),r0
    extu.b r0,r0
    shll2 r0
    mov.l @(r0,r1),r3
    jmp @r3
    add 0x04,r15

LAB_ce3474c:
    mov.l @(PTR_ce347e4,pc),r3
    jmp @r3
    nop

LAB_ce34752:
    mov.l @(PTR_ce347e4,pc),r3
    jmp @r3
    nop

LAB_ce34758:
    mov.w @(DAT_ce347c8,pc),r0
    mov r4,r5
    mov.l r4,@-r15
    mov.l @(PTR_ce347e8,pc),r3
    mov.l @(r0,r4),r4
    jmp @r3
    add 0x04,r15

LAB_ce34766:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce347cc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce3478c
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce34784
    cmp/eq 0x02,r0
    bt LAB_ce3478c
    bra LAB_ce34790
    nop

LAB_ce34784:
    mov.w @(DAT_ce347ce,pc),r0
    mov 0x05,r2
    bra LAB_ce34790
    mov.b r2,@(r0,r4)

LAB_ce3478c:
    mov.w @(DAT_ce347ce,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce34790:
    mov.l @(PTR_ce347ec,pc),r2
    jmp @r2
    mov 0x1D,r5

LAB_ce34796:
    mov 0x00,r0
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce347cc,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce347bc
    mov 0x08,r5
    cmp/eq 0x01,r0
    bt LAB_ce347b4
    cmp/eq 0x02,r0
    bt LAB_ce347bc
    bra LAB_ce347c0
    nop

LAB_ce347b4:
    mov.w @(DAT_ce347ce,pc),r0
    mov 0x05,r2
    bra LAB_ce347c0
    mov.b r2,@(r0,r4)

LAB_ce347bc:
    mov.w @(DAT_ce347ce,pc),r0
    mov.b r5,@(r0,r4)

LAB_ce347c0:
    mov.l @(PTR_ce347ec,pc),r2
    jmp @r2
    mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce347c6:
    #data 0x0141
DAT_ce347c8:
    #data 0x01c8
DAT_ce347ca:
    #data 0x01d2
DAT_ce347cc:
    #data 0x04c9
DAT_ce347ce:
    #data 0x01e9
    #align4

PTR_ce347d0:
    #data loc_8c02fec4
DAT_ce347d4:
    #data 0x43474924
PTR_ce347d8:
    #data loc_8c0fdb4e
PTR_ce347dc:
    #data loc_8c04223a
PTR_ce347e0:
    #data PTR_ce34e1c
PTR_ce347e4:
    #data loc_8c051648
PTR_ce347e8:
    #data loc_8c04cc1c
PTR_ce347ec:
    #data loc_8c0530d8

;=============================================

LAB_ce347f0:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce348c4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34812
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3481c
    cmp/eq 0x02,r0
    bt LAB_ce34822
    bra LAB_ce3482c
    nop

LAB_ce34812:
    mov.w @(DAT_ce348c6,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3482c
    mov.b r5,@(r0,r4)

LAB_ce3481c:
    mov.w @(DAT_ce348c6,pc),r0
    bra LAB_ce34828
    mov.b r6,@(r0,r4)

LAB_ce34822:
    mov.w @(DAT_ce348c6,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r4)

LAB_ce34828:
    mov.w @(DAT_ce348c8,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3482c:
    mov.l @(PTR_ce348cc,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34832:
    mov 0x00,r5
    mov r5,r0
    nop
    mov.b r0,@(0x5,r4)
    mov.b r0,@(0x7,r4)
    mov.b r0,@(0x6,r4)
    mov.w @(DAT_ce348c4,pc),r0
    mov.b @(r0,r4),r0
    cmp/eq 0x00,r0
    bt/s LAB_ce34854
    mov 0x01,r6
    cmp/eq 0x01,r0
    bt LAB_ce3485e
    cmp/eq 0x02,r0
    bt LAB_ce34864
    bra LAB_ce3486e
    nop

LAB_ce34854:
    mov.w @(DAT_ce348c6,pc),r0
    mov.b r5,@(r0,r4)
    add 0xBA,r0
    bra LAB_ce3486e
    mov.b r5,@(r0,r4)

LAB_ce3485e:
    mov.w @(DAT_ce348c6,pc),r0
    bra LAB_ce3486a
    mov.b r6,@(r0,r4)

LAB_ce34864:
    mov.w @(DAT_ce348c6,pc),r0
    mov 0x03,r3
    mov.b r3,@(r0,r4)

LAB_ce3486a:
    mov.w @(DAT_ce348c8,pc),r0
    mov.b r6,@(r0,r4)

LAB_ce3486e:
    mov.l @(PTR_ce348cc,pc),r2
    jmp @r2
    mov 0x15,r5

LAB_ce34874:
    sts.l PR,@-r15
    mov.b @(0x1,r4),r0
    mov.w @(DAT_ce348ca,pc),r5
    extu.b r0,r0
    cmp/eq 0x0B,r0
    bf/s LAB_ce34896
    add r4,r5
    mov.b @(0xe,r5),r0
    tst r0,r0
    bf LAB_ce34896
    mov 0x10,r0
    mov.b @(r0,r5),r3
    tst r3,r3
    bt LAB_ce34896
    mov.l @r5,r2
    tst r2,r2
    bf LAB_ce3489c

LAB_ce34896:
    lds.l @r15+,PR
    rts
    mov 0x00,r0

LAB_ce3489c:
    mova @(DAT_ce348d0,pc),r0
    mov.l @r5,r5
    fmov.s @r0,fr3
    mov 0x38,r0
    fmov.s @(r0,r4),fr2
    fmov.s @(r0,r5),fr1
    fadd fr3,fr2
    fcmp/gt fr1,fr2
    bf/s LAB_ce348b4
    mov 0x14,r5
    bra LAB_ce348b6
    mov 0x00,r6

LAB_ce348b4:
    mov 0x01,r6

LAB_ce348b6:
    mov.l @(PTR_ce348d4,pc),r2
    jsr @r2
    nop
    mov 0x01,r0
    lds.l @r15+,PR
    rts
    nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce348c4:
    #data 0x04c9
DAT_ce348c6:
    #data 0x01e9
DAT_ce348c8:
    #data 0x01a3
DAT_ce348ca:
    #data 0x02a4
    #align4

PTR_ce348cc:
    #data loc_8c0530d8
DAT_ce348d0:
    #data 0x42cdb6db
PTR_ce348d4:
    #data loc_8c034e8c

;=============================================

LAB_ce348d8:
    mov.b @(0x1,r4),r0
    mov.w @(DAT_ce349ba,pc),r6
    extu.b r0,r0
    cmp/eq 0x0B,r0
    bf/s LAB_ce3490c
    add r4,r6
    mov.b @(0xe,r6),r0
    tst r0,r0
    bf LAB_ce3490c
    mov.w @(DAT_ce349bc,pc),r0
    mov.b @(r0,r5),r0
    tst 0x06,r0
    bt LAB_ce3490c
    mov 0x15,r0
    mov.b @(r0,r6),r2
    tst r2,r2
    bt LAB_ce3490c
    mov.b @(r0,r6),r2
    cmp/pl r2
    bf LAB_ce34914
    mov.w @(DAT_ce349be,pc),r0
    mov.l @(r0,r5),r0
    mov.b @(0x2,r0),r0
    extu.b r0,r0
    tst 0x20,r0
    bt LAB_ce34910

LAB_ce3490c:
    rts
    mov 0x00,r0

LAB_ce34910:
    bra LAB_ce34916
    mov 0x04,r5

LAB_ce34914:
    mov 0x02,r5

LAB_ce34916:
    mov 0x5C,r0
    fldi0 fr3
    fmov.s @(r0,r4),fr2
    fcmp/gt fr2,fr3
    bf LAB_ce34926
    fmov.s @(r0,r4),fr4
    bra LAB_ce34928
    fneg fr4

LAB_ce34926:
    fmov.s @(r0,r4),fr4

LAB_ce34928:
    mova @(DAT_ce349c4,pc),r0
    fmov.s @r0,fr3
    fcmp/gt fr3,fr4
    bf LAB_ce34940
    exts.w r5,r5
    lds r5,FPUL
    mov 0x5C,r0
    fmov.s @(r0,r4),fr1
    float FPUL,fr2
    fdiv fr2,fr1
    bra LAB_ce3495a
    fmov fr1,@(r0,r4)

LAB_ce34940:
    mov.w @(DAT_ce349c0,pc),r0
    mov.b @(r0,r4),r3
    tst r3,r3
    bt LAB_ce3494c
    bra LAB_ce34950
    fmov fr3,fr2

LAB_ce3494c:
    mova @(DAT_ce349c8,pc),r0
    fmov.s @r0,fr2

LAB_ce34950:
    mov 0x5C,r0
    fldi0 fr3
    fmov fr2,@(r0,r4)
    mov 0x68,r0
    fmov fr3,@(r0,r4)

LAB_ce3495a:
    mov 0x01,r0
    rts
    nop

LAB_ce34960:
    mov.l r14,@-r15
    sts.l PR,@-r15
    add 0xE8,r15
    mov.w @(DAT_ce349ba,pc),r3
    mov r4,r14
    mov.l r4,@r15
    mov r15,r4
    add r3,r14
    mov.l @(PTR_ce349cc,pc),r1
    mov.l @r14,r2
    add 0x14,r4
    mov.w @(DAT_ce349c2,pc),r6
    mov 0x00,r5
    mov.l r2,@(0x10,r15)
    mov r4,r2
    add 0x01,r4
    mov.l r2,@(0xc,r15)
    mov.b @(0xe,r14),r0
    mov.b r0,@r2
    mov r3,r2
    mov.l r4,@(0x8,r15)
    mov.b @(0xf,r14),r0
    mov.b r0,@r4
    mov 0x10,r0
    mov.b @(r0,r14),r0
    mov.b r0,@(0x4,r15)
    mov.l @r15,r4
    jsr @r1
    add r2,r4
    mov 0x10,r1
    mov.l @(0x10,r15),r3
    add r14,r1
    mov.l r3,@r14
    mov.l @(0xc,r15),r0
    mov.b @r0,r0
    mov.b r0,@(0xe,r14)
    mov.l @(0x8,r15),r0
    mov.b @r0,r0
    mov.b r0,@(0xf,r14)
    mov.b @(0x4,r15),r0
    mov.b r0,@r1
    add 0x18,r15
    lds.l @r15+,PR
    rts
    mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

DAT_ce349ba:
    #data 0x02a4
DAT_ce349bc:
    #data 0x019c
DAT_ce349be:
    #data 0x01bc
DAT_ce349c0:
    #data 0x01d2
DAT_ce349c2:
    #data 0x0080
    #align4

DAT_ce349c4:
    #data 0x40a00000
DAT_ce349c8:
    #data 0xc0a00000
PTR_ce349cc:
    #data loc_8c129728
DAT_ce349d0:
    #data 0x00040000
DAT_ce349d4:
    #data 0xffff8000
DAT_ce349d8:
    #data 0x000a0000
DAT_ce349dc:
    #data 0x8000
    #data 0xffff
    #data 0x0000
    #data 0x000b
    #data 0x8000
    #data 0xffff
    #data 0x0000
    #data 0x0012
    #data 0x8000
    #data 0xffff
    #data 0x0000
    #data 0x0002
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x000a
    #data 0x6000
    #data 0x0000
    #data 0x0000
    #data 0x0002
    #data 0x1000
    #data 0x0000
    #data 0x0000
    #data 0x000a
    #data 0x6000
    #data 0x0000
DAT_ce34a10:
    #data 0x0000
    #data 0x0000
DAT_ce34a14:
    #data 0x0000
    #data 0x0000
DAT_ce34a18:
    #data 0x0000
    #data 0xfffb
DAT_ce34a1c:
    #data 0x9800
    #data 0xffff
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfff8
    #data 0x9800
    #data 0xffff
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfffc
    #data 0xa000
    #data 0xffff
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0xfffc
    #data 0xa000
    #data 0xffff
DAT_ce34a50:
    #data 0x0201
    #data 0x0201
DAT_ce34a54:
    #data 0x02ff
    #data 0x02ff
DAT_ce34a58:
    #data 0xffff
    #data 0xffff
DAT_ce34a5c:
    #data 0x0201
    #data 0x0201
DAT_ce34a60:
    #data 0x02ff
    #data 0x02ff
DAT_ce34a64:
    #data 0xffff
    #data 0xffff
DAT_ce34a68:
    #data 0x0201
    #data 0x0201
DAT_ce34a6c:
    #data 0x02ff
    #data 0x02ff
DAT_ce34a70:
    #data 0xffff
    #data 0xffff
DAT_ce34a74:
    #data 0x0201
    #data 0x0201
DAT_ce34a78:
    #data 0x02ff
    #data 0x02ff
DAT_ce34a7c:
    #data 0xffff
    #data 0xffff
DAT_ce34a80:
    #data 0x0201
    #data 0x0200
DAT_ce34a84:
    #data 0x02ff
    #data 0x0201
DAT_ce34a88:
    #data 0xffff
    #data 0x02ff
DAT_ce34a8c:
    #data 0x0201
    #data 0x0201
DAT_ce34a90:
    #data 0x02ff
    #data 0x02ff
DAT_ce34a94:
    #data 0xffff
    #data 0xffff
DAT_ce34a98:
    #data 0x0003
    #data 0x9100
    #data 0x0005
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34aa8:
    #data 0x0003
    #data 0x9100
    #data 0x0006
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34ab8:
    #data 0x0003
    #data 0x9100
    #data 0x0008
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
DAT_ce34ac8:
    #data 0x0003
    #data 0x1000
    #data 0x0001
    #data 0x0000
    #data 0x0800
    #data 0x1000
    #data 0x1800
    #data 0x0300
DAT_ce34ad8:
    #data 0x0003
    #data 0x0000
    #data 0x0000
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0300
DAT_ce34ae8:
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
DAT_ce34afc:
    #data 0x0003
    #data 0x1000
    #data 0x0003
    #data 0x0000
    #data 0x1000
    #data 0x1800
    #data 0x0800
    #data 0x0060
    #align4

PTR_ce34b0c:
    #data LAB_ce304d0
PTR_ce34b10:
    #data LAB_ce3001c
PTR_ce34b14:
    #data LAB_ce30bda
PTR_ce34b18:
    #data LAB_ce30e80
PTR_ce34b1c:
    #data LAB_ce30fb2
PTR_ce34b20:
    #data LAB_ce3116a
PTR_ce34b24:
    #data LAB_ce3143c
PTR_ce34b28:
    #data LAB_ce3182a
PTR_ce34b2c:
    #data LAB_ce31b6c
PTR_ce34b30:
    #data LAB_ce342bc
PTR_ce34b34:
    #data LAB_ce34342
PTR_ce34b38:
    #data LAB_ce344e0
PTR_ce34b3c:
    #data LAB_ce34758
PTR_ce34b40:
    #data LAB_ce304a4
PTR_ce34b44:
    #data LAB_ce34130
PTR_ce34b48:
    #data LAB_ce30ec4
PTR_ce34b4c:
    #data LAB_ce34766
PTR_ce34b50:
    #data LAB_ce34796
PTR_ce34b54:
    #data LAB_ce347f0
PTR_ce34b58:
    #data LAB_ce34832
    #data 0x00000000
    #data 0x00000000
    #data 0x00000000
PTR_ce34b68:
    #data LAB_ce34960
PTR_ce34b6c:
    #data LAB_ce34874
PTR_ce34b70:
    #data LAB_ce348d8
    #data 0x00000000
    #data 0x00000000
PTR_ce34b7c:
    #data LAB_ce3088c
PTR_ce34b80:
    #data LAB_ce30bae
PTR_ce34b84:
    #data LAB_ce30b9c
PTR_ce34b88:
    #data LAB_ce30bd6
PTR_ce34b8c:
    #data LAB_ce30d2c
PTR_ce34b90:
    #data LAB_ce30e16
PTR_ce34b94:
    #data LAB_ce30e58
PTR_ce34b98:
    #data LAB_ce30e70
PTR_ce34b9c:
    #data LAB_ce30ff8
PTR_ce34ba0:
    #data LAB_ce31058
PTR_ce34ba4:
    #data LAB_ce310b4
PTR_ce34ba8:
    #data LAB_ce31118
PTR_ce34bac:
    #data LAB_ce3117c
PTR_ce34bb0:
    #data LAB_ce311c0
PTR_ce34bb4:
    #data LAB_ce31218
PTR_ce34bb8:
    #data LAB_ce312dc
PTR_ce34bbc:
    #data LAB_ce313cc
PTR_ce34bc0:
    #data LAB_ce3144e
PTR_ce34bc4:
    #data LAB_ce316be
PTR_ce34bc8:
    #data LAB_ce31818
PTR_ce34bcc:
    #data LAB_ce31628
PTR_ce34bd0:
    #data LAB_ce315d2
PTR_ce34bd4:
    #data LAB_ce3154a
PTR_ce34bd8:
    #data LAB_ce314a2
PTR_ce34bdc:
    #data LAB_ce31482
PTR_ce34be0:
    #data LAB_ce317fa
PTR_ce34be4:
    #data LAB_ce317e2
PTR_ce34be8:
    #data LAB_ce317a8
PTR_ce34bec:
    #data LAB_ce316f0
PTR_ce34bf0:
    #data LAB_ce316d0
PTR_ce34bf4:
    #data LAB_ce3197c
PTR_ce34bf8:
    #data LAB_ce31b58
PTR_ce34bfc:
    #data LAB_ce3183c
PTR_ce34c00:
    #data LAB_ce31958
PTR_ce34c04:
    #data LAB_ce31934
PTR_ce34c08:
    #data LAB_ce31958
PTR_ce34c0c:
    #data LAB_ce31958
PTR_ce34c10:
    #data LAB_ce3199c
PTR_ce34c14:
    #data LAB_ce31a82
PTR_ce34c18:
    #data LAB_ce31a44
PTR_ce34c1c:
    #data LAB_ce319d0
PTR_ce34c20:
    #data LAB_ce3199c
PTR_ce34c24:
    #data LAB_ce3199c
PTR_ce34c28:
    #data LAB_ce3199c
PTR_ce34c2c:
    #data LAB_ce319be
PTR_ce34c30:
    #data LAB_ce31ac8
PTR_ce34c34:
    #data LAB_ce31b06
PTR_ce34c38:
    #data LAB_ce31b18
PTR_ce34c3c:
    #data LAB_ce31b2a
PTR_ce34c40:
    #data LAB_ce31b3c
PTR_ce34c44:
    #data LAB_ce31e54
PTR_ce34c48:
    #data LAB_ce322e4
PTR_ce34c4c:
    #data LAB_ce3241a
PTR_ce34c50:
    #data LAB_ce327b6
PTR_ce34c54:
    #data LAB_ce32886
PTR_ce34c58:
    #data LAB_ce32d5a
PTR_ce34c5c:
    #data LAB_ce33ad8
PTR_ce34c60:
    #data LAB_ce31e54
PTR_ce34c64:
    #data LAB_ce34006
PTR_ce34c68:
    #data LAB_ce31e54
PTR_ce34c6c:
    #data LAB_ce31e54
PTR_ce34c70:
    #data LAB_ce31e54
PTR_ce34c74:
    #data LAB_ce31e54
PTR_ce34c78:
    #data LAB_ce31e54
PTR_ce34c7c:
    #data LAB_ce34018
PTR_ce34c80:
    #data LAB_ce31c6a
PTR_ce34c84:
    #data LAB_ce31d0c
PTR_ce34c88:
    #data LAB_ce31efa
PTR_ce34c8c:
    #data LAB_ce31f64
PTR_ce34c90:
    #data LAB_ce32134
PTR_ce34c94:
    #data FUN_ce321d4
PTR_ce34c98:
    #data LAB_ce32214
PTR_ce34c9c:
    #data LAB_ce31f64
PTR_ce34ca0:
    #data LAB_ce32134
PTR_ce34ca4:
    #data FUN_ce321d4
PTR_ce34ca8:
    #data LAB_ce3227e
PTR_ce34cac:
    #data LAB_ce3225a
PTR_ce34cb0:
    #data LAB_ce3226c
PTR_ce34cb4:
    #data LAB_ce323c8
PTR_ce34cb8:
    #data LAB_ce322f6
PTR_ce34cbc:
    #data LAB_ce32472
PTR_ce34cc0:
    #data LAB_ce32588
PTR_ce34cc4:
    #data LAB_ce32698
PTR_ce34cc8:
    #data LAB_ce3271c
PTR_ce34ccc:
    #data LAB_ce32472
PTR_ce34cd0:
    #data LAB_ce32588
PTR_ce34cd4:
    #data LAB_ce32712
PTR_ce34cd8:
    #data LAB_ce3271c
PTR_ce34cdc:
    #data LAB_ce32434
PTR_ce34ce0:
    #data LAB_ce32774
PTR_ce34ce4:
    #data LAB_ce327a4
PTR_ce34ce8:
    #data LAB_ce327c8
PTR_ce34cec:
    #data LAB_ce32822
PTR_ce34cf0:
    #data FUN_ce32864
PTR_ce34cf4:
    #data LAB_ce3298c
PTR_ce34cf8:
    #data LAB_ce328c4
PTR_ce34cfc:
    #data LAB_ce32a1c
PTR_ce34d00:
    #data LAB_ce32aa0
PTR_ce34d04:
    #data LAB_ce32ba4
PTR_ce34d08:
    #data LAB_ce32c58
PTR_ce34d0c:
    #data LAB_ce32d08
PTR_ce34d10:
    #data LAB_ce32d36
PTR_ce34d14:
    #data LAB_ce32d48
DAT_ce34d18:
    #data 0x00
    #data 0x00
    #data 0x00
    #data 0x06
    #data 0x00
    #data 0x05
    #data 0x00
    #data 0x04
    #data 0x00
    #data 0x02
    #data 0x00
    #data 0x00
    #align4

PTR_ce34d24:
    #data LAB_ce32e00
PTR_ce34d28:
    #data LAB_ce32d6c
PTR_ce34d2c:
    #data LAB_ce32e86
PTR_ce34d30:
    #data LAB_ce32fe8
PTR_ce34d34:
    #data LAB_ce330a8
PTR_ce34d38:
    #data LAB_ce331be
PTR_ce34d3c:
    #data LAB_ce3315e
PTR_ce34d40:
    #data LAB_ce33102
PTR_ce34d44:
    #data LAB_ce332ce
PTR_ce34d48:
    #data LAB_ce3322a
PTR_ce34d4c:
    #data LAB_ce338c0
PTR_ce34d50:
    #data LAB_ce3383e
PTR_ce34d54:
    #data FUN_ce33768
PTR_ce34d58:
    #data LAB_ce33702
PTR_ce34d5c:
    #data LAB_ce3361c
PTR_ce34d60:
    #data LAB_ce3357a
PTR_ce34d64:
    #data FUN_ce3348c
PTR_ce34d68:
    #data LAB_ce333ca
PTR_ce34d6c:
    #data LAB_ce3335c
PTR_ce34d70:
    #data LAB_ce332fe
PTR_ce34d74:
    #data LAB_ce33998
PTR_ce34d78:
    #data LAB_ce33924
PTR_ce34d7c:
    #data LAB_ce339b6
PTR_ce34d80:
    #data LAB_ce339c8
PTR_ce34d84:
    #data LAB_ce339e8
PTR_ce34d88:
    #data LAB_ce33a5c
PTR_ce34d8c:
    #data LAB_ce33a8a
PTR_ce34d90:
    #data LAB_ce33ab8
PTR_ce34d94:
    #data LAB_ce33bd8
PTR_ce34d98:
    #data LAB_ce33b16
PTR_ce34d9c:
    #data LAB_ce33c54
PTR_ce34da0:
    #data LAB_ce33cd4
PTR_ce34da4:
    #data LAB_ce33d7a
PTR_ce34da8:
    #data LAB_ce33e5e
PTR_ce34dac:
    #data LAB_ce33f4a
PTR_ce34db0:
    #data LAB_ce33c54
PTR_ce34db4:
    #data LAB_ce33cd4
PTR_ce34db8:
    #data LAB_ce33faa
PTR_ce34dbc:
    #data LAB_ce33e5e
PTR_ce34dc0:
    #data LAB_ce33f4a
PTR_ce34dc4:
    #data LAB_ce33fb4
PTR_ce34dc8:
    #data LAB_ce33fc6
PTR_ce34dcc:
    #data LAB_ce33fe6
PTR_ce34dd0:
    #data LAB_ce3405c
PTR_ce34dd4:
    #data LAB_ce340d2
PTR_ce34dd8:
    #data LAB_ce3417c
PTR_ce34ddc:
    #data LAB_ce341f6
PTR_ce34de0:
    #data LAB_ce34264
PTR_ce34de4:
    #data LAB_ce3435a
PTR_ce34de8:
    #data LAB_ce343fc
PTR_ce34dec:
    #data LAB_ce3446a
PTR_ce34df0:
    #data LAB_ce344d8
PTR_ce34df4:
    #data LAB_ce344dc
PTR_ce34df8:
    #data LAB_ce345c2
PTR_ce34dfc:
    #data LAB_ce3465a
PTR_ce34e00:
    #data LAB_ce3473a
PTR_ce34e04:
    #data LAB_ce3474c
PTR_ce34e08:
    #data LAB_ce34752
PTR_ce34e0c:
    #data LAB_ce345a8
PTR_ce34e10:
    #data LAB_ce344fe
PTR_ce34e14:
    #data LAB_ce34640
PTR_ce34e18:
    #data LAB_ce345d4
PTR_ce34e1c:
    #data LAB_ce34720
PTR_ce34e20:
    #data LAB_ce3466c
