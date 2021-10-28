/ (fcn) fcn.0ce30000 24
|   fcn.0ce30000 ();
|           0x0ce30000      6790           mov.w @(0xCE,PC),r0
|           0x0ce30002      70e5           mov 0x70,r5
|           0x0ce30004      34d7           mov.l @(0xD0,PC),r7
|           0x0ce30006      4e06           mov.l @(r0,r4),r6
|           0x0ce30008      00e4           mov 0x00,r4
|           ; CODE XREF from fcn.0ce30000 (0xce30014)
|       .-> 0x0ce3000a      4360           mov r4,r0
|       :   0x0ce3000c      0900           nop 
|       :   0x0ce3000e      0474           add 0x04,r4
|       :   0x0ce30010      7e03           mov.l @(r0,r7),r3
|       :   0x0ce30012      5234           cmp/hs r5,r4
|       `=< 0x0ce30014      f98f           bf.s 0x0ce3000a
\           0x0ce30016      3606           mov.l r3,@(r0,r6)
            0x0ce30018      0b00           rts 
            0x0ce3001a      0900           nop 
            ;-- aav.0x0ce3001c:
            ; UNKNOWN XREF from aav.0x0ce36d18 (+0x4)
            0x0ce3001c      e62f           mov.l r14,@-r15
            0x0ce3001e      224f           sts.l pr,@-r15
            0x0ce30020      2ed3           mov.l @(0xB8,PC),r3
            0x0ce30022      0b43           jsr @r3
            0x0ce30024      436e           mov r4,r14
            0x0ce30026      0c60           extu.b r0,r0
            0x0ce30028      0820           tst r0,r0
        ,=< 0x0ce3002a      0189           bt 0x0ce30030
       ,==< 0x0ce3002c      a1a0           bra 0x0ce30172
       ||   0x0ce3002e      0900           nop 
       ||   ; CODE XREF from aav.0x0ce3001c (+0xe)
       |`-> 0x0ce30030      2bd3           mov.l @(0xAC,PC),r3
       |    0x0ce30032      0b43           jsr @r3
       |    0x0ce30034      e364           mov r14,r4
       |    0x0ce30036      0c60           extu.b r0,r0
       |    0x0ce30038      0820           tst r0,r0
       |,=< 0x0ce3003a      0189           bt 0x0ce30040
      ,===< 0x0ce3003c      99a0           bra 0x0ce30172
      |||   0x0ce3003e      0900           nop 
      |||   ; CODE XREF from aav.0x0ce3001c (+0x1e)
      ||`-> 0x0ce30040      28d3           mov.l @(0xA0,PC),r3
      ||    0x0ce30042      0b43           jsr @r3
      ||    0x0ce30044      e364           mov r14,r4
      ||    0x0ce30046      0c60           extu.b r0,r0
      ||    0x0ce30048      0820           tst r0,r0
      ||,=< 0x0ce3004a      0189           bt 0x0ce30050
     ,====< 0x0ce3004c      91a0           bra 0x0ce30172
     ||||   0x0ce3004e      0900           nop 
     ||||   ; CODE XREF from aav.0x0ce3001c (+0x2e)
     |||`-> 0x0ce30050      25d3           mov.l @(0x94,PC),r3
     |||    0x0ce30052      0b43           jsr @r3
     |||    0x0ce30054      e364           mov r14,r4
     |||    0x0ce30056      0c60           extu.b r0,r0
     |||    0x0ce30058      0820           tst r0,r0
     |||,=< 0x0ce3005a      0189           bt 0x0ce30060
    ,=====< 0x0ce3005c      89a0           bra 0x0ce30172
    |||||   0x0ce3005e      0900           nop 
    |||||   ; CODE XREF from aav.0x0ce3001c (+0x3e)
    ||||`-> 0x0ce30060      3890           mov.w @(0x70,PC),r0
    ||||    0x0ce30062      ec03           mov.b @(r0,r14),r3
    ||||    0x0ce30064      3823           tst r3,r3
    ||||,=< 0x0ce30066      418b           bf 0x0ce300ec
    |||||   0x0ce30068      96b2           bsr fcn.0ce30598
    |||||   0x0ce3006a      e364           mov r14,r4
    |||||   0x0ce3006c      0c60           extu.b r0,r0
    |||||   0x0ce3006e      0820           tst r0,r0
   ,======< 0x0ce30070      0189           bt 0x0ce30076
  ,=======< 0x0ce30072      7ea0           bra 0x0ce30172
  |||||||   0x0ce30074      0900           nop 
  |||||||   ; CODE XREF from aav.0x0ce3001c (+0x54)
  |`------> 0x0ce30076      49b2           bsr fcn.0ce3050c
  | |||||   0x0ce30078      e364           mov r14,r4
  | |||||   0x0ce3007a      0c60           extu.b r0,r0
  | |||||   0x0ce3007c      0820           tst r0,r0
  |,======< 0x0ce3007e      0189           bt 0x0ce30084
  ========< 0x0ce30080      77a0           bra 0x0ce30172
  |||||||   0x0ce30082      0900           nop 
  |||||||   ; CODE XREF from aav.0x0ce3001c (+0x62)
  |`------> 0x0ce30084      7cb0           bsr fcn.0ce30180
  | |||||   0x0ce30086      e364           mov r14,r4
  | |||||   0x0ce30088      0c60           extu.b r0,r0
  | |||||   0x0ce3008a      0820           tst r0,r0
  |,======< 0x0ce3008c      0189           bt 0x0ce30092
  ========< 0x0ce3008e      70a0           bra 0x0ce30172
  |||||||   0x0ce30090      0900           nop 
  |||||||   ; CODE XREF from aav.0x0ce3001c (+0x70)
  |`------> 0x0ce30092      c3b0           bsr fcn.0ce3021c
  | |||||   0x0ce30094      e364           mov r14,r4
  | |||||   0x0ce30096      0c60           extu.b r0,r0
  | |||||   0x0ce30098      0820           tst r0,r0
  |,======< 0x0ce3009a      6a8b           bf 0x0ce30172
  |||||||   0x0ce3009c      bfb1           bsr fcn.0ce3041e
  |||||||   0x0ce3009e      e364           mov r14,r4
  |||||||   0x0ce300a0      0c60           extu.b r0,r0
  |||||||   0x0ce300a2      0820           tst r0,r0
  ========< 0x0ce300a4      658b           bf 0x0ce30172
  |||||||   0x0ce300a6      cdb2           bsr fcn.0ce30644
  |||||||   0x0ce300a8      e364           mov r14,r4
  |||||||   0x0ce300aa      0c60           extu.b r0,r0
  |||||||   0x0ce300ac      0820           tst r0,r0
  ========< 0x0ce300ae      608b           bf 0x0ce30172
  |||||||   0x0ce300b0      f4b1           bsr fcn.0ce3049c
  |||||||   0x0ce300b2      e364           mov r14,r4
  |||||||   0x0ce300b4      0c60           extu.b r0,r0
  |||||||   0x0ce300b6      0820           tst r0,r0
  ========< 0x0ce300b8      5b8b           bf 0x0ce30172
  |||||||   0x0ce300ba      8db1           bsr fcn.0ce303d8
  |||||||   0x0ce300bc      e364           mov r14,r4
  |||||||   0x0ce300be      0c60           extu.b r0,r0
  |||||||   0x0ce300c0      0820           tst r0,r0
  ========< 0x0ce300c2      568b           bf 0x0ce30172
  |||||||   0x0ce300c4      45b2           bsr fcn.0ce30552
  |||||||   0x0ce300c6      e364           mov r14,r4
  |||||||   0x0ce300c8      0c60           extu.b r0,r0
  |||||||   0x0ce300ca      0820           tst r0,r0
  ========< 0x0ce300cc      518b           bf 0x0ce30172
  ========< 0x0ce300ce      3aa0           bra 0x0ce30146
  |||||||   0x0ce300d0      0900           nop 
  |||||||   0x0ce300d2      2804           .word 0x0428
  |||||||   0x0ce300d4      0202           stc sr,r2
  |||||||   0x0ce300d6      0000           .word 0x0000
  |||||||   0x0ce300d8      .dword 0x0ce36d18 ; aav.0x0ce36d18
  |||||||   0x0ce300dc      0845           shll2 r5
  |||||||   0x0ce300de      058c           .word 0x8C05
  |||||||   0x0ce300e0      344b           .word 0x4B34
  |||||||   0x0ce300e2      058c           .word 0x8C05
  |||||||   0x0ce300e4      6c49           shad r6,r9
  |||||||   0x0ce300e6      058c           .word 0x8C05
  |||||||   0x0ce300e8      044d           rotl r13
  |||||||   0x0ce300ea      058c           .word 0x8C05
  |||||||   ; CODE XREF from aav.0x0ce3001c (+0x4a)
  ||||||`-> 0x0ce300ec      13b3           bsr fcn.0ce30716
  ||||||    0x0ce300ee      e364           mov r14,r4
  ||||||    0x0ce300f0      0c60           extu.b r0,r0
  ||||||    0x0ce300f2      0820           tst r0,r0
  ||||||,=< 0x0ce300f4      3d8b           bf 0x0ce30172
  |||||||   0x0ce300f6      09b2           bsr fcn.0ce3050c
  |||||||   0x0ce300f8      e364           mov r14,r4
  |||||||   0x0ce300fa      0c60           extu.b r0,r0
  |||||||   0x0ce300fc      0820           tst r0,r0
  ========< 0x0ce300fe      388b           bf 0x0ce30172
  |||||||   0x0ce30100      e9b0           bsr fcn.0ce302d6
  |||||||   0x0ce30102      e364           mov r14,r4
  |||||||   0x0ce30104      0c60           extu.b r0,r0
  |||||||   0x0ce30106      0820           tst r0,r0
  |||||||   0x0ce30108      338b           bf 0x0ce30172
  |||||||   0x0ce3010a      1fb1           bsr fcn.0ce3034c
  |||||||   0x0ce3010c      e364           mov r14,r4
  |||||||   0x0ce3010e      0c60           extu.b r0,r0
  |||||||   0x0ce30110      0820           tst r0,r0
  |||||||   0x0ce30112      2e8b           bf 0x0ce30172
  |||||||   0x0ce30114      83b1           bsr fcn.0ce3041e
  |||||||   0x0ce30116      e364           mov r14,r4
  |||||||   0x0ce30118      0c60           extu.b r0,r0
  |||||||   0x0ce3011a      0820           tst r0,r0
  |||||||   0x0ce3011c      298b           bf 0x0ce30172
  |||||||   0x0ce3011e      b4b2           bsr fcn.0ce3068a
  |||||||   0x0ce30120      e364           mov r14,r4
  |||||||   0x0ce30122      0c60           extu.b r0,r0
  |||||||   0x0ce30124      0820           tst r0,r0
  |||||||   0x0ce30126      248b           bf 0x0ce30172
  |||||||   0x0ce30128      b8b1           bsr fcn.0ce3049c
  |||||||   0x0ce3012a      e364           mov r14,r4
  |||||||   0x0ce3012c      0c60           extu.b r0,r0
  |||||||   0x0ce3012e      0820           tst r0,r0
  |||||||   0x0ce30130      1f8b           bf 0x0ce30172
  |||||||   0x0ce30132      0eb2           bsr fcn.0ce30552
  |||||||   0x0ce30134      e364           mov r14,r4
  |||||||   0x0ce30136      0c60           extu.b r0,r0
  |||||||   0x0ce30138      0820           tst r0,r0
  |||||||   0x0ce3013a      1a8b           bf 0x0ce30172
  |||||||   0x0ce3013c      c8b2           bsr fcn.0ce306d0
  |||||||   0x0ce3013e      e364           mov r14,r4
  |||||||   0x0ce30140      0c60           extu.b r0,r0
  |||||||   0x0ce30142      0820           tst r0,r0
  |||||||   0x0ce30144      158b           bf 0x0ce30172
  |||||||   ; CODE XREF from aav.0x0ce3001c (+0xb2)
  --------> 0x0ce30146      1db3           bsr fcn.0ce30784
  |||||||   0x0ce30148      e364           mov r14,r4
  |||||||   0x0ce3014a      0c60           extu.b r0,r0
  |||||||   0x0ce3014c      0820           tst r0,r0
  |||||||   0x0ce3014e      108b           bf 0x0ce30172
  |||||||   0x0ce30150      37b3           bsr fcn.0ce307c2
  |||||||   0x0ce30152      e364           mov r14,r4
  |||||||   0x0ce30154      0820           tst r0,r0
  |||||||   0x0ce30156      0c8b           bf 0x0ce30172
  |||||||   0x0ce30158      42b2           bsr fcn.0ce305e0
  |||||||   0x0ce3015a      e364           mov r14,r4
  |||||||   0x0ce3015c      0c60           extu.b r0,r0
  |||||||   0x0ce3015e      0820           tst r0,r0
  |||||||   0x0ce30160      078b           bf 0x0ce30172
  |||||||   0x0ce30162      05d2           mov.l @(0x14,PC),r2
  |||||||   0x0ce30164      0b42           jsr @r2
  |||||||   0x0ce30166      e364           mov r14,r4
  |||||||   0x0ce30168      264f           lds.l @r15+,pr
  |||||||   0x0ce3016a      04d3           mov.l @(0x10,PC),r3
  |||||||   0x0ce3016c      e364           mov r14,r4
  |||||||   0x0ce3016e      2b43           jmp @r3
  |||||||   0x0ce30170      f66e           mov.l @r15+,r14
  |||||||   ; XREFS(25)
  ```````-> 0x0ce30172      264f           lds.l @r15+,pr
            0x0ce30174      0b00           rts 
            0x0ce30176      f66e           mov.l @r15+,r14
            0x0ce30178      003e           cmp/eq r0,r14
            0x0ce3017a      058c           .word 0x8C05
            0x0ce3017c      e042           .word 0x42E0
            0x0ce3017e      058c           .word 0x8C05
/ (fcn) fcn.0ce30180 156
|   fcn.0ce30180 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x68)
|           0x0ce30180      e62f           mov.l r14,@-r15
|           0x0ce30182      224f           sts.l pr,@-r15
|           0x0ce30184      f87f           add 0xF8,r15
|           0x0ce30186      7893           mov.w @(0xF0,PC),r3
|           0x0ce30188      436e           mov r4,r14
|           0x0ce3018a      7795           mov.w @(0xEE,PC),r5
|           0x0ce3018c      00e7           mov 0x00,r7
|           0x0ce3018e      ec33           add r14,r3
|           0x0ce30190      f366           mov r15,r6
|           0x0ce30192      311f           mov.l r3,@(0x4,r15)
|           0x0ce30194      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce30196      0b43           jsr @r3
|           0x0ce30198      e364           mov r14,r4
|           0x0ce3019a      0c60           extu.b r0,r0
|           0x0ce3019c      0820           tst r0,r0
|           0x0ce3019e      1b89           bt 0x0ce301d8
|           0x0ce301a0      3bd2           mov.l @(0xEC,PC),r2
|           0x0ce301a2      0b42           jsr @r2
|           0x0ce301a4      e364           mov r14,r4
|           0x0ce301a6      0c60           extu.b r0,r0
|           0x0ce301a8      0820           tst r0,r0
|           0x0ce301aa      1589           bt 0x0ce301d8
|           0x0ce301ac      6790           mov.w @(0xCE,PC),r0
|           0x0ce301ae      ec00           mov.b @(r0,r14),r0
|           0x0ce301b0      0c60           extu.b r0,r0
|           0x0ce301b2      0288           cmp/eq 0x02,r0
|           0x0ce301b4      0a8b           bf 0x0ce301cc
|           0x0ce301b6      6390           mov.w @(0xC6,PC),r0
|           0x0ce301b8      ec02           mov.b @(r0,r14),r2
|           0x0ce301ba      2822           tst r2,r2
|           0x0ce301bc      118b           bf 0x0ce301e2
|           0x0ce301be      6090           mov.w @(0xC0,PC),r0
|           0x0ce301c0      ec03           mov.b @(r0,r14),r3
|           0x0ce301c2      3823           tst r3,r3
|           0x0ce301c4      088b           bf 0x0ce301d8
|           0x0ce301c6      01e3           mov 0x01,r3
|           0x0ce301c8      0ba0           bra 0x0ce301e2
|           0x0ce301ca      340e           mov.b r3,@(r0,r14)
|           ; CODE XREF from fcn.0ce30180 (0xce301b4)
|           0x0ce301cc      5a90           mov.w @(0xB4,PC),r0
|           0x0ce301ce      5a93           mov.w @(0xB4,PC),r3
|           0x0ce301d0      ed01           mov.w @(r0,r14),r1
|           0x0ce301d2      1d61           extu.w r1,r1
|           0x0ce301d4      3821           tst r3,r1
|           0x0ce301d6      0489           bt 0x0ce301e2
|           ; CODE XREFS from fcn.0ce30180 (0xce3019e, 0xce301aa, 0xce301c4)
|           0x0ce301d8      00e0           mov 0x00,r0
|           0x0ce301da      087f           add 0x08,r15
|           0x0ce301dc      264f           lds.l @r15+,pr
|           0x0ce301de      0b00           rts 
|           0x0ce301e0      f66e           mov.l @r15+,r14
|           ; CODE XREFS from fcn.0ce30180 (0xce301bc, 0xce301c8, 0xce301d6)
|           0x0ce301e2      5190           mov.w @(0xA2,PC),r0
|           0x0ce301e4      00e4           mov 0x00,r4
|           0x0ce301e6      f153           mov.l @(0x4,r15),r3
|           0x0ce301e8      ed02           mov.w @(r0,r14),r2
|           0x0ce301ea      2123           mov.w r2,@r3
|           0x0ce301ec      4360           mov r4,r0
|           0x0ce301ee      0900           nop 
|           0x0ce301f0      e580           mov.b r0,@(0x5,r14)
|           0x0ce301f2      e780           mov.b r0,@(0x7,r14)
|           0x0ce301f4      e680           mov.b r0,@(0x6,r14)
|           0x0ce301f6      4290           mov.w @(0x84,PC),r0
|           0x0ce301f8      ec00           mov.b @(r0,r14),r0
|           0x0ce301fa      0c60           extu.b r0,r0
|           0x0ce301fc      0288           cmp/eq 0x02,r0
|           0x0ce301fe      028b           bf 0x0ce30206
|           0x0ce30200      e684           mov.b @(0x6,r14),r0
|           0x0ce30202      0170           add 0x01,r0
|           0x0ce30204      e680           mov.b r0,@(0x6,r14)
|           ; CODE XREF from fcn.0ce30180 (0xce301fe)
|           0x0ce30206      4090           mov.w @(0x80,PC),r0
|           0x0ce30208      15e5           mov 0x15,r5
|           0x0ce3020a      22d3           mov.l @(0x88,PC),r3
|           0x0ce3020c      440e           mov.b r4,@(r0,r14)
|           0x0ce3020e      0b43           jsr @r3
|           0x0ce30210      e364           mov r14,r4
|           0x0ce30212      01e0           mov 0x01,r0
|           0x0ce30214      087f           add 0x08,r15
|           0x0ce30216      264f           lds.l @r15+,pr
|           0x0ce30218      0b00           rts 
\           0x0ce3021a      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3021c 136
|   fcn.0ce3021c (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x76)
|           0x0ce3021c      e62f           mov.l r14,@-r15
|           0x0ce3021e      d62f           mov.l r13,@-r15
|           0x0ce30220      224f           sts.l pr,@-r15
|           0x0ce30222      f87f           add 0xF8,r15
|           0x0ce30224      2993           mov.w @(0x52,PC),r3
|           0x0ce30226      436e           mov r4,r14
|           0x0ce30228      60e5           mov 0x60,r5
|           0x0ce3022a      f366           mov r15,r6
|           0x0ce3022c      ec33           add r14,r3
|           0x0ce3022e      311f           mov.l r3,@(0x4,r15)
|           0x0ce30230      01e7           mov 0x01,r7
|           0x0ce30232      16d3           mov.l @(0x58,PC),r3
|           0x0ce30234      0b43           jsr @r3
|           0x0ce30236      e364           mov r14,r4
|           0x0ce30238      0c60           extu.b r0,r0
|           0x0ce3023a      0820           tst r0,r0
|           0x0ce3023c      1b89           bt 0x0ce30276
|           0x0ce3023e      14d2           mov.l @(0x50,PC),r2
|           0x0ce30240      0b42           jsr @r2
|           0x0ce30242      e364           mov r14,r4
|           0x0ce30244      0c60           extu.b r0,r0
|           0x0ce30246      0820           tst r0,r0
|           0x0ce30248      1589           bt 0x0ce30276
|           0x0ce3024a      1890           mov.w @(0x30,PC),r0
|           0x0ce3024c      ec00           mov.b @(r0,r14),r0
|           0x0ce3024e      0c60           extu.b r0,r0
|           0x0ce30250      0288           cmp/eq 0x02,r0
|           0x0ce30252      0a8f           bf.s 0x0ce3026a
|           0x0ce30254      01ed           mov 0x01,r13
            0x0ce30256      1390           mov.w @(0x26,PC),r0
            0x0ce30258      ec02           mov.b @(r0,r14),r2
            0x0ce3025a      2822           tst r2,r2
            0x0ce3025c      1c8b           bf 0x0ce30298               ; fcn.0ce3021c+0x7c
            0x0ce3025e      1090           mov.w @(0x20,PC),r0
            0x0ce30260      ec03           mov.b @(r0,r14),r3
            0x0ce30262      3823           tst r3,r3
            0x0ce30264      078b           bf 0x0ce30276               ; fcn.0ce3021c+0x5a
            0x0ce30266      17a0           bra 0x0ce30298              ; fcn.0ce3021c+0x7c
            0x0ce30268      d40e           mov.b r13,@(r0,r14)
|           ; CODE XREF from fcn.0ce3021c (0xce30252)
|           0x0ce3026a      0b90           mov.w @(0x16,PC),r0
|           0x0ce3026c      0b93           mov.w @(0x16,PC),r3
|           0x0ce3026e      ed02           mov.w @(r0,r14),r2
|           0x0ce30270      2d62           extu.w r2,r2
|           0x0ce30272      3822           tst r3,r2
|           0x0ce30274      1089           bt 0x0ce30298
|           ; CODE XREFS from fcn.0ce3021c (0xce3023c, 0xce30248)
|           ; CODE XREF from fcn.0ce3021c (+0x48)
|           0x0ce30276      29a0           bra 0x0ce302cc
|           0x0ce30278      00e0           mov 0x00,r0
            0x0ce3027a      a402           mov.b r10,@(r0,r2)
            0x0ce3027c      0003           .word 0x0300
            0x0ce3027e      f901           .word 0x01F9
            0x0ce30280      fc01           mov.b @(r0,r15),r1
            0x0ce30282      d401           mov.b r13,@(r0,r1)
            0x0ce30284      4a03           .word 0x034A
            0x0ce30286      0020           mov.b r0,@r0
            0x0ce30288      fa01           .word 0x01FA
            0x0ce3028a      e901           .word 0x01E9
            0x0ce3028c      f65c           mov.l @(0x18,r15),r12
            0x0ce3028e      058c           .word 0x8C05
            0x0ce30290      da59           mov.l @(0x28,r13),r9
            0x0ce30292      058c           .word 0x8C05
            0x0ce30294      d830           sub r13,r0
            0x0ce30296      058c           .word 0x8C05
|           ; CODE XREFS from fcn.0ce3021c (0x40, 0x4a, 0xce30274)
|           0x0ce30298      9290           mov.w @(0x124,PC),r0
|           0x0ce3029a      00e4           mov 0x00,r4
|           0x0ce3029c      f153           mov.l @(0x4,r15),r3
|           0x0ce3029e      ed02           mov.w @(r0,r14),r2
|           0x0ce302a0      2123           mov.w r2,@r3
|           0x0ce302a2      4360           mov r4,r0
|           0x0ce302a4      0900           nop 
|           0x0ce302a6      e580           mov.b r0,@(0x5,r14)
|           0x0ce302a8      e780           mov.b r0,@(0x7,r14)
|           0x0ce302aa      e680           mov.b r0,@(0x6,r14)
|           0x0ce302ac      8990           mov.w @(0x112,PC),r0
|           0x0ce302ae      ec00           mov.b @(r0,r14),r0
|           0x0ce302b0      0c60           extu.b r0,r0
|           0x0ce302b2      0288           cmp/eq 0x02,r0
|           0x0ce302b4      028b           bf 0x0ce302bc
|           0x0ce302b6      e684           mov.b @(0x6,r14),r0
|           0x0ce302b8      0170           add 0x01,r0
|           0x0ce302ba      e680           mov.b r0,@(0x6,r14)
|           ; CODE XREF from fcn.0ce3021c (0xce302b4)
|           0x0ce302bc      8290           mov.w @(0x104,PC),r0
|           0x0ce302be      15e5           mov 0x15,r5
|           0x0ce302c0      42d3           mov.l @(0x108,PC),r3
|           0x0ce302c2      d40e           mov.b r13,@(r0,r14)
|           0x0ce302c4      0b43           jsr @r3
|           0x0ce302c6      e364           mov r14,r4
|           0x0ce302c8      d360           mov r13,r0
|           0x0ce302ca      0900           nop 
|           ; CODE XREF from fcn.0ce3021c (0xce30276)
|           0x0ce302cc      087f           add 0x08,r15
|           0x0ce302ce      264f           lds.l @r15+,pr
|           0x0ce302d0      f66d           mov.l @r15+,r13
|           0x0ce302d2      0b00           rts 
\           0x0ce302d4      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce302d6 118
|   fcn.0ce302d6 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0xe4)
|           0x0ce302d6      e62f           mov.l r14,@-r15
|           0x0ce302d8      224f           sts.l pr,@-r15
|           0x0ce302da      f87f           add 0xF8,r15
|           0x0ce302dc      7393           mov.w @(0xE6,PC),r3
|           0x0ce302de      436e           mov r4,r14
|           0x0ce302e0      7295           mov.w @(0xE4,PC),r5
|           0x0ce302e2      00e7           mov 0x00,r7
|           0x0ce302e4      ec33           add r14,r3
|           0x0ce302e6      f366           mov r15,r6
|           0x0ce302e8      311f           mov.l r3,@(0x4,r15)
|           0x0ce302ea      39d3           mov.l @(0xE4,PC),r3
|           0x0ce302ec      0b43           jsr @r3
|           0x0ce302ee      e364           mov r14,r4
|           0x0ce302f0      0c60           extu.b r0,r0
|           0x0ce302f2      0820           tst r0,r0
|           0x0ce302f4      1089           bt 0x0ce30318
|           0x0ce302f6      37d2           mov.l @(0xDC,PC),r2
|           0x0ce302f8      0b42           jsr @r2
|           0x0ce302fa      e364           mov r14,r4
|           0x0ce302fc      0c60           extu.b r0,r0
|           0x0ce302fe      0820           tst r0,r0
|           0x0ce30300      0a89           bt 0x0ce30318
|           0x0ce30302      5e90           mov.w @(0xBC,PC),r0
|           0x0ce30304      ec00           mov.b @(r0,r14),r0
|           0x0ce30306      0c60           extu.b r0,r0
|           0x0ce30308      0288           cmp/eq 0x02,r0
|           0x0ce3030a      0589           bt 0x0ce30318
|           0x0ce3030c      5890           mov.w @(0xB0,PC),r0
|           0x0ce3030e      5c93           mov.w @(0xB8,PC),r3
|           0x0ce30310      ed02           mov.w @(r0,r14),r2
|           0x0ce30312      2d62           extu.w r2,r2
|           0x0ce30314      3822           tst r3,r2
|           0x0ce30316      0489           bt 0x0ce30322
|           ; CODE XREFS from fcn.0ce302d6 (0xce302f4, 0xce30300, 0xce3030a)
|           0x0ce30318      00e0           mov 0x00,r0
|           0x0ce3031a      087f           add 0x08,r15
|           0x0ce3031c      264f           lds.l @r15+,pr
|           0x0ce3031e      0b00           rts 
|           0x0ce30320      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce302d6 (0xce30316)
|           0x0ce30322      4d90           mov.w @(0x9A,PC),r0
|           0x0ce30324      00e4           mov 0x00,r4
|           0x0ce30326      f153           mov.l @(0x4,r15),r3
|           0x0ce30328      ed02           mov.w @(r0,r14),r2
|           0x0ce3032a      2123           mov.w r2,@r3
|           0x0ce3032c      4360           mov r4,r0
|           0x0ce3032e      0900           nop 
|           0x0ce30330      e580           mov.b r0,@(0x5,r14)
|           0x0ce30332      15e5           mov 0x15,r5
|           0x0ce30334      e780           mov.b r0,@(0x7,r14)
|           0x0ce30336      e680           mov.b r0,@(0x6,r14)
|           0x0ce30338      4490           mov.w @(0x88,PC),r0
|           0x0ce3033a      24d3           mov.l @(0x90,PC),r3
|           0x0ce3033c      440e           mov.b r4,@(r0,r14)
|           0x0ce3033e      0b43           jsr @r3
|           0x0ce30340      e364           mov r14,r4
|           0x0ce30342      01e0           mov 0x01,r0
|           0x0ce30344      087f           add 0x08,r15
|           0x0ce30346      264f           lds.l @r15+,pr
|           0x0ce30348      0b00           rts 
\           0x0ce3034a      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3034c 116
|   fcn.0ce3034c (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0xee)
|           0x0ce3034c      e62f           mov.l r14,@-r15
|           0x0ce3034e      224f           sts.l pr,@-r15
|           0x0ce30350      f87f           add 0xF8,r15
|           0x0ce30352      3893           mov.w @(0x70,PC),r3
|           0x0ce30354      436e           mov r4,r14
|           0x0ce30356      60e5           mov 0x60,r5
|           0x0ce30358      f366           mov r15,r6
|           0x0ce3035a      ec33           add r14,r3
|           0x0ce3035c      311f           mov.l r3,@(0x4,r15)
|           0x0ce3035e      01e7           mov 0x01,r7
|           0x0ce30360      1bd3           mov.l @(0x6C,PC),r3
|           0x0ce30362      0b43           jsr @r3
|           0x0ce30364      e364           mov r14,r4
|           0x0ce30366      0c60           extu.b r0,r0
|           0x0ce30368      0820           tst r0,r0
|           0x0ce3036a      1089           bt 0x0ce3038e
|           0x0ce3036c      19d2           mov.l @(0x64,PC),r2
|           0x0ce3036e      0b42           jsr @r2
|           0x0ce30370      e364           mov r14,r4
|           0x0ce30372      0c60           extu.b r0,r0
|           0x0ce30374      0820           tst r0,r0
|           0x0ce30376      0a89           bt 0x0ce3038e
|           0x0ce30378      2390           mov.w @(0x46,PC),r0
|           0x0ce3037a      ec00           mov.b @(r0,r14),r0
|           0x0ce3037c      0c60           extu.b r0,r0
|           0x0ce3037e      0288           cmp/eq 0x02,r0
|           0x0ce30380      0589           bt 0x0ce3038e
|           0x0ce30382      1d90           mov.w @(0x3A,PC),r0
|           0x0ce30384      2193           mov.w @(0x42,PC),r3
|           0x0ce30386      ed02           mov.w @(r0,r14),r2
|           0x0ce30388      2d62           extu.w r2,r2
|           0x0ce3038a      3822           tst r3,r2
|           0x0ce3038c      0489           bt 0x0ce30398
|           ; CODE XREFS from fcn.0ce3034c (0xce3036a, 0xce30376, 0xce30380)
|           0x0ce3038e      00e0           mov 0x00,r0
|           0x0ce30390      087f           add 0x08,r15
|           0x0ce30392      264f           lds.l @r15+,pr
|           0x0ce30394      0b00           rts 
|           0x0ce30396      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3034c (0xce3038c)
|           0x0ce30398      1290           mov.w @(0x24,PC),r0
|           0x0ce3039a      15e5           mov 0x15,r5
|           0x0ce3039c      f153           mov.l @(0x4,r15),r3
|           0x0ce3039e      ed02           mov.w @(r0,r14),r2
|           0x0ce303a0      00e0           mov 0x00,r0
|           0x0ce303a2      2123           mov.w r2,@r3
|           0x0ce303a4      01e3           mov 0x01,r3
|           0x0ce303a6      e580           mov.b r0,@(0x5,r14)
|           0x0ce303a8      e780           mov.b r0,@(0x7,r14)
|           0x0ce303aa      e680           mov.b r0,@(0x6,r14)
|           0x0ce303ac      0a90           mov.w @(0x14,PC),r0
|           0x0ce303ae      340e           mov.b r3,@(r0,r14)
|           0x0ce303b0      06d3           mov.l @(0x18,PC),r3
|           0x0ce303b2      0b43           jsr @r3
|           0x0ce303b4      e364           mov r14,r4
|           0x0ce303b6      01e0           mov 0x01,r0
|           0x0ce303b8      087f           add 0x08,r15
|           0x0ce303ba      264f           lds.l @r15+,pr
|           0x0ce303bc      0b00           rts 
\           0x0ce303be      f66e           mov.l @r15+,r14
            0x0ce303c0      fa01           .word 0x01FA
            0x0ce303c2      f901           .word 0x01F9
            0x0ce303c4      e901           .word 0x01E9
            0x0ce303c6      a402           mov.b r10,@(r0,r2)
            0x0ce303c8      0003           .word 0x0300
            0x0ce303ca      0020           mov.b r0,@r0
            0x0ce303cc      d830           sub r13,r0
            0x0ce303ce      058c           .word 0x8C05
            0x0ce303d0      f65c           mov.l @(0x18,r15),r12
            0x0ce303d2      058c           .word 0x8C05
            0x0ce303d4      da59           mov.l @(0x28,r13),r9
            0x0ce303d6      058c           .word 0x8C05
/ (fcn) fcn.0ce303d8 70
|   fcn.0ce303d8 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x9e)
|           0x0ce303d8      e62f           mov.l r14,@-r15
|           0x0ce303da      436e           mov r4,r14
|           0x0ce303dc      224f           sts.l pr,@-r15
|           0x0ce303de      44d5           mov.l @(0x110,PC),r5
|           0x0ce303e0      7f96           mov.w @(0xFE,PC),r6
|           0x0ce303e2      44d3           mov.l @(0x110,PC),r3
|           0x0ce303e4      0b43           jsr @r3
|           0x0ce303e6      ec36           add r14,r6
|           0x0ce303e8      0c60           extu.b r0,r0
|           0x0ce303ea      0820           tst r0,r0
|           0x0ce303ec      038b           bf 0x0ce303f6
|           0x0ce303ee      264f           lds.l @r15+,pr
|           0x0ce303f0      00e0           mov 0x00,r0
|           0x0ce303f2      0b00           rts 
|           0x0ce303f4      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce303d8 (0xce303ec)
|           0x0ce303f6      7495           mov.w @(0xE8,PC),r5
|           0x0ce303f8      3fd3           mov.l @(0xFC,PC),r3
|           0x0ce303fa      ec35           add r14,r5
|           0x0ce303fc      0b43           jsr @r3
|           0x0ce303fe      e364           mov r14,r4
|           0x0ce30400      00e0           mov 0x00,r0
|           0x0ce30402      e580           mov.b r0,@(0x5,r14)
|           0x0ce30404      02e3           mov 0x02,r3
|           0x0ce30406      e780           mov.b r0,@(0x7,r14)
|           0x0ce30408      15e5           mov 0x15,r5
|           0x0ce3040a      e680           mov.b r0,@(0x6,r14)
|           0x0ce3040c      6a90           mov.w @(0xD4,PC),r0
|           0x0ce3040e      340e           mov.b r3,@(r0,r14)
|           0x0ce30410      3ad3           mov.l @(0xE8,PC),r3
|           0x0ce30412      0b43           jsr @r3
|           0x0ce30414      e364           mov r14,r4
|           0x0ce30416      01e0           mov 0x01,r0
|           0x0ce30418      264f           lds.l @r15+,pr
|           0x0ce3041a      0b00           rts 
\           0x0ce3041c      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3041e 126
|   fcn.0ce3041e (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREFS from aav.0x0ce3001c (+0x80, +0xf8)
|           0x0ce3041e      e62f           mov.l r14,@-r15
|           0x0ce30420      436e           mov r4,r14
|           0x0ce30422      224f           sts.l pr,@-r15
|           0x0ce30424      36d5           mov.l @(0xD8,PC),r5
|           0x0ce30426      5e96           mov.w @(0xBC,PC),r6
|           0x0ce30428      36d3           mov.l @(0xD8,PC),r3
|           0x0ce3042a      0b43           jsr @r3
|           0x0ce3042c      ec36           add r14,r6
|           0x0ce3042e      0c60           extu.b r0,r0
|           0x0ce30430      0820           tst r0,r0
|           0x0ce30432      0c89           bt 0x0ce3044e
|           0x0ce30434      5890           mov.w @(0xB0,PC),r0
|           0x0ce30436      ec00           mov.b @(r0,r14),r0
|           0x0ce30438      0c60           extu.b r0,r0
|           0x0ce3043a      0288           cmp/eq 0x02,r0
|           0x0ce3043c      0d8b           bf 0x0ce3045a
|           0x0ce3043e      5490           mov.w @(0xA8,PC),r0
|           0x0ce30440      ec02           mov.b @(r0,r14),r2
|           0x0ce30442      2822           tst r2,r2
|           0x0ce30444      098b           bf 0x0ce3045a
|           0x0ce30446      5190           mov.w @(0xA2,PC),r0
|           0x0ce30448      ec03           mov.b @(r0,r14),r3
|           0x0ce3044a      3823           tst r3,r3
|           0x0ce3044c      0389           bt 0x0ce30456
|           ; CODE XREF from fcn.0ce3041e (0xce30432)
|           0x0ce3044e      264f           lds.l @r15+,pr
|           0x0ce30450      00e0           mov 0x00,r0
|           0x0ce30452      0b00           rts 
|           0x0ce30454      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3041e (0xce3044c)
|           0x0ce30456      01e2           mov 0x01,r2
|           0x0ce30458      240e           mov.b r2,@(r0,r14)
|           ; CODE XREFS from fcn.0ce3041e (0xce3043c, 0xce30444)
|           0x0ce3045a      4495           mov.w @(0x88,PC),r5
|           0x0ce3045c      26d3           mov.l @(0x98,PC),r3
|           0x0ce3045e      ec35           add r14,r5
|           0x0ce30460      0b43           jsr @r3
|           0x0ce30462      e364           mov r14,r4
|           0x0ce30464      00e4           mov 0x00,r4
|           0x0ce30466      4360           mov r4,r0
|           0x0ce30468      0900           nop 
|           0x0ce3046a      e580           mov.b r0,@(0x5,r14)
|           0x0ce3046c      3c90           mov.w @(0x78,PC),r0
|           0x0ce3046e      ec00           mov.b @(r0,r14),r0
|           0x0ce30470      0c60           extu.b r0,r0
|           0x0ce30472      0288           cmp/eq 0x02,r0
|           0x0ce30474      018b           bf 0x0ce3047a
|           0x0ce30476      02a0           bra 0x0ce3047e
|           0x0ce30478      01e0           mov 0x01,r0
|           ; CODE XREF from fcn.0ce3041e (0xce30474)
|           0x0ce3047a      4360           mov r4,r0
|           0x0ce3047c      0900           nop 
|           ; CODE XREF from fcn.0ce3041e (0xce30476)
|           0x0ce3047e      e680           mov.b r0,@(0x6,r14)
|           0x0ce30480      4360           mov r4,r0
|           0x0ce30482      0900           nop 
|           0x0ce30484      e780           mov.b r0,@(0x7,r14)
|           0x0ce30486      03e3           mov 0x03,r3
|           0x0ce30488      2c90           mov.w @(0x58,PC),r0
|           0x0ce3048a      15e5           mov 0x15,r5
|           0x0ce3048c      340e           mov.b r3,@(r0,r14)
|           0x0ce3048e      1bd3           mov.l @(0x6C,PC),r3
|           0x0ce30490      0b43           jsr @r3
|           0x0ce30492      e364           mov r14,r4
|           0x0ce30494      01e0           mov 0x01,r0
|           0x0ce30496      264f           lds.l @r15+,pr
|           0x0ce30498      0b00           rts 
\           0x0ce3049a      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3049c 70
|   fcn.0ce3049c (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREFS from aav.0x0ce3001c (+0x94, +0x10c)
|           0x0ce3049c      e62f           mov.l r14,@-r15
|           0x0ce3049e      436e           mov r4,r14
|           0x0ce304a0      224f           sts.l pr,@-r15
|           0x0ce304a2      19d5           mov.l @(0x64,PC),r5
|           0x0ce304a4      2396           mov.w @(0x46,PC),r6
|           0x0ce304a6      13d3           mov.l @(0x4C,PC),r3
|           0x0ce304a8      0b43           jsr @r3
|           0x0ce304aa      ec36           add r14,r6
|           0x0ce304ac      0c60           extu.b r0,r0
|           0x0ce304ae      0820           tst r0,r0
|           0x0ce304b0      038b           bf 0x0ce304ba
|           0x0ce304b2      264f           lds.l @r15+,pr
|           0x0ce304b4      00e0           mov 0x00,r0
|           0x0ce304b6      0b00           rts 
|           0x0ce304b8      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3049c (0xce304b0)
|           0x0ce304ba      1895           mov.w @(0x30,PC),r5
|           0x0ce304bc      0ed3           mov.l @(0x38,PC),r3
|           0x0ce304be      ec35           add r14,r5
|           0x0ce304c0      0b43           jsr @r3
|           0x0ce304c2      e364           mov r14,r4
|           0x0ce304c4      00e0           mov 0x00,r0
|           0x0ce304c6      e580           mov.b r0,@(0x5,r14)
|           0x0ce304c8      04e3           mov 0x04,r3
|           0x0ce304ca      e780           mov.b r0,@(0x7,r14)
|           0x0ce304cc      15e5           mov 0x15,r5
|           0x0ce304ce      e680           mov.b r0,@(0x6,r14)
|           0x0ce304d0      0890           mov.w @(0x10,PC),r0
|           0x0ce304d2      340e           mov.b r3,@(r0,r14)
|           0x0ce304d4      09d3           mov.l @(0x24,PC),r3
|           0x0ce304d6      0b43           jsr @r3
|           0x0ce304d8      e364           mov r14,r4
|           0x0ce304da      01e0           mov 0x01,r0
|           0x0ce304dc      264f           lds.l @r15+,pr
|           0x0ce304de      0b00           rts 
\           0x0ce304e0      f66e           mov.l @r15+,r14
            0x0ce304e2      6c03           mov.b @(r0,r6),r3
            0x0ce304e4      e901           .word 0x01E9
            0x0ce304e6      7403           mov.b r7,@(r0,r3)
            0x0ce304e8      f901           .word 0x01F9
            0x0ce304ea      fc01           mov.b @(r0,r15),r1
            0x0ce304ec      d401           mov.b r13,@(r0,r1)
            0x0ce304ee      7c03           mov.b @(r0,r7),r3
            0x0ce304f0      .dword 0x0ce36c8c ; aav.0x0ce36c8c
            0x0ce304f4      584e           .word 0x4E58
            0x0ce304f6      058c           .word 0x8C05
            0x0ce304f8      3a5c           mov.l @(0x28,r3),r12
            0x0ce304fa      058c           .word 0x8C05
            0x0ce304fc      d830           sub r13,r0
            0x0ce304fe      058c           .word 0x8C05
            0x0ce30500      .dword 0x0ce36c9c ; aav.0x0ce36c9c
            0x0ce30504      ac53           mov.l @(0x30,r10),r3
            0x0ce30506      058c           .word 0x8C05
            0x0ce30508      .dword 0x0ce36ca6 ; aav.0x0ce36ca6
/ (fcn) fcn.0ce3050c 70
|   fcn.0ce3050c (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREFS from aav.0x0ce3001c (+0x5a, +0xda)
|           0x0ce3050c      e62f           mov.l r14,@-r15
|           0x0ce3050e      436e           mov r4,r14
|           0x0ce30510      224f           sts.l pr,@-r15
|           0x0ce30512      44d5           mov.l @(0x110,PC),r5
|           0x0ce30514      8096           mov.w @(0x100,PC),r6
|           0x0ce30516      44d3           mov.l @(0x110,PC),r3
|           0x0ce30518      0b43           jsr @r3
|           0x0ce3051a      ec36           add r14,r6
|           0x0ce3051c      0c60           extu.b r0,r0
|           0x0ce3051e      0820           tst r0,r0
|           0x0ce30520      0489           bt 0x0ce3052c
|           0x0ce30522      7a90           mov.w @(0xF4,PC),r0
|           0x0ce30524      ee02           mov.l @(r0,r14),r2
|           0x0ce30526      2063           mov.b @r2,r3
|           0x0ce30528      3823           tst r3,r3
|           0x0ce3052a      038b           bf 0x0ce30534
|           ; CODE XREF from fcn.0ce3050c (0xce30520)
|           0x0ce3052c      264f           lds.l @r15+,pr
|           0x0ce3052e      00e0           mov 0x00,r0
|           0x0ce30530      0b00           rts 
|           0x0ce30532      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3050c (0xce3052a)
|           0x0ce30534      00e0           mov 0x00,r0
|           0x0ce30536      e580           mov.b r0,@(0x5,r14)
|           0x0ce30538      05e3           mov 0x05,r3
|           0x0ce3053a      e780           mov.b r0,@(0x7,r14)
|           0x0ce3053c      1de5           mov 0x1D,r5
|           0x0ce3053e      e680           mov.b r0,@(0x6,r14)
|           0x0ce30540      6c90           mov.w @(0xD8,PC),r0
|           0x0ce30542      340e           mov.b r3,@(r0,r14)
|           0x0ce30544      39d3           mov.l @(0xE4,PC),r3
|           0x0ce30546      0b43           jsr @r3
|           0x0ce30548      e364           mov r14,r4
|           0x0ce3054a      01e0           mov 0x01,r0
|           0x0ce3054c      264f           lds.l @r15+,pr
|           0x0ce3054e      0b00           rts 
\           0x0ce30550      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30552 70
|   fcn.0ce30552 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREFS from aav.0x0ce3001c (+0xa8, +0x116)
|           0x0ce30552      e62f           mov.l r14,@-r15
|           0x0ce30554      436e           mov r4,r14
|           0x0ce30556      224f           sts.l pr,@-r15
|           0x0ce30558      35d5           mov.l @(0xD4,PC),r5
|           0x0ce3055a      6096           mov.w @(0xC0,PC),r6
|           0x0ce3055c      35d3           mov.l @(0xD4,PC),r3
|           0x0ce3055e      0b43           jsr @r3
|           0x0ce30560      ec36           add r14,r6
|           0x0ce30562      0c60           extu.b r0,r0
|           0x0ce30564      0820           tst r0,r0
|           0x0ce30566      038b           bf 0x0ce30570
|           0x0ce30568      264f           lds.l @r15+,pr
|           0x0ce3056a      00e0           mov 0x00,r0
|           0x0ce3056c      0b00           rts 
|           0x0ce3056e      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30552 (0xce30566)
|           0x0ce30570      5595           mov.w @(0xAA,PC),r5
|           0x0ce30572      31d3           mov.l @(0xC4,PC),r3
|           0x0ce30574      ec35           add r14,r5
|           0x0ce30576      0b43           jsr @r3
|           0x0ce30578      e364           mov r14,r4
|           0x0ce3057a      00e0           mov 0x00,r0
|           0x0ce3057c      e580           mov.b r0,@(0x5,r14)
|           0x0ce3057e      06e3           mov 0x06,r3
|           0x0ce30580      e780           mov.b r0,@(0x7,r14)
|           0x0ce30582      15e5           mov 0x15,r5
|           0x0ce30584      e680           mov.b r0,@(0x6,r14)
|           0x0ce30586      4990           mov.w @(0x92,PC),r0
|           0x0ce30588      340e           mov.b r3,@(r0,r14)
|           0x0ce3058a      28d3           mov.l @(0xA0,PC),r3
|           0x0ce3058c      0b43           jsr @r3
|           0x0ce3058e      e364           mov r14,r4
|           0x0ce30590      01e0           mov 0x01,r0
|           0x0ce30592      264f           lds.l @r15+,pr
|           0x0ce30594      0b00           rts 
\           0x0ce30596      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30598 72
|   fcn.0ce30598 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x4c)
|           0x0ce30598      e62f           mov.l r14,@-r15
|           0x0ce3059a      436e           mov r4,r14
|           0x0ce3059c      224f           sts.l pr,@-r15
|           0x0ce3059e      27d5           mov.l @(0x9C,PC),r5
|           0x0ce305a0      3e96           mov.w @(0x7C,PC),r6
|           0x0ce305a2      21d3           mov.l @(0x84,PC),r3
|           0x0ce305a4      0b43           jsr @r3
|           0x0ce305a6      ec36           add r14,r6
|           0x0ce305a8      0c60           extu.b r0,r0
|           0x0ce305aa      0820           tst r0,r0
|           0x0ce305ac      0589           bt 0x0ce305ba
|           0x0ce305ae      3490           mov.w @(0x68,PC),r0
|           0x0ce305b0      ee02           mov.l @(r0,r14),r2
|           0x0ce305b2      2063           mov.b @r2,r3
|           0x0ce305b4      03e2           mov 0x03,r2
|           0x0ce305b6      2333           cmp/ge r2,r3
|           0x0ce305b8      0389           bt 0x0ce305c2
|           ; CODE XREF from fcn.0ce30598 (0xce305ac)
|           0x0ce305ba      264f           lds.l @r15+,pr
|           0x0ce305bc      00e0           mov 0x00,r0
|           0x0ce305be      0b00           rts 
|           0x0ce305c0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30598 (0xce305b8)
|           0x0ce305c2      00e0           mov 0x00,r0
|           0x0ce305c4      e580           mov.b r0,@(0x5,r14)
|           0x0ce305c6      11e3           mov 0x11,r3
|           0x0ce305c8      e780           mov.b r0,@(0x7,r14)
|           0x0ce305ca      1de5           mov 0x1D,r5
|           0x0ce305cc      e680           mov.b r0,@(0x6,r14)
|           0x0ce305ce      2590           mov.w @(0x4A,PC),r0
|           0x0ce305d0      340e           mov.b r3,@(r0,r14)
|           0x0ce305d2      16d3           mov.l @(0x58,PC),r3
|           0x0ce305d4      0b43           jsr @r3
|           0x0ce305d6      e364           mov r14,r4
|           0x0ce305d8      01e0           mov 0x01,r0
|           0x0ce305da      264f           lds.l @r15+,pr
|           0x0ce305dc      0b00           rts 
\           0x0ce305de      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce305e0 56
|   fcn.0ce305e0 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x13c)
|           0x0ce305e0      e62f           mov.l r14,@-r15
|           0x0ce305e2      436e           mov r4,r14
|           0x0ce305e4      224f           sts.l pr,@-r15
|           0x0ce305e6      16d3           mov.l @(0x58,PC),r3
|           0x0ce305e8      0b43           jsr @r3
|           0x0ce305ea      09e5           mov 0x09,r5
|           0x0ce305ec      0c60           extu.b r0,r0
|           0x0ce305ee      0820           tst r0,r0
|           0x0ce305f0      038b           bf 0x0ce305fa
|           0x0ce305f2      264f           lds.l @r15+,pr
|           0x0ce305f4      00e0           mov 0x00,r0
|           0x0ce305f6      0b00           rts 
|           0x0ce305f8      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce305e0 (0xce305f0)
|           0x0ce305fa      00e0           mov 0x00,r0
|           0x0ce305fc      e580           mov.b r0,@(0x5,r14)
|           0x0ce305fe      09e3           mov 0x09,r3
|           0x0ce30600      e780           mov.b r0,@(0x7,r14)
|           0x0ce30602      15e5           mov 0x15,r5
|           0x0ce30604      e680           mov.b r0,@(0x6,r14)
|           0x0ce30606      0990           mov.w @(0x12,PC),r0
|           0x0ce30608      340e           mov.b r3,@(r0,r14)
|           0x0ce3060a      08d3           mov.l @(0x20,PC),r3
|           0x0ce3060c      0b43           jsr @r3
|           0x0ce3060e      e364           mov r14,r4
|           0x0ce30610      01e0           mov 0x01,r0
|           0x0ce30612      264f           lds.l @r15+,pr
|           0x0ce30614      0b00           rts 
\           0x0ce30616      f66e           mov.l @r15+,r14
            0x0ce30618      8403           mov.b r8,@(r0,r3)
            0x0ce3061a      0c04           mov.b @(r0,r0),r4
            0x0ce3061c      e901           .word 0x01E9
            0x0ce3061e      8c03           mov.b @(r0,r8),r3
            0x0ce30620      9403           mov.b r9,@(r0,r3)
            0x0ce30622      0000           .word 0x0000
            0x0ce30624      .dword 0x0ce36cba ; aav.0x0ce36cba
            0x0ce30628      ac53           mov.l @(0x30,r10),r3
            0x0ce3062a      058c           .word 0x8C05
            0x0ce3062c      d830           sub r13,r0
            0x0ce3062e      058c           .word 0x8C05
            0x0ce30630      .dword 0x0ce36cc4 ; aav.0x0ce36cc4
            0x0ce30634      584e           .word 0x4E58
            0x0ce30636      058c           .word 0x8C05
            0x0ce30638      3a5c           mov.l @(0x28,r3),r12
            0x0ce3063a      058c           .word 0x8C05
            0x0ce3063c      .dword 0x0ce36cd4 ; aav.0x0ce36cd4
            0x0ce30640      a04d           .word 0x4DA0
            0x0ce30642      058c           .word 0x8C05
/ (fcn) fcn.0ce30644 70
|   fcn.0ce30644 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x8a)
|           0x0ce30644      e62f           mov.l r14,@-r15
|           0x0ce30646      436e           mov r4,r14
|           0x0ce30648      224f           sts.l pr,@-r15
|           0x0ce3064a      47d5           mov.l @(0x11C,PC),r5
|           0x0ce3064c      8696           mov.w @(0x10C,PC),r6
|           0x0ce3064e      47d3           mov.l @(0x11C,PC),r3
|           0x0ce30650      0b43           jsr @r3
|           0x0ce30652      ec36           add r14,r6
|           0x0ce30654      0c60           extu.b r0,r0
|           0x0ce30656      0820           tst r0,r0
|           0x0ce30658      0489           bt 0x0ce30664
|           0x0ce3065a      8090           mov.w @(0x100,PC),r0
|           0x0ce3065c      ee02           mov.l @(r0,r14),r2
|           0x0ce3065e      2063           mov.b @r2,r3
|           0x0ce30660      3823           tst r3,r3
|           0x0ce30662      038b           bf 0x0ce3066c
|           ; CODE XREF from fcn.0ce30644 (0xce30658)
|           0x0ce30664      264f           lds.l @r15+,pr
|           0x0ce30666      00e0           mov 0x00,r0
|           0x0ce30668      0b00           rts 
|           0x0ce3066a      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30644 (0xce30662)
|           0x0ce3066c      00e0           mov 0x00,r0
|           0x0ce3066e      e580           mov.b r0,@(0x5,r14)
|           0x0ce30670      12e3           mov 0x12,r3
|           0x0ce30672      e780           mov.b r0,@(0x7,r14)
|           0x0ce30674      1de5           mov 0x1D,r5
|           0x0ce30676      e680           mov.b r0,@(0x6,r14)
|           0x0ce30678      7290           mov.w @(0xE4,PC),r0
|           0x0ce3067a      340e           mov.b r3,@(r0,r14)
|           0x0ce3067c      3cd3           mov.l @(0xF0,PC),r3
|           0x0ce3067e      0b43           jsr @r3
|           0x0ce30680      e364           mov r14,r4
|           0x0ce30682      01e0           mov 0x01,r0
|           0x0ce30684      264f           lds.l @r15+,pr
|           0x0ce30686      0b00           rts 
\           0x0ce30688      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3068a 70
|   fcn.0ce3068a (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x102)
|           0x0ce3068a      e62f           mov.l r14,@-r15
|           0x0ce3068c      436e           mov r4,r14
|           0x0ce3068e      224f           sts.l pr,@-r15
|           0x0ce30690      35d5           mov.l @(0xD4,PC),r5
|           0x0ce30692      6396           mov.w @(0xC6,PC),r6
|           0x0ce30694      35d3           mov.l @(0xD4,PC),r3
|           0x0ce30696      0b43           jsr @r3
|           0x0ce30698      ec36           add r14,r6
|           0x0ce3069a      0c60           extu.b r0,r0
|           0x0ce3069c      0820           tst r0,r0
|           0x0ce3069e      0489           bt 0x0ce306aa
|           0x0ce306a0      5d90           mov.w @(0xBA,PC),r0
|           0x0ce306a2      ee02           mov.l @(r0,r14),r2
|           0x0ce306a4      2063           mov.b @r2,r3
|           0x0ce306a6      3823           tst r3,r3
|           0x0ce306a8      038b           bf 0x0ce306b2
|           ; CODE XREF from fcn.0ce3068a (0xce3069e)
|           0x0ce306aa      264f           lds.l @r15+,pr
|           0x0ce306ac      00e0           mov 0x00,r0
|           0x0ce306ae      0b00           rts 
|           0x0ce306b0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3068a (0xce306a8)
|           0x0ce306b2      00e0           mov 0x00,r0
|           0x0ce306b4      e580           mov.b r0,@(0x5,r14)
|           0x0ce306b6      12e3           mov 0x12,r3
|           0x0ce306b8      e780           mov.b r0,@(0x7,r14)
|           0x0ce306ba      1de5           mov 0x1D,r5
|           0x0ce306bc      e680           mov.b r0,@(0x6,r14)
|           0x0ce306be      4f90           mov.w @(0x9E,PC),r0
|           0x0ce306c0      340e           mov.b r3,@(r0,r14)
|           0x0ce306c2      2bd3           mov.l @(0xAC,PC),r3
|           0x0ce306c4      0b43           jsr @r3
|           0x0ce306c6      e364           mov r14,r4
|           0x0ce306c8      01e0           mov 0x01,r0
|           0x0ce306ca      264f           lds.l @r15+,pr
|           0x0ce306cc      0b00           rts 
\           0x0ce306ce      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce306d0 70
|   fcn.0ce306d0 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x120)
|           0x0ce306d0      e62f           mov.l r14,@-r15
|           0x0ce306d2      436e           mov r4,r14
|           0x0ce306d4      224f           sts.l pr,@-r15
|           0x0ce306d6      27d5           mov.l @(0x9C,PC),r5
|           0x0ce306d8      4396           mov.w @(0x86,PC),r6
|           0x0ce306da      24d3           mov.l @(0x90,PC),r3
|           0x0ce306dc      0b43           jsr @r3
|           0x0ce306de      ec36           add r14,r6
|           0x0ce306e0      0c60           extu.b r0,r0
|           0x0ce306e2      0820           tst r0,r0
|           0x0ce306e4      038b           bf 0x0ce306ee
|           0x0ce306e6      264f           lds.l @r15+,pr
|           0x0ce306e8      00e0           mov 0x00,r0
|           0x0ce306ea      0b00           rts 
|           0x0ce306ec      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce306d0 (0xce306e4)
|           0x0ce306ee      3895           mov.w @(0x70,PC),r5
|           0x0ce306f0      21d3           mov.l @(0x84,PC),r3
|           0x0ce306f2      ec35           add r14,r5
|           0x0ce306f4      0b43           jsr @r3
|           0x0ce306f6      e364           mov r14,r4
|           0x0ce306f8      00e0           mov 0x00,r0
|           0x0ce306fa      e580           mov.b r0,@(0x5,r14)
|           0x0ce306fc      13e3           mov 0x13,r3
|           0x0ce306fe      e780           mov.b r0,@(0x7,r14)
|           0x0ce30700      15e5           mov 0x15,r5
|           0x0ce30702      e680           mov.b r0,@(0x6,r14)
|           0x0ce30704      2c90           mov.w @(0x58,PC),r0
|           0x0ce30706      340e           mov.b r3,@(r0,r14)
|           0x0ce30708      19d3           mov.l @(0x64,PC),r3
|           0x0ce3070a      0b43           jsr @r3
|           0x0ce3070c      e364           mov r14,r4
|           0x0ce3070e      01e0           mov 0x01,r0
|           0x0ce30710      264f           lds.l @r15+,pr
|           0x0ce30712      0b00           rts 
\           0x0ce30714      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30716 70
|   fcn.0ce30716 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0xd0)
|           0x0ce30716      e62f           mov.l r14,@-r15
|           0x0ce30718      436e           mov r4,r14
|           0x0ce3071a      224f           sts.l pr,@-r15
|           0x0ce3071c      17d5           mov.l @(0x5C,PC),r5
|           0x0ce3071e      2196           mov.w @(0x42,PC),r6
|           0x0ce30720      17d3           mov.l @(0x5C,PC),r3
|           0x0ce30722      0b43           jsr @r3
|           0x0ce30724      ec36           add r14,r6
|           0x0ce30726      0c60           extu.b r0,r0
|           0x0ce30728      0820           tst r0,r0
|           0x0ce3072a      0489           bt 0x0ce30736
|           0x0ce3072c      1790           mov.w @(0x2E,PC),r0
|           0x0ce3072e      ee02           mov.l @(r0,r14),r2
|           0x0ce30730      2063           mov.b @r2,r3
|           0x0ce30732      3823           tst r3,r3
|           0x0ce30734      038b           bf 0x0ce3073e
|           ; CODE XREF from fcn.0ce30716 (0xce3072a)
|           0x0ce30736      264f           lds.l @r15+,pr
|           0x0ce30738      00e0           mov 0x00,r0
|           0x0ce3073a      0b00           rts 
|           0x0ce3073c      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30716 (0xce30734)
|           0x0ce3073e      00e0           mov 0x00,r0
|           0x0ce30740      e580           mov.b r0,@(0x5,r14)
|           0x0ce30742      14e3           mov 0x14,r3
|           0x0ce30744      e780           mov.b r0,@(0x7,r14)
|           0x0ce30746      1de5           mov 0x1D,r5
|           0x0ce30748      e680           mov.b r0,@(0x6,r14)
|           0x0ce3074a      0990           mov.w @(0x12,PC),r0
|           0x0ce3074c      340e           mov.b r3,@(r0,r14)
|           0x0ce3074e      08d3           mov.l @(0x20,PC),r3
|           0x0ce30750      0b43           jsr @r3
|           0x0ce30752      e364           mov r14,r4
|           0x0ce30754      01e0           mov 0x01,r0
|           0x0ce30756      264f           lds.l @r15+,pr
|           0x0ce30758      0b00           rts 
\           0x0ce3075a      f66e           mov.l @r15+,r14
            0x0ce3075c      9c03           mov.b @(r0,r9),r3
            0x0ce3075e      0c04           mov.b @(r0,r0),r4
            0x0ce30760      e901           .word 0x01E9
            0x0ce30762      a403           mov.b r10,@(r0,r3)
            0x0ce30764      ac03           mov.b @(r0,r10),r3
            0x0ce30766      0000           .word 0x0000
            0x0ce30768      .dword 0x0ce36cde ; aav.0x0ce36cde
            0x0ce3076c      584e           .word 0x4E58
            0x0ce3076e      058c           .word 0x8C05
            0x0ce30770      d830           sub r13,r0
            0x0ce30772      058c           .word 0x8C05
            0x0ce30774      .dword 0x0ce36cee ; aav.0x0ce36cee
            0x0ce30778      3a5c           mov.l @(0x28,r3),r12
            0x0ce3077a      058c           .word 0x8C05
            0x0ce3077c      .dword 0x0ce36cfe ; aav.0x0ce36cfe
            0x0ce30780      ac53           mov.l @(0x30,r10),r3
            0x0ce30782      058c           .word 0x8C05
/ (fcn) fcn.0ce30784 62
|   fcn.0ce30784 ();
|           ; CALL XREF from aav.0x0ce3001c (+0x12a)
|           0x0ce30784      e62f           mov.l r14,@-r15
|           0x0ce30786      436e           mov r4,r14
|           0x0ce30788      224f           sts.l pr,@-r15
|           0x0ce3078a      3dd5           mov.l @(0xF4,PC),r5
|           0x0ce3078c      7096           mov.w @(0xE0,PC),r6
|           0x0ce3078e      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce30790      0b43           jsr @r3
|           0x0ce30792      ec36           add r14,r6
|           0x0ce30794      0c60           extu.b r0,r0
|           0x0ce30796      0820           tst r0,r0
|           0x0ce30798      0589           bt 0x0ce307a6
|           0x0ce3079a      3bd2           mov.l @(0xEC,PC),r2
|           0x0ce3079c      0b42           jsr @r2
|           0x0ce3079e      e364           mov r14,r4
|           0x0ce307a0      0820           tst r0,r0
|           0x0ce307a2      048f           bf.s 0x0ce307ae
|           0x0ce307a4      0365           mov r0,r5
|           ; CODE XREF from fcn.0ce30784 (0xce30798)
|           0x0ce307a6      264f           lds.l @r15+,pr
|           0x0ce307a8      00e0           mov 0x00,r0
|           0x0ce307aa      0b00           rts 
|           0x0ce307ac      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30784 (0xce307a2)
|           0x0ce307ae      6190           mov.w @(0xC2,PC),r0
|           0x0ce307b0      5f92           mov.w @(0xBE,PC),r2
|           0x0ce307b2      36d3           mov.l @(0xD8,PC),r3
|           0x0ce307b4      240e           mov.b r2,@(r0,r14)
|           0x0ce307b6      0b43           jsr @r3
|           0x0ce307b8      e364           mov r14,r4
|           0x0ce307ba      01e0           mov 0x01,r0
|           0x0ce307bc      264f           lds.l @r15+,pr
|           0x0ce307be      0b00           rts 
\           0x0ce307c0      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce307c2 64
|   fcn.0ce307c2 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x134)
|           0x0ce307c2      e62f           mov.l r14,@-r15
|           0x0ce307c4      224f           sts.l pr,@-r15
|           0x0ce307c6      32d3           mov.l @(0xC8,PC),r3
|           0x0ce307c8      0b43           jsr @r3
|           0x0ce307ca      436e           mov r4,r14
|           0x0ce307cc      0820           tst r0,r0
|           0x0ce307ce      0489           bt 0x0ce307da
|           0x0ce307d0      5190           mov.w @(0xA2,PC),r0
|           0x0ce307d2      ee02           mov.l @(r0,r14),r2
|           0x0ce307d4      2063           mov.b @r2,r3
|           0x0ce307d6      3823           tst r3,r3
|           0x0ce307d8      038b           bf 0x0ce307e2
|           ; CODE XREF from fcn.0ce307c2 (0xce307ce)
|           0x0ce307da      264f           lds.l @r15+,pr
|           0x0ce307dc      00e0           mov 0x00,r0
|           0x0ce307de      0b00           rts 
|           0x0ce307e0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce307c2 (0xce307d8)
|           0x0ce307e2      4990           mov.w @(0x92,PC),r0
|           0x0ce307e4      15e3           mov 0x15,r3
|           0x0ce307e6      1de5           mov 0x1D,r5
|           0x0ce307e8      340e           mov.b r3,@(r0,r14)
|           0x0ce307ea      00e0           mov 0x00,r0
|           0x0ce307ec      29d3           mov.l @(0xA4,PC),r3
|           0x0ce307ee      e580           mov.b r0,@(0x5,r14)
|           0x0ce307f0      0b43           jsr @r3
|           0x0ce307f2      e364           mov r14,r4
|           0x0ce307f4      00e0           mov 0x00,r0
|           0x0ce307f6      e780           mov.b r0,@(0x7,r14)
|           0x0ce307f8      e680           mov.b r0,@(0x6,r14)
|           0x0ce307fa      01e0           mov 0x01,r0
|           0x0ce307fc      264f           lds.l @r15+,pr
|           0x0ce307fe      0b00           rts 
\           0x0ce30800      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30802 54
|   fcn.0ce30802 ();
|           ; CALL XREF from aav.0x0ce308da (+0x4)
|           0x0ce30802      e62f           mov.l r14,@-r15
|           0x0ce30804      436e           mov r4,r14
|           0x0ce30806      224f           sts.l pr,@-r15
|           0x0ce30808      23d5           mov.l @(0x8C,PC),r5
|           0x0ce3080a      3696           mov.w @(0x6C,PC),r6
|           0x0ce3080c      23d3           mov.l @(0x8C,PC),r3
|           0x0ce3080e      0b43           jsr @r3
|           0x0ce30810      ec36           add r14,r6
|           0x0ce30812      0c60           extu.b r0,r0
|           0x0ce30814      0820           tst r0,r0
|           0x0ce30816      0489           bt 0x0ce30822
|           0x0ce30818      2d90           mov.w @(0x5A,PC),r0
|           0x0ce3081a      ee02           mov.l @(r0,r14),r2
|           0x0ce3081c      2063           mov.b @r2,r3
|           0x0ce3081e      3823           tst r3,r3
|           0x0ce30820      038b           bf 0x0ce3082a
|           ; CODE XREF from fcn.0ce30802 (0xce30816)
|           0x0ce30822      264f           lds.l @r15+,pr
|           0x0ce30824      00e0           mov 0x00,r0
|           0x0ce30826      0b00           rts 
|           0x0ce30828      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30802 (0xce30820)
|           0x0ce3082a      2790           mov.w @(0x4E,PC),r0
|           0x0ce3082c      05e3           mov 0x05,r3
|           0x0ce3082e      340e           mov.b r3,@(r0,r14)
|           0x0ce30830      01e0           mov 0x01,r0
|           0x0ce30832      264f           lds.l @r15+,pr
|           0x0ce30834      0b00           rts 
\           0x0ce30836      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30838 56
|   fcn.0ce30838 ();
|           ; CALL XREF from aav.0x0ce308da (+0x14)
|           0x0ce30838      e62f           mov.l r14,@-r15
|           0x0ce3083a      436e           mov r4,r14
|           0x0ce3083c      224f           sts.l pr,@-r15
|           0x0ce3083e      18d5           mov.l @(0x60,PC),r5
|           0x0ce30840      1d96           mov.w @(0x3A,PC),r6
|           0x0ce30842      16d3           mov.l @(0x58,PC),r3
|           0x0ce30844      0b43           jsr @r3
|           0x0ce30846      ec36           add r14,r6
|           0x0ce30848      0c60           extu.b r0,r0
|           0x0ce3084a      0820           tst r0,r0
|           0x0ce3084c      0589           bt 0x0ce3085a
|           0x0ce3084e      1290           mov.w @(0x24,PC),r0
|           0x0ce30850      ee02           mov.l @(r0,r14),r2
|           0x0ce30852      2063           mov.b @r2,r3
|           0x0ce30854      03e2           mov 0x03,r2
|           0x0ce30856      2333           cmp/ge r2,r3
|           0x0ce30858      0389           bt 0x0ce30862
|           ; CODE XREF from fcn.0ce30838 (0xce3084c)
|           0x0ce3085a      264f           lds.l @r15+,pr
|           0x0ce3085c      00e0           mov 0x00,r0
|           0x0ce3085e      0b00           rts 
|           0x0ce30860      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30838 (0xce30858)
|           0x0ce30862      0b90           mov.w @(0x16,PC),r0
|           0x0ce30864      11e2           mov 0x11,r2
|           0x0ce30866      240e           mov.b r2,@(r0,r14)
|           0x0ce30868      01e0           mov 0x01,r0
|           0x0ce3086a      264f           lds.l @r15+,pr
|           0x0ce3086c      0b00           rts 
\           0x0ce3086e      f66e           mov.l @r15+,r14
            0x0ce30870      b403           mov.b r11,@(r0,r3)
            0x0ce30872      c900           .word 0x00C9
            0x0ce30874      f701           mul.l r15,r1
            0x0ce30876      0c04           mov.b @(r0,r0),r4
            0x0ce30878      e901           .word 0x01E9
            0x0ce3087a      8403           mov.b r8,@(r0,r3)
            0x0ce3087c      5802           .word 0x0258
            0x0ce3087e      9403           mov.b r9,@(r0,r3)
            0x0ce30880      .dword 0x0ce36d08 ; aav.0x0ce36d08
            0x0ce30884      584e           .word 0x4E58
            0x0ce30886      058c           .word 0x8C05
            0x0ce30888      9057           mov.l @(0x0,r9),r7
            0x0ce3088a      048c           .word 0x8C04
            0x0ce3088c      e022           mov.b r14,@r2
            0x0ce3088e      058c           .word 0x8C05
            0x0ce30890      1c4d           shad r1,r13
            0x0ce30892      058c           .word 0x8C05
            0x0ce30894      d830           sub r13,r0
            0x0ce30896      058c           .word 0x8C05
            0x0ce30898      .dword 0x0ce36cba ; aav.0x0ce36cba
            0x0ce3089c      ac53           mov.l @(0x30,r10),r3
            0x0ce3089e      058c           .word 0x8C05
            0x0ce308a0      .dword 0x0ce36cd4 ; aav.0x0ce36cd4
/ (fcn) fcn.0ce308a4 54
|   fcn.0ce308a4 ();
|           ; CALL XREF from aav.0x0ce308da (+0x20)
|           0x0ce308a4      e62f           mov.l r14,@-r15
|           0x0ce308a6      436e           mov r4,r14
|           0x0ce308a8      224f           sts.l pr,@-r15
|           0x0ce308aa      3dd5           mov.l @(0xF4,PC),r5
|           0x0ce308ac      6c96           mov.w @(0xD8,PC),r6
|           0x0ce308ae      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce308b0      0b43           jsr @r3
|           0x0ce308b2      ec36           add r14,r6
|           0x0ce308b4      0c60           extu.b r0,r0
|           0x0ce308b6      0820           tst r0,r0
|           0x0ce308b8      0489           bt 0x0ce308c4
|           0x0ce308ba      6690           mov.w @(0xCC,PC),r0
|           0x0ce308bc      ee02           mov.l @(r0,r14),r2
|           0x0ce308be      2063           mov.b @r2,r3
|           0x0ce308c0      3823           tst r3,r3
|           0x0ce308c2      038b           bf 0x0ce308cc
|           ; CODE XREF from fcn.0ce308a4 (0xce308b8)
|           0x0ce308c4      264f           lds.l @r15+,pr
|           0x0ce308c6      00e0           mov 0x00,r0
|           0x0ce308c8      0b00           rts 
|           0x0ce308ca      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce308a4 (0xce308c2)
|           0x0ce308cc      5e90           mov.w @(0xBC,PC),r0
|           0x0ce308ce      14e3           mov 0x14,r3
|           0x0ce308d0      340e           mov.b r3,@(r0,r14)
|           0x0ce308d2      01e0           mov 0x01,r0
|           0x0ce308d4      264f           lds.l @r15+,pr
|           0x0ce308d6      0b00           rts 
\           0x0ce308d8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce308da:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d4c)
            0x0ce308da      e62f           mov.l r14,@-r15
            0x0ce308dc      224f           sts.l pr,@-r15
            0x0ce308de      90bf           bsr fcn.0ce30802
            0x0ce308e0      436e           mov r4,r14
            0x0ce308e2      0820           tst r0,r0
            0x0ce308e4      0d8b           bf 0x0ce30902
            0x0ce308e6      5290           mov.w @(0xA4,PC),r0
            0x0ce308e8      ec03           mov.b @(r0,r14),r3
            0x0ce308ea      3823           tst r3,r3
            0x0ce308ec      058b           bf 0x0ce308fa
            0x0ce308ee      a3bf           bsr fcn.0ce30838
            0x0ce308f0      e364           mov r14,r4
            0x0ce308f2      0820           tst r0,r0
            0x0ce308f4      0989           bt 0x0ce3090a
            0x0ce308f6      04a0           bra 0x0ce30902
            0x0ce308f8      0900           nop 
            ; CODE XREF from aav.0x0ce308da (+0x12)
            0x0ce308fa      d3bf           bsr fcn.0ce308a4
            0x0ce308fc      e364           mov r14,r4
            0x0ce308fe      0820           tst r0,r0
            0x0ce30900      0389           bt 0x0ce3090a
            ; CODE XREFS from aav.0x0ce308da (+0xa, +0x1c)
            0x0ce30902      264f           lds.l @r15+,pr
            0x0ce30904      01e0           mov 0x01,r0
            0x0ce30906      0b00           rts 
            0x0ce30908      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce308da (+0x1a, +0x26)
            0x0ce3090a      00e0           mov 0x00,r0
            0x0ce3090c      264f           lds.l @r15+,pr
            0x0ce3090e      0b00           rts 
            0x0ce30910      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30912:
            ; UNKNOWN XREF from aav.0x0ce36d18 ()
            0x0ce30912      3d90           mov.w @(0x7A,PC),r0
            0x0ce30914      4c05           mov.b @(r0,r4),r5
            0x0ce30916      5c60           extu.b r5,r0
            0x0ce30918      1588           cmp/eq 0x15,r0
            0x0ce3091a      078d           bt.s 0x0ce3092c
            0x0ce3091c      0365           mov r0,r5
            0x0ce3091e      5360           mov r5,r0
            0x0ce30920      0900           nop 
            0x0ce30922      1d88           cmp/eq 0x1D,r0
            0x0ce30924      0289           bt 0x0ce3092c
            0x0ce30926      3490           mov.w @(0x68,PC),r0
            0x0ce30928      00e3           mov 0x00,r3
            0x0ce3092a      3404           mov.b r3,@(r0,r4)
            ; CODE XREFS from aav.0x0ce30912 (+0x8, +0x12)
            0x0ce3092c      0b00           rts 
            0x0ce3092e      0900           nop 
            ; CODE XREF from aav.0x0ce30c72 (+0x44)
            0x0ce30930      e62f           mov.l r14,@-r15
            0x0ce30932      436e           mov r4,r14
            0x0ce30934      2e90           mov.w @(0x5C,PC),r0
            0x0ce30936      d62f           mov.l r13,@-r15
            0x0ce30938      c62f           mov.l r12,@-r15
            0x0ce3093a      01ec           mov 0x01,r12
            0x0ce3093c      b62f           mov.l r11,@-r15
            0x0ce3093e      224f           sts.l pr,@-r15
            0x0ce30940      ec00           mov.b @(r0,r14),r0
            0x0ce30942      19db           mov.l @(0x64,PC),r11
            0x0ce30944      0c60           extu.b r0,r0
            0x0ce30946      0088           cmp/eq 0x00,r0
            0x0ce30948      068d           bt.s 0x0ce30958
            0x0ce3094a      00ed           mov 0x00,r13
            0x0ce3094c      0188           cmp/eq 0x01,r0
            0x0ce3094e      3e89           bt 0x0ce309ce
            0x0ce30950      0288           cmp/eq 0x02,r0
            0x0ce30952      4989           bt 0x0ce309e8
            0x0ce30954      52a0           bra 0x0ce309fc
            0x0ce30956      0900           nop 
            ; CODE XREF from aav.0x0ce30912 (+0x36)
            0x0ce30958      1d90           mov.w @(0x3A,PC),r0
            0x0ce3095a      1d92           mov.w @(0x3A,PC),r2
            0x0ce3095c      ed03           mov.w @(r0,r14),r3
            0x0ce3095e      3d63           extu.w r3,r3
            0x0ce30960      2823           tst r2,r3
            0x0ce30962      2589           bt 0x0ce309b0
            0x0ce30964      e684           mov.b @(0x6,r14),r0
            0x0ce30966      03e3           mov 0x03,r3
            0x0ce30968      17e1           mov 0x17,r1
            0x0ce3096a      0170           add 0x01,r0
            0x0ce3096c      e680           mov.b r0,@(0x6,r14)
            0x0ce3096e      14e5           mov 0x14,r5
            0x0ce30970      1390           mov.w @(0x26,PC),r0
            0x0ce30972      340e           mov.b r3,@(r0,r14)
            0x0ce30974      4970           add 0x49,r0
            0x0ce30976      140e           mov.b r1,@(r0,r14)
            0x0ce30978      0b4b           jsr @r11
            0x0ce3097a      e364           mov r14,r4
            0x0ce3097c      0e90           mov.w @(0x1C,PC),r0
            0x0ce3097e      0bd3           mov.l @(0x2C,PC),r3
            0x0ce30980      c40e           mov.b r12,@(r0,r14)
            0x0ce30982      0c90           mov.w @(0x18,PC),r0
            0x0ce30984      3aa0           bra 0x0ce309fc
            0x0ce30986      360e           mov.l r3,@(r0,r14)
            0x0ce30988      ac03           mov.b @(r0,r10),r3
            0x0ce3098a      0c04           mov.b @(r0,r0),r4
            0x0ce3098c      5802           .word 0x0258
            0x0ce3098e      0202           stc sr,r2
            0x0ce30990      d001           .word 0x01D0
            0x0ce30992      0502           mov.w r0,@(r0,r2)
            0x0ce30994      e801           .word 0x01E8
            0x0ce30996      fa01           .word 0x01FA
            0x0ce30998      0004           .word 0x0400
            0x0ce3099a      5801           .word 0x0158
            0x0ce3099c      a701           mul.l r10,r1
            0x0ce3099e      f403           mov.b r15,@(r0,r3)
            0x0ce309a0      .dword 0x0ce36cfe ; aav.0x0ce36cfe
            0x0ce309a4      ac53           mov.l @(0x30,r10),r3
            0x0ce309a6      058c           .word 0x8C05
            0x0ce309a8      3a22           xor r3,r2
            0x0ce309aa      048c           .word 0x8C04
            0x0ce309ac      .dword 0x0ce36c4c ; aav.0x0ce36c4c
            ; CODE XREF from aav.0x0ce30912 (+0x50)
            0x0ce309b0      9190           mov.w @(0x122,PC),r0
            0x0ce309b2      14e5           mov 0x14,r5
            0x0ce309b4      d40e           mov.b r13,@(r0,r14)
            0x0ce309b6      4970           add 0x49,r0
            0x0ce309b8      d40e           mov.b r13,@(r0,r14)
            0x0ce309ba      0b4b           jsr @r11
            0x0ce309bc      e364           mov r14,r4
            0x0ce309be      8b90           mov.w @(0x116,PC),r0
            0x0ce309c0      48d3           mov.l @(0x120,PC),r3
            0x0ce309c2      360e           mov.l r3,@(r0,r14)
            0x0ce309c4      8990           mov.w @(0x112,PC),r0
            0x0ce309c6      d40e           mov.b r13,@(r0,r14)
            0x0ce309c8      8890           mov.w @(0x110,PC),r0
            0x0ce309ca      17a0           bra 0x0ce309fc
            0x0ce309cc      c40e           mov.b r12,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x3c)
            0x0ce309ce      8290           mov.w @(0x104,PC),r0
            0x0ce309d0      15e5           mov 0x15,r5
            0x0ce309d2      c40e           mov.b r12,@(r0,r14)
            0x0ce309d4      4970           add 0x49,r0
            0x0ce309d6      c40e           mov.b r12,@(r0,r14)
            0x0ce309d8      0b4b           jsr @r11
            0x0ce309da      e364           mov r14,r4
            0x0ce309dc      7c90           mov.w @(0xF8,PC),r0
            0x0ce309de      42d3           mov.l @(0x108,PC),r3
            0x0ce309e0      360e           mov.l r3,@(r0,r14)
            0x0ce309e2      7a90           mov.w @(0xF4,PC),r0
            0x0ce309e4      0aa0           bra 0x0ce309fc
            0x0ce309e6      c40e           mov.b r12,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x40)
            0x0ce309e8      7590           mov.w @(0xEA,PC),r0
            0x0ce309ea      02e4           mov 0x02,r4
            0x0ce309ec      3fd3           mov.l @(0xFC,PC),r3
            0x0ce309ee      440e           mov.b r4,@(r0,r14)
            0x0ce309f0      4970           add 0x49,r0
            0x0ce309f2      440e           mov.b r4,@(r0,r14)
            0x0ce309f4      7090           mov.w @(0xE0,PC),r0
            0x0ce309f6      360e           mov.l r3,@(r0,r14)
            0x0ce309f8      6f90           mov.w @(0xDE,PC),r0
            0x0ce309fa      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30912 (+0x42, +0x72, +0xb8, +0xd2)
            0x0ce309fc      6f90           mov.w @(0xDE,PC),r0
            0x0ce309fe      07e5           mov 0x07,r5
            0x0ce30a00      3bd3           mov.l @(0xEC,PC),r3
            0x0ce30a02      e364           mov r14,r4
            0x0ce30a04      d50e           mov.w r13,@(r0,r14)
            0x0ce30a06      f270           add 0xF2,r0
            0x0ce30a08      d40e           mov.b r13,@(r0,r14)
            0x0ce30a0a      2670           add 0x26,r0
            0x0ce30a0c      d60e           mov.l r13,@(r0,r14)
            0x0ce30a0e      e284           mov.b @(0x2,r14),r0
            0x0ce30a10      3262           mov.l @r3,r2
            0x0ce30a12      0c60           extu.b r0,r0
            0x0ce30a14      0040           shll r0
            0x0ce30a16      7c72           add 0x7C,r2
            0x0ce30a18      2d01           mov.w @(r0,r2),r1
            0x0ce30a1a      0171           add 0x01,r1
            0x0ce30a1c      1502           mov.w r1,@(r0,r2)
            0x0ce30a1e      264f           lds.l @r15+,pr
            0x0ce30a20      5990           mov.w @(0xB2,PC),r0
            0x0ce30a22      34d2           mov.l @(0xD0,PC),r2
            0x0ce30a24      f66b           mov.l @r15+,r11
            0x0ce30a26      ec06           mov.b @(r0,r14),r6
            0x0ce30a28      f66c           mov.l @r15+,r12
            0x0ce30a2a      f66d           mov.l @r15+,r13
            ; CODE XREF from aav.0x0ce31394 (+0x140)
            0x0ce30a2c      2b42           jmp @r2
            0x0ce30a2e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30c72 (+0x3c)
            0x0ce30a30      5690           mov.w @(0xAC,PC),r0
            0x0ce30a32      e62f           mov.l r14,@-r15
            0x0ce30a34      436e           mov r4,r14
            0x0ce30a36      d62f           mov.l r13,@-r15
            0x0ce30a38      224f           sts.l pr,@-r15
            0x0ce30a3a      ec00           mov.b @(r0,r14),r0
            0x0ce30a3c      0c60           extu.b r0,r0
            0x0ce30a3e      0088           cmp/eq 0x00,r0
            0x0ce30a40      068d           bt.s 0x0ce30a50
            0x0ce30a42      00ed           mov 0x00,r13
            0x0ce30a44      0188           cmp/eq 0x01,r0
            0x0ce30a46      1289           bt 0x0ce30a6e
            0x0ce30a48      0288           cmp/eq 0x02,r0
            0x0ce30a4a      2189           bt 0x0ce30a90
            0x0ce30a4c      2ba0           bra 0x0ce30aa6
            0x0ce30a4e      0900           nop 
            ; CODE XREF from aav.0x0ce30912 (+0x12e)
            0x0ce30a50      4190           mov.w @(0x82,PC),r0
            0x0ce30a52      06e3           mov 0x06,r3
            0x0ce30a54      14e5           mov 0x14,r5
            0x0ce30a56      d40e           mov.b r13,@(r0,r14)
            0x0ce30a58      4970           add 0x49,r0
            0x0ce30a5a      340e           mov.b r3,@(r0,r14)
            0x0ce30a5c      26d3           mov.l @(0x98,PC),r3
            0x0ce30a5e      0b43           jsr @r3
            0x0ce30a60      e364           mov r14,r4
            0x0ce30a62      3990           mov.w @(0x72,PC),r0
            0x0ce30a64      1fd2           mov.l @(0x7C,PC),r2
            0x0ce30a66      260e           mov.l r2,@(r0,r14)
            0x0ce30a68      3790           mov.w @(0x6E,PC),r0
            0x0ce30a6a      1ca0           bra 0x0ce30aa6
            0x0ce30a6c      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x134)
            0x0ce30a6e      3290           mov.w @(0x64,PC),r0
            0x0ce30a70      01e2           mov 0x01,r2
            0x0ce30a72      07e3           mov 0x07,r3
            0x0ce30a74      240e           mov.b r2,@(r0,r14)
            0x0ce30a76      4970           add 0x49,r0
            0x0ce30a78      340e           mov.b r3,@(r0,r14)
            0x0ce30a7a      15e5           mov 0x15,r5
            0x0ce30a7c      1ed3           mov.l @(0x78,PC),r3
            0x0ce30a7e      0b43           jsr @r3
            0x0ce30a80      e364           mov r14,r4
            0x0ce30a82      2990           mov.w @(0x52,PC),r0
            0x0ce30a84      01e3           mov 0x01,r3
            0x0ce30a86      18d2           mov.l @(0x60,PC),r2
            0x0ce30a88      260e           mov.l r2,@(r0,r14)
            0x0ce30a8a      2690           mov.w @(0x4C,PC),r0
            0x0ce30a8c      0ba0           bra 0x0ce30aa6
            0x0ce30a8e      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x138)
            0x0ce30a90      2190           mov.w @(0x42,PC),r0
            0x0ce30a92      02e4           mov 0x02,r4
            0x0ce30a94      08e3           mov 0x08,r3
            0x0ce30a96      15d2           mov.l @(0x54,PC),r2
            0x0ce30a98      440e           mov.b r4,@(r0,r14)
            0x0ce30a9a      4970           add 0x49,r0
            0x0ce30a9c      340e           mov.b r3,@(r0,r14)
            0x0ce30a9e      1b90           mov.w @(0x36,PC),r0
            0x0ce30aa0      260e           mov.l r2,@(r0,r14)
            0x0ce30aa2      1a90           mov.w @(0x34,PC),r0
            0x0ce30aa4      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30912 (+0x13a, +0x158, +0x17a)
            0x0ce30aa6      1a90           mov.w @(0x34,PC),r0
            0x0ce30aa8      09e5           mov 0x09,r5
            0x0ce30aaa      11d3           mov.l @(0x44,PC),r3
            0x0ce30aac      e364           mov r14,r4
            0x0ce30aae      d50e           mov.w r13,@(r0,r14)
            0x0ce30ab0      f270           add 0xF2,r0
            0x0ce30ab2      d40e           mov.b r13,@(r0,r14)
            0x0ce30ab4      2670           add 0x26,r0
            0x0ce30ab6      d60e           mov.l r13,@(r0,r14)
            0x0ce30ab8      e284           mov.b @(0x2,r14),r0
            0x0ce30aba      3262           mov.l @r3,r2
            0x0ce30abc      0c60           extu.b r0,r0
            0x0ce30abe      0040           shll r0
            0x0ce30ac0      7c72           add 0x7C,r2
            0x0ce30ac2      2d01           mov.w @(r0,r2),r1
            0x0ce30ac4      0171           add 0x01,r1
            0x0ce30ac6      1502           mov.w r1,@(r0,r2)
            0x0ce30ac8      264f           lds.l @r15+,pr
            0x0ce30aca      0490           mov.w @(0x8,PC),r0
            0x0ce30acc      09d2           mov.l @(0x24,PC),r2
            0x0ce30ace      f66d           mov.l @r15+,r13
            0x0ce30ad0      ec06           mov.b @(r0,r14),r6
            0x0ce30ad2      2b42           jmp @r2
            0x0ce30ad4      f66e           mov.l @r15+,r14
            0x0ce30ad6      5801           .word 0x0158
            0x0ce30ad8      f403           mov.b r15,@(r0,r3)
            0x0ce30ada      a701           mul.l r10,r1
            0x0ce30adc      a202           stc r2_bank,r2
            0x0ce30ade      ac01           mov.b @(r0,r10),r1
            0x0ce30ae0      e801           .word 0x01E8
            0x0ce30ae2      0000           .word 0x0000
            0x0ce30ae4      .dword 0x0ce36c44 ; aav.0x0ce36c44
            0x0ce30ae8      .dword 0x0ce36c48 ; aav.0x0ce36c48
            0x0ce30aec      .dword 0x0ce36c4c ; aav.0x0ce36c4c
            0x0ce30af0      b096           mov.w @(0x160,PC),r6
            0x0ce30af2      288c           .word 0x8C28
            0x0ce30af4      8c4e           shad r8,r14
            0x0ce30af6      038c           .word 0x8C03
            0x0ce30af8      3a22           xor r3,r2
            0x0ce30afa      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce30c72 (+0x2a)
            0x0ce30afc      8490           mov.w @(0x108,PC),r0
            0x0ce30afe      e62f           mov.l r14,@-r15
            0x0ce30b00      436e           mov r4,r14
            0x0ce30b02      d62f           mov.l r13,@-r15
            0x0ce30b04      c62f           mov.l r12,@-r15
            0x0ce30b06      224f           sts.l pr,@-r15
            0x0ce30b08      ec00           mov.b @(r0,r14),r0
            0x0ce30b0a      42dc           mov.l @(0x108,PC),r12
            0x0ce30b0c      0c60           extu.b r0,r0
            0x0ce30b0e      0088           cmp/eq 0x00,r0
            0x0ce30b10      068d           bt.s 0x0ce30b20
            0x0ce30b12      00ed           mov 0x00,r13
            0x0ce30b14      0188           cmp/eq 0x01,r0
            0x0ce30b16      1189           bt 0x0ce30b3c
            0x0ce30b18      0288           cmp/eq 0x02,r0
            0x0ce30b1a      1d89           bt 0x0ce30b58
            0x0ce30b1c      2ba0           bra 0x0ce30b76
            0x0ce30b1e      0900           nop 
            ; CODE XREF from aav.0x0ce30912 (+0x1fe)
            0x0ce30b20      7390           mov.w @(0xE6,PC),r0
            0x0ce30b22      03e3           mov 0x03,r3
            0x0ce30b24      14e5           mov 0x14,r5
            0x0ce30b26      d40e           mov.b r13,@(r0,r14)
            0x0ce30b28      4970           add 0x49,r0
            0x0ce30b2a      340e           mov.b r3,@(r0,r14)
            0x0ce30b2c      0b4c           jsr @r12
            0x0ce30b2e      e364           mov r14,r4
            0x0ce30b30      6c90           mov.w @(0xD8,PC),r0
            0x0ce30b32      39d3           mov.l @(0xE4,PC),r3
            0x0ce30b34      360e           mov.l r3,@(r0,r14)
            0x0ce30b36      6a90           mov.w @(0xD4,PC),r0
            0x0ce30b38      1da0           bra 0x0ce30b76
            0x0ce30b3a      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x204)
            0x0ce30b3c      6590           mov.w @(0xCA,PC),r0
            0x0ce30b3e      01e2           mov 0x01,r2
            0x0ce30b40      04e3           mov 0x04,r3
            0x0ce30b42      240e           mov.b r2,@(r0,r14)
            0x0ce30b44      4970           add 0x49,r0
            0x0ce30b46      15e5           mov 0x15,r5
            0x0ce30b48      340e           mov.b r3,@(r0,r14)
            0x0ce30b4a      0b4c           jsr @r12
            0x0ce30b4c      e364           mov r14,r4
            0x0ce30b4e      5d90           mov.w @(0xBA,PC),r0
            0x0ce30b50      32d3           mov.l @(0xC8,PC),r3
            0x0ce30b52      360e           mov.l r3,@(r0,r14)
            0x0ce30b54      0da0           bra 0x0ce30b72
            0x0ce30b56      01e2           mov 0x01,r2
            ; CODE XREF from aav.0x0ce30912 (+0x208)
            0x0ce30b58      5790           mov.w @(0xAE,PC),r0
            0x0ce30b5a      02e1           mov 0x02,r1
            0x0ce30b5c      05e3           mov 0x05,r3
            0x0ce30b5e      140e           mov.b r1,@(r0,r14)
            0x0ce30b60      4970           add 0x49,r0
            0x0ce30b62      16e5           mov 0x16,r5
            0x0ce30b64      340e           mov.b r3,@(r0,r14)
            0x0ce30b66      0b4c           jsr @r12
            0x0ce30b68      e364           mov r14,r4
            0x0ce30b6a      4f90           mov.w @(0x9E,PC),r0
            0x0ce30b6c      02e2           mov 0x02,r2
            0x0ce30b6e      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30b70      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x242)
            0x0ce30b72      4c90           mov.w @(0x98,PC),r0
            0x0ce30b74      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30912 (+0x20a, +0x226)
            0x0ce30b76      4b90           mov.w @(0x96,PC),r0
            0x0ce30b78      08e5           mov 0x08,r5
            0x0ce30b7a      2ad3           mov.l @(0xA8,PC),r3
            0x0ce30b7c      e364           mov r14,r4
            0x0ce30b7e      d50e           mov.w r13,@(r0,r14)
            0x0ce30b80      f270           add 0xF2,r0
            0x0ce30b82      d40e           mov.b r13,@(r0,r14)
            0x0ce30b84      2670           add 0x26,r0
            0x0ce30b86      d60e           mov.l r13,@(r0,r14)
            0x0ce30b88      e284           mov.b @(0x2,r14),r0
            0x0ce30b8a      3262           mov.l @r3,r2
            0x0ce30b8c      0c60           extu.b r0,r0
            0x0ce30b8e      0040           shll r0
            0x0ce30b90      7c72           add 0x7C,r2
            0x0ce30b92      2d01           mov.w @(r0,r2),r1
            0x0ce30b94      0171           add 0x01,r1
            0x0ce30b96      1502           mov.w r1,@(r0,r2)
            0x0ce30b98      264f           lds.l @r15+,pr
            0x0ce30b9a      3690           mov.w @(0x6C,PC),r0
            0x0ce30b9c      22d2           mov.l @(0x88,PC),r2
            0x0ce30b9e      f66c           mov.l @r15+,r12
            0x0ce30ba0      ec06           mov.b @(r0,r14),r6
            0x0ce30ba2      f66d           mov.l @r15+,r13
            0x0ce30ba4      2b42           jmp @r2
            0x0ce30ba6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30c72 (+0x22)
            0x0ce30ba8      2e90           mov.w @(0x5C,PC),r0
            0x0ce30baa      e62f           mov.l r14,@-r15
            0x0ce30bac      436e           mov r4,r14
            0x0ce30bae      d62f           mov.l r13,@-r15
            0x0ce30bb0      224f           sts.l pr,@-r15
            0x0ce30bb2      ec00           mov.b @(r0,r14),r0
            0x0ce30bb4      0c60           extu.b r0,r0
            0x0ce30bb6      0088           cmp/eq 0x00,r0
            0x0ce30bb8      068d           bt.s 0x0ce30bc8
            0x0ce30bba      00ed           mov 0x00,r13
            0x0ce30bbc      0188           cmp/eq 0x01,r0
            0x0ce30bbe      1289           bt 0x0ce30be6
            0x0ce30bc0      0288           cmp/eq 0x02,r0
            0x0ce30bc2      3389           bt 0x0ce30c2c
            0x0ce30bc4      3da0           bra 0x0ce30c42
            0x0ce30bc6      0900           nop 
            ; CODE XREF from aav.0x0ce30912 (+0x2a6)
            0x0ce30bc8      1f90           mov.w @(0x3E,PC),r0
            0x0ce30bca      09e3           mov 0x09,r3
            0x0ce30bcc      14e5           mov 0x14,r5
            0x0ce30bce      d40e           mov.b r13,@(r0,r14)
            0x0ce30bd0      4970           add 0x49,r0
            0x0ce30bd2      340e           mov.b r3,@(r0,r14)
            0x0ce30bd4      0fd3           mov.l @(0x3C,PC),r3
            0x0ce30bd6      0b43           jsr @r3
            0x0ce30bd8      e364           mov r14,r4
            0x0ce30bda      1790           mov.w @(0x2E,PC),r0
            0x0ce30bdc      0ed2           mov.l @(0x38,PC),r2
            0x0ce30bde      260e           mov.l r2,@(r0,r14)
            0x0ce30be0      1590           mov.w @(0x2A,PC),r0
            0x0ce30be2      2ea0           bra 0x0ce30c42
            0x0ce30be4      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce30912 (+0x2ac)
            0x0ce30be6      1090           mov.w @(0x20,PC),r0
            0x0ce30be8      01e2           mov 0x01,r2
            0x0ce30bea      0ae3           mov 0x0A,r3
            0x0ce30bec      240e           mov.b r2,@(r0,r14)
            0x0ce30bee      4970           add 0x49,r0
            0x0ce30bf0      340e           mov.b r3,@(r0,r14)
            0x0ce30bf2      15e5           mov 0x15,r5
            0x0ce30bf4      07d3           mov.l @(0x1C,PC),r3
            0x0ce30bf6      0b43           jsr @r3
            0x0ce30bf8      e364           mov r14,r4
            0x0ce30bfa      0790           mov.w @(0xE,PC),r0
            0x0ce30bfc      01e3           mov 0x01,r3
            0x0ce30bfe      07d2           mov.l @(0x1C,PC),r2
            0x0ce30c00      260e           mov.l r2,@(r0,r14)
            0x0ce30c02      0490           mov.w @(0x8,PC),r0
            0x0ce30c04      1da0           bra 0x0ce30c42
            0x0ce30c06      340e           mov.b r3,@(r0,r14)
            0x0ce30c08      e801           .word 0x01E8
            0x0ce30c0a      5801           .word 0x0158
            0x0ce30c0c      f403           mov.b r15,@(r0,r3)
            0x0ce30c0e      a701           mul.l r10,r1
            0x0ce30c10      ac01           mov.b @(r0,r10),r1
            0x0ce30c12      0000           .word 0x0000
            0x0ce30c14      3a22           xor r3,r2
            0x0ce30c16      048c           .word 0x8C04
            0x0ce30c18      .dword 0x0ce36c50 ; aav.0x0ce36c50
            0x0ce30c1c      .dword 0x0ce36c54 ; aav.0x0ce36c54
            0x0ce30c20      .dword 0x0ce36c58 ; aav.0x0ce36c58
            0x0ce30c24      b096           mov.w @(0x160,PC),r6
            0x0ce30c26      288c           .word 0x8C28
            0x0ce30c28      8c4e           shad r8,r14
            0x0ce30c2a      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce30912 (+0x2b0)
            0x0ce30c2c      8990           mov.w @(0x112,PC),r0
            0x0ce30c2e      02e4           mov 0x02,r4
            0x0ce30c30      0be3           mov 0x0B,r3
            0x0ce30c32      49d2           mov.l @(0x124,PC),r2
            0x0ce30c34      440e           mov.b r4,@(r0,r14)
            0x0ce30c36      4970           add 0x49,r0
            0x0ce30c38      340e           mov.b r3,@(r0,r14)
            0x0ce30c3a      8390           mov.w @(0x106,PC),r0
            0x0ce30c3c      260e           mov.l r2,@(r0,r14)
            0x0ce30c3e      8290           mov.w @(0x104,PC),r0
            0x0ce30c40      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30912 (+0x2b2, +0x2d0, +0x2f2)
            0x0ce30c42      8190           mov.w @(0x102,PC),r0
            0x0ce30c44      0ae5           mov 0x0A,r5
            0x0ce30c46      45d3           mov.l @(0x114,PC),r3
            0x0ce30c48      e364           mov r14,r4
            0x0ce30c4a      d50e           mov.w r13,@(r0,r14)
            0x0ce30c4c      f270           add 0xF2,r0
            0x0ce30c4e      d40e           mov.b r13,@(r0,r14)
            0x0ce30c50      2670           add 0x26,r0
            0x0ce30c52      d60e           mov.l r13,@(r0,r14)
            0x0ce30c54      e284           mov.b @(0x2,r14),r0
            0x0ce30c56      3262           mov.l @r3,r2
            0x0ce30c58      0c60           extu.b r0,r0
            0x0ce30c5a      0040           shll r0
            0x0ce30c5c      7c72           add 0x7C,r2
            0x0ce30c5e      2d01           mov.w @(r0,r2),r1
            0x0ce30c60      0171           add 0x01,r1
            0x0ce30c62      1502           mov.w r1,@(r0,r2)
            0x0ce30c64      264f           lds.l @r15+,pr
            0x0ce30c66      6c90           mov.w @(0xD8,PC),r0
            0x0ce30c68      3dd2           mov.l @(0xF4,PC),r2
            0x0ce30c6a      f66d           mov.l @r15+,r13
            0x0ce30c6c      ec06           mov.b @(r0,r14),r6
            0x0ce30c6e      2b42           jmp @r2
            0x0ce30c70      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30c72:
            ; CODE XREF from aav.0x0ce31112 ()
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d88)
            0x0ce30c72      e62f           mov.l r14,@-r15
            0x0ce30c74      224f           sts.l pr,@-r15
            0x0ce30c76      3bd3           mov.l @(0xEC,PC),r3
            0x0ce30c78      0b43           jsr @r3
            0x0ce30c7a      436e           mov r4,r14
            0x0ce30c7c      6590           mov.w @(0xCA,PC),r0
            0x0ce30c7e      ec00           mov.b @(r0,r14),r0
            0x0ce30c80      0c60           extu.b r0,r0
            0x0ce30c82      0188           cmp/eq 0x01,r0
            0x0ce30c84      0c8b           bf 0x0ce30ca0
            0x0ce30c86      6190           mov.w @(0xC2,PC),r0
            0x0ce30c88      ec00           mov.b @(r0,r14),r0
            0x0ce30c8a      0c60           extu.b r0,r0
            0x0ce30c8c      0188           cmp/eq 0x01,r0
            0x0ce30c8e      038b           bf 0x0ce30c98
            0x0ce30c90      264f           lds.l @r15+,pr
            0x0ce30c92      e364           mov r14,r4
            0x0ce30c94      88af           bra 0x0ce30ba8
            0x0ce30c96      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30c72 (+0x1c)
            0x0ce30c98      264f           lds.l @r15+,pr
            0x0ce30c9a      e364           mov r14,r4
            0x0ce30c9c      2eaf           bra 0x0ce30afc
            0x0ce30c9e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30c72 (+0x12)
            0x0ce30ca0      5490           mov.w @(0xA8,PC),r0
            0x0ce30ca2      ec00           mov.b @(r0,r14),r0
            0x0ce30ca4      0c60           extu.b r0,r0
            0x0ce30ca6      0188           cmp/eq 0x01,r0
            0x0ce30ca8      038b           bf 0x0ce30cb2
            0x0ce30caa      264f           lds.l @r15+,pr
            0x0ce30cac      e364           mov r14,r4
            0x0ce30cae      bfae           bra 0x0ce30a30
            0x0ce30cb0      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30c72 (+0x36)
            0x0ce30cb2      264f           lds.l @r15+,pr
            0x0ce30cb4      e364           mov r14,r4
            0x0ce30cb6      3bae           bra 0x0ce30930
            0x0ce30cb8      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce310d8 (+0xe)
            0x0ce30cba      e62f           mov.l r14,@-r15
            0x0ce30cbc      436e           mov r4,r14
            0x0ce30cbe      d62f           mov.l r13,@-r15
            0x0ce30cc0      00ed           mov 0x00,r13
            0x0ce30cc2      4590           mov.w @(0x8A,PC),r0
            0x0ce30cc4      c62f           mov.l r12,@-r15
            0x0ce30cc6      b62f           mov.l r11,@-r15
            0x0ce30cc8      a62f           mov.l r10,@-r15
            0x0ce30cca      02ea           mov 0x02,r10
            0x0ce30ccc      224f           sts.l pr,@-r15
            0x0ce30cce      ec00           mov.b @(r0,r14),r0
            0x0ce30cd0      25db           mov.l @(0x94,PC),r11
            0x0ce30cd2      3c94           mov.w @(0x78,PC),r4
            0x0ce30cd4      0c60           extu.b r0,r0
            0x0ce30cd6      0088           cmp/eq 0x00,r0
            0x0ce30cd8      088d           bt.s 0x0ce30cec
            0x0ce30cda      01ec           mov 0x01,r12
            0x0ce30cdc      0188           cmp/eq 0x01,r0
            0x0ce30cde      5b89           bt 0x0ce30d98
            0x0ce30ce0      0288           cmp/eq 0x02,r0
            0x0ce30ce2      018b           bf 0x0ce30ce8
            0x0ce30ce4      9ca0           bra 0x0ce30e20
            0x0ce30ce6      0900           nop 
            ; CODE XREF from aav.0x0ce30c72 (+0x70)
            0x0ce30ce8      ffa0           bra 0x0ce30eea
            0x0ce30cea      0900           nop 
            ; CODE XREF from aav.0x0ce30c72 (+0x66)
            0x0ce30cec      3190           mov.w @(0x62,PC),r0
            0x0ce30cee      ed03           mov.w @(r0,r14),r3
            0x0ce30cf0      3d63           extu.w r3,r3
            0x0ce30cf2      4823           tst r4,r3
            0x0ce30cf4      3a89           bt 0x0ce30d6c
            0x0ce30cf6      a360           mov r10,r0
            0x0ce30cf8      0900           nop 
            0x0ce30cfa      e680           mov.b r0,@(0x6,r14)
            0x0ce30cfc      d360           mov r13,r0
            0x0ce30cfe      0900           nop 
            0x0ce30d00      e780           mov.b r0,@(0x7,r14)
            0x0ce30d02      0fe3           mov 0x0F,r3
            0x0ce30d04      2690           mov.w @(0x4C,PC),r0
            0x0ce30d06      15e1           mov 0x15,r1
            0x0ce30d08      8df4           fldi0 fr4
            0x0ce30d0a      16e5           mov 0x16,r5
            0x0ce30d0c      ec02           mov.b @(r0,r14),r2
            0x0ce30d0e      3922           and r3,r2
            0x0ce30d10      240e           mov.b r2,@(r0,r14)
            0x0ce30d12      5ce0           mov 0x5C,r0
            0x0ce30d14      47fe           fmov fr4,@(r0,r14)
            0x0ce30d16      60e0           mov 0x60,r0
            0x0ce30d18      47fe           fmov fr4,@(r0,r14)
            0x0ce30d1a      68e0           mov 0x68,r0
            0x0ce30d1c      47fe           fmov fr4,@(r0,r14)
            0x0ce30d1e      6ce0           mov 0x6C,r0
            0x0ce30d20      47fe           fmov fr4,@(r0,r14)
            0x0ce30d22      08e2           mov 0x08,r2
            0x0ce30d24      0d90           mov.w @(0x1A,PC),r0
            0x0ce30d26      240e           mov.b r2,@(r0,r14)
            0x0ce30d28      4970           add 0x49,r0
            0x0ce30d2a      140e           mov.b r1,@(r0,r14)
            0x0ce30d2c      0b4b           jsr @r11
            0x0ce30d2e      e364           mov r14,r4
            0x0ce30d30      0990           mov.w @(0x12,PC),r0
            0x0ce30d32      c40e           mov.b r12,@(r0,r14)
            0x0ce30d34      5570           add 0x55,r0
            0x0ce30d36      d40e           mov.b r13,@(r0,r14)
            0x0ce30d38      ec03           mov.b @(r0,r14),r3
            0x0ce30d3a      3823           tst r3,r3
            0x0ce30d3c      5289           bt 0x0ce30de4
            0x0ce30d3e      55a0           bra 0x0ce30dec
            0x0ce30d40      0900           nop 
            0x0ce30d42      5801           .word 0x0158
            0x0ce30d44      f403           mov.b r15,@(r0,r3)
            0x0ce30d46      a701           mul.l r10,r1
            0x0ce30d48      ac01           mov.b @(r0,r10),r1
            0x0ce30d4a      fe01           mov.l @(r0,r15),r1
            0x0ce30d4c      f901           .word 0x01F9
            0x0ce30d4e      0010           mov.l r0,@(0x0,r0)
            0x0ce30d50      e801           .word 0x01E8
            0x0ce30d52      fa01           .word 0x01FA
            0x0ce30d54      d601           mov.l r13,@(r0,r1)
            0x0ce30d56      0000           .word 0x0000
            0x0ce30d58      .dword 0x0ce36c58 ; aav.0x0ce36c58
            0x0ce30d5c      b096           mov.w @(0x160,PC),r6
            0x0ce30d5e      288c           .word 0x8C28
            0x0ce30d60      8c4e           shad r8,r14
            0x0ce30d62      038c           .word 0x8C03
            0x0ce30d64      4c2b           cmp/str r4,r11
            0x0ce30d66      058c           .word 0x8C05
            0x0ce30d68      3a22           xor r3,r2
            0x0ce30d6a      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce30c72 (+0x82)
            0x0ce30d6c      6b90           mov.w @(0xD6,PC),r0
            0x0ce30d6e      0ce3           mov 0x0C,r3
            0x0ce30d70      14e5           mov 0x14,r5
            0x0ce30d72      d40e           mov.b r13,@(r0,r14)
            0x0ce30d74      4970           add 0x49,r0
            0x0ce30d76      340e           mov.b r3,@(r0,r14)
            0x0ce30d78      0b4b           jsr @r11
            0x0ce30d7a      e364           mov r14,r4
            0x0ce30d7c      6490           mov.w @(0xC8,PC),r0
            0x0ce30d7e      ec03           mov.b @(r0,r14),r3
            0x0ce30d80      3823           tst r3,r3
            0x0ce30d82      038b           bf 0x0ce30d8c
            0x0ce30d84      6190           mov.w @(0xC2,PC),r0
            0x0ce30d86      35d3           mov.l @(0xD4,PC),r3
            0x0ce30d88      03a0           bra 0x0ce30d92
            0x0ce30d8a      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x110)
            0x0ce30d8c      5d90           mov.w @(0xBA,PC),r0
            0x0ce30d8e      34d1           mov.l @(0xD0,PC),r1
            0x0ce30d90      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x116)
            0x0ce30d92      5b90           mov.w @(0xB6,PC),r0
            0x0ce30d94      a9a0           bra 0x0ce30eea
            0x0ce30d96      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x6c)
            0x0ce30d98      5990           mov.w @(0xB2,PC),r0
            0x0ce30d9a      5993           mov.w @(0xB2,PC),r3
            0x0ce30d9c      ed02           mov.w @(r0,r14),r2
            0x0ce30d9e      2d62           extu.w r2,r2
            0x0ce30da0      3822           tst r3,r2
            0x0ce30da2      2789           bt 0x0ce30df4
            0x0ce30da4      c360           mov r12,r0
            0x0ce30da6      0900           nop 
            0x0ce30da8      e680           mov.b r0,@(0x6,r14)
            0x0ce30daa      d360           mov r13,r0
            0x0ce30dac      0900           nop 
            0x0ce30dae      e780           mov.b r0,@(0x7,r14)
            0x0ce30db0      0fe2           mov 0x0F,r2
            0x0ce30db2      4e90           mov.w @(0x9C,PC),r0
            0x0ce30db4      ec01           mov.b @(r0,r14),r1
            0x0ce30db6      2921           and r2,r1
            0x0ce30db8      140e           mov.b r1,@(r0,r14)
            0x0ce30dba      4b90           mov.w @(0x96,PC),r0
            0x0ce30dbc      e6f3           fmov @(r0,r14),fr3
            0x0ce30dbe      38e0           mov 0x38,r0
            0x0ce30dc0      e6f2           fmov @(r0,r14),fr2
            0x0ce30dc2      25f3           fcmp/gt fr2,fr3
            0x0ce30dc4      6f89           bt 0x0ce30ea6
            0x0ce30dc6      3e90           mov.w @(0x7C,PC),r0
            0x0ce30dc8      06e3           mov 0x06,r3
            0x0ce30dca      13e2           mov 0x13,r2
            0x0ce30dcc      340e           mov.b r3,@(r0,r14)
            0x0ce30dce      4970           add 0x49,r0
            0x0ce30dd0      16e5           mov 0x16,r5
            0x0ce30dd2      240e           mov.b r2,@(r0,r14)
            0x0ce30dd4      0b4b           jsr @r11
            0x0ce30dd6      e364           mov r14,r4
            0x0ce30dd8      3890           mov.w @(0x70,PC),r0
            0x0ce30dda      c40e           mov.b r12,@(r0,r14)
            0x0ce30ddc      5570           add 0x55,r0
            0x0ce30dde      ec03           mov.b @(r0,r14),r3
            0x0ce30de0      3823           tst r3,r3
            0x0ce30de2      038b           bf 0x0ce30dec
            ; CODE XREF from aav.0x0ce30c72 (+0xca)
            0x0ce30de4      3190           mov.w @(0x62,PC),r0
            0x0ce30de6      1fd3           mov.l @(0x7C,PC),r3
            0x0ce30de8      7fa0           bra 0x0ce30eea
            0x0ce30dea      360e           mov.l r3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30c72 (+0xcc, +0x170)
            0x0ce30dec      2d90           mov.w @(0x5A,PC),r0
            0x0ce30dee      1ed1           mov.l @(0x78,PC),r1
            0x0ce30df0      7ba0           bra 0x0ce30eea
            0x0ce30df2      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x130)
            0x0ce30df4      2790           mov.w @(0x4E,PC),r0
            0x0ce30df6      0de2           mov 0x0D,r2
            0x0ce30df8      15e5           mov 0x15,r5
            0x0ce30dfa      c40e           mov.b r12,@(r0,r14)
            0x0ce30dfc      4970           add 0x49,r0
            0x0ce30dfe      240e           mov.b r2,@(r0,r14)
            0x0ce30e00      0b4b           jsr @r11
            0x0ce30e02      e364           mov r14,r4
            0x0ce30e04      2090           mov.w @(0x40,PC),r0
            0x0ce30e06      ec03           mov.b @(r0,r14),r3
            0x0ce30e08      3823           tst r3,r3
            0x0ce30e0a      038b           bf 0x0ce30e14
            0x0ce30e0c      1d90           mov.w @(0x3A,PC),r0
            0x0ce30e0e      17d3           mov.l @(0x5C,PC),r3
            0x0ce30e10      03a0           bra 0x0ce30e1a
            0x0ce30e12      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x198)
            0x0ce30e14      1990           mov.w @(0x32,PC),r0
            0x0ce30e16      16d1           mov.l @(0x58,PC),r1
            0x0ce30e18      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x19e)
            0x0ce30e1a      1790           mov.w @(0x2E,PC),r0
            0x0ce30e1c      65a0           bra 0x0ce30eea
            0x0ce30e1e      c40e           mov.b r12,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x72)
            0x0ce30e20      1590           mov.w @(0x2A,PC),r0
            0x0ce30e22      1893           mov.w @(0x30,PC),r3
            0x0ce30e24      ed02           mov.w @(r0,r14),r2
            0x0ce30e26      2d62           extu.w r2,r2
            0x0ce30e28      3822           tst r3,r2
            0x0ce30e2a      2389           bt 0x0ce30e74
            0x0ce30e2c      1290           mov.w @(0x24,PC),r0
            0x0ce30e2e      e6f3           fmov @(r0,r14),fr3
            0x0ce30e30      38e0           mov 0x38,r0
            0x0ce30e32      e6f2           fmov @(r0,r14),fr2
            0x0ce30e34      25f3           fcmp/gt fr2,fr3
            0x0ce30e36      3689           bt 0x0ce30ea6
            0x0ce30e38      0e90           mov.w @(0x1C,PC),r0
            0x0ce30e3a      12e3           mov 0x12,r3
            0x0ce30e3c      05e2           mov 0x05,r2
            0x0ce30e3e      340e           mov.b r3,@(r0,r14)
            0x0ce30e40      b770           add 0xB7,r0
            0x0ce30e42      42a0           bra 0x0ce30eca
            0x0ce30e44      240e           mov.b r2,@(r0,r14)
            0x0ce30e46      5801           .word 0x0158
            0x0ce30e48      fc01           mov.b @(r0,r15),r1
            0x0ce30e4a      f403           mov.b r15,@(r0,r3)
            0x0ce30e4c      a701           mul.l r10,r1
            0x0ce30e4e      fa01           .word 0x01FA
            0x0ce30e50      0020           mov.b r0,@r0
            0x0ce30e52      d601           mov.l r13,@(r0,r1)
            0x0ce30e54      1c04           mov.b @(r0,r1),r4
            0x0ce30e56      0008           .word 0x0800
            0x0ce30e58      a101           .word 0x01A1
            0x0ce30e5a      0000           .word 0x0000
            0x0ce30e5c      .dword 0x0ce36c5c ; aav.0x0ce36c5c
            0x0ce30e60      .dword 0x0ce36c74 ; aav.0x0ce36c74
            0x0ce30e64      .dword 0x0ce36c64 ; aav.0x0ce36c64
            0x0ce30e68      .dword 0x0ce36c7c ; aav.0x0ce36c7c
            0x0ce30e6c      .dword 0x0ce36c60 ; aav.0x0ce36c60
            0x0ce30e70      .dword 0x0ce36c78 ; aav.0x0ce36c78
            ; CODE XREF from aav.0x0ce30c72 (+0x1b8)
            0x0ce30e74      ed01           mov.w @(r0,r14),r1
            0x0ce30e76      1d61           extu.w r1,r1
            0x0ce30e78      4821           tst r4,r1
            0x0ce30e7a      2189           bt 0x0ce30ec0
            0x0ce30e7c      c360           mov r12,r0
            0x0ce30e7e      0900           nop 
            0x0ce30e80      e680           mov.b r0,@(0x6,r14)
            0x0ce30e82      d360           mov r13,r0
            0x0ce30e84      0900           nop 
            0x0ce30e86      e780           mov.b r0,@(0x7,r14)
            0x0ce30e88      0fe2           mov 0x0F,r2
            0x0ce30e8a      6690           mov.w @(0xCC,PC),r0
            0x0ce30e8c      ec01           mov.b @(r0,r14),r1
            0x0ce30e8e      2921           and r2,r1
            0x0ce30e90      140e           mov.b r1,@(r0,r14)
            0x0ce30e92      14e0           mov 0x14,r0
            0x0ce30e94      6291           mov.w @(0xC4,PC),r1
            0x0ce30e96      ec31           add r14,r1
            0x0ce30e98      0021           mov.b r0,@r1
            0x0ce30e9a      6090           mov.w @(0xC0,PC),r0
            0x0ce30e9c      e6f3           fmov @(r0,r14),fr3
            0x0ce30e9e      38e0           mov 0x38,r0
            0x0ce30ea0      e6f2           fmov @(r0,r14),fr2
            0x0ce30ea2      25f3           fcmp/gt fr2,fr3
            0x0ce30ea4      088b           bf 0x0ce30eb8
            ; CODE XREFS from aav.0x0ce30c72 (+0x152, +0x1c4)
            0x0ce30ea6      5a90           mov.w @(0xB4,PC),r0
            0x0ce30ea8      30d3           mov.l @(0xC0,PC),r3
            0x0ce30eaa      e6f3           fmov @(r0,r14),fr3
            0x0ce30eac      38e0           mov 0x38,r0
            0x0ce30eae      37fe           fmov fr3,@(r0,r14)
            0x0ce30eb0      0b43           jsr @r3
            0x0ce30eb2      e364           mov r14,r4
            0x0ce30eb4      19a0           bra 0x0ce30eea
            0x0ce30eb6      0900           nop 
            ; CODE XREF from aav.0x0ce30c72 (+0x232)
            0x0ce30eb8      5290           mov.w @(0xA4,PC),r0
            0x0ce30eba      07e3           mov 0x07,r3
            0x0ce30ebc      05a0           bra 0x0ce30eca
            0x0ce30ebe      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x208)
            0x0ce30ec0      4e90           mov.w @(0x9C,PC),r0
            0x0ce30ec2      0ee2           mov 0x0E,r2
            0x0ce30ec4      a40e           mov.b r10,@(r0,r14)
            0x0ce30ec6      4970           add 0x49,r0
            0x0ce30ec8      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30c72 (+0x1d0, +0x24a)
            0x0ce30eca      16e5           mov 0x16,r5
            0x0ce30ecc      0b4b           jsr @r11
            0x0ce30ece      e364           mov r14,r4
            0x0ce30ed0      4790           mov.w @(0x8E,PC),r0
            0x0ce30ed2      ec03           mov.b @(r0,r14),r3
            0x0ce30ed4      3823           tst r3,r3
            0x0ce30ed6      038b           bf 0x0ce30ee0
            0x0ce30ed8      4490           mov.w @(0x88,PC),r0
            0x0ce30eda      25d3           mov.l @(0x94,PC),r3
            0x0ce30edc      03a0           bra 0x0ce30ee6
            0x0ce30ede      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x264)
            0x0ce30ee0      4090           mov.w @(0x80,PC),r0
            0x0ce30ee2      24d1           mov.l @(0x90,PC),r1
            0x0ce30ee4      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x26a)
            0x0ce30ee6      3e90           mov.w @(0x7C,PC),r0
            0x0ce30ee8      a40e           mov.b r10,@(r0,r14)
            ; XREFS: CODE 0x0ce30ce8  CODE 0x0ce30d94  CODE 0x0ce30de8  
            ; XREFS: CODE 0x0ce30df0  CODE 0x0ce30e1c  CODE 0x0ce30eb4  
            0x0ce30eea      3d90           mov.w @(0x7A,PC),r0
            0x0ce30eec      0be5           mov 0x0B,r5
            0x0ce30eee      22d3           mov.l @(0x88,PC),r3
            0x0ce30ef0      d50e           mov.w r13,@(r0,r14)
            0x0ce30ef2      f270           add 0xF2,r0
            0x0ce30ef4      d40e           mov.b r13,@(r0,r14)
            0x0ce30ef6      2670           add 0x26,r0
            0x0ce30ef8      d60e           mov.l r13,@(r0,r14)
            0x0ce30efa      e284           mov.b @(0x2,r14),r0
            0x0ce30efc      3262           mov.l @r3,r2
            0x0ce30efe      0c60           extu.b r0,r0
            0x0ce30f00      0040           shll r0
            0x0ce30f02      7c72           add 0x7C,r2
            0x0ce30f04      2d01           mov.w @(r0,r2),r1
            0x0ce30f06      0171           add 0x01,r1
            0x0ce30f08      1502           mov.w r1,@(r0,r2)
            0x0ce30f0a      2990           mov.w @(0x52,PC),r0
            0x0ce30f0c      1bd2           mov.l @(0x6C,PC),r2
            0x0ce30f0e      ec06           mov.b @(r0,r14),r6
            0x0ce30f10      0b42           jsr @r2
            0x0ce30f12      e364           mov r14,r4
            0x0ce30f14      2190           mov.w @(0x42,PC),r0
            0x0ce30f16      ec00           mov.b @(r0,r14),r0
            0x0ce30f18      0fc8           tst 0x0F,r0
            0x0ce30f1a      0389           bt 0x0ce30f24
            0x0ce30f1c      1d90           mov.w @(0x3A,PC),r0
            0x0ce30f1e      ec02           mov.b @(r0,r14),r2
            ; CODE XREF from aav.0x0ce31946 (+0x82)
            0x0ce30f20      ff72           add 0xFF,r2
            0x0ce30f22      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x2a8)
            ; CODE XREF from aav.0x0ce31946 (+0x86)
            0x0ce30f24      264f           lds.l @r15+,pr
            0x0ce30f26      f66a           mov.l @r15+,r10
            0x0ce30f28      f66b           mov.l @r15+,r11
            0x0ce30f2a      f66c           mov.l @r15+,r12
            0x0ce30f2c      f66d           mov.l @r15+,r13
            0x0ce30f2e      0b00           rts 
            0x0ce30f30      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce310d8 (+0xa)
            0x0ce30f32      e62f           mov.l r14,@-r15
            0x0ce30f34      436e           mov r4,r14
            0x0ce30f36      1890           mov.w @(0x30,PC),r0
            0x0ce30f38      d62f           mov.l r13,@-r15
            0x0ce30f3a      00ed           mov 0x00,r13
            0x0ce30f3c      c62f           mov.l r12,@-r15
            0x0ce30f3e      b62f           mov.l r11,@-r15
            0x0ce30f40      224f           sts.l pr,@-r15
            0x0ce30f42      ec00           mov.b @(r0,r14),r0
            0x0ce30f44      0edb           mov.l @(0x38,PC),r11
            0x0ce30f46      0c60           extu.b r0,r0
            0x0ce30f48      0088           cmp/eq 0x00,r0
            0x0ce30f4a      1b8d           bt.s 0x0ce30f84
            0x0ce30f4c      01ec           mov 0x01,r12
            0x0ce30f4e      0188           cmp/eq 0x01,r0
            0x0ce30f50      6089           bt 0x0ce31014
            0x0ce30f52      0288           cmp/eq 0x02,r0
            0x0ce30f54      7489           bt 0x0ce31040
            0x0ce30f56      9ca0           bra 0x0ce31092
            0x0ce30f58      0900           nop 
            0x0ce30f5a      d601           mov.l r13,@(r0,r1)
            0x0ce30f5c      a101           .word 0x01A1
            0x0ce30f5e      1c04           mov.b @(r0,r1),r4
            0x0ce30f60      5801           .word 0x0158
            0x0ce30f62      fc01           mov.b @(r0,r15),r1
            0x0ce30f64      f403           mov.b r15,@(r0,r3)
            0x0ce30f66      a701           mul.l r10,r1
            0x0ce30f68      ac01           mov.b @(r0,r10),r1
            0x0ce30f6a      e801           .word 0x01E8
            0x0ce30f6c      ac2d           cmp/str r10,r13
            0x0ce30f6e      058c           .word 0x8C05
            0x0ce30f70      .dword 0x0ce36c64 ; aav.0x0ce36c64
            0x0ce30f74      .dword 0x0ce36c7c ; aav.0x0ce36c7c
            0x0ce30f78      b096           mov.w @(0x160,PC),r6
            0x0ce30f7a      288c           .word 0x8C28
            0x0ce30f7c      8c4e           shad r8,r14
            0x0ce30f7e      038c           .word 0x8C03
            0x0ce30f80      3a22           xor r3,r2
            0x0ce30f82      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce30c72 (+0x2d8)
            0x0ce30f84      6a90           mov.w @(0xD4,PC),r0
            0x0ce30f86      6a92           mov.w @(0xD4,PC),r2
            0x0ce30f88      ed03           mov.w @(r0,r14),r3
            0x0ce30f8a      3d63           extu.w r3,r3
            0x0ce30f8c      2823           tst r2,r3
            0x0ce30f8e      2b89           bt 0x0ce30fe8
            0x0ce30f90      c360           mov r12,r0
            0x0ce30f92      0900           nop 
            0x0ce30f94      e680           mov.b r0,@(0x6,r14)
            0x0ce30f96      d360           mov r13,r0
            0x0ce30f98      0900           nop 
            0x0ce30f9a      e780           mov.b r0,@(0x7,r14)
            0x0ce30f9c      0fe3           mov 0x0F,r3
            0x0ce30f9e      5f90           mov.w @(0xBE,PC),r0
            0x0ce30fa0      ec01           mov.b @(r0,r14),r1
            0x0ce30fa2      3921           and r3,r1
            0x0ce30fa4      140e           mov.b r1,@(r0,r14)
            0x0ce30fa6      16e0           mov 0x16,r0
            0x0ce30fa8      5b91           mov.w @(0xB6,PC),r1
            0x0ce30faa      ec31           add r14,r1
            0x0ce30fac      0021           mov.b r0,@r1
            0x0ce30fae      5990           mov.w @(0xB2,PC),r0
            0x0ce30fb0      e6f3           fmov @(r0,r14),fr3
            0x0ce30fb2      38e0           mov 0x38,r0
            0x0ce30fb4      e6f2           fmov @(r0,r14),fr2
            0x0ce30fb6      25f3           fcmp/gt fr2,fr3
            0x0ce30fb8      088b           bf 0x0ce30fcc
            0x0ce30fba      5390           mov.w @(0xA6,PC),r0
            0x0ce30fbc      2cd1           mov.l @(0xB0,PC),r1
            0x0ce30fbe      e6f3           fmov @(r0,r14),fr3
            0x0ce30fc0      38e0           mov 0x38,r0
            0x0ce30fc2      37fe           fmov fr3,@(r0,r14)
            0x0ce30fc4      0b41           jsr @r1
            0x0ce30fc6      e364           mov r14,r4
            0x0ce30fc8      63a0           bra 0x0ce31092
            0x0ce30fca      0900           nop 
            ; CODE XREF from aav.0x0ce30c72 (+0x346)
            0x0ce30fcc      4b90           mov.w @(0x96,PC),r0
            0x0ce30fce      06e2           mov 0x06,r2
            0x0ce30fd0      16e5           mov 0x16,r5
            0x0ce30fd2      240e           mov.b r2,@(r0,r14)
            0x0ce30fd4      0b4b           jsr @r11
            0x0ce30fd6      e364           mov r14,r4
            0x0ce30fd8      4690           mov.w @(0x8C,PC),r0
            0x0ce30fda      ec03           mov.b @(r0,r14),r3
            0x0ce30fdc      3823           tst r3,r3
            0x0ce30fde      2589           bt 0x0ce3102c
            0x0ce30fe0      4390           mov.w @(0x86,PC),r0
            0x0ce30fe2      24d1           mov.l @(0x90,PC),r1
            0x0ce30fe4      29a0           bra 0x0ce3103a
            0x0ce30fe6      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x31c)
            0x0ce30fe8      3d90           mov.w @(0x7A,PC),r0
            0x0ce30fea      0fe3           mov 0x0F,r3
            0x0ce30fec      14e5           mov 0x14,r5
            0x0ce30fee      d40e           mov.b r13,@(r0,r14)
            0x0ce30ff0      4970           add 0x49,r0
            0x0ce30ff2      340e           mov.b r3,@(r0,r14)
            0x0ce30ff4      0b4b           jsr @r11
            0x0ce30ff6      e364           mov r14,r4
            0x0ce30ff8      3690           mov.w @(0x6C,PC),r0
            0x0ce30ffa      ec03           mov.b @(r0,r14),r3
            0x0ce30ffc      3823           tst r3,r3
            0x0ce30ffe      038b           bf 0x0ce31008
            0x0ce31000      3390           mov.w @(0x66,PC),r0
            0x0ce31002      1dd3           mov.l @(0x74,PC),r3
            0x0ce31004      03a0           bra 0x0ce3100e
            0x0ce31006      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x38c)
            0x0ce31008      2f90           mov.w @(0x5E,PC),r0
            0x0ce3100a      1cd1           mov.l @(0x70,PC),r1
            0x0ce3100c      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x392)
            0x0ce3100e      2d90           mov.w @(0x5A,PC),r0
            0x0ce31010      3fa0           bra 0x0ce31092
            0x0ce31012      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x2de)
            0x0ce31014      2790           mov.w @(0x4E,PC),r0
            0x0ce31016      10e3           mov 0x10,r3
            0x0ce31018      15e5           mov 0x15,r5
            0x0ce3101a      c40e           mov.b r12,@(r0,r14)
            0x0ce3101c      4970           add 0x49,r0
            0x0ce3101e      340e           mov.b r3,@(r0,r14)
            0x0ce31020      0b4b           jsr @r11
            0x0ce31022      e364           mov r14,r4
            0x0ce31024      2090           mov.w @(0x40,PC),r0
            0x0ce31026      ec03           mov.b @(r0,r14),r3
            0x0ce31028      3823           tst r3,r3
            0x0ce3102a      038b           bf 0x0ce31034
            ; CODE XREF from aav.0x0ce30c72 (+0x36c)
            0x0ce3102c      1d90           mov.w @(0x3A,PC),r0
            0x0ce3102e      14d3           mov.l @(0x50,PC),r3
            0x0ce31030      03a0           bra 0x0ce3103a
            0x0ce31032      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x3b8)
            0x0ce31034      1990           mov.w @(0x32,PC),r0
            0x0ce31036      0fd1           mov.l @(0x3C,PC),r1
            0x0ce31038      160e           mov.l r1,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30c72 (+0x372, +0x3be)
            0x0ce3103a      1790           mov.w @(0x2E,PC),r0
            0x0ce3103c      29a0           bra 0x0ce31092
            0x0ce3103e      c40e           mov.b r12,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x2e2)
            0x0ce31040      1190           mov.w @(0x22,PC),r0
            0x0ce31042      02e4           mov 0x02,r4
            0x0ce31044      11e3           mov 0x11,r3
            0x0ce31046      440e           mov.b r4,@(r0,r14)
            0x0ce31048      4970           add 0x49,r0
            0x0ce3104a      340e           mov.b r3,@(r0,r14)
            0x0ce3104c      5b70           add 0x5B,r0
            0x0ce3104e      ec02           mov.b @(r0,r14),r2
            0x0ce31050      2822           tst r2,r2
            0x0ce31052      198b           bf 0x0ce31088
            0x0ce31054      0990           mov.w @(0x12,PC),r0
            0x0ce31056      0bd2           mov.l @(0x2C,PC),r2
            0x0ce31058      19a0           bra 0x0ce3108e
            0x0ce3105a      260e           mov.l r2,@(r0,r14)
            0x0ce3105c      fa01           .word 0x01FA
            0x0ce3105e      0010           mov.l r0,@(0x0,r0)
            0x0ce31060      d601           mov.l r13,@(r0,r1)
            0x0ce31062      a101           .word 0x01A1
            0x0ce31064      1c04           mov.b @(r0,r1),r4
            0x0ce31066      5801           .word 0x0158
            0x0ce31068      fc01           mov.b @(r0,r15),r1
            0x0ce3106a      f403           mov.b r15,@(r0,r3)
            0x0ce3106c      a701           mul.l r10,r1
            0x0ce3106e      0000           .word 0x0000
            0x0ce31070      ac2d           cmp/str r10,r13
            0x0ce31072      058c           .word 0x8C05
            0x0ce31074      .dword 0x0ce36c84 ; aav.0x0ce36c84
            0x0ce31078      .dword 0x0ce36c68 ; aav.0x0ce36c68
            0x0ce3107c      .dword 0x0ce36c80 ; aav.0x0ce36c80
            0x0ce31080      .dword 0x0ce36c6c ; aav.0x0ce36c6c
            0x0ce31084      .dword 0x0ce36c70 ; aav.0x0ce36c70
            ; CODE XREF from aav.0x0ce30c72 (+0x3e0)
            0x0ce31088      6190           mov.w @(0xC2,PC),r0
            0x0ce3108a      35d1           mov.l @(0xD4,PC),r1
            0x0ce3108c      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x3e6)
            0x0ce3108e      5f90           mov.w @(0xBE,PC),r0
            0x0ce31090      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce30c72 (+0x2e4, +0x356, +0x39e, +0x3ca)
            0x0ce31092      5e90           mov.w @(0xBC,PC),r0
            0x0ce31094      0ce5           mov 0x0C,r5
            0x0ce31096      33d3           mov.l @(0xCC,PC),r3
            0x0ce31098      d50e           mov.w r13,@(r0,r14)
            0x0ce3109a      f270           add 0xF2,r0
            0x0ce3109c      d40e           mov.b r13,@(r0,r14)
            0x0ce3109e      2670           add 0x26,r0
            0x0ce310a0      d60e           mov.l r13,@(r0,r14)
            0x0ce310a2      e284           mov.b @(0x2,r14),r0
            0x0ce310a4      3262           mov.l @r3,r2
            0x0ce310a6      0c60           extu.b r0,r0
            0x0ce310a8      0040           shll r0
            0x0ce310aa      7c72           add 0x7C,r2
            0x0ce310ac      2d01           mov.w @(r0,r2),r1
            0x0ce310ae      0171           add 0x01,r1
            0x0ce310b0      1502           mov.w r1,@(r0,r2)
            0x0ce310b2      4f90           mov.w @(0x9E,PC),r0
            0x0ce310b4      2cd2           mov.l @(0xB0,PC),r2
            0x0ce310b6      ec06           mov.b @(r0,r14),r6
            0x0ce310b8      0b42           jsr @r2
            0x0ce310ba      e364           mov r14,r4
            0x0ce310bc      4b90           mov.w @(0x96,PC),r0
            0x0ce310be      ec00           mov.b @(r0,r14),r0
            0x0ce310c0      f0c8           tst 0xF0,r0
            0x0ce310c2      0389           bt 0x0ce310cc
            0x0ce310c4      4790           mov.w @(0x8E,PC),r0
            0x0ce310c6      ec02           mov.b @(r0,r14),r2
            0x0ce310c8      f072           add 0xF0,r2
            0x0ce310ca      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce30c72 (+0x450)
            0x0ce310cc      264f           lds.l @r15+,pr
            0x0ce310ce      f66b           mov.l @r15+,r11
            0x0ce310d0      f66c           mov.l @r15+,r12
            0x0ce310d2      f66d           mov.l @r15+,r13
            0x0ce310d4      0b00           rts 
            0x0ce310d6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce310d8:
            ; CODE XREF from aav.0x0ce310ea (+0x20)
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d90)
            0x0ce310d8      3e90           mov.w @(0x7C,PC),r0
            0x0ce310da      4c00           mov.b @(r0,r4),r0
            0x0ce310dc      0c60           extu.b r0,r0
            0x0ce310de      0188           cmp/eq 0x01,r0
            0x0ce310e0      018b           bf 0x0ce310e6
            0x0ce310e2      26af           bra 0x0ce30f32
            0x0ce310e4      0900           nop 
            ; CODE XREF from aav.0x0ce310d8 (+0x8)
            0x0ce310e6      e8ad           bra 0x0ce30cba
            0x0ce310e8      0900           nop 
            ;-- aav.0x0ce310ea:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d8c)
            0x0ce310ea      3590           mov.w @(0x6A,PC),r0
            0x0ce310ec      4c03           mov.b @(r0,r4),r3
            0x0ce310ee      3823           tst r3,r3
            0x0ce310f0      038b           bf 0x0ce310fa
            0x0ce310f2      3090           mov.w @(0x60,PC),r0
            0x0ce310f4      4c00           mov.b @(r0,r4),r0
            0x0ce310f6      0fc8           tst 0x0F,r0
            0x0ce310f8      078b           bf 0x0ce3110a
            ; CODE XREF from aav.0x0ce310ea (+0x6)
            0x0ce310fa      2d90           mov.w @(0x5A,PC),r0
            0x0ce310fc      4c02           mov.b @(r0,r4),r2
            0x0ce310fe      2822           tst r2,r2
            0x0ce31100      0589           bt 0x0ce3110e
            0x0ce31102      2890           mov.w @(0x50,PC),r0
            0x0ce31104      4c00           mov.b @(r0,r4),r0
            0x0ce31106      f0c8           tst 0xF0,r0
            0x0ce31108      0189           bt 0x0ce3110e
            ; CODE XREF from aav.0x0ce310ea (+0xe)
            0x0ce3110a      e5af           bra aav.0x0ce310d8
            0x0ce3110c      0900           nop 
            ; CODE XREFS from aav.0x0ce310ea (+0x16, +0x1e)
            0x0ce3110e      0b00           rts 
            0x0ce31110      0900           nop 
            ;-- aav.0x0ce31112:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d94)
            0x0ce31112      aead           bra aav.0x0ce30c72
            0x0ce31114      0900           nop 
            ;-- aav.0x0ce31116:
            ; UNKNOWN XREF from aav.0x0ce36d18 (+0x8)
            0x0ce31116      2090           mov.w @(0x40,PC),r0
            0x0ce31118      4363           mov r4,r3
            0x0ce3111a      462f           mov.l r4,@-r15
            0x0ce3111c      3c02           mov.b @(r0,r3),r2
            0x0ce3111e      13d0           mov.l @(0x4C,PC),r0
            0x0ce31120      2c62           extu.b r2,r2
            0x0ce31122      0842           shll2 r2
            0x0ce31124      2e03           mov.l @(r0,r2),r3
            0x0ce31126      2b43           jmp @r3
            0x0ce31128      047f           add 0x04,r15
            ; CODE XREF from aav.0x0ce31394 (+0x7e)
            0x0ce3112a      1790           mov.w @(0x2E,PC),r0
            0x0ce3112c      e62f           mov.l r14,@-r15
            0x0ce3112e      436e           mov r4,r14
            0x0ce31130      d62f           mov.l r13,@-r15
            0x0ce31132      c62f           mov.l r12,@-r15
            0x0ce31134      224f           sts.l pr,@-r15
            0x0ce31136      ec00           mov.b @(r0,r14),r0
            0x0ce31138      0ddc           mov.l @(0x34,PC),r12
            0x0ce3113a      0c60           extu.b r0,r0
            0x0ce3113c      0088           cmp/eq 0x00,r0
            0x0ce3113e      198d           bt.s 0x0ce31174
            0x0ce31140      00ed           mov 0x00,r13
            0x0ce31142      0188           cmp/eq 0x01,r0
            0x0ce31144      3f89           bt 0x0ce311c6
            0x0ce31146      0288           cmp/eq 0x02,r0
            0x0ce31148      4489           bt 0x0ce311d4
            0x0ce3114a      6ba0           bra 0x0ce31224
            0x0ce3114c      0900           nop 
            0x0ce3114e      f403           mov.b r15,@(r0,r3)
            0x0ce31150      a701           mul.l r10,r1
            0x0ce31152      ac01           mov.b @(r0,r10),r1
            0x0ce31154      5801           .word 0x0158
            0x0ce31156      d601           mov.l r13,@(r0,r1)
            0x0ce31158      fe01           mov.l @(r0,r15),r1
            0x0ce3115a      ff01           mac.l @r15+,@r1+
            0x0ce3115c      e801           .word 0x01E8
            0x0ce3115e      0000           .word 0x0000
            0x0ce31160      .dword 0x0ce36c88 ; aav.0x0ce36c88
            0x0ce31164      b096           mov.w @(0x160,PC),r6
            0x0ce31166      288c           .word 0x8C28
            0x0ce31168      8c4e           shad r8,r14
            0x0ce3116a      038c           .word 0x8C03
            0x0ce3116c      .dword 0x0ce36d88 ; aav.0x0ce36d88
            0x0ce31170      ee4d           ldc r13,r6_bank
            0x0ce31172      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce31116 (+0x28)
            0x0ce31174      e684           mov.b @(0x6,r14),r0
            0x0ce31176      0c60           extu.b r0,r0
            0x0ce31178      0088           cmp/eq 0x00,r0
            0x0ce3117a      2489           bt 0x0ce311c6
            0x0ce3117c      0188           cmp/eq 0x01,r0
            0x0ce3117e      518b           bf 0x0ce31224
            0x0ce31180      0b4c           jsr @r12
            0x0ce31182      e364           mov r14,r4
            0x0ce31184      0e60           exts.b r0,r0
            0x0ce31186      1140           cmp/pz r0
            0x0ce31188      298b           bf 0x0ce311de
            0x0ce3118a      7092           mov.w @(0xE0,PC),r2
            0x0ce3118c      ec32           add r14,r2
            0x0ce3118e      2184           mov.b @(0x1,r2),r0
            0x0ce31190      0820           tst r0,r0
            0x0ce31192      0c89           bt 0x0ce311ae
            0x0ce31194      6b93           mov.w @(0xD6,PC),r3
            0x0ce31196      ec33           add r14,r3
            0x0ce31198      d360           mov r13,r0
            0x0ce3119a      0900           nop 
            0x0ce3119c      36d5           mov.l @(0xD8,PC),r5
            0x0ce3119e      3180           mov.b r0,@(0x1,r3)
            0x0ce311a0      01e0           mov 0x01,r0
            0x0ce311a2      36d3           mov.l @(0xD8,PC),r3
            0x0ce311a4      5580           mov.b r0,@(0x5,r5)
            0x0ce311a6      5680           mov.b r0,@(0x6,r5)
            0x0ce311a8      2ce5           mov 0x2C,r5
            0x0ce311aa      0b43           jsr @r3
            0x0ce311ac      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce31116 (+0x7c)
            0x0ce311ae      5f90           mov.w @(0xBE,PC),r0
            0x0ce311b0      ec02           mov.b @(r0,r14),r2
            0x0ce311b2      2822           tst r2,r2
            0x0ce311b4      3689           bt 0x0ce31224
            0x0ce311b6      d40e           mov.b r13,@(r0,r14)
            0x0ce311b8      ef70           add 0xEF,r0
            0x0ce311ba      ed02           mov.w @(r0,r14),r2
            0x0ce311bc      01e3           mov 0x01,r3
            0x0ce311be      3a22           xor r3,r2
            0x0ce311c0      250e           mov.w r2,@(r0,r14)
            0x0ce311c2      2fa0           bra 0x0ce31224
            0x0ce311c4      0900           nop 
            ; CODE XREFS from aav.0x0ce31116 (+0x2e, +0x64)
            0x0ce311c6      0b4c           jsr @r12
            0x0ce311c8      e364           mov r14,r4
            0x0ce311ca      0e60           exts.b r0,r0
            0x0ce311cc      1140           cmp/pz r0
            0x0ce311ce      2989           bt 0x0ce31224
            0x0ce311d0      05a0           bra 0x0ce311de
            0x0ce311d2      0900           nop 
            ; CODE XREF from aav.0x0ce31116 (+0x32)
            0x0ce311d4      0b4c           jsr @r12
            0x0ce311d6      e364           mov r14,r4
            0x0ce311d8      0e60           exts.b r0,r0
            0x0ce311da      1140           cmp/pz r0
            0x0ce311dc      0689           bt 0x0ce311ec
            ; CODE XREFS from aav.0x0ce31116 (+0x72, +0xba)
            0x0ce311de      264f           lds.l @r15+,pr
            0x0ce311e0      27d3           mov.l @(0x9C,PC),r3
            0x0ce311e2      e364           mov r14,r4
            0x0ce311e4      f66c           mov.l @r15+,r12
            0x0ce311e6      f66d           mov.l @r15+,r13
            0x0ce311e8      2b43           jmp @r3
            0x0ce311ea      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31116 (+0xc6)
            0x0ce311ec      4090           mov.w @(0x80,PC),r0
            0x0ce311ee      ec02           mov.b @(r0,r14),r2
            0x0ce311f0      2822           tst r2,r2
            0x0ce311f2      0d89           bt 0x0ce31210
            0x0ce311f4      23c7           mova @(0x8C,PC),r0
            0x0ce311f6      08f4           fmov @r0,fr4
            0x0ce311f8      3b90           mov.w @(0x76,PC),r0
            0x0ce311fa      ec03           mov.b @(r0,r14),r3
            0x0ce311fc      3823           tst r3,r3
            0x0ce311fe      0389           bt 0x0ce31208
            0x0ce31200      34e0           mov 0x34,r0
            0x0ce31202      e6f3           fmov @(r0,r14),fr3
            0x0ce31204      03a0           bra 0x0ce3120e
            0x0ce31206      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce31116 (+0xe8)
            0x0ce31208      34e0           mov 0x34,r0
            0x0ce3120a      e6f3           fmov @(r0,r14),fr3
            0x0ce3120c      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce31116 (+0xee)
            0x0ce3120e      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce31116 (+0xdc)
            0x0ce31210      3090           mov.w @(0x60,PC),r0
            0x0ce31212      ec03           mov.b @(r0,r14),r3
            0x0ce31214      3823           tst r3,r3
            0x0ce31216      0589           bt 0x0ce31224
            0x0ce31218      18d3           mov.l @(0x60,PC),r3
            0x0ce3121a      16e5           mov 0x16,r5
            0x0ce3121c      0b43           jsr @r3
            0x0ce3121e      e364           mov r14,r4
            0x0ce31220      2890           mov.w @(0x50,PC),r0
            0x0ce31222      d40e           mov.b r13,@(r0,r14)
            ; XREFS: CODE 0x0ce3114a  CODE 0x0ce3117e  CODE 0x0ce311b4  
            ; XREFS: CODE 0x0ce311c2  CODE 0x0ce311ce  CODE 0x0ce31216  
            0x0ce31224      264f           lds.l @r15+,pr
            0x0ce31226      f66c           mov.l @r15+,r12
            0x0ce31228      f66d           mov.l @r15+,r13
            0x0ce3122a      0b00           rts 
            0x0ce3122c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x76)
            0x0ce3122e      e62f           mov.l r14,@-r15
            0x0ce31230      224f           sts.l pr,@-r15
            0x0ce31232      15d3           mov.l @(0x54,PC),r3
            0x0ce31234      0b43           jsr @r3
            0x0ce31236      436e           mov r4,r14
            0x0ce31238      0e60           exts.b r0,r0
            0x0ce3123a      1140           cmp/pz r0
            0x0ce3123c      0489           bt 0x0ce31248
            0x0ce3123e      264f           lds.l @r15+,pr
            0x0ce31240      0fd3           mov.l @(0x3C,PC),r3
            0x0ce31242      e364           mov r14,r4
            0x0ce31244      2b43           jmp @r3
            0x0ce31246      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31116 (+0x126)
            0x0ce31248      1590           mov.w @(0x2A,PC),r0
            0x0ce3124a      ec00           mov.b @(r0,r14),r0
            0x0ce3124c      0c60           extu.b r0,r0
            0x0ce3124e      0288           cmp/eq 0x02,r0
            0x0ce31250      0a8b           bf 0x0ce31268
            0x0ce31252      0f90           mov.w @(0x1E,PC),r0
            0x0ce31254      ec02           mov.b @(r0,r14),r2
            0x0ce31256      2822           tst r2,r2
            0x0ce31258      0689           bt 0x0ce31268
            0x0ce3125a      08d3           mov.l @(0x20,PC),r3
            0x0ce3125c      16e5           mov 0x16,r5
            0x0ce3125e      0b43           jsr @r3
            0x0ce31260      e364           mov r14,r4
            0x0ce31262      0790           mov.w @(0xE,PC),r0
            0x0ce31264      00e2           mov 0x00,r2
            0x0ce31266      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31116 (+0x13a, +0x142)
            0x0ce31268      264f           lds.l @r15+,pr
            0x0ce3126a      0b00           rts 
            0x0ce3126c      f66e           mov.l @r15+,r14
            0x0ce3126e      5001           .word 0x0150
            0x0ce31270      4101           .word 0x0141
            0x0ce31272      d201           stc r5_bank,r1
            0x0ce31274      4b01           .word 0x014B
            0x0ce31276      e801           .word 0x01E8
            0x0ce31278      18a5           bra 0x0ce31cac
            0x0ce3127a      268c           .word 0x8C26
            0x0ce3127c      3a22           xor r3,r2
            0x0ce3127e      048c           .word 0x8C04
            0x0ce31280      4816           mov.l r4,@(0x20,r6)
            0x0ce31282      058c           .word 0x8C05
            0x0ce31284      5555           mov.l @(0x14,r5),r5
            0x0ce31286      d540           .word 0x40D5
            0x0ce31288      ee4d           ldc r13,r6_bank
            0x0ce3128a      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce31394 (+0x64)
            0x0ce3128c      7190           mov.w @(0xE2,PC),r0
            0x0ce3128e      e62f           mov.l r14,@-r15
            0x0ce31290      436e           mov r4,r14
            0x0ce31292      d62f           mov.l r13,@-r15
            0x0ce31294      224f           sts.l pr,@-r15
            0x0ce31296      ec00           mov.b @(r0,r14),r0
            0x0ce31298      6a9d           mov.w @(0xD4,PC),r13
            0x0ce3129a      0c60           extu.b r0,r0
            0x0ce3129c      0088           cmp/eq 0x00,r0
            0x0ce3129e      068d           bt.s 0x0ce312ae
            0x0ce312a0      ec3d           add r14,r13
            0x0ce312a2      0188           cmp/eq 0x01,r0
            0x0ce312a4      0389           bt 0x0ce312ae
            0x0ce312a6      0288           cmp/eq 0x02,r0
            0x0ce312a8      0d89           bt 0x0ce312c6
            0x0ce312aa      3fa0           bra 0x0ce3132c              ; fcn.0ce312f4+0x38
            0x0ce312ac      0900           nop 
            ; CODE XREFS from aav.0x0ce31116 (+0x188, +0x18e)
            0x0ce312ae      34d3           mov.l @(0xD0,PC),r3
            0x0ce312b0      0b43           jsr @r3
            0x0ce312b2      e364           mov r14,r4
            0x0ce312b4      0e60           exts.b r0,r0
            0x0ce312b6      1140           cmp/pz r0
            0x0ce312b8      3889           bt 0x0ce3132c               ; fcn.0ce312f4+0x38
            0x0ce312ba      264f           lds.l @r15+,pr
            0x0ce312bc      31d3           mov.l @(0xC4,PC),r3
            0x0ce312be      e364           mov r14,r4
            0x0ce312c0      f66d           mov.l @r15+,r13
            0x0ce312c2      2b43           jmp @r3
            0x0ce312c4      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31116 (+0x192)
            0x0ce312c6      2ed3           mov.l @(0xB8,PC),r3
            0x0ce312c8      0b43           jsr @r3
            0x0ce312ca      e364           mov r14,r4
            0x0ce312cc      0e60           exts.b r0,r0
            0x0ce312ce      1140           cmp/pz r0
            0x0ce312d0      0289           bt 0x0ce312d8
            0x0ce312d2      2cd3           mov.l @(0xB0,PC),r3
            0x0ce312d4      0b43           jsr @r3
            0x0ce312d6      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce31116 (+0x1ba)
            0x0ce312d8      d484           mov.b @(0x4,r13),r0
            0x0ce312da      0820           tst r0,r0
            0x0ce312dc      098b           bf 0x0ce312f2
            0x0ce312de      4990           mov.w @(0x92,PC),r0
            0x0ce312e0      ec03           mov.b @(r0,r14),r3
            0x0ce312e2      3823           tst r3,r3
            0x0ce312e4      0589           bt 0x0ce312f2
            0x0ce312e6      28d3           mov.l @(0xA0,PC),r3
            0x0ce312e8      01e0           mov 0x01,r0
            0x0ce312ea      04e5           mov 0x04,r5
            0x0ce312ec      d480           mov.b r0,@(0x4,r13)
            0x0ce312ee      0b43           jsr @r3
            0x0ce312f0      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce31116 (+0x1c6, +0x1ce)
            0x0ce312f2      4092           mov.w @(0x80,PC),r2
/ (fcn) fcn.0ce312f4 64
|   fcn.0ce312f4 ();
|           ; CALL XREF from aav.0x0ce31394 (+0x14a)
|           0x0ce312f4      ec32           add r14,r2
|           0x0ce312f6      2184           mov.b @(0x1,r2),r0
|           0x0ce312f8      0820           tst r0,r0
|           0x0ce312fa      1789           bt 0x0ce3132c
|           0x0ce312fc      3b93           mov.w @(0x76,PC),r3
|           0x0ce312fe      00e4           mov 0x00,r4
|           0x0ce31300      ec33           add r14,r3
|           0x0ce31302      4360           mov r4,r0
|           0x0ce31304      0900           nop 
|           0x0ce31306      3180           mov.b r0,@(0x1,r3)
|           0x0ce31308      19e3           mov 0x19,r3
|           0x0ce3130a      3590           mov.w @(0x6A,PC),r0
|           0x0ce3130c      340e           mov.b r3,@(r0,r14)
|           0x0ce3130e      3490           mov.w @(0x68,PC),r0
|           0x0ce31310      1ed3           mov.l @(0x78,PC),r3
|           0x0ce31312      450e           mov.w r4,@(r0,r14)
|           0x0ce31314      2e90           mov.w @(0x5C,PC),r0
|           0x0ce31316      440e           mov.b r4,@(r0,r14)
|           0x0ce31318      3090           mov.w @(0x60,PC),r0
|           0x0ce3131a      460e           mov.l r4,@(r0,r14)
|           0x0ce3131c      e284           mov.b @(0x2,r14),r0
|           0x0ce3131e      3262           mov.l @r3,r2
|           0x0ce31320      0c60           extu.b r0,r0
|           0x0ce31322      0040           shll r0
|           0x0ce31324      7c72           add 0x7C,r2
|           0x0ce31326      2d01           mov.w @(r0,r2),r1
|           0x0ce31328      0171           add 0x01,r1
|           0x0ce3132a      1502           mov.w r1,@(r0,r2)
|           ; CODE XREFS from aav.0x0ce31116 (+0x194, +0x1a2)
|           ; CODE XREF from fcn.0ce312f4 (0xce312fa)
|           0x0ce3132c      264f           lds.l @r15+,pr
|           0x0ce3132e      f66d           mov.l @r15+,r13
|           0x0ce31330      0b00           rts 
\           0x0ce31332      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x5c)
            0x0ce31334      e62f           mov.l r14,@-r15
            0x0ce31336      224f           sts.l pr,@-r15
            0x0ce31338      11d3           mov.l @(0x44,PC),r3
            0x0ce3133a      0b43           jsr @r3
            0x0ce3133c      436e           mov r4,r14
            0x0ce3133e      0e60           exts.b r0,r0
            0x0ce31340      1140           cmp/pz r0
            0x0ce31342      0289           bt 0x0ce3134a
            0x0ce31344      0fd3           mov.l @(0x3C,PC),r3
            0x0ce31346      0b43           jsr @r3
            0x0ce31348      e364           mov r14,r4
            ; CODE XREF from fcn.0ce312f4 (+0x4e)
            0x0ce3134a      1290           mov.w @(0x24,PC),r0
            0x0ce3134c      ec00           mov.b @(r0,r14),r0
            0x0ce3134e      0c60           extu.b r0,r0
            0x0ce31350      0288           cmp/eq 0x02,r0
            0x0ce31352      0a8b           bf 0x0ce3136a
            0x0ce31354      1390           mov.w @(0x26,PC),r0
            0x0ce31356      ec02           mov.b @(r0,r14),r2
            0x0ce31358      2822           tst r2,r2
            0x0ce3135a      0689           bt 0x0ce3136a
            0x0ce3135c      0cd3           mov.l @(0x30,PC),r3
            0x0ce3135e      16e5           mov 0x16,r5
            0x0ce31360      0b43           jsr @r3
            0x0ce31362      e364           mov r14,r4
            0x0ce31364      0b90           mov.w @(0x16,PC),r0
            0x0ce31366      00e2           mov 0x00,r2
            0x0ce31368      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from fcn.0ce312f4 (+0x5e, +0x66)
            0x0ce3136a      264f           lds.l @r15+,pr
            0x0ce3136c      0b00           rts 
            0x0ce3136e      f66e           mov.l @r15+,r14
            0x0ce31370      a402           mov.b r10,@(r0,r2)
            0x0ce31372      e801           .word 0x01E8
            0x0ce31374      9e01           mov.l @(r0,r9),r1
            0x0ce31376      5001           .word 0x0150
            0x0ce31378      a101           .word 0x01A1
            0x0ce3137a      ac01           mov.b @(r0,r10),r1
            0x0ce3137c      c401           mov.b r12,@(r0,r1)
            0x0ce3137e      4b01           .word 0x014B
            0x0ce31380      ee4d           ldc r13,r6_bank
            0x0ce31382      038c           .word 0x8C03
            0x0ce31384      4816           mov.l r4,@(0x20,r6)
            0x0ce31386      058c           .word 0x8C05
            0x0ce31388      0820           tst r0,r0
            0x0ce3138a      048c           .word 0x8C04
            0x0ce3138c      b096           mov.w @(0x160,PC),r6
            0x0ce3138e      288c           .word 0x8C28
            0x0ce31390      3a22           xor r3,r2
            0x0ce31392      048c           .word 0x8C04
            ;-- aav.0x0ce31394:
            ; CODE XREF from aav.0x0ce31736 (+0xc)
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d98)
            0x0ce31394      e62f           mov.l r14,@-r15
            0x0ce31396      5ce1           mov 0x5C,r1
            0x0ce31398      436e           mov r4,r14
            0x0ce3139a      ec31           add r14,r1
            0x0ce3139c      34e0           mov 0x34,r0
            0x0ce3139e      4bd3           mov.l @(0x12C,PC),r3
            0x0ce313a0      224f           sts.l pr,@-r15
            0x0ce313a2      e6f2           fmov @(r0,r14),fr2
            0x0ce313a4      18f3           fmov @r1,fr3
            0x0ce313a6      68e1           mov 0x68,r1
            0x0ce313a8      ec31           add r14,r1
            0x0ce313aa      30f2           fadd fr3,fr2
            0x0ce313ac      27fe           fmov fr2,@(r0,r14)
            0x0ce313ae      5ce0           mov 0x5C,r0
            0x0ce313b0      18f3           fmov @r1,fr3
            0x0ce313b2      60e1           mov 0x60,r1
            0x0ce313b4      e6f2           fmov @(r0,r14),fr2
            0x0ce313b6      ec31           add r14,r1
            0x0ce313b8      30f2           fadd fr3,fr2
            0x0ce313ba      27fe           fmov fr2,@(r0,r14)
            0x0ce313bc      38e0           mov 0x38,r0
            0x0ce313be      e6f2           fmov @(r0,r14),fr2
            0x0ce313c0      18f3           fmov @r1,fr3
            0x0ce313c2      6ce1           mov 0x6C,r1
            0x0ce313c4      ec31           add r14,r1
            0x0ce313c6      30f2           fadd fr3,fr2
            0x0ce313c8      27fe           fmov fr2,@(r0,r14)
            0x0ce313ca      60e0           mov 0x60,r0
            0x0ce313cc      e6f2           fmov @(r0,r14),fr2
            0x0ce313ce      18f3           fmov @r1,fr3
            0x0ce313d0      30f2           fadd fr3,fr2
            0x0ce313d2      27fe           fmov fr2,@(r0,r14)
            0x0ce313d4      0b43           jsr @r3
            0x0ce313d6      e364           mov r14,r4
            0x0ce313d8      7490           mov.w @(0xE8,PC),r0
            0x0ce313da      ec00           mov.b @(r0,r14),r0
            0x0ce313dc      0c60           extu.b r0,r0
            0x0ce313de      0188           cmp/eq 0x01,r0
            0x0ce313e0      0c8b           bf 0x0ce313fc
            0x0ce313e2      7090           mov.w @(0xE0,PC),r0
            0x0ce313e4      ec00           mov.b @(r0,r14),r0
            0x0ce313e6      0c60           extu.b r0,r0
            0x0ce313e8      0188           cmp/eq 0x01,r0
            0x0ce313ea      038b           bf 0x0ce313f4
            0x0ce313ec      264f           lds.l @r15+,pr
            0x0ce313ee      e364           mov r14,r4
            0x0ce313f0      a0af           bra 0x0ce31334
            0x0ce313f2      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x56)
            0x0ce313f4      264f           lds.l @r15+,pr
            0x0ce313f6      e364           mov r14,r4
            0x0ce313f8      48af           bra 0x0ce3128c
            0x0ce313fa      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x4c)
            0x0ce313fc      6390           mov.w @(0xC6,PC),r0
            0x0ce313fe      ec00           mov.b @(r0,r14),r0
            0x0ce31400      0c60           extu.b r0,r0
            0x0ce31402      0188           cmp/eq 0x01,r0
            0x0ce31404      038b           bf 0x0ce3140e
            0x0ce31406      264f           lds.l @r15+,pr
            0x0ce31408      e364           mov r14,r4
            0x0ce3140a      10af           bra 0x0ce3122e
            0x0ce3140c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x70)
            0x0ce3140e      264f           lds.l @r15+,pr
            0x0ce31410      e364           mov r14,r4
            0x0ce31412      8aae           bra 0x0ce3112a
            0x0ce31414      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31580 (+0x3e)
            0x0ce31416      e62f           mov.l r14,@-r15
            0x0ce31418      224f           sts.l pr,@-r15
            0x0ce3141a      2dd3           mov.l @(0xB4,PC),r3
            0x0ce3141c      0b43           jsr @r3
            0x0ce3141e      436e           mov r4,r14
            0x0ce31420      5292           mov.w @(0xA4,PC),r2
            0x0ce31422      ec32           add r14,r2
            0x0ce31424      2184           mov.b @(0x1,r2),r0
            0x0ce31426      0820           tst r0,r0
            0x0ce31428      1d89           bt 0x0ce31466
            0x0ce3142a      e784           mov.b @(0x7,r14),r0
            0x0ce3142c      4c93           mov.w @(0x98,PC),r3
            0x0ce3142e      0170           add 0x01,r0
            0x0ce31430      e780           mov.b r0,@(0x7,r14)
            0x0ce31432      00e0           mov 0x00,r0
            0x0ce31434      ec33           add r14,r3
            0x0ce31436      3180           mov.b r0,@(0x1,r3)
            0x0ce31438      26c7           mova @(0x98,PC),r0
            0x0ce3143a      08f3           fmov @r0,fr3
            0x0ce3143c      5ce0           mov 0x5C,r0
            0x0ce3143e      37fe           fmov fr3,@(r0,r14)
            0x0ce31440      68e0           mov 0x68,r0
            0x0ce31442      8df3           fldi0 fr3
            0x0ce31444      37fe           fmov fr3,@(r0,r14)
            0x0ce31446      24c7           mova @(0x90,PC),r0
            0x0ce31448      08f3           fmov @r0,fr3
            0x0ce3144a      60e0           mov 0x60,r0
            0x0ce3144c      37fe           fmov fr3,@(r0,r14)
            0x0ce3144e      23c7           mova @(0x8C,PC),r0
            0x0ce31450      08f3           fmov @r0,fr3
            0x0ce31452      6ce0           mov 0x6C,r0
            0x0ce31454      37fe           fmov fr3,@(r0,r14)
            0x0ce31456      3890           mov.w @(0x70,PC),r0
            0x0ce31458      ec03           mov.b @(r0,r14),r3
            0x0ce3145a      3823           tst r3,r3
            0x0ce3145c      038b           bf 0x0ce31466
            0x0ce3145e      5ce0           mov 0x5C,r0
            0x0ce31460      e6f3           fmov @(r0,r14),fr3
            0x0ce31462      4df3           fneg fr3
            0x0ce31464      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31394 (+0x94, +0xc8)
            0x0ce31466      264f           lds.l @r15+,pr
            0x0ce31468      0b00           rts 
            0x0ce3146a      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31580 (+0x4a)
            0x0ce3146c      e62f           mov.l r14,@-r15
            0x0ce3146e      224f           sts.l pr,@-r15
            0x0ce31470      17d3           mov.l @(0x5C,PC),r3
            0x0ce31472      0b43           jsr @r3
            0x0ce31474      436e           mov r4,r14
            0x0ce31476      1ad2           mov.l @(0x68,PC),r2
            0x0ce31478      0b42           jsr @r2
            0x0ce3147a      e364           mov r14,r4
            0x0ce3147c      0c60           extu.b r0,r0
            0x0ce3147e      0820           tst r0,r0
            0x0ce31480      1d89           bt 0x0ce314be
            0x0ce31482      e784           mov.b @(0x7,r14),r0
            0x0ce31484      2ce5           mov 0x2C,r5
            0x0ce31486      8df4           fldi0 fr4
            0x0ce31488      0170           add 0x01,r0
            0x0ce3148a      16d4           mov.l @(0x58,PC),r4
            0x0ce3148c      e780           mov.b r0,@(0x7,r14)
            0x0ce3148e      5ce0           mov 0x5C,r0
            0x0ce31490      47fe           fmov fr4,@(r0,r14)
            0x0ce31492      60e0           mov 0x60,r0
            0x0ce31494      47fe           fmov fr4,@(r0,r14)
            0x0ce31496      68e0           mov 0x68,r0
            0x0ce31498      47fe           fmov fr4,@(r0,r14)
            0x0ce3149a      6ce0           mov 0x6C,r0
            0x0ce3149c      47fe           fmov fr4,@(r0,r14)
            0x0ce3149e      01e0           mov 0x01,r0
            0x0ce314a0      11d3           mov.l @(0x44,PC),r3
            0x0ce314a2      4580           mov.b r0,@(0x5,r4)
            0x0ce314a4      4680           mov.b r0,@(0x6,r4)
            0x0ce314a6      0b43           jsr @r3
            0x0ce314a8      e364           mov r14,r4
            0x0ce314aa      0c90           mov.w @(0x18,PC),r0
            0x0ce314ac      00e2           mov 0x00,r2
            0x0ce314ae      0fd3           mov.l @(0x3C,PC),r3
            0x0ce314b0      e364           mov r14,r4
            0x0ce314b2      240e           mov.b r2,@(r0,r14)
            0x0ce314b4      09e6           mov 0x09,r6
            0x0ce314b6      264f           lds.l @r15+,pr
            0x0ce314b8      0be5           mov 0x0B,r5
            0x0ce314ba      2b43           jmp @r3
            0x0ce314bc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0xec)
            0x0ce314be      264f           lds.l @r15+,pr
            0x0ce314c0      0b00           rts 
            0x0ce314c2      f66e           mov.l @r15+,r14
            0x0ce314c4      fe01           mov.l @(r0,r15),r1
            0x0ce314c6      f901           .word 0x01F9
            0x0ce314c8      5001           .word 0x0150
            0x0ce314ca      d201           stc r5_bank,r1
            0x0ce314cc      842c           mov.b r8,@-r12
            0x0ce314ce      058c           .word 0x8C05
            0x0ce314d0      ee4d           ldc r13,r6_bank
            0x0ce314d2      038c           .word 0x8C03
            0x0ce314d4      aaaa           bra 0x0ce30a2c
            0x0ce314d6      6241           sts.l fpscr,@-r1
            0x0ce314d8      9224           mov.l r9,@r4
            0x0ce314da      89c1           mov.w r0,@(0x112,gbr)
            0x0ce314dc      9224           mov.l r9,@r4
            0x0ce314de      09bf           bsr fcn.0ce312f4
            0x0ce314e0      e22c           mov.l r14,@r12
            0x0ce314e2      058c           .word 0x8C05
            0x0ce314e4      18a5           bra 0x0ce31f18
            0x0ce314e6      268c           .word 0x8C26
            0x0ce314e8      3a22           xor r3,r2
            0x0ce314ea      048c           .word 0x8C04
            0x0ce314ec      8c4e           shad r8,r14
            0x0ce314ee      038c           .word 0x8C03
            ; CODE XREF from fcn.0ce31580 (+0x70)
            0x0ce314f0      e62f           mov.l r14,@-r15
            0x0ce314f2      224f           sts.l pr,@-r15
            0x0ce314f4      37d3           mov.l @(0xDC,PC),r3
            0x0ce314f6      0b43           jsr @r3
            0x0ce314f8      436e           mov r4,r14
            0x0ce314fa      0e60           exts.b r0,r0
            0x0ce314fc      1140           cmp/pz r0
            0x0ce314fe      0989           bt 0x0ce31514
            0x0ce31500      6590           mov.w @(0xCA,PC),r0
            0x0ce31502      01e3           mov 0x01,r3
            0x0ce31504      34d1           mov.l @(0xD0,PC),r1
            0x0ce31506      e364           mov r14,r4
            0x0ce31508      ed02           mov.w @(r0,r14),r2
            0x0ce3150a      3a22           xor r3,r2
            0x0ce3150c      250e           mov.w r2,@(r0,r14)
            0x0ce3150e      264f           lds.l @r15+,pr
            0x0ce31510      2b41           jmp @r1
            0x0ce31512      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x16a)
            0x0ce31514      5c90           mov.w @(0xB8,PC),r0
            0x0ce31516      ec03           mov.b @(r0,r14),r3
            0x0ce31518      3823           tst r3,r3
            0x0ce3151a      0689           bt 0x0ce3152a
            0x0ce3151c      00e3           mov 0x00,r3
            0x0ce3151e      340e           mov.b r3,@(r0,r14)
            0x0ce31520      ef70           add 0xEF,r0
            0x0ce31522      ed02           mov.w @(r0,r14),r2
            0x0ce31524      01e3           mov 0x01,r3
            0x0ce31526      3a22           xor r3,r2
            0x0ce31528      250e           mov.w r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce31394 (+0x186)
            0x0ce3152a      264f           lds.l @r15+,pr
            0x0ce3152c      0b00           rts 
            0x0ce3152e      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31706 (0xce3171a)
            0x0ce31530      4f90           mov.w @(0x9E,PC),r0
            0x0ce31532      e62f           mov.l r14,@-r15
            0x0ce31534      436e           mov r4,r14
            0x0ce31536      d62f           mov.l r13,@-r15
            0x0ce31538      c62f           mov.l r12,@-r15
            0x0ce3153a      224f           sts.l pr,@-r15
            0x0ce3153c      ec00           mov.b @(r0,r14),r0
            0x0ce3153e      27dc           mov.l @(0x9C,PC),r12
            0x0ce31540      0c60           extu.b r0,r0
            0x0ce31542      24dd           mov.l @(0x90,PC),r13
            0x0ce31544      0088           cmp/eq 0x00,r0
            0x0ce31546      0589           bt 0x0ce31554
            0x0ce31548      0188           cmp/eq 0x01,r0
            0x0ce3154a      5389           bt 0x0ce315f4
            0x0ce3154c      0288           cmp/eq 0x02,r0
            0x0ce3154e      5a89           bt 0x0ce31606
            0x0ce31550      79a0           bra 0x0ce31646              ; fcn.0ce31580+0xc6
            0x0ce31552      0900           nop 
            ; CODE XREF from aav.0x0ce31394 (+0x1b2)
            0x0ce31554      e684           mov.b @(0x6,r14),r0
            0x0ce31556      0c60           extu.b r0,r0
            0x0ce31558      0088           cmp/eq 0x00,r0
            0x0ce3155a      0589           bt 0x0ce31568
            0x0ce3155c      0188           cmp/eq 0x01,r0
            0x0ce3155e      0c89           bt 0x0ce3157a
            0x0ce31560      0288           cmp/eq 0x02,r0
            0x0ce31562      1e89           bt 0x0ce315a2
            0x0ce31564      6fa0           bra 0x0ce31646              ; fcn.0ce31580+0xc6
            0x0ce31566      0900           nop 
            ; CODE XREF from aav.0x0ce31394 (+0x1c6)
            0x0ce31568      0b4d           jsr @r13
            0x0ce3156a      e364           mov r14,r4
            0x0ce3156c      0e60           exts.b r0,r0
            0x0ce3156e      1140           cmp/pz r0
            0x0ce31570      0f89           bt 0x0ce31592               ; fcn.0ce31580+0x12
            0x0ce31572      0b4c           jsr @r12
            0x0ce31574      e364           mov r14,r4
            0x0ce31576      0ca0           bra 0x0ce31592              ; fcn.0ce31580+0x12
            0x0ce31578      0900           nop 
            ; CODE XREF from aav.0x0ce31394 (+0x1ca)
            0x0ce3157a      0b4d           jsr @r13
            0x0ce3157c      e364           mov r14,r4
            0x0ce3157e      0e60           exts.b r0,r0
/ (fcn) fcn.0ce31580 58
|   fcn.0ce31580 ();
|           ; CALL XREF from aav.0x0ce31946 (+0x8c)
|           0x0ce31580      1140           cmp/pz r0
|           0x0ce31582      0689           bt 0x0ce31592
|           0x0ce31584      0b4c           jsr @r12
|           0x0ce31586      e364           mov r14,r4
|           0x0ce31588      15d2           mov.l @(0x54,PC),r2
|           0x0ce3158a      01e5           mov 0x01,r5
|           0x0ce3158c      0ce6           mov 0x0C,r6
|           0x0ce3158e      0b42           jsr @r2
|           0x0ce31590      e364           mov r14,r4
|           ; CODE XREFS from aav.0x0ce31394 (+0x1dc, +0x1e2)
|           ; CODE XREF from fcn.0ce31580 (0xce31582)
|           0x0ce31592      14d3           mov.l @(0x50,PC),r3
|           0x0ce31594      0b43           jsr @r3
|           0x0ce31596      e364           mov r14,r4
|           0x0ce31598      0c60           extu.b r0,r0
|           0x0ce3159a      0820           tst r0,r0
|           0x0ce3159c      4c8b           bf 0x0ce31638
|           0x0ce3159e      52a0           bra 0x0ce31646
|           0x0ce315a0      0900           nop 
            ; CODE XREF from aav.0x0ce31394 (+0x1ce)
            0x0ce315a2      e784           mov.b @(0x7,r14),r0
            0x0ce315a4      0c60           extu.b r0,r0
            0x0ce315a6      0088           cmp/eq 0x00,r0
            0x0ce315a8      0589           bt 0x0ce315b6
            0x0ce315aa      0188           cmp/eq 0x01,r0
            0x0ce315ac      0989           bt 0x0ce315c2
            0x0ce315ae      0288           cmp/eq 0x02,r0
            0x0ce315b0      1a89           bt 0x0ce315e8
            0x0ce315b2      48a0           bra 0x0ce31646              ; fcn.0ce31580+0xc6
            0x0ce315b4      0900           nop 
            ; CODE XREF from fcn.0ce31580 (+0x28)
            0x0ce315b6      264f           lds.l @r15+,pr
            0x0ce315b8      e364           mov r14,r4
            0x0ce315ba      f66c           mov.l @r15+,r12
            0x0ce315bc      f66d           mov.l @r15+,r13
            0x0ce315be      2aaf           bra 0x0ce31416
            0x0ce315c0      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31580 (+0x2c)
            0x0ce315c2      264f           lds.l @r15+,pr
            0x0ce315c4      e364           mov r14,r4
            0x0ce315c6      f66c           mov.l @r15+,r12
            0x0ce315c8      f66d           mov.l @r15+,r13
            0x0ce315ca      4faf           bra 0x0ce3146c
            0x0ce315cc      f66e           mov.l @r15+,r14
            0x0ce315ce      3001           .word 0x0130
            0x0ce315d0      4101           .word 0x0141
            0x0ce315d2      e801           .word 0x01E8
            0x0ce315d4      ee4d           ldc r13,r6_bank
            0x0ce315d6      038c           .word 0x8C03
            0x0ce315d8      4816           mov.l r4,@(0x20,r6)
            0x0ce315da      058c           .word 0x8C05
            0x0ce315dc      6e17           mov.l r6,@(0x38,r7)
            0x0ce315de      058c           .word 0x8C05
            0x0ce315e0      8c4e           shad r8,r14
            0x0ce315e2      038c           .word 0x8C03
            0x0ce315e4      e22c           mov.l r14,@r12
            0x0ce315e6      058c           .word 0x8C05
            ; CODE XREF from fcn.0ce31580 (+0x30)
            0x0ce315e8      264f           lds.l @r15+,pr
            0x0ce315ea      e364           mov r14,r4
            0x0ce315ec      f66c           mov.l @r15+,r12
            0x0ce315ee      f66d           mov.l @r15+,r13
            0x0ce315f0      7eaf           bra 0x0ce314f0
            0x0ce315f2      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31394 (+0x1b6)
            0x0ce315f4      0b4d           jsr @r13
            0x0ce315f6      e364           mov r14,r4
            0x0ce315f8      0e60           exts.b r0,r0
            0x0ce315fa      1140           cmp/pz r0
            0x0ce315fc      1689           bt 0x0ce3162c
            0x0ce315fe      0b4c           jsr @r12
            0x0ce31600      e364           mov r14,r4
            0x0ce31602      13a0           bra 0x0ce3162c
            0x0ce31604      0900           nop 
            ; CODE XREF from aav.0x0ce31394 (+0x1ba)
            0x0ce31606      e684           mov.b @(0x6,r14),r0
            0x0ce31608      0c60           extu.b r0,r0
            0x0ce3160a      0088           cmp/eq 0x00,r0
            0x0ce3160c      0389           bt 0x0ce31616
            0x0ce3160e      0188           cmp/eq 0x01,r0
            0x0ce31610      0a89           bt 0x0ce31628
            0x0ce31612      0ba0           bra 0x0ce3162c
            0x0ce31614      0900           nop 
            ; CODE XREF from fcn.0ce31580 (+0x8c)
            0x0ce31616      0b4d           jsr @r13
            0x0ce31618      e364           mov r14,r4
            0x0ce3161a      0e60           exts.b r0,r0
            0x0ce3161c      1140           cmp/pz r0
            0x0ce3161e      0589           bt 0x0ce3162c
            0x0ce31620      0b4c           jsr @r12
            0x0ce31622      e364           mov r14,r4
            0x0ce31624      02a0           bra 0x0ce3162c
            0x0ce31626      0900           nop 
            ; CODE XREF from fcn.0ce31580 (+0x90)
            0x0ce31628      0b4d           jsr @r13
            0x0ce3162a      e364           mov r14,r4
            ; CODE XREFS from fcn.0ce31580 (+0x7c, +0x82, +0x92, +0x9e, +0xa4)
            0x0ce3162c      19d2           mov.l @(0x64,PC),r2
            0x0ce3162e      0b42           jsr @r2
            0x0ce31630      e364           mov r14,r4
            0x0ce31632      0c60           extu.b r0,r0
            0x0ce31634      0820           tst r0,r0
            0x0ce31636      0689           bt 0x0ce31646               ; fcn.0ce31580+0xc6
|           ; CODE XREF from fcn.0ce31580 (0xce3159c)
|           0x0ce31638      264f           lds.l @r15+,pr
|           0x0ce3163a      17d2           mov.l @(0x5C,PC),r2
|           0x0ce3163c      e364           mov r14,r4
|           0x0ce3163e      f66c           mov.l @r15+,r12
|           0x0ce31640      f66d           mov.l @r15+,r13
|           0x0ce31642      2b42           jmp @r2
|           0x0ce31644      f66e           mov.l @r15+,r14
|           ; CODE XREFS from aav.0x0ce31394 (+0x1bc, +0x1d0)
|           ; CODE XREF from fcn.0ce31580 (0xce3159e)
|           ; CODE XREFS from fcn.0ce31580 (+0x32, +0xb6)
|           0x0ce31646      264f           lds.l @r15+,pr
|           0x0ce31648      f66c           mov.l @r15+,r12
|           0x0ce3164a      f66d           mov.l @r15+,r13
|           0x0ce3164c      0b00           rts 
\           0x0ce3164e      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31706 (0xce31712)
            0x0ce31650      1f90           mov.w @(0x3E,PC),r0
            0x0ce31652      e62f           mov.l r14,@-r15
            0x0ce31654      436e           mov r4,r14
            0x0ce31656      d62f           mov.l r13,@-r15
            0x0ce31658      224f           sts.l pr,@-r15
            0x0ce3165a      ec00           mov.b @(r0,r14),r0
            0x0ce3165c      0fdd           mov.l @(0x3C,PC),r13
            0x0ce3165e      0c60           extu.b r0,r0
            0x0ce31660      0088           cmp/eq 0x00,r0
            0x0ce31662      0589           bt 0x0ce31670
            0x0ce31664      0188           cmp/eq 0x01,r0
            0x0ce31666      1d89           bt 0x0ce316a4
            0x0ce31668      0288           cmp/eq 0x02,r0
            0x0ce3166a      1b89           bt 0x0ce316a4
            0x0ce3166c      32a0           bra 0x0ce316d4
            0x0ce3166e      0900           nop 
            ; CODE XREF from fcn.0ce31580 (+0xe2)
            0x0ce31670      e684           mov.b @(0x6,r14),r0
            0x0ce31672      0820           tst r0,r0
            0x0ce31674      0389           bt 0x0ce3167e
            0x0ce31676      0b4d           jsr @r13
            0x0ce31678      e364           mov r14,r4
            0x0ce3167a      2ba0           bra 0x0ce316d4
            0x0ce3167c      0900           nop 
            ; CODE XREF from fcn.0ce31580 (+0xf4)
            0x0ce3167e      0b4d           jsr @r13
            0x0ce31680      e364           mov r14,r4
            0x0ce31682      0e60           exts.b r0,r0
            0x0ce31684      1140           cmp/pz r0
            0x0ce31686      2589           bt 0x0ce316d4
            0x0ce31688      05d3           mov.l @(0x14,PC),r3
            0x0ce3168a      0b43           jsr @r3
            0x0ce3168c      e364           mov r14,r4
            0x0ce3168e      21a0           bra 0x0ce316d4
            0x0ce31690      0900           nop 
            0x0ce31692      e801           .word 0x01E8
            0x0ce31694      e22c           mov.l r14,@r12
            0x0ce31696      058c           .word 0x8C05
            0x0ce31698      ac2d           cmp/str r10,r13
            0x0ce3169a      058c           .word 0x8C05
            0x0ce3169c      ee4d           ldc r13,r6_bank
            0x0ce3169e      038c           .word 0x8C03
            0x0ce316a0      6e17           mov.l r6,@(0x38,r7)
            0x0ce316a2      058c           .word 0x8C05
            ; CODE XREFS from fcn.0ce31580 (+0xe6, +0xea)
            0x0ce316a4      0b4d           jsr @r13
            0x0ce316a6      e364           mov r14,r4
            0x0ce316a8      0e60           exts.b r0,r0
            0x0ce316aa      1140           cmp/pz r0
            0x0ce316ac      0289           bt 0x0ce316b4
            0x0ce316ae      2dd2           mov.l @(0xB4,PC),r2
            0x0ce316b0      0b42           jsr @r2
            0x0ce316b2      e364           mov r14,r4
            ; CODE XREF from fcn.0ce31580 (+0x12c)
            0x0ce316b4      5190           mov.w @(0xA2,PC),r0
            0x0ce316b6      ec00           mov.b @(r0,r14),r0
            0x0ce316b8      0c60           extu.b r0,r0
            0x0ce316ba      0288           cmp/eq 0x02,r0
            0x0ce316bc      0a8b           bf 0x0ce316d4
            0x0ce316be      4d90           mov.w @(0x9A,PC),r0
            0x0ce316c0      ec02           mov.b @(r0,r14),r2
            0x0ce316c2      2822           tst r2,r2
            0x0ce316c4      0689           bt 0x0ce316d4
            0x0ce316c6      28d3           mov.l @(0xA0,PC),r3
            0x0ce316c8      16e5           mov 0x16,r5
            0x0ce316ca      0b43           jsr @r3
            0x0ce316cc      e364           mov r14,r4
            0x0ce316ce      4590           mov.w @(0x8A,PC),r0
            0x0ce316d0      00e2           mov 0x00,r2
            0x0ce316d2      240e           mov.b r2,@(r0,r14)
            ; XREFS: CODE 0x0ce3166c  CODE 0x0ce3167a  CODE 0x0ce31686  
            ; XREFS: CODE 0x0ce3168e  CODE 0x0ce316bc  CODE 0x0ce316c4  
            0x0ce316d4      25d2           mov.l @(0x94,PC),r2
            0x0ce316d6      0b42           jsr @r2
            0x0ce316d8      e364           mov r14,r4
            0x0ce316da      0c60           extu.b r0,r0
            0x0ce316dc      0820           tst r0,r0
            0x0ce316de      0589           bt 0x0ce316ec
            0x0ce316e0      264f           lds.l @r15+,pr
            0x0ce316e2      23d2           mov.l @(0x8C,PC),r2
            0x0ce316e4      e364           mov r14,r4
            0x0ce316e6      f66d           mov.l @r15+,r13
            0x0ce316e8      2b42           jmp @r2
            0x0ce316ea      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce31580 (+0x15e)
            0x0ce316ec      264f           lds.l @r15+,pr
            0x0ce316ee      f66d           mov.l @r15+,r13
            0x0ce316f0      0b00           rts 
            0x0ce316f2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce316f4:
            ; CODE XREF from aav.0x0ce3171e (+0x14)
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d9c)
            0x0ce316f4      e62f           mov.l r14,@-r15
            0x0ce316f6      224f           sts.l pr,@-r15
            0x0ce316f8      1ed3           mov.l @(0x78,PC),r3
            0x0ce316fa      0b43           jsr @r3
            0x0ce316fc      436e           mov r4,r14
            0x0ce316fe      1ed2           mov.l @(0x78,PC),r2
            0x0ce31700      0b42           jsr @r2
            0x0ce31702      e364           mov r14,r4
            0x0ce31704      2b90           mov.w @(0x56,PC),r0
/ (fcn) fcn.0ce31706 670
|   fcn.0ce31706 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce31946 (+0x7c)
|           0x0ce31706      ec00           mov.b @(r0,r14),r0
|           0x0ce31708      0c60           extu.b r0,r0
|           0x0ce3170a      0188           cmp/eq 0x01,r0
|           0x0ce3170c      038b           bf 0x0ce31716
|           0x0ce3170e      264f           lds.l @r15+,pr
|           0x0ce31710      e364           mov r14,r4
|           0x0ce31712      9daf           bra 0x0ce31650
|           0x0ce31714      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce31706 (0xce3170c)
|           0x0ce31716      264f           lds.l @r15+,pr
|           0x0ce31718      e364           mov r14,r4
|           0x0ce3171a      09af           bra 0x0ce31530
\           0x0ce3171c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3171e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36da0)
            0x0ce3171e      e62f           mov.l r14,@-r15
            0x0ce31720      224f           sts.l pr,@-r15
            0x0ce31722      16d3           mov.l @(0x58,PC),r3
            0x0ce31724      0b43           jsr @r3
            0x0ce31726      436e           mov r4,r14
            0x0ce31728      15d2           mov.l @(0x54,PC),r2
            0x0ce3172a      0b42           jsr @r2
            0x0ce3172c      e364           mov r14,r4
            0x0ce3172e      264f           lds.l @r15+,pr
            0x0ce31730      e364           mov r14,r4
            0x0ce31732      dfaf           bra aav.0x0ce316f4
            0x0ce31734      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31736:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36da4)
            0x0ce31736      224f           sts.l pr,@-r15
            0x0ce31738      12d3           mov.l @(0x48,PC),r3
            0x0ce3173a      0b43           jsr @r3
            0x0ce3173c      462f           mov.l r4,@-r15
            0x0ce3173e      f264           mov.l @r15,r4
            0x0ce31740      047f           add 0x04,r15
            0x0ce31742      27ae           bra aav.0x0ce31394
            0x0ce31744      264f           lds.l @r15+,pr
            ;-- aav.0x0ce31746:
            ; UNKNOWN XREF from aav.0x0ce36d18 (+0xc)
            0x0ce31746      0b90           mov.w @(0x16,PC),r0
            0x0ce31748      4363           mov r4,r3
            0x0ce3174a      462f           mov.l r4,@-r15
            0x0ce3174c      3c02           mov.b @(r0,r3),r2
            0x0ce3174e      0ed0           mov.l @(0x38,PC),r0
            0x0ce31750      2c62           extu.b r2,r2
            0x0ce31752      0842           shll2 r2
            0x0ce31754      2e03           mov.l @(r0,r2),r3
            0x0ce31756      2b43           jmp @r3
            0x0ce31758      047f           add 0x04,r15
            0x0ce3175a      e801           .word 0x01E8
            0x0ce3175c      4b01           .word 0x014B
            0x0ce3175e      fe01           mov.l @(r0,r15),r1
            0x0ce31760      ff01           mac.l @r15+,@r1+
            0x0ce31762      0000           .word 0x0000
            0x0ce31764      6e17           mov.l r6,@(0x38,r7)
            0x0ce31766      058c           .word 0x8C05
            0x0ce31768      3a22           xor r3,r2
            0x0ce3176a      048c           .word 0x8C04
            0x0ce3176c      e22c           mov.l r14,@r12
            0x0ce3176e      058c           .word 0x8C05
            0x0ce31770      ac2d           cmp/str r10,r13
            0x0ce31772      058c           .word 0x8C05
            0x0ce31774      a8fe           fmov @r10,fr14
            0x0ce31776      048c           .word 0x8C04
            0x0ce31778      4800           clrs 
            0x0ce3177a      058c           .word 0x8C05
            0x0ce3177c      8400           mov.b r8,@(r0,r0)
            0x0ce3177e      058c           .word 0x8C05
            0x0ce31780      88ff           fmov @r8,fr15
            0x0ce31782      048c           .word 0x8C04
            0x0ce31784      e211           mov.l r14,@(0x8,r1)
            0x0ce31786      058c           .word 0x8C05
            0x0ce31788      .dword 0x0ce36d98 ; aav.0x0ce36d98
            ;-- aav.0x0ce3178c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d54)
            0x0ce3178c      e62f           mov.l r14,@-r15
            0x0ce3178e      436e           mov r4,r14
            0x0ce31790      d62f           mov.l r13,@-r15
            0x0ce31792      224f           sts.l pr,@-r15
            0x0ce31794      e684           mov.b @(0x6,r14),r0
            0x0ce31796      0820           tst r0,r0
            0x0ce31798      288f           bf.s 0x0ce317ec
            0x0ce3179a      00ed           mov 0x00,r13
            0x0ce3179c      3bd3           mov.l @(0xEC,PC),r3
            0x0ce3179e      0b43           jsr @r3
            0x0ce317a0      e364           mov r14,r4
            0x0ce317a2      e684           mov.b @(0x6,r14),r0
            0x0ce317a4      05e5           mov 0x05,r5
            0x0ce317a6      3ad3           mov.l @(0xE8,PC),r3
            0x0ce317a8      0170           add 0x01,r0
            0x0ce317aa      e680           mov.b r0,@(0x6,r14)
            0x0ce317ac      0b43           jsr @r3
            0x0ce317ae      e364           mov r14,r4
            0x0ce317b0      6690           mov.w @(0xCC,PC),r0
            0x0ce317b2      ec02           mov.b @(r0,r14),r2
            0x0ce317b4      2822           tst r2,r2
            0x0ce317b6      198b           bf 0x0ce317ec
            0x0ce317b8      6390           mov.w @(0xC6,PC),r0
            0x0ce317ba      18e1           mov 0x18,r1
            0x0ce317bc      01e3           mov 0x01,r3
            0x0ce317be      140e           mov.b r1,@(r0,r14)
            0x0ce317c0      5870           add 0x58,r0
            0x0ce317c2      340e           mov.b r3,@(r0,r14)
            0x0ce317c4      14e5           mov 0x14,r5
            0x0ce317c6      33d3           mov.l @(0xCC,PC),r3
            0x0ce317c8      03e6           mov 0x03,r6
            0x0ce317ca      0b43           jsr @r3
            0x0ce317cc      e364           mov r14,r4
            0x0ce317ce      5990           mov.w @(0xB2,PC),r0
            0x0ce317d0      31d3           mov.l @(0xC4,PC),r3
            0x0ce317d2      d50e           mov.w r13,@(r0,r14)
            0x0ce317d4      f270           add 0xF2,r0
            0x0ce317d6      d40e           mov.b r13,@(r0,r14)
            0x0ce317d8      2670           add 0x26,r0
            0x0ce317da      d60e           mov.l r13,@(r0,r14)
            0x0ce317dc      e284           mov.b @(0x2,r14),r0
            0x0ce317de      3262           mov.l @r3,r2
            0x0ce317e0      0c60           extu.b r0,r0
            0x0ce317e2      0040           shll r0
            0x0ce317e4      7c72           add 0x7C,r2
            0x0ce317e6      2d01           mov.w @(r0,r2),r1
            0x0ce317e8      0171           add 0x01,r1
            0x0ce317ea      1502           mov.w r1,@(r0,r2)
            ; CODE XREFS from aav.0x0ce3178c (+0xc, +0x2a)
            0x0ce317ec      4b90           mov.w @(0x96,PC),r0
            0x0ce317ee      ec00           mov.b @(r0,r14),r0
            0x0ce317f0      0c60           extu.b r0,r0
            0x0ce317f2      0388           cmp/eq 0x03,r0
            0x0ce317f4      028b           bf 0x0ce317fc
            0x0ce317f6      29d2           mov.l @(0xA4,PC),r2
            0x0ce317f8      0b42           jsr @r2
            0x0ce317fa      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce3178c (+0x68)
            0x0ce317fc      5ce1           mov 0x5C,r1
            0x0ce317fe      28d3           mov.l @(0xA0,PC),r3
            0x0ce31800      ec31           add r14,r1
            0x0ce31802      34e0           mov 0x34,r0
            0x0ce31804      18f3           fmov @r1,fr3
            0x0ce31806      e6f2           fmov @(r0,r14),fr2
            0x0ce31808      68e1           mov 0x68,r1
            0x0ce3180a      ec31           add r14,r1
            0x0ce3180c      30f2           fadd fr3,fr2
            0x0ce3180e      27fe           fmov fr2,@(r0,r14)
            0x0ce31810      5ce0           mov 0x5C,r0
            0x0ce31812      e6f2           fmov @(r0,r14),fr2
            0x0ce31814      18f3           fmov @r1,fr3
            0x0ce31816      60e1           mov 0x60,r1
            0x0ce31818      ec31           add r14,r1
            0x0ce3181a      30f2           fadd fr3,fr2
            0x0ce3181c      27fe           fmov fr2,@(r0,r14)
            0x0ce3181e      38e0           mov 0x38,r0
            0x0ce31820      e6f2           fmov @(r0,r14),fr2
            0x0ce31822      18f3           fmov @r1,fr3
            0x0ce31824      6ce1           mov 0x6C,r1
            0x0ce31826      ec31           add r14,r1
            0x0ce31828      30f2           fadd fr3,fr2
            0x0ce3182a      27fe           fmov fr2,@(r0,r14)
            0x0ce3182c      60e0           mov 0x60,r0
            0x0ce3182e      e6f2           fmov @(r0,r14),fr2
            0x0ce31830      18f3           fmov @r1,fr3
            0x0ce31832      30f2           fadd fr3,fr2
            0x0ce31834      27fe           fmov fr2,@(r0,r14)
            0x0ce31836      0b43           jsr @r3
            0x0ce31838      e364           mov r14,r4
            0x0ce3183a      2590           mov.w @(0x4A,PC),r0
            0x0ce3183c      ec02           mov.b @(r0,r14),r2
            0x0ce3183e      2822           tst r2,r2
            0x0ce31840      0589           bt 0x0ce3184e
            0x0ce31842      18d3           mov.l @(0x60,PC),r3
            0x0ce31844      15e5           mov 0x15,r5
            0x0ce31846      0b43           jsr @r3
            0x0ce31848      e364           mov r14,r4
            0x0ce3184a      1d90           mov.w @(0x3A,PC),r0
            0x0ce3184c      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce3178c (+0xb4)
            0x0ce3184e      16d3           mov.l @(0x58,PC),r3
            0x0ce31850      0b43           jsr @r3
            0x0ce31852      e364           mov r14,r4
            0x0ce31854      0e60           exts.b r0,r0
            0x0ce31856      1140           cmp/pz r0
            0x0ce31858      0589           bt 0x0ce31866
            0x0ce3185a      264f           lds.l @r15+,pr
            0x0ce3185c      13d3           mov.l @(0x4C,PC),r3
            0x0ce3185e      e364           mov r14,r4
            0x0ce31860      f66d           mov.l @r15+,r13
            0x0ce31862      2b43           jmp @r3
            0x0ce31864      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3178c (+0xcc)
            0x0ce31866      264f           lds.l @r15+,pr
            0x0ce31868      f66d           mov.l @r15+,r13
            0x0ce3186a      0b00           rts 
            0x0ce3186c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3186e:
            ; UNKNOWN XREF from aav.0x0ce36d18 (+0x10)
            0x0ce3186e      4363           mov r4,r3
            0x0ce31870      0fd1           mov.l @(0x3C,PC),r1
            0x0ce31872      462f           mov.l r4,@-r15
            0x0ce31874      3684           mov.b @(0x6,r3),r0
            0x0ce31876      0c60           extu.b r0,r0
            0x0ce31878      0840           shll2 r0
            0x0ce3187a      1e03           mov.l @(r0,r1),r3
            0x0ce3187c      2b43           jmp @r3
            0x0ce3187e      047f           add 0x04,r15
            0x0ce31880      fe01           mov.l @(r0,r15),r1
            0x0ce31882      a101           .word 0x01A1
            0x0ce31884      ac01           mov.b @(r0,r10),r1
            0x0ce31886      ff01           mac.l @r15+,@r1+
            0x0ce31888      4b01           .word 0x014B
            0x0ce3188a      0000           .word 0x0000
            0x0ce3188c      4c2b           cmp/str r4,r11
            0x0ce3188e      058c           .word 0x8C05
            0x0ce31890      e46d           mov.b @r14+,r13
            0x0ce31892      058c           .word 0x8C05
            0x0ce31894      8c4e           shad r8,r14
            0x0ce31896      038c           .word 0x8C03
            0x0ce31898      b096           mov.w @(0x160,PC),r6
            0x0ce3189a      288c           .word 0x8C28
            0x0ce3189c      e211           mov.l r14,@(0x8,r1)
            0x0ce3189e      058c           .word 0x8C05
            0x0ce318a0      842c           mov.b r8,@-r12
            0x0ce318a2      058c           .word 0x8C05
            0x0ce318a4      3a22           xor r3,r2
            0x0ce318a6      048c           .word 0x8C04
            0x0ce318a8      ee4d           ldc r13,r6_bank
            0x0ce318aa      038c           .word 0x8C03
            0x0ce318ac      4816           mov.l r4,@(0x20,r6)
            0x0ce318ae      058c           .word 0x8C05
            0x0ce318b0      .dword 0x0ce36da8 ; aav.0x0ce36da8
            ;-- aav.0x0ce318b4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36da8)
            0x0ce318b4      e62f           mov.l r14,@-r15
            0x0ce318b6      224f           sts.l pr,@-r15
            0x0ce318b8      3ed3           mov.l @(0xF8,PC),r3
            0x0ce318ba      0b43           jsr @r3
            0x0ce318bc      436e           mov r4,r14
            0x0ce318be      7590           mov.w @(0xEA,PC),r0
            0x0ce318c0      ec02           mov.b @(r0,r14),r2
            0x0ce318c2      2822           tst r2,r2
            0x0ce318c4      3c8b           bf 0x0ce31940
            0x0ce318c6      e684           mov.b @(0x6,r14),r0
            0x0ce318c8      8df4           fldi0 fr4
            0x0ce318ca      0170           add 0x01,r0
            0x0ce318cc      e680           mov.b r0,@(0x6,r14)
            0x0ce318ce      5ce0           mov 0x5C,r0
            0x0ce318d0      47fe           fmov fr4,@(r0,r14)
            0x0ce318d2      60e0           mov 0x60,r0
            0x0ce318d4      47fe           fmov fr4,@(r0,r14)
            0x0ce318d6      68e0           mov 0x68,r0
            0x0ce318d8      47fe           fmov fr4,@(r0,r14)
            0x0ce318da      6ce0           mov 0x6C,r0
            0x0ce318dc      47fe           fmov fr4,@(r0,r14)
            0x0ce318de      1ee0           mov 0x1E,r0
            0x0ce318e0      ee81           mov.w r0,@(0x1C,r14)
            0x0ce318e2      6490           mov.w @(0xC8,PC),r0
            0x0ce318e4      ec03           mov.b @(r0,r14),r3
            0x0ce318e6      3823           tst r3,r3
            0x0ce318e8      148b           bf 0x0ce31914
            0x0ce318ea      6190           mov.w @(0xC2,PC),r0
            0x0ce318ec      ec03           mov.b @(r0,r14),r3
            0x0ce318ee      3823           tst r3,r3
            0x0ce318f0      0289           bt 0x0ce318f8
            0x0ce318f2      31c7           mova @(0xC4,PC),r0
            0x0ce318f4      02a0           bra 0x0ce318fc
            0x0ce318f6      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x3c)
            0x0ce318f8      30c7           mova @(0xC0,PC),r0
            0x0ce318fa      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x40)
            0x0ce318fc      5ce0           mov 0x5C,r0
            0x0ce318fe      37fe           fmov fr3,@(r0,r14)
            0x0ce31900      5690           mov.w @(0xAC,PC),r0
            0x0ce31902      ec03           mov.b @(r0,r14),r3
            0x0ce31904      3823           tst r3,r3
            0x0ce31906      0289           bt 0x0ce3190e
            0x0ce31908      2dc7           mova @(0xB4,PC),r0
            0x0ce3190a      17a0           bra 0x0ce3193c
            0x0ce3190c      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x52)
            0x0ce3190e      2dc7           mova @(0xB4,PC),r0
            0x0ce31910      14a0           bra 0x0ce3193c
            0x0ce31912      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x34)
            0x0ce31914      4c90           mov.w @(0x98,PC),r0
            0x0ce31916      ec03           mov.b @(r0,r14),r3
            0x0ce31918      3823           tst r3,r3
            0x0ce3191a      0289           bt 0x0ce31922
            0x0ce3191c      2ac7           mova @(0xA8,PC),r0
            0x0ce3191e      02a0           bra 0x0ce31926
            0x0ce31920      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x66)
            0x0ce31922      2ac7           mova @(0xA8,PC),r0
            0x0ce31924      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x6a)
            0x0ce31926      5ce0           mov 0x5C,r0
            0x0ce31928      37fe           fmov fr3,@(r0,r14)
            0x0ce3192a      4190           mov.w @(0x82,PC),r0
            0x0ce3192c      ec03           mov.b @(r0,r14),r3
            0x0ce3192e      3823           tst r3,r3
            0x0ce31930      0289           bt 0x0ce31938
            0x0ce31932      27c7           mova @(0x9C,PC),r0
            0x0ce31934      02a0           bra 0x0ce3193c
            0x0ce31936      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce318b4 (+0x7c)
            0x0ce31938      26c7           mova @(0x98,PC),r0
            0x0ce3193a      08f3           fmov @r0,fr3
            ; CODE XREFS from aav.0x0ce318b4 (+0x56, +0x5c, +0x80)
            0x0ce3193c      68e0           mov 0x68,r0
            0x0ce3193e      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce318b4 (+0x10)
            0x0ce31940      264f           lds.l @r15+,pr
            0x0ce31942      0b00           rts 
            0x0ce31944      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31946:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dac)
            0x0ce31946      e62f           mov.l r14,@-r15
            0x0ce31948      5ce1           mov 0x5C,r1
            0x0ce3194a      436e           mov r4,r14
            0x0ce3194c      ec31           add r14,r1
            0x0ce3194e      34e0           mov 0x34,r0
            0x0ce31950      18d3           mov.l @(0x60,PC),r3
            0x0ce31952      224f           sts.l pr,@-r15
            0x0ce31954      e6f2           fmov @(r0,r14),fr2
            0x0ce31956      18f3           fmov @r1,fr3
            0x0ce31958      68e1           mov 0x68,r1
            0x0ce3195a      ec31           add r14,r1
            0x0ce3195c      30f2           fadd fr3,fr2
            0x0ce3195e      27fe           fmov fr2,@(r0,r14)
            0x0ce31960      5ce0           mov 0x5C,r0
            0x0ce31962      18f3           fmov @r1,fr3
            0x0ce31964      60e1           mov 0x60,r1
            0x0ce31966      e6f2           fmov @(r0,r14),fr2
            0x0ce31968      ec31           add r14,r1
            0x0ce3196a      30f2           fadd fr3,fr2
            0x0ce3196c      27fe           fmov fr2,@(r0,r14)
            0x0ce3196e      38e0           mov 0x38,r0
            0x0ce31970      e6f2           fmov @(r0,r14),fr2
            0x0ce31972      18f3           fmov @r1,fr3
            ; CODE XREF from aav.0x0ce323b2 (+0x6a)
            0x0ce31974      6ce1           mov 0x6C,r1
            0x0ce31976      ec31           add r14,r1
            0x0ce31978      30f2           fadd fr3,fr2
            0x0ce3197a      27fe           fmov fr2,@(r0,r14)
            0x0ce3197c      60e0           mov 0x60,r0
            0x0ce3197e      e6f2           fmov @(r0,r14),fr2
            0x0ce31980      18f3           fmov @r1,fr3
            0x0ce31982      30f2           fadd fr3,fr2
            0x0ce31984      27fe           fmov fr2,@(r0,r14)
            0x0ce31986      0b43           jsr @r3
            0x0ce31988      e364           mov r14,r4
            0x0ce3198a      13d2           mov.l @(0x4C,PC),r2
            0x0ce3198c      0b42           jsr @r2
            0x0ce3198e      e364           mov r14,r4
            0x0ce31990      0820           tst r0,r0
            0x0ce31992      258d           bt.s 0x0ce319e0
            0x0ce31994      0365           mov r0,r5
            0x0ce31996      00e0           mov 0x00,r0
            0x0ce31998      e364           mov r14,r4
            0x0ce3199a      e780           mov.b r0,@(0x7,r14)
            0x0ce3199c      07e3           mov 0x07,r3
            0x0ce3199e      e680           mov.b r0,@(0x6,r14)
            0x0ce319a0      0790           mov.w @(0xE,PC),r0
            0x0ce319a2      340e           mov.b r3,@(r0,r14)
            0x0ce319a4      264f           lds.l @r15+,pr
            0x0ce319a6      0dd3           mov.l @(0x34,PC),r3
            0x0ce319a8      2b43           jmp @r3
            0x0ce319aa      f66e           mov.l @r15+,r14
            0x0ce319ac      4101           .word 0x0141
            0x0ce319ae      0202           stc sr,r2
            0x0ce319b0      d201           stc r5_bank,r1
            0x0ce319b2      f701           mul.l r15,r1
            0x0ce319b4      ee4d           ldc r13,r6_bank
            0x0ce319b6      038c           .word 0x8C03
            0x0ce319b8      5555           mov.l @(0x14,r5),r5
            0x0ce319ba      2d41           shld r2,r1
            0x0ce319bc      5555           mov.l @(0x14,r5),r5
            0x0ce319be      2dc1           mov.w r0,@(0x5A,gbr)
            0x0ce319c0      0000           .word 0x0000
            0x0ce319c2      a0be           bsr fcn.0ce31706
            0x0ce319c4      0000           .word 0x0000
            0x0ce319c6      a03e           cmp/eq r10,r14
            0x0ce319c8      aaaa           bra 0x0ce30f20
            0x0ce319ca      ba40           .word 0x40BA
            0x0ce319cc      aaaa           bra 0x0ce30f24
            0x0ce319ce      bac0           mov.b r0,@(0xBA,gbr)
            0x0ce319d0      5555           mov.l @(0x14,r5),r5
            0x0ce319d2      d5bd           bsr fcn.0ce31580
            0x0ce319d4      5555           mov.l @(0x14,r5),r5
            0x0ce319d6      d53d           dmulu.l r13,r13
            0x0ce319d8      9057           mov.l @(0x0,r9),r7
            0x0ce319da      048c           .word 0x8C04
            0x0ce319dc      e022           mov.b r14,@r2
            0x0ce319de      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce31946 (+0x4c)
            0x0ce319e0      ee85           mov.w @(0x1C,r14),r0
            0x0ce319e2      ff70           add 0xFF,r0
            0x0ce319e4      ee81           mov.w r0,@(0x1C,r14)
            0x0ce319e6      0f60           exts.w r0,r0
            0x0ce319e8      0820           tst r0,r0
            0x0ce319ea      098b           bf 0x0ce31a00
            0x0ce319ec      e684           mov.b @(0x6,r14),r0
            0x0ce319ee      e364           mov r14,r4
            0x0ce319f0      4bd3           mov.l @(0x12C,PC),r3
            0x0ce319f2      05e6           mov 0x05,r6
            0x0ce319f4      0170           add 0x01,r0
            0x0ce319f6      e680           mov.b r0,@(0x6,r14)
            0x0ce319f8      0fe5           mov 0x0F,r5
            0x0ce319fa      264f           lds.l @r15+,pr
            0x0ce319fc      2b43           jmp @r3
            0x0ce319fe      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31946 (+0xa4)
            0x0ce31a00      264f           lds.l @r15+,pr
            0x0ce31a02      0b00           rts 
            0x0ce31a04      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31a06:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36db0)
            0x0ce31a06      224f           sts.l pr,@-r15
            0x0ce31a08      fc7f           add 0xFC,r15
            0x0ce31a0a      46d3           mov.l @(0x118,PC),r3
            0x0ce31a0c      0b43           jsr @r3
            0x0ce31a0e      422f           mov.l r4,@r15
            0x0ce31a10      0e60           exts.b r0,r0
            0x0ce31a12      1140           cmp/pz r0
            0x0ce31a14      0489           bt 0x0ce31a20
            0x0ce31a16      f264           mov.l @r15,r4
            0x0ce31a18      047f           add 0x04,r15
            0x0ce31a1a      43d3           mov.l @(0x10C,PC),r3
            0x0ce31a1c      2b43           jmp @r3
            0x0ce31a1e      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce31a06 (+0xe)
            0x0ce31a20      047f           add 0x04,r15
            0x0ce31a22      264f           lds.l @r15+,pr
            0x0ce31a24      0b00           rts 
            0x0ce31a26      0900           nop 
            ;-- aav.0x0ce31a28:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d2c)
            0x0ce31a28      3fd3           mov.l @(0xFC,PC),r3
            0x0ce31a2a      2b43           jmp @r3
            0x0ce31a2c      0900           nop 
            ;-- aav.0x0ce31a2e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d30)
            0x0ce31a2e      4363           mov r4,r3
            0x0ce31a30      3ed1           mov.l @(0xF8,PC),r1
            0x0ce31a32      462f           mov.l r4,@-r15
            0x0ce31a34      3684           mov.b @(0x6,r3),r0
            0x0ce31a36      0c60           extu.b r0,r0
            0x0ce31a38      0840           shll2 r0
            0x0ce31a3a      1e03           mov.l @(r0,r1),r3
            0x0ce31a3c      2b43           jmp @r3
            0x0ce31a3e      047f           add 0x04,r15
            ;-- aav.0x0ce31a40:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36db4)
            0x0ce31a40      4684           mov.b @(0x6,r4),r0
            0x0ce31a42      00e6           mov 0x00,r6
            0x0ce31a44      36d3           mov.l @(0xD8,PC),r3
            0x0ce31a46      0170           add 0x01,r0
            0x0ce31a48      4680           mov.b r0,@(0x6,r4)
            0x0ce31a4a      2b43           jmp @r3
            0x0ce31a4c      12e5           mov 0x12,r5
            ;-- aav.0x0ce31a4e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36db8)
            0x0ce31a4e      224f           sts.l pr,@-r15
            0x0ce31a50      fc7f           add 0xFC,r15
            0x0ce31a52      34d3           mov.l @(0xD0,PC),r3
            0x0ce31a54      0b43           jsr @r3
            0x0ce31a56      422f           mov.l r4,@r15
            0x0ce31a58      0e60           exts.b r0,r0
            0x0ce31a5a      1140           cmp/pz r0
            0x0ce31a5c      0389           bt 0x0ce31a66
            0x0ce31a5e      f263           mov.l @r15,r3
            0x0ce31a60      3584           mov.b @(0x5,r3),r0
            0x0ce31a62      0170           add 0x01,r0
            0x0ce31a64      3580           mov.b r0,@(0x5,r3)
            ; CODE XREF from aav.0x0ce31a4e (+0xe)
            0x0ce31a66      047f           add 0x04,r15
            0x0ce31a68      264f           lds.l @r15+,pr
            0x0ce31a6a      0b00           rts 
            0x0ce31a6c      0900           nop 
            ;-- aav.0x0ce31a6e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dbc)
            0x0ce31a6e      4684           mov.b @(0x6,r4),r0
            0x0ce31a70      2fd3           mov.l @(0xBC,PC),r3
            0x0ce31a72      0170           add 0x01,r0
            0x0ce31a74      4680           mov.b r0,@(0x6,r4)
            0x0ce31a76      3260           mov.l @r3,r0
            0x0ce31a78      0750           mov.l @(0x1C,r0),r0
            0x0ce31a7a      01c8           tst 0x01,r0
            0x0ce31a7c      0389           bt 0x0ce31a86
            0x0ce31a7e      28d1           mov.l @(0xA0,PC),r1
            0x0ce31a80      00e6           mov 0x00,r6
            0x0ce31a82      2b41           jmp @r1
            0x0ce31a84      13e5           mov 0x13,r5
            ; CODE XREF from aav.0x0ce31a6e (+0xe)
            0x0ce31a86      26d2           mov.l @(0x98,PC),r2
            0x0ce31a88      01e6           mov 0x01,r6
            0x0ce31a8a      2b42           jmp @r2
            0x0ce31a8c      13e5           mov 0x13,r5
            ;-- aav.0x0ce31a8e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dc0)
            0x0ce31a8e      25d3           mov.l @(0x94,PC),r3
            0x0ce31a90      2b43           jmp @r3
            0x0ce31a92      0900           nop 
            ;-- aav.0x0ce31a94:
            ; UNKNOWN XREFS from fcn.0ce36d2a (0xce36dd4, 0xce36ddc)
            0x0ce31a94      4363           mov r4,r3
            0x0ce31a96      27d1           mov.l @(0x9C,PC),r1
            0x0ce31a98      462f           mov.l r4,@-r15
            0x0ce31a9a      3684           mov.b @(0x6,r3),r0
            0x0ce31a9c      0c60           extu.b r0,r0
            0x0ce31a9e      0840           shll2 r0
            0x0ce31aa0      1e03           mov.l @(r0,r1),r3
            0x0ce31aa2      2b43           jmp @r3
            0x0ce31aa4      047f           add 0x04,r15
            ;-- aav.0x0ce31aa6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dc4)
            0x0ce31aa6      4684           mov.b @(0x6,r4),r0
            0x0ce31aa8      02e6           mov 0x02,r6
            0x0ce31aaa      1dd3           mov.l @(0x74,PC),r3
            0x0ce31aac      0170           add 0x01,r0
            0x0ce31aae      4680           mov.b r0,@(0x6,r4)
            0x0ce31ab0      2b43           jmp @r3
            0x0ce31ab2      13e5           mov 0x13,r5
            ;-- aav.0x0ce31ab4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dc8)
            0x0ce31ab4      1bd3           mov.l @(0x6C,PC),r3
            0x0ce31ab6      2b43           jmp @r3
            0x0ce31ab8      0900           nop 
            ;-- aav.0x0ce31aba:
            ; UNKNOWN XREFS from fcn.0ce36d2a (0xce36dd8, 0xce36de4)
            0x0ce31aba      4363           mov r4,r3
            0x0ce31abc      1ed1           mov.l @(0x78,PC),r1
            0x0ce31abe      462f           mov.l r4,@-r15
            0x0ce31ac0      3684           mov.b @(0x6,r3),r0
            0x0ce31ac2      0c60           extu.b r0,r0
            0x0ce31ac4      0840           shll2 r0
            0x0ce31ac6      1e03           mov.l @(r0,r1),r3
            0x0ce31ac8      2b43           jmp @r3
            0x0ce31aca      047f           add 0x04,r15
            ;-- aav.0x0ce31acc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dcc)
            0x0ce31acc      4684           mov.b @(0x6,r4),r0
            0x0ce31ace      02e6           mov 0x02,r6
            0x0ce31ad0      13d3           mov.l @(0x4C,PC),r3
            0x0ce31ad2      0170           add 0x01,r0
            0x0ce31ad4      4680           mov.b r0,@(0x6,r4)
            0x0ce31ad6      2b43           jmp @r3
            0x0ce31ad8      13e5           mov 0x13,r5
            ;-- aav.0x0ce31ada:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dd0)
            0x0ce31ada      12d3           mov.l @(0x48,PC),r3
            0x0ce31adc      2b43           jmp @r3
            0x0ce31ade      0900           nop 
            ;-- aav.0x0ce31ae0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36de0)
            0x0ce31ae0      4363           mov r4,r3
            0x0ce31ae2      16d1           mov.l @(0x58,PC),r1
            0x0ce31ae4      462f           mov.l r4,@-r15
            0x0ce31ae6      3684           mov.b @(0x6,r3),r0
            0x0ce31ae8      0c60           extu.b r0,r0
            0x0ce31aea      0840           shll2 r0
            0x0ce31aec      1e03           mov.l @(r0,r1),r3
            0x0ce31aee      2b43           jmp @r3
            0x0ce31af0      047f           add 0x04,r15
            ;-- aav.0x0ce31af2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d34)
            0x0ce31af2      e62f           mov.l r14,@-r15
            0x0ce31af4      224f           sts.l pr,@-r15
            0x0ce31af6      12d3           mov.l @(0x48,PC),r3
            0x0ce31af8      0b43           jsr @r3
            0x0ce31afa      436e           mov r4,r14
            0x0ce31afc      0820           tst r0,r0
            0x0ce31afe      0489           bt 0x0ce31b0a
            0x0ce31b00      264f           lds.l @r15+,pr
            0x0ce31b02      09d3           mov.l @(0x24,PC),r3
            0x0ce31b04      e364           mov r14,r4
            0x0ce31b06      2b43           jmp @r3
            0x0ce31b08      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31af2 (+0xc)
            0x0ce31b0a      20e0           mov 0x20,r0
            0x0ce31b0c      e364           mov r14,r4
            0x0ce31b0e      ec02           mov.b @(r0,r14),r2
            0x0ce31b10      0cd0           mov.l @(0x30,PC),r0
            0x0ce31b12      2c62           extu.b r2,r2
            0x0ce31b14      264f           lds.l @r15+,pr
            0x0ce31b16      0842           shll2 r2
            0x0ce31b18      2e03           mov.l @(r0,r2),r3
            0x0ce31b1a      2b43           jmp @r3
            0x0ce31b1c      f66e           mov.l @r15+,r14
            0x0ce31b1e      0000           .word 0x0000
            0x0ce31b20      8c4e           shad r8,r14
            0x0ce31b22      038c           .word 0x8C03
            0x0ce31b24      ee4d           ldc r13,r6_bank
            0x0ce31b26      038c           .word 0x8C03
            0x0ce31b28      4816           mov.l r4,@(0x20,r6)
            0x0ce31b2a      058c           .word 0x8C05
            0x0ce31b2c      .dword 0x0ce36db4 ; aav.0x0ce36db4
            0x0ce31b30      3c82           .word 0x823C
            0x0ce31b32      268c           .word 0x8C26
            0x0ce31b34      .dword 0x0ce36dbc ; aav.0x0ce36dbc
            0x0ce31b38      .dword 0x0ce36dc4 ; aav.0x0ce36dc4
            0x0ce31b3c      .dword 0x0ce36dcc ; aav.0x0ce36dcc
            0x0ce31b40      8a6c           negc r8,r12
            0x0ce31b42      048c           .word 0x8C04
            0x0ce31b44      .dword 0x0ce36dd4 ; aav.0x0ce36dd4
            ;-- aav.0x0ce31b48:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d38)
            0x0ce31b48      8390           mov.w @(0x106,PC),r0
            0x0ce31b4a      4363           mov r4,r3
            0x0ce31b4c      462f           mov.l r4,@-r15
            0x0ce31b4e      3c02           mov.b @(r0,r3),r2
            0x0ce31b50      42d0           mov.l @(0x108,PC),r0
            0x0ce31b52      2c62           extu.b r2,r2
            0x0ce31b54      0842           shll2 r2
            0x0ce31b56      2e03           mov.l @(r0,r2),r3
            0x0ce31b58      2b43           jmp @r3
            0x0ce31b5a      047f           add 0x04,r15
/ (fcn) aav.0x0ce31b5c 58
|   aav.0x0ce31b5c ();
|           ; XREFS: CALL 0x0ce31bf4  CALL 0x0ce31f04  CALL 0x0ce321ba  
|           ; XREFS: CALL 0x0ce322f2  UNKNOWN 0x0ce32ef0  UNKNOWN 0x0ce33a54  
|           ; XREFS: UNKNOWN 0x0ce3475c  UNKNOWN 0x0ce34a70  UNKNOWN 0x0ce34be8  
|           ; XREFS: UNKNOWN 0x0ce35880  UNKNOWN 0x0ce359f4  UNKNOWN 0x0ce35b2c  
|           0x0ce31b5c      e62f           mov.l r14,@-r15
|           0x0ce31b5e      5ce0           mov 0x5C,r0
|           0x0ce31b60      8df4           fldi0 fr4
|           0x0ce31b62      436e           mov r4,r14
|           0x0ce31b64      00e4           mov 0x00,r4
|           0x0ce31b66      3ed3           mov.l @(0xF8,PC),r3
|           0x0ce31b68      224f           sts.l pr,@-r15
|           0x0ce31b6a      47fe           fmov fr4,@(r0,r14)
|           0x0ce31b6c      60e0           mov 0x60,r0
|           0x0ce31b6e      47fe           fmov fr4,@(r0,r14)
|           0x0ce31b70      68e0           mov 0x68,r0
|           0x0ce31b72      47fe           fmov fr4,@(r0,r14)
|           0x0ce31b74      6ce0           mov 0x6C,r0
|           0x0ce31b76      47fe           fmov fr4,@(r0,r14)
|           0x0ce31b78      6c90           mov.w @(0xD8,PC),r0
|           0x0ce31b7a      440e           mov.b r4,@(r0,r14)
|           0x0ce31b7c      fd70           add 0xFD,r0
|           0x0ce31b7e      440e           mov.b r4,@(r0,r14)
|           0x0ce31b80      6990           mov.w @(0xD2,PC),r0
|           0x0ce31b82      e6f3           fmov @(r0,r14),fr3
|           0x0ce31b84      38e0           mov 0x38,r0
|           0x0ce31b86      37fe           fmov fr3,@(r0,r14)
|           0x0ce31b88      0b43           jsr @r3
|           0x0ce31b8a      e364           mov r14,r4
|           0x0ce31b8c      264f           lds.l @r15+,pr
|           0x0ce31b8e      35d2           mov.l @(0xD4,PC),r2
|           0x0ce31b90      e364           mov r14,r4
|           0x0ce31b92      2b42           jmp @r2
\           0x0ce31b94      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31b96:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36de8)
            0x0ce31b96      4363           mov r4,r3
            0x0ce31b98      33d1           mov.l @(0xCC,PC),r1
            0x0ce31b9a      462f           mov.l r4,@-r15
            0x0ce31b9c      3684           mov.b @(0x6,r3),r0
            0x0ce31b9e      0c60           extu.b r0,r0
            0x0ce31ba0      0840           shll2 r0
            0x0ce31ba2      1e03           mov.l @(r0,r1),r3
            0x0ce31ba4      2b43           jmp @r3
            0x0ce31ba6      047f           add 0x04,r15
            ;-- aav.0x0ce31ba8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e40)
            0x0ce31ba8      4363           mov r4,r3
            0x0ce31baa      30d1           mov.l @(0xC0,PC),r1
            0x0ce31bac      462f           mov.l r4,@-r15
            0x0ce31bae      3784           mov.b @(0x7,r3),r0
            0x0ce31bb0      0c60           extu.b r0,r0
            0x0ce31bb2      0840           shll2 r0
            0x0ce31bb4      1e03           mov.l @(r0,r1),r3
            0x0ce31bb6      2b43           jmp @r3
            0x0ce31bb8      047f           add 0x04,r15
            ;-- aav.0x0ce31bba:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e48)
            0x0ce31bba      e62f           mov.l r14,@-r15
            0x0ce31bbc      436e           mov r4,r14
            0x0ce31bbe      32e3           mov 0x32,r3
            0x0ce31bc0      00e4           mov 0x00,r4
            0x0ce31bc2      224f           sts.l pr,@-r15
            0x0ce31bc4      e784           mov.b @(0x7,r14),r0
            0x0ce31bc6      08e5           mov 0x08,r5
            0x0ce31bc8      0170           add 0x01,r0
            0x0ce31bca      e780           mov.b r0,@(0x7,r14)
            0x0ce31bcc      4490           mov.w @(0x88,PC),r0
            0x0ce31bce      340e           mov.b r3,@(r0,r14)
            0x0ce31bd0      0b70           add 0x0B,r0
            0x0ce31bd2      450e           mov.w r4,@(r0,r14)
            0x0ce31bd4      f270           add 0xF2,r0
            0x0ce31bd6      440e           mov.b r4,@(r0,r14)
            0x0ce31bd8      2670           add 0x26,r0
            0x0ce31bda      25d3           mov.l @(0x94,PC),r3
            0x0ce31bdc      460e           mov.l r4,@(r0,r14)
            0x0ce31bde      e284           mov.b @(0x2,r14),r0
            0x0ce31be0      3262           mov.l @r3,r2
            0x0ce31be2      0c60           extu.b r0,r0
            0x0ce31be4      0040           shll r0
            0x0ce31be6      7c72           add 0x7C,r2
            0x0ce31be8      2d01           mov.w @(r0,r2),r1
            0x0ce31bea      0171           add 0x01,r1
            0x0ce31bec      1502           mov.w r1,@(r0,r2)
            0x0ce31bee      21d2           mov.l @(0x84,PC),r2
            0x0ce31bf0      0b42           jsr @r2
            0x0ce31bf2      e364           mov r14,r4
            0x0ce31bf4      b2bf           bsr aav.0x0ce31b5c
            0x0ce31bf6      e364           mov r14,r4
            0x0ce31bf8      1fd2           mov.l @(0x7C,PC),r2
            0x0ce31bfa      03e5           mov 0x03,r5
            0x0ce31bfc      0b42           jsr @r2
            0x0ce31bfe      e364           mov r14,r4
            0x0ce31c00      264f           lds.l @r15+,pr
            0x0ce31c02      1ed3           mov.l @(0x78,PC),r3
            0x0ce31c04      e364           mov r14,r4
            0x0ce31c06      00e6           mov 0x00,r6
            0x0ce31c08      15e5           mov 0x15,r5
            0x0ce31c0a      2b43           jmp @r3
            0x0ce31c0c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31c0e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e4c)
            0x0ce31c0e      e62f           mov.l r14,@-r15
            0x0ce31c10      436e           mov r4,r14
            0x0ce31c12      d62f           mov.l r13,@-r15
            0x0ce31c14      224f           sts.l pr,@-r15
            0x0ce31c16      1ad3           mov.l @(0x68,PC),r3
            0x0ce31c18      1f9d           mov.w @(0x3E,PC),r13
            0x0ce31c1a      0b43           jsr @r3
            0x0ce31c1c      ec3d           add r14,r13
            0x0ce31c1e      5ce1           mov 0x5C,r1
            0x0ce31c20      18d3           mov.l @(0x60,PC),r3
            0x0ce31c22      ec31           add r14,r1
            0x0ce31c24      34e0           mov 0x34,r0
            0x0ce31c26      18f3           fmov @r1,fr3
            0x0ce31c28      e6f2           fmov @(r0,r14),fr2
            0x0ce31c2a      68e1           mov 0x68,r1
            0x0ce31c2c      ec31           add r14,r1
            0x0ce31c2e      30f2           fadd fr3,fr2
            0x0ce31c30      27fe           fmov fr2,@(r0,r14)
            0x0ce31c32      5ce0           mov 0x5C,r0
            0x0ce31c34      e6f2           fmov @(r0,r14),fr2
            0x0ce31c36      18f3           fmov @r1,fr3
            0x0ce31c38      30f2           fadd fr3,fr2
            0x0ce31c3a      27fe           fmov fr2,@(r0,r14)
            0x0ce31c3c      0b43           jsr @r3
            0x0ce31c3e      e364           mov r14,r4
            0x0ce31c40      0e60           exts.b r0,r0
            0x0ce31c42      1140           cmp/pz r0
            0x0ce31c44      2289           bt 0x0ce31c8c
            0x0ce31c46      264f           lds.l @r15+,pr
            0x0ce31c48      0fd3           mov.l @(0x3C,PC),r3
            0x0ce31c4a      e364           mov r14,r4
            0x0ce31c4c      f66d           mov.l @r15+,r13
            0x0ce31c4e      2b43           jmp @r3
            0x0ce31c50      f66e           mov.l @r15+,r14
            0x0ce31c52      e901           .word 0x01E9
            0x0ce31c54      fc01           mov.b @(r0,r15),r1
            0x0ce31c56      1c04           mov.b @(r0,r1),r4
            0x0ce31c58      a101           .word 0x01A1
            0x0ce31c5a      a402           mov.b r10,@(r0,r2)
            0x0ce31c5c      .dword 0x0ce36de8 ; aav.0x0ce36de8
            0x0ce31c60      8a21           xor r8,r1
            0x0ce31c62      058c           .word 0x8C05
            0x0ce31c64      5a11           mov.l r5,@(0x28,r1)
            0x0ce31c66      058c           .word 0x8C05
            0x0ce31c68      .dword 0x0ce36e40 ; aav.0x0ce36e40
            0x0ce31c6c      .dword 0x0ce36e48 ; aav.0x0ce36e48
            0x0ce31c70      b096           mov.w @(0x160,PC),r6
            0x0ce31c72      288c           .word 0x8C28
            0x0ce31c74      e46d           mov.b @r14+,r13
            0x0ce31c76      058c           .word 0x8C05
            0x0ce31c78      0820           tst r0,r0
            0x0ce31c7a      048c           .word 0x8C04
            0x0ce31c7c      8c4e           shad r8,r14
            0x0ce31c7e      038c           .word 0x8C03
            0x0ce31c80      e211           mov.l r14,@(0x8,r1)
            0x0ce31c82      058c           .word 0x8C05
            0x0ce31c84      ee4d           ldc r13,r6_bank
            0x0ce31c86      038c           .word 0x8C03
            0x0ce31c88      4816           mov.l r4,@(0x20,r6)
            0x0ce31c8a      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce31c0e (+0x36)
            0x0ce31c8c      4f90           mov.w @(0x9E,PC),r0
            0x0ce31c8e      ec02           mov.b @(r0,r14),r2
            0x0ce31c90      2822           tst r2,r2
            0x0ce31c92      1489           bt 0x0ce31cbe
            0x0ce31c94      ec03           mov.b @(r0,r14),r3
            0x0ce31c96      6170           add 0x61,r0
            0x0ce31c98      00e4           mov 0x00,r4
            0x0ce31c9a      340e           mov.b r3,@(r0,r14)
            0x0ce31c9c      0b70           add 0x0B,r0
            0x0ce31c9e      450e           mov.w r4,@(r0,r14)
            0x0ce31ca0      f270           add 0xF2,r0
            0x0ce31ca2      440e           mov.b r4,@(r0,r14)
            0x0ce31ca4      2670           add 0x26,r0
            0x0ce31ca6      25d3           mov.l @(0x94,PC),r3
            0x0ce31ca8      460e           mov.l r4,@(r0,r14)
            0x0ce31caa      e284           mov.b @(0x2,r14),r0
            ; CODE XREF from aav.0x0ce31116 (+0x162)
            0x0ce31cac      3262           mov.l @r3,r2
            0x0ce31cae      0c60           extu.b r0,r0
            0x0ce31cb0      0040           shll r0
            0x0ce31cb2      7c72           add 0x7C,r2
            0x0ce31cb4      2d01           mov.w @(r0,r2),r1
            0x0ce31cb6      0171           add 0x01,r1
            0x0ce31cb8      1502           mov.w r1,@(r0,r2)
            0x0ce31cba      3890           mov.w @(0x70,PC),r0
            0x0ce31cbc      440e           mov.b r4,@(r0,r14)
            ; CODE XREF from aav.0x0ce31c0e (+0x84)
            0x0ce31cbe      3790           mov.w @(0x6E,PC),r0
            0x0ce31cc0      ec03           mov.b @(r0,r14),r3
            0x0ce31cc2      3823           tst r3,r3
            0x0ce31cc4      2389           bt 0x0ce31d0e
            0x0ce31cc6      3690           mov.w @(0x6C,PC),r0
            0x0ce31cc8      3395           mov.w @(0x66,PC),r5
            0x0ce31cca      ec03           mov.b @(r0,r14),r3
            0x0ce31ccc      3294           mov.w @(0x64,PC),r4
            0x0ce31cce      3823           tst r3,r3
            0x0ce31cd0      0989           bt 0x0ce31ce6
            0x0ce31cd2      d163           mov.w @r13,r3
            0x0ce31cd4      3d63           extu.w r3,r3
            0x0ce31cd6      5823           tst r5,r3
            0x0ce31cd8      0f8b           bf 0x0ce31cfa               ; fcn.0ce31cf8+0x2
            0x0ce31cda      d161           mov.w @r13,r1
            0x0ce31cdc      1d61           extu.w r1,r1
            0x0ce31cde      4821           tst r4,r1
            0x0ce31ce0      108b           bf 0x0ce31d04               ; fcn.0ce31cf8+0xc
            0x0ce31ce2      14a0           bra 0x0ce31d0e
            0x0ce31ce4      0900           nop 
            ; CODE XREF from aav.0x0ce31c0e (+0xc2)
            0x0ce31ce6      2790           mov.w @(0x4E,PC),r0
            0x0ce31ce8      2793           mov.w @(0x4E,PC),r3
            0x0ce31cea      ed02           mov.w @(r0,r14),r2
            0x0ce31cec      2d62           extu.w r2,r2
            0x0ce31cee      3822           tst r3,r2
            0x0ce31cf0      0d89           bt 0x0ce31d0e
            0x0ce31cf2      ed02           mov.w @(r0,r14),r2
            0x0ce31cf4      2d62           extu.w r2,r2
            0x0ce31cf6      5822           tst r5,r2
/ (fcn) fcn.0ce31cf8 34
|   fcn.0ce31cf8 ();
|           ; CALL XREF from aav.0x0ce31e1e (+0x3c)
|           0x0ce31cf8      0289           bt 0x0ce31d00
|           ; CODE XREF from aav.0x0ce31c0e (+0xca)
|           0x0ce31cfa      11c7           mova @(0x44,PC),r0
|           0x0ce31cfc      08a0           bra 0x0ce31d10
|           0x0ce31cfe      08f3           fmov @r0,fr3
|           ; CODE XREF from fcn.0ce31cf8 (0xce31cf8)
|           0x0ce31d00      4822           tst r4,r2
|           0x0ce31d02      0789           bt 0x0ce31d14
|           ; CODE XREF from aav.0x0ce31c0e (+0xd2)
|           0x0ce31d04      0fc7           mova @(0x3C,PC),r0
|           0x0ce31d06      08f3           fmov @r0,fr3
|           0x0ce31d08      5ce0           mov 0x5C,r0
|           0x0ce31d0a      03a0           bra 0x0ce31d14
|           0x0ce31d0c      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31c0e (+0xb6, +0xd4, +0xe2)
            0x0ce31d0e      8df3           fldi0 fr3
|           ; CODE XREF from fcn.0ce31cf8 (0xce31cfc)
|           0x0ce31d10      5ce0           mov 0x5C,r0
|           0x0ce31d12      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREFS from fcn.0ce31cf8 (0xce31d02, 0xce31d0a)
|           0x0ce31d14      264f           lds.l @r15+,pr
|           0x0ce31d16      f66d           mov.l @r15+,r13
|           0x0ce31d18      0b00           rts 
\           0x0ce31d1a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31d1c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e44)
            0x0ce31d1c      4363           mov r4,r3
            0x0ce31d1e      0ad1           mov.l @(0x28,PC),r1
            0x0ce31d20      462f           mov.l r4,@-r15
            0x0ce31d22      3784           mov.b @(0x7,r3),r0
            0x0ce31d24      0c60           extu.b r0,r0
            0x0ce31d26      0840           shll2 r0
            0x0ce31d28      1e03           mov.l @(r0,r1),r3
            0x0ce31d2a      2b43           jmp @r3
            0x0ce31d2c      047f           add 0x04,r15
            0x0ce31d2e      4001           .word 0x0140
            0x0ce31d30      4101           .word 0x0141
            0x0ce31d32      0008           .word 0x0800
            0x0ce31d34      0004           .word 0x0400
            0x0ce31d36      2505           mov.w r2,@(r0,r5)
            0x0ce31d38      4003           .word 0x0340
            0x0ce31d3a      000c           .word 0x0C00
            0x0ce31d3c      b096           mov.w @(0x160,PC),r6
            0x0ce31d3e      288c           .word 0x8C28
            0x0ce31d40      5555           mov.l @(0x14,r5),r5
            0x0ce31d42      55c0           mov.b r0,@(0x55,gbr)
            0x0ce31d44      5555           mov.l @(0x14,r5),r5
            0x0ce31d46      5540           .word 0x4055
            0x0ce31d48      .dword 0x0ce36e50 ; aav.0x0ce36e50
            ;-- aav.0x0ce31d4c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e50)
            0x0ce31d4c      e62f           mov.l r14,@-r15
            0x0ce31d4e      436e           mov r4,r14
            0x0ce31d50      34e3           mov 0x34,r3
            0x0ce31d52      d62f           mov.l r13,@-r15
            0x0ce31d54      00e4           mov 0x00,r4
            0x0ce31d56      6f9d           mov.w @(0xDE,PC),r13
            0x0ce31d58      224f           sts.l pr,@-r15
            0x0ce31d5a      e784           mov.b @(0x7,r14),r0
            0x0ce31d5c      08e5           mov 0x08,r5
            0x0ce31d5e      ec3d           add r14,r13
            0x0ce31d60      0170           add 0x01,r0
            0x0ce31d62      e780           mov.b r0,@(0x7,r14)
            0x0ce31d64      6990           mov.w @(0xD2,PC),r0
            0x0ce31d66      340e           mov.b r3,@(r0,r14)
            0x0ce31d68      0b70           add 0x0B,r0
            0x0ce31d6a      450e           mov.w r4,@(r0,r14)
            0x0ce31d6c      f270           add 0xF2,r0
            0x0ce31d6e      440e           mov.b r4,@(r0,r14)
            0x0ce31d70      2670           add 0x26,r0
            0x0ce31d72      460e           mov.l r4,@(r0,r14)
            0x0ce31d74      34d3           mov.l @(0xD0,PC),r3
            0x0ce31d76      e284           mov.b @(0x2,r14),r0
            0x0ce31d78      3262           mov.l @r3,r2
            0x0ce31d7a      0c60           extu.b r0,r0
            0x0ce31d7c      7c72           add 0x7C,r2
            0x0ce31d7e      0040           shll r0
            0x0ce31d80      2d01           mov.w @(r0,r2),r1
            0x0ce31d82      0171           add 0x01,r1
            0x0ce31d84      1502           mov.w r1,@(r0,r2)
            0x0ce31d86      31d2           mov.l @(0xC4,PC),r2
            0x0ce31d88      0b42           jsr @r2
            0x0ce31d8a      e364           mov r14,r4
            0x0ce31d8c      30d3           mov.l @(0xC0,PC),r3
            0x0ce31d8e      0b43           jsr @r3
            0x0ce31d90      e364           mov r14,r4
            0x0ce31d92      30c7           mova @(0xC0,PC),r0
            0x0ce31d94      31d3           mov.l @(0xC4,PC),r3
            0x0ce31d96      08f3           fmov @r0,fr3
            0x0ce31d98      60e0           mov 0x60,r0
            0x0ce31d9a      15e5           mov 0x15,r5
            0x0ce31d9c      37fe           fmov fr3,@(r0,r14)
            0x0ce31d9e      2ec7           mova @(0xB8,PC),r0
            0x0ce31da0      08f3           fmov @r0,fr3
            0x0ce31da2      6ce0           mov 0x6C,r0
            0x0ce31da4      01e6           mov 0x01,r6
            0x0ce31da6      37fe           fmov fr3,@(r0,r14)
            0x0ce31da8      68e0           mov 0x68,r0
            0x0ce31daa      8df3           fldi0 fr3
            0x0ce31dac      37fe           fmov fr3,@(r0,r14)
            0x0ce31dae      0b43           jsr @r3
            0x0ce31db0      e364           mov r14,r4
            0x0ce31db2      2bc7           mova @(0xAC,PC),r0
            0x0ce31db4      08f3           fmov @r0,fr3
            0x0ce31db6      5ce0           mov 0x5C,r0
            0x0ce31db8      37fe           fmov fr3,@(r0,r14)
            0x0ce31dba      3f90           mov.w @(0x7E,PC),r0
            0x0ce31dbc      ed03           mov.w @(r0,r14),r3
            0x0ce31dbe      3823           tst r3,r3
            0x0ce31dc0      1589           bt 0x0ce31dee
            0x0ce31dc2      5ce0           mov 0x5C,r0
            0x0ce31dc4      3b94           mov.w @(0x76,PC),r4
            0x0ce31dc6      e6f3           fmov @(r0,r14),fr3
            0x0ce31dc8      4df3           fneg fr3
            0x0ce31dca      37fe           fmov fr3,@(r0,r14)
            0x0ce31dcc      3890           mov.w @(0x70,PC),r0
            0x0ce31dce      ec03           mov.b @(r0,r14),r3
            0x0ce31dd0      3823           tst r3,r3
            0x0ce31dd2      0589           bt 0x0ce31de0
            0x0ce31dd4      d163           mov.w @r13,r3
            0x0ce31dd6      3d63           extu.w r3,r3
            0x0ce31dd8      4823           tst r4,r3
            0x0ce31dda      1889           bt 0x0ce31e0e
            0x0ce31ddc      1ba0           bra 0x0ce31e16
            0x0ce31dde      0900           nop 
            ; CODE XREF from aav.0x0ce31d4c (+0x86)
            0x0ce31de0      2f90           mov.w @(0x5E,PC),r0
            0x0ce31de2      ed01           mov.w @(r0,r14),r1
            0x0ce31de4      1d61           extu.w r1,r1
            0x0ce31de6      4821           tst r4,r1
            0x0ce31de8      158b           bf 0x0ce31e16
            0x0ce31dea      10a0           bra 0x0ce31e0e
            0x0ce31dec      0900           nop 
            ; CODE XREF from aav.0x0ce31d4c (+0x74)
            0x0ce31dee      2790           mov.w @(0x4E,PC),r0
            0x0ce31df0      2894           mov.w @(0x50,PC),r4
            0x0ce31df2      ec03           mov.b @(r0,r14),r3
            0x0ce31df4      3823           tst r3,r3
            0x0ce31df6      0589           bt 0x0ce31e04
            0x0ce31df8      d163           mov.w @r13,r3
            0x0ce31dfa      3d63           extu.w r3,r3
            0x0ce31dfc      4823           tst r4,r3
            0x0ce31dfe      0a8b           bf 0x0ce31e16
            0x0ce31e00      05a0           bra 0x0ce31e0e
            0x0ce31e02      0900           nop 
            ; CODE XREF from aav.0x0ce31d4c (+0xaa)
            0x0ce31e04      1d90           mov.w @(0x3A,PC),r0
            0x0ce31e06      ed01           mov.w @(r0,r14),r1
            0x0ce31e08      1d61           extu.w r1,r1
            0x0ce31e0a      4821           tst r4,r1
            0x0ce31e0c      038b           bf 0x0ce31e16
            ; CODE XREFS from aav.0x0ce31d4c (+0x8e, +0x9e, +0xb4)
            0x0ce31e0e      5ce0           mov 0x5C,r0
            0x0ce31e10      e6f3           fmov @(r0,r14),fr3
            0x0ce31e12      4df3           fneg fr3
            0x0ce31e14      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31d4c (+0x90, +0x9c, +0xb2, +0xc0)
            0x0ce31e16      264f           lds.l @r15+,pr
            0x0ce31e18      f66d           mov.l @r15+,r13
            0x0ce31e1a      0b00           rts 
            0x0ce31e1c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31e1e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e54)
            0x0ce31e1e      e62f           mov.l r14,@-r15
            0x0ce31e20      224f           sts.l pr,@-r15
            0x0ce31e22      10d3           mov.l @(0x40,PC),r3
            0x0ce31e24      0b43           jsr @r3
            0x0ce31e26      436e           mov r4,r14
            0x0ce31e28      0c60           extu.b r0,r0
            0x0ce31e2a      0820           tst r0,r0
            0x0ce31e2c      1e89           bt 0x0ce31e6c
            0x0ce31e2e      264f           lds.l @r15+,pr
            0x0ce31e30      0dd3           mov.l @(0x34,PC),r3
            0x0ce31e32      e364           mov r14,r4
            0x0ce31e34      2b43           jmp @r3
            0x0ce31e36      f66e           mov.l @r15+,r14
            0x0ce31e38      a402           mov.b r10,@(r0,r2)
            0x0ce31e3a      a101           .word 0x01A1
            0x0ce31e3c      3001           .word 0x0130
            0x0ce31e3e      0008           .word 0x0800
            0x0ce31e40      2505           mov.w r2,@(r0,r5)
            0x0ce31e42      4003           .word 0x0340
            0x0ce31e44      0004           .word 0x0400
            0x0ce31e46      0000           .word 0x0000
            0x0ce31e48      b096           mov.w @(0x160,PC),r6
            0x0ce31e4a      288c           .word 0x8C28
            0x0ce31e4c      e46d           mov.b @r14+,r13
            0x0ce31e4e      058c           .word 0x8C05
            0x0ce31e50      8a21           xor r8,r1
            0x0ce31e52      058c           .word 0x8C05
            0x0ce31e54      dbb6           bsr fcn.0ce32c0e
            0x0ce31e56      cd40           shld r12,r0
            0x0ce31e58      dbb6           bsr fcn.0ce32c12            ; fcn.0ce32c0e+0x4
            0x0ce31e5a      4dbf           bsr fcn.0ce31cf8
            0x0ce31e5c      8c4e           shad r8,r14
            0x0ce31e5e      038c           .word 0x8C03
            0x0ce31e60      5555           mov.l @(0x14,r5),r5
            0x0ce31e62      5540           .word 0x4055
            0x0ce31e64      e22c           mov.l r14,@r12
            0x0ce31e66      058c           .word 0x8C05
            0x0ce31e68      ac2d           cmp/str r10,r13
            0x0ce31e6a      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce31e1e (+0xe)
            0x0ce31e6c      5ce1           mov 0x5C,r1
            0x0ce31e6e      4cd3           mov.l @(0x130,PC),r3
            0x0ce31e70      ec31           add r14,r1
            0x0ce31e72      e364           mov r14,r4
            0x0ce31e74      34e0           mov 0x34,r0
            0x0ce31e76      18f3           fmov @r1,fr3
            0x0ce31e78      e6f2           fmov @(r0,r14),fr2
            0x0ce31e7a      68e1           mov 0x68,r1
            0x0ce31e7c      ec31           add r14,r1
            0x0ce31e7e      30f2           fadd fr3,fr2
            0x0ce31e80      27fe           fmov fr2,@(r0,r14)
            0x0ce31e82      5ce0           mov 0x5C,r0
            0x0ce31e84      e6f2           fmov @(r0,r14),fr2
            0x0ce31e86      18f3           fmov @r1,fr3
            0x0ce31e88      60e1           mov 0x60,r1
            0x0ce31e8a      ec31           add r14,r1
            0x0ce31e8c      30f2           fadd fr3,fr2
            0x0ce31e8e      27fe           fmov fr2,@(r0,r14)
            0x0ce31e90      38e0           mov 0x38,r0
            0x0ce31e92      e6f2           fmov @(r0,r14),fr2
            0x0ce31e94      18f3           fmov @r1,fr3
            0x0ce31e96      6ce1           mov 0x6C,r1
            0x0ce31e98      ec31           add r14,r1
            0x0ce31e9a      30f2           fadd fr3,fr2
            0x0ce31e9c      27fe           fmov fr2,@(r0,r14)
            0x0ce31e9e      60e0           mov 0x60,r0
            0x0ce31ea0      e6f2           fmov @(r0,r14),fr2
            0x0ce31ea2      18f3           fmov @r1,fr3
            0x0ce31ea4      30f2           fadd fr3,fr2
            0x0ce31ea6      27fe           fmov fr2,@(r0,r14)
            0x0ce31ea8      264f           lds.l @r15+,pr
            0x0ce31eaa      2b43           jmp @r3
            0x0ce31eac      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31eae:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dec)
            0x0ce31eae      4363           mov r4,r3
            0x0ce31eb0      3cd1           mov.l @(0xF0,PC),r1
            0x0ce31eb2      462f           mov.l r4,@-r15
            0x0ce31eb4      3684           mov.b @(0x6,r3),r0
            0x0ce31eb6      0c60           extu.b r0,r0
            0x0ce31eb8      0840           shll2 r0
            0x0ce31eba      1e03           mov.l @(r0,r1),r3
            0x0ce31ebc      2b43           jmp @r3
            0x0ce31ebe      047f           add 0x04,r15
            ;-- aav.0x0ce31ec0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e58)
            0x0ce31ec0      4363           mov r4,r3
            0x0ce31ec2      39d1           mov.l @(0xE4,PC),r1
            0x0ce31ec4      462f           mov.l r4,@-r15
            0x0ce31ec6      3784           mov.b @(0x7,r3),r0
            0x0ce31ec8      0c60           extu.b r0,r0
            0x0ce31eca      0840           shll2 r0
            0x0ce31ecc      1e03           mov.l @(r0,r1),r3
            0x0ce31ece      2b43           jmp @r3
            0x0ce31ed0      047f           add 0x04,r15
            ;-- aav.0x0ce31ed2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e60)
            0x0ce31ed2      e62f           mov.l r14,@-r15
            0x0ce31ed4      436e           mov r4,r14
            0x0ce31ed6      33e3           mov 0x33,r3
            0x0ce31ed8      00e4           mov 0x00,r4
            0x0ce31eda      224f           sts.l pr,@-r15
            0x0ce31edc      e784           mov.b @(0x7,r14),r0
            0x0ce31ede      0170           add 0x01,r0
            0x0ce31ee0      e780           mov.b r0,@(0x7,r14)
            0x0ce31ee2      5690           mov.w @(0xAC,PC),r0
            0x0ce31ee4      340e           mov.b r3,@(r0,r14)
            0x0ce31ee6      0b70           add 0x0B,r0
            0x0ce31ee8      450e           mov.w r4,@(r0,r14)
            0x0ce31eea      f270           add 0xF2,r0
            0x0ce31eec      440e           mov.b r4,@(r0,r14)
            0x0ce31eee      2670           add 0x26,r0
            0x0ce31ef0      2ed3           mov.l @(0xB8,PC),r3
            0x0ce31ef2      460e           mov.l r4,@(r0,r14)
            0x0ce31ef4      e284           mov.b @(0x2,r14),r0
            0x0ce31ef6      3262           mov.l @r3,r2
            0x0ce31ef8      0c60           extu.b r0,r0
            0x0ce31efa      0040           shll r0
            0x0ce31efc      7c72           add 0x7C,r2
            0x0ce31efe      2d01           mov.w @(r0,r2),r1
            ; CODE XREF from aav.0x0ce328c4 (+0xe4)
            0x0ce31f00      0171           add 0x01,r1
            0x0ce31f02      1502           mov.w r1,@(r0,r2)
            0x0ce31f04      2abe           bsr aav.0x0ce31b5c
            0x0ce31f06      e364           mov r14,r4
            0x0ce31f08      29d3           mov.l @(0xA4,PC),r3
            0x0ce31f0a      08e5           mov 0x08,r5
            0x0ce31f0c      0b43           jsr @r3
            0x0ce31f0e      e364           mov r14,r4
            0x0ce31f10      28d2           mov.l @(0xA0,PC),r2
            0x0ce31f12      03e5           mov 0x03,r5
            0x0ce31f14      0b42           jsr @r2
            0x0ce31f16      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce31394 (+0x150)
            0x0ce31f18      264f           lds.l @r15+,pr
            0x0ce31f1a      27d3           mov.l @(0x9C,PC),r3
            0x0ce31f1c      e364           mov r14,r4
            0x0ce31f1e      02e6           mov 0x02,r6
            0x0ce31f20      15e5           mov 0x15,r5
            0x0ce31f22      2b43           jmp @r3
            0x0ce31f24      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31f26:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e64)
            0x0ce31f26      e62f           mov.l r14,@-r15
            0x0ce31f28      436e           mov r4,r14
            0x0ce31f2a      d62f           mov.l r13,@-r15
            0x0ce31f2c      224f           sts.l pr,@-r15
            0x0ce31f2e      23d3           mov.l @(0x8C,PC),r3
            0x0ce31f30      309d           mov.w @(0x60,PC),r13
            0x0ce31f32      0b43           jsr @r3
            0x0ce31f34      ec3d           add r14,r13
            0x0ce31f36      5ce1           mov 0x5C,r1
            0x0ce31f38      19d3           mov.l @(0x64,PC),r3
            0x0ce31f3a      ec31           add r14,r1
            0x0ce31f3c      34e0           mov 0x34,r0
            0x0ce31f3e      18f3           fmov @r1,fr3
            0x0ce31f40      e6f2           fmov @(r0,r14),fr2
            0x0ce31f42      68e1           mov 0x68,r1
            0x0ce31f44      ec31           add r14,r1
            0x0ce31f46      30f2           fadd fr3,fr2
            0x0ce31f48      27fe           fmov fr2,@(r0,r14)
            0x0ce31f4a      5ce0           mov 0x5C,r0
            0x0ce31f4c      e6f2           fmov @(r0,r14),fr2
            0x0ce31f4e      18f3           fmov @r1,fr3
            0x0ce31f50      30f2           fadd fr3,fr2
            0x0ce31f52      27fe           fmov fr2,@(r0,r14)
            0x0ce31f54      0b43           jsr @r3
            0x0ce31f56      e364           mov r14,r4
            0x0ce31f58      0e60           exts.b r0,r0
            0x0ce31f5a      1140           cmp/pz r0
            0x0ce31f5c      0589           bt 0x0ce31f6a
            0x0ce31f5e      264f           lds.l @r15+,pr
            0x0ce31f60      17d3           mov.l @(0x5C,PC),r3
            0x0ce31f62      e364           mov r14,r4
            0x0ce31f64      f66d           mov.l @r15+,r13
            0x0ce31f66      2b43           jmp @r3
            0x0ce31f68      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31f26 (+0x36)
            0x0ce31f6a      1490           mov.w @(0x28,PC),r0
            0x0ce31f6c      ec02           mov.b @(r0,r14),r2
            0x0ce31f6e      2822           tst r2,r2
            0x0ce31f70      3c89           bt 0x0ce31fec               ; fcn.0ce31f92+0x5a
            0x0ce31f72      1390           mov.w @(0x26,PC),r0
            0x0ce31f74      1095           mov.w @(0x20,PC),r5
            0x0ce31f76      ec03           mov.b @(r0,r14),r3
            0x0ce31f78      0f94           mov.w @(0x1E,PC),r4
            0x0ce31f7a      3823           tst r3,r3
            0x0ce31f7c      2289           bt 0x0ce31fc4               ; fcn.0ce31f92+0x32
            0x0ce31f7e      d163           mov.w @r13,r3
            0x0ce31f80      3d63           extu.w r3,r3
            0x0ce31f82      4823           tst r4,r3
            0x0ce31f84      288b           bf 0x0ce31fd8               ; fcn.0ce31f92+0x46
            0x0ce31f86      d161           mov.w @r13,r1
            0x0ce31f88      1d61           extu.w r1,r1
            0x0ce31f8a      5821           tst r5,r1
            0x0ce31f8c      298b           bf 0x0ce31fe2               ; fcn.0ce31f92+0x50
            0x0ce31f8e      2da0           bra 0x0ce31fec              ; fcn.0ce31f92+0x5a
            ;-- skip:
            ; CALL XREF from aav.0x0ce3200c (+0xe6)
            0x0ce31f90      0900           nop 
/ (fcn) fcn.0ce31f92 104
|   fcn.0ce31f92 ();
|           0x0ce31f92      a101           .word 0x01A1
|           0x0ce31f94      a402           mov.b r10,@(r0,r2)
|           0x0ce31f96      4101           .word 0x0141
|           0x0ce31f98      0004           .word 0x0400
|           0x0ce31f9a      0008           .word 0x0800
|           0x0ce31f9c      2505           mov.w r2,@(r0,r5)
|           0x0ce31f9e      0000           .word 0x0000
|           0x0ce31fa0      ee4d           ldc r13,r6_bank
|           0x0ce31fa2      038c           .word 0x8C03
|           0x0ce31fa4      .dword 0x0ce36e58 ; aav.0x0ce36e58
|           0x0ce31fa8      .dword 0x0ce36e60 ; aav.0x0ce36e60
|           0x0ce31fac      b096           mov.w @(0x160,PC),r6
|           0x0ce31fae      288c           .word 0x8C28
|           0x0ce31fb0      e46d           mov.b @r14+,r13
|           0x0ce31fb2      058c           .word 0x8C05
|           0x0ce31fb4      0820           tst r0,r0
|           0x0ce31fb6      048c           .word 0x8C04
|           0x0ce31fb8      8c4e           shad r8,r14
|           0x0ce31fba      038c           .word 0x8C03
|           0x0ce31fbc      e211           mov.l r14,@(0x8,r1)
|           0x0ce31fbe      058c           .word 0x8C05
|           0x0ce31fc0      4816           mov.l r4,@(0x20,r6)
|           0x0ce31fc2      058c           .word 0x8C05
|           ; CODE XREF from aav.0x0ce31f26 (+0x56)
|           0x0ce31fc4      7e90           mov.w @(0xFC,PC),r0
|           0x0ce31fc6      7e93           mov.w @(0xFC,PC),r3
|           0x0ce31fc8      ed02           mov.w @(r0,r14),r2
|           0x0ce31fca      2d62           extu.w r2,r2
|           0x0ce31fcc      3822           tst r3,r2
|           0x0ce31fce      0d89           bt 0x0ce31fec
|           0x0ce31fd0      ed02           mov.w @(r0,r14),r2
|           0x0ce31fd2      2d62           extu.w r2,r2
|           0x0ce31fd4      4822           tst r4,r2
|           0x0ce31fd6      0289           bt 0x0ce31fde
|           ; CODE XREF from aav.0x0ce31f26 (+0x5e)
|           0x0ce31fd8      3ec7           mova @(0xF8,PC),r0
|           0x0ce31fda      08a0           bra 0x0ce31fee
|           0x0ce31fdc      08f3           fmov @r0,fr3
|           ; CODE XREF from fcn.0ce31f92 (0xce31fd6)
|           0x0ce31fde      5822           tst r5,r2
|           0x0ce31fe0      0789           bt 0x0ce31ff2
|           ; CODE XREF from aav.0x0ce31f26 (+0x66)
|           0x0ce31fe2      3dc7           mova @(0xF4,PC),r0
|           0x0ce31fe4      08f3           fmov @r0,fr3
|           0x0ce31fe6      5ce0           mov 0x5C,r0
|           0x0ce31fe8      03a0           bra 0x0ce31ff2
|           0x0ce31fea      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREFS from aav.0x0ce31f26 (+0x4a, +0x68)
|           ; CODE XREF from fcn.0ce31f92 (0xce31fce)
|           0x0ce31fec      8df3           fldi0 fr3
|           ; CODE XREF from fcn.0ce31f92 (0xce31fda)
|           0x0ce31fee      5ce0           mov 0x5C,r0
|           0x0ce31ff0      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREFS from fcn.0ce31f92 (0xce31fe0, 0xce31fe8)
|           0x0ce31ff2      264f           lds.l @r15+,pr
|           0x0ce31ff4      f66d           mov.l @r15+,r13
|           0x0ce31ff6      0b00           rts 
\           0x0ce31ff8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31ffa:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e5c)
            0x0ce31ffa      4363           mov r4,r3
            0x0ce31ffc      37d1           mov.l @(0xDC,PC),r1
            0x0ce31ffe      462f           mov.l r4,@-r15
            0x0ce32000      3784           mov.b @(0x7,r3),r0
            0x0ce32002      0c60           extu.b r0,r0
            0x0ce32004      0840           shll2 r0
            0x0ce32006      1e03           mov.l @(r0,r1),r3
            0x0ce32008      2b43           jmp @r3
            0x0ce3200a      047f           add 0x04,r15
            ;-- aav.0x0ce3200c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e68)
            0x0ce3200c      e62f           mov.l r14,@-r15
            0x0ce3200e      436e           mov r4,r14
            0x0ce32010      35e3           mov 0x35,r3
            0x0ce32012      d62f           mov.l r13,@-r15
            0x0ce32014      00e4           mov 0x00,r4
            0x0ce32016      579d           mov.w @(0xAE,PC),r13
            0x0ce32018      224f           sts.l pr,@-r15
            0x0ce3201a      e784           mov.b @(0x7,r14),r0
            0x0ce3201c      08e5           mov 0x08,r5
            0x0ce3201e      ec3d           add r14,r13
            0x0ce32020      0170           add 0x01,r0
            0x0ce32022      e780           mov.b r0,@(0x7,r14)
            0x0ce32024      5190           mov.w @(0xA2,PC),r0
            0x0ce32026      340e           mov.b r3,@(r0,r14)
            0x0ce32028      0b70           add 0x0B,r0
            0x0ce3202a      450e           mov.w r4,@(r0,r14)
            0x0ce3202c      f270           add 0xF2,r0
            0x0ce3202e      440e           mov.b r4,@(r0,r14)
            0x0ce32030      2670           add 0x26,r0
            0x0ce32032      460e           mov.l r4,@(r0,r14)
            0x0ce32034      2ad3           mov.l @(0xA8,PC),r3
            0x0ce32036      e284           mov.b @(0x2,r14),r0
            0x0ce32038      3262           mov.l @r3,r2
            0x0ce3203a      0c60           extu.b r0,r0
            0x0ce3203c      7c72           add 0x7C,r2
            0x0ce3203e      0040           shll r0
            0x0ce32040      2d01           mov.w @(r0,r2),r1
            0x0ce32042      0171           add 0x01,r1
            0x0ce32044      1502           mov.w r1,@(r0,r2)
            0x0ce32046      27d2           mov.l @(0x9C,PC),r2
            0x0ce32048      0b42           jsr @r2
            0x0ce3204a      e364           mov r14,r4
            0x0ce3204c      26d3           mov.l @(0x98,PC),r3
            0x0ce3204e      0b43           jsr @r3
            0x0ce32050      e364           mov r14,r4
            0x0ce32052      26c7           mova @(0x98,PC),r0
            0x0ce32054      27d3           mov.l @(0x9C,PC),r3
            0x0ce32056      08f3           fmov @r0,fr3
            0x0ce32058      60e0           mov 0x60,r0
            0x0ce3205a      15e5           mov 0x15,r5
            0x0ce3205c      37fe           fmov fr3,@(r0,r14)
            0x0ce3205e      24c7           mova @(0x90,PC),r0
            0x0ce32060      08f3           fmov @r0,fr3
            0x0ce32062      6ce0           mov 0x6C,r0
            0x0ce32064      03e6           mov 0x03,r6
            0x0ce32066      37fe           fmov fr3,@(r0,r14)
            0x0ce32068      68e0           mov 0x68,r0
            0x0ce3206a      8df3           fldi0 fr3
            0x0ce3206c      37fe           fmov fr3,@(r0,r14)
            0x0ce3206e      0b43           jsr @r3
            0x0ce32070      e364           mov r14,r4
            0x0ce32072      19c7           mova @(0x64,PC),r0
            0x0ce32074      08f3           fmov @r0,fr3
            0x0ce32076      5ce0           mov 0x5C,r0
            0x0ce32078      37fe           fmov fr3,@(r0,r14)
            0x0ce3207a      2790           mov.w @(0x4E,PC),r0
            0x0ce3207c      ed03           mov.w @(r0,r14),r3
            0x0ce3207e      3823           tst r3,r3
            0x0ce32080      1589           bt 0x0ce320ae
            0x0ce32082      5ce0           mov 0x5C,r0
            0x0ce32084      2394           mov.w @(0x46,PC),r4
            0x0ce32086      e6f3           fmov @(r0,r14),fr3
            0x0ce32088      4df3           fneg fr3
            0x0ce3208a      37fe           fmov fr3,@(r0,r14)
            0x0ce3208c      2090           mov.w @(0x40,PC),r0
            0x0ce3208e      ec03           mov.b @(r0,r14),r3
            0x0ce32090      3823           tst r3,r3
            0x0ce32092      0589           bt 0x0ce320a0
            0x0ce32094      d163           mov.w @r13,r3
            0x0ce32096      3d63           extu.w r3,r3
            0x0ce32098      4823           tst r4,r3
            0x0ce3209a      3289           bt 0x0ce32102
            0x0ce3209c      35a0           bra 0x0ce3210a
            0x0ce3209e      0900           nop 
            ; CODE XREF from aav.0x0ce3200c (+0x86)
            0x0ce320a0      1090           mov.w @(0x20,PC),r0
            0x0ce320a2      ed01           mov.w @(r0,r14),r1
            0x0ce320a4      1d61           extu.w r1,r1
            0x0ce320a6      4821           tst r4,r1
            0x0ce320a8      2f8b           bf 0x0ce3210a
            0x0ce320aa      2aa0           bra 0x0ce32102
            0x0ce320ac      0900           nop 
            ; CODE XREF from aav.0x0ce3200c (+0x74)
            0x0ce320ae      0f90           mov.w @(0x1E,PC),r0
            0x0ce320b0      0f94           mov.w @(0x1E,PC),r4
            0x0ce320b2      ec03           mov.b @(r0,r14),r3
            0x0ce320b4      3823           tst r3,r3
            0x0ce320b6      1f89           bt 0x0ce320f8
            0x0ce320b8      d163           mov.w @r13,r3
            0x0ce320ba      3d63           extu.w r3,r3
            0x0ce320bc      4823           tst r4,r3
            0x0ce320be      248b           bf 0x0ce3210a
            0x0ce320c0      1fa0           bra 0x0ce32102
            0x0ce320c2      0900           nop 
            0x0ce320c4      4003           .word 0x0340
            0x0ce320c6      000c           .word 0x0C00
            0x0ce320c8      a402           mov.b r10,@(r0,r2)
            0x0ce320ca      a101           .word 0x01A1
            0x0ce320cc      3001           .word 0x0130
            0x0ce320ce      0008           .word 0x0800
            0x0ce320d0      2505           mov.w r2,@(r0,r5)
            0x0ce320d2      0004           .word 0x0400
            0x0ce320d4      0000           .word 0x0000
            0x0ce320d6      20c0           mov.b r0,@(0x20,gbr)
            0x0ce320d8      0000           .word 0x0000
            0x0ce320da      2040           shal r0
            0x0ce320dc      .dword 0x0ce36e68 ; aav.0x0ce36e68
            0x0ce320e0      b096           mov.w @(0x160,PC),r6
            0x0ce320e2      288c           .word 0x8C28
            0x0ce320e4      e46d           mov.b @r14+,r13
            0x0ce320e6      058c           .word 0x8C05
            0x0ce320e8      8a21           xor r8,r1
            0x0ce320ea      058c           .word 0x8C05
            0x0ce320ec      dbb6           bsr fcn.0ce32ea6
            0x0ce320ee      cd40           shld r12,r0
            0x0ce320f0      dbb6           bsr fcn.0ce32eaa            ; fcn.0ce32ea6+0x4
            0x0ce320f2      4dbf           bsr 0x0ce31f90
            0x0ce320f4      8c4e           shad r8,r14
            0x0ce320f6      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce3200c (+0xaa)
            0x0ce320f8      9490           mov.w @(0x128,PC),r0
            0x0ce320fa      ed01           mov.w @(r0,r14),r1
            0x0ce320fc      1d61           extu.w r1,r1
            0x0ce320fe      4821           tst r4,r1
            0x0ce32100      038b           bf 0x0ce3210a
            ; CODE XREFS from aav.0x0ce3200c (+0x8e, +0x9e, +0xb4)
            0x0ce32102      5ce0           mov 0x5C,r0
            0x0ce32104      e6f3           fmov @(r0,r14),fr3
            0x0ce32106      4df3           fneg fr3
            0x0ce32108      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce3200c (+0x90, +0x9c, +0xb2, +0xf4)
            0x0ce3210a      264f           lds.l @r15+,pr
            0x0ce3210c      f66d           mov.l @r15+,r13
            0x0ce3210e      0b00           rts 
            0x0ce32110      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32112:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e6c)
            0x0ce32112      e62f           mov.l r14,@-r15
            0x0ce32114      224f           sts.l pr,@-r15
            0x0ce32116      45d3           mov.l @(0x114,PC),r3
            0x0ce32118      0b43           jsr @r3
            0x0ce3211a      436e           mov r4,r14
            0x0ce3211c      0c60           extu.b r0,r0
            0x0ce3211e      0820           tst r0,r0
            0x0ce32120      0489           bt 0x0ce3212c
            0x0ce32122      264f           lds.l @r15+,pr
            0x0ce32124      42d3           mov.l @(0x108,PC),r3
            0x0ce32126      e364           mov r14,r4
            0x0ce32128      2b43           jmp @r3
            0x0ce3212a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32112 (+0xe)
            0x0ce3212c      5ce1           mov 0x5C,r1
            0x0ce3212e      41d3           mov.l @(0x104,PC),r3
            0x0ce32130      ec31           add r14,r1
            0x0ce32132      e364           mov r14,r4
            0x0ce32134      34e0           mov 0x34,r0
            0x0ce32136      18f3           fmov @r1,fr3
            0x0ce32138      e6f2           fmov @(r0,r14),fr2
            0x0ce3213a      68e1           mov 0x68,r1
            0x0ce3213c      ec31           add r14,r1
            0x0ce3213e      30f2           fadd fr3,fr2
            0x0ce32140      27fe           fmov fr2,@(r0,r14)
            0x0ce32142      5ce0           mov 0x5C,r0
            0x0ce32144      e6f2           fmov @(r0,r14),fr2
            0x0ce32146      18f3           fmov @r1,fr3
            0x0ce32148      60e1           mov 0x60,r1
            0x0ce3214a      ec31           add r14,r1
            0x0ce3214c      30f2           fadd fr3,fr2
            0x0ce3214e      27fe           fmov fr2,@(r0,r14)
            0x0ce32150      38e0           mov 0x38,r0
            0x0ce32152      e6f2           fmov @(r0,r14),fr2
            0x0ce32154      18f3           fmov @r1,fr3
            0x0ce32156      6ce1           mov 0x6C,r1
            0x0ce32158      ec31           add r14,r1
            0x0ce3215a      30f2           fadd fr3,fr2
            0x0ce3215c      27fe           fmov fr2,@(r0,r14)
            0x0ce3215e      60e0           mov 0x60,r0
            0x0ce32160      e6f2           fmov @(r0,r14),fr2
            0x0ce32162      18f3           fmov @r1,fr3
            0x0ce32164      30f2           fadd fr3,fr2
            0x0ce32166      27fe           fmov fr2,@(r0,r14)
            0x0ce32168      264f           lds.l @r15+,pr
            0x0ce3216a      2b43           jmp @r3
            0x0ce3216c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3216e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36df0)
            0x0ce3216e      4363           mov r4,r3
            0x0ce32170      31d1           mov.l @(0xC4,PC),r1
            0x0ce32172      462f           mov.l r4,@-r15
            0x0ce32174      3684           mov.b @(0x6,r3),r0
            0x0ce32176      0c60           extu.b r0,r0
            0x0ce32178      0840           shll2 r0
            0x0ce3217a      1e03           mov.l @(r0,r1),r3
            0x0ce3217c      2b43           jmp @r3
            0x0ce3217e      047f           add 0x04,r15
            ;-- aav.0x0ce32180:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e70)
            0x0ce32180      e62f           mov.l r14,@-r15
            0x0ce32182      436e           mov r4,r14
            0x0ce32184      30e3           mov 0x30,r3
            0x0ce32186      00e4           mov 0x00,r4
            0x0ce32188      224f           sts.l pr,@-r15
            0x0ce3218a      e684           mov.b @(0x6,r14),r0
            0x0ce3218c      06e5           mov 0x06,r5
            0x0ce3218e      0170           add 0x01,r0
            0x0ce32190      e680           mov.b r0,@(0x6,r14)
            0x0ce32192      4890           mov.w @(0x90,PC),r0
            0x0ce32194      340e           mov.b r3,@(r0,r14)
            0x0ce32196      0b70           add 0x0B,r0
            0x0ce32198      450e           mov.w r4,@(r0,r14)
            0x0ce3219a      f270           add 0xF2,r0
            0x0ce3219c      440e           mov.b r4,@(r0,r14)
            0x0ce3219e      2670           add 0x26,r0
            0x0ce321a0      26d3           mov.l @(0x98,PC),r3
            0x0ce321a2      460e           mov.l r4,@(r0,r14)
            0x0ce321a4      e284           mov.b @(0x2,r14),r0
            0x0ce321a6      3262           mov.l @r3,r2
            0x0ce321a8      0c60           extu.b r0,r0
            0x0ce321aa      0040           shll r0
            0x0ce321ac      7c72           add 0x7C,r2
            0x0ce321ae      2d01           mov.w @(r0,r2),r1
            0x0ce321b0      0171           add 0x01,r1
            0x0ce321b2      1502           mov.w r1,@(r0,r2)
            0x0ce321b4      22d2           mov.l @(0x88,PC),r2
            0x0ce321b6      0b42           jsr @r2
            0x0ce321b8      e364           mov r14,r4
            0x0ce321ba      cfbc           bsr aav.0x0ce31b5c
            0x0ce321bc      e364           mov r14,r4
            0x0ce321be      3390           mov.w @(0x66,PC),r0
            0x0ce321c0      e364           mov r14,r4
            0x0ce321c2      264f           lds.l @r15+,pr
            0x0ce321c4      ec06           mov.b @(r0,r14),r6
            0x0ce321c6      15e5           mov 0x15,r5
            0x0ce321c8      1ed3           mov.l @(0x78,PC),r3
            0x0ce321ca      0476           add 0x04,r6
            0x0ce321cc      2b43           jmp @r3
            0x0ce321ce      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce321d0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e74)
            0x0ce321d0      e62f           mov.l r14,@-r15
            0x0ce321d2      5ce1           mov 0x5C,r1
            0x0ce321d4      436e           mov r4,r14
            0x0ce321d6      ec31           add r14,r1
            0x0ce321d8      34e0           mov 0x34,r0
            0x0ce321da      16d3           mov.l @(0x58,PC),r3
            0x0ce321dc      224f           sts.l pr,@-r15
            0x0ce321de      e6f2           fmov @(r0,r14),fr2
            0x0ce321e0      18f3           fmov @r1,fr3
            0x0ce321e2      68e1           mov 0x68,r1
            0x0ce321e4      ec31           add r14,r1
            0x0ce321e6      30f2           fadd fr3,fr2
            0x0ce321e8      27fe           fmov fr2,@(r0,r14)
            0x0ce321ea      5ce0           mov 0x5C,r0
            0x0ce321ec      18f3           fmov @r1,fr3
            0x0ce321ee      60e1           mov 0x60,r1
            0x0ce321f0      e6f2           fmov @(r0,r14),fr2
            0x0ce321f2      ec31           add r14,r1
            0x0ce321f4      30f2           fadd fr3,fr2
            0x0ce321f6      27fe           fmov fr2,@(r0,r14)
            0x0ce321f8      38e0           mov 0x38,r0
            0x0ce321fa      e6f2           fmov @(r0,r14),fr2
            0x0ce321fc      18f3           fmov @r1,fr3
            0x0ce321fe      6ce1           mov 0x6C,r1
            0x0ce32200      ec31           add r14,r1
            0x0ce32202      30f2           fadd fr3,fr2
            0x0ce32204      27fe           fmov fr2,@(r0,r14)
            0x0ce32206      60e0           mov 0x60,r0
            0x0ce32208      e6f2           fmov @(r0,r14),fr2
            0x0ce3220a      18f3           fmov @r1,fr3
            0x0ce3220c      30f2           fadd fr3,fr2
            0x0ce3220e      27fe           fmov fr2,@(r0,r14)
            0x0ce32210      0b43           jsr @r3
            0x0ce32212      e364           mov r14,r4
            0x0ce32214      0e60           exts.b r0,r0
            0x0ce32216      1140           cmp/pz r0
            0x0ce32218      1889           bt 0x0ce3224c
            0x0ce3221a      264f           lds.l @r15+,pr
            0x0ce3221c      0ad3           mov.l @(0x28,PC),r3
            0x0ce3221e      e364           mov r14,r4
            0x0ce32220      2b43           jmp @r3
            0x0ce32222      f66e           mov.l @r15+,r14
            0x0ce32224      4003           .word 0x0340
            0x0ce32226      a101           .word 0x01A1
            0x0ce32228      a301           ocbp @r1
            0x0ce3222a      0000           .word 0x0000
            0x0ce3222c      e22c           mov.l r14,@r12
            0x0ce3222e      058c           .word 0x8C05
            0x0ce32230      ac2d           cmp/str r10,r13
            0x0ce32232      058c           .word 0x8C05
            0x0ce32234      ee4d           ldc r13,r6_bank
            0x0ce32236      038c           .word 0x8C03
            0x0ce32238      .dword 0x0ce36e70 ; aav.0x0ce36e70
            0x0ce3223c      b096           mov.w @(0x160,PC),r6
            0x0ce3223e      288c           .word 0x8C28
            0x0ce32240      e46d           mov.b @r14+,r13
            0x0ce32242      058c           .word 0x8C05
            0x0ce32244      8c4e           shad r8,r14
            0x0ce32246      038c           .word 0x8C03
            0x0ce32248      4816           mov.l r4,@(0x20,r6)
            0x0ce3224a      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce321d0 (+0x48)
            0x0ce3224c      6c93           mov.w @(0xD8,PC),r3
            0x0ce3224e      5ce0           mov 0x5C,r0
            0x0ce32250      8df3           fldi0 fr3
            0x0ce32252      ec33           add r14,r3
            0x0ce32254      37fe           fmov fr3,@(r0,r14)
            0x0ce32256      3184           mov.b @(0x1,r3),r0
            0x0ce32258      0820           tst r0,r0
            0x0ce3225a      2b89           bt 0x0ce322b4               ; fcn.0ce32274+0x40
            0x0ce3225c      6490           mov.w @(0xC8,PC),r0
            0x0ce3225e      6493           mov.w @(0xC8,PC),r3
            0x0ce32260      ec30           add r14,r0
            0x0ce32262      33d2           mov.l @(0xCC,PC),r2
            0x0ce32264      ec33           add r14,r3
            0x0ce32266      0184           mov.b @(0x1,r0),r0
            0x0ce32268      3063           mov.b @r3,r3
            0x0ce3226a      ff70           add 0xFF,r0
            0x0ce3226c      3c63           extu.b r3,r3
            0x0ce3226e      0840           shll2 r0
            0x0ce32270      0c32           add r0,r2
            0x0ce32272      0043           shll r3
/ (fcn) fcn.0ce32274 70
|   fcn.0ce32274 ();
|           ; CALL XREF from aav.0x0ce3261a (+0xac)
|           0x0ce32274      2c33           add r2,r3
|           0x0ce32276      3163           mov.w @r3,r3
|           0x0ce32278      2ec7           mova @(0xB8,PC),r0
|           0x0ce3227a      08f2           fmov @r0,fr2
|           0x0ce3227c      2ec7           mova @(0xB8,PC),r0
|           0x0ce3227e      5a43           lds r3,fpul
|           0x0ce32280      08f1           fmov @r0,fr1
|           0x0ce32282      5ce0           mov 0x5C,r0
|           0x0ce32284      2df3           float fpul,fr3
|           0x0ce32286      22f3           fmul fr2,fr3
|           0x0ce32288      13f3           fdiv fr1,fr3
|           0x0ce3228a      37fe           fmov fr3,@(r0,r14)
|           0x0ce3228c      4e90           mov.w @(0x9C,PC),r0
|           0x0ce3228e      ed03           mov.w @(r0,r14),r3
|           0x0ce32290      3823           tst r3,r3
|           0x0ce32292      038b           bf 0x0ce3229c
|           0x0ce32294      5ce0           mov 0x5C,r0
|           0x0ce32296      e6f3           fmov @(r0,r14),fr3
|           0x0ce32298      4df3           fneg fr3
|           0x0ce3229a      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce32274 (0xce32292)
|           0x0ce3229c      4490           mov.w @(0x88,PC),r0
|           0x0ce3229e      ec30           add r14,r0
|           0x0ce322a0      0184           mov.b @(0x1,r0),r0
|           0x0ce322a2      0288           cmp/eq 0x02,r0
|           0x0ce322a4      028b           bf 0x0ce322ac
|           0x0ce322a6      25d2           mov.l @(0x94,PC),r2
|           0x0ce322a8      0b42           jsr @r2
|           0x0ce322aa      e364           mov r14,r4
|           ; CODE XREF from fcn.0ce32274 (0xce322a4)
|           0x0ce322ac      3c93           mov.w @(0x78,PC),r3
|           0x0ce322ae      00e0           mov 0x00,r0
|           0x0ce322b0      ec33           add r14,r3
|           0x0ce322b2      3180           mov.b r0,@(0x1,r3)
|           ; CODE XREF from aav.0x0ce321d0 (+0x8a)
|           0x0ce322b4      264f           lds.l @r15+,pr
|           0x0ce322b6      0b00           rts 
\           0x0ce322b8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce322ba:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36df4)
            0x0ce322ba      4363           mov r4,r3
            0x0ce322bc      20d1           mov.l @(0x80,PC),r1
            0x0ce322be      462f           mov.l r4,@-r15
            0x0ce322c0      3684           mov.b @(0x6,r3),r0
            0x0ce322c2      0c60           extu.b r0,r0
            0x0ce322c4      0840           shll2 r0
            0x0ce322c6      1e03           mov.l @(r0,r1),r3
            0x0ce322c8      2b43           jmp @r3
            0x0ce322ca      047f           add 0x04,r15
            ;-- aav.0x0ce322cc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e84)
            0x0ce322cc      4363           mov r4,r3
            0x0ce322ce      1dd1           mov.l @(0x74,PC),r1
            0x0ce322d0      462f           mov.l r4,@-r15
            0x0ce322d2      3784           mov.b @(0x7,r3),r0
            0x0ce322d4      0c60           extu.b r0,r0
            0x0ce322d6      0840           shll2 r0
            0x0ce322d8      1e03           mov.l @(r0,r1),r3
            0x0ce322da      2b43           jmp @r3
            0x0ce322dc      047f           add 0x04,r15
            ;-- aav.0x0ce322de:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e8c)
            0x0ce322de      e62f           mov.l r14,@-r15
            0x0ce322e0      436e           mov r4,r14
            0x0ce322e2      224f           sts.l pr,@-r15
            0x0ce322e4      e784           mov.b @(0x7,r14),r0
            0x0ce322e6      0ae5           mov 0x0A,r5
            0x0ce322e8      17d3           mov.l @(0x5C,PC),r3
            0x0ce322ea      0170           add 0x01,r0
            0x0ce322ec      e780           mov.b r0,@(0x7,r14)
            0x0ce322ee      0b43           jsr @r3
            0x0ce322f0      e364           mov r14,r4
            0x0ce322f2      33bc           bsr aav.0x0ce31b5c
            0x0ce322f4      e364           mov r14,r4
            0x0ce322f6      264f           lds.l @r15+,pr
            0x0ce322f8      14d3           mov.l @(0x50,PC),r3
            0x0ce322fa      e364           mov r14,r4
            0x0ce322fc      08e6           mov 0x08,r6
            0x0ce322fe      0fe5           mov 0x0F,r5
            0x0ce32300      2b43           jmp @r3
            0x0ce32302      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32304:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e90)
            0x0ce32304      e62f           mov.l r14,@-r15
            0x0ce32306      224f           sts.l pr,@-r15
            0x0ce32308      f07f           add 0xF0,r15
            0x0ce3230a      11d3           mov.l @(0x44,PC),r3
            0x0ce3230c      0b43           jsr @r3
            0x0ce3230e      436e           mov r4,r14
            0x0ce32310      0e60           exts.b r0,r0
            0x0ce32312      1140           cmp/pz r0
            0x0ce32314      1e89           bt 0x0ce32354
            0x0ce32316      0dd3           mov.l @(0x34,PC),r3
            0x0ce32318      08e0           mov 0x08,r0
            0x0ce3231a      0fe5           mov 0x0F,r5
            0x0ce3231c      e780           mov.b r0,@(0x7,r14)
            0x0ce3231e      09e6           mov 0x09,r6
            0x0ce32320      0b43           jsr @r3
            0x0ce32322      e364           mov r14,r4
            0x0ce32324      41a0           bra 0x0ce323aa
            0x0ce32326      0900           nop 
            0x0ce32328      5001           .word 0x0150
            0x0ce3232a      a301           ocbp @r1
            0x0ce3232c      3001           .word 0x0130
            0x0ce3232e      0000           .word 0x0000
            0x0ce32330      .dword 0x0ce36e78 ; aav.0x0ce36e78
            0x0ce32334      5555           mov.l @(0x14,r5),r5
            0x0ce32336      d53f           dmulu.l r13,r15
            0x0ce32338      0000           .word 0x0000
            0x0ce3233a      8043           .word 0x4380
            0x0ce3233c      400b           .word 0x0B40
            0x0ce3233e      068c           .word 0x8C06
            0x0ce32340      .dword 0x0ce36e84 ; aav.0x0ce36e84
            0x0ce32344      .dword 0x0ce36e8c ; aav.0x0ce36e8c
            0x0ce32348      e46d           mov.b @r14+,r13
            0x0ce3234a      058c           .word 0x8C05
            0x0ce3234c      8c4e           shad r8,r14
            0x0ce3234e      038c           .word 0x8C03
            0x0ce32350      ee4d           ldc r13,r6_bank
            0x0ce32352      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce32304 (+0x10)
            0x0ce32354      2ed3           mov.l @(0xB8,PC),r3
            0x0ce32356      0b43           jsr @r3
            0x0ce32358      e364           mov r14,r4
            0x0ce3235a      0820           tst r0,r0
            0x0ce3235c      258d           bt.s 0x0ce323aa
            0x0ce3235e      022f           mov.l r0,@r15
            0x0ce32360      e784           mov.b @(0x7,r14),r0
            0x0ce32362      05e6           mov 0x05,r6
            0x0ce32364      2bd3           mov.l @(0xAC,PC),r3
            0x0ce32366      6365           mov r6,r5
            0x0ce32368      0170           add 0x01,r0
            0x0ce3236a      e780           mov.b r0,@(0x7,r14)
            0x0ce3236c      0b43           jsr @r3
            0x0ce3236e      e364           mov r14,r4
            0x0ce32370      29d2           mov.l @(0xA4,PC),r2
            0x0ce32372      05e5           mov 0x05,r5
            0x0ce32374      0b42           jsr @r2
            0x0ce32376      e364           mov r14,r4
            0x0ce32378      28c7           mova @(0xA0,PC),r0
            0x0ce3237a      f365           mov r15,r5
            0x0ce3237c      08f3           fmov @r0,fr3
            0x0ce3237e      04e0           mov 0x04,r0
            0x0ce32380      28d3           mov.l @(0xA0,PC),r3
            0x0ce32382      0475           add 0x04,r5
            0x0ce32384      37ff           fmov fr3,@(r0,r15)
            0x0ce32386      26c7           mova @(0x98,PC),r0
            0x0ce32388      08f3           fmov @r0,fr3
            0x0ce3238a      08e0           mov 0x08,r0
            0x0ce3238c      37ff           fmov fr3,@(r0,r15)
            0x0ce3238e      0b43           jsr @r3
            0x0ce32390      e364           mov r14,r4
            0x0ce32392      25d2           mov.l @(0x94,PC),r2
            0x0ce32394      0fe5           mov 0x0F,r5
            0x0ce32396      0ae6           mov 0x0A,r6
            0x0ce32398      0b42           jsr @r2
            0x0ce3239a      e364           mov r14,r4
            0x0ce3239c      3490           mov.w @(0x68,PC),r0
            0x0ce3239e      3293           mov.w @(0x64,PC),r3
            0x0ce323a0      340e           mov.b r3,@(r0,r14)
            0x0ce323a2      22d3           mov.l @(0x88,PC),r3
            0x0ce323a4      f265           mov.l @r15,r5
            0x0ce323a6      0b43           jsr @r3
            0x0ce323a8      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce32304 (+0x20, +0x58)
            0x0ce323aa      107f           add 0x10,r15
            0x0ce323ac      264f           lds.l @r15+,pr
            0x0ce323ae      0b00           rts 
            0x0ce323b0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce323b2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e94)
            0x0ce323b2      e62f           mov.l r14,@-r15
            0x0ce323b4      224f           sts.l pr,@-r15
            0x0ce323b6      fc7f           add 0xFC,r15
            0x0ce323b8      2890           mov.w @(0x50,PC),r0
            0x0ce323ba      01e2           mov 0x01,r2
            0x0ce323bc      436e           mov r4,r14
            0x0ce323be      02e4           mov 0x02,r4
            0x0ce323c0      2393           mov.w @(0x46,PC),r3
            0x0ce323c2      ec33           add r14,r3
            0x0ce323c4      322f           mov.l r3,@r15
            0x0ce323c6      03e3           mov 0x03,r3
            0x0ce323c8      240e           mov.b r2,@(r0,r14)
            0x0ce323ca      0370           add 0x03,r0
            0x0ce323cc      440e           mov.b r4,@(r0,r14)
            0x0ce323ce      0870           add 0x08,r0
            0x0ce323d0      440e           mov.b r4,@(r0,r14)
            0x0ce323d2      fd70           add 0xFD,r0
            0x0ce323d4      340e           mov.b r3,@(r0,r14)
            0x0ce323d6      16d3           mov.l @(0x58,PC),r3
            0x0ce323d8      0b43           jsr @r3
            0x0ce323da      e364           mov r14,r4
            0x0ce323dc      0e60           exts.b r0,r0
            0x0ce323de      1140           cmp/pz r0
            0x0ce323e0      0d89           bt 0x0ce323fe
            0x0ce323e2      e784           mov.b @(0x7,r14),r0
            0x0ce323e4      0fe5           mov 0x0F,r5
            0x0ce323e6      e364           mov r14,r4
            0x0ce323e8      0be6           mov 0x0B,r6
            0x0ce323ea      0170           add 0x01,r0
            0x0ce323ec      e780           mov.b r0,@(0x7,r14)
            0x0ce323ee      00e0           mov 0x00,r0
            0x0ce323f0      f263           mov.l @r15,r3
            0x0ce323f2      3280           mov.b r0,@(0x2,r3)
            0x0ce323f4      047f           add 0x04,r15
            0x0ce323f6      264f           lds.l @r15+,pr
            0x0ce323f8      0bd3           mov.l @(0x2C,PC),r3
            0x0ce323fa      2b43           jmp @r3
            0x0ce323fc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce323b2 (+0x2e)
            0x0ce323fe      047f           add 0x04,r15
            0x0ce32400      264f           lds.l @r15+,pr
            0x0ce32402      0b00           rts 
            0x0ce32404      f66e           mov.l @r15+,r14
            0x0ce32406      c300           movca.l r0,@r0
            0x0ce32408      f701           mul.l r15,r1
            0x0ce3240a      a402           mov.b r10,@(r0,r2)
            0x0ce3240c      ea01           .word 0x01EA
            0x0ce3240e      0000           .word 0x0000
            0x0ce32410      e057           mov.l @(0x0,r14),r7
            0x0ce32412      048c           .word 0x8C04
            0x0ce32414      c4fe           fcmp/eq fr12,fr14
            0x0ce32416      028c           .word 0x8C02
            0x0ce32418      0820           tst r0,r0
            0x0ce3241a      048c           .word 0x8C04
            0x0ce3241c      aaaa           bra 0x0ce31974
            0x0ce3241e      12c3           trapa 0x12
            0x0ce32420      b66d           mov.l @r11+,r13
            0x0ce32422      2b43           jmp @r3
            0x0ce32424      6036           cmp/eq r6,r6
            0x0ce32426      108c           .word 0x8C10
            0x0ce32428      8c4e           shad r8,r14
            0x0ce3242a      038c           .word 0x8C03
            0x0ce3242c      d823           tst r13,r3
            0x0ce3242e      058c           .word 0x8C05
            0x0ce32430      ee4d           ldc r13,r6_bank
            0x0ce32432      038c           .word 0x8C03
            ;-- aav.0x0ce32434:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e98)
            0x0ce32434      a890           mov.w @(0x150,PC),r0
            0x0ce32436      01e3           mov 0x01,r3
            0x0ce32438      e62f           mov.l r14,@-r15
            0x0ce3243a      436e           mov r4,r14
            0x0ce3243c      02e4           mov 0x02,r4
            0x0ce3243e      224f           sts.l pr,@-r15
            0x0ce32440      340e           mov.b r3,@(r0,r14)
            0x0ce32442      0370           add 0x03,r0
            0x0ce32444      440e           mov.b r4,@(r0,r14)
            0x0ce32446      0870           add 0x08,r0
            0x0ce32448      440e           mov.b r4,@(r0,r14)
            0x0ce3244a      fd70           add 0xFD,r0
            0x0ce3244c      03e3           mov 0x03,r3
            0x0ce3244e      340e           mov.b r3,@(r0,r14)
            0x0ce32450      50d3           mov.l @(0x140,PC),r3
            0x0ce32452      0b43           jsr @r3
            0x0ce32454      e364           mov r14,r4
            0x0ce32456      0e60           exts.b r0,r0
            0x0ce32458      1140           cmp/pz r0
            0x0ce3245a      4989           bt 0x0ce324f0
            0x0ce3245c      e784           mov.b @(0x7,r14),r0
            0x0ce3245e      4ed4           mov.l @(0x138,PC),r4
            0x0ce32460      0170           add 0x01,r0
            0x0ce32462      e780           mov.b r0,@(0x7,r14)
            0x0ce32464      4dc7           mova @(0x134,PC),r0
            0x0ce32466      08f4           fmov @r0,fr4
            0x0ce32468      8f90           mov.w @(0x11E,PC),r0
            0x0ce3246a      ec03           mov.b @(r0,r14),r3
            0x0ce3246c      4cc7           mova @(0x130,PC),r0
            0x0ce3246e      08f2           fmov @r0,fr2
            0x0ce32470      5ce0           mov 0x5C,r0
            0x0ce32472      3c63           extu.b r3,r3
            0x0ce32474      3362           mov r3,r2
            0x0ce32476      0043           shll r3
            0x0ce32478      2c33           add r2,r3
            0x0ce3247a      0843           shll2 r3
            0x0ce3247c      4c33           add r4,r3
            0x0ce3247e      3261           mov.l @r3,r1
            0x0ce32480      5a41           lds r1,fpul
            0x0ce32482      2df3           float fpul,fr3
            0x0ce32484      22f3           fmul fr2,fr3
            0x0ce32486      43f3           fdiv fr4,fr3
            0x0ce32488      37fe           fmov fr3,@(r0,r14)
            0x0ce3248a      68e0           mov 0x68,r0
            0x0ce3248c      8df3           fldi0 fr3
            0x0ce3248e      37fe           fmov fr3,@(r0,r14)
            0x0ce32490      44c7           mova @(0x110,PC),r0
            0x0ce32492      08f5           fmov @r0,fr5
            0x0ce32494      7990           mov.w @(0xF2,PC),r0
            0x0ce32496      ec03           mov.b @(r0,r14),r3
            0x0ce32498      3c63           extu.b r3,r3
            0x0ce3249a      3362           mov r3,r2
            0x0ce3249c      0043           shll r3
            0x0ce3249e      2c33           add r2,r3
            0x0ce324a0      0843           shll2 r3
            0x0ce324a2      4c33           add r4,r3
            0x0ce324a4      3151           mov.l @(0x4,r3),r1
            0x0ce324a6      60e0           mov 0x60,r0
            0x0ce324a8      5a41           lds r1,fpul
            0x0ce324aa      2df3           float fpul,fr3
            0x0ce324ac      52f3           fmul fr5,fr3
            0x0ce324ae      43f3           fdiv fr4,fr3
            0x0ce324b0      37fe           fmov fr3,@(r0,r14)
            0x0ce324b2      6a90           mov.w @(0xD4,PC),r0
            0x0ce324b4      ec03           mov.b @(r0,r14),r3
            0x0ce324b6      6ce0           mov 0x6C,r0
            0x0ce324b8      3c63           extu.b r3,r3
            0x0ce324ba      3362           mov r3,r2
            0x0ce324bc      0043           shll r3
            0x0ce324be      2c33           add r2,r3
            0x0ce324c0      0843           shll2 r3
            0x0ce324c2      3c34           add r3,r4
            0x0ce324c4      4253           mov.l @(0x8,r4),r3
            0x0ce324c6      5a43           lds r3,fpul
            0x0ce324c8      2df3           float fpul,fr3
            0x0ce324ca      52f3           fmul fr5,fr3
            0x0ce324cc      43f3           fdiv fr4,fr3
            0x0ce324ce      37fe           fmov fr3,@(r0,r14)
            0x0ce324d0      34e0           mov 0x34,r0
            0x0ce324d2      e6f1           fmov @(r0,r14),fr1
            0x0ce324d4      8df3           fldi0 fr3
            0x0ce324d6      15f3           fcmp/gt fr1,fr3
            0x0ce324d8      048d           bt.s 0x0ce324e4
            0x0ce324da      0ce6           mov 0x0C,r6
            0x0ce324dc      5ce0           mov 0x5C,r0
            0x0ce324de      e6f1           fmov @(r0,r14),fr1
            0x0ce324e0      4df1           fneg fr1
            0x0ce324e2      17fe           fmov fr1,@(r0,r14)
            ; CODE XREF from aav.0x0ce32434 (+0xa4)
            0x0ce324e4      264f           lds.l @r15+,pr
            0x0ce324e6      30d3           mov.l @(0xC0,PC),r3
            0x0ce324e8      0fe5           mov 0x0F,r5
            0x0ce324ea      e364           mov r14,r4
            0x0ce324ec      2b43           jmp @r3
            0x0ce324ee      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32434 (+0x26)
            0x0ce324f0      264f           lds.l @r15+,pr
            0x0ce324f2      0b00           rts 
            0x0ce324f4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce324f6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e9c)
            0x0ce324f6      e62f           mov.l r14,@-r15
            0x0ce324f8      436e           mov r4,r14
            0x0ce324fa      d62f           mov.l r13,@-r15
            0x0ce324fc      02e4           mov 0x02,r4
            0x0ce324fe      4390           mov.w @(0x86,PC),r0
            0x0ce32500      03e3           mov 0x03,r3
            0x0ce32502      c62f           mov.l r12,@-r15
            0x0ce32504      01ec           mov 0x01,r12
            0x0ce32506      5ce1           mov 0x5C,r1
            0x0ce32508      409d           mov.w @(0x80,PC),r13
            0x0ce3250a      ec31           add r14,r1
            0x0ce3250c      224f           sts.l pr,@-r15
            0x0ce3250e      c40e           mov.b r12,@(r0,r14)
            0x0ce32510      0370           add 0x03,r0
            0x0ce32512      440e           mov.b r4,@(r0,r14)
            0x0ce32514      0870           add 0x08,r0
            0x0ce32516      440e           mov.b r4,@(r0,r14)
            0x0ce32518      fd70           add 0xFD,r0
            0x0ce3251a      340e           mov.b r3,@(r0,r14)
            0x0ce3251c      34e0           mov 0x34,r0
            0x0ce3251e      e6f2           fmov @(r0,r14),fr2
            0x0ce32520      ec3d           add r14,r13
            0x0ce32522      18f3           fmov @r1,fr3
            0x0ce32524      68e1           mov 0x68,r1
            0x0ce32526      ec31           add r14,r1
/ (fcn) fcn.0ce32528 202
|   fcn.0ce32528 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3261a (+0xb4)
|           0x0ce32528      30f2           fadd fr3,fr2
|           0x0ce3252a      27fe           fmov fr2,@(r0,r14)
|           0x0ce3252c      5ce0           mov 0x5C,r0
|           0x0ce3252e      18f3           fmov @r1,fr3
|           0x0ce32530      e6f2           fmov @(r0,r14),fr2
|           0x0ce32532      30f2           fadd fr3,fr2
|           0x0ce32534      27fe           fmov fr2,@(r0,r14)
|           0x0ce32536      60e1           mov 0x60,r1
|           0x0ce32538      16d3           mov.l @(0x58,PC),r3
|           0x0ce3253a      ec31           add r14,r1
|           0x0ce3253c      38e0           mov 0x38,r0
|           0x0ce3253e      18f3           fmov @r1,fr3
|           0x0ce32540      e6f2           fmov @(r0,r14),fr2
|           0x0ce32542      6ce1           mov 0x6C,r1
|           0x0ce32544      ec31           add r14,r1
|           0x0ce32546      30f2           fadd fr3,fr2
|           0x0ce32548      27fe           fmov fr2,@(r0,r14)
|           0x0ce3254a      60e0           mov 0x60,r0
|           0x0ce3254c      e6f2           fmov @(r0,r14),fr2
|           0x0ce3254e      18f3           fmov @r1,fr3
|           0x0ce32550      30f2           fadd fr3,fr2
|           0x0ce32552      27fe           fmov fr2,@(r0,r14)
|           0x0ce32554      0b43           jsr @r3
|           0x0ce32556      e364           mov r14,r4
|           0x0ce32558      14d2           mov.l @(0x50,PC),r2
|           0x0ce3255a      0b42           jsr @r2
|           0x0ce3255c      e364           mov r14,r4
|           0x0ce3255e      0820           tst r0,r0
|           0x0ce32560      3289           bt 0x0ce325c8
|           0x0ce32562      1490           mov.w @(0x28,PC),r0
|           0x0ce32564      ec02           mov.b @(r0,r14),r2
|           0x0ce32566      2822           tst r2,r2
|           0x0ce32568      2289           bt 0x0ce325b0
|           0x0ce3256a      1190           mov.w @(0x22,PC),r0
|           0x0ce3256c      ec03           mov.b @(r0,r14),r3
|           0x0ce3256e      3823           tst r3,r3
|           0x0ce32570      2089           bt 0x0ce325b4
|           0x0ce32572      00e3           mov 0x00,r3
|           0x0ce32574      340e           mov.b r3,@(r0,r14)
|           0x0ce32576      0170           add 0x01,r0
|           0x0ce32578      ec00           mov.b @(r0,r14),r0
|           0x0ce3257a      0188           cmp/eq 0x01,r0
|           0x0ce3257c      1a89           bt 0x0ce325b4
|           0x0ce3257e      0890           mov.w @(0x10,PC),r0
|           ; CODE XREF from aav.0x0ce32f10 (+0x118)
|           0x0ce32580      ec02           mov.b @(r0,r14),r2
|           0x0ce32582      ff72           add 0xFF,r2
|           0x0ce32584      16a0           bra 0x0ce325b4
|           0x0ce32586      240e           mov.b r2,@(r0,r14)
            0x0ce32588      ea01           .word 0x01EA
            0x0ce3258a      a301           ocbp @r1
            0x0ce3258c      a402           mov.b r10,@(r0,r2)
            0x0ce3258e      2505           mov.w r2,@(r0,r5)
            0x0ce32590      4101           .word 0x0141
            0x0ce32592      4201           stc spc,r1
            0x0ce32594      ee4d           ldc r13,r6_bank
            0x0ce32596      038c           .word 0x8C03
            0x0ce32598      .dword 0x0ce36eb0 ; aav.0x0ce36eb0
            0x0ce3259c      0000           .word 0x0000
            0x0ce3259e      8047           .word 0x4780
            ; CODE XREF from aav.0x0ce32f10 (+0x138)
            0x0ce325a0      5555           mov.l @(0x14,r5),r5
            0x0ce325a2      d53f           dmulu.l r13,r15
            0x0ce325a4      9224           mov.l r9,@r4
            0x0ce325a6      0940           shlr2 r0
            0x0ce325a8      8c4e           shad r8,r14
            0x0ce325aa      038c           .word 0x8C03
            0x0ce325ac      2e5d           mov.l @(0x38,r2),r13
            0x0ce325ae      058c           .word 0x8C05
|           ; CODE XREF from fcn.0ce32528 (0xce32568)
|           0x0ce325b0      7790           mov.w @(0xEE,PC),r0
|           0x0ce325b2      c40e           mov.b r12,@(r0,r14)
|           ; CODE XREFS from fcn.0ce32528 (0xce32570, 0xce3257c, 0xce32584)
|           0x0ce325b4      d284           mov.b @(0x2,r13),r0
|           0x0ce325b6      14e4           mov 0x14,r4
|           0x0ce325b8      0170           add 0x01,r0
|           0x0ce325ba      d280           mov.b r0,@(0x2,r13)
|           0x0ce325bc      d284           mov.b @(0x2,r13),r0
|           0x0ce325be      4730           cmp/gt r4,r0
|           0x0ce325c0      028b           bf 0x0ce325c8
|           0x0ce325c2      4360           mov r4,r0
|           0x0ce325c4      0900           nop 
|           0x0ce325c6      d280           mov.b r0,@(0x2,r13)
|           ; CODE XREFS from fcn.0ce32528 (0xce32560, 0xce325c0)
|           0x0ce325c8      38d3           mov.l @(0xE0,PC),r3
|           0x0ce325ca      0b43           jsr @r3
|           0x0ce325cc      e364           mov r14,r4
|           0x0ce325ce      0c60           extu.b r0,r0
|           0x0ce325d0      0820           tst r0,r0
|           0x0ce325d2      1d89           bt 0x0ce32610
|           0x0ce325d4      e784           mov.b @(0x7,r14),r0
|           0x0ce325d6      8df4           fldi0 fr4
|           0x0ce325d8      0170           add 0x01,r0
|           0x0ce325da      35d4           mov.l @(0xD4,PC),r4
|           0x0ce325dc      e780           mov.b r0,@(0x7,r14)
|           0x0ce325de      5ce0           mov 0x5C,r0
|           0x0ce325e0      47fe           fmov fr4,@(r0,r14)
|           0x0ce325e2      60e0           mov 0x60,r0
|           0x0ce325e4      47fe           fmov fr4,@(r0,r14)
|           0x0ce325e6      68e0           mov 0x68,r0
|           0x0ce325e8      47fe           fmov fr4,@(r0,r14)
|           0x0ce325ea      6ce0           mov 0x6C,r0
|           0x0ce325ec      47fe           fmov fr4,@(r0,r14)
|           0x0ce325ee      03e0           mov 0x03,r0
|           0x0ce325f0      4580           mov.b r0,@(0x5,r4)
|           0x0ce325f2      c360           mov r12,r0
|           0x0ce325f4      0900           nop 
|           0x0ce325f6      2fd3           mov.l @(0xBC,PC),r3
|           0x0ce325f8      4680           mov.b r0,@(0x6,r4)
|           0x0ce325fa      0b43           jsr @r3
|           0x0ce325fc      e364           mov r14,r4
|           0x0ce325fe      264f           lds.l @r15+,pr
|           0x0ce32600      2dd2           mov.l @(0xB4,PC),r2
|           0x0ce32602      0fe5           mov 0x0F,r5
|           0x0ce32604      e364           mov r14,r4
|           0x0ce32606      0de6           mov 0x0D,r6
|           0x0ce32608      f66c           mov.l @r15+,r12
|           0x0ce3260a      f66d           mov.l @r15+,r13
|           0x0ce3260c      2b42           jmp @r2
|           0x0ce3260e      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce32528 (0xce325d2)
|           0x0ce32610      264f           lds.l @r15+,pr
|           0x0ce32612      f66c           mov.l @r15+,r12
|           0x0ce32614      f66d           mov.l @r15+,r13
|           0x0ce32616      0b00           rts 
\           0x0ce32618      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3261a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ea0)
            0x0ce3261a      4390           mov.w @(0x86,PC),r0
            0x0ce3261c      01e3           mov 0x01,r3
            0x0ce3261e      e62f           mov.l r14,@-r15
            0x0ce32620      436e           mov r4,r14
            0x0ce32622      02e4           mov 0x02,r4
            0x0ce32624      224f           sts.l pr,@-r15
            0x0ce32626      340e           mov.b r3,@(r0,r14)
            0x0ce32628      0370           add 0x03,r0
            0x0ce3262a      440e           mov.b r4,@(r0,r14)
            0x0ce3262c      0870           add 0x08,r0
            0x0ce3262e      440e           mov.b r4,@(r0,r14)
            0x0ce32630      fd70           add 0xFD,r0
            0x0ce32632      03e3           mov 0x03,r3
            0x0ce32634      340e           mov.b r3,@(r0,r14)
            0x0ce32636      3690           mov.w @(0x6C,PC),r0
            0x0ce32638      ec02           mov.b @(r0,r14),r2
            0x0ce3263a      2822           tst r2,r2
            0x0ce3263c      028d           bt.s 0x0ce32644
            0x0ce3263e      e364           mov r14,r4
            0x0ce32640      00e2           mov 0x00,r2
            0x0ce32642      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce3261a (+0x22)
            0x0ce32644      1dd3           mov.l @(0x74,PC),r3
            0x0ce32646      0b43           jsr @r3
            0x0ce32648      0900           nop 
            0x0ce3264a      0e60           exts.b r0,r0
            0x0ce3264c      1140           cmp/pz r0
            0x0ce3264e      2589           bt 0x0ce3269c
            0x0ce32650      e784           mov.b @(0x7,r14),r0
            0x0ce32652      0170           add 0x01,r0
            0x0ce32654      e780           mov.b r0,@(0x7,r14)
            0x0ce32656      1ac7           mova @(0x68,PC),r0
            0x0ce32658      08f3           fmov @r0,fr3
            0x0ce3265a      5ce0           mov 0x5C,r0
            0x0ce3265c      37fe           fmov fr3,@(r0,r14)
            0x0ce3265e      19c7           mova @(0x64,PC),r0
            0x0ce32660      08f3           fmov @r0,fr3
            0x0ce32662      68e0           mov 0x68,r0
            0x0ce32664      37fe           fmov fr3,@(r0,r14)
            0x0ce32666      18c7           mova @(0x60,PC),r0
            0x0ce32668      08f3           fmov @r0,fr3
            0x0ce3266a      60e0           mov 0x60,r0
            0x0ce3266c      37fe           fmov fr3,@(r0,r14)
            0x0ce3266e      17c7           mova @(0x5C,PC),r0
            0x0ce32670      08f3           fmov @r0,fr3
            0x0ce32672      6ce0           mov 0x6C,r0
            0x0ce32674      37fe           fmov fr3,@(r0,r14)
            0x0ce32676      1790           mov.w @(0x2E,PC),r0
            0x0ce32678      ec03           mov.b @(r0,r14),r3
            0x0ce3267a      3823           tst r3,r3
            0x0ce3267c      088d           bt.s 0x0ce32690
            0x0ce3267e      0ee6           mov 0x0E,r6
            0x0ce32680      5ce0           mov 0x5C,r0
            0x0ce32682      e6f3           fmov @(r0,r14),fr3
            0x0ce32684      4df3           fneg fr3
            0x0ce32686      37fe           fmov fr3,@(r0,r14)
            0x0ce32688      68e0           mov 0x68,r0
            0x0ce3268a      e6f3           fmov @(r0,r14),fr3
            0x0ce3268c      4df3           fneg fr3
            0x0ce3268e      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3261a (+0x62)
            0x0ce32690      264f           lds.l @r15+,pr
            0x0ce32692      09d3           mov.l @(0x24,PC),r3
            0x0ce32694      0fe5           mov 0x0F,r5
            0x0ce32696      e364           mov r14,r4
            0x0ce32698      2b43           jmp @r3
            0x0ce3269a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3261a (+0x34)
            0x0ce3269c      264f           lds.l @r15+,pr
            0x0ce3269e      0b00           rts 
            0x0ce326a0      f66e           mov.l @r15+,r14
            0x0ce326a2      4201           stc spc,r1
            0x0ce326a4      ea01           .word 0x01EA
            0x0ce326a6      4101           .word 0x0141
            0x0ce326a8      d201           stc r5_bank,r1
            0x0ce326aa      0000           .word 0x0000
            0x0ce326ac      e22c           mov.l r14,@r12
            0x0ce326ae      058c           .word 0x8C05
            0x0ce326b0      18a5           bra 0x0ce330e4
            0x0ce326b2      268c           .word 0x8C26
            0x0ce326b4      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce326b8      8c4e           shad r8,r14
            0x0ce326ba      038c           .word 0x8C03
            0x0ce326bc      ee4d           ldc r13,r6_bank
            0x0ce326be      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce33130 (+0x38)
            0x0ce326c0      0000           .word 0x0000
            0x0ce326c2      a040           .word 0x40A0
            0x0ce326c4      5555           mov.l @(0x14,r5),r5
            0x0ce326c6      d5bd           bsr fcn.0ce32274
            0x0ce326c8      9224           mov.l r9,@r4
            0x0ce326ca      8941           .word 0x4189
            0x0ce326cc      b66d           mov.l @r11+,r13
            0x0ce326ce      2bbf           bsr fcn.0ce32528
            ;-- aav.0x0ce326d0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ea4)
            0x0ce326d0      e62f           mov.l r14,@-r15
            0x0ce326d2      d62f           mov.l r13,@-r15
            0x0ce326d4      224f           sts.l pr,@-r15
            0x0ce326d6      fc7f           add 0xFC,r15
            0x0ce326d8      b390           mov.w @(0x166,PC),r0
            0x0ce326da      01e2           mov 0x01,r2
            0x0ce326dc      436e           mov r4,r14
            0x0ce326de      02ed           mov 0x02,r13
            0x0ce326e0      5ce1           mov 0x5C,r1
            0x0ce326e2      ad93           mov.w @(0x15A,PC),r3
            0x0ce326e4      ec31           add r14,r1
            0x0ce326e6      ec33           add r14,r3
            0x0ce326e8      322f           mov.l r3,@r15
            0x0ce326ea      240e           mov.b r2,@(r0,r14)
            0x0ce326ec      0370           add 0x03,r0
            0x0ce326ee      d40e           mov.b r13,@(r0,r14)
            0x0ce326f0      0870           add 0x08,r0
            0x0ce326f2      d40e           mov.b r13,@(r0,r14)
            0x0ce326f4      34e0           mov 0x34,r0
            0x0ce326f6      e6f2           fmov @(r0,r14),fr2
            0x0ce326f8      18f3           fmov @r1,fr3
            0x0ce326fa      68e1           mov 0x68,r1
            0x0ce326fc      ec31           add r14,r1
            0x0ce326fe      30f2           fadd fr3,fr2
            0x0ce32700      27fe           fmov fr2,@(r0,r14)
            0x0ce32702      5ce0           mov 0x5C,r0
            0x0ce32704      18f3           fmov @r1,fr3
            0x0ce32706      60e1           mov 0x60,r1
            0x0ce32708      e6f2           fmov @(r0,r14),fr2
            0x0ce3270a      ec31           add r14,r1
            0x0ce3270c      30f2           fadd fr3,fr2
            0x0ce3270e      27fe           fmov fr2,@(r0,r14)
            0x0ce32710      38e0           mov 0x38,r0
            0x0ce32712      18f3           fmov @r1,fr3
            0x0ce32714      e6f2           fmov @(r0,r14),fr2
            0x0ce32716      30f2           fadd fr3,fr2
            0x0ce32718      6ce1           mov 0x6C,r1
            0x0ce3271a      27fe           fmov fr2,@(r0,r14)
            0x0ce3271c      ec31           add r14,r1
            0x0ce3271e      4bd3           mov.l @(0x12C,PC),r3
            0x0ce32720      60e0           mov 0x60,r0
            0x0ce32722      18f3           fmov @r1,fr3
            0x0ce32724      e6f2           fmov @(r0,r14),fr2
            0x0ce32726      30f2           fadd fr3,fr2
            0x0ce32728      27fe           fmov fr2,@(r0,r14)
            0x0ce3272a      0b43           jsr @r3
            0x0ce3272c      e364           mov r14,r4
            0x0ce3272e      0e60           exts.b r0,r0
            0x0ce32730      1140           cmp/pz r0
            0x0ce32732      0b89           bt 0x0ce3274c
            0x0ce32734      e784           mov.b @(0x7,r14),r0
            0x0ce32736      0fe5           mov 0x0F,r5
            0x0ce32738      e364           mov r14,r4
            0x0ce3273a      21e6           mov 0x21,r6
            0x0ce3273c      0170           add 0x01,r0
            0x0ce3273e      e780           mov.b r0,@(0x7,r14)
            0x0ce32740      047f           add 0x04,r15
            0x0ce32742      264f           lds.l @r15+,pr
            0x0ce32744      42d3           mov.l @(0x108,PC),r3
            0x0ce32746      f66d           mov.l @r15+,r13
            0x0ce32748      2b43           jmp @r3
            0x0ce3274a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce326d0 (+0x62)
            0x0ce3274c      7a90           mov.w @(0xF4,PC),r0
            0x0ce3274e      ec02           mov.b @(r0,r14),r2
            0x0ce32750      2822           tst r2,r2
            0x0ce32752      2089           bt 0x0ce32796
            0x0ce32754      00e3           mov 0x00,r3
            0x0ce32756      3365           mov r3,r5
            0x0ce32758      3366           mov r3,r6
            0x0ce3275a      340e           mov.b r3,@(r0,r14)
            0x0ce3275c      3dd3           mov.l @(0xF4,PC),r3
            0x0ce3275e      0b43           jsr @r3
            0x0ce32760      e364           mov r14,r4
            0x0ce32762      7090           mov.w @(0xE0,PC),r0
            0x0ce32764      7091           mov.w @(0xE0,PC),r1
            0x0ce32766      ee04           mov.l @(r0,r14),r4
            0x0ce32768      ec70           add 0xEC,r0
            0x0ce3276a      ec31           add r14,r1
            0x0ce3276c      e604           mov.l r14,@(r0,r4)
            0x0ce3276e      4270           add 0x42,r0
            0x0ce32770      d404           mov.b r13,@(r0,r4)
            0x0ce32772      ad70           add 0xAD,r0
            0x0ce32774      ec03           mov.b @(r0,r14),r3
            0x0ce32776      fe70           add 0xFE,r0
            0x0ce32778      2573           add 0x25,r3
            0x0ce3277a      3404           mov.b r3,@(r0,r4)
            0x0ce3277c      0270           add 0x02,r0
            0x0ce3277e      ec02           mov.b @(r0,r14),r2
            0x0ce32780      fe70           add 0xFE,r0
            0x0ce32782      2572           add 0x25,r2
            0x0ce32784      240e           mov.b r2,@(r0,r14)
            0x0ce32786      f263           mov.l @r15,r3
            0x0ce32788      3284           mov.b @(0x2,r3),r0
            0x0ce3278a      00e3           mov 0x00,r3
            0x0ce3278c      0733           cmp/gt r0,r3
            0x0ce3278e      3e30           addc r3,r0
            0x0ce32790      2140           shar r0
            0x0ce32792      2070           add 0x20,r0
            0x0ce32794      0021           mov.b r0,@r1
            ; CODE XREF from aav.0x0ce326d0 (+0x82)
            0x0ce32796      047f           add 0x04,r15
            0x0ce32798      264f           lds.l @r15+,pr
            0x0ce3279a      f66d           mov.l @r15+,r13
            0x0ce3279c      0b00           rts 
            0x0ce3279e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce327a0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ea8)
            0x0ce327a0      4f90           mov.w @(0x9E,PC),r0
            0x0ce327a2      01e3           mov 0x01,r3
            0x0ce327a4      e62f           mov.l r14,@-r15
            0x0ce327a6      436e           mov r4,r14
            0x0ce327a8      02e4           mov 0x02,r4
            0x0ce327aa      5ce1           mov 0x5C,r1
            0x0ce327ac      ec31           add r14,r1
            0x0ce327ae      224f           sts.l pr,@-r15
            0x0ce327b0      340e           mov.b r3,@(r0,r14)
            0x0ce327b2      0370           add 0x03,r0
            0x0ce327b4      440e           mov.b r4,@(r0,r14)
            0x0ce327b6      0870           add 0x08,r0
            0x0ce327b8      440e           mov.b r4,@(r0,r14)
            0x0ce327ba      34e0           mov 0x34,r0
            0x0ce327bc      e6f2           fmov @(r0,r14),fr2
            0x0ce327be      18f3           fmov @r1,fr3
            0x0ce327c0      68e1           mov 0x68,r1
            0x0ce327c2      ec31           add r14,r1
            0x0ce327c4      30f2           fadd fr3,fr2
            0x0ce327c6      27fe           fmov fr2,@(r0,r14)
            0x0ce327c8      5ce0           mov 0x5C,r0
            0x0ce327ca      18f3           fmov @r1,fr3
            0x0ce327cc      60e1           mov 0x60,r1
            0x0ce327ce      e6f2           fmov @(r0,r14),fr2
            0x0ce327d0      ec31           add r14,r1
            0x0ce327d2      30f2           fadd fr3,fr2
            0x0ce327d4      27fe           fmov fr2,@(r0,r14)
            0x0ce327d6      38e0           mov 0x38,r0
            0x0ce327d8      e6f2           fmov @(r0,r14),fr2
            0x0ce327da      18f3           fmov @r1,fr3
            0x0ce327dc      30f2           fadd fr3,fr2
            0x0ce327de      27fe           fmov fr2,@(r0,r14)
            0x0ce327e0      6ce1           mov 0x6C,r1
            0x0ce327e2      1dd3           mov.l @(0x74,PC),r3
            0x0ce327e4      ec31           add r14,r1
            0x0ce327e6      60e0           mov 0x60,r0
            0x0ce327e8      18f3           fmov @r1,fr3
            0x0ce327ea      e6f2           fmov @(r0,r14),fr2
            0x0ce327ec      30f2           fadd fr3,fr2
            0x0ce327ee      27fe           fmov fr2,@(r0,r14)
            0x0ce327f0      0b43           jsr @r3
            0x0ce327f2      e364           mov r14,r4
            0x0ce327f4      0c60           extu.b r0,r0
            0x0ce327f6      0820           tst r0,r0
            0x0ce327f8      0c89           bt 0x0ce32814
            0x0ce327fa      18d3           mov.l @(0x60,PC),r3
            0x0ce327fc      0b43           jsr @r3
            0x0ce327fe      e364           mov r14,r4
            0x0ce32800      e784           mov.b @(0x7,r14),r0
            0x0ce32802      e364           mov r14,r4
            0x0ce32804      12d3           mov.l @(0x48,PC),r3
            0x0ce32806      22e6           mov 0x22,r6
            0x0ce32808      0170           add 0x01,r0
            0x0ce3280a      e780           mov.b r0,@(0x7,r14)
            0x0ce3280c      0fe5           mov 0x0F,r5
            0x0ce3280e      264f           lds.l @r15+,pr
            0x0ce32810      2b43           jmp @r3
            0x0ce32812      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce327a0 (+0x58)
            0x0ce32814      264f           lds.l @r15+,pr
            0x0ce32816      0b00           rts 
            0x0ce32818      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3281a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36eac)
            0x0ce3281a      e62f           mov.l r14,@-r15
            0x0ce3281c      224f           sts.l pr,@-r15
            0x0ce3281e      0bd3           mov.l @(0x2C,PC),r3
            0x0ce32820      0b43           jsr @r3
            0x0ce32822      436e           mov r4,r14
            0x0ce32824      0e60           exts.b r0,r0
            0x0ce32826      1140           cmp/pz r0
            0x0ce32828      0789           bt 0x0ce3283a
            0x0ce3282a      0d90           mov.w @(0x1A,PC),r0
            0x0ce3282c      00e3           mov 0x00,r3
            0x0ce3282e      e364           mov r14,r4
            0x0ce32830      340e           mov.b r3,@(r0,r14)
            0x0ce32832      264f           lds.l @r15+,pr
            0x0ce32834      0ad3           mov.l @(0x28,PC),r3
            0x0ce32836      2b43           jmp @r3
            0x0ce32838      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3281a (+0xe)
            0x0ce3283a      264f           lds.l @r15+,pr
            0x0ce3283c      0b00           rts 
            0x0ce3283e      f66e           mov.l @r15+,r14
            0x0ce32840      a402           mov.b r10,@(r0,r2)
            0x0ce32842      ea01           .word 0x01EA
            0x0ce32844      4101           .word 0x0141
            0x0ce32846      c801           .word 0x01C8
            0x0ce32848      0502           mov.w r0,@(r0,r2)
            0x0ce3284a      0000           .word 0x0000
            0x0ce3284c      ee4d           ldc r13,r6_bank
            0x0ce3284e      038c           .word 0x8C03
            0x0ce32850      8c4e           shad r8,r14
            0x0ce32852      038c           .word 0x8C03
            0x0ce32854      c4fe           fcmp/eq fr12,fr14
            0x0ce32856      028c           .word 0x8C02
            0x0ce32858      e22c           mov.l r14,@r12
            0x0ce3285a      058c           .word 0x8C05
            0x0ce3285c      b411           mov.l r11,@(0x10,r1)
            0x0ce3285e      058c           .word 0x8C05
            0x0ce32860      4816           mov.l r4,@(0x20,r6)
            0x0ce32862      058c           .word 0x8C05
            ;-- aav.0x0ce32864:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e88)
            0x0ce32864      4363           mov r4,r3
            0x0ce32866      44d1           mov.l @(0x110,PC),r1
            0x0ce32868      462f           mov.l r4,@-r15
            0x0ce3286a      3784           mov.b @(0x7,r3),r0
            0x0ce3286c      0c60           extu.b r0,r0
            0x0ce3286e      0840           shll2 r0
            0x0ce32870      1e03           mov.l @(r0,r1),r3
            0x0ce32872      2b43           jmp @r3
            0x0ce32874      047f           add 0x04,r15
            ;-- aav.0x0ce32876:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ec8)
            0x0ce32876      e62f           mov.l r14,@-r15
            0x0ce32878      436e           mov r4,r14
            0x0ce3287a      25e3           mov 0x25,r3
            0x0ce3287c      00e4           mov 0x00,r4
            0x0ce3287e      224f           sts.l pr,@-r15
            0x0ce32880      e784           mov.b @(0x7,r14),r0
            0x0ce32882      0ae5           mov 0x0A,r5
            0x0ce32884      0170           add 0x01,r0
            0x0ce32886      e780           mov.b r0,@(0x7,r14)
            0x0ce32888      7290           mov.w @(0xE4,PC),r0
            0x0ce3288a      340e           mov.b r3,@(r0,r14)
            0x0ce3288c      0b70           add 0x0B,r0
            0x0ce3288e      450e           mov.w r4,@(r0,r14)
            0x0ce32890      f270           add 0xF2,r0
            0x0ce32892      440e           mov.b r4,@(r0,r14)
            0x0ce32894      2670           add 0x26,r0
            0x0ce32896      39d3           mov.l @(0xE4,PC),r3
            0x0ce32898      460e           mov.l r4,@(r0,r14)
            0x0ce3289a      e284           mov.b @(0x2,r14),r0
            0x0ce3289c      3262           mov.l @r3,r2
            0x0ce3289e      0c60           extu.b r0,r0
            0x0ce328a0      0040           shll r0
            0x0ce328a2      7c72           add 0x7C,r2
            0x0ce328a4      2d01           mov.w @(r0,r2),r1
            0x0ce328a6      0171           add 0x01,r1
            0x0ce328a8      1502           mov.w r1,@(r0,r2)
            0x0ce328aa      35d2           mov.l @(0xD4,PC),r2
            0x0ce328ac      0b42           jsr @r2
            0x0ce328ae      e364           mov r14,r4
            0x0ce328b0      34d3           mov.l @(0xD0,PC),r3
            0x0ce328b2      0b43           jsr @r3
            0x0ce328b4      e364           mov r14,r4
            0x0ce328b6      264f           lds.l @r15+,pr
            0x0ce328b8      33d2           mov.l @(0xCC,PC),r2
            0x0ce328ba      0fe6           mov 0x0F,r6
            0x0ce328bc      6365           mov r6,r5
            0x0ce328be      e364           mov r14,r4
            0x0ce328c0      2b42           jmp @r2
            0x0ce328c2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce328c4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ecc)
            0x0ce328c4      e62f           mov.l r14,@-r15
            0x0ce328c6      224f           sts.l pr,@-r15
            0x0ce328c8      f07f           add 0xF0,r15
            0x0ce328ca      30d3           mov.l @(0xC0,PC),r3
            0x0ce328cc      0b43           jsr @r3
            0x0ce328ce      436e           mov r4,r14
            0x0ce328d0      0e60           exts.b r0,r0
            0x0ce328d2      1140           cmp/pz r0
            0x0ce328d4      1d89           bt 0x0ce32912
            0x0ce328d6      09e0           mov 0x09,r0
            0x0ce328d8      2bd3           mov.l @(0xAC,PC),r3
            0x0ce328da      e780           mov.b r0,@(0x7,r14)
            0x0ce328dc      2cc7           mova @(0xB0,PC),r0
            0x0ce328de      08f3           fmov @r0,fr3
            0x0ce328e0      5ce0           mov 0x5C,r0
            0x0ce328e2      e6f2           fmov @(r0,r14),fr2
            0x0ce328e4      0fe5           mov 0x0F,r5
            0x0ce328e6      10e6           mov 0x10,r6
            0x0ce328e8      33f2           fdiv fr3,fr2
            0x0ce328ea      27fe           fmov fr2,@(r0,r14)
            0x0ce328ec      68e0           mov 0x68,r0
            0x0ce328ee      8df2           fldi0 fr2
            0x0ce328f0      27fe           fmov fr2,@(r0,r14)
            0x0ce328f2      28c7           mova @(0xA0,PC),r0
            0x0ce328f4      08f2           fmov @r0,fr2
            0x0ce328f6      60e0           mov 0x60,r0
            0x0ce328f8      e6f1           fmov @(r0,r14),fr1
            0x0ce328fa      23f1           fdiv fr2,fr1
            0x0ce328fc      17fe           fmov fr1,@(r0,r14)
            0x0ce328fe      26c7           mova @(0x98,PC),r0
            0x0ce32900      08f1           fmov @r0,fr1
            0x0ce32902      6ce0           mov 0x6C,r0
            0x0ce32904      e6f0           fmov @(r0,r14),fr0
            0x0ce32906      13f0           fdiv fr1,fr0
            0x0ce32908      07fe           fmov fr0,@(r0,r14)
            0x0ce3290a      0b43           jsr @r3
            0x0ce3290c      e364           mov r14,r4
            0x0ce3290e      2ba0           bra 0x0ce32968
            0x0ce32910      0900           nop 
            ; CODE XREF from aav.0x0ce328c4 (+0x10)
            0x0ce32912      22d3           mov.l @(0x88,PC),r3
            0x0ce32914      0b43           jsr @r3
            0x0ce32916      e364           mov r14,r4
            0x0ce32918      0820           tst r0,r0
            0x0ce3291a      258d           bt.s 0x0ce32968
            0x0ce3291c      022f           mov.l r0,@r15
            0x0ce3291e      20d2           mov.l @(0x80,PC),r2
            0x0ce32920      05e5           mov 0x05,r5
            0x0ce32922      0b42           jsr @r2
            0x0ce32924      e364           mov r14,r4
            0x0ce32926      e784           mov.b @(0x7,r14),r0
            0x0ce32928      05e6           mov 0x05,r6
            0x0ce3292a      1ed3           mov.l @(0x78,PC),r3
            0x0ce3292c      6365           mov r6,r5
            0x0ce3292e      0170           add 0x01,r0
            0x0ce32930      e780           mov.b r0,@(0x7,r14)
            0x0ce32932      0b43           jsr @r3
            0x0ce32934      e364           mov r14,r4
            0x0ce32936      1cc7           mova @(0x70,PC),r0
            0x0ce32938      f365           mov r15,r5
            0x0ce3293a      08f3           fmov @r0,fr3
            0x0ce3293c      04e0           mov 0x04,r0
            0x0ce3293e      1cd3           mov.l @(0x70,PC),r3
            0x0ce32940      0475           add 0x04,r5
            0x0ce32942      37ff           fmov fr3,@(r0,r15)
            0x0ce32944      19c7           mova @(0x64,PC),r0
            0x0ce32946      08f3           fmov @r0,fr3
            0x0ce32948      08e0           mov 0x08,r0
            0x0ce3294a      37ff           fmov fr3,@(r0,r15)
            0x0ce3294c      0b43           jsr @r3
            0x0ce3294e      e364           mov r14,r4
            0x0ce32950      0dd2           mov.l @(0x34,PC),r2
            0x0ce32952      0fe5           mov 0x0F,r5
            0x0ce32954      11e6           mov 0x11,r6
            0x0ce32956      0b42           jsr @r2
            0x0ce32958      e364           mov r14,r4
            0x0ce3295a      0b90           mov.w @(0x16,PC),r0
            0x0ce3295c      0993           mov.w @(0x12,PC),r3
            0x0ce3295e      340e           mov.b r3,@(r0,r14)
            0x0ce32960      14d3           mov.l @(0x50,PC),r3
            0x0ce32962      f265           mov.l @r15,r5
            0x0ce32964      0b43           jsr @r3
            0x0ce32966      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce328c4 (+0x4a, +0x56)
            0x0ce32968      107f           add 0x10,r15
            0x0ce3296a      264f           lds.l @r15+,pr
            0x0ce3296c      0b00           rts 
            0x0ce3296e      f66e           mov.l @r15+,r14
            0x0ce32970      a101           .word 0x01A1
            0x0ce32972      c400           mov.b r12,@(r0,r0)
            0x0ce32974      f701           mul.l r15,r1
            0x0ce32976      0000           .word 0x0000
            0x0ce32978      .dword 0x0ce36ec8 ; aav.0x0ce36ec8
            0x0ce3297c      b096           mov.w @(0x160,PC),r6
            0x0ce3297e      288c           .word 0x8C28
            0x0ce32980      e46d           mov.b @r14+,r13
            0x0ce32982      058c           .word 0x8C05
            0x0ce32984      8a21           xor r8,r1
            0x0ce32986      058c           .word 0x8C05
            0x0ce32988      8c4e           shad r8,r14
            0x0ce3298a      038c           .word 0x8C03
            0x0ce3298c      ee4d           ldc r13,r6_bank
            0x0ce3298e      038c           .word 0x8C03
            0x0ce32990      0000           .word 0x0000
            0x0ce32992      8041           .word 0x4180
            0x0ce32994      0000           .word 0x0000
            0x0ce32996      0041           shll r1
            0x0ce32998      0000           .word 0x0000
            0x0ce3299a      8042           .word 0x4280
            0x0ce3299c      e057           mov.l @(0x0,r14),r7
            0x0ce3299e      048c           .word 0x8C04
            0x0ce329a0      0820           tst r0,r0
            0x0ce329a2      048c           .word 0x8C04
            0x0ce329a4      c4fe           fcmp/eq fr12,fr14
            0x0ce329a6      028c           .word 0x8C02
            0x0ce329a8      aaaa           bra 0x0ce31f00
            0x0ce329aa      12c3           trapa 0x12
            0x0ce329ac      b66d           mov.l @r11+,r13
            0x0ce329ae      2b43           jmp @r3
            0x0ce329b0      6036           cmp/eq r6,r6
            0x0ce329b2      108c           .word 0x8C10
            0x0ce329b4      d823           tst r13,r3
            0x0ce329b6      058c           .word 0x8C05
            ;-- aav.0x0ce329b8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ed0)
            0x0ce329b8      e62f           mov.l r14,@-r15
            0x0ce329ba      224f           sts.l pr,@-r15
            0x0ce329bc      fc7f           add 0xFC,r15
            0x0ce329be      8790           mov.w @(0x10E,PC),r0
            0x0ce329c0      01e2           mov 0x01,r2
            0x0ce329c2      436e           mov r4,r14
            0x0ce329c4      02e4           mov 0x02,r4
            0x0ce329c6      8293           mov.w @(0x104,PC),r3
            0x0ce329c8      ec33           add r14,r3
            0x0ce329ca      322f           mov.l r3,@r15
            0x0ce329cc      03e3           mov 0x03,r3
            0x0ce329ce      240e           mov.b r2,@(r0,r14)
            0x0ce329d0      0370           add 0x03,r0
            0x0ce329d2      440e           mov.b r4,@(r0,r14)
            0x0ce329d4      0870           add 0x08,r0
            0x0ce329d6      440e           mov.b r4,@(r0,r14)
            0x0ce329d8      fd70           add 0xFD,r0
            0x0ce329da      340e           mov.b r3,@(r0,r14)
            0x0ce329dc      3dd3           mov.l @(0xF4,PC),r3
            0x0ce329de      0b43           jsr @r3
            0x0ce329e0      e364           mov r14,r4
            0x0ce329e2      0e60           exts.b r0,r0
            0x0ce329e4      1140           cmp/pz r0
            0x0ce329e6      0d89           bt 0x0ce32a04
            0x0ce329e8      e784           mov.b @(0x7,r14),r0
            0x0ce329ea      0fe5           mov 0x0F,r5
            0x0ce329ec      e364           mov r14,r4
            0x0ce329ee      12e6           mov 0x12,r6
            0x0ce329f0      0170           add 0x01,r0
            0x0ce329f2      e780           mov.b r0,@(0x7,r14)
            0x0ce329f4      00e0           mov 0x00,r0
            0x0ce329f6      f263           mov.l @r15,r3
            0x0ce329f8      3280           mov.b r0,@(0x2,r3)
            0x0ce329fa      047f           add 0x04,r15
            0x0ce329fc      264f           lds.l @r15+,pr
            0x0ce329fe      36d3           mov.l @(0xD8,PC),r3
            0x0ce32a00      2b43           jmp @r3
            0x0ce32a02      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce329b8 (+0x2e)
            0x0ce32a04      047f           add 0x04,r15
            0x0ce32a06      264f           lds.l @r15+,pr
            0x0ce32a08      0b00           rts 
            0x0ce32a0a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32a0c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ed4)
            0x0ce32a0c      6090           mov.w @(0xC0,PC),r0
            0x0ce32a0e      01e3           mov 0x01,r3
            0x0ce32a10      e62f           mov.l r14,@-r15
            0x0ce32a12      436e           mov r4,r14
            0x0ce32a14      02e4           mov 0x02,r4
            0x0ce32a16      224f           sts.l pr,@-r15
            0x0ce32a18      340e           mov.b r3,@(r0,r14)
            0x0ce32a1a      0370           add 0x03,r0
            0x0ce32a1c      440e           mov.b r4,@(r0,r14)
            0x0ce32a1e      0870           add 0x08,r0
            0x0ce32a20      440e           mov.b r4,@(r0,r14)
            0x0ce32a22      fd70           add 0xFD,r0
            0x0ce32a24      03e3           mov 0x03,r3
            0x0ce32a26      340e           mov.b r3,@(r0,r14)
            0x0ce32a28      2ad3           mov.l @(0xA8,PC),r3
            0x0ce32a2a      0b43           jsr @r3
            0x0ce32a2c      e364           mov r14,r4
            0x0ce32a2e      0e60           exts.b r0,r0
            0x0ce32a30      1140           cmp/pz r0
            0x0ce32a32      4989           bt 0x0ce32ac8
            0x0ce32a34      e784           mov.b @(0x7,r14),r0
            0x0ce32a36      29d4           mov.l @(0xA4,PC),r4
            0x0ce32a38      0170           add 0x01,r0
            0x0ce32a3a      e780           mov.b r0,@(0x7,r14)
            0x0ce32a3c      28c7           mova @(0xA0,PC),r0
            0x0ce32a3e      08f4           fmov @r0,fr4
            0x0ce32a40      4790           mov.w @(0x8E,PC),r0
            0x0ce32a42      ec03           mov.b @(r0,r14),r3
            0x0ce32a44      27c7           mova @(0x9C,PC),r0
            0x0ce32a46      08f2           fmov @r0,fr2
            0x0ce32a48      5ce0           mov 0x5C,r0
            0x0ce32a4a      3c63           extu.b r3,r3
            0x0ce32a4c      3362           mov r3,r2
            0x0ce32a4e      0043           shll r3
            0x0ce32a50      2c33           add r2,r3
            0x0ce32a52      0843           shll2 r3
            0x0ce32a54      4c33           add r4,r3
            0x0ce32a56      3261           mov.l @r3,r1
            0x0ce32a58      5a41           lds r1,fpul
            0x0ce32a5a      2df3           float fpul,fr3
            0x0ce32a5c      22f3           fmul fr2,fr3
            0x0ce32a5e      43f3           fdiv fr4,fr3
            0x0ce32a60      37fe           fmov fr3,@(r0,r14)
            0x0ce32a62      68e0           mov 0x68,r0
            0x0ce32a64      8df3           fldi0 fr3
            0x0ce32a66      37fe           fmov fr3,@(r0,r14)
            0x0ce32a68      1fc7           mova @(0x7C,PC),r0
            0x0ce32a6a      08f5           fmov @r0,fr5
            0x0ce32a6c      3190           mov.w @(0x62,PC),r0
            0x0ce32a6e      ec03           mov.b @(r0,r14),r3
            0x0ce32a70      3c63           extu.b r3,r3
            0x0ce32a72      3362           mov r3,r2
            0x0ce32a74      0043           shll r3
            0x0ce32a76      2c33           add r2,r3
            0x0ce32a78      0843           shll2 r3
            0x0ce32a7a      4c33           add r4,r3
            0x0ce32a7c      3151           mov.l @(0x4,r3),r1
            0x0ce32a7e      60e0           mov 0x60,r0
            0x0ce32a80      5a41           lds r1,fpul
            0x0ce32a82      2df3           float fpul,fr3
            0x0ce32a84      52f3           fmul fr5,fr3
            0x0ce32a86      43f3           fdiv fr4,fr3
            0x0ce32a88      37fe           fmov fr3,@(r0,r14)
            0x0ce32a8a      2290           mov.w @(0x44,PC),r0
            0x0ce32a8c      ec03           mov.b @(r0,r14),r3
            0x0ce32a8e      6ce0           mov 0x6C,r0
            ; CODE XREF from fcn.0ce334c0 (+0x78)
            0x0ce32a90      3c63           extu.b r3,r3
            0x0ce32a92      3362           mov r3,r2
            0x0ce32a94      0043           shll r3
            0x0ce32a96      2c33           add r2,r3
            0x0ce32a98      0843           shll2 r3
            0x0ce32a9a      3c34           add r3,r4
            0x0ce32a9c      4253           mov.l @(0x8,r4),r3
            0x0ce32a9e      5a43           lds r3,fpul
            0x0ce32aa0      2df3           float fpul,fr3
            0x0ce32aa2      52f3           fmul fr5,fr3
            0x0ce32aa4      43f3           fdiv fr4,fr3
            0x0ce32aa6      37fe           fmov fr3,@(r0,r14)
            0x0ce32aa8      34e0           mov 0x34,r0
            0x0ce32aaa      e6f1           fmov @(r0,r14),fr1
            0x0ce32aac      8df3           fldi0 fr3
            0x0ce32aae      15f3           fcmp/gt fr1,fr3
            0x0ce32ab0      048d           bt.s 0x0ce32abc
            0x0ce32ab2      0ce6           mov 0x0C,r6
            0x0ce32ab4      5ce0           mov 0x5C,r0
            0x0ce32ab6      e6f1           fmov @(r0,r14),fr1
            0x0ce32ab8      4df1           fneg fr1
            0x0ce32aba      17fe           fmov fr1,@(r0,r14)
            ; CODE XREF from aav.0x0ce32a0c (+0xa4)
            0x0ce32abc      264f           lds.l @r15+,pr
            0x0ce32abe      06d3           mov.l @(0x18,PC),r3
            0x0ce32ac0      0fe5           mov 0x0F,r5
            0x0ce32ac2      e364           mov r14,r4
            0x0ce32ac4      2b43           jmp @r3
            0x0ce32ac6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32a0c (+0x26)
            0x0ce32ac8      264f           lds.l @r15+,pr
            0x0ce32aca      0b00           rts 
            0x0ce32acc      f66e           mov.l @r15+,r14
            0x0ce32ace      a402           mov.b r10,@(r0,r2)
            0x0ce32ad0      ea01           .word 0x01EA
            0x0ce32ad2      a301           ocbp @r1
            0x0ce32ad4      ee4d           ldc r13,r6_bank
            0x0ce32ad6      038c           .word 0x8C03
            0x0ce32ad8      8c4e           shad r8,r14
            0x0ce32ada      038c           .word 0x8C03
            0x0ce32adc      .dword 0x0ce36ef0 ; aav.0x0ce36ef0
            0x0ce32ae0      0000           .word 0x0000
            0x0ce32ae2      8047           .word 0x4780
            0x0ce32ae4      5555           mov.l @(0x14,r5),r5
            0x0ce32ae6      d53f           dmulu.l r13,r15
            0x0ce32ae8      9224           mov.l r9,@r4
            0x0ce32aea      0940           shlr2 r0
            ;-- aav.0x0ce32aec:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ed8)
            0x0ce32aec      e62f           mov.l r14,@-r15
            0x0ce32aee      436e           mov r4,r14
            0x0ce32af0      d62f           mov.l r13,@-r15
            0x0ce32af2      02e4           mov 0x02,r4
            0x0ce32af4      7990           mov.w @(0xF2,PC),r0
            0x0ce32af6      03e3           mov 0x03,r3
            0x0ce32af8      c62f           mov.l r12,@-r15
            0x0ce32afa      01ec           mov 0x01,r12
            0x0ce32afc      5ce1           mov 0x5C,r1
            0x0ce32afe      739d           mov.w @(0xE6,PC),r13
            0x0ce32b00      ec31           add r14,r1
            0x0ce32b02      224f           sts.l pr,@-r15
            0x0ce32b04      c40e           mov.b r12,@(r0,r14)
            0x0ce32b06      0370           add 0x03,r0
            0x0ce32b08      440e           mov.b r4,@(r0,r14)
            0x0ce32b0a      0870           add 0x08,r0
            0x0ce32b0c      440e           mov.b r4,@(r0,r14)
            0x0ce32b0e      fd70           add 0xFD,r0
            0x0ce32b10      340e           mov.b r3,@(r0,r14)
            0x0ce32b12      34e0           mov 0x34,r0
            0x0ce32b14      e6f2           fmov @(r0,r14),fr2
            0x0ce32b16      ec3d           add r14,r13
            0x0ce32b18      18f3           fmov @r1,fr3
            0x0ce32b1a      68e1           mov 0x68,r1
            0x0ce32b1c      ec31           add r14,r1
            0x0ce32b1e      30f2           fadd fr3,fr2
            0x0ce32b20      27fe           fmov fr2,@(r0,r14)
            0x0ce32b22      5ce0           mov 0x5C,r0
            0x0ce32b24      18f3           fmov @r1,fr3
            0x0ce32b26      e6f2           fmov @(r0,r14),fr2
            0x0ce32b28      30f2           fadd fr3,fr2
            0x0ce32b2a      27fe           fmov fr2,@(r0,r14)
            0x0ce32b2c      60e1           mov 0x60,r1
            0x0ce32b2e      31d3           mov.l @(0xC4,PC),r3
            0x0ce32b30      ec31           add r14,r1
            0x0ce32b32      38e0           mov 0x38,r0
            0x0ce32b34      18f3           fmov @r1,fr3
            0x0ce32b36      e6f2           fmov @(r0,r14),fr2
            0x0ce32b38      6ce1           mov 0x6C,r1
            0x0ce32b3a      ec31           add r14,r1
            0x0ce32b3c      30f2           fadd fr3,fr2
            0x0ce32b3e      27fe           fmov fr2,@(r0,r14)
            0x0ce32b40      60e0           mov 0x60,r0
            0x0ce32b42      e6f2           fmov @(r0,r14),fr2
            0x0ce32b44      18f3           fmov @r1,fr3
            0x0ce32b46      30f2           fadd fr3,fr2
            0x0ce32b48      27fe           fmov fr2,@(r0,r14)
            0x0ce32b4a      0b43           jsr @r3
            0x0ce32b4c      e364           mov r14,r4
            0x0ce32b4e      2ad2           mov.l @(0xA8,PC),r2
            0x0ce32b50      0b42           jsr @r2
            0x0ce32b52      e364           mov r14,r4
            0x0ce32b54      0820           tst r0,r0
            0x0ce32b56      1e89           bt 0x0ce32b96
            0x0ce32b58      4890           mov.w @(0x90,PC),r0
            0x0ce32b5a      ec02           mov.b @(r0,r14),r2
            0x0ce32b5c      2822           tst r2,r2
            0x0ce32b5e      0e89           bt 0x0ce32b7e
            0x0ce32b60      4590           mov.w @(0x8A,PC),r0
            0x0ce32b62      ec03           mov.b @(r0,r14),r3
            0x0ce32b64      3823           tst r3,r3
            0x0ce32b66      0c89           bt 0x0ce32b82
            0x0ce32b68      00e3           mov 0x00,r3
            0x0ce32b6a      340e           mov.b r3,@(r0,r14)
            0x0ce32b6c      0170           add 0x01,r0
            0x0ce32b6e      ec00           mov.b @(r0,r14),r0
            0x0ce32b70      0188           cmp/eq 0x01,r0
            0x0ce32b72      0689           bt 0x0ce32b82
            0x0ce32b74      3c90           mov.w @(0x78,PC),r0
            0x0ce32b76      ec02           mov.b @(r0,r14),r2
            0x0ce32b78      ff72           add 0xFF,r2
            0x0ce32b7a      02a0           bra 0x0ce32b82
            0x0ce32b7c      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce32aec (+0x72)
            0x0ce32b7e      3790           mov.w @(0x6E,PC),r0
            0x0ce32b80      c40e           mov.b r12,@(r0,r14)
            ; CODE XREFS from aav.0x0ce32aec (+0x7a, +0x86, +0x8e)
            0x0ce32b82      d284           mov.b @(0x2,r13),r0
            0x0ce32b84      14e4           mov 0x14,r4
            0x0ce32b86      0170           add 0x01,r0
            0x0ce32b88      d280           mov.b r0,@(0x2,r13)
            0x0ce32b8a      d284           mov.b @(0x2,r13),r0
            0x0ce32b8c      4730           cmp/gt r4,r0
            0x0ce32b8e      028b           bf 0x0ce32b96
            0x0ce32b90      4360           mov r4,r0
            0x0ce32b92      0900           nop 
            0x0ce32b94      d280           mov.b r0,@(0x2,r13)
            ; CODE XREFS from aav.0x0ce32aec (+0x6a, +0xa2)
            0x0ce32b96      19d3           mov.l @(0x64,PC),r3
            0x0ce32b98      0b43           jsr @r3
            0x0ce32b9a      e364           mov r14,r4
            0x0ce32b9c      0c60           extu.b r0,r0
            0x0ce32b9e      0820           tst r0,r0
            0x0ce32ba0      1d89           bt 0x0ce32bde
            0x0ce32ba2      e784           mov.b @(0x7,r14),r0
            0x0ce32ba4      8df4           fldi0 fr4
            0x0ce32ba6      0170           add 0x01,r0
            0x0ce32ba8      15d4           mov.l @(0x54,PC),r4
            0x0ce32baa      e780           mov.b r0,@(0x7,r14)
            0x0ce32bac      5ce0           mov 0x5C,r0
            0x0ce32bae      47fe           fmov fr4,@(r0,r14)
            0x0ce32bb0      60e0           mov 0x60,r0
            0x0ce32bb2      47fe           fmov fr4,@(r0,r14)
            0x0ce32bb4      68e0           mov 0x68,r0
            0x0ce32bb6      47fe           fmov fr4,@(r0,r14)
            0x0ce32bb8      6ce0           mov 0x6C,r0
            0x0ce32bba      47fe           fmov fr4,@(r0,r14)
            0x0ce32bbc      03e0           mov 0x03,r0
            0x0ce32bbe      4580           mov.b r0,@(0x5,r4)
            0x0ce32bc0      c360           mov r12,r0
            0x0ce32bc2      0900           nop 
            0x0ce32bc4      0fd3           mov.l @(0x3C,PC),r3
            0x0ce32bc6      4680           mov.b r0,@(0x6,r4)
            0x0ce32bc8      0b43           jsr @r3
            0x0ce32bca      e364           mov r14,r4
/ (fcn) fcn.0ce32bcc 18
|   fcn.0ce32bcc ();
|           ; CALL XREF from aav.0x0ce32c8a (+0xe8)
|           0x0ce32bcc      264f           lds.l @r15+,pr
|           0x0ce32bce      0ed2           mov.l @(0x38,PC),r2
|           0x0ce32bd0      0fe5           mov 0x0F,r5
|           0x0ce32bd2      e364           mov r14,r4
|           0x0ce32bd4      14e6           mov 0x14,r6
|           0x0ce32bd6      f66c           mov.l @r15+,r12
|           0x0ce32bd8      f66d           mov.l @r15+,r13
|           0x0ce32bda      2b42           jmp @r2
\           0x0ce32bdc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32aec (+0xb4)
            0x0ce32bde      264f           lds.l @r15+,pr
            0x0ce32be0      f66c           mov.l @r15+,r12
            0x0ce32be2      f66d           mov.l @r15+,r13
            0x0ce32be4      0b00           rts 
            0x0ce32be6      f66e           mov.l @r15+,r14
            0x0ce32be8      a402           mov.b r10,@(r0,r2)
            0x0ce32bea      ea01           .word 0x01EA
            0x0ce32bec      2505           mov.w r2,@(r0,r5)
            0x0ce32bee      4101           .word 0x0141
            0x0ce32bf0      4201           stc spc,r1
            0x0ce32bf2      0000           .word 0x0000
            0x0ce32bf4      ee4d           ldc r13,r6_bank
            0x0ce32bf6      038c           .word 0x8C03
            0x0ce32bf8      2e5d           mov.l @(0x38,r2),r13
            0x0ce32bfa      058c           .word 0x8C05
            0x0ce32bfc      e22c           mov.l r14,@r12
            0x0ce32bfe      058c           .word 0x8C05
            0x0ce32c00      18a5           bra 0x0ce33634
            0x0ce32c02      268c           .word 0x8C26
            0x0ce32c04      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce32c08      8c4e           shad r8,r14
            0x0ce32c0a      038c           .word 0x8C03
            ;-- aav.0x0ce32c0c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36edc)
            0x0ce32c0c      a390           mov.w @(0x146,PC),r0
/ (fcn) fcn.0ce32c0e 112
|   fcn.0ce32c0e (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce31e1e (+0x36)
|           0x0ce32c0e      01e3           mov 0x01,r3
|           0x0ce32c10      e62f           mov.l r14,@-r15
|           ;-- fcn.0ce32c12:
|           ; CALL XREF from aav.0x0ce31e1e (+0x3a)
|           0x0ce32c12      436e           mov r4,r14
|           0x0ce32c14      02e4           mov 0x02,r4
|           0x0ce32c16      224f           sts.l pr,@-r15
|           0x0ce32c18      340e           mov.b r3,@(r0,r14)
|           0x0ce32c1a      0370           add 0x03,r0
|           0x0ce32c1c      440e           mov.b r4,@(r0,r14)
|           0x0ce32c1e      0870           add 0x08,r0
|           0x0ce32c20      440e           mov.b r4,@(r0,r14)
|           0x0ce32c22      fd70           add 0xFD,r0
|           0x0ce32c24      03e3           mov 0x03,r3
|           0x0ce32c26      340e           mov.b r3,@(r0,r14)
|           0x0ce32c28      9690           mov.w @(0x12C,PC),r0
|           0x0ce32c2a      ec02           mov.b @(r0,r14),r2
|           0x0ce32c2c      2822           tst r2,r2
|           0x0ce32c2e      028d           bt.s 0x0ce32c36
|           0x0ce32c30      e364           mov r14,r4
            0x0ce32c32      00e2           mov 0x00,r2
            0x0ce32c34      240e           mov.b r2,@(r0,r14)
|           ; CODE XREF from fcn.0ce32c0e (0xce32c2e)
|           0x0ce32c36      4bd3           mov.l @(0x12C,PC),r3
|           0x0ce32c38      0b43           jsr @r3
|           0x0ce32c3a      0900           nop 
|           0x0ce32c3c      0e60           exts.b r0,r0
|           0x0ce32c3e      1140           cmp/pz r0
|           0x0ce32c40      2089           bt 0x0ce32c84
|           0x0ce32c42      e784           mov.b @(0x7,r14),r0
|           0x0ce32c44      0170           add 0x01,r0
|           0x0ce32c46      e780           mov.b r0,@(0x7,r14)
|           0x0ce32c48      47c7           mova @(0x11C,PC),r0
|           0x0ce32c4a      08f3           fmov @r0,fr3
|           0x0ce32c4c      5ce0           mov 0x5C,r0
|           0x0ce32c4e      37fe           fmov fr3,@(r0,r14)
|           0x0ce32c50      68e0           mov 0x68,r0
|           0x0ce32c52      8df3           fldi0 fr3
|           0x0ce32c54      37fe           fmov fr3,@(r0,r14)
|           0x0ce32c56      45c7           mova @(0x114,PC),r0
|           0x0ce32c58      08f3           fmov @r0,fr3
|           0x0ce32c5a      60e0           mov 0x60,r0
|           0x0ce32c5c      37fe           fmov fr3,@(r0,r14)
|           0x0ce32c5e      44c7           mova @(0x110,PC),r0
|           0x0ce32c60      08f3           fmov @r0,fr3
|           0x0ce32c62      6ce0           mov 0x6C,r0
|           0x0ce32c64      37fe           fmov fr3,@(r0,r14)
|           0x0ce32c66      7890           mov.w @(0xF0,PC),r0
|           0x0ce32c68      ec03           mov.b @(r0,r14),r3
|           0x0ce32c6a      3823           tst r3,r3
|           0x0ce32c6c      048d           bt.s 0x0ce32c78
|           0x0ce32c6e      0ee6           mov 0x0E,r6
            0x0ce32c70      5ce0           mov 0x5C,r0
            0x0ce32c72      e6f3           fmov @(r0,r14),fr3
            0x0ce32c74      4df3           fneg fr3
            0x0ce32c76      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce32c0e (0xce32c6c)
|           0x0ce32c78      264f           lds.l @r15+,pr
|           0x0ce32c7a      3ed3           mov.l @(0xF8,PC),r3
|           0x0ce32c7c      0fe5           mov 0x0F,r5
|           0x0ce32c7e      e364           mov r14,r4
|           0x0ce32c80      2b43           jmp @r3
|           0x0ce32c82      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce32c0e (0xce32c40)
|           0x0ce32c84      264f           lds.l @r15+,pr
|           0x0ce32c86      0b00           rts 
\           0x0ce32c88      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32c8a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ee0)
            0x0ce32c8a      e62f           mov.l r14,@-r15
            0x0ce32c8c      d62f           mov.l r13,@-r15
            0x0ce32c8e      224f           sts.l pr,@-r15
            0x0ce32c90      fc7f           add 0xFC,r15
            0x0ce32c92      6090           mov.w @(0xC0,PC),r0
            0x0ce32c94      01e2           mov 0x01,r2
            0x0ce32c96      436e           mov r4,r14
            0x0ce32c98      02ed           mov 0x02,r13
            0x0ce32c9a      5ce1           mov 0x5C,r1
            0x0ce32c9c      5e93           mov.w @(0xBC,PC),r3
            0x0ce32c9e      ec31           add r14,r1
            0x0ce32ca0      ec33           add r14,r3
            0x0ce32ca2      322f           mov.l r3,@r15
            0x0ce32ca4      240e           mov.b r2,@(r0,r14)
            0x0ce32ca6      0370           add 0x03,r0
            0x0ce32ca8      d40e           mov.b r13,@(r0,r14)
            0x0ce32caa      0870           add 0x08,r0
            0x0ce32cac      d40e           mov.b r13,@(r0,r14)
            0x0ce32cae      34e0           mov 0x34,r0
            0x0ce32cb0      e6f2           fmov @(r0,r14),fr2
            0x0ce32cb2      18f3           fmov @r1,fr3
            0x0ce32cb4      68e1           mov 0x68,r1
            0x0ce32cb6      ec31           add r14,r1
            0x0ce32cb8      30f2           fadd fr3,fr2
            0x0ce32cba      27fe           fmov fr2,@(r0,r14)
            0x0ce32cbc      5ce0           mov 0x5C,r0
            0x0ce32cbe      18f3           fmov @r1,fr3
            0x0ce32cc0      60e1           mov 0x60,r1
            0x0ce32cc2      e6f2           fmov @(r0,r14),fr2
            0x0ce32cc4      ec31           add r14,r1
            0x0ce32cc6      30f2           fadd fr3,fr2
            0x0ce32cc8      27fe           fmov fr2,@(r0,r14)
            0x0ce32cca      38e0           mov 0x38,r0
            0x0ce32ccc      18f3           fmov @r1,fr3
            0x0ce32cce      e6f2           fmov @(r0,r14),fr2
            0x0ce32cd0      30f2           fadd fr3,fr2
            0x0ce32cd2      6ce1           mov 0x6C,r1
            0x0ce32cd4      27fe           fmov fr2,@(r0,r14)
            0x0ce32cd6      ec31           add r14,r1
            0x0ce32cd8      22d3           mov.l @(0x88,PC),r3
            0x0ce32cda      60e0           mov 0x60,r0
            0x0ce32cdc      18f3           fmov @r1,fr3
            0x0ce32cde      e6f2           fmov @(r0,r14),fr2
            0x0ce32ce0      30f2           fadd fr3,fr2
            0x0ce32ce2      27fe           fmov fr2,@(r0,r14)
            0x0ce32ce4      0b43           jsr @r3
            0x0ce32ce6      e364           mov r14,r4
            0x0ce32ce8      0e60           exts.b r0,r0
            0x0ce32cea      1140           cmp/pz r0
            0x0ce32cec      0b89           bt 0x0ce32d06
            0x0ce32cee      e784           mov.b @(0x7,r14),r0
            0x0ce32cf0      0fe5           mov 0x0F,r5
            0x0ce32cf2      e364           mov r14,r4
            0x0ce32cf4      21e6           mov 0x21,r6
            0x0ce32cf6      0170           add 0x01,r0
            0x0ce32cf8      e780           mov.b r0,@(0x7,r14)
            0x0ce32cfa      047f           add 0x04,r15
            0x0ce32cfc      264f           lds.l @r15+,pr
            0x0ce32cfe      1dd3           mov.l @(0x74,PC),r3
            0x0ce32d00      f66d           mov.l @r15+,r13
            0x0ce32d02      2b43           jmp @r3
            0x0ce32d04      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32c8a (+0x62)
            0x0ce32d06      2790           mov.w @(0x4E,PC),r0
            0x0ce32d08      ec02           mov.b @(r0,r14),r2
            0x0ce32d0a      2822           tst r2,r2
            0x0ce32d0c      1e89           bt 0x0ce32d4c
            0x0ce32d0e      00e3           mov 0x00,r3
            0x0ce32d10      3365           mov r3,r5
            0x0ce32d12      3366           mov r3,r6
            0x0ce32d14      340e           mov.b r3,@(r0,r14)
            0x0ce32d16      18d3           mov.l @(0x60,PC),r3
            0x0ce32d18      0b43           jsr @r3
            0x0ce32d1a      e364           mov r14,r4
            0x0ce32d1c      1f90           mov.w @(0x3E,PC),r0
            0x0ce32d1e      1f91           mov.w @(0x3E,PC),r1
            0x0ce32d20      ee04           mov.l @(r0,r14),r4
            0x0ce32d22      2e70           add 0x2E,r0
            0x0ce32d24      ec31           add r14,r1
            0x0ce32d26      d404           mov.b r13,@(r0,r4)
            0x0ce32d28      ad70           add 0xAD,r0
            0x0ce32d2a      ec03           mov.b @(r0,r14),r3
            0x0ce32d2c      fe70           add 0xFE,r0
            0x0ce32d2e      3d73           add 0x3D,r3
            0x0ce32d30      3404           mov.b r3,@(r0,r4)
            0x0ce32d32      0270           add 0x02,r0
            0x0ce32d34      ec02           mov.b @(r0,r14),r2
            0x0ce32d36      fe70           add 0xFE,r0
            0x0ce32d38      3d72           add 0x3D,r2
            0x0ce32d3a      240e           mov.b r2,@(r0,r14)
            0x0ce32d3c      f263           mov.l @r15,r3
            0x0ce32d3e      3284           mov.b @(0x2,r3),r0
            0x0ce32d40      00e3           mov 0x00,r3
            0x0ce32d42      0733           cmp/gt r0,r3
            0x0ce32d44      3e30           addc r3,r0
            0x0ce32d46      2140           shar r0
            0x0ce32d48      2070           add 0x20,r0
            0x0ce32d4a      0021           mov.b r0,@r1
            ; CODE XREF from aav.0x0ce32c8a (+0x82)
            0x0ce32d4c      047f           add 0x04,r15
            0x0ce32d4e      264f           lds.l @r15+,pr
            0x0ce32d50      f66d           mov.l @r15+,r13
            0x0ce32d52      0b00           rts 
            0x0ce32d54      f66e           mov.l @r15+,r14
            0x0ce32d56      ea01           .word 0x01EA
            0x0ce32d58      4101           .word 0x0141
            0x0ce32d5a      d201           stc r5_bank,r1
            0x0ce32d5c      a402           mov.b r10,@(r0,r2)
            0x0ce32d5e      c801           .word 0x01C8
            0x0ce32d60      0502           mov.w r0,@(r0,r2)
            0x0ce32d62      0000           .word 0x0000
            0x0ce32d64      ee4d           ldc r13,r6_bank
            0x0ce32d66      038c           .word 0x8C03
            0x0ce32d68      5555           mov.l @(0x14,r5),r5
            0x0ce32d6a      8540           .word 0x4085
            0x0ce32d6c      9224           mov.l r9,@r4
            0x0ce32d6e      8941           .word 0x4189
            0x0ce32d70      b66d           mov.l @r11+,r13
            0x0ce32d72      2bbf           bsr fcn.0ce32bcc
            0x0ce32d74      8c4e           shad r8,r14
            0x0ce32d76      038c           .word 0x8C03
            0x0ce32d78      c4fe           fcmp/eq fr12,fr14
            0x0ce32d7a      028c           .word 0x8C02
            ;-- aav.0x0ce32d7c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ee4)
            0x0ce32d7c      a690           mov.w @(0x14C,PC),r0
            0x0ce32d7e      01e3           mov 0x01,r3
            0x0ce32d80      e62f           mov.l r14,@-r15
            0x0ce32d82      436e           mov r4,r14
            0x0ce32d84      02e4           mov 0x02,r4
            0x0ce32d86      5ce1           mov 0x5C,r1
            0x0ce32d88      ec31           add r14,r1
            0x0ce32d8a      224f           sts.l pr,@-r15
            0x0ce32d8c      340e           mov.b r3,@(r0,r14)
            0x0ce32d8e      0370           add 0x03,r0
            0x0ce32d90      440e           mov.b r4,@(r0,r14)
            0x0ce32d92      0870           add 0x08,r0
            0x0ce32d94      440e           mov.b r4,@(r0,r14)
            0x0ce32d96      34e0           mov 0x34,r0
            0x0ce32d98      e6f2           fmov @(r0,r14),fr2
            0x0ce32d9a      18f3           fmov @r1,fr3
            0x0ce32d9c      68e1           mov 0x68,r1
            0x0ce32d9e      ec31           add r14,r1
            0x0ce32da0      30f2           fadd fr3,fr2
            0x0ce32da2      27fe           fmov fr2,@(r0,r14)
            0x0ce32da4      5ce0           mov 0x5C,r0
            0x0ce32da6      18f3           fmov @r1,fr3
            0x0ce32da8      60e1           mov 0x60,r1
            0x0ce32daa      e6f2           fmov @(r0,r14),fr2
            0x0ce32dac      ec31           add r14,r1
            0x0ce32dae      30f2           fadd fr3,fr2
            0x0ce32db0      27fe           fmov fr2,@(r0,r14)
            0x0ce32db2      38e0           mov 0x38,r0
            0x0ce32db4      e6f2           fmov @(r0,r14),fr2
            0x0ce32db6      18f3           fmov @r1,fr3
            0x0ce32db8      30f2           fadd fr3,fr2
            0x0ce32dba      27fe           fmov fr2,@(r0,r14)
            0x0ce32dbc      6ce1           mov 0x6C,r1
            0x0ce32dbe      45d3           mov.l @(0x114,PC),r3
            0x0ce32dc0      ec31           add r14,r1
            0x0ce32dc2      60e0           mov 0x60,r0
            0x0ce32dc4      18f3           fmov @r1,fr3
            0x0ce32dc6      e6f2           fmov @(r0,r14),fr2
            0x0ce32dc8      30f2           fadd fr3,fr2
            0x0ce32dca      27fe           fmov fr2,@(r0,r14)
            0x0ce32dcc      0b43           jsr @r3
            0x0ce32dce      e364           mov r14,r4
            0x0ce32dd0      0c60           extu.b r0,r0
            0x0ce32dd2      0820           tst r0,r0
            0x0ce32dd4      0c89           bt 0x0ce32df0
            0x0ce32dd6      40d3           mov.l @(0x100,PC),r3
            0x0ce32dd8      0b43           jsr @r3
            0x0ce32dda      e364           mov r14,r4
            0x0ce32ddc      e784           mov.b @(0x7,r14),r0
            0x0ce32dde      e364           mov r14,r4
            0x0ce32de0      3ed3           mov.l @(0xF8,PC),r3
            0x0ce32de2      22e6           mov 0x22,r6
            0x0ce32de4      0170           add 0x01,r0
            0x0ce32de6      e780           mov.b r0,@(0x7,r14)
            0x0ce32de8      0fe5           mov 0x0F,r5
            0x0ce32dea      264f           lds.l @r15+,pr
            0x0ce32dec      2b43           jmp @r3
            0x0ce32dee      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32d7c (+0x58)
            0x0ce32df0      264f           lds.l @r15+,pr
            0x0ce32df2      0b00           rts 
            0x0ce32df4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32df6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ee8)
            0x0ce32df6      e62f           mov.l r14,@-r15
            0x0ce32df8      224f           sts.l pr,@-r15
            0x0ce32dfa      39d3           mov.l @(0xE4,PC),r3
            0x0ce32dfc      0b43           jsr @r3
            0x0ce32dfe      436e           mov r4,r14
            0x0ce32e00      0e60           exts.b r0,r0
            0x0ce32e02      1140           cmp/pz r0
            0x0ce32e04      0789           bt 0x0ce32e16
            0x0ce32e06      6290           mov.w @(0xC4,PC),r0
            0x0ce32e08      00e3           mov 0x00,r3
            0x0ce32e0a      e364           mov r14,r4
            0x0ce32e0c      340e           mov.b r3,@(r0,r14)
            0x0ce32e0e      264f           lds.l @r15+,pr
            0x0ce32e10      34d3           mov.l @(0xD0,PC),r3
            0x0ce32e12      2b43           jmp @r3
            0x0ce32e14      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32df6 (+0xe)
            0x0ce32e16      264f           lds.l @r15+,pr
            0x0ce32e18      0b00           rts 
            0x0ce32e1a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32e1c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36eec)
            0x0ce32e1c      e62f           mov.l r14,@-r15
            0x0ce32e1e      5ce1           mov 0x5C,r1
            0x0ce32e20      436e           mov r4,r14
            0x0ce32e22      ec31           add r14,r1
            0x0ce32e24      34e0           mov 0x34,r0
            0x0ce32e26      2ed3           mov.l @(0xB8,PC),r3
            0x0ce32e28      224f           sts.l pr,@-r15
            0x0ce32e2a      e6f2           fmov @(r0,r14),fr2
            0x0ce32e2c      18f3           fmov @r1,fr3
            0x0ce32e2e      68e1           mov 0x68,r1
            0x0ce32e30      ec31           add r14,r1
            0x0ce32e32      30f2           fadd fr3,fr2
            0x0ce32e34      27fe           fmov fr2,@(r0,r14)
            0x0ce32e36      5ce0           mov 0x5C,r0
            0x0ce32e38      18f3           fmov @r1,fr3
            0x0ce32e3a      60e1           mov 0x60,r1
            0x0ce32e3c      e6f2           fmov @(r0,r14),fr2
            0x0ce32e3e      ec31           add r14,r1
            0x0ce32e40      30f2           fadd fr3,fr2
            0x0ce32e42      27fe           fmov fr2,@(r0,r14)
            0x0ce32e44      38e0           mov 0x38,r0
            0x0ce32e46      e6f2           fmov @(r0,r14),fr2
            0x0ce32e48      18f3           fmov @r1,fr3
            0x0ce32e4a      6ce1           mov 0x6C,r1
            0x0ce32e4c      ec31           add r14,r1
            0x0ce32e4e      30f2           fadd fr3,fr2
            0x0ce32e50      27fe           fmov fr2,@(r0,r14)
            0x0ce32e52      60e0           mov 0x60,r0
            0x0ce32e54      e6f2           fmov @(r0,r14),fr2
            0x0ce32e56      18f3           fmov @r1,fr3
            0x0ce32e58      30f2           fadd fr3,fr2
            0x0ce32e5a      27fe           fmov fr2,@(r0,r14)
            0x0ce32e5c      0b43           jsr @r3
            0x0ce32e5e      e364           mov r14,r4
            0x0ce32e60      0e60           exts.b r0,r0
            0x0ce32e62      1140           cmp/pz r0
            ; CODE XREF from aav.0x0ce338d8 (+0x34)
            0x0ce32e64      0789           bt 0x0ce32e76
            0x0ce32e66      3290           mov.w @(0x64,PC),r0
            0x0ce32e68      00e3           mov 0x00,r3
            0x0ce32e6a      e364           mov r14,r4
            0x0ce32e6c      340e           mov.b r3,@(r0,r14)
            0x0ce32e6e      264f           lds.l @r15+,pr
            0x0ce32e70      1dd3           mov.l @(0x74,PC),r3
            0x0ce32e72      2b43           jmp @r3
            0x0ce32e74      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32e1c (+0x48)
            0x0ce32e76      2b90           mov.w @(0x56,PC),r0
            0x0ce32e78      e6f3           fmov @(r0,r14),fr3
            0x0ce32e7a      38e0           mov 0x38,r0
            0x0ce32e7c      e6f2           fmov @(r0,r14),fr2
            0x0ce32e7e      25f3           fcmp/gt fr2,fr3
            0x0ce32e80      038b           bf 0x0ce32e8a
            0x0ce32e82      2590           mov.w @(0x4A,PC),r0
            0x0ce32e84      e6f3           fmov @(r0,r14),fr3
            0x0ce32e86      38e0           mov 0x38,r0
            0x0ce32e88      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce32e1c (+0x64)
            0x0ce32e8a      264f           lds.l @r15+,pr
            0x0ce32e8c      0b00           rts 
            0x0ce32e8e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32e90:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36df8)
            0x0ce32e90      4363           mov r4,r3
            0x0ce32e92      16d1           mov.l @(0x58,PC),r1
            0x0ce32e94      462f           mov.l r4,@-r15
            0x0ce32e96      3684           mov.b @(0x6,r3),r0
            0x0ce32e98      0c60           extu.b r0,r0
            0x0ce32e9a      0840           shll2 r0
            0x0ce32e9c      1e03           mov.l @(r0,r1),r3
            0x0ce32e9e      2b43           jmp @r3
            0x0ce32ea0      047f           add 0x04,r15
            ;-- aav.0x0ce32ea2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f08)
            0x0ce32ea2      e62f           mov.l r14,@-r15
            0x0ce32ea4      436e           mov r4,r14
/ (fcn) fcn.0ce32ea6 58
|   fcn.0ce32ea6 (int arg_6h);
|           ; arg int arg_6h @ r14+0x6
|           ; CALL XREF from aav.0x0ce3200c (+0xe0)
|           0x0ce32ea6      224f           sts.l pr,@-r15
|           0x0ce32ea8      e684           mov.b @(0x6,r14),r0
|           ;-- fcn.0ce32eaa:
|           ; CALL XREF from aav.0x0ce3200c (+0xe4)
|           0x0ce32eaa      11d3           mov.l @(0x44,PC),r3
|           0x0ce32eac      0170           add 0x01,r0
|           0x0ce32eae      e680           mov.b r0,@(0x6,r14)
|           0x0ce32eb0      0b43           jsr @r3
|           0x0ce32eb2      e364           mov r14,r4
|           0x0ce32eb4      0fd2           mov.l @(0x3C,PC),r2
|           0x0ce32eb6      0ae5           mov 0x0A,r5
|           0x0ce32eb8      0b42           jsr @r2
|           0x0ce32eba      e364           mov r14,r4
|           0x0ce32ebc      0990           mov.w @(0x12,PC),r0
|           0x0ce32ebe      ec00           mov.b @(r0,r14),r0
|           0x0ce32ec0      0c60           extu.b r0,r0
|           0x0ce32ec2      0888           cmp/eq 0x08,r0
|           0x0ce32ec4      188f           bf.s 0x0ce32ef8
|           0x0ce32ec6      0fe5           mov 0x0F,r5
            0x0ce32ec8      17a0           bra 0x0ce32efa              ; fcn.0ce32ea6+0x54
            0x0ce32eca      3de6           mov 0x3D,r6
            0x0ce32ecc      ea01           .word 0x01EA
            0x0ce32ece      0502           mov.w r0,@(r0,r2)
            0x0ce32ed0      1c04           mov.b @(r0,r1),r4
            0x0ce32ed2      5502           mov.w r5,@(r0,r2)
            0x0ce32ed4      e22c           mov.l r14,@r12
            0x0ce32ed6      058c           .word 0x8C05
            0x0ce32ed8      b411           mov.l r11,@(0x10,r1)
            0x0ce32eda      058c           .word 0x8C05
            0x0ce32edc      8c4e           shad r8,r14
            0x0ce32ede      038c           .word 0x8C03
            0x0ce32ee0      ee4d           ldc r13,r6_bank
            0x0ce32ee2      038c           .word 0x8C03
            0x0ce32ee4      4816           mov.l r4,@(0x20,r6)
            0x0ce32ee6      058c           .word 0x8C05
            0x0ce32ee8      6e17           mov.l r6,@(0x38,r7)
            0x0ce32eea      058c           .word 0x8C05
            0x0ce32eec      .dword 0x0ce36f08 ; aav.0x0ce36f08
            0x0ce32ef0      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce32ef4      e46d           mov.b @r14+,r13
            0x0ce32ef6      058c           .word 0x8C05
|           ; CODE XREF from fcn.0ce32ea6 (0xce32ec4)
|           0x0ce32ef8      16e6           mov 0x16,r6
|           ; CODE XREF from fcn.0ce32eaa (+0x1e)
|           0x0ce32efa      47d2           mov.l @(0x11C,PC),r2
|           0x0ce32efc      0b42           jsr @r2
|           0x0ce32efe      e364           mov r14,r4
|           0x0ce32f00      264f           lds.l @r15+,pr
|           0x0ce32f02      46d3           mov.l @(0x118,PC),r3
|           0x0ce32f04      e364           mov r14,r4
|           0x0ce32f06      3ce7           mov 0x3C,r7
|           0x0ce32f08      1ee6           mov 0x1E,r6
|           0x0ce32f0a      0ae5           mov 0x0A,r5
|           0x0ce32f0c      2b43           jmp @r3
\           0x0ce32f0e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32f10:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f0c)
            0x0ce32f10      e62f           mov.l r14,@-r15
            0x0ce32f12      224f           sts.l pr,@-r15
            0x0ce32f14      f07f           add 0xF0,r15
            0x0ce32f16      7690           mov.w @(0xEC,PC),r0
            0x0ce32f18      436e           mov r4,r14
            0x0ce32f1a      7592           mov.w @(0xEA,PC),r2
            0x0ce32f1c      02e3           mov 0x02,r3
            0x0ce32f1e      350e           mov.w r3,@(r0,r14)
            0x0ce32f20      ec32           add r14,r2
            0x0ce32f22      2184           mov.b @(0x1,r2),r0
            0x0ce32f24      0820           tst r0,r0
            0x0ce32f26      2e89           bt 0x0ce32f86
            0x0ce32f28      3dd3           mov.l @(0xF4,PC),r3
            0x0ce32f2a      0b43           jsr @r3
            0x0ce32f2c      e364           mov r14,r4
            0x0ce32f2e      3dd2           mov.l @(0xF4,PC),r2
            0x0ce32f30      0b42           jsr @r2
            0x0ce32f32      e364           mov r14,r4
            0x0ce32f34      0820           tst r0,r0
            0x0ce32f36      628d           bt.s 0x0ce32ffe
            0x0ce32f38      022f           mov.l r0,@r15
            0x0ce32f3a      04e0           mov 0x04,r0
            0x0ce32f3c      f365           mov r15,r5
            0x0ce32f3e      e680           mov.b r0,@(0x6,r14)
            0x0ce32f40      00e0           mov 0x00,r0
            0x0ce32f42      e780           mov.b r0,@(0x7,r14)
            0x0ce32f44      38c7           mova @(0xE0,PC),r0
            0x0ce32f46      08f3           fmov @r0,fr3
            0x0ce32f48      04e0           mov 0x04,r0
            0x0ce32f4a      39d3           mov.l @(0xE4,PC),r3
            0x0ce32f4c      0475           add 0x04,r5
            0x0ce32f4e      37ff           fmov fr3,@(r0,r15)
            0x0ce32f50      36c7           mova @(0xD8,PC),r0
            0x0ce32f52      08f3           fmov @r0,fr3
            0x0ce32f54      08e0           mov 0x08,r0
            0x0ce32f56      37ff           fmov fr3,@(r0,r15)
            0x0ce32f58      0b43           jsr @r3
            0x0ce32f5a      e364           mov r14,r4
            0x0ce32f5c      35d2           mov.l @(0xD4,PC),r2
            0x0ce32f5e      05e6           mov 0x05,r6
            0x0ce32f60      6365           mov r6,r5
            0x0ce32f62      0b42           jsr @r2
            0x0ce32f64      e364           mov r14,r4
            0x0ce32f66      5190           mov.w @(0xA2,PC),r0
            0x0ce32f68      0fe5           mov 0x0F,r5
            0x0ce32f6a      4e93           mov.w @(0x9C,PC),r3
            0x0ce32f6c      18e6           mov 0x18,r6
            0x0ce32f6e      340e           mov.b r3,@(r0,r14)
            0x0ce32f70      29d3           mov.l @(0xA4,PC),r3
            0x0ce32f72      0b43           jsr @r3
            0x0ce32f74      e364           mov r14,r4
            0x0ce32f76      30d3           mov.l @(0xC0,PC),r3
            0x0ce32f78      f265           mov.l @r15,r5
            0x0ce32f7a      0b43           jsr @r3
            0x0ce32f7c      e364           mov r14,r4
            0x0ce32f7e      107f           add 0x10,r15
            0x0ce32f80      264f           lds.l @r15+,pr
            0x0ce32f82      0b00           rts 
            0x0ce32f84      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32f10 (+0x16)
            0x0ce32f86      e684           mov.b @(0x6,r14),r0
            0x0ce32f88      2cd4           mov.l @(0xB0,PC),r4
            0x0ce32f8a      0170           add 0x01,r0
            0x0ce32f8c      e680           mov.b r0,@(0x6,r14)
            0x0ce32f8e      2cc7           mova @(0xB0,PC),r0
            0x0ce32f90      08f4           fmov @r0,fr4
            0x0ce32f92      3c90           mov.w @(0x78,PC),r0
            0x0ce32f94      ec03           mov.b @(r0,r14),r3
            0x0ce32f96      3823           tst r3,r3
            0x0ce32f98      188b           bf 0x0ce32fcc
            0x0ce32f9a      3990           mov.w @(0x72,PC),r0
            0x0ce32f9c      ec00           mov.b @(r0,r14),r0
            0x0ce32f9e      0c60           extu.b r0,r0
            0x0ce32fa0      0888           cmp/eq 0x08,r0
            0x0ce32fa2      078b           bf 0x0ce32fb4
            0x0ce32fa4      27c7           mova @(0x9C,PC),r0
            0x0ce32fa6      08f3           fmov @r0,fr3
            0x0ce32fa8      5ce0           mov 0x5C,r0
            0x0ce32faa      37fe           fmov fr3,@(r0,r14)
            0x0ce32fac      68e0           mov 0x68,r0
            0x0ce32fae      8df3           fldi0 fr3
            0x0ce32fb0      06a0           bra 0x0ce32fc0
            0x0ce32fb2      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce32f10 (+0x92)
            0x0ce32fb4      24c7           mova @(0x90,PC),r0
            0x0ce32fb6      08f3           fmov @r0,fr3
            0x0ce32fb8      5ce0           mov 0x5C,r0
            0x0ce32fba      37fe           fmov fr3,@(r0,r14)
            0x0ce32fbc      68e0           mov 0x68,r0
            0x0ce32fbe      47fe           fmov fr4,@(r0,r14)
            ; CODE XREF from aav.0x0ce32f10 (+0xa0)
            0x0ce32fc0      2790           mov.w @(0x4E,PC),r0
            0x0ce32fc2      ec00           mov.b @(r0,r14),r0
            0x0ce32fc4      0c60           extu.b r0,r0
            0x0ce32fc6      0040           shll r0
            0x0ce32fc8      0ca0           bra 0x0ce32fe4
            0x0ce32fca      4d00           mov.w @(r0,r4),r0
            ; CODE XREF from aav.0x0ce32f10 (+0x88)
            0x0ce32fcc      1fc7           mova @(0x7C,PC),r0
            0x0ce32fce      08f3           fmov @r0,fr3
            0x0ce32fd0      5ce0           mov 0x5C,r0
            0x0ce32fd2      37fe           fmov fr3,@(r0,r14)
            0x0ce32fd4      68e0           mov 0x68,r0
            0x0ce32fd6      47fe           fmov fr4,@(r0,r14)
            0x0ce32fd8      1b90           mov.w @(0x36,PC),r0
            0x0ce32fda      ec00           mov.b @(r0,r14),r0
            0x0ce32fdc      0c60           extu.b r0,r0
            0x0ce32fde      0040           shll r0
            0x0ce32fe0      4c30           add r4,r0
            0x0ce32fe2      0285           mov.w @(0x4,r0),r0
            ; CODE XREF from aav.0x0ce32f10 (+0xb8)
            0x0ce32fe4      ee81           mov.w r0,@(0x1C,r14)
            0x0ce32fe6      1590           mov.w @(0x2A,PC),r0
            0x0ce32fe8      ec03           mov.b @(r0,r14),r3
            0x0ce32fea      3823           tst r3,r3
            0x0ce32fec      078b           bf 0x0ce32ffe
            0x0ce32fee      5ce0           mov 0x5C,r0
            0x0ce32ff0      e6f3           fmov @(r0,r14),fr3
            0x0ce32ff2      4df3           fneg fr3
            0x0ce32ff4      37fe           fmov fr3,@(r0,r14)
            0x0ce32ff6      68e0           mov 0x68,r0
            0x0ce32ff8      e6f3           fmov @(r0,r14),fr3
            0x0ce32ffa      4df3           fneg fr3
            0x0ce32ffc      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce32f10 (+0x26, +0xdc)
            0x0ce32ffe      107f           add 0x10,r15
            0x0ce33000      264f           lds.l @r15+,pr
            0x0ce33002      0b00           rts 
            0x0ce33004      f66e           mov.l @r15+,r14
            0x0ce33006      e403           mov.b r14,@(r0,r3)
            0x0ce33008      5001           .word 0x0150
            0x0ce3300a      c500           mov.w r12,@(r0,r0)
            0x0ce3300c      f701           mul.l r15,r1
            0x0ce3300e      0202           stc sr,r2
            0x0ce33010      5502           mov.w r5,@(r0,r2)
            0x0ce33012      a301           ocbp @r1
            0x0ce33014      d201           stc r5_bank,r1
            0x0ce33016      0000           .word 0x0000
            0x0ce33018      8c4e           shad r8,r14
            0x0ce3301a      038c           .word 0x8C03
            0x0ce3301c      449a           mov.w @(0x88,PC),r10
            0x0ce3301e      058c           .word 0x8C05
            0x0ce33020      ee4d           ldc r13,r6_bank
            0x0ce33022      038c           .word 0x8C03
            0x0ce33024      9057           mov.l @(0x0,r9),r7
            0x0ce33026      048c           .word 0x8C04
            0x0ce33028      aaaa           bra 0x0ce32580              ; fcn.0ce32528+0x58
            0x0ce3302a      12c3           trapa 0x12
            0x0ce3302c      b66d           mov.l @r11+,r13
            0x0ce3302e      2b43           jmp @r3
            0x0ce33030      6036           cmp/eq r6,r6
            0x0ce33032      108c           .word 0x8C10
            0x0ce33034      c4fe           fcmp/eq fr12,fr14
            0x0ce33036      028c           .word 0x8C02
            0x0ce33038      d823           tst r13,r3
            0x0ce3303a      058c           .word 0x8C05
            0x0ce3303c      .dword 0x0ce36f20 ; aav.0x0ce36f20
            0x0ce33040      5555           mov.l @(0x14,r5),r5
            0x0ce33042      553c           dmulu.l r5,r12
            0x0ce33044      0000           .word 0x0000
            0x0ce33046      a040           .word 0x40A0
            0x0ce33048      aaaa           bra 0x0ce325a0
            0x0ce3304a      ba40           .word 0x40BA
            0x0ce3304c      5555           mov.l @(0x14,r5),r5
            0x0ce3304e      5540           .word 0x4055
            ;-- aav.0x0ce33050:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f10)
            0x0ce33050      e62f           mov.l r14,@-r15
            0x0ce33052      224f           sts.l pr,@-r15
            0x0ce33054      f07f           add 0xF0,r15
            0x0ce33056      7c90           mov.w @(0xF8,PC),r0
            0x0ce33058      436e           mov r4,r14
            0x0ce3305a      02e3           mov 0x02,r3
            0x0ce3305c      350e           mov.w r3,@(r0,r14)
            0x0ce3305e      3fd3           mov.l @(0xFC,PC),r3
            0x0ce33060      0b43           jsr @r3
            0x0ce33062      e364           mov r14,r4
            0x0ce33064      5ce1           mov 0x5C,r1
            0x0ce33066      3ed3           mov.l @(0xF8,PC),r3
            0x0ce33068      ec31           add r14,r1
            0x0ce3306a      34e0           mov 0x34,r0
            0x0ce3306c      18f3           fmov @r1,fr3
            0x0ce3306e      e6f2           fmov @(r0,r14),fr2
            0x0ce33070      68e1           mov 0x68,r1
            0x0ce33072      ec31           add r14,r1
            0x0ce33074      30f2           fadd fr3,fr2
            0x0ce33076      27fe           fmov fr2,@(r0,r14)
            0x0ce33078      5ce0           mov 0x5C,r0
            0x0ce3307a      e6f2           fmov @(r0,r14),fr2
            0x0ce3307c      18f3           fmov @r1,fr3
            0x0ce3307e      30f2           fadd fr3,fr2
            0x0ce33080      27fe           fmov fr2,@(r0,r14)
            0x0ce33082      0b43           jsr @r3
            0x0ce33084      e364           mov r14,r4
            0x0ce33086      37d2           mov.l @(0xDC,PC),r2
            0x0ce33088      0b42           jsr @r2
            0x0ce3308a      e364           mov r14,r4
            0x0ce3308c      0820           tst r0,r0
            0x0ce3308e      268d           bt.s 0x0ce330de
            0x0ce33090      022f           mov.l r0,@r15
            0x0ce33092      05e0           mov 0x05,r0
            0x0ce33094      f365           mov r15,r5
            0x0ce33096      e680           mov.b r0,@(0x6,r14)
            0x0ce33098      00e0           mov 0x00,r0
            0x0ce3309a      e780           mov.b r0,@(0x7,r14)
            0x0ce3309c      32c7           mova @(0xC8,PC),r0
            0x0ce3309e      08f3           fmov @r0,fr3
            0x0ce330a0      04e0           mov 0x04,r0
            0x0ce330a2      33d3           mov.l @(0xCC,PC),r3
            0x0ce330a4      0475           add 0x04,r5
            0x0ce330a6      37ff           fmov fr3,@(r0,r15)
            0x0ce330a8      30c7           mova @(0xC0,PC),r0
            0x0ce330aa      08f3           fmov @r0,fr3
            0x0ce330ac      08e0           mov 0x08,r0
            0x0ce330ae      37ff           fmov fr3,@(r0,r15)
            0x0ce330b0      0b43           jsr @r3
            0x0ce330b2      e364           mov r14,r4
            0x0ce330b4      2fd2           mov.l @(0xBC,PC),r2
            0x0ce330b6      05e6           mov 0x05,r6
            0x0ce330b8      6365           mov r6,r5
            0x0ce330ba      0b42           jsr @r2
            0x0ce330bc      e364           mov r14,r4
            0x0ce330be      4a90           mov.w @(0x94,PC),r0
            0x0ce330c0      0fe5           mov 0x0F,r5
            0x0ce330c2      4793           mov.w @(0x8E,PC),r3
            0x0ce330c4      1de6           mov 0x1D,r6
            0x0ce330c6      340e           mov.b r3,@(r0,r14)
            0x0ce330c8      2bd3           mov.l @(0xAC,PC),r3
            0x0ce330ca      0b43           jsr @r3
            0x0ce330cc      e364           mov r14,r4
            0x0ce330ce      2bd3           mov.l @(0xAC,PC),r3
            0x0ce330d0      f265           mov.l @r15,r5
            0x0ce330d2      0b43           jsr @r3
            0x0ce330d4      e364           mov r14,r4
            0x0ce330d6      107f           add 0x10,r15
            0x0ce330d8      264f           lds.l @r15+,pr
            0x0ce330da      0b00           rts 
            0x0ce330dc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33050 (+0x3e)
            0x0ce330de      00e0           mov 0x00,r0
            0x0ce330e0      ef81           mov.w r0,@(0x1E,r14)
            0x0ce330e2      3990           mov.w @(0x72,PC),r0
            ; CODE XREF from aav.0x0ce3261a (+0x96)
            0x0ce330e4      ec03           mov.b @(r0,r14),r3
            0x0ce330e6      3823           tst r3,r3
            0x0ce330e8      068d           bt.s 0x0ce330f8
            0x0ce330ea      01e4           mov 0x01,r4
/ (fcn) fcn.0ce330ec 60
|   fcn.0ce330ec (int arg_6h, int arg_1ch, int arg_1eh);
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_1ch @ r14+0x1c
|           ; arg int arg_1eh @ r14+0x1e
|           ; CALL XREF from fcn.0ce334c0 (+0x7e)
|           0x0ce330ec      3590           mov.w @(0x6A,PC),r0
|           0x0ce330ee      ec03           mov.b @(r0,r14),r3
|           0x0ce330f0      4823           tst r4,r3
|           0x0ce330f2      058b           bf 0x0ce33100
|           0x0ce330f4      07a0           bra 0x0ce33106
|           0x0ce330f6      0900           nop 
            ; CODE XREF from aav.0x0ce33050 (+0x98)
            0x0ce330f8      2f90           mov.w @(0x5E,PC),r0
            0x0ce330fa      ec00           mov.b @(r0,r14),r0
            ; CODE XREF from aav.0x0ce33b46 (+0x5e)
            0x0ce330fc      02c8           tst 0x02,r0
            0x0ce330fe      0289           bt 0x0ce33106               ; fcn.0ce330ec+0x1a
|           ; CODE XREF from fcn.0ce330ec (0xce330f2)
|           0x0ce33100      4360           mov r4,r0
|           0x0ce33102      0900           nop 
|           0x0ce33104      ef81           mov.w r0,@(0x1E,r14)
|           ; CODE XREF from fcn.0ce330ec (0xce330f4)
|           ; CODE XREF from fcn.0ce330ec (+0x12)
|           0x0ce33106      ef85           mov.w @(0x1E,r14),r0
|           0x0ce33108      0820           tst r0,r0
|           0x0ce3310a      058b           bf 0x0ce33118
|           0x0ce3310c      ee85           mov.w @(0x1C,r14),r0
|           0x0ce3310e      ff70           add 0xFF,r0
|           0x0ce33110      ee81           mov.w r0,@(0x1C,r14)
|           0x0ce33112      0f60           exts.w r0,r0
|           0x0ce33114      0820           tst r0,r0
|           0x0ce33116      078b           bf 0x0ce33128
|           ; CODE XREF from fcn.0ce330ec (0xce3310a)
|           0x0ce33118      e684           mov.b @(0x6,r14),r0
|           0x0ce3311a      0fe5           mov 0x0F,r5
|           0x0ce3311c      16d3           mov.l @(0x58,PC),r3
|           0x0ce3311e      17e6           mov 0x17,r6
|           0x0ce33120      0170           add 0x01,r0
|           0x0ce33122      e680           mov.b r0,@(0x6,r14)
|           0x0ce33124      0b43           jsr @r3
|           0x0ce33126      e364           mov r14,r4
|           ; CODE XREF from fcn.0ce330ec (0xce33116)
|           0x0ce33128      107f           add 0x10,r15
|           0x0ce3312a      264f           lds.l @r15+,pr
|           0x0ce3312c      0b00           rts 
\           0x0ce3312e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33130:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f14)
            0x0ce33130      224f           sts.l pr,@-r15
            0x0ce33132      fc7f           add 0xFC,r15
            0x0ce33134      0ad3           mov.l @(0x28,PC),r3
            0x0ce33136      0b43           jsr @r3
            0x0ce33138      422f           mov.l r4,@r15
            0x0ce3313a      0e60           exts.b r0,r0
            0x0ce3313c      1140           cmp/pz r0
            0x0ce3313e      0489           bt 0x0ce3314a
            0x0ce33140      f264           mov.l @r15,r4
            0x0ce33142      047f           add 0x04,r15
            0x0ce33144      0ed3           mov.l @(0x38,PC),r3
            0x0ce33146      2b43           jmp @r3
            0x0ce33148      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce33130 (+0xe)
            0x0ce3314a      047f           add 0x04,r15
            0x0ce3314c      264f           lds.l @r15+,pr
            0x0ce3314e      0b00           rts 
            0x0ce33150      0900           nop 
            0x0ce33152      e403           mov.b r14,@(r0,r3)
            0x0ce33154      c600           mov.l r12,@(r0,r0)
            0x0ce33156      f701           mul.l r15,r1
            0x0ce33158      d201           stc r5_bank,r1
            0x0ce3315a      fd01           mov.w @(r0,r15),r1
            0x0ce3315c      e211           mov.l r14,@(0x8,r1)
            0x0ce3315e      058c           .word 0x8C05
            0x0ce33160      ee4d           ldc r13,r6_bank
            0x0ce33162      038c           .word 0x8C03
            0x0ce33164      9057           mov.l @(0x0,r9),r7
            0x0ce33166      048c           .word 0x8C04
            0x0ce33168      aaaa           bra 0x0ce326c0
            0x0ce3316a      12c3           trapa 0x12
            0x0ce3316c      b66d           mov.l @r11+,r13
            0x0ce3316e      2b43           jmp @r3
            0x0ce33170      6036           cmp/eq r6,r6
            0x0ce33172      108c           .word 0x8C10
            0x0ce33174      c4fe           fcmp/eq fr12,fr14
            0x0ce33176      028c           .word 0x8C02
            0x0ce33178      8c4e           shad r8,r14
            0x0ce3317a      038c           .word 0x8C03
            0x0ce3317c      d823           tst r13,r3
            0x0ce3317e      058c           .word 0x8C05
            0x0ce33180      4816           mov.l r4,@(0x20,r6)
            0x0ce33182      058c           .word 0x8C05
            ;-- aav.0x0ce33184:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f4c)
            0x0ce33184      6a90           mov.w @(0xD4,PC),r0
            0x0ce33186      03e3           mov 0x03,r3
            0x0ce33188      e62f           mov.l r14,@-r15
            0x0ce3318a      436e           mov r4,r14
            0x0ce3318c      224f           sts.l pr,@-r15
            0x0ce3318e      340e           mov.b r3,@(r0,r14)
            0x0ce33190      36d3           mov.l @(0xD8,PC),r3
            0x0ce33192      0b43           jsr @r3
            0x0ce33194      e364           mov r14,r4
            0x0ce33196      0e60           exts.b r0,r0
            0x0ce33198      1140           cmp/pz r0
            0x0ce3319a      0989           bt 0x0ce331b0
            0x0ce3319c      e784           mov.b @(0x7,r14),r0
            0x0ce3319e      e364           mov r14,r4
            0x0ce331a0      33d3           mov.l @(0xCC,PC),r3
            0x0ce331a2      19e6           mov 0x19,r6
            0x0ce331a4      0170           add 0x01,r0
            0x0ce331a6      e780           mov.b r0,@(0x7,r14)
            0x0ce331a8      0fe5           mov 0x0F,r5
            0x0ce331aa      264f           lds.l @r15+,pr
            0x0ce331ac      2b43           jmp @r3
            0x0ce331ae      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33184 (+0x16)
            0x0ce331b0      264f           lds.l @r15+,pr
            0x0ce331b2      0b00           rts 
            0x0ce331b4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce331b6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f50)
            0x0ce331b6      5190           mov.w @(0xA2,PC),r0
            0x0ce331b8      03e3           mov 0x03,r3
            0x0ce331ba      e62f           mov.l r14,@-r15
            0x0ce331bc      436e           mov r4,r14
            0x0ce331be      224f           sts.l pr,@-r15
            0x0ce331c0      340e           mov.b r3,@(r0,r14)
            0x0ce331c2      2ad3           mov.l @(0xA8,PC),r3
            0x0ce331c4      0b43           jsr @r3
            0x0ce331c6      e364           mov r14,r4
            0x0ce331c8      0e60           exts.b r0,r0
            0x0ce331ca      1140           cmp/pz r0
            0x0ce331cc      1789           bt 0x0ce331fe
            0x0ce331ce      e784           mov.b @(0x7,r14),r0
            0x0ce331d0      0170           add 0x01,r0
            0x0ce331d2      e780           mov.b r0,@(0x7,r14)
            0x0ce331d4      27c7           mova @(0x9C,PC),r0
            0x0ce331d6      08f4           fmov @r0,fr4
            0x0ce331d8      4190           mov.w @(0x82,PC),r0
            0x0ce331da      ec03           mov.b @(r0,r14),r3
            0x0ce331dc      3823           tst r3,r3
            0x0ce331de      0389           bt 0x0ce331e8
            0x0ce331e0      34e0           mov 0x34,r0
            0x0ce331e2      e6f3           fmov @(r0,r14),fr3
            0x0ce331e4      03a0           bra 0x0ce331ee
            0x0ce331e6      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce331b6 (+0x28)
            0x0ce331e8      34e0           mov 0x34,r0
            0x0ce331ea      e6f3           fmov @(r0,r14),fr3
            0x0ce331ec      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce331b6 (+0x2e)
            0x0ce331ee      20d3           mov.l @(0x80,PC),r3
            0x0ce331f0      e364           mov r14,r4
            0x0ce331f2      37fe           fmov fr3,@(r0,r14)
            0x0ce331f4      1ae6           mov 0x1A,r6
            0x0ce331f6      264f           lds.l @r15+,pr
            0x0ce331f8      0fe5           mov 0x0F,r5
            0x0ce331fa      2b43           jmp @r3
            0x0ce331fc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce331b6 (+0x16)
            0x0ce331fe      2f90           mov.w @(0x5E,PC),r0
            0x0ce33200      ec02           mov.b @(r0,r14),r2
            0x0ce33202      2822           tst r2,r2
            0x0ce33204      2789           bt 0x0ce33256
            0x0ce33206      1cd4           mov.l @(0x70,PC),r4
            0x0ce33208      00e3           mov 0x00,r3
            0x0ce3320a      01e5           mov 0x01,r5
            0x0ce3320c      340e           mov.b r3,@(r0,r14)
            0x0ce3320e      5360           mov r5,r0
            0x0ce33210      0900           nop 
            0x0ce33212      1ad3           mov.l @(0x68,PC),r3
            0x0ce33214      4580           mov.b r0,@(0x5,r4)
            0x0ce33216      4680           mov.b r0,@(0x6,r4)
            0x0ce33218      0b43           jsr @r3
            0x0ce3321a      e364           mov r14,r4
            0x0ce3321c      2190           mov.w @(0x42,PC),r0
            0x0ce3321e      ee04           mov.l @(r0,r14),r4
            0x0ce33220      ec70           add 0xEC,r0
            0x0ce33222      e604           mov.l r14,@(r0,r4)
            0x0ce33224      1e90           mov.w @(0x3C,PC),r0
            0x0ce33226      ec00           mov.b @(r0,r14),r0
            0x0ce33228      0c60           extu.b r0,r0
            0x0ce3322a      0388           cmp/eq 0x03,r0
            0x0ce3322c      048b           bf 0x0ce33238
            0x0ce3322e      1a90           mov.w @(0x34,PC),r0
            0x0ce33230      40e5           mov 0x40,r5
            0x0ce33232      540e           mov.b r5,@(r0,r14)
            0x0ce33234      0aa0           bra 0x0ce3324c
            0x0ce33236      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce331b6 (+0x76)
            0x0ce33238      1690           mov.w @(0x2C,PC),r0
            0x0ce3323a      ec02           mov.b @(r0,r14),r2
            0x0ce3323c      fe70           add 0xFE,r0
            0x0ce3323e      3f72           add 0x3F,r2
            0x0ce33240      240e           mov.b r2,@(r0,r14)
            0x0ce33242      0270           add 0x02,r0
            0x0ce33244      ec03           mov.b @(r0,r14),r3
            0x0ce33246      fe70           add 0xFE,r0
            0x0ce33248      3f73           add 0x3F,r3
            0x0ce3324a      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce331b6 (+0x7e)
            0x0ce3324c      264f           lds.l @r15+,pr
            0x0ce3324e      0cd3           mov.l @(0x30,PC),r3
            0x0ce33250      e364           mov r14,r4
            0x0ce33252      2b43           jmp @r3
            0x0ce33254      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce331b6 (+0x4e)
            0x0ce33256      264f           lds.l @r15+,pr
            0x0ce33258      0b00           rts 
            0x0ce3325a      f66e           mov.l @r15+,r14
            0x0ce3325c      f201           stc r7_bank,r1
            0x0ce3325e      d201           stc r5_bank,r1
            0x0ce33260      4101           .word 0x0141
            0x0ce33262      c801           .word 0x01C8
            0x0ce33264      5502           mov.w r5,@(r0,r2)
            0x0ce33266      a101           .word 0x01A1
            0x0ce33268      a301           ocbp @r1
            0x0ce3326a      0000           .word 0x0000
            0x0ce3326c      ee4d           ldc r13,r6_bank
            0x0ce3326e      038c           .word 0x8C03
            0x0ce33270      8c4e           shad r8,r14
            0x0ce33272      038c           .word 0x8C03
            0x0ce33274      0000           .word 0x0000
            0x0ce33276      2043           shal r3
            0x0ce33278      18a5           bra 0x0ce33cac
            0x0ce3327a      268c           .word 0x8C26
            0x0ce3327c      fc23           cmp/str r15,r3
            0x0ce3327e      048c           .word 0x8C04
            0x0ce33280      3c93           mov.w @(0x78,PC),r3
            0x0ce33282      058c           .word 0x8C05
            ;-- aav.0x0ce33284:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f54)
            0x0ce33284      a290           mov.w @(0x144,PC),r0
            0x0ce33286      03e3           mov 0x03,r3
            0x0ce33288      e62f           mov.l r14,@-r15
            0x0ce3328a      436e           mov r4,r14
            0x0ce3328c      224f           sts.l pr,@-r15
            0x0ce3328e      340e           mov.b r3,@(r0,r14)
            0x0ce33290      50d3           mov.l @(0x140,PC),r3
            0x0ce33292      0b43           jsr @r3
            0x0ce33294      e364           mov r14,r4
            0x0ce33296      9a90           mov.w @(0x134,PC),r0
            0x0ce33298      ec02           mov.b @(r0,r14),r2
            0x0ce3329a      2822           tst r2,r2
            0x0ce3329c      4b89           bt 0x0ce33336
            0x0ce3329e      00e3           mov 0x00,r3
            0x0ce332a0      4ed4           mov.l @(0x138,PC),r4
            0x0ce332a2      340e           mov.b r3,@(r0,r14)
            0x0ce332a4      e784           mov.b @(0x7,r14),r0
            0x0ce332a6      0170           add 0x01,r0
            0x0ce332a8      e780           mov.b r0,@(0x7,r14)
            0x0ce332aa      4bc7           mova @(0x12C,PC),r0
            0x0ce332ac      08f5           fmov @r0,fr5
            0x0ce332ae      4cc7           mova @(0x130,PC),r0
            0x0ce332b0      08f4           fmov @r0,fr4
            0x0ce332b2      8d90           mov.w @(0x11A,PC),r0
            0x0ce332b4      ec03           mov.b @(r0,r14),r3
            0x0ce332b6      5ce0           mov 0x5C,r0
            0x0ce332b8      3c63           extu.b r3,r3
            0x0ce332ba      0843           shll2 r3
            0x0ce332bc      0843           shll2 r3
            0x0ce332be      4c33           add r4,r3
            0x0ce332c0      3262           mov.l @r3,r2
            0x0ce332c2      5a42           lds r2,fpul
            0x0ce332c4      2df3           float fpul,fr3
            0x0ce332c6      52f3           fmul fr5,fr3
            0x0ce332c8      43f3           fdiv fr4,fr3
            0x0ce332ca      37fe           fmov fr3,@(r0,r14)
            0x0ce332cc      8090           mov.w @(0x100,PC),r0
            0x0ce332ce      ec03           mov.b @(r0,r14),r3
            0x0ce332d0      3c63           extu.b r3,r3
            0x0ce332d2      0843           shll2 r3
            0x0ce332d4      0843           shll2 r3
            0x0ce332d6      4c33           add r4,r3
            0x0ce332d8      3152           mov.l @(0x4,r3),r2
            0x0ce332da      5a42           lds r2,fpul
            0x0ce332dc      2df3           float fpul,fr3
            0x0ce332de      52f3           fmul fr5,fr3
            0x0ce332e0      68e0           mov 0x68,r0
            0x0ce332e2      43f3           fdiv fr4,fr3
            0x0ce332e4      37fe           fmov fr3,@(r0,r14)
            0x0ce332e6      3fc7           mova @(0xFC,PC),r0
            0x0ce332e8      08f5           fmov @r0,fr5
            0x0ce332ea      7190           mov.w @(0xE2,PC),r0
            0x0ce332ec      ec03           mov.b @(r0,r14),r3
            0x0ce332ee      60e0           mov 0x60,r0
            0x0ce332f0      3c63           extu.b r3,r3
            0x0ce332f2      0843           shll2 r3
            0x0ce332f4      0843           shll2 r3
            0x0ce332f6      4c33           add r4,r3
            0x0ce332f8      3252           mov.l @(0x8,r3),r2
            0x0ce332fa      5a42           lds r2,fpul
            0x0ce332fc      2df3           float fpul,fr3
            0x0ce332fe      52f3           fmul fr5,fr3
            0x0ce33300      43f3           fdiv fr4,fr3
            0x0ce33302      37fe           fmov fr3,@(r0,r14)
            0x0ce33304      6490           mov.w @(0xC8,PC),r0
            0x0ce33306      ec03           mov.b @(r0,r14),r3
            0x0ce33308      6ce0           mov 0x6C,r0
            0x0ce3330a      3c63           extu.b r3,r3
            0x0ce3330c      0843           shll2 r3
            0x0ce3330e      0843           shll2 r3
            0x0ce33310      3c34           add r3,r4
            0x0ce33312      4353           mov.l @(0xC,r4),r3
            0x0ce33314      5a43           lds r3,fpul
            0x0ce33316      2df3           float fpul,fr3
            0x0ce33318      52f3           fmul fr5,fr3
            0x0ce3331a      43f3           fdiv fr4,fr3
            0x0ce3331c      37fe           fmov fr3,@(r0,r14)
            0x0ce3331e      5890           mov.w @(0xB0,PC),r0
            0x0ce33320      ec03           mov.b @(r0,r14),r3
            0x0ce33322      3823           tst r3,r3
            0x0ce33324      078b           bf 0x0ce33336
            0x0ce33326      5ce0           mov 0x5C,r0
            0x0ce33328      e6f3           fmov @(r0,r14),fr3
            0x0ce3332a      4df3           fneg fr3
            0x0ce3332c      37fe           fmov fr3,@(r0,r14)
            0x0ce3332e      68e0           mov 0x68,r0
            0x0ce33330      e6f3           fmov @(r0,r14),fr3
            0x0ce33332      4df3           fneg fr3
            0x0ce33334      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce33284 (+0x18, +0xa0)
            0x0ce33336      264f           lds.l @r15+,pr
            0x0ce33338      0b00           rts 
            0x0ce3333a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3333c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f58)
            0x0ce3333c      4690           mov.w @(0x8C,PC),r0
            0x0ce3333e      03e3           mov 0x03,r3
            0x0ce33340      e62f           mov.l r14,@-r15
            0x0ce33342      436e           mov r4,r14
            0x0ce33344      5ce1           mov 0x5C,r1
            0x0ce33346      ec31           add r14,r1
            0x0ce33348      224f           sts.l pr,@-r15
            0x0ce3334a      340e           mov.b r3,@(r0,r14)
            0x0ce3334c      34e0           mov 0x34,r0
            0x0ce3334e      e6f2           fmov @(r0,r14),fr2
            ; CODE XREF from aav.0x0ce33d6c (+0x8c)
            0x0ce33350      18f3           fmov @r1,fr3
            0x0ce33352      68e1           mov 0x68,r1
            0x0ce33354      ec31           add r14,r1
            0x0ce33356      30f2           fadd fr3,fr2
            0x0ce33358      27fe           fmov fr2,@(r0,r14)
            0x0ce3335a      5ce0           mov 0x5C,r0
            0x0ce3335c      e6f2           fmov @(r0,r14),fr2
            0x0ce3335e      18f3           fmov @r1,fr3
            0x0ce33360      60e1           mov 0x60,r1
            0x0ce33362      ec31           add r14,r1
            0x0ce33364      30f2           fadd fr3,fr2
            0x0ce33366      27fe           fmov fr2,@(r0,r14)
            0x0ce33368      38e0           mov 0x38,r0
            0x0ce3336a      e6f2           fmov @(r0,r14),fr2
            0x0ce3336c      18f3           fmov @r1,fr3
            0x0ce3336e      6ce1           mov 0x6C,r1
            0x0ce33370      ec31           add r14,r1
            0x0ce33372      30f2           fadd fr3,fr2
            0x0ce33374      27fe           fmov fr2,@(r0,r14)
            0x0ce33376      60e0           mov 0x60,r0
            0x0ce33378      e6f2           fmov @(r0,r14),fr2
            0x0ce3337a      18f3           fmov @r1,fr3
            0x0ce3337c      30f2           fadd fr3,fr2
            0x0ce3337e      15d3           mov.l @(0x54,PC),r3
            0x0ce33380      27fe           fmov fr2,@(r0,r14)
            0x0ce33382      0b43           jsr @r3
            0x0ce33384      e364           mov r14,r4
            0x0ce33386      60e0           mov 0x60,r0
            0x0ce33388      8df3           fldi0 fr3
            0x0ce3338a      e6f2           fmov @(r0,r14),fr2
            0x0ce3338c      35f2           fcmp/gt fr3,fr2
            0x0ce3338e      1a89           bt 0x0ce333c6
            0x0ce33390      e784           mov.b @(0x7,r14),r0
            0x0ce33392      0170           add 0x01,r0
            0x0ce33394      e780           mov.b r0,@(0x7,r14)
            0x0ce33396      1b90           mov.w @(0x36,PC),r0
            0x0ce33398      ec03           mov.b @(r0,r14),r3
            0x0ce3339a      13d0           mov.l @(0x4C,PC),r0
            0x0ce3339c      3c63           extu.b r3,r3
            0x0ce3339e      0043           shll r3
            0x0ce333a0      3d03           mov.w @(r0,r3),r3
            0x0ce333a2      0dc7           mova @(0x34,PC),r0
            0x0ce333a4      08f2           fmov @r0,fr2
            0x0ce333a6      11c7           mova @(0x44,PC),r0
            0x0ce333a8      5a43           lds r3,fpul
            0x0ce333aa      08f1           fmov @r0,fr1
            0x0ce333ac      5ce0           mov 0x5C,r0
            0x0ce333ae      2df3           float fpul,fr3
            0x0ce333b0      22f3           fmul fr2,fr3
            0x0ce333b2      13f3           fdiv fr1,fr3
            0x0ce333b4      37fe           fmov fr3,@(r0,r14)
            0x0ce333b6      0c90           mov.w @(0x18,PC),r0
            0x0ce333b8      ec03           mov.b @(r0,r14),r3
            0x0ce333ba      3823           tst r3,r3
            0x0ce333bc      038b           bf 0x0ce333c6
            0x0ce333be      5ce0           mov 0x5C,r0
            0x0ce333c0      e6f3           fmov @(r0,r14),fr3
            0x0ce333c2      4df3           fneg fr3
            0x0ce333c4      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce3333c (+0x52, +0x80)
            0x0ce333c6      264f           lds.l @r15+,pr
            0x0ce333c8      0b00           rts 
            0x0ce333ca      f66e           mov.l @r15+,r14
            0x0ce333cc      f201           stc r7_bank,r1
            0x0ce333ce      4101           .word 0x0141
            0x0ce333d0      a301           ocbp @r1
            0x0ce333d2      d201           stc r5_bank,r1
            0x0ce333d4      ee4d           ldc r13,r6_bank
            0x0ce333d6      038c           .word 0x8C03
            0x0ce333d8      5555           mov.l @(0x14,r5),r5
            0x0ce333da      d53f           dmulu.l r13,r15
            0x0ce333dc      .dword 0x0ce36f28 ; aav.0x0ce36f28
            0x0ce333e0      0000           .word 0x0000
            0x0ce333e2      8047           .word 0x4780
/ (fcn) fcn.0ce333e4 140
|   fcn.0ce333e4 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from fcn.0ce334c0 (+0x86)
|           0x0ce333e4      9224           mov.l r9,@r4
|           0x0ce333e6      0940           shlr2 r0
|           0x0ce333e8      .dword 0x0ce36f48 ; aav.0x0ce36f48
|           0x0ce333ec      0000           .word 0x0000
|           0x0ce333ee      8043           .word 0x4380
|           ;-- aav.0x0ce333f0:
|           ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f5c)
|           0x0ce333f0      9190           mov.w @(0x122,PC),r0
|           0x0ce333f2      03e3           mov 0x03,r3
|           0x0ce333f4      e62f           mov.l r14,@-r15
|           0x0ce333f6      436e           mov r4,r14
|           0x0ce333f8      5ce1           mov 0x5C,r1
|           0x0ce333fa      ec31           add r14,r1
|           0x0ce333fc      224f           sts.l pr,@-r15
|           0x0ce333fe      340e           mov.b r3,@(r0,r14)
|           0x0ce33400      34e0           mov 0x34,r0
|           0x0ce33402      e6f2           fmov @(r0,r14),fr2
|           0x0ce33404      18f3           fmov @r1,fr3
|           0x0ce33406      68e1           mov 0x68,r1
|           0x0ce33408      ec31           add r14,r1
|           0x0ce3340a      30f2           fadd fr3,fr2
|           0x0ce3340c      27fe           fmov fr2,@(r0,r14)
|           0x0ce3340e      5ce0           mov 0x5C,r0
|           0x0ce33410      e6f2           fmov @(r0,r14),fr2
|           0x0ce33412      18f3           fmov @r1,fr3
|           0x0ce33414      60e1           mov 0x60,r1
|           0x0ce33416      ec31           add r14,r1
|           0x0ce33418      30f2           fadd fr3,fr2
|           0x0ce3341a      27fe           fmov fr2,@(r0,r14)
|           0x0ce3341c      38e0           mov 0x38,r0
|           0x0ce3341e      e6f2           fmov @(r0,r14),fr2
|           0x0ce33420      18f3           fmov @r1,fr3
|           0x0ce33422      6ce1           mov 0x6C,r1
|           0x0ce33424      ec31           add r14,r1
|           0x0ce33426      30f2           fadd fr3,fr2
|           0x0ce33428      27fe           fmov fr2,@(r0,r14)
|           0x0ce3342a      60e0           mov 0x60,r0
|           0x0ce3342c      e6f2           fmov @(r0,r14),fr2
|           0x0ce3342e      18f3           fmov @r1,fr3
|           0x0ce33430      30f2           fadd fr3,fr2
|           0x0ce33432      3cd3           mov.l @(0xF0,PC),r3
|           0x0ce33434      27fe           fmov fr2,@(r0,r14)
|           0x0ce33436      0b43           jsr @r3
|           0x0ce33438      e364           mov r14,r4
|           0x0ce3343a      3bd2           mov.l @(0xEC,PC),r2
|           0x0ce3343c      0b42           jsr @r2
|           0x0ce3343e      e364           mov r14,r4
|           0x0ce33440      0c60           extu.b r0,r0
|           0x0ce33442      0820           tst r0,r0
|           0x0ce33444      1189           bt 0x0ce3346a
|           0x0ce33446      e784           mov.b @(0x7,r14),r0
|           0x0ce33448      38d4           mov.l @(0xE0,PC),r4
|           0x0ce3344a      0170           add 0x01,r0
|           0x0ce3344c      38d3           mov.l @(0xE0,PC),r3
|           0x0ce3344e      e780           mov.b r0,@(0x7,r14)
|           0x0ce33450      02e0           mov 0x02,r0
|           0x0ce33452      4580           mov.b r0,@(0x5,r4)
|           0x0ce33454      01e0           mov 0x01,r0
|           0x0ce33456      4680           mov.b r0,@(0x6,r4)
|           0x0ce33458      0b43           jsr @r3
|           0x0ce3345a      e364           mov r14,r4
|           0x0ce3345c      264f           lds.l @r15+,pr
|           0x0ce3345e      35d2           mov.l @(0xD4,PC),r2
|           0x0ce33460      e364           mov r14,r4
|           0x0ce33462      1be6           mov 0x1B,r6
|           0x0ce33464      0fe5           mov 0x0F,r5
|           0x0ce33466      2b42           jmp @r2
|           0x0ce33468      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce333e4 (0xce33444)
|           0x0ce3346a      264f           lds.l @r15+,pr
|           0x0ce3346c      0b00           rts 
\           0x0ce3346e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33470:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f60)
            0x0ce33470      5190           mov.w @(0xA2,PC),r0
            0x0ce33472      03e3           mov 0x03,r3
            0x0ce33474      e62f           mov.l r14,@-r15
            0x0ce33476      436e           mov r4,r14
            0x0ce33478      224f           sts.l pr,@-r15
            0x0ce3347a      340e           mov.b r3,@(r0,r14)
            0x0ce3347c      29d3           mov.l @(0xA4,PC),r3
            0x0ce3347e      0b43           jsr @r3
            0x0ce33480      e364           mov r14,r4
            0x0ce33482      0e60           exts.b r0,r0
            0x0ce33484      1140           cmp/pz r0
            0x0ce33486      4389           bt 0x0ce33510               ; fcn.0ce334c0+0x50
            0x0ce33488      e784           mov.b @(0x7,r14),r0
            0x0ce3348a      0170           add 0x01,r0
            0x0ce3348c      e780           mov.b r0,@(0x7,r14)
            0x0ce3348e      2ac7           mova @(0xA8,PC),r0
            0x0ce33490      08f3           fmov @r0,fr3
            0x0ce33492      5ce0           mov 0x5C,r0
            0x0ce33494      37fe           fmov fr3,@(r0,r14)
            0x0ce33496      29c7           mova @(0xA4,PC),r0
            0x0ce33498      08f3           fmov @r0,fr3
            0x0ce3349a      68e0           mov 0x68,r0
            0x0ce3349c      37fe           fmov fr3,@(r0,r14)
            0x0ce3349e      28c7           mova @(0xA0,PC),r0
            0x0ce334a0      08f3           fmov @r0,fr3
            0x0ce334a2      60e0           mov 0x60,r0
            0x0ce334a4      37fe           fmov fr3,@(r0,r14)
            0x0ce334a6      27c7           mova @(0x9C,PC),r0
            0x0ce334a8      08f3           fmov @r0,fr3
            0x0ce334aa      6ce0           mov 0x6C,r0
            0x0ce334ac      37fe           fmov fr3,@(r0,r14)
            0x0ce334ae      3390           mov.w @(0x66,PC),r0
            0x0ce334b0      ec03           mov.b @(r0,r14),r3
            0x0ce334b2      3823           tst r3,r3
            0x0ce334b4      088d           bt.s 0x0ce334c8             ; fcn.0ce334c0+0x8
            0x0ce334b6      21e6           mov 0x21,r6
            0x0ce334b8      5ce0           mov 0x5C,r0
            0x0ce334ba      e6f3           fmov @(r0,r14),fr3
            0x0ce334bc      4df3           fneg fr3
            0x0ce334be      37fe           fmov fr3,@(r0,r14)
/ (fcn) fcn.0ce334c0 86
|   fcn.0ce334c0 ();
|           ; CALL XREF from aav.0x0ce338d8 (+0x3a)
|           0x0ce334c0      68e0           mov 0x68,r0
|           0x0ce334c2      e6f3           fmov @(r0,r14),fr3
|           0x0ce334c4      4df3           fneg fr3
|           0x0ce334c6      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from aav.0x0ce33470 (+0x44)
|           0x0ce334c8      1ad3           mov.l @(0x68,PC),r3
|           0x0ce334ca      0fe5           mov 0x0F,r5
|           0x0ce334cc      0b43           jsr @r3
|           0x0ce334ce      e364           mov r14,r4
|           0x0ce334d0      1dd2           mov.l @(0x74,PC),r2
|           0x0ce334d2      00e6           mov 0x00,r6
|           0x0ce334d4      6365           mov r6,r5
|           0x0ce334d6      0b42           jsr @r2
|           0x0ce334d8      e364           mov r14,r4
|           0x0ce334da      1e90           mov.w @(0x3C,PC),r0
|           0x0ce334dc      02e3           mov 0x02,r3
|           0x0ce334de      ee04           mov.l @(r0,r14),r4
|           0x0ce334e0      1c90           mov.w @(0x38,PC),r0
|           0x0ce334e2      e604           mov.l r14,@(r0,r4)
|           0x0ce334e4      4270           add 0x42,r0
|           0x0ce334e6      3404           mov.b r3,@(r0,r4)
|           0x0ce334e8      5f70           add 0x5F,r0
|           0x0ce334ea      ec00           mov.b @(r0,r14),r0
|           0x0ce334ec      0c60           extu.b r0,r0
|           0x0ce334ee      0388           cmp/eq 0x03,r0
|           0x0ce334f0      048b           bf 0x0ce334fc
|           0x0ce334f2      1490           mov.w @(0x28,PC),r0
|           0x0ce334f4      42e5           mov 0x42,r5
|           0x0ce334f6      5404           mov.b r5,@(r0,r4)
|           0x0ce334f8      0aa0           bra 0x0ce33510
|           0x0ce334fa      540e           mov.b r5,@(r0,r14)
|           ; CODE XREF from fcn.0ce334c0 (0xce334f0)
|           0x0ce334fc      1090           mov.w @(0x20,PC),r0
|           0x0ce334fe      ec02           mov.b @(r0,r14),r2
|           0x0ce33500      fe70           add 0xFE,r0
|           0x0ce33502      4172           add 0x41,r2
|           0x0ce33504      2404           mov.b r2,@(r0,r4)
|           0x0ce33506      0270           add 0x02,r0
|           0x0ce33508      ec03           mov.b @(r0,r14),r3
|           0x0ce3350a      fe70           add 0xFE,r0
|           0x0ce3350c      4173           add 0x41,r3
|           0x0ce3350e      340e           mov.b r3,@(r0,r14)
|           ; CODE XREF from aav.0x0ce33470 (+0x16)
|           ; CODE XREF from fcn.0ce334c0 (0xce334f8)
|           0x0ce33510      264f           lds.l @r15+,pr
|           0x0ce33512      0b00           rts 
\           0x0ce33514      f66e           mov.l @r15+,r14
            0x0ce33516      f201           stc r7_bank,r1
            0x0ce33518      d201           stc r5_bank,r1
            0x0ce3351a      c801           .word 0x01C8
            0x0ce3351c      b401           mov.b r11,@(r0,r1)
            0x0ce3351e      a101           .word 0x01A1
            0x0ce33520      a301           ocbp @r1
            0x0ce33522      0000           .word 0x0000
            0x0ce33524      ee4d           ldc r13,r6_bank
            0x0ce33526      038c           .word 0x8C03
            0x0ce33528      e22c           mov.l r14,@r12
            0x0ce3352a      058c           .word 0x8C05
            0x0ce3352c      18a5           bra 0x0ce33f60
            0x0ce3352e      268c           .word 0x8C26
            0x0ce33530      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce33534      8c4e           shad r8,r14
            0x0ce33536      038c           .word 0x8C03
            0x0ce33538      aaaa           bra 0x0ce32a90
            0x0ce3353a      ba40           .word 0x40BA
            0x0ce3353c      5555           mov.l @(0x14,r5),r5
            0x0ce3353e      d5bd           bsr fcn.0ce330ec
            0x0ce33540      dbb6           bsr fcn.0ce342fa
            0x0ce33542      4d41           shld r4,r1
            0x0ce33544      dbb6           bsr fcn.0ce342fe            ; fcn.0ce342fa+0x4
            0x0ce33546      4dbf           bsr fcn.0ce333e4
            0x0ce33548      c4fe           fcmp/eq fr12,fr14
            0x0ce3354a      028c           .word 0x8C02
            ;-- aav.0x0ce3354c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f64)
            0x0ce3354c      e62f           mov.l r14,@-r15
            0x0ce3354e      5ce1           mov 0x5C,r1
            0x0ce33550      436e           mov r4,r14
            0x0ce33552      ec31           add r14,r1
            0x0ce33554      34e0           mov 0x34,r0
            0x0ce33556      37d3           mov.l @(0xDC,PC),r3
            0x0ce33558      224f           sts.l pr,@-r15
            0x0ce3355a      e6f2           fmov @(r0,r14),fr2
            0x0ce3355c      18f3           fmov @r1,fr3
            0x0ce3355e      68e1           mov 0x68,r1
            0x0ce33560      ec31           add r14,r1
            0x0ce33562      30f2           fadd fr3,fr2
            0x0ce33564      27fe           fmov fr2,@(r0,r14)
            0x0ce33566      5ce0           mov 0x5C,r0
            0x0ce33568      18f3           fmov @r1,fr3
            0x0ce3356a      60e1           mov 0x60,r1
            0x0ce3356c      e6f2           fmov @(r0,r14),fr2
            0x0ce3356e      ec31           add r14,r1
            0x0ce33570      30f2           fadd fr3,fr2
            0x0ce33572      27fe           fmov fr2,@(r0,r14)
            0x0ce33574      38e0           mov 0x38,r0
            0x0ce33576      e6f2           fmov @(r0,r14),fr2
            0x0ce33578      18f3           fmov @r1,fr3
            0x0ce3357a      6ce1           mov 0x6C,r1
            0x0ce3357c      ec31           add r14,r1
            0x0ce3357e      30f2           fadd fr3,fr2
            0x0ce33580      27fe           fmov fr2,@(r0,r14)
            0x0ce33582      60e0           mov 0x60,r0
            0x0ce33584      e6f2           fmov @(r0,r14),fr2
            0x0ce33586      18f3           fmov @r1,fr3
            0x0ce33588      30f2           fadd fr3,fr2
            0x0ce3358a      27fe           fmov fr2,@(r0,r14)
            0x0ce3358c      0b43           jsr @r3
            0x0ce3358e      e364           mov r14,r4
            0x0ce33590      0c60           extu.b r0,r0
            0x0ce33592      0820           tst r0,r0
            0x0ce33594      0c89           bt 0x0ce335b0
            0x0ce33596      28d3           mov.l @(0xA0,PC),r3
            0x0ce33598      0b43           jsr @r3
            0x0ce3359a      e364           mov r14,r4
            0x0ce3359c      e784           mov.b @(0x7,r14),r0
            0x0ce3359e      e364           mov r14,r4
            0x0ce335a0      26d3           mov.l @(0x98,PC),r3
            0x0ce335a2      22e6           mov 0x22,r6
            0x0ce335a4      0170           add 0x01,r0
            0x0ce335a6      e780           mov.b r0,@(0x7,r14)
            0x0ce335a8      0fe5           mov 0x0F,r5
            0x0ce335aa      264f           lds.l @r15+,pr
            0x0ce335ac      2b43           jmp @r3
            0x0ce335ae      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3354c (+0x48)
            0x0ce335b0      264f           lds.l @r15+,pr
            0x0ce335b2      0b00           rts 
            0x0ce335b4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce335b6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f68)
            0x0ce335b6      224f           sts.l pr,@-r15
            0x0ce335b8      fc7f           add 0xFC,r15
            0x0ce335ba      21d3           mov.l @(0x84,PC),r3
            0x0ce335bc      0b43           jsr @r3
            0x0ce335be      422f           mov.l r4,@r15
            0x0ce335c0      0e60           exts.b r0,r0
            0x0ce335c2      1140           cmp/pz r0
            0x0ce335c4      0489           bt 0x0ce335d0
            0x0ce335c6      f264           mov.l @r15,r4
            0x0ce335c8      047f           add 0x04,r15
            0x0ce335ca      1ed3           mov.l @(0x78,PC),r3
            0x0ce335cc      2b43           jmp @r3
            0x0ce335ce      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce335b6 (+0xe)
            0x0ce335d0      047f           add 0x04,r15
            0x0ce335d2      264f           lds.l @r15+,pr
            0x0ce335d4      0b00           rts 
            0x0ce335d6      0900           nop 
            ;-- aav.0x0ce335d8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f18)
            0x0ce335d8      2990           mov.w @(0x52,PC),r0
            0x0ce335da      01e3           mov 0x01,r3
            0x0ce335dc      e62f           mov.l r14,@-r15
            0x0ce335de      436e           mov r4,r14
            0x0ce335e0      340e           mov.b r3,@(r0,r14)
            0x0ce335e2      0370           add 0x03,r0
            0x0ce335e4      02e4           mov 0x02,r4
            0x0ce335e6      18d1           mov.l @(0x60,PC),r1
            0x0ce335e8      440e           mov.b r4,@(r0,r14)
            0x0ce335ea      0870           add 0x08,r0
            0x0ce335ec      440e           mov.b r4,@(r0,r14)
            0x0ce335ee      e364           mov r14,r4
            0x0ce335f0      e784           mov.b @(0x7,r14),r0
            0x0ce335f2      0c60           extu.b r0,r0
            0x0ce335f4      0840           shll2 r0
            0x0ce335f6      1e03           mov.l @(r0,r1),r3
            0x0ce335f8      2b43           jmp @r3
            0x0ce335fa      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce335fc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f8c)
            0x0ce335fc      1890           mov.w @(0x30,PC),r0
            0x0ce335fe      03e3           mov 0x03,r3
            0x0ce33600      e62f           mov.l r14,@-r15
            0x0ce33602      436e           mov r4,r14
            0x0ce33604      224f           sts.l pr,@-r15
            0x0ce33606      340e           mov.b r3,@(r0,r14)
            0x0ce33608      0dd3           mov.l @(0x34,PC),r3
            0x0ce3360a      0b43           jsr @r3
/ (fcn) fcn.0ce3360c 34
|   fcn.0ce3360c (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce339d4 (+0x8a)
|           0x0ce3360c      e364           mov r14,r4
|           0x0ce3360e      0e60           exts.b r0,r0
|           0x0ce33610      1140           cmp/pz r0
|           0x0ce33612      0989           bt 0x0ce33628
|           0x0ce33614      e784           mov.b @(0x7,r14),r0
|           0x0ce33616      e364           mov r14,r4
|           0x0ce33618      08d3           mov.l @(0x20,PC),r3
|           0x0ce3361a      1ee6           mov 0x1E,r6
|           0x0ce3361c      0170           add 0x01,r0
|           0x0ce3361e      e780           mov.b r0,@(0x7,r14)
|           0x0ce33620      0fe5           mov 0x0F,r5
|           0x0ce33622      264f           lds.l @r15+,pr
|           0x0ce33624      2b43           jmp @r3
|           0x0ce33626      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3360c (0xce33612)
|           0x0ce33628      264f           lds.l @r15+,pr
|           0x0ce3362a      0b00           rts 
\           0x0ce3362c      f66e           mov.l @r15+,r14
            0x0ce3362e      ea01           .word 0x01EA
            0x0ce33630      f201           stc r7_bank,r1
            0x0ce33632      0000           .word 0x0000
            ; CODE XREF from fcn.0ce32bcc (+0x34)
            0x0ce33634      e22c           mov.l r14,@r12
            0x0ce33636      058c           .word 0x8C05
            0x0ce33638      b411           mov.l r11,@(0x10,r1)
            0x0ce3363a      058c           .word 0x8C05
            0x0ce3363c      8c4e           shad r8,r14
            0x0ce3363e      038c           .word 0x8C03
            0x0ce33640      ee4d           ldc r13,r6_bank
            0x0ce33642      038c           .word 0x8C03
            0x0ce33644      4816           mov.l r4,@(0x20,r6)
            0x0ce33646      058c           .word 0x8C05
            0x0ce33648      .dword 0x0ce36f4c ; aav.0x0ce36f4c
            ;-- aav.0x0ce3364c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f90)
            0x0ce3364c      9e90           mov.w @(0x13C,PC),r0
            0x0ce3364e      03e3           mov 0x03,r3
            0x0ce33650      e62f           mov.l r14,@-r15
            0x0ce33652      436e           mov r4,r14
            0x0ce33654      224f           sts.l pr,@-r15
            0x0ce33656      340e           mov.b r3,@(r0,r14)
            0x0ce33658      4ed3           mov.l @(0x138,PC),r3
            0x0ce3365a      0b43           jsr @r3
            0x0ce3365c      e364           mov r14,r4
            0x0ce3365e      0e60           exts.b r0,r0
            0x0ce33660      1140           cmp/pz r0
            0x0ce33662      5089           bt 0x0ce33706
            0x0ce33664      e784           mov.b @(0x7,r14),r0
            0x0ce33666      4dd4           mov.l @(0x134,PC),r4
            0x0ce33668      0170           add 0x01,r0
            0x0ce3366a      e780           mov.b r0,@(0x7,r14)
            0x0ce3366c      4ac7           mova @(0x128,PC),r0
            0x0ce3366e      08f5           fmov @r0,fr5
            0x0ce33670      4bc7           mova @(0x12C,PC),r0
            0x0ce33672      08f4           fmov @r0,fr4
            0x0ce33674      8b90           mov.w @(0x116,PC),r0
            0x0ce33676      ec03           mov.b @(r0,r14),r3
            0x0ce33678      5ce0           mov 0x5C,r0
            0x0ce3367a      3c63           extu.b r3,r3
            0x0ce3367c      0843           shll2 r3
            0x0ce3367e      0843           shll2 r3
            0x0ce33680      4c33           add r4,r3
            0x0ce33682      3262           mov.l @r3,r2
            0x0ce33684      5a42           lds r2,fpul
            0x0ce33686      2df3           float fpul,fr3
            0x0ce33688      52f3           fmul fr5,fr3
            0x0ce3368a      43f3           fdiv fr4,fr3
            0x0ce3368c      37fe           fmov fr3,@(r0,r14)
            0x0ce3368e      7e90           mov.w @(0xFC,PC),r0
            0x0ce33690      ec03           mov.b @(r0,r14),r3
            0x0ce33692      3c63           extu.b r3,r3
            0x0ce33694      0843           shll2 r3
            0x0ce33696      0843           shll2 r3
            0x0ce33698      4c33           add r4,r3
            0x0ce3369a      3152           mov.l @(0x4,r3),r2
            0x0ce3369c      5a42           lds r2,fpul
            0x0ce3369e      2df3           float fpul,fr3
            0x0ce336a0      52f3           fmul fr5,fr3
            0x0ce336a2      43f3           fdiv fr4,fr3
            0x0ce336a4      68e0           mov 0x68,r0
            0x0ce336a6      37fe           fmov fr3,@(r0,r14)
            0x0ce336a8      3ec7           mova @(0xF8,PC),r0
            0x0ce336aa      08f5           fmov @r0,fr5
            0x0ce336ac      6f90           mov.w @(0xDE,PC),r0
            0x0ce336ae      ec03           mov.b @(r0,r14),r3
            0x0ce336b0      60e0           mov 0x60,r0
            0x0ce336b2      3c63           extu.b r3,r3
            0x0ce336b4      0843           shll2 r3
            0x0ce336b6      0843           shll2 r3
            0x0ce336b8      4c33           add r4,r3
            0x0ce336ba      3252           mov.l @(0x8,r3),r2
            0x0ce336bc      5a42           lds r2,fpul
            0x0ce336be      2df3           float fpul,fr3
            0x0ce336c0      52f3           fmul fr5,fr3
            0x0ce336c2      43f3           fdiv fr4,fr3
            0x0ce336c4      37fe           fmov fr3,@(r0,r14)
            0x0ce336c6      6290           mov.w @(0xC4,PC),r0
            0x0ce336c8      ec03           mov.b @(r0,r14),r3
            0x0ce336ca      6ce0           mov 0x6C,r0
            0x0ce336cc      3c63           extu.b r3,r3
            0x0ce336ce      0843           shll2 r3
            0x0ce336d0      0843           shll2 r3
            0x0ce336d2      3c34           add r3,r4
            0x0ce336d4      4353           mov.l @(0xC,r4),r3
            0x0ce336d6      5a43           lds r3,fpul
            0x0ce336d8      2df3           float fpul,fr3
            0x0ce336da      52f3           fmul fr5,fr3
            0x0ce336dc      43f3           fdiv fr4,fr3
            0x0ce336de      37fe           fmov fr3,@(r0,r14)
            0x0ce336e0      5690           mov.w @(0xAC,PC),r0
            0x0ce336e2      ec03           mov.b @(r0,r14),r3
            0x0ce336e4      3823           tst r3,r3
            0x0ce336e6      088f           bf.s 0x0ce336fa
            0x0ce336e8      1fe6           mov 0x1F,r6
            0x0ce336ea      5ce0           mov 0x5C,r0
            0x0ce336ec      e6f3           fmov @(r0,r14),fr3
            0x0ce336ee      4df3           fneg fr3
            0x0ce336f0      37fe           fmov fr3,@(r0,r14)
            0x0ce336f2      68e0           mov 0x68,r0
            0x0ce336f4      e6f3           fmov @(r0,r14),fr3
            0x0ce336f6      4df3           fneg fr3
            0x0ce336f8      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3364c (+0x9a)
            0x0ce336fa      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce3414e (+0x56)
            0x0ce336fc      2ad3           mov.l @(0xA8,PC),r3
            0x0ce336fe      0fe5           mov 0x0F,r5
            0x0ce33700      e364           mov r14,r4
            0x0ce33702      2b43           jmp @r3
            0x0ce33704      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3364c (+0x16)
            0x0ce33706      264f           lds.l @r15+,pr
            0x0ce33708      0b00           rts 
            0x0ce3370a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3370c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f94)
            0x0ce3370c      3e90           mov.w @(0x7C,PC),r0
            0x0ce3370e      03e3           mov 0x03,r3
            0x0ce33710      e62f           mov.l r14,@-r15
            0x0ce33712      436e           mov r4,r14
            0x0ce33714      5ce1           mov 0x5C,r1
            0x0ce33716      ec31           add r14,r1
            0x0ce33718      224f           sts.l pr,@-r15
            0x0ce3371a      340e           mov.b r3,@(r0,r14)
            0x0ce3371c      34e0           mov 0x34,r0
            0x0ce3371e      e6f2           fmov @(r0,r14),fr2
            0x0ce33720      18f3           fmov @r1,fr3
            0x0ce33722      68e1           mov 0x68,r1
            0x0ce33724      ec31           add r14,r1
            0x0ce33726      30f2           fadd fr3,fr2
            0x0ce33728      27fe           fmov fr2,@(r0,r14)
            0x0ce3372a      5ce0           mov 0x5C,r0
            0x0ce3372c      e6f2           fmov @(r0,r14),fr2
            0x0ce3372e      18f3           fmov @r1,fr3
            0x0ce33730      60e1           mov 0x60,r1
            0x0ce33732      ec31           add r14,r1
            0x0ce33734      30f2           fadd fr3,fr2
            0x0ce33736      27fe           fmov fr2,@(r0,r14)
            0x0ce33738      38e0           mov 0x38,r0
            0x0ce3373a      e6f2           fmov @(r0,r14),fr2
            0x0ce3373c      18f3           fmov @r1,fr3
            0x0ce3373e      6ce1           mov 0x6C,r1
            0x0ce33740      ec31           add r14,r1
            0x0ce33742      30f2           fadd fr3,fr2
            0x0ce33744      27fe           fmov fr2,@(r0,r14)
            0x0ce33746      60e0           mov 0x60,r0
            0x0ce33748      e6f2           fmov @(r0,r14),fr2
            0x0ce3374a      18f3           fmov @r1,fr3
            0x0ce3374c      30f2           fadd fr3,fr2
            0x0ce3374e      11d3           mov.l @(0x44,PC),r3
            0x0ce33750      27fe           fmov fr2,@(r0,r14)
            0x0ce33752      0b43           jsr @r3
            0x0ce33754      e364           mov r14,r4
            0x0ce33756      15d2           mov.l @(0x54,PC),r2
            0x0ce33758      0b42           jsr @r2
            0x0ce3375a      e364           mov r14,r4
            0x0ce3375c      0c60           extu.b r0,r0
            0x0ce3375e      0820           tst r0,r0
            0x0ce33760      1189           bt 0x0ce33786
            0x0ce33762      e784           mov.b @(0x7,r14),r0
            0x0ce33764      12d4           mov.l @(0x48,PC),r4
            0x0ce33766      0170           add 0x01,r0
            0x0ce33768      12d3           mov.l @(0x48,PC),r3
            0x0ce3376a      e780           mov.b r0,@(0x7,r14)
            0x0ce3376c      02e0           mov 0x02,r0
            0x0ce3376e      4580           mov.b r0,@(0x5,r4)
            0x0ce33770      01e0           mov 0x01,r0
            0x0ce33772      4680           mov.b r0,@(0x6,r4)
            0x0ce33774      0b43           jsr @r3
            0x0ce33776      e364           mov r14,r4
            0x0ce33778      264f           lds.l @r15+,pr
            0x0ce3377a      0bd2           mov.l @(0x2C,PC),r2
            0x0ce3377c      e364           mov r14,r4
            0x0ce3377e      20e6           mov 0x20,r6
            0x0ce33780      0fe5           mov 0x0F,r5
            0x0ce33782      2b42           jmp @r2
            0x0ce33784      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3370c (+0x54)
            0x0ce33786      264f           lds.l @r15+,pr
            0x0ce33788      0b00           rts 
            0x0ce3378a      f66e           mov.l @r15+,r14
            0x0ce3378c      f201           stc r7_bank,r1
            0x0ce3378e      a301           ocbp @r1
            0x0ce33790      d201           stc r5_bank,r1
            0x0ce33792      0000           .word 0x0000
            0x0ce33794      ee4d           ldc r13,r6_bank
            0x0ce33796      038c           .word 0x8C03
            0x0ce33798      5555           mov.l @(0x14,r5),r5
            0x0ce3379a      d53f           dmulu.l r13,r15
            0x0ce3379c      .dword 0x0ce36f6c ; aav.0x0ce36f6c
            0x0ce337a0      0000           .word 0x0000
            0x0ce337a2      8047           .word 0x4780
            0x0ce337a4      9224           mov.l r9,@r4
            0x0ce337a6      0940           shlr2 r0
            0x0ce337a8      8c4e           shad r8,r14
            0x0ce337aa      038c           .word 0x8C03
            0x0ce337ac      e22c           mov.l r14,@r12
            0x0ce337ae      058c           .word 0x8C05
            0x0ce337b0      18a5           bra 0x0ce341e4
            0x0ce337b2      268c           .word 0x8C26
            0x0ce337b4      .dword 0x0ce36b7a ; aav.0x0ce36b7a
/ (fcn) aav.0x0ce337b8 166
|   aav.0x0ce337b8 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce338d8 (+0x42)
|           ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f98)
|           0x0ce337b8      9f90           mov.w @(0x13E,PC),r0
|           0x0ce337ba      03e3           mov 0x03,r3
|           0x0ce337bc      e62f           mov.l r14,@-r15
|           0x0ce337be      436e           mov r4,r14
|           0x0ce337c0      224f           sts.l pr,@-r15
|           0x0ce337c2      340e           mov.b r3,@(r0,r14)
|           0x0ce337c4      50d3           mov.l @(0x140,PC),r3
|           0x0ce337c6      0b43           jsr @r3
|           0x0ce337c8      e364           mov r14,r4
|           0x0ce337ca      0e60           exts.b r0,r0
|           0x0ce337cc      1140           cmp/pz r0
|           0x0ce337ce      2589           bt 0x0ce3381c
|           0x0ce337d0      e784           mov.b @(0x7,r14),r0
|           0x0ce337d2      0170           add 0x01,r0
|           0x0ce337d4      e780           mov.b r0,@(0x7,r14)
|           0x0ce337d6      4dc7           mova @(0x134,PC),r0
|           0x0ce337d8      08f3           fmov @r0,fr3
|           0x0ce337da      5ce0           mov 0x5C,r0
|           0x0ce337dc      37fe           fmov fr3,@(r0,r14)
|           0x0ce337de      4cc7           mova @(0x130,PC),r0
|           0x0ce337e0      08f3           fmov @r0,fr3
|           0x0ce337e2      68e0           mov 0x68,r0
|           0x0ce337e4      37fe           fmov fr3,@(r0,r14)
|           0x0ce337e6      4bc7           mova @(0x12C,PC),r0
|           0x0ce337e8      08f3           fmov @r0,fr3
|           0x0ce337ea      60e0           mov 0x60,r0
|           0x0ce337ec      37fe           fmov fr3,@(r0,r14)
|           0x0ce337ee      4ac7           mova @(0x128,PC),r0
|           0x0ce337f0      08f3           fmov @r0,fr3
|           0x0ce337f2      6ce0           mov 0x6C,r0
|           0x0ce337f4      37fe           fmov fr3,@(r0,r14)
|           0x0ce337f6      8190           mov.w @(0x102,PC),r0
|           0x0ce337f8      ec03           mov.b @(r0,r14),r3
|           0x0ce337fa      3823           tst r3,r3
|           0x0ce337fc      088d           bt.s 0x0ce33810
|           0x0ce337fe      21e6           mov 0x21,r6
            0x0ce33800      5ce0           mov 0x5C,r0
            0x0ce33802      e6f3           fmov @(r0,r14),fr3
            0x0ce33804      4df3           fneg fr3
            0x0ce33806      37fe           fmov fr3,@(r0,r14)
            0x0ce33808      68e0           mov 0x68,r0
            0x0ce3380a      e6f3           fmov @(r0,r14),fr3
            0x0ce3380c      4df3           fneg fr3
            0x0ce3380e      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from aav.0x0ce337b8 (0xce337fc)
|           0x0ce33810      264f           lds.l @r15+,pr
|           0x0ce33812      42d3           mov.l @(0x108,PC),r3
|           0x0ce33814      0fe5           mov 0x0F,r5
|           0x0ce33816      e364           mov r14,r4
|           0x0ce33818      2b43           jmp @r3
|           0x0ce3381a      f66e           mov.l @r15+,r14
|           ; CODE XREF from aav.0x0ce337b8 (0xce337ce)
|           0x0ce3381c      6f90           mov.w @(0xDE,PC),r0
|           0x0ce3381e      ec02           mov.b @(r0,r14),r2
|           0x0ce33820      2822           tst r2,r2
|           0x0ce33822      2189           bt 0x0ce33868
|           0x0ce33824      00e3           mov 0x00,r3
|           0x0ce33826      3365           mov r3,r5
|           0x0ce33828      3366           mov r3,r6
|           0x0ce3382a      340e           mov.b r3,@(r0,r14)
|           0x0ce3382c      3cd3           mov.l @(0xF0,PC),r3
|           0x0ce3382e      0b43           jsr @r3
|           0x0ce33830      e364           mov r14,r4
|           0x0ce33832      6590           mov.w @(0xCA,PC),r0
|           0x0ce33834      02e3           mov 0x02,r3
|           0x0ce33836      ee04           mov.l @(r0,r14),r4
|           0x0ce33838      ec70           add 0xEC,r0
|           0x0ce3383a      e604           mov.l r14,@(r0,r4)
|           0x0ce3383c      4270           add 0x42,r0
|           0x0ce3383e      3404           mov.b r3,@(r0,r4)
|           0x0ce33840      5f70           add 0x5F,r0
|           0x0ce33842      ec00           mov.b @(r0,r14),r0
|           0x0ce33844      0c60           extu.b r0,r0
|           0x0ce33846      0388           cmp/eq 0x03,r0
|           0x0ce33848      048b           bf 0x0ce33854
|           0x0ce3384a      5a90           mov.w @(0xB4,PC),r0
|           0x0ce3384c      44e5           mov 0x44,r5
|           0x0ce3384e      5404           mov.b r5,@(r0,r4)
|           0x0ce33850      0aa0           bra 0x0ce33868
|           0x0ce33852      540e           mov.b r5,@(r0,r14)
|           ; CODE XREF from aav.0x0ce337b8 (0xce33848)
|           0x0ce33854      5690           mov.w @(0xAC,PC),r0
|           0x0ce33856      ec02           mov.b @(r0,r14),r2
|           0x0ce33858      fe70           add 0xFE,r0
|           0x0ce3385a      4372           add 0x43,r2
|           0x0ce3385c      2404           mov.b r2,@(r0,r4)
|           0x0ce3385e      0270           add 0x02,r0
|           0x0ce33860      ec03           mov.b @(r0,r14),r3
|           0x0ce33862      fe70           add 0xFE,r0
|           0x0ce33864      4373           add 0x43,r3
|           0x0ce33866      340e           mov.b r3,@(r0,r14)
|           ; CODE XREFS from aav.0x0ce337b8 (0xce33822, 0xce33850)
|           0x0ce33868      264f           lds.l @r15+,pr
|           0x0ce3386a      0b00           rts 
\           0x0ce3386c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3386e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f9c)
            0x0ce3386e      e62f           mov.l r14,@-r15
            0x0ce33870      5ce1           mov 0x5C,r1
            0x0ce33872      436e           mov r4,r14
            0x0ce33874      ec31           add r14,r1
            0x0ce33876      34e0           mov 0x34,r0
            0x0ce33878      2ad3           mov.l @(0xA8,PC),r3
            0x0ce3387a      224f           sts.l pr,@-r15
            0x0ce3387c      e6f2           fmov @(r0,r14),fr2
            0x0ce3387e      18f3           fmov @r1,fr3
            0x0ce33880      68e1           mov 0x68,r1
            0x0ce33882      ec31           add r14,r1
            0x0ce33884      30f2           fadd fr3,fr2
            0x0ce33886      27fe           fmov fr2,@(r0,r14)
            0x0ce33888      5ce0           mov 0x5C,r0
            0x0ce3388a      18f3           fmov @r1,fr3
            0x0ce3388c      60e1           mov 0x60,r1
            0x0ce3388e      e6f2           fmov @(r0,r14),fr2
            0x0ce33890      ec31           add r14,r1
            0x0ce33892      30f2           fadd fr3,fr2
            0x0ce33894      27fe           fmov fr2,@(r0,r14)
            0x0ce33896      38e0           mov 0x38,r0
            0x0ce33898      e6f2           fmov @(r0,r14),fr2
            0x0ce3389a      18f3           fmov @r1,fr3
            0x0ce3389c      6ce1           mov 0x6C,r1
            0x0ce3389e      ec31           add r14,r1
            0x0ce338a0      30f2           fadd fr3,fr2
            0x0ce338a2      27fe           fmov fr2,@(r0,r14)
            0x0ce338a4      60e0           mov 0x60,r0
            0x0ce338a6      e6f2           fmov @(r0,r14),fr2
            0x0ce338a8      18f3           fmov @r1,fr3
            0x0ce338aa      30f2           fadd fr3,fr2
/ (fcn) fcn.0ce338ac 44
|   fcn.0ce338ac (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce33d6c (+0x92)
|           0x0ce338ac      27fe           fmov fr2,@(r0,r14)
|           0x0ce338ae      0b43           jsr @r3
|           0x0ce338b0      e364           mov r14,r4
|           0x0ce338b2      0c60           extu.b r0,r0
|           0x0ce338b4      0820           tst r0,r0
|           0x0ce338b6      0c89           bt 0x0ce338d2
|           0x0ce338b8      1bd3           mov.l @(0x6C,PC),r3
|           0x0ce338ba      0b43           jsr @r3
|           0x0ce338bc      e364           mov r14,r4
|           0x0ce338be      e784           mov.b @(0x7,r14),r0
|           0x0ce338c0      e364           mov r14,r4
|           0x0ce338c2      16d3           mov.l @(0x58,PC),r3
|           0x0ce338c4      22e6           mov 0x22,r6
|           0x0ce338c6      0170           add 0x01,r0
|           0x0ce338c8      e780           mov.b r0,@(0x7,r14)
|           0x0ce338ca      0fe5           mov 0x0F,r5
|           0x0ce338cc      264f           lds.l @r15+,pr
|           0x0ce338ce      2b43           jmp @r3
|           0x0ce338d0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce338ac (0xce338b6)
|           0x0ce338d2      264f           lds.l @r15+,pr
|           0x0ce338d4      0b00           rts 
\           0x0ce338d6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce338d8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fa0)
            0x0ce338d8      224f           sts.l pr,@-r15
            0x0ce338da      fc7f           add 0xFC,r15
            0x0ce338dc      0ad3           mov.l @(0x28,PC),r3
            0x0ce338de      0b43           jsr @r3
            0x0ce338e0      422f           mov.l r4,@r15
            0x0ce338e2      0e60           exts.b r0,r0
            0x0ce338e4      1140           cmp/pz r0
            0x0ce338e6      0489           bt 0x0ce338f2
            0x0ce338e8      f264           mov.l @r15,r4
            0x0ce338ea      047f           add 0x04,r15
            0x0ce338ec      0fd3           mov.l @(0x3C,PC),r3
            0x0ce338ee      2b43           jmp @r3
            0x0ce338f0      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce338d8 (+0xe)
            0x0ce338f2      047f           add 0x04,r15
            0x0ce338f4      264f           lds.l @r15+,pr
            0x0ce338f6      0b00           rts 
            0x0ce338f8      0900           nop 
            0x0ce338fa      f201           stc r7_bank,r1
            0x0ce338fc      d201           stc r5_bank,r1
            0x0ce338fe      4101           .word 0x0141
            0x0ce33900      c801           .word 0x01C8
            0x0ce33902      a101           .word 0x01A1
            0x0ce33904      a301           ocbp @r1
            0x0ce33906      0000           .word 0x0000
            0x0ce33908      ee4d           ldc r13,r6_bank
            0x0ce3390a      038c           .word 0x8C03
            0x0ce3390c      aaaa           bra 0x0ce32e64
            0x0ce3390e      ba40           .word 0x40BA
            0x0ce33910      5555           mov.l @(0x14,r5),r5
            0x0ce33912      d5bd           bsr fcn.0ce334c0
            0x0ce33914      dbb6           bsr fcn.0ce346ce
            0x0ce33916      4d41           shld r4,r1
            0x0ce33918      dbb6           bsr fcn.0ce346d2
            0x0ce3391a      4dbf           bsr aav.0x0ce337b8
            0x0ce3391c      8c4e           shad r8,r14
            0x0ce3391e      038c           .word 0x8C03
            0x0ce33920      c4fe           fcmp/eq fr12,fr14
            0x0ce33922      028c           .word 0x8C02
            0x0ce33924      e22c           mov.l r14,@r12
            0x0ce33926      058c           .word 0x8C05
            0x0ce33928      b411           mov.l r11,@(0x10,r1)
            0x0ce3392a      058c           .word 0x8C05
            0x0ce3392c      4816           mov.l r4,@(0x20,r6)
            0x0ce3392e      058c           .word 0x8C05
            ;-- aav.0x0ce33930:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36f1c)
            0x0ce33930      8390           mov.w @(0x106,PC),r0
            0x0ce33932      01e3           mov 0x01,r3
            0x0ce33934      e62f           mov.l r14,@-r15
            0x0ce33936      436e           mov r4,r14
            0x0ce33938      340e           mov.b r3,@(r0,r14)
            0x0ce3393a      0370           add 0x03,r0
            0x0ce3393c      02e4           mov 0x02,r4
            0x0ce3393e      43d1           mov.l @(0x10C,PC),r1
            0x0ce33940      440e           mov.b r4,@(r0,r14)
            0x0ce33942      0870           add 0x08,r0
            0x0ce33944      440e           mov.b r4,@(r0,r14)
            0x0ce33946      e364           mov r14,r4
            0x0ce33948      e784           mov.b @(0x7,r14),r0
            0x0ce3394a      0c60           extu.b r0,r0
            0x0ce3394c      0840           shll2 r0
            0x0ce3394e      1e03           mov.l @(r0,r1),r3
            0x0ce33950      2b43           jmp @r3
            0x0ce33952      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33954:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36dfc)
            0x0ce33954      4363           mov r4,r3
            0x0ce33956      3ed1           mov.l @(0xF8,PC),r1
            0x0ce33958      462f           mov.l r4,@-r15
            0x0ce3395a      3684           mov.b @(0x6,r3),r0
            0x0ce3395c      0c60           extu.b r0,r0
            0x0ce3395e      0840           shll2 r0
            0x0ce33960      1e03           mov.l @(r0,r1),r3
            0x0ce33962      2b43           jmp @r3
            0x0ce33964      047f           add 0x04,r15
            ;-- aav.0x0ce33966:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fa4)
            0x0ce33966      6990           mov.w @(0xD2,PC),r0
            0x0ce33968      e62f           mov.l r14,@-r15
            0x0ce3396a      436e           mov r4,r14
            0x0ce3396c      224f           sts.l pr,@-r15
            0x0ce3396e      ec00           mov.b @(r0,r14),r0
            0x0ce33970      0c60           extu.b r0,r0
            0x0ce33972      0688           cmp/eq 0x06,r0
            0x0ce33974      058b           bf 0x0ce33982
            0x0ce33976      6390           mov.w @(0xC6,PC),r0
            0x0ce33978      10e3           mov 0x10,r3
            0x0ce3397a      6092           mov.w @(0xC0,PC),r2
            0x0ce3397c      240e           mov.b r2,@(r0,r14)
            0x0ce3397e      0170           add 0x01,r0
            0x0ce33980      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce33966 (+0xe)
            0x0ce33982      e684           mov.b @(0x6,r14),r0
            0x0ce33984      33d3           mov.l @(0xCC,PC),r3
            0x0ce33986      0170           add 0x01,r0
            0x0ce33988      e680           mov.b r0,@(0x6,r14)
            0x0ce3398a      0b43           jsr @r3
            0x0ce3398c      e364           mov r14,r4
            0x0ce3398e      32c7           mova @(0xC8,PC),r0
            0x0ce33990      08f3           fmov @r0,fr3
            0x0ce33992      5ce0           mov 0x5C,r0
            0x0ce33994      37fe           fmov fr3,@(r0,r14)
            0x0ce33996      31c7           mova @(0xC4,PC),r0
            0x0ce33998      08f3           fmov @r0,fr3
            0x0ce3399a      68e0           mov 0x68,r0
            0x0ce3399c      37fe           fmov fr3,@(r0,r14)
            0x0ce3399e      5090           mov.w @(0xA0,PC),r0
            0x0ce339a0      ec03           mov.b @(r0,r14),r3
            0x0ce339a2      3823           tst r3,r3
            0x0ce339a4      078b           bf 0x0ce339b6
            0x0ce339a6      5ce0           mov 0x5C,r0
            0x0ce339a8      e6f3           fmov @(r0,r14),fr3
            0x0ce339aa      4df3           fneg fr3
            0x0ce339ac      37fe           fmov fr3,@(r0,r14)
            0x0ce339ae      68e0           mov 0x68,r0
            0x0ce339b0      e6f3           fmov @(r0,r14),fr3
            0x0ce339b2      4df3           fneg fr3
            0x0ce339b4      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce33966 (+0x3e)
            0x0ce339b6      2ad3           mov.l @(0xA8,PC),r3
            0x0ce339b8      28e0           mov 0x28,r0
            0x0ce339ba      0fe5           mov 0x0F,r5
            0x0ce339bc      ee81           mov.w r0,@(0x1C,r14)
            0x0ce339be      23e6           mov 0x23,r6
            0x0ce339c0      0b43           jsr @r3
            0x0ce339c2      e364           mov r14,r4
            0x0ce339c4      264f           lds.l @r15+,pr
            0x0ce339c6      27d2           mov.l @(0x9C,PC),r2
            0x0ce339c8      e364           mov r14,r4
            0x0ce339ca      3ce7           mov 0x3C,r7
            0x0ce339cc      32e6           mov 0x32,r6
            0x0ce339ce      0ae5           mov 0x0A,r5
            0x0ce339d0      2b42           jmp @r2
            0x0ce339d2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce339d4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fa8)
            0x0ce339d4      e62f           mov.l r14,@-r15
            0x0ce339d6      d62f           mov.l r13,@-r15
            0x0ce339d8      c62f           mov.l r12,@-r15
            0x0ce339da      224f           sts.l pr,@-r15
            0x0ce339dc      f07f           add 0xF0,r15
            0x0ce339de      3190           mov.w @(0x62,PC),r0
            0x0ce339e0      436e           mov r4,r14
            0x0ce339e2      02ec           mov 0x02,r12
            0x0ce339e4      c50e           mov.w r12,@(r0,r14)
            0x0ce339e6      1470           add 0x14,r0
            0x0ce339e8      c40e           mov.b r12,@(r0,r14)
            0x0ce339ea      05e3           mov 0x05,r3
            0x0ce339ec      2b90           mov.w @(0x56,PC),r0
            0x0ce339ee      340e           mov.b r3,@(r0,r14)
            0x0ce339f0      2a90           mov.w @(0x54,PC),r0
            0x0ce339f2      ec03           mov.b @(r0,r14),r3
            0x0ce339f4      1543           cmp/pl r3
            0x0ce339f6      168f           bf.s 0x0ce33a26
            0x0ce339f8      00ed           mov 0x00,r13
            0x0ce339fa      2190           mov.w @(0x42,PC),r0
            0x0ce339fc      f365           mov r15,r5
            0x0ce339fe      1cd3           mov.l @(0x70,PC),r3
            0x0ce33a00      0475           add 0x04,r5
            0x0ce33a02      d40e           mov.b r13,@(r0,r14)
            0x0ce33a04      0170           add 0x01,r0
            0x0ce33a06      d40e           mov.b r13,@(r0,r14)
            0x0ce33a08      01e6           mov 0x01,r6
            0x0ce33a0a      1d90           mov.w @(0x3A,PC),r0
            0x0ce33a0c      d40e           mov.b r13,@(r0,r14)
            0x0ce33a0e      16c7           mova @(0x58,PC),r0
            0x0ce33a10      08f3           fmov @r0,fr3
            0x0ce33a12      04e0           mov 0x04,r0
            0x0ce33a14      37ff           fmov fr3,@(r0,r15)
            0x0ce33a16      15c7           mova @(0x54,PC),r0
            0x0ce33a18      08f3           fmov @r0,fr3
            0x0ce33a1a      08e0           mov 0x08,r0
            0x0ce33a1c      37ff           fmov fr3,@(r0,r15)
            0x0ce33a1e      0b43           jsr @r3
            0x0ce33a20      e364           mov r14,r4
            0x0ce33a22      8aa0           bra 0x0ce33b3a
            0x0ce33a24      0900           nop 
            ; CODE XREF from aav.0x0ce339d4 (+0x22)
            0x0ce33a26      ec02           mov.b @(r0,r14),r2
            0x0ce33a28      2822           tst r2,r2
            0x0ce33a2a      2689           bt 0x0ce33a7a
            0x0ce33a2c      0690           mov.w @(0xC,PC),r0
            0x0ce33a2e      ec00           mov.b @(r0,r14),r0
            0x0ce33a30      0c60           extu.b r0,r0
            0x0ce33a32      0688           cmp/eq 0x06,r0
            0x0ce33a34      1e8b           bf 0x0ce33a74
            0x0ce33a36      1ea0           bra 0x0ce33a76
            0x0ce33a38      02e1           mov 0x02,r1
            0x0ce33a3a      ea01           .word 0x01EA
            0x0ce33a3c      5502           mov.w r5,@(r0,r2)
            0x0ce33a3e      ff00           mac.l @r15+,@r0+
            0x0ce33a40      f003           .word 0x03F0
            0x0ce33a42      d201           stc r5_bank,r1
            0x0ce33a44      e403           mov.b r14,@(r0,r3)
            0x0ce33a46      2803           .word 0x0328
            0x0ce33a48      4101           .word 0x0141
            0x0ce33a4a      0000           .word 0x0000
            0x0ce33a4c      .dword 0x0ce36f8c ; aav.0x0ce36f8c
            0x0ce33a50      .dword 0x0ce36fa4 ; aav.0x0ce36fa4
            0x0ce33a54      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce33a58      5555           mov.l @(0x14,r5),r5
            0x0ce33a5a      d540           .word 0x40D5
            0x0ce33a5c      5555           mov.l @(0x14,r5),r5
            0x0ce33a5e      d5bd           bsr fcn.0ce3360c
            0x0ce33a60      8c4e           shad r8,r14
            0x0ce33a62      038c           .word 0x8C03
            0x0ce33a64      449a           mov.w @(0x88,PC),r10
            0x0ce33a66      058c           .word 0x8C05
            0x0ce33a68      0000           .word 0x0000
            0x0ce33a6a      20c2           mov.l r0,@(0x80,gbr)
            0x0ce33a6c      2449           rotcl r9
            0x0ce33a6e      1a43           lds r3,macl
            0x0ce33a70      3408           mov.b r3,@(r0,r8)
            0x0ce33a72      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce339d4 (+0x60)
            0x0ce33a74      00e1           mov 0x00,r1
            ; CODE XREF from aav.0x0ce339d4 (+0x62)
            0x0ce33a76      8590           mov.w @(0x10A,PC),r0
            0x0ce33a78      140e           mov.b r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce339d4 (+0x56)
            0x0ce33a7a      8493           mov.w @(0x108,PC),r3
            0x0ce33a7c      ec33           add r14,r3
            0x0ce33a7e      3184           mov.b @(0x1,r3),r0
            0x0ce33a80      0820           tst r0,r0
            0x0ce33a82      108b           bf 0x0ce33aa6
            0x0ce33a84      43d3           mov.l @(0x10C,PC),r3
            0x0ce33a86      0b43           jsr @r3
            0x0ce33a88      e364           mov r14,r4
            0x0ce33a8a      5ce1           mov 0x5C,r1
            0x0ce33a8c      ec31           add r14,r1
            0x0ce33a8e      34e0           mov 0x34,r0
            0x0ce33a90      18f3           fmov @r1,fr3
            0x0ce33a92      e6f2           fmov @(r0,r14),fr2
            0x0ce33a94      68e1           mov 0x68,r1
            0x0ce33a96      ec31           add r14,r1
            0x0ce33a98      30f2           fadd fr3,fr2
            0x0ce33a9a      27fe           fmov fr2,@(r0,r14)
            0x0ce33a9c      5ce0           mov 0x5C,r0
            0x0ce33a9e      e6f2           fmov @(r0,r14),fr2
            0x0ce33aa0      18f3           fmov @r1,fr3
            0x0ce33aa2      30f2           fadd fr3,fr2
            0x0ce33aa4      27fe           fmov fr2,@(r0,r14)
            ; CODE XREF from aav.0x0ce339d4 (+0xae)
            0x0ce33aa6      3cd3           mov.l @(0xF0,PC),r3
            0x0ce33aa8      0b43           jsr @r3
            0x0ce33aaa      e364           mov r14,r4
            0x0ce33aac      3bd2           mov.l @(0xEC,PC),r2
            0x0ce33aae      0b42           jsr @r2
            0x0ce33ab0      e364           mov r14,r4
            0x0ce33ab2      0820           tst r0,r0
            0x0ce33ab4      268d           bt.s 0x0ce33b04
            0x0ce33ab6      022f           mov.l r0,@r15
            0x0ce33ab8      e684           mov.b @(0x6,r14),r0
            0x0ce33aba      0170           add 0x01,r0
            0x0ce33abc      e680           mov.b r0,@(0x6,r14)
            0x0ce33abe      d360           mov r13,r0
            0x0ce33ac0      0900           nop 
            0x0ce33ac2      37d3           mov.l @(0xDC,PC),r3
            0x0ce33ac4      05e6           mov 0x05,r6
            0x0ce33ac6      e780           mov.b r0,@(0x7,r14)
            0x0ce33ac8      6365           mov r6,r5
            0x0ce33aca      0b43           jsr @r3
            0x0ce33acc      e364           mov r14,r4
            0x0ce33ace      5c90           mov.w @(0xB8,PC),r0
            0x0ce33ad0      f365           mov r15,r5
            0x0ce33ad2      5992           mov.w @(0xB2,PC),r2
            0x0ce33ad4      0475           add 0x04,r5
            0x0ce33ad6      35d3           mov.l @(0xD4,PC),r3
            0x0ce33ad8      240e           mov.b r2,@(r0,r14)
            0x0ce33ada      32c7           mova @(0xC8,PC),r0
            0x0ce33adc      08f3           fmov @r0,fr3
            0x0ce33ade      04e0           mov 0x04,r0
            0x0ce33ae0      37ff           fmov fr3,@(r0,r15)
            0x0ce33ae2      31c7           mova @(0xC4,PC),r0
            0x0ce33ae4      08f3           fmov @r0,fr3
            0x0ce33ae6      08e0           mov 0x08,r0
            0x0ce33ae8      37ff           fmov fr3,@(r0,r15)
            0x0ce33aea      0b43           jsr @r3
            0x0ce33aec      e364           mov r14,r4
            0x0ce33aee      30d2           mov.l @(0xC0,PC),r2
            0x0ce33af0      0fe5           mov 0x0F,r5
            0x0ce33af2      25e6           mov 0x25,r6
            0x0ce33af4      0b42           jsr @r2
            0x0ce33af6      e364           mov r14,r4
            0x0ce33af8      2ed3           mov.l @(0xB8,PC),r3
            0x0ce33afa      f265           mov.l @r15,r5
            0x0ce33afc      0b43           jsr @r3
            0x0ce33afe      e364           mov r14,r4
            0x0ce33b00      1ba0           bra 0x0ce33b3a
            0x0ce33b02      0900           nop 
            ; CODE XREF from aav.0x0ce339d4 (+0xe0)
            0x0ce33b04      4290           mov.w @(0x84,PC),r0
            0x0ce33b06      ec03           mov.b @(r0,r14),r3
            0x0ce33b08      3823           tst r3,r3
            0x0ce33b0a      0589           bt 0x0ce33b18
            0x0ce33b0c      3f90           mov.w @(0x7E,PC),r0
            0x0ce33b0e      ec00           mov.b @(r0,r14),r0
            0x0ce33b10      01c8           tst 0x01,r0
            0x0ce33b12      0b8b           bf 0x0ce33b2c
            0x0ce33b14      04a0           bra 0x0ce33b20
            0x0ce33b16      0900           nop 
            ; CODE XREF from aav.0x0ce339d4 (+0x136)
            0x0ce33b18      3990           mov.w @(0x72,PC),r0
            0x0ce33b1a      ec03           mov.b @(r0,r14),r3
            0x0ce33b1c      c823           tst r12,r3
            0x0ce33b1e      058b           bf 0x0ce33b2c
            ; CODE XREF from aav.0x0ce339d4 (+0x140)
            0x0ce33b20      ee85           mov.w @(0x1C,r14),r0
            0x0ce33b22      ff70           add 0xFF,r0
            0x0ce33b24      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33b26      0f60           exts.w r0,r0
            0x0ce33b28      0820           tst r0,r0
            0x0ce33b2a      068b           bf 0x0ce33b3a
            ; CODE XREFS from aav.0x0ce339d4 (+0x13e, +0x14a)
            0x0ce33b2c      20d3           mov.l @(0x80,PC),r3
            0x0ce33b2e      03e0           mov 0x03,r0
            0x0ce33b30      0fe5           mov 0x0F,r5
            0x0ce33b32      e680           mov.b r0,@(0x6,r14)
            0x0ce33b34      24e6           mov 0x24,r6
            0x0ce33b36      0b43           jsr @r3
            0x0ce33b38      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce339d4 (+0x4e, +0x12c, +0x156)
            0x0ce33b3a      107f           add 0x10,r15
            0x0ce33b3c      264f           lds.l @r15+,pr
            0x0ce33b3e      f66c           mov.l @r15+,r12
            0x0ce33b40      f66d           mov.l @r15+,r13
            0x0ce33b42      0b00           rts 
            0x0ce33b44      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33b46:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fbc)
            0x0ce33b46      e62f           mov.l r14,@-r15
            0x0ce33b48      224f           sts.l pr,@-r15
            0x0ce33b4a      fc7f           add 0xFC,r15
            0x0ce33b4c      2093           mov.w @(0x40,PC),r3
            0x0ce33b4e      436e           mov r4,r14
            0x0ce33b50      ec33           add r14,r3
            0x0ce33b52      322f           mov.l r3,@r15
            0x0ce33b54      10d3           mov.l @(0x40,PC),r3
            0x0ce33b56      0b43           jsr @r3
            0x0ce33b58      e364           mov r14,r4
            0x0ce33b5a      0e60           exts.b r0,r0
            0x0ce33b5c      1140           cmp/pz r0
            0x0ce33b5e      0d89           bt 0x0ce33b7c
            0x0ce33b60      e784           mov.b @(0x7,r14),r0
            0x0ce33b62      0fe5           mov 0x0F,r5
            0x0ce33b64      e364           mov r14,r4
            0x0ce33b66      26e6           mov 0x26,r6
            0x0ce33b68      0170           add 0x01,r0
            0x0ce33b6a      e780           mov.b r0,@(0x7,r14)
            0x0ce33b6c      00e0           mov 0x00,r0
            0x0ce33b6e      f263           mov.l @r15,r3
            0x0ce33b70      3280           mov.b r0,@(0x2,r3)
            0x0ce33b72      047f           add 0x04,r15
            0x0ce33b74      264f           lds.l @r15+,pr
            0x0ce33b76      0ed3           mov.l @(0x38,PC),r3
            0x0ce33b78      2b43           jmp @r3
            0x0ce33b7a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33b46 (+0x18)
            0x0ce33b7c      047f           add 0x04,r15
            0x0ce33b7e      264f           lds.l @r15+,pr
            0x0ce33b80      0b00           rts 
            0x0ce33b82      f66e           mov.l @r15+,r14
            0x0ce33b84      f103           .word 0x03F1
            0x0ce33b86      5001           .word 0x0150
            0x0ce33b88      ca00           .word 0x00CA
            0x0ce33b8a      f701           mul.l r15,r1
            0x0ce33b8c      d201           stc r5_bank,r1
            0x0ce33b8e      fd01           mov.w @(r0,r15),r1
            0x0ce33b90      a402           mov.b r10,@(r0,r2)
            0x0ce33b92      0000           .word 0x0000
            0x0ce33b94      e211           mov.l r14,@(0x8,r1)
            0x0ce33b96      058c           .word 0x8C05
            0x0ce33b98      ee4d           ldc r13,r6_bank
            0x0ce33b9a      038c           .word 0x8C03
            0x0ce33b9c      9057           mov.l @(0x0,r9),r7
            0x0ce33b9e      048c           .word 0x8C04
            0x0ce33ba0      c4fe           fcmp/eq fr12,fr14
            0x0ce33ba2      028c           .word 0x8C02
            0x0ce33ba4      aaaa           bra 0x0ce330fc
            0x0ce33ba6      12c3           trapa 0x12
            0x0ce33ba8      b66d           mov.l @r11+,r13
            0x0ce33baa      2b43           jmp @r3
            0x0ce33bac      6036           cmp/eq r6,r6
            0x0ce33bae      108c           .word 0x8C10
            0x0ce33bb0      8c4e           shad r8,r14
            0x0ce33bb2      038c           .word 0x8C03
            0x0ce33bb4      d823           tst r13,r3
            0x0ce33bb6      058c           .word 0x8C05
            ;-- aav.0x0ce33bb8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fc0)
            0x0ce33bb8      e62f           mov.l r14,@-r15
            0x0ce33bba      224f           sts.l pr,@-r15
            0x0ce33bbc      f47f           add 0xF4,r15
            0x0ce33bbe      42d3           mov.l @(0x108,PC),r3
            0x0ce33bc0      0b43           jsr @r3
            0x0ce33bc2      436e           mov r4,r14
            0x0ce33bc4      0e60           exts.b r0,r0
            0x0ce33bc6      1140           cmp/pz r0
            0x0ce33bc8      1989           bt 0x0ce33bfe
            0x0ce33bca      e784           mov.b @(0x7,r14),r0
            0x0ce33bcc      0170           add 0x01,r0
            0x0ce33bce      e780           mov.b r0,@(0x7,r14)
            0x0ce33bd0      3ec7           mova @(0xF8,PC),r0
            0x0ce33bd2      08f4           fmov @r0,fr4
            0x0ce33bd4      7490           mov.w @(0xE8,PC),r0
            0x0ce33bd6      ec03           mov.b @(r0,r14),r3
            0x0ce33bd8      3823           tst r3,r3
            0x0ce33bda      0389           bt 0x0ce33be4
            0x0ce33bdc      34e0           mov 0x34,r0
            0x0ce33bde      e6f3           fmov @(r0,r14),fr3
            0x0ce33be0      03a0           bra 0x0ce33bea
            0x0ce33be2      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce33bb8 (+0x22)
            0x0ce33be4      34e0           mov 0x34,r0
            0x0ce33be6      e6f3           fmov @(r0,r14),fr3
            0x0ce33be8      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce33bb8 (+0x28)
            0x0ce33bea      39d3           mov.l @(0xE4,PC),r3
            0x0ce33bec      0fe5           mov 0x0F,r5
            0x0ce33bee      37fe           fmov fr3,@(r0,r14)
            0x0ce33bf0      27e6           mov 0x27,r6
            0x0ce33bf2      0b43           jsr @r3
            0x0ce33bf4      e364           mov r14,r4
            0x0ce33bf6      0c7f           add 0x0C,r15
            0x0ce33bf8      264f           lds.l @r15+,pr
            0x0ce33bfa      0b00           rts 
            0x0ce33bfc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33bb8 (+0x10)
            0x0ce33bfe      6090           mov.w @(0xC0,PC),r0
            0x0ce33c00      ec02           mov.b @(r0,r14),r2
            0x0ce33c02      2822           tst r2,r2
            0x0ce33c04      3589           bt 0x0ce33c72
            0x0ce33c06      33d4           mov.l @(0xCC,PC),r4
            0x0ce33c08      00e3           mov 0x00,r3
            0x0ce33c0a      01e5           mov 0x01,r5
            0x0ce33c0c      340e           mov.b r3,@(r0,r14)
            0x0ce33c0e      5360           mov r5,r0
            0x0ce33c10      0900           nop 
            0x0ce33c12      31d3           mov.l @(0xC4,PC),r3
            0x0ce33c14      4580           mov.b r0,@(0x5,r4)
            0x0ce33c16      4680           mov.b r0,@(0x6,r4)
            0x0ce33c18      0b43           jsr @r3
            0x0ce33c1a      e364           mov r14,r4
            0x0ce33c1c      5290           mov.w @(0xA4,PC),r0
            0x0ce33c1e      45e5           mov 0x45,r5
            0x0ce33c20      ee04           mov.l @(r0,r14),r4
            0x0ce33c22      ec70           add 0xEC,r0
            0x0ce33c24      e604           mov.l r14,@(r0,r4)
            0x0ce33c26      ed70           add 0xED,r0
            0x0ce33c28      540e           mov.b r5,@(r0,r14)
            0x0ce33c2a      5404           mov.b r5,@(r0,r4)
            0x0ce33c2c      6170           add 0x61,r0
            0x0ce33c2e      ec03           mov.b @(r0,r14),r3
            0x0ce33c30      3823           tst r3,r3
            0x0ce33c32      0c8b           bf 0x0ce33c4e
            0x0ce33c34      29c7           mova @(0xA4,PC),r0
            0x0ce33c36      2ad3           mov.l @(0xA8,PC),r3
            0x0ce33c38      08f3           fmov @r0,fr3
            0x0ce33c3a      04e0           mov 0x04,r0
            0x0ce33c3c      f365           mov r15,r5
            0x0ce33c3e      02e6           mov 0x02,r6
            0x0ce33c40      3aff           fmov fr3,@r15
            0x0ce33c42      8df3           fldi0 fr3
            0x0ce33c44      37ff           fmov fr3,@(r0,r15)
            0x0ce33c46      0b43           jsr @r3
            0x0ce33c48      e364           mov r14,r4
            0x0ce33c4a      0fa0           bra 0x0ce33c6c
            0x0ce33c4c      0900           nop 
            ; CODE XREF from aav.0x0ce33bb8 (+0x7a)
            0x0ce33c4e      34e0           mov 0x34,r0
            0x0ce33c50      24d3           mov.l @(0x90,PC),r3
            0x0ce33c52      46f3           fmov @(r0,r4),fr3
            0x0ce33c54      01e5           mov 0x01,r5
            0x0ce33c56      3690           mov.w @(0x6C,PC),r0
            0x0ce33c58      3aff           fmov fr3,@r15
            0x0ce33c5a      e6f3           fmov @(r0,r14),fr3
            0x0ce33c5c      04e0           mov 0x04,r0
            0x0ce33c5e      37ff           fmov fr3,@(r0,r15)
            0x0ce33c60      0b43           jsr @r3
            0x0ce33c62      f364           mov r15,r4
            0x0ce33c64      20d2           mov.l @(0x80,PC),r2
            0x0ce33c66      49e5           mov 0x49,r5
            0x0ce33c68      0b42           jsr @r2
            0x0ce33c6a      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce33bb8 (+0x92)
            0x0ce33c6c      1fd3           mov.l @(0x7C,PC),r3
            0x0ce33c6e      0b43           jsr @r3
            0x0ce33c70      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce33bb8 (+0x4c)
            0x0ce33c72      0c7f           add 0x0C,r15
            0x0ce33c74      264f           lds.l @r15+,pr
            0x0ce33c76      0b00           rts 
            0x0ce33c78      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33c7a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fc4)
            0x0ce33c7a      e62f           mov.l r14,@-r15
            0x0ce33c7c      224f           sts.l pr,@-r15
            0x0ce33c7e      f47f           add 0xF4,r15
            0x0ce33c80      11d3           mov.l @(0x44,PC),r3
            0x0ce33c82      0b43           jsr @r3
            0x0ce33c84      436e           mov r4,r14
            0x0ce33c86      0e60           exts.b r0,r0
            0x0ce33c88      1140           cmp/pz r0
            0x0ce33c8a      3189           bt 0x0ce33cf0
            0x0ce33c8c      e784           mov.b @(0x7,r14),r0
            0x0ce33c8e      0170           add 0x01,r0
            0x0ce33c90      e780           mov.b r0,@(0x7,r14)
            0x0ce33c92      0ec7           mova @(0x38,PC),r0
            0x0ce33c94      08f4           fmov @r0,fr4
            0x0ce33c96      1390           mov.w @(0x26,PC),r0
            0x0ce33c98      ec03           mov.b @(r0,r14),r3
            0x0ce33c9a      3823           tst r3,r3
            0x0ce33c9c      0389           bt 0x0ce33ca6
            0x0ce33c9e      34e0           mov 0x34,r0
            0x0ce33ca0      e6f3           fmov @(r0,r14),fr3
            0x0ce33ca2      03a0           bra 0x0ce33cac
            0x0ce33ca4      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce33c7a (+0x22)
            0x0ce33ca6      34e0           mov 0x34,r0
            0x0ce33ca8      e6f3           fmov @(r0,r14),fr3
            0x0ce33caa      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce331b6 (+0xc2)
            ; CODE XREF from aav.0x0ce33c7a (+0x28)
            0x0ce33cac      08d3           mov.l @(0x20,PC),r3
            0x0ce33cae      0fe5           mov 0x0F,r5
            0x0ce33cb0      37fe           fmov fr3,@(r0,r14)
            0x0ce33cb2      28e6           mov 0x28,r6
            0x0ce33cb4      0b43           jsr @r3
            0x0ce33cb6      e364           mov r14,r4
            0x0ce33cb8      0c7f           add 0x0C,r15
            0x0ce33cba      264f           lds.l @r15+,pr
            0x0ce33cbc      0b00           rts 
            0x0ce33cbe      f66e           mov.l @r15+,r14
            0x0ce33cc0      d201           stc r5_bank,r1
            0x0ce33cc2      4101           .word 0x0141
            0x0ce33cc4      c801           .word 0x01C8
            0x0ce33cc6      1c04           mov.b @(r0,r1),r4
            0x0ce33cc8      ee4d           ldc r13,r6_bank
            0x0ce33cca      038c           .word 0x8C03
            0x0ce33ccc      0000           .word 0x0000
            0x0ce33cce      2043           shal r3
            0x0ce33cd0      8c4e           shad r8,r14
            0x0ce33cd2      038c           .word 0x8C03
            0x0ce33cd4      18a5           bra 0x0ce34708
            0x0ce33cd6      268c           .word 0x8C26
            0x0ce33cd8      fc23           cmp/str r15,r3
            0x0ce33cda      048c           .word 0x8C04
            0x0ce33cdc      0000           .word 0x0000
            0x0ce33cde      20c3           trapa 0x20
            0x0ce33ce0      b6da           mov.l @(0x2D8,PC),r10
            0x0ce33ce2      0f8c           .word 0x8C0F
            0x0ce33ce4      ca25           xor r12,r5
            0x0ce33ce6      108c           .word 0x8C10
            0x0ce33ce8      3a22           xor r3,r2
            0x0ce33cea      048c           .word 0x8C04
            0x0ce33cec      3c93           mov.w @(0x78,PC),r3
            0x0ce33cee      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce33c7a (+0x10)
            0x0ce33cf0      6d90           mov.w @(0xDA,PC),r0
            0x0ce33cf2      ec02           mov.b @(r0,r14),r2
            0x0ce33cf4      2822           tst r2,r2
            0x0ce33cf6      3589           bt 0x0ce33d64               ; fcn.0ce33d60+0x4
            0x0ce33cf8      37d4           mov.l @(0xDC,PC),r4
            0x0ce33cfa      00e3           mov 0x00,r3
            0x0ce33cfc      01e5           mov 0x01,r5
            0x0ce33cfe      340e           mov.b r3,@(r0,r14)
            0x0ce33d00      5360           mov r5,r0
            0x0ce33d02      0900           nop 
            0x0ce33d04      35d3           mov.l @(0xD4,PC),r3
            0x0ce33d06      4580           mov.b r0,@(0x5,r4)
            0x0ce33d08      4680           mov.b r0,@(0x6,r4)
            0x0ce33d0a      0b43           jsr @r3
            0x0ce33d0c      e364           mov r14,r4
            0x0ce33d0e      5f90           mov.w @(0xBE,PC),r0
            0x0ce33d10      46e5           mov 0x46,r5
            0x0ce33d12      ee04           mov.l @(r0,r14),r4
            0x0ce33d14      ec70           add 0xEC,r0
            0x0ce33d16      e604           mov.l r14,@(r0,r4)
            0x0ce33d18      ed70           add 0xED,r0
            0x0ce33d1a      540e           mov.b r5,@(r0,r14)
            0x0ce33d1c      5404           mov.b r5,@(r0,r4)
            0x0ce33d1e      6170           add 0x61,r0
            0x0ce33d20      ec03           mov.b @(r0,r14),r3
            0x0ce33d22      3823           tst r3,r3
            0x0ce33d24      0c8b           bf 0x0ce33d40
            0x0ce33d26      2ec7           mova @(0xB8,PC),r0
            0x0ce33d28      2ed3           mov.l @(0xB8,PC),r3
            0x0ce33d2a      08f3           fmov @r0,fr3
            0x0ce33d2c      04e0           mov 0x04,r0
            0x0ce33d2e      f365           mov r15,r5
            0x0ce33d30      02e6           mov 0x02,r6
            0x0ce33d32      3aff           fmov fr3,@r15
            0x0ce33d34      8df3           fldi0 fr3
            0x0ce33d36      37ff           fmov fr3,@(r0,r15)
            0x0ce33d38      0b43           jsr @r3
            0x0ce33d3a      e364           mov r14,r4
            0x0ce33d3c      0fa0           bra 0x0ce33d5e
            0x0ce33d3e      0900           nop 
            ; CODE XREF from aav.0x0ce33c7a (+0xaa)
            0x0ce33d40      34e0           mov 0x34,r0
            0x0ce33d42      29d3           mov.l @(0xA4,PC),r3
            0x0ce33d44      46f3           fmov @(r0,r4),fr3
            0x0ce33d46      01e5           mov 0x01,r5
            0x0ce33d48      4390           mov.w @(0x86,PC),r0
            0x0ce33d4a      3aff           fmov fr3,@r15
            0x0ce33d4c      e6f3           fmov @(r0,r14),fr3
            0x0ce33d4e      04e0           mov 0x04,r0
            0x0ce33d50      37ff           fmov fr3,@(r0,r15)
            0x0ce33d52      0b43           jsr @r3
            0x0ce33d54      f364           mov r15,r4
            0x0ce33d56      25d2           mov.l @(0x94,PC),r2
            0x0ce33d58      49e5           mov 0x49,r5
            0x0ce33d5a      0b42           jsr @r2
            0x0ce33d5c      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce33c7a (+0xc2)
            0x0ce33d5e      24d3           mov.l @(0x90,PC),r3
/ (fcn) fcn.0ce33d60 12
|   fcn.0ce33d60 ();
|           ; CALL XREF from aav.0x0ce33d6c (+0x9a)
|           0x0ce33d60      0b43           jsr @r3
|           0x0ce33d62      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce33c7a (+0x7c)
|           0x0ce33d64      0c7f           add 0x0C,r15
|           0x0ce33d66      264f           lds.l @r15+,pr
|           0x0ce33d68      0b00           rts 
\           0x0ce33d6a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33d6c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fc8)
            0x0ce33d6c      e62f           mov.l r14,@-r15
            0x0ce33d6e      224f           sts.l pr,@-r15
            0x0ce33d70      20d3           mov.l @(0x80,PC),r3
            0x0ce33d72      0b43           jsr @r3
            0x0ce33d74      436e           mov r4,r14
            0x0ce33d76      0e60           exts.b r0,r0
            0x0ce33d78      1140           cmp/pz r0
            0x0ce33d7a      2589           bt 0x0ce33dc8
            0x0ce33d7c      e784           mov.b @(0x7,r14),r0
            0x0ce33d7e      0170           add 0x01,r0
            0x0ce33d80      e780           mov.b r0,@(0x7,r14)
            0x0ce33d82      1dc7           mova @(0x74,PC),r0
            0x0ce33d84      08f3           fmov @r0,fr3
            0x0ce33d86      5ce0           mov 0x5C,r0
            0x0ce33d88      37fe           fmov fr3,@(r0,r14)
            0x0ce33d8a      1cc7           mova @(0x70,PC),r0
            0x0ce33d8c      08f3           fmov @r0,fr3
            0x0ce33d8e      68e0           mov 0x68,r0
            0x0ce33d90      37fe           fmov fr3,@(r0,r14)
            0x0ce33d92      1bc7           mova @(0x6C,PC),r0
            0x0ce33d94      08f3           fmov @r0,fr3
            0x0ce33d96      60e0           mov 0x60,r0
            0x0ce33d98      37fe           fmov fr3,@(r0,r14)
            0x0ce33d9a      1ac7           mova @(0x68,PC),r0
            0x0ce33d9c      08f3           fmov @r0,fr3
            0x0ce33d9e      6ce0           mov 0x6C,r0
            0x0ce33da0      37fe           fmov fr3,@(r0,r14)
            0x0ce33da2      1790           mov.w @(0x2E,PC),r0
            0x0ce33da4      ec03           mov.b @(r0,r14),r3
            0x0ce33da6      3823           tst r3,r3
            0x0ce33da8      088f           bf.s 0x0ce33dbc
            0x0ce33daa      29e6           mov 0x29,r6
            0x0ce33dac      5ce0           mov 0x5C,r0
            0x0ce33dae      e6f3           fmov @(r0,r14),fr3
            0x0ce33db0      4df3           fneg fr3
            0x0ce33db2      37fe           fmov fr3,@(r0,r14)
            0x0ce33db4      68e0           mov 0x68,r0
            0x0ce33db6      e6f3           fmov @(r0,r14),fr3
            0x0ce33db8      4df3           fneg fr3
            0x0ce33dba      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce33d6c (+0x3c)
            0x0ce33dbc      264f           lds.l @r15+,pr
            0x0ce33dbe      12d3           mov.l @(0x48,PC),r3
            0x0ce33dc0      0fe5           mov 0x0F,r5
            0x0ce33dc2      e364           mov r14,r4
            0x0ce33dc4      2b43           jmp @r3
            0x0ce33dc6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33d6c (+0xe)
            0x0ce33dc8      264f           lds.l @r15+,pr
            0x0ce33dca      0b00           rts 
            0x0ce33dcc      f66e           mov.l @r15+,r14
            0x0ce33dce      4101           .word 0x0141
            0x0ce33dd0      c801           .word 0x01C8
            0x0ce33dd2      1c04           mov.b @(r0,r1),r4
            0x0ce33dd4      d201           stc r5_bank,r1
            0x0ce33dd6      0000           .word 0x0000
            0x0ce33dd8      18a5           bra 0x0ce3480c
            0x0ce33dda      268c           .word 0x8C26
            0x0ce33ddc      fc23           cmp/str r15,r3
            0x0ce33dde      048c           .word 0x8C04
            0x0ce33de0      0000           .word 0x0000
            0x0ce33de2      20c3           trapa 0x20
            0x0ce33de4      b6da           mov.l @(0x2D8,PC),r10
            0x0ce33de6      0f8c           .word 0x8C0F
            0x0ce33de8      ca25           xor r12,r5
            0x0ce33dea      108c           .word 0x8C10
            0x0ce33dec      3a22           xor r3,r2
            0x0ce33dee      048c           .word 0x8C04
            0x0ce33df0      3c93           mov.w @(0x78,PC),r3
            0x0ce33df2      058c           .word 0x8C05
            0x0ce33df4      ee4d           ldc r13,r6_bank
            0x0ce33df6      038c           .word 0x8C03
            0x0ce33df8      aaaa           bra 0x0ce33350
            0x0ce33dfa      ba40           .word 0x40BA
            0x0ce33dfc      5555           mov.l @(0x14,r5),r5
            0x0ce33dfe      55bd           bsr fcn.0ce338ac
            0x0ce33e00      4992           mov.w @(0x92,PC),r2
            0x0ce33e02      f841           .word 0x41F8
            0x0ce33e04      b66d           mov.l @r11+,r13
            0x0ce33e06      abbf           bsr fcn.0ce33d60
            0x0ce33e08      8c4e           shad r8,r14
            0x0ce33e0a      038c           .word 0x8C03
            ;-- aav.0x0ce33e0c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fcc)
            0x0ce33e0c      e62f           mov.l r14,@-r15
            0x0ce33e0e      436e           mov r4,r14
            0x0ce33e10      5ce1           mov 0x5C,r1
            0x0ce33e12      d62f           mov.l r13,@-r15
            0x0ce33e14      ec31           add r14,r1
            0x0ce33e16      769d           mov.w @(0xEC,PC),r13
            0x0ce33e18      34e0           mov 0x34,r0
            0x0ce33e1a      224f           sts.l pr,@-r15
            0x0ce33e1c      e6f2           fmov @(r0,r14),fr2
            0x0ce33e1e      ec3d           add r14,r13
            0x0ce33e20      18f3           fmov @r1,fr3
            0x0ce33e22      68e1           mov 0x68,r1
            0x0ce33e24      ec31           add r14,r1
            0x0ce33e26      30f2           fadd fr3,fr2
            0x0ce33e28      27fe           fmov fr2,@(r0,r14)
            0x0ce33e2a      5ce0           mov 0x5C,r0
            0x0ce33e2c      e6f2           fmov @(r0,r14),fr2
            0x0ce33e2e      18f3           fmov @r1,fr3
            0x0ce33e30      60e1           mov 0x60,r1
            0x0ce33e32      ec31           add r14,r1
            0x0ce33e34      30f2           fadd fr3,fr2
            0x0ce33e36      27fe           fmov fr2,@(r0,r14)
            0x0ce33e38      38e0           mov 0x38,r0
            0x0ce33e3a      e6f2           fmov @(r0,r14),fr2
            0x0ce33e3c      18f3           fmov @r1,fr3
            0x0ce33e3e      6ce1           mov 0x6C,r1
            0x0ce33e40      ec31           add r14,r1
            0x0ce33e42      30f2           fadd fr3,fr2
            0x0ce33e44      27fe           fmov fr2,@(r0,r14)
            0x0ce33e46      60e0           mov 0x60,r0
            0x0ce33e48      18f3           fmov @r1,fr3
            0x0ce33e4a      e6f2           fmov @(r0,r14),fr2
            0x0ce33e4c      30f2           fadd fr3,fr2
            0x0ce33e4e      30d3           mov.l @(0xC0,PC),r3
            0x0ce33e50      27fe           fmov fr2,@(r0,r14)
            0x0ce33e52      0b43           jsr @r3
            0x0ce33e54      e364           mov r14,r4
            0x0ce33e56      2fd2           mov.l @(0xBC,PC),r2
            0x0ce33e58      0b42           jsr @r2
            0x0ce33e5a      e364           mov r14,r4
            0x0ce33e5c      0820           tst r0,r0
            0x0ce33e5e      1f89           bt 0x0ce33ea0
            0x0ce33e60      5290           mov.w @(0xA4,PC),r0
            0x0ce33e62      ec02           mov.b @(r0,r14),r2
            0x0ce33e64      2822           tst r2,r2
            0x0ce33e66      0e89           bt 0x0ce33e86
            0x0ce33e68      4f90           mov.w @(0x9E,PC),r0
            0x0ce33e6a      ec03           mov.b @(r0,r14),r3
            0x0ce33e6c      3823           tst r3,r3
            0x0ce33e6e      0d89           bt 0x0ce33e8c
            0x0ce33e70      00e3           mov 0x00,r3
            0x0ce33e72      340e           mov.b r3,@(r0,r14)
            0x0ce33e74      0170           add 0x01,r0
            0x0ce33e76      ec00           mov.b @(r0,r14),r0
            0x0ce33e78      0188           cmp/eq 0x01,r0
            0x0ce33e7a      0789           bt 0x0ce33e8c
            0x0ce33e7c      4690           mov.w @(0x8C,PC),r0
            0x0ce33e7e      ec02           mov.b @(r0,r14),r2
            0x0ce33e80      ff72           add 0xFF,r2
            0x0ce33e82      03a0           bra 0x0ce33e8c
            0x0ce33e84      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce33e0c (+0x5a)
            0x0ce33e86      4190           mov.w @(0x82,PC),r0
            0x0ce33e88      01e1           mov 0x01,r1
            0x0ce33e8a      140e           mov.b r1,@(r0,r14)
            ; CODE XREFS from aav.0x0ce33e0c (+0x62, +0x6e, +0x76)
            0x0ce33e8c      d284           mov.b @(0x2,r13),r0
            0x0ce33e8e      0fe4           mov 0x0F,r4
            0x0ce33e90      0170           add 0x01,r0
            0x0ce33e92      d280           mov.b r0,@(0x2,r13)
            0x0ce33e94      d284           mov.b @(0x2,r13),r0
            0x0ce33e96      4730           cmp/gt r4,r0
            0x0ce33e98      028b           bf 0x0ce33ea0
            0x0ce33e9a      4360           mov r4,r0
            0x0ce33e9c      0900           nop 
            0x0ce33e9e      d280           mov.b r0,@(0x2,r13)
            ; CODE XREFS from aav.0x0ce33e0c (+0x52, +0x8c)
            0x0ce33ea0      1dd3           mov.l @(0x74,PC),r3
            0x0ce33ea2      0b43           jsr @r3
            0x0ce33ea4      e364           mov r14,r4
            0x0ce33ea6      0c60           extu.b r0,r0
            0x0ce33ea8      0820           tst r0,r0
            0x0ce33eaa      1289           bt 0x0ce33ed2               ; fcn.0ce33ed0+0x2
            0x0ce33eac      e784           mov.b @(0x7,r14),r0
            0x0ce33eae      1bd4           mov.l @(0x6C,PC),r4
            0x0ce33eb0      0170           add 0x01,r0
            0x0ce33eb2      1bd3           mov.l @(0x6C,PC),r3
            0x0ce33eb4      e780           mov.b r0,@(0x7,r14)
            0x0ce33eb6      02e0           mov 0x02,r0
            0x0ce33eb8      4580           mov.b r0,@(0x5,r4)
            0x0ce33eba      01e0           mov 0x01,r0
            0x0ce33ebc      4680           mov.b r0,@(0x6,r4)
            0x0ce33ebe      0b43           jsr @r3
            0x0ce33ec0      e364           mov r14,r4
            0x0ce33ec2      264f           lds.l @r15+,pr
            0x0ce33ec4      17d2           mov.l @(0x5C,PC),r2
            0x0ce33ec6      2ae6           mov 0x2A,r6
            0x0ce33ec8      0fe5           mov 0x0F,r5
            0x0ce33eca      e364           mov r14,r4
            0x0ce33ecc      f66d           mov.l @r15+,r13
            0x0ce33ece      2b42           jmp @r2
/ (fcn) fcn.0ce33ed0 10
|   fcn.0ce33ed0 ();
|           ; CALL XREF from aav.0x0ce3402a (+0x4c)
|           0x0ce33ed0      f66e           mov.l @r15+,r14
|           ; CODE XREF from aav.0x0ce33e0c (+0x9e)
|           0x0ce33ed2      264f           lds.l @r15+,pr
|           0x0ce33ed4      f66d           mov.l @r15+,r13
|           0x0ce33ed6      0b00           rts 
\           0x0ce33ed8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33eda:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fd0)
            0x0ce33eda      e62f           mov.l r14,@-r15
            0x0ce33edc      d62f           mov.l r13,@-r15
            0x0ce33ede      224f           sts.l pr,@-r15
            0x0ce33ee0      f47f           add 0xF4,r15
            0x0ce33ee2      0bd3           mov.l @(0x2C,PC),r3
            0x0ce33ee4      436e           mov r4,r14
            0x0ce33ee6      0e9d           mov.w @(0x1C,PC),r13
            0x0ce33ee8      0b43           jsr @r3
            0x0ce33eea      ec3d           add r14,r13
            0x0ce33eec      0e60           exts.b r0,r0
            0x0ce33eee      1140           cmp/pz r0
            0x0ce33ef0      1a89           bt 0x0ce33f28
            0x0ce33ef2      e784           mov.b @(0x7,r14),r0
            0x0ce33ef4      0fe5           mov 0x0F,r5
            0x0ce33ef6      0bd3           mov.l @(0x2C,PC),r3
            0x0ce33ef8      04e6           mov 0x04,r6
            0x0ce33efa      0170           add 0x01,r0
            0x0ce33efc      e780           mov.b r0,@(0x7,r14)
            0x0ce33efe      0b43           jsr @r3
            0x0ce33f00      e364           mov r14,r4
            0x0ce33f02      5aa0           bra 0x0ce33fba
            0x0ce33f04      0900           nop 
            0x0ce33f06      a402           mov.b r10,@(r0,r2)
            0x0ce33f08      2505           mov.w r2,@(r0,r5)
            0x0ce33f0a      4101           .word 0x0141
            0x0ce33f0c      4201           stc spc,r1
            0x0ce33f0e      0000           .word 0x0000
            0x0ce33f10      ee4d           ldc r13,r6_bank
            0x0ce33f12      038c           .word 0x8C03
            0x0ce33f14      2e5d           mov.l @(0x38,r2),r13
            0x0ce33f16      058c           .word 0x8C05
            0x0ce33f18      e22c           mov.l r14,@r12
            0x0ce33f1a      058c           .word 0x8C05
            0x0ce33f1c      18a5           bra 0x0ce34950
            0x0ce33f1e      268c           .word 0x8C26
            0x0ce33f20      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce33f24      8c4e           shad r8,r14
            0x0ce33f26      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce33eda (+0x16)
            0x0ce33f28      8d90           mov.w @(0x11A,PC),r0
            0x0ce33f2a      ec02           mov.b @(r0,r14),r2
            0x0ce33f2c      2822           tst r2,r2
            0x0ce33f2e      4489           bt 0x0ce33fba
            0x0ce33f30      00e3           mov 0x00,r3
            0x0ce33f32      340e           mov.b r3,@(r0,r14)
            0x0ce33f34      04e5           mov 0x04,r5
            0x0ce33f36      8790           mov.w @(0x10E,PC),r0
            0x0ce33f38      ee04           mov.l @(r0,r14),r4
            0x0ce33f3a      ec70           add 0xEC,r0
            0x0ce33f3c      e604           mov.l r14,@(r0,r4)
            0x0ce33f3e      d284           mov.b @(0x2,r13),r0
            0x0ce33f40      0361           mov r0,r1
            0x0ce33f42      5360           mov r5,r0
            0x0ce33f44      0900           nop 
            0x0ce33f46      43d3           mov.l @(0x10C,PC),r3
            0x0ce33f48      0b43           jsr @r3
            0x0ce33f4a      0900           nop 
            0x0ce33f4c      7d91           mov.w @(0xFA,PC),r1
            0x0ce33f4e      4870           add 0x48,r0
            0x0ce33f50      ec31           add r14,r1
            0x0ce33f52      0021           mov.b r0,@r1
            0x0ce33f54      d284           mov.b @(0x2,r13),r0
            0x0ce33f56      0361           mov r0,r1
            0x0ce33f58      5360           mov r5,r0
            0x0ce33f5a      0900           nop 
            0x0ce33f5c      3dd3           mov.l @(0xF4,PC),r3
            0x0ce33f5e      0b43           jsr @r3
            ; CODE XREF from fcn.0ce334c0 (+0x6c)
            0x0ce33f60      0900           nop 
            0x0ce33f62      7291           mov.w @(0xE4,PC),r1
            0x0ce33f64      4870           add 0x48,r0
            0x0ce33f66      3cd3           mov.l @(0xF0,PC),r3
            0x0ce33f68      4c31           add r4,r1
            0x0ce33f6a      0021           mov.b r0,@r1
            0x0ce33f6c      0b43           jsr @r3
            0x0ce33f6e      e364           mov r14,r4
            0x0ce33f70      6c90           mov.w @(0xD8,PC),r0
            0x0ce33f72      00e2           mov 0x00,r2
            0x0ce33f74      240e           mov.b r2,@(r0,r14)
            0x0ce33f76      c370           add 0xC3,r0
            0x0ce33f78      ee04           mov.l @(r0,r14),r4
            0x0ce33f7a      3a70           add 0x3A,r0
            0x0ce33f7c      ec03           mov.b @(r0,r14),r3
            0x0ce33f7e      3823           tst r3,r3
            0x0ce33f80      0c8b           bf 0x0ce33f9c
            0x0ce33f82      36c7           mova @(0xD8,PC),r0
            0x0ce33f84      36d3           mov.l @(0xD8,PC),r3
            0x0ce33f86      08f3           fmov @r0,fr3
            0x0ce33f88      04e0           mov 0x04,r0
            0x0ce33f8a      f365           mov r15,r5
            0x0ce33f8c      02e6           mov 0x02,r6
            0x0ce33f8e      3aff           fmov fr3,@r15
            0x0ce33f90      8df3           fldi0 fr3
            0x0ce33f92      37ff           fmov fr3,@(r0,r15)
            0x0ce33f94      0b43           jsr @r3
            0x0ce33f96      e364           mov r14,r4
            0x0ce33f98      0fa0           bra 0x0ce33fba
            0x0ce33f9a      0900           nop 
            ; CODE XREF from aav.0x0ce33eda (+0xa6)
            0x0ce33f9c      34e0           mov 0x34,r0
            0x0ce33f9e      31d3           mov.l @(0xC4,PC),r3
            0x0ce33fa0      46f3           fmov @(r0,r4),fr3
            0x0ce33fa2      01e5           mov 0x01,r5
            0x0ce33fa4      5390           mov.w @(0xA6,PC),r0
            0x0ce33fa6      3aff           fmov fr3,@r15
            0x0ce33fa8      e6f3           fmov @(r0,r14),fr3
            0x0ce33faa      04e0           mov 0x04,r0
            0x0ce33fac      37ff           fmov fr3,@(r0,r15)
            0x0ce33fae      0b43           jsr @r3
            0x0ce33fb0      f364           mov r15,r4
            0x0ce33fb2      2dd2           mov.l @(0xB4,PC),r2
            0x0ce33fb4      49e5           mov 0x49,r5
            0x0ce33fb6      0b42           jsr @r2
            0x0ce33fb8      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce33eda (+0x28, +0x54, +0xbe)
            0x0ce33fba      0c7f           add 0x0C,r15
            0x0ce33fbc      264f           lds.l @r15+,pr
            0x0ce33fbe      f66d           mov.l @r15+,r13
            0x0ce33fc0      0b00           rts 
            0x0ce33fc2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33fc4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fd4)
            0x0ce33fc4      e62f           mov.l r14,@-r15
            0x0ce33fc6      224f           sts.l pr,@-r15
            0x0ce33fc8      28d3           mov.l @(0xA0,PC),r3
            0x0ce33fca      0b43           jsr @r3
            0x0ce33fcc      436e           mov r4,r14
            0x0ce33fce      0e60           exts.b r0,r0
            0x0ce33fd0      1140           cmp/pz r0
            0x0ce33fd2      1689           bt 0x0ce34002
            0x0ce33fd4      e784           mov.b @(0x7,r14),r0
            0x0ce33fd6      e364           mov r14,r4
            0x0ce33fd8      8df4           fldi0 fr4
            0x0ce33fda      2be6           mov 0x2B,r6
            0x0ce33fdc      0170           add 0x01,r0
            0x0ce33fde      26d3           mov.l @(0x98,PC),r3
            0x0ce33fe0      e780           mov.b r0,@(0x7,r14)
            0x0ce33fe2      5ce0           mov 0x5C,r0
            0x0ce33fe4      47fe           fmov fr4,@(r0,r14)
            0x0ce33fe6      68e0           mov 0x68,r0
            0x0ce33fe8      47fe           fmov fr4,@(r0,r14)
            0x0ce33fea      21c7           mova @(0x84,PC),r0
            0x0ce33fec      08f3           fmov @r0,fr3
            0x0ce33fee      60e0           mov 0x60,r0
            0x0ce33ff0      0fe5           mov 0x0F,r5
            0x0ce33ff2      37fe           fmov fr3,@(r0,r14)
            0x0ce33ff4      1fc7           mova @(0x7C,PC),r0
            0x0ce33ff6      08f3           fmov @r0,fr3
            0x0ce33ff8      6ce0           mov 0x6C,r0
            0x0ce33ffa      37fe           fmov fr3,@(r0,r14)
            0x0ce33ffc      264f           lds.l @r15+,pr
            0x0ce33ffe      2b43           jmp @r3
            0x0ce34000      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33fc4 (+0xe)
            0x0ce34002      2090           mov.w @(0x40,PC),r0
            0x0ce34004      ec02           mov.b @(r0,r14),r2
            0x0ce34006      2822           tst r2,r2
            0x0ce34008      0c89           bt 0x0ce34024               ; fcn.0ce34018+0xc
            0x0ce3400a      00e3           mov 0x00,r3
            0x0ce3400c      340e           mov.b r3,@(r0,r14)
            0x0ce3400e      47e5           mov 0x47,r5
            0x0ce34010      1a90           mov.w @(0x34,PC),r0
            0x0ce34012      11e3           mov 0x11,r3
            0x0ce34014      ee04           mov.l @(r0,r14),r4
            0x0ce34016      ec70           add 0xEC,r0
/ (fcn) fcn.0ce34018 18
|   fcn.0ce34018 ();
|           ; CALL XREF from aav.0x0ce343a2 (+0xc8)
|           0x0ce34018      e604           mov.l r14,@(r0,r4)
|           0x0ce3401a      ed70           add 0xED,r0
|           0x0ce3401c      540e           mov.b r5,@(r0,r14)
|           0x0ce3401e      5404           mov.b r5,@(r0,r4)
|           0x0ce34020      5570           add 0x55,r0
|           0x0ce34022      3404           mov.b r3,@(r0,r4)
|           ; CODE XREF from aav.0x0ce33fc4 (+0x44)
|           0x0ce34024      264f           lds.l @r15+,pr
|           0x0ce34026      0b00           rts 
\           0x0ce34028      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3402a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fd8)
            0x0ce3402a      0c90           mov.w @(0x18,PC),r0
            0x0ce3402c      1095           mov.w @(0x20,PC),r5
            0x0ce3402e      4c03           mov.b @(r0,r4),r3
            0x0ce34030      3823           tst r3,r3
            0x0ce34032      058d           bt.s 0x0ce34040
            0x0ce34034      4c35           add r4,r5
            0x0ce34036      4784           mov.b @(0x7,r4),r0
            0x0ce34038      0170           add 0x01,r0
            0x0ce3403a      4780           mov.b r0,@(0x7,r4)
            0x0ce3403c      00e0           mov 0x00,r0
            0x0ce3403e      5280           mov.b r0,@(0x2,r5)
            ; CODE XREF from aav.0x0ce3402a (+0x8)
            0x0ce34040      0ad3           mov.l @(0x28,PC),r3
            0x0ce34042      2b43           jmp @r3
            0x0ce34044      0900           nop 
            0x0ce34046      4101           .word 0x0141
            0x0ce34048      c801           .word 0x01C8
            0x0ce3404a      a101           .word 0x01A1
            0x0ce3404c      0502           mov.w r0,@(r0,r2)
            0x0ce3404e      1c04           mov.b @(r0,r1),r4
            0x0ce34050      a402           mov.b r10,@(r0,r2)
            0x0ce34052      0000           .word 0x0000
            0x0ce34054      2891           mov.w @(0x50,PC),r1
            0x0ce34056      128c           .word 0x8C12
            0x0ce34058      3c93           mov.w @(0x78,PC),r3
            0x0ce3405a      058c           .word 0x8C05
            0x0ce3405c      5555           mov.l @(0x14,r5),r5
            0x0ce3405e      d5c2           mov.l r0,@(0x354,gbr)
            0x0ce34060      b6da           mov.l @(0x2D8,PC),r10
            0x0ce34062      0f8c           .word 0x8C0F
            0x0ce34064      ca25           xor r12,r5
            0x0ce34066      108c           .word 0x8C10
            0x0ce34068      3a22           xor r3,r2
            0x0ce3406a      048c           .word 0x8C04
            0x0ce3406c      ee4d           ldc r13,r6_bank
            0x0ce3406e      038c           .word 0x8C03
            0x0ce34070      4992           mov.w @(0x92,PC),r2
            0x0ce34072      f841           .word 0x41F8
            0x0ce34074      b66d           mov.l @r11+,r13
            0x0ce34076      2bbf           bsr fcn.0ce33ed0
            0x0ce34078      8c4e           shad r8,r14
            0x0ce3407a      038c           .word 0x8C03
            ;-- aav.0x0ce3407c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fdc)
            0x0ce3407c      e62f           mov.l r14,@-r15
            0x0ce3407e      d62f           mov.l r13,@-r15
            0x0ce34080      224f           sts.l pr,@-r15
            0x0ce34082      f47f           add 0xF4,r15
            0x0ce34084      5ce1           mov 0x5C,r1
            0x0ce34086      436e           mov r4,r14
            0x0ce34088      ec31           add r14,r1
            0x0ce3408a      43d3           mov.l @(0x10C,PC),r3
            0x0ce3408c      34e0           mov 0x34,r0
            0x0ce3408e      18f3           fmov @r1,fr3
            0x0ce34090      e6f2           fmov @(r0,r14),fr2
            0x0ce34092      68e1           mov 0x68,r1
            0x0ce34094      ec31           add r14,r1
            0x0ce34096      30f2           fadd fr3,fr2
            0x0ce34098      27fe           fmov fr2,@(r0,r14)
            0x0ce3409a      5ce0           mov 0x5C,r0
            0x0ce3409c      e6f2           fmov @(r0,r14),fr2
            0x0ce3409e      18f3           fmov @r1,fr3
            0x0ce340a0      60e1           mov 0x60,r1
            0x0ce340a2      ec31           add r14,r1
            0x0ce340a4      30f2           fadd fr3,fr2
            0x0ce340a6      27fe           fmov fr2,@(r0,r14)
            0x0ce340a8      38e0           mov 0x38,r0
            0x0ce340aa      e6f2           fmov @(r0,r14),fr2
            0x0ce340ac      18f3           fmov @r1,fr3
            0x0ce340ae      6ce1           mov 0x6C,r1
            0x0ce340b0      ec31           add r14,r1
            0x0ce340b2      30f2           fadd fr3,fr2
            0x0ce340b4      27fe           fmov fr2,@(r0,r14)
            0x0ce340b6      60e0           mov 0x60,r0
            0x0ce340b8      e6f2           fmov @(r0,r14),fr2
            0x0ce340ba      18f3           fmov @r1,fr3
            0x0ce340bc      30f2           fadd fr3,fr2
            0x0ce340be      27fe           fmov fr2,@(r0,r14)
            0x0ce340c0      0b43           jsr @r3
            0x0ce340c2      e364           mov r14,r4
            0x0ce340c4      6590           mov.w @(0xCA,PC),r0
            0x0ce340c6      ee0d           mov.l @(r0,r14),r13
            0x0ce340c8      38e0           mov 0x38,r0
            0x0ce340ca      e6f3           fmov @(r0,r14),fr3
            0x0ce340cc      d6f2           fmov @(r0,r13),fr2
            0x0ce340ce      33c7           mova @(0xCC,PC),r0
            0x0ce340d0      31f2           fsub fr3,fr2
            0x0ce340d2      08f3           fmov @r0,fr3
            0x0ce340d4      32c7           mova @(0xC8,PC),r0
            0x0ce340d6      08f1           fmov @r0,fr1
            0x0ce340d8      30f2           fadd fr3,fr2
            0x0ce340da      25f1           fcmp/gt fr2,fr1
            0x0ce340dc      1d8b           bf 0x0ce3411a               ; fcn.0ce340fa+0x20
            0x0ce340de      e784           mov.b @(0x7,r14),r0
            0x0ce340e0      f365           mov r15,r5
            0x0ce340e2      5793           mov.w @(0xAE,PC),r3
            0x0ce340e4      0170           add 0x01,r0
            0x0ce340e6      e780           mov.b r0,@(0x7,r14)
            0x0ce340e8      5590           mov.w @(0xAA,PC),r0
            0x0ce340ea      340e           mov.b r3,@(r0,r14)
            0x0ce340ec      2dc7           mova @(0xB4,PC),r0
            0x0ce340ee      08f2           fmov @r0,fr2
            0x0ce340f0      2dc7           mova @(0xB4,PC),r0
            0x0ce340f2      2ed3           mov.l @(0xB8,PC),r3
            0x0ce340f4      2aff           fmov fr2,@r15
            0x0ce340f6      08f3           fmov @r0,fr3
            0x0ce340f8      04e0           mov 0x04,r0
/ (fcn) fcn.0ce340fa 42
|   fcn.0ce340fa ();
|           ; CALL XREF from aav.0x0ce3414e (+0x74)
|           0x0ce340fa      37ff           fmov fr3,@(r0,r15)
|           0x0ce340fc      0b43           jsr @r3
|           0x0ce340fe      e364           mov r14,r4
|           0x0ce34100      2bd2           mov.l @(0xAC,PC),r2
|           0x0ce34102      05e5           mov 0x05,r5
|           0x0ce34104      0b42           jsr @r2
|           0x0ce34106      e364           mov r14,r4
|           0x0ce34108      2ad3           mov.l @(0xA8,PC),r3
|           0x0ce3410a      0fe5           mov 0x0F,r5
|           0x0ce3410c      11e6           mov 0x11,r6
|           0x0ce3410e      0b43           jsr @r3
|           0x0ce34110      e364           mov r14,r4
|           0x0ce34112      29d2           mov.l @(0xA4,PC),r2
|           0x0ce34114      d365           mov r13,r5
|           0x0ce34116      0b42           jsr @r2
|           0x0ce34118      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce3407c (+0x60)
|           0x0ce3411a      0c7f           add 0x0C,r15
|           0x0ce3411c      264f           lds.l @r15+,pr
|           0x0ce3411e      f66d           mov.l @r15+,r13
|           0x0ce34120      0b00           rts 
\           0x0ce34122      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34124:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fe0)
            0x0ce34124      e62f           mov.l r14,@-r15
            0x0ce34126      224f           sts.l pr,@-r15
            0x0ce34128      1bd3           mov.l @(0x6C,PC),r3
            0x0ce3412a      0b43           jsr @r3
            0x0ce3412c      436e           mov r4,r14
            0x0ce3412e      0e60           exts.b r0,r0
            0x0ce34130      1140           cmp/pz r0
            0x0ce34132      0989           bt 0x0ce34148
            0x0ce34134      e784           mov.b @(0x7,r14),r0
            0x0ce34136      e364           mov r14,r4
            0x0ce34138      1ed3           mov.l @(0x78,PC),r3
            0x0ce3413a      2ce6           mov 0x2C,r6
            0x0ce3413c      0170           add 0x01,r0
            0x0ce3413e      e780           mov.b r0,@(0x7,r14)
            0x0ce34140      0fe5           mov 0x0F,r5
            0x0ce34142      264f           lds.l @r15+,pr
            0x0ce34144      2b43           jmp @r3
            0x0ce34146      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34124 (+0xe)
            0x0ce34148      264f           lds.l @r15+,pr
            0x0ce3414a      0b00           rts 
            0x0ce3414c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3414e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fe4)
            0x0ce3414e      e62f           mov.l r14,@-r15
            0x0ce34150      224f           sts.l pr,@-r15
            0x0ce34152      11d3           mov.l @(0x44,PC),r3
            0x0ce34154      0b43           jsr @r3
            0x0ce34156      436e           mov r4,r14
            0x0ce34158      0e60           exts.b r0,r0
            0x0ce3415a      1140           cmp/pz r0
            0x0ce3415c      1689           bt 0x0ce3418c
            0x0ce3415e      e784           mov.b @(0x7,r14),r0
            0x0ce34160      e364           mov r14,r4
            0x0ce34162      8df4           fldi0 fr4
            0x0ce34164      2de6           mov 0x2D,r6
            0x0ce34166      0170           add 0x01,r0
            0x0ce34168      12d3           mov.l @(0x48,PC),r3
            0x0ce3416a      e780           mov.b r0,@(0x7,r14)
            0x0ce3416c      5ce0           mov 0x5C,r0
            0x0ce3416e      47fe           fmov fr4,@(r0,r14)
            0x0ce34170      68e0           mov 0x68,r0
            0x0ce34172      47fe           fmov fr4,@(r0,r14)
            0x0ce34174      11c7           mova @(0x44,PC),r0
            0x0ce34176      08f3           fmov @r0,fr3
            0x0ce34178      60e0           mov 0x60,r0
            0x0ce3417a      0fe5           mov 0x0F,r5
            0x0ce3417c      37fe           fmov fr3,@(r0,r14)
            0x0ce3417e      10c7           mova @(0x40,PC),r0
            0x0ce34180      08f3           fmov @r0,fr3
            0x0ce34182      6ce0           mov 0x6C,r0
            0x0ce34184      37fe           fmov fr3,@(r0,r14)
            0x0ce34186      264f           lds.l @r15+,pr
            0x0ce34188      2b43           jmp @r3
            0x0ce3418a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3414e (+0xe)
            0x0ce3418c      264f           lds.l @r15+,pr
            0x0ce3418e      0b00           rts 
            0x0ce34190      f66e           mov.l @r15+,r14
            0x0ce34192      c801           .word 0x01C8
            0x0ce34194      ca00           .word 0x00CA
            0x0ce34196      f701           mul.l r15,r1
            0x0ce34198      ee4d           ldc r13,r6_bank
            0x0ce3419a      038c           .word 0x8C03
            0x0ce3419c      9224           mov.l r9,@r4
            0x0ce3419e      89c1           mov.w r0,@(0x112,gbr)
            0x0ce341a0      9224           mov.l r9,@r4
            0x0ce341a2      89c2           mov.l r0,@(0x224,gbr)
            0x0ce341a4      aaaa           bra 0x0ce336fc
            0x0ce341a6      12c3           trapa 0x12
            0x0ce341a8      b66d           mov.l @r11+,r13
            0x0ce341aa      2b43           jmp @r3
            0x0ce341ac      6036           cmp/eq r6,r6
            0x0ce341ae      108c           .word 0x8C10
            0x0ce341b0      0820           tst r0,r0
            0x0ce341b2      048c           .word 0x8C04
            0x0ce341b4      8c4e           shad r8,r14
            0x0ce341b6      038c           .word 0x8C03
            0x0ce341b8      d823           tst r13,r3
            0x0ce341ba      058c           .word 0x8C05
            0x0ce341bc      dbb6           bsr fcn.0ce34f76
            0x0ce341be      cdc0           mov.b r0,@(0xCD,gbr)
            0x0ce341c0      2449           rotcl r9
            0x0ce341c2      9abf           bsr fcn.0ce340fa
            ;-- aav.0x0ce341c4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fe8)
            0x0ce341c4      e62f           mov.l r14,@-r15
            0x0ce341c6      436e           mov r4,r14
            0x0ce341c8      5ce1           mov 0x5C,r1
            0x0ce341ca      d62f           mov.l r13,@-r15
            0x0ce341cc      34e0           mov 0x34,r0
            0x0ce341ce      c62f           mov.l r12,@-r15
            0x0ce341d0      ec31           add r14,r1
            0x0ce341d2      909d           mov.w @(0x120,PC),r13
            0x0ce341d4      224f           sts.l pr,@-r15
            0x0ce341d6      18f3           fmov @r1,fr3
            0x0ce341d8      68e1           mov 0x68,r1
            0x0ce341da      e6f2           fmov @(r0,r14),fr2
            0x0ce341dc      ec31           add r14,r1
            0x0ce341de      ec3d           add r14,r13
            0x0ce341e0      30f2           fadd fr3,fr2
            0x0ce341e2      27fe           fmov fr2,@(r0,r14)
            ; CODE XREF from aav.0x0ce3370c (+0xa4)
            0x0ce341e4      5ce0           mov 0x5C,r0
            0x0ce341e6      18f3           fmov @r1,fr3
            0x0ce341e8      60e1           mov 0x60,r1
            0x0ce341ea      e6f2           fmov @(r0,r14),fr2
            0x0ce341ec      ec31           add r14,r1
            0x0ce341ee      30f2           fadd fr3,fr2
            0x0ce341f0      27fe           fmov fr2,@(r0,r14)
            0x0ce341f2      38e0           mov 0x38,r0
            0x0ce341f4      e6f2           fmov @(r0,r14),fr2
            0x0ce341f6      18f3           fmov @r1,fr3
            0x0ce341f8      6ce1           mov 0x6C,r1
            0x0ce341fa      ec31           add r14,r1
            0x0ce341fc      30f2           fadd fr3,fr2
            0x0ce341fe      27fe           fmov fr2,@(r0,r14)
            0x0ce34200      60e0           mov 0x60,r0
            0x0ce34202      18f3           fmov @r1,fr3
            0x0ce34204      e6f2           fmov @(r0,r14),fr2
            0x0ce34206      3ed3           mov.l @(0xF8,PC),r3
            0x0ce34208      30f2           fadd fr3,fr2
            0x0ce3420a      27fe           fmov fr2,@(r0,r14)
            0x0ce3420c      0b43           jsr @r3
            0x0ce3420e      e364           mov r14,r4
            0x0ce34210      3cd2           mov.l @(0xF0,PC),r2
            0x0ce34212      0b42           jsr @r2
            0x0ce34214      e364           mov r14,r4
            0x0ce34216      0820           tst r0,r0
            0x0ce34218      1f89           bt 0x0ce3425a
            0x0ce3421a      6d90           mov.w @(0xDA,PC),r0
            0x0ce3421c      ec02           mov.b @(r0,r14),r2
            0x0ce3421e      2822           tst r2,r2
            0x0ce34220      0e89           bt 0x0ce34240
            0x0ce34222      6a90           mov.w @(0xD4,PC),r0
            0x0ce34224      ec03           mov.b @(r0,r14),r3
            0x0ce34226      3823           tst r3,r3
            0x0ce34228      0d89           bt 0x0ce34246
            0x0ce3422a      00e3           mov 0x00,r3
            0x0ce3422c      340e           mov.b r3,@(r0,r14)
            0x0ce3422e      0170           add 0x01,r0
            0x0ce34230      ec00           mov.b @(r0,r14),r0
            0x0ce34232      0188           cmp/eq 0x01,r0
            0x0ce34234      0789           bt 0x0ce34246
            0x0ce34236      6190           mov.w @(0xC2,PC),r0
            0x0ce34238      ec02           mov.b @(r0,r14),r2
            0x0ce3423a      ff72           add 0xFF,r2
            0x0ce3423c      03a0           bra 0x0ce34246
            0x0ce3423e      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce341c4 (+0x5c)
            0x0ce34240      5c90           mov.w @(0xB8,PC),r0
            0x0ce34242      01e1           mov 0x01,r1
            0x0ce34244      140e           mov.b r1,@(r0,r14)
            ; CODE XREFS from aav.0x0ce341c4 (+0x64, +0x70, +0x78)
            0x0ce34246      d284           mov.b @(0x2,r13),r0
            0x0ce34248      0fe4           mov 0x0F,r4
            0x0ce3424a      0170           add 0x01,r0
            0x0ce3424c      d280           mov.b r0,@(0x2,r13)
            0x0ce3424e      d284           mov.b @(0x2,r13),r0
            0x0ce34250      4730           cmp/gt r4,r0
            0x0ce34252      028b           bf 0x0ce3425a
            0x0ce34254      4360           mov r4,r0
            0x0ce34256      0900           nop 
            0x0ce34258      d280           mov.b r0,@(0x2,r13)
            ; CODE XREFS from aav.0x0ce341c4 (+0x54, +0x8e)
            0x0ce3425a      2bd3           mov.l @(0xAC,PC),r3
            0x0ce3425c      0b43           jsr @r3
            0x0ce3425e      e364           mov r14,r4
            0x0ce34260      0c60           extu.b r0,r0
            0x0ce34262      0820           tst r0,r0
            0x0ce34264      1c89           bt 0x0ce342a0
            0x0ce34266      e784           mov.b @(0x7,r14),r0
            0x0ce34268      8df4           fldi0 fr4
            0x0ce3426a      0170           add 0x01,r0
            0x0ce3426c      27d4           mov.l @(0x9C,PC),r4
            0x0ce3426e      e780           mov.b r0,@(0x7,r14)
            0x0ce34270      5ce0           mov 0x5C,r0
            0x0ce34272      47fe           fmov fr4,@(r0,r14)
            0x0ce34274      60e0           mov 0x60,r0
            0x0ce34276      47fe           fmov fr4,@(r0,r14)
            0x0ce34278      68e0           mov 0x68,r0
            0x0ce3427a      47fe           fmov fr4,@(r0,r14)
            0x0ce3427c      6ce0           mov 0x6C,r0
            0x0ce3427e      47fe           fmov fr4,@(r0,r14)
            0x0ce34280      03e0           mov 0x03,r0
            0x0ce34282      4580           mov.b r0,@(0x5,r4)
            0x0ce34284      01e0           mov 0x01,r0
            0x0ce34286      22d3           mov.l @(0x88,PC),r3
            0x0ce34288      4680           mov.b r0,@(0x6,r4)
            0x0ce3428a      0b43           jsr @r3
            ; CODE XREF from aav.0x0ce34cba (+0x7a)
            0x0ce3428c      e364           mov r14,r4
            0x0ce3428e      264f           lds.l @r15+,pr
            0x0ce34290      20d2           mov.l @(0x80,PC),r2
            0x0ce34292      0fe5           mov 0x0F,r5
            0x0ce34294      e364           mov r14,r4
            0x0ce34296      2ee6           mov 0x2E,r6
            0x0ce34298      f66c           mov.l @r15+,r12
            0x0ce3429a      f66d           mov.l @r15+,r13
            0x0ce3429c      2b42           jmp @r2
            0x0ce3429e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce341c4 (+0xa0)
            0x0ce342a0      d284           mov.b @(0x2,r13),r0
            0x0ce342a2      03e3           mov 0x03,r3
            0x0ce342a4      3730           cmp/gt r3,r0
            0x0ce342a6      218b           bf 0x0ce342ec
            0x0ce342a8      2990           mov.w @(0x52,PC),r0
            0x0ce342aa      1bdc           mov.l @(0x6C,PC),r12
            0x0ce342ac      ec01           mov.b @(r0,r14),r1
            0x0ce342ae      1821           tst r1,r1
            0x0ce342b0      098b           bf 0x0ce342c6
            0x0ce342b2      25e0           mov 0x25,r0
            0x0ce342b4      ec06           mov.b @(r0,r14),r6
            0x0ce342b6      01e7           mov 0x01,r7
            0x0ce342b8      d284           mov.b @(0x2,r13),r0
            0x0ce342ba      6c66           extu.b r6,r6
            0x0ce342bc      0840           shll2 r0
            0x0ce342be      ce02           mov.l @(r0,r12),r2
            0x0ce342c0      16d0           mov.l @(0x58,PC),r0
            0x0ce342c2      09a0           bra 0x0ce342d8              ; fcn.0ce342cc+0xc
            0x0ce342c4      0846           shll2 r6
            ; CODE XREF from aav.0x0ce341c4 (+0xec)
            0x0ce342c6      25e0           mov 0x25,r0
            0x0ce342c8      ec06           mov.b @(r0,r14),r6
            0x0ce342ca      01e7           mov 0x01,r7
/ (fcn) fcn.0ce342cc 32
|   fcn.0ce342cc ();
|           ; CALL XREF from aav.0x0ce343a2 (+0xd0)
|           0x0ce342cc      d284           mov.b @(0x2,r13),r0
|           0x0ce342ce      6c66           extu.b r6,r6
|           0x0ce342d0      0840           shll2 r0
|           0x0ce342d2      ce02           mov.l @(r0,r12),r2
|           0x0ce342d4      0846           shll2 r6
|           0x0ce342d6      12d0           mov.l @(0x48,PC),r0
|           ; CODE XREF from aav.0x0ce341c4 (+0xfe)
|           0x0ce342d8      264f           lds.l @r15+,pr
|           0x0ce342da      6e06           mov.l @(r0,r6),r6
|           0x0ce342dc      00e5           mov 0x00,r5
|           0x0ce342de      e364           mov r14,r4
|           0x0ce342e0      f66c           mov.l @r15+,r12
|           0x0ce342e2      2c36           add r2,r6
|           0x0ce342e4      0fd2           mov.l @(0x3C,PC),r2
|           0x0ce342e6      f66d           mov.l @r15+,r13
|           0x0ce342e8      2b42           jmp @r2
\           0x0ce342ea      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce341c4 (+0xe2)
            0x0ce342ec      264f           lds.l @r15+,pr
            0x0ce342ee      f66c           mov.l @r15+,r12
            0x0ce342f0      f66d           mov.l @r15+,r13
            0x0ce342f2      0b00           rts 
            0x0ce342f4      f66e           mov.l @r15+,r14
            0x0ce342f6      a402           mov.b r10,@(r0,r2)
            0x0ce342f8      2505           mov.w r2,@(r0,r5)
/ (fcn) fcn.0ce342fa 152
|   fcn.0ce342fa (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from fcn.0ce334c0 (+0x80)
|           0x0ce342fa      4101           .word 0x0141
|           0x0ce342fc      4201           stc spc,r1
|           ;-- fcn.0ce342fe:
|           ; CALL XREF from fcn.0ce334c0 (+0x84)
|           0x0ce342fe      0202           stc sr,r2
|           0x0ce34300      ee4d           ldc r13,r6_bank
|           0x0ce34302      038c           .word 0x8C03
|           0x0ce34304      2e5d           mov.l @(0x38,r2),r13
|           0x0ce34306      058c           .word 0x8C05
|           0x0ce34308      e22c           mov.l r14,@r12
|           0x0ce3430a      058c           .word 0x8C05
|           0x0ce3430c      18a5           bra loc.0ce34d40
\           0x0ce3430e      268c           .word 0x8C26
            0x0ce34310      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce34314      8c4e           shad r8,r14
            0x0ce34316      038c           .word 0x8C03
            0x0ce34318      .dword 0x0ce36b8c ; aav.0x0ce36b8c
            0x0ce3431c      .dword 0x0ce36bd0 ; aav.0x0ce36bd0
            0x0ce34320      .dword 0x0ce36be8 ; aav.0x0ce36be8
            0x0ce34324      4c54           mov.l @(0x30,r4),r4
            0x0ce34326      038c           .word 0x8C03
            ;-- aav.0x0ce34328:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fec)
            0x0ce34328      e62f           mov.l r14,@-r15
            0x0ce3432a      224f           sts.l pr,@-r15
            0x0ce3432c      f47f           add 0xF4,r15
            0x0ce3432e      8990           mov.w @(0x112,PC),r0
            0x0ce34330      436e           mov r4,r14
            0x0ce34332      ec03           mov.b @(r0,r14),r3
            0x0ce34334      3823           tst r3,r3
            0x0ce34336      2289           bt 0x0ce3437e
            0x0ce34338      00e3           mov 0x00,r3
            0x0ce3433a      340e           mov.b r3,@(r0,r14)
            0x0ce3433c      8390           mov.w @(0x106,PC),r0
            0x0ce3433e      ee04           mov.l @(r0,r14),r4
            0x0ce34340      34e0           mov 0x34,r0
            0x0ce34342      46f3           fmov @(r0,r4),fr3
            0x0ce34344      8090           mov.w @(0x100,PC),r0
            0x0ce34346      3aff           fmov fr3,@r15
            0x0ce34348      e6f3           fmov @(r0,r14),fr3
            0x0ce3434a      04e0           mov 0x04,r0
            0x0ce3434c      37ff           fmov fr3,@(r0,r15)
            0x0ce3434e      7c90           mov.w @(0xF8,PC),r0
            0x0ce34350      ec03           mov.b @(r0,r14),r3
            0x0ce34352      3823           tst r3,r3
            0x0ce34354      058b           bf 0x0ce34362
            0x0ce34356      3ed3           mov.l @(0xF8,PC),r3
            0x0ce34358      01e5           mov 0x01,r5
            0x0ce3435a      0b43           jsr @r3
            0x0ce3435c      f364           mov r15,r4
            0x0ce3435e      0ba0           bra 0x0ce34378
            0x0ce34360      49e5           mov 0x49,r5
            ; CODE XREF from aav.0x0ce34328 (+0x2c)
            0x0ce34362      3bd2           mov.l @(0xEC,PC),r2
            0x0ce34364      01e5           mov 0x01,r5
            0x0ce34366      0b42           jsr @r2
            0x0ce34368      f364           mov r15,r4
            0x0ce3436a      3ad3           mov.l @(0xE8,PC),r3
            0x0ce3436c      f365           mov r15,r5
            0x0ce3436e      7ee7           mov 0x7E,r7
            0x0ce34370      04e6           mov 0x04,r6
            0x0ce34372      0b43           jsr @r3
            0x0ce34374      e364           mov r14,r4
            0x0ce34376      4ae5           mov 0x4A,r5
            ; CODE XREF from aav.0x0ce34328 (+0x36)
            0x0ce34378      37d2           mov.l @(0xDC,PC),r2
            0x0ce3437a      0b42           jsr @r2
            0x0ce3437c      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce34328 (+0xe)
            0x0ce3437e      37d3           mov.l @(0xDC,PC),r3
            0x0ce34380      0b43           jsr @r3
            0x0ce34382      e364           mov r14,r4
            0x0ce34384      0e60           exts.b r0,r0
            0x0ce34386      1140           cmp/pz r0
            0x0ce34388      0789           bt 0x0ce3439a
            0x0ce3438a      e784           mov.b @(0x7,r14),r0
            0x0ce3438c      0fe5           mov 0x0F,r5
            0x0ce3438e      34d3           mov.l @(0xD0,PC),r3
            0x0ce34390      0ee6           mov 0x0E,r6
            0x0ce34392      0170           add 0x01,r0
            0x0ce34394      e780           mov.b r0,@(0x7,r14)
            0x0ce34396      0b43           jsr @r3
            0x0ce34398      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce34328 (+0x60)
            0x0ce3439a      0c7f           add 0x0C,r15
            0x0ce3439c      264f           lds.l @r15+,pr
            0x0ce3439e      0b00           rts 
            0x0ce343a0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce343a2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ff0)
            0x0ce343a2      e62f           mov.l r14,@-r15
            0x0ce343a4      436e           mov r4,r14
            0x0ce343a6      5ce1           mov 0x5C,r1
            0x0ce343a8      d62f           mov.l r13,@-r15
            0x0ce343aa      34e0           mov 0x34,r0
            0x0ce343ac      c62f           mov.l r12,@-r15
            0x0ce343ae      ec31           add r14,r1
            0x0ce343b0      4c9c           mov.w @(0x98,PC),r12
            0x0ce343b2      224f           sts.l pr,@-r15
            0x0ce343b4      18f3           fmov @r1,fr3
            0x0ce343b6      68e1           mov 0x68,r1
            0x0ce343b8      e6f2           fmov @(r0,r14),fr2
            0x0ce343ba      ec31           add r14,r1
            0x0ce343bc      ec3c           add r14,r12
            0x0ce343be      30f2           fadd fr3,fr2
            0x0ce343c0      27fe           fmov fr2,@(r0,r14)
            0x0ce343c2      5ce0           mov 0x5C,r0
            0x0ce343c4      18f3           fmov @r1,fr3
            0x0ce343c6      60e1           mov 0x60,r1
            0x0ce343c8      e6f2           fmov @(r0,r14),fr2
            0x0ce343ca      ec31           add r14,r1
            0x0ce343cc      30f2           fadd fr3,fr2
            0x0ce343ce      27fe           fmov fr2,@(r0,r14)
            0x0ce343d0      38e0           mov 0x38,r0
            0x0ce343d2      e6f2           fmov @(r0,r14),fr2
            0x0ce343d4      18f3           fmov @r1,fr3
            0x0ce343d6      6ce1           mov 0x6C,r1
            0x0ce343d8      ec31           add r14,r1
            0x0ce343da      30f2           fadd fr3,fr2
            0x0ce343dc      27fe           fmov fr2,@(r0,r14)
            0x0ce343de      60e0           mov 0x60,r0
            0x0ce343e0      18f3           fmov @r1,fr3
            0x0ce343e2      e6f2           fmov @(r0,r14),fr2
            0x0ce343e4      1dd3           mov.l @(0x74,PC),r3
            0x0ce343e6      30f2           fadd fr3,fr2
            0x0ce343e8      27fe           fmov fr2,@(r0,r14)
            0x0ce343ea      0b43           jsr @r3
            0x0ce343ec      e364           mov r14,r4
            0x0ce343ee      0e60           exts.b r0,r0
            0x0ce343f0      1140           cmp/pz r0
            0x0ce343f2      3f89           bt 0x0ce34474
            0x0ce343f4      e784           mov.b @(0x7,r14),r0
            0x0ce343f6      0170           add 0x01,r0
            0x0ce343f8      e780           mov.b r0,@(0x7,r14)
            0x0ce343fa      1ac7           mova @(0x68,PC),r0
            0x0ce343fc      08f3           fmov @r0,fr3
            0x0ce343fe      5ce0           mov 0x5C,r0
            0x0ce34400      37fe           fmov fr3,@(r0,r14)
            0x0ce34402      19c7           mova @(0x64,PC),r0
            0x0ce34404      08f3           fmov @r0,fr3
            0x0ce34406      68e0           mov 0x68,r0
            0x0ce34408      37fe           fmov fr3,@(r0,r14)
            0x0ce3440a      18c7           mova @(0x60,PC),r0
            0x0ce3440c      08f3           fmov @r0,fr3
            0x0ce3440e      60e0           mov 0x60,r0
            0x0ce34410      37fe           fmov fr3,@(r0,r14)
            0x0ce34412      17c7           mova @(0x5C,PC),r0
            0x0ce34414      08f3           fmov @r0,fr3
            0x0ce34416      6ce0           mov 0x6C,r0
            0x0ce34418      37fe           fmov fr3,@(r0,r14)
            0x0ce3441a      1890           mov.w @(0x30,PC),r0
            0x0ce3441c      ec03           mov.b @(r0,r14),r3
            0x0ce3441e      3823           tst r3,r3
            0x0ce34420      088d           bt.s 0x0ce34434
            0x0ce34422      21e6           mov 0x21,r6
            0x0ce34424      5ce0           mov 0x5C,r0
            0x0ce34426      e6f3           fmov @(r0,r14),fr3
            0x0ce34428      4df3           fneg fr3
            0x0ce3442a      37fe           fmov fr3,@(r0,r14)
            0x0ce3442c      68e0           mov 0x68,r0
            0x0ce3442e      e6f3           fmov @(r0,r14),fr3
            0x0ce34430      4df3           fneg fr3
            0x0ce34432      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce343a2 (+0x7e)
            0x0ce34434      264f           lds.l @r15+,pr
            0x0ce34436      0ad3           mov.l @(0x28,PC),r3
            0x0ce34438      0fe5           mov 0x0F,r5
            0x0ce3443a      e364           mov r14,r4
            0x0ce3443c      f66c           mov.l @r15+,r12
            0x0ce3443e      f66d           mov.l @r15+,r13
            0x0ce34440      2b43           jmp @r3
            0x0ce34442      f66e           mov.l @r15+,r14
            0x0ce34444      4101           .word 0x0141
            0x0ce34446      c801           .word 0x01C8
            0x0ce34448      1c04           mov.b @(r0,r1),r4
            0x0ce3444a      0202           stc sr,r2
            0x0ce3444c      a402           mov.b r10,@(r0,r2)
            0x0ce3444e      d201           stc r5_bank,r1
            0x0ce34450      ca25           xor r12,r5
            0x0ce34452      108c           .word 0x8C10
            0x0ce34454      5c23           cmp/str r5,r3
            0x0ce34456      108c           .word 0x8C10
            0x0ce34458      3a22           xor r3,r2
            0x0ce3445a      048c           .word 0x8C04
            0x0ce3445c      ee4d           ldc r13,r6_bank
            0x0ce3445e      038c           .word 0x8C03
            0x0ce34460      8c4e           shad r8,r14
            0x0ce34462      038c           .word 0x8C03
            0x0ce34464      5555           mov.l @(0x14,r5),r5
            0x0ce34466      d540           .word 0x40D5
            0x0ce34468      5555           mov.l @(0x14,r5),r5
            0x0ce3446a      d5bd           bsr fcn.0ce34018
            0x0ce3446c      2449           rotcl r9
            0x0ce3446e      9a41           .word 0x419A
            0x0ce34470      b66d           mov.l @r11+,r13
            0x0ce34472      2bbf           bsr fcn.0ce342cc
            ; CODE XREF from aav.0x0ce343a2 (+0x50)
            0x0ce34474      a590           mov.w @(0x14A,PC),r0
            0x0ce34476      ec02           mov.b @(r0,r14),r2
            0x0ce34478      2822           tst r2,r2
            0x0ce3447a      3a89           bt 0x0ce344f2               ; fcn.0ce34490+0x62
            0x0ce3447c      56d3           mov.l @(0x158,PC),r3
            0x0ce3447e      00ed           mov 0x00,r13
            0x0ce34480      d365           mov r13,r5
            0x0ce34482      d40e           mov.b r13,@(r0,r14)
            0x0ce34484      d366           mov r13,r6
            0x0ce34486      0b43           jsr @r3
            0x0ce34488      e364           mov r14,r4
            0x0ce3448a      9b90           mov.w @(0x136,PC),r0
            0x0ce3448c      04e5           mov 0x04,r5
            0x0ce3448e      54d3           mov.l @(0x150,PC),r3
/ (fcn) fcn.0ce34490 108
|   fcn.0ce34490 ();
|           ; CALL XREF from aav.0x0ce34726 (+0x54)
|           0x0ce34490      ee04           mov.l @(r0,r14),r4
|           0x0ce34492      c284           mov.b @(0x2,r12),r0
|           0x0ce34494      51d6           mov.l @(0x144,PC),r6
|           0x0ce34496      0361           mov r0,r1
|           0x0ce34498      0b43           jsr @r3
|           0x0ce3449a      5360           mov r5,r0
|           0x0ce3449c      0040           shll r0
|           0x0ce3449e      50d3           mov.l @(0x140,PC),r3
|           0x0ce344a0      6c02           mov.b @(r0,r6),r2
|           0x0ce344a2      9090           mov.w @(0x120,PC),r0
|           0x0ce344a4      2404           mov.b r2,@(r0,r4)
|           0x0ce344a6      c284           mov.b @(0x2,r12),r0
|           0x0ce344a8      0361           mov r0,r1
|           0x0ce344aa      0b43           jsr @r3
|           0x0ce344ac      5360           mov r5,r0
|           0x0ce344ae      0040           shll r0
|           0x0ce344b0      8a91           mov.w @(0x114,PC),r1
|           0x0ce344b2      6c30           add r6,r0
|           0x0ce344b4      4ad3           mov.l @(0x128,PC),r3
|           0x0ce344b6      0184           mov.b @(0x1,r0),r0
|           0x0ce344b8      4c31           add r4,r1
|           0x0ce344ba      0021           mov.b r0,@r1
|           0x0ce344bc      c284           mov.b @(0x2,r12),r0
|           0x0ce344be      0361           mov r0,r1
|           0x0ce344c0      0b43           jsr @r3
|           0x0ce344c2      5360           mov r5,r0
|           0x0ce344c4      0040           shll r0
|           0x0ce344c6      7f91           mov.w @(0xFE,PC),r1
|           0x0ce344c8      0c36           add r0,r6
|           0x0ce344ca      d363           mov r13,r3
|           0x0ce344cc      6184           mov.b @(0x1,r6),r0
|           0x0ce344ce      ec31           add r14,r1
|           0x0ce344d0      0021           mov.b r0,@r1
|           0x0ce344d2      7a90           mov.w @(0xF4,PC),r0
|           0x0ce344d4      7b91           mov.w @(0xF6,PC),r1
|           0x0ce344d6      d40e           mov.b r13,@(r0,r14)
|           0x0ce344d8      ff70           add 0xFF,r0
|           0x0ce344da      d40e           mov.b r13,@(r0,r14)
|           0x0ce344dc      ec31           add r14,r1
|           0x0ce344de      7590           mov.w @(0xEA,PC),r0
|           0x0ce344e0      d40e           mov.b r13,@(r0,r14)
|           0x0ce344e2      0170           add 0x01,r0
|           0x0ce344e4      d40e           mov.b r13,@(r0,r14)
|           0x0ce344e6      c284           mov.b @(0x2,r12),r0
|           0x0ce344e8      0733           cmp/gt r0,r3
|           0x0ce344ea      3e30           addc r3,r0
|           0x0ce344ec      2140           shar r0
|           0x0ce344ee      2070           add 0x20,r0
|           0x0ce344f0      0021           mov.b r0,@r1
|           ; CODE XREF from aav.0x0ce343a2 (+0xd8)
|           0x0ce344f2      264f           lds.l @r15+,pr
|           0x0ce344f4      f66c           mov.l @r15+,r12
|           0x0ce344f6      f66d           mov.l @r15+,r13
|           0x0ce344f8      0b00           rts 
\           0x0ce344fa      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce344fc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ff4)
            0x0ce344fc      e62f           mov.l r14,@-r15
            0x0ce344fe      5ce1           mov 0x5C,r1
            0x0ce34500      436e           mov r4,r14
            0x0ce34502      ec31           add r14,r1
            0x0ce34504      34e0           mov 0x34,r0
            0x0ce34506      37d3           mov.l @(0xDC,PC),r3
            0x0ce34508      224f           sts.l pr,@-r15
            0x0ce3450a      e6f2           fmov @(r0,r14),fr2
            0x0ce3450c      18f3           fmov @r1,fr3
            0x0ce3450e      68e1           mov 0x68,r1
            0x0ce34510      ec31           add r14,r1
            0x0ce34512      30f2           fadd fr3,fr2
            0x0ce34514      27fe           fmov fr2,@(r0,r14)
            0x0ce34516      5ce0           mov 0x5C,r0
            0x0ce34518      18f3           fmov @r1,fr3
            0x0ce3451a      60e1           mov 0x60,r1
            0x0ce3451c      e6f2           fmov @(r0,r14),fr2
            0x0ce3451e      ec31           add r14,r1
            0x0ce34520      30f2           fadd fr3,fr2
            0x0ce34522      27fe           fmov fr2,@(r0,r14)
            0x0ce34524      38e0           mov 0x38,r0
            0x0ce34526      e6f2           fmov @(r0,r14),fr2
            0x0ce34528      18f3           fmov @r1,fr3
            0x0ce3452a      6ce1           mov 0x6C,r1
            0x0ce3452c      ec31           add r14,r1
            0x0ce3452e      30f2           fadd fr3,fr2
            0x0ce34530      27fe           fmov fr2,@(r0,r14)
            0x0ce34532      60e0           mov 0x60,r0
            0x0ce34534      e6f2           fmov @(r0,r14),fr2
            0x0ce34536      18f3           fmov @r1,fr3
            0x0ce34538      30f2           fadd fr3,fr2
            0x0ce3453a      27fe           fmov fr2,@(r0,r14)
            0x0ce3453c      0b43           jsr @r3
            0x0ce3453e      e364           mov r14,r4
            0x0ce34540      0c60           extu.b r0,r0
            0x0ce34542      0820           tst r0,r0
            0x0ce34544      0c89           bt 0x0ce34560
            0x0ce34546      e784           mov.b @(0x7,r14),r0
            0x0ce34548      27d3           mov.l @(0x9C,PC),r3
            0x0ce3454a      0170           add 0x01,r0
            0x0ce3454c      e780           mov.b r0,@(0x7,r14)
            0x0ce3454e      0b43           jsr @r3
            0x0ce34550      e364           mov r14,r4
            0x0ce34552      264f           lds.l @r15+,pr
            0x0ce34554      25d2           mov.l @(0x94,PC),r2
            0x0ce34556      e364           mov r14,r4
            0x0ce34558      22e6           mov 0x22,r6
            0x0ce3455a      0fe5           mov 0x0F,r5
            0x0ce3455c      2b42           jmp @r2
            0x0ce3455e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce344fc (+0x48)
            0x0ce34560      264f           lds.l @r15+,pr
            0x0ce34562      0b00           rts 
            0x0ce34564      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34566:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ff8)
            0x0ce34566      e62f           mov.l r14,@-r15
            0x0ce34568      224f           sts.l pr,@-r15
            0x0ce3456a      21d3           mov.l @(0x84,PC),r3
            0x0ce3456c      0b43           jsr @r3
            0x0ce3456e      436e           mov r4,r14
            0x0ce34570      0e60           exts.b r0,r0
            0x0ce34572      1140           cmp/pz r0
            0x0ce34574      0b89           bt 0x0ce3458e
            0x0ce34576      2a90           mov.w @(0x54,PC),r0
            0x0ce34578      00e3           mov 0x00,r3
            0x0ce3457a      3365           mov r3,r5
            0x0ce3457c      340e           mov.b r3,@(r0,r14)
            0x0ce3457e      1dd3           mov.l @(0x74,PC),r3
            0x0ce34580      0b43           jsr @r3
            0x0ce34582      e364           mov r14,r4
            0x0ce34584      264f           lds.l @r15+,pr
            0x0ce34586      1cd2           mov.l @(0x70,PC),r2
            0x0ce34588      e364           mov r14,r4
            0x0ce3458a      2b42           jmp @r2
            0x0ce3458c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34566 (+0xe)
            0x0ce3458e      264f           lds.l @r15+,pr
            0x0ce34590      0b00           rts 
            0x0ce34592      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34594:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fac)
            0x0ce34594      1c90           mov.w @(0x38,PC),r0
            0x0ce34596      01e3           mov 0x01,r3
            0x0ce34598      e62f           mov.l r14,@-r15
            0x0ce3459a      436e           mov r4,r14
            0x0ce3459c      340e           mov.b r3,@(r0,r14)
            0x0ce3459e      0370           add 0x03,r0
            0x0ce345a0      02e4           mov 0x02,r4
            0x0ce345a2      16d1           mov.l @(0x58,PC),r1
            0x0ce345a4      440e           mov.b r4,@(r0,r14)
            0x0ce345a6      0870           add 0x08,r0
            0x0ce345a8      440e           mov.b r4,@(r0,r14)
            0x0ce345aa      05e3           mov 0x05,r3
            0x0ce345ac      1190           mov.w @(0x22,PC),r0
            0x0ce345ae      440e           mov.b r4,@(r0,r14)
            0x0ce345b0      e364           mov r14,r4
            0x0ce345b2      0f90           mov.w @(0x1E,PC),r0
            0x0ce345b4      340e           mov.b r3,@(r0,r14)
            0x0ce345b6      e784           mov.b @(0x7,r14),r0
            0x0ce345b8      0c60           extu.b r0,r0
            0x0ce345ba      0840           shll2 r0
            0x0ce345bc      1e03           mov.l @(r0,r1),r3
            0x0ce345be      2b43           jmp @r3
            0x0ce345c0      f66e           mov.l @r15+,r14
            0x0ce345c2      4101           .word 0x0141
            0x0ce345c4      c801           .word 0x01C8
            0x0ce345c6      f601           mov.l r15,@(r0,r1)
            0x0ce345c8      a101           .word 0x01A1
            0x0ce345ca      f903           .word 0x03F9
            0x0ce345cc      2703           mul.l r2,r3
            0x0ce345ce      0502           mov.w r0,@(r0,r2)
            0x0ce345d0      ea01           .word 0x01EA
            0x0ce345d2      f803           .word 0x03F8
            0x0ce345d4      2803           .word 0x0328
            0x0ce345d6      0000           .word 0x0000
            0x0ce345d8      c4fe           fcmp/eq fr12,fr14
            0x0ce345da      028c           .word 0x8C02
            0x0ce345dc      .dword 0x0ce36fb4 ; aav.0x0ce36fb4
            0x0ce345e0      2891           mov.w @(0x50,PC),r1
            0x0ce345e2      128c           .word 0x8C12
            0x0ce345e4      e22c           mov.l r14,@r12
            0x0ce345e6      058c           .word 0x8C05
            0x0ce345e8      b411           mov.l r11,@(0x10,r1)
            0x0ce345ea      058c           .word 0x8C05
            0x0ce345ec      8c4e           shad r8,r14
            0x0ce345ee      038c           .word 0x8C03
            0x0ce345f0      ee4d           ldc r13,r6_bank
            0x0ce345f2      038c           .word 0x8C03
            0x0ce345f4      6251           mov.l @(0x8,r6),r1
            0x0ce345f6      038c           .word 0x8C03
            0x0ce345f8      4816           mov.l r4,@(0x20,r6)
            0x0ce345fa      058c           .word 0x8C05
            0x0ce345fc      .dword 0x0ce36fbc ; aav.0x0ce36fbc
            ;-- aav.0x0ce34600:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36fb0)
            0x0ce34600      224f           sts.l pr,@-r15
            0x0ce34602      fc7f           add 0xFC,r15
            0x0ce34604      52d3           mov.l @(0x148,PC),r3
            0x0ce34606      0b43           jsr @r3
            0x0ce34608      422f           mov.l r4,@r15
            0x0ce3460a      0e60           exts.b r0,r0
            0x0ce3460c      1140           cmp/pz r0
            0x0ce3460e      0489           bt 0x0ce3461a
            0x0ce34610      f264           mov.l @r15,r4
            0x0ce34612      047f           add 0x04,r15
            0x0ce34614      4fd3           mov.l @(0x13C,PC),r3
            0x0ce34616      2b43           jmp @r3
            0x0ce34618      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce34600 (+0xe)
            0x0ce3461a      047f           add 0x04,r15
            0x0ce3461c      264f           lds.l @r15+,pr
            0x0ce3461e      0b00           rts 
            0x0ce34620      0900           nop 
            ;-- aav.0x0ce34622:
            ; XREFS: UNKNOWN 0x0ce36e00  UNKNOWN 0x0ce36e04  UNKNOWN 0x0ce36e10  
            ; XREFS: UNKNOWN 0x0ce36e14  UNKNOWN 0x0ce36e18  UNKNOWN 0x0ce36e1c  
            ; XREFS: UNKNOWN 0x0ce36e20  UNKNOWN 0x0ce36e24  UNKNOWN 0x0ce36e28  
            0x0ce34622      4363           mov r4,r3
            0x0ce34624      4cd1           mov.l @(0x130,PC),r1
            0x0ce34626      462f           mov.l r4,@-r15
            0x0ce34628      3684           mov.b @(0x6,r3),r0
            0x0ce3462a      0c60           extu.b r0,r0
            0x0ce3462c      0840           shll2 r0
            0x0ce3462e      1e03           mov.l @(r0,r1),r3
            0x0ce34630      2b43           jmp @r3
            0x0ce34632      047f           add 0x04,r15
            ;-- aav.0x0ce34634:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36ffc)
            0x0ce34634      e62f           mov.l r14,@-r15
            0x0ce34636      436e           mov r4,r14
            0x0ce34638      224f           sts.l pr,@-r15
            0x0ce3463a      e684           mov.b @(0x6,r14),r0
            0x0ce3463c      47d3           mov.l @(0x11C,PC),r3
            0x0ce3463e      0170           add 0x01,r0
            0x0ce34640      e680           mov.b r0,@(0x6,r14)
            0x0ce34642      0b43           jsr @r3
            0x0ce34644      e364           mov r14,r4
            0x0ce34646      46d2           mov.l @(0x118,PC),r2
            0x0ce34648      0ce5           mov 0x0C,r5
            0x0ce3464a      0b42           jsr @r2
            0x0ce3464c      e364           mov r14,r4
            0x0ce3464e      7a90           mov.w @(0xF4,PC),r0
            0x0ce34650      f9e2           mov 0xF9,r2
            0x0ce34652      44d1           mov.l @(0x110,PC),r1
            0x0ce34654      ec00           mov.b @(r0,r14),r0
            0x0ce34656      45d4           mov.l @(0x114,PC),r4
            0x0ce34658      0c60           extu.b r0,r0
            0x0ce3465a      0040           shll r0
            0x0ce3465c      1d00           mov.w @(r0,r1),r0
            0x0ce3465e      ee81           mov.w r0,@(0x1C,r14)
            0x0ce34660      41c7           mova @(0x104,PC),r0
            0x0ce34662      08f5           fmov @r0,fr5
            0x0ce34664      42c7           mova @(0x108,PC),r0
            0x0ce34666      08f4           fmov @r0,fr4
            0x0ce34668      6e90           mov.w @(0xDC,PC),r0
            0x0ce3466a      ec03           mov.b @(r0,r14),r3
            0x0ce3466c      a170           add 0xA1,r0
            0x0ce3466e      3c63           extu.b r3,r3
            0x0ce34670      2d43           shld r2,r3
            0x0ce34672      ec02           mov.b @(r0,r14),r2
            0x0ce34674      0843           shll2 r3
            0x0ce34676      2c62           extu.b r2,r2
            0x0ce34678      0842           shll2 r2
            0x0ce3467a      0843           shll2 r3
            0x0ce3467c      0042           shll r2
            0x0ce3467e      4c33           add r4,r3
            0x0ce34680      2c33           add r2,r3
            0x0ce34682      3262           mov.l @r3,r2
            0x0ce34684      5ce0           mov 0x5C,r0
            0x0ce34686      5a42           lds r2,fpul
            0x0ce34688      2df3           float fpul,fr3
            0x0ce3468a      52f3           fmul fr5,fr3
            0x0ce3468c      43f3           fdiv fr4,fr3
            0x0ce3468e      37fe           fmov fr3,@(r0,r14)
            0x0ce34690      f9e2           mov 0xF9,r2
            0x0ce34692      5990           mov.w @(0xB2,PC),r0
            0x0ce34694      ec03           mov.b @(r0,r14),r3
            0x0ce34696      a170           add 0xA1,r0
            0x0ce34698      3c63           extu.b r3,r3
            0x0ce3469a      2d43           shld r2,r3
            0x0ce3469c      0843           shll2 r3
            0x0ce3469e      0843           shll2 r3
            0x0ce346a0      3c34           add r3,r4
            0x0ce346a2      ec03           mov.b @(r0,r14),r3
            0x0ce346a4      68e0           mov 0x68,r0
            0x0ce346a6      3c63           extu.b r3,r3
            0x0ce346a8      0843           shll2 r3
            0x0ce346aa      0043           shll r3
            0x0ce346ac      3c34           add r3,r4
            0x0ce346ae      4153           mov.l @(0x4,r4),r3
            0x0ce346b0      5a43           lds r3,fpul
            0x0ce346b2      2df3           float fpul,fr3
            0x0ce346b4      52f3           fmul fr5,fr3
            0x0ce346b6      43f3           fdiv fr4,fr3
            0x0ce346b8      37fe           fmov fr3,@(r0,r14)
            0x0ce346ba      2ec7           mova @(0xB8,PC),r0
            0x0ce346bc      08f3           fmov @r0,fr3
            0x0ce346be      60e0           mov 0x60,r0
            0x0ce346c0      37fe           fmov fr3,@(r0,r14)
            0x0ce346c2      2dc7           mova @(0xB4,PC),r0
            0x0ce346c4      08f3           fmov @r0,fr3
            0x0ce346c6      6ce0           mov 0x6C,r0
            0x0ce346c8      37fe           fmov fr3,@(r0,r14)
            0x0ce346ca      3e90           mov.w @(0x7C,PC),r0
            0x0ce346cc      ec03           mov.b @(r0,r14),r3
/ (fcn) fcn.0ce346ce 4
|   fcn.0ce346ce ();
|           ; CALL XREF from aav.0x0ce338d8 (+0x3c)
|           0x0ce346ce      3823           tst r3,r3
\           0x0ce346d0      088f           bf.s 0x0ce346e4             ; fcn.0ce346d2+0x12
/ (fcn) fcn.0ce346d2 30
|   fcn.0ce346d2 ();
|           ; CALL XREF from aav.0x0ce338d8 (+0x40)
|           0x0ce346d2      2fe6           mov 0x2F,r6
|           0x0ce346d4      5ce0           mov 0x5C,r0
|           0x0ce346d6      e6f3           fmov @(r0,r14),fr3
|           0x0ce346d8      4df3           fneg fr3
|           0x0ce346da      37fe           fmov fr3,@(r0,r14)
|           0x0ce346dc      68e0           mov 0x68,r0
|           0x0ce346de      e6f3           fmov @(r0,r14),fr3
|           0x0ce346e0      4df3           fneg fr3
|           0x0ce346e2      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce346ce (0xce346d0)
|           0x0ce346e4      264f           lds.l @r15+,pr
|           0x0ce346e6      25d3           mov.l @(0x94,PC),r3
|           0x0ce346e8      0fe5           mov 0x0F,r5
|           0x0ce346ea      e364           mov r14,r4
|           0x0ce346ec      2b43           jmp @r3
\           0x0ce346ee      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce346f0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37000)
            0x0ce346f0      e62f           mov.l r14,@-r15
            0x0ce346f2      224f           sts.l pr,@-r15
            0x0ce346f4      16d3           mov.l @(0x58,PC),r3
            0x0ce346f6      0b43           jsr @r3
            0x0ce346f8      436e           mov r4,r14
            0x0ce346fa      0e60           exts.b r0,r0
            0x0ce346fc      1140           cmp/pz r0
            0x0ce346fe      0f89           bt 0x0ce34720
            0x0ce34700      e684           mov.b @(0x6,r14),r0
            0x0ce34702      11e3           mov 0x11,r3
            0x0ce34704      0170           add 0x01,r0
            0x0ce34706      e680           mov.b r0,@(0x6,r14)
            ; CODE XREF from aav.0x0ce33c7a (+0x5a)
            0x0ce34708      2090           mov.w @(0x40,PC),r0
            0x0ce3470a      340e           mov.b r3,@(r0,r14)
            0x0ce3470c      1cd3           mov.l @(0x70,PC),r3
            0x0ce3470e      0b43           jsr @r3
            0x0ce34710      e364           mov r14,r4
            0x0ce34712      264f           lds.l @r15+,pr
            0x0ce34714      19d2           mov.l @(0x64,PC),r2
            0x0ce34716      e364           mov r14,r4
            0x0ce34718      30e6           mov 0x30,r6
            0x0ce3471a      0fe5           mov 0x0F,r5
            0x0ce3471c      2b42           jmp @r2
            0x0ce3471e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce346f0 (+0xe)
            0x0ce34720      264f           lds.l @r15+,pr
            0x0ce34722      0b00           rts 
            0x0ce34724      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34726:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37004)
            0x0ce34726      e62f           mov.l r14,@-r15
            0x0ce34728      d62f           mov.l r13,@-r15
            0x0ce3472a      224f           sts.l pr,@-r15
            0x0ce3472c      f47f           add 0xF4,r15
            0x0ce3472e      436e           mov r4,r14
            0x0ce34730      ee85           mov.w @(0x1C,r14),r0
            0x0ce34732      ff70           add 0xFF,r0
            0x0ce34734      ee81           mov.w r0,@(0x1C,r14)
            0x0ce34736      0f60           exts.w r0,r0
            0x0ce34738      0820           tst r0,r0
            0x0ce3473a      258b           bf 0x0ce34788
            0x0ce3473c      11d2           mov.l @(0x44,PC),r2
            0x0ce3473e      0b42           jsr @r2
            0x0ce34740      e364           mov r14,r4
            0x0ce34742      7aa0           bra 0x0ce3483a
            0x0ce34744      0900           nop 
            0x0ce34746      a301           ocbp @r1
            0x0ce34748      0202           stc sr,r2
            0x0ce3474a      d201           stc r5_bank,r1
            0x0ce3474c      d601           mov.l r13,@(r0,r1)
            0x0ce3474e      0000           .word 0x0000
            0x0ce34750      ee4d           ldc r13,r6_bank
            0x0ce34752      038c           .word 0x8C03
            0x0ce34754      4816           mov.l r4,@(0x20,r6)
            0x0ce34756      058c           .word 0x8C05
            0x0ce34758      .dword 0x0ce36ffc ; aav.0x0ce36ffc
            0x0ce3475c      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce34760      e46d           mov.b @r14+,r13
            0x0ce34762      058c           .word 0x8C05
            0x0ce34764      .dword 0x0ce3702c ; aav.0x0ce3702c
            0x0ce34768      5555           mov.l @(0x14,r5),r5
            0x0ce3476a      d53f           dmulu.l r13,r15
            0x0ce3476c      .dword 0x0ce3700c ; aav.0x0ce3700c
            0x0ce34770      0000           .word 0x0000
            0x0ce34772      8047           .word 0x4780
            0x0ce34774      2449           rotcl r9
            0x0ce34776      1a41           lds r1,macl
            0x0ce34778      9224           mov.l r9,@r4
            0x0ce3477a      89be           bsr fcn.0ce34490
            0x0ce3477c      8c4e           shad r8,r14
            0x0ce3477e      038c           .word 0x8C03
            0x0ce34780      8230           cmp/hs r8,r0
            0x0ce34782      058c           .word 0x8C05
            0x0ce34784      6e17           mov.l r6,@(0x38,r7)
            0x0ce34786      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce34726 (+0x14)
            0x0ce34788      54d3           mov.l @(0x150,PC),r3
            0x0ce3478a      0b43           jsr @r3
            0x0ce3478c      e364           mov r14,r4
            0x0ce3478e      5ce1           mov 0x5C,r1
            0x0ce34790      ec31           add r14,r1
            0x0ce34792      34e0           mov 0x34,r0
            0x0ce34794      18f3           fmov @r1,fr3
            0x0ce34796      e6f2           fmov @(r0,r14),fr2
            0x0ce34798      68e1           mov 0x68,r1
            0x0ce3479a      ec31           add r14,r1
            0x0ce3479c      30f2           fadd fr3,fr2
            0x0ce3479e      08e3           mov 0x08,r3
            0x0ce347a0      27fe           fmov fr2,@(r0,r14)
            0x0ce347a2      5ce0           mov 0x5C,r0
            0x0ce347a4      e6f2           fmov @(r0,r14),fr2
            0x0ce347a6      18f3           fmov @r1,fr3
            0x0ce347a8      60e1           mov 0x60,r1
            0x0ce347aa      ec31           add r14,r1
            0x0ce347ac      30f2           fadd fr3,fr2
            0x0ce347ae      27fe           fmov fr2,@(r0,r14)
            0x0ce347b0      38e0           mov 0x38,r0
            0x0ce347b2      e6f2           fmov @(r0,r14),fr2
            0x0ce347b4      18f3           fmov @r1,fr3
            0x0ce347b6      6ce1           mov 0x6C,r1
            0x0ce347b8      ec31           add r14,r1
            0x0ce347ba      30f2           fadd fr3,fr2
            0x0ce347bc      27fe           fmov fr2,@(r0,r14)
            0x0ce347be      60e0           mov 0x60,r0
            0x0ce347c0      e6f2           fmov @(r0,r14),fr2
            0x0ce347c2      18f3           fmov @r1,fr3
            0x0ce347c4      30f2           fadd fr3,fr2
            0x0ce347c6      27fe           fmov fr2,@(r0,r14)
            0x0ce347c8      ee85           mov.w @(0x1C,r14),r0
            0x0ce347ca      3330           cmp/ge r3,r0
            0x0ce347cc      3589           bt 0x0ce3483a
            0x0ce347ce      44d1           mov.l @(0x110,PC),r1
            0x0ce347d0      0b41           jsr @r1
            0x0ce347d2      e364           mov r14,r4
            0x0ce347d4      0820           tst r0,r0
            0x0ce347d6      308d           bt.s 0x0ce3483a
            0x0ce347d8      036d           mov r0,r13
            0x0ce347da      e684           mov.b @(0x6,r14),r0
            0x0ce347dc      05e6           mov 0x05,r6
            0x0ce347de      7493           mov.w @(0xE8,PC),r3
            0x0ce347e0      6365           mov r6,r5
            0x0ce347e2      0170           add 0x01,r0
            0x0ce347e4      e680           mov.b r0,@(0x6,r14)
            0x0ce347e6      00e0           mov 0x00,r0
            0x0ce347e8      e780           mov.b r0,@(0x7,r14)
            0x0ce347ea      6f90           mov.w @(0xDE,PC),r0
            0x0ce347ec      340e           mov.b r3,@(r0,r14)
            0x0ce347ee      3dd3           mov.l @(0xF4,PC),r3
            0x0ce347f0      0b43           jsr @r3
            0x0ce347f2      e364           mov r14,r4
            0x0ce347f4      3cc7           mova @(0xF0,PC),r0
            0x0ce347f6      3ed3           mov.l @(0xF8,PC),r3
            0x0ce347f8      08f3           fmov @r0,fr3
            0x0ce347fa      3cc7           mova @(0xF0,PC),r0
            0x0ce347fc      f365           mov r15,r5
            0x0ce347fe      3aff           fmov fr3,@r15
            0x0ce34800      08f3           fmov @r0,fr3
            0x0ce34802      04e0           mov 0x04,r0
            0x0ce34804      37ff           fmov fr3,@(r0,r15)
            0x0ce34806      0b43           jsr @r3
            0x0ce34808      e364           mov r14,r4
            0x0ce3480a      6090           mov.w @(0xC0,PC),r0
            ; CODE XREF from aav.0x0ce33d6c (+0x6c)
            0x0ce3480c      01e3           mov 0x01,r3
            0x0ce3480e      0fe5           mov 0x0F,r5
            0x0ce34810      ed02           mov.w @(r0,r14),r2
            0x0ce34812      31e6           mov 0x31,r6
            0x0ce34814      3a22           xor r3,r2
            0x0ce34816      250e           mov.w r2,@(r0,r14)
            0x0ce34818      ec01           mov.b @(r0,r14),r1
            0x0ce3481a      5990           mov.w @(0xB2,PC),r0
            0x0ce3481c      140e           mov.b r1,@(r0,r14)
            0x0ce3481e      5690           mov.w @(0xAC,PC),r0
            0x0ce34820      dd02           mov.w @(r0,r13),r2
            0x0ce34822      3a22           xor r3,r2
            0x0ce34824      250d           mov.w r2,@(r0,r13)
            0x0ce34826      dc01           mov.b @(r0,r13),r1
            0x0ce34828      5290           mov.w @(0xA4,PC),r0
            0x0ce3482a      32d2           mov.l @(0xC8,PC),r2
            0x0ce3482c      140d           mov.b r1,@(r0,r13)
            0x0ce3482e      0b42           jsr @r2
            0x0ce34830      e364           mov r14,r4
            0x0ce34832      31d3           mov.l @(0xC4,PC),r3
            0x0ce34834      d365           mov r13,r5
            0x0ce34836      0b43           jsr @r3
            0x0ce34838      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce34726 (+0x1c, +0xa6, +0xb0)
            0x0ce3483a      0c7f           add 0x0C,r15
            0x0ce3483c      264f           lds.l @r15+,pr
            0x0ce3483e      f66d           mov.l @r15+,r13
            0x0ce34840      0b00           rts 
            0x0ce34842      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34844:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37008)
            0x0ce34844      4590           mov.w @(0x8A,PC),r0
            0x0ce34846      01e3           mov 0x01,r3
            0x0ce34848      e62f           mov.l r14,@-r15
            0x0ce3484a      436e           mov r4,r14
            0x0ce3484c      02e4           mov 0x02,r4
            0x0ce3484e      224f           sts.l pr,@-r15
            0x0ce34850      340e           mov.b r3,@(r0,r14)
            0x0ce34852      0370           add 0x03,r0
            0x0ce34854      440e           mov.b r4,@(r0,r14)
            0x0ce34856      0870           add 0x08,r0
            0x0ce34858      440e           mov.b r4,@(r0,r14)
            0x0ce3485a      fd70           add 0xFD,r0
            0x0ce3485c      03e3           mov 0x03,r3
            0x0ce3485e      340e           mov.b r3,@(r0,r14)
            0x0ce34860      1ed3           mov.l @(0x78,PC),r3
            0x0ce34862      0b43           jsr @r3
            0x0ce34864      e364           mov r14,r4
            0x0ce34866      0e60           exts.b r0,r0
            0x0ce34868      1140           cmp/pz r0
            0x0ce3486a      0789           bt 0x0ce3487c
            0x0ce3486c      23d3           mov.l @(0x8C,PC),r3
            0x0ce3486e      0b43           jsr @r3
            0x0ce34870      e364           mov r14,r4
            0x0ce34872      264f           lds.l @r15+,pr
            0x0ce34874      22d2           mov.l @(0x88,PC),r2
            0x0ce34876      e364           mov r14,r4
            0x0ce34878      2b42           jmp @r2
            0x0ce3487a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34844 (+0x26)
            0x0ce3487c      2a90           mov.w @(0x54,PC),r0
            0x0ce3487e      ec03           mov.b @(r0,r14),r3
            0x0ce34880      3823           tst r3,r3
            0x0ce34882      1f89           bt 0x0ce348c4
            0x0ce34884      00e3           mov 0x00,r3
            0x0ce34886      3365           mov r3,r5
            0x0ce34888      3366           mov r3,r6
            0x0ce3488a      340e           mov.b r3,@(r0,r14)
            0x0ce3488c      15d3           mov.l @(0x54,PC),r3
            0x0ce3488e      0b43           jsr @r3
            0x0ce34890      e364           mov r14,r4
            0x0ce34892      2090           mov.w @(0x40,PC),r0
            0x0ce34894      01e3           mov 0x01,r3
            0x0ce34896      ee04           mov.l @(r0,r14),r4
            0x0ce34898      2e70           add 0x2E,r0
            0x0ce3489a      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from fcn.0ce352a8 (+0x9c)
            0x0ce3489c      5f70           add 0x5F,r0
            0x0ce3489e      ec00           mov.b @(r0,r14),r0
            0x0ce348a0      0c60           extu.b r0,r0
            0x0ce348a2      0388           cmp/eq 0x03,r0
            0x0ce348a4      048b           bf 0x0ce348b0
            0x0ce348a6      1790           mov.w @(0x2E,PC),r0
            0x0ce348a8      3ce5           mov 0x3C,r5
            0x0ce348aa      5404           mov.b r5,@(r0,r4)
            0x0ce348ac      0aa0           bra 0x0ce348c4
            0x0ce348ae      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce34844 (+0x60)
            0x0ce348b0      1390           mov.w @(0x26,PC),r0
            0x0ce348b2      ec02           mov.b @(r0,r14),r2
            0x0ce348b4      fe70           add 0xFE,r0
            0x0ce348b6      3b72           add 0x3B,r2
            0x0ce348b8      2404           mov.b r2,@(r0,r4)
            0x0ce348ba      0270           add 0x02,r0
            0x0ce348bc      ec03           mov.b @(r0,r14),r3
            0x0ce348be      fe70           add 0xFE,r0
            0x0ce348c0      3b73           add 0x3B,r3
            0x0ce348c2      340e           mov.b r3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce34844 (+0x3e, +0x68)
            0x0ce348c4      264f           lds.l @r15+,pr
            0x0ce348c6      0b00           rts 
            0x0ce348c8      f66e           mov.l @r15+,r14
            0x0ce348ca      cb00           .word 0x00CB
            0x0ce348cc      f701           mul.l r15,r1
            0x0ce348ce      3001           .word 0x0130
            0x0ce348d0      d201           stc r5_bank,r1
            0x0ce348d2      ea01           .word 0x01EA
            0x0ce348d4      4101           .word 0x0141
            0x0ce348d6      c801           .word 0x01C8
            0x0ce348d8      a101           .word 0x01A1
            0x0ce348da      a301           ocbp @r1
            0x0ce348dc      ee4d           ldc r13,r6_bank
            0x0ce348de      038c           .word 0x8C03
            0x0ce348e0      9057           mov.l @(0x0,r9),r7
            0x0ce348e2      048c           .word 0x8C04
            0x0ce348e4      c4fe           fcmp/eq fr12,fr14
            0x0ce348e6      028c           .word 0x8C02
            0x0ce348e8      5555           mov.l @(0x14,r5),r5
            0x0ce348ea      05c3           trapa 0x05
            0x0ce348ec      6ddb           mov.l @(0x1B4,PC),r11
            0x0ce348ee      5e43           ldc r3,r5_bank
            0x0ce348f0      6036           cmp/eq r6,r6
            0x0ce348f2      108c           .word 0x8C10
            0x0ce348f4      8c4e           shad r8,r14
            0x0ce348f6      038c           .word 0x8C03
            0x0ce348f8      d823           tst r13,r3
            0x0ce348fa      058c           .word 0x8C05
            0x0ce348fc      8a21           xor r8,r1
            0x0ce348fe      058c           .word 0x8C05
            0x0ce34900      6e17           mov.l r6,@(0x38,r7)
            0x0ce34902      058c           .word 0x8C05
            ;-- aav.0x0ce34904:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e08)
            0x0ce34904      4363           mov r4,r3
            0x0ce34906      58d1           mov.l @(0x160,PC),r1
            0x0ce34908      462f           mov.l r4,@-r15
            0x0ce3490a      3684           mov.b @(0x6,r3),r0
            0x0ce3490c      0c60           extu.b r0,r0
            0x0ce3490e      0840           shll2 r0
            0x0ce34910      1e03           mov.l @(r0,r1),r3
            0x0ce34912      2b43           jmp @r3
            0x0ce34914      047f           add 0x04,r15
            ;-- aav.0x0ce34916:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37030)
            0x0ce34916      e62f           mov.l r14,@-r15
            0x0ce34918      436e           mov r4,r14
            0x0ce3491a      37e3           mov 0x37,r3
            0x0ce3491c      00e4           mov 0x00,r4
            0x0ce3491e      224f           sts.l pr,@-r15
            0x0ce34920      e684           mov.b @(0x6,r14),r0
            0x0ce34922      0170           add 0x01,r0
            0x0ce34924      e680           mov.b r0,@(0x6,r14)
            0x0ce34926      9990           mov.w @(0x132,PC),r0
            0x0ce34928      340e           mov.b r3,@(r0,r14)
            0x0ce3492a      0b70           add 0x0B,r0
            0x0ce3492c      450e           mov.w r4,@(r0,r14)
            0x0ce3492e      f270           add 0xF2,r0
            0x0ce34930      440e           mov.b r4,@(r0,r14)
            0x0ce34932      2670           add 0x26,r0
            0x0ce34934      4dd3           mov.l @(0x134,PC),r3
            0x0ce34936      460e           mov.l r4,@(r0,r14)
            0x0ce34938      e284           mov.b @(0x2,r14),r0
            0x0ce3493a      3262           mov.l @r3,r2
            0x0ce3493c      0c60           extu.b r0,r0
            0x0ce3493e      0040           shll r0
            0x0ce34940      7c72           add 0x7C,r2
            0x0ce34942      2d01           mov.w @(r0,r2),r1
            0x0ce34944      0171           add 0x01,r1
            0x0ce34946      1502           mov.w r1,@(r0,r2)
            0x0ce34948      49d2           mov.l @(0x124,PC),r2
            0x0ce3494a      0b42           jsr @r2
            0x0ce3494c      e364           mov r14,r4
            0x0ce3494e      49c7           mova @(0x124,PC),r0
            ; CODE XREF from aav.0x0ce33eda (+0x42)
            0x0ce34950      08f3           fmov @r0,fr3
            0x0ce34952      5ce0           mov 0x5C,r0
            0x0ce34954      37fe           fmov fr3,@(r0,r14)
            0x0ce34956      68e0           mov 0x68,r0
            0x0ce34958      8df3           fldi0 fr3
            0x0ce3495a      37fe           fmov fr3,@(r0,r14)
            0x0ce3495c      7f90           mov.w @(0xFE,PC),r0
            0x0ce3495e      ec03           mov.b @(r0,r14),r3
            0x0ce34960      3823           tst r3,r3
            0x0ce34962      048f           bf.s 0x0ce3496e
            0x0ce34964      08e6           mov 0x08,r6
            0x0ce34966      5ce0           mov 0x5C,r0
            0x0ce34968      e6f3           fmov @(r0,r14),fr3
            0x0ce3496a      4df3           fneg fr3
            0x0ce3496c      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce34916 (+0x4c)
            0x0ce3496e      264f           lds.l @r15+,pr
            0x0ce34970      41d3           mov.l @(0x104,PC),r3
            0x0ce34972      15e5           mov 0x15,r5
            0x0ce34974      e364           mov r14,r4
            0x0ce34976      2b43           jmp @r3
            0x0ce34978      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3497a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37034)
            0x0ce3497a      e62f           mov.l r14,@-r15
            0x0ce3497c      224f           sts.l pr,@-r15
            0x0ce3497e      f47f           add 0xF4,r15
            0x0ce34980      6e93           mov.w @(0xDC,PC),r3
            0x0ce34982      436e           mov r4,r14
            0x0ce34984      ec33           add r14,r3
            0x0ce34986      3184           mov.b @(0x1,r3),r0
            0x0ce34988      0820           tst r0,r0
            0x0ce3498a      158d           bt.s 0x0ce349b8
            0x0ce3498c      00e4           mov 0x00,r4
            0x0ce3498e      6792           mov.w @(0xCE,PC),r2
            0x0ce34990      ec32           add r14,r2
            0x0ce34992      4360           mov r4,r0
            0x0ce34994      0900           nop 
            0x0ce34996      2180           mov.b r0,@(0x1,r2)
            0x0ce34998      38c7           mova @(0xE0,PC),r0
            0x0ce3499a      08f3           fmov @r0,fr3
            0x0ce3499c      38c7           mova @(0xE0,PC),r0
            0x0ce3499e      39d3           mov.l @(0xE4,PC),r3
            0x0ce349a0      f365           mov r15,r5
            0x0ce349a2      3aff           fmov fr3,@r15
            0x0ce349a4      01e6           mov 0x01,r6
            0x0ce349a6      08f3           fmov @r0,fr3
            0x0ce349a8      04e0           mov 0x04,r0
            0x0ce349aa      37ff           fmov fr3,@(r0,r15)
            0x0ce349ac      0b43           jsr @r3
            0x0ce349ae      e364           mov r14,r4
            0x0ce349b0      0c7f           add 0x0C,r15
            0x0ce349b2      264f           lds.l @r15+,pr
            0x0ce349b4      0b00           rts 
            0x0ce349b6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3497a (+0x10)
            0x0ce349b8      5390           mov.w @(0xA6,PC),r0
            0x0ce349ba      05e2           mov 0x05,r2
            0x0ce349bc      2bd5           mov.l @(0xAC,PC),r5
            0x0ce349be      240e           mov.b r2,@(r0,r14)
            0x0ce349c0      5090           mov.w @(0xA0,PC),r0
            0x0ce349c2      ec00           mov.b @(r0,r14),r0
            0x0ce349c4      0188           cmp/eq 0x01,r0
            0x0ce349c6      128b           bf 0x0ce349ee
            0x0ce349c8      4c90           mov.w @(0x98,PC),r0
            0x0ce349ca      37e3           mov 0x37,r3
            0x0ce349cc      440e           mov.b r4,@(r0,r14)
            0x0ce349ce      6070           add 0x60,r0
            0x0ce349d0      340e           mov.b r3,@(r0,r14)
            0x0ce349d2      0b70           add 0x0B,r0
            0x0ce349d4      450e           mov.w r4,@(r0,r14)
            0x0ce349d6      f270           add 0xF2,r0
            0x0ce349d8      440e           mov.b r4,@(r0,r14)
            0x0ce349da      2670           add 0x26,r0
            0x0ce349dc      460e           mov.l r4,@(r0,r14)
            0x0ce349de      e284           mov.b @(0x2,r14),r0
            0x0ce349e0      5263           mov.l @r5,r3
            0x0ce349e2      0c60           extu.b r0,r0
            0x0ce349e4      0040           shll r0
            0x0ce349e6      7c73           add 0x7C,r3
            0x0ce349e8      3d02           mov.w @(r0,r3),r2
            0x0ce349ea      0172           add 0x01,r2
            0x0ce349ec      2503           mov.w r2,@(r0,r3)
            ; CODE XREF from aav.0x0ce3497a (+0x4c)
            0x0ce349ee      3990           mov.w @(0x72,PC),r0
            0x0ce349f0      ec00           mov.b @(r0,r14),r0
            0x0ce349f2      0288           cmp/eq 0x02,r0
            0x0ce349f4      128b           bf 0x0ce34a1c
            0x0ce349f6      3590           mov.w @(0x6A,PC),r0
            0x0ce349f8      38e3           mov 0x38,r3
            0x0ce349fa      440e           mov.b r4,@(r0,r14)
            0x0ce349fc      6070           add 0x60,r0
            0x0ce349fe      340e           mov.b r3,@(r0,r14)
            0x0ce34a00      0b70           add 0x0B,r0
            0x0ce34a02      450e           mov.w r4,@(r0,r14)
            0x0ce34a04      f270           add 0xF2,r0
            0x0ce34a06      440e           mov.b r4,@(r0,r14)
            0x0ce34a08      2670           add 0x26,r0
            0x0ce34a0a      460e           mov.l r4,@(r0,r14)
            0x0ce34a0c      e284           mov.b @(0x2,r14),r0
            0x0ce34a0e      5263           mov.l @r5,r3
            0x0ce34a10      0c60           extu.b r0,r0
            0x0ce34a12      0040           shll r0
            0x0ce34a14      7c73           add 0x7C,r3
            0x0ce34a16      3d02           mov.w @(r0,r3),r2
            0x0ce34a18      0172           add 0x01,r2
            0x0ce34a1a      2503           mov.w r2,@(r0,r3)
            ; CODE XREF from aav.0x0ce3497a (+0x7a)
            0x0ce34a1c      5ce1           mov 0x5C,r1
            0x0ce34a1e      1ad3           mov.l @(0x68,PC),r3
            0x0ce34a20      ec31           add r14,r1
            0x0ce34a22      34e0           mov 0x34,r0
            0x0ce34a24      18f3           fmov @r1,fr3
            0x0ce34a26      e6f2           fmov @(r0,r14),fr2
            0x0ce34a28      68e1           mov 0x68,r1
            0x0ce34a2a      ec31           add r14,r1
            0x0ce34a2c      30f2           fadd fr3,fr2
            0x0ce34a2e      27fe           fmov fr2,@(r0,r14)
            0x0ce34a30      5ce0           mov 0x5C,r0
            0x0ce34a32      e6f2           fmov @(r0,r14),fr2
            0x0ce34a34      18f3           fmov @r1,fr3
            0x0ce34a36      30f2           fadd fr3,fr2
            0x0ce34a38      27fe           fmov fr2,@(r0,r14)
            0x0ce34a3a      0b43           jsr @r3
            0x0ce34a3c      e364           mov r14,r4
            0x0ce34a3e      0e60           exts.b r0,r0
            0x0ce34a40      1140           cmp/pz r0
            0x0ce34a42      0789           bt 0x0ce34a54
            0x0ce34a44      e684           mov.b @(0x6,r14),r0
            0x0ce34a46      18e5           mov 0x18,r5
            0x0ce34a48      0bd3           mov.l @(0x2C,PC),r3
            0x0ce34a4a      04e6           mov 0x04,r6
            0x0ce34a4c      0170           add 0x01,r0
            0x0ce34a4e      e680           mov.b r0,@(0x6,r14)
            0x0ce34a50      0b43           jsr @r3
            0x0ce34a52      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce3497a (+0xc8)
            0x0ce34a54      0c7f           add 0x0C,r15
            0x0ce34a56      264f           lds.l @r15+,pr
            0x0ce34a58      0b00           rts 
            0x0ce34a5a      f66e           mov.l @r15+,r14
            0x0ce34a5c      a101           .word 0x01A1
            0x0ce34a5e      d201           stc r5_bank,r1
            0x0ce34a60      5001           .word 0x0150
            0x0ce34a62      2803           .word 0x0328
            0x0ce34a64      4101           .word 0x0141
            0x0ce34a66      0000           .word 0x0000
            0x0ce34a68      .dword 0x0ce37030 ; aav.0x0ce37030
            0x0ce34a6c      b096           mov.w @(0x160,PC),r6
            0x0ce34a6e      288c           .word 0x8C28
            0x0ce34a70      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce34a74      5555           mov.l @(0x14,r5),r5
            0x0ce34a76      8540           .word 0x4085
            0x0ce34a78      8c4e           shad r8,r14
            0x0ce34a7a      038c           .word 0x8C03
            0x0ce34a7c      0000           .word 0x0000
            0x0ce34a7e      20c2           mov.l r0,@(0x80,gbr)
            0x0ce34a80      2449           rotcl r9
            0x0ce34a82      1a43           lds r3,macl
            0x0ce34a84      3408           mov.b r3,@(r0,r8)
            0x0ce34a86      058c           .word 0x8C05
            0x0ce34a88      ee4d           ldc r13,r6_bank
            0x0ce34a8a      038c           .word 0x8C03
            ;-- aav.0x0ce34a8c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37038)
            0x0ce34a8c      224f           sts.l pr,@-r15
            0x0ce34a8e      fc7f           add 0xFC,r15
            0x0ce34a90      50d3           mov.l @(0x140,PC),r3
            0x0ce34a92      0b43           jsr @r3
            0x0ce34a94      422f           mov.l r4,@r15
            0x0ce34a96      0e60           exts.b r0,r0
            0x0ce34a98      1140           cmp/pz r0
            0x0ce34a9a      0489           bt 0x0ce34aa6
            0x0ce34a9c      f264           mov.l @r15,r4
            0x0ce34a9e      047f           add 0x04,r15
            0x0ce34aa0      4dd3           mov.l @(0x134,PC),r3
            0x0ce34aa2      2b43           jmp @r3
            0x0ce34aa4      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce34a8c (+0xe)
            0x0ce34aa6      047f           add 0x04,r15
            0x0ce34aa8      264f           lds.l @r15+,pr
            0x0ce34aaa      0b00           rts 
            0x0ce34aac      0900           nop 
            ;-- aav.0x0ce34aae:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e0c)
            0x0ce34aae      4363           mov r4,r3
            0x0ce34ab0      4ad1           mov.l @(0x128,PC),r1
            0x0ce34ab2      462f           mov.l r4,@-r15
            0x0ce34ab4      3684           mov.b @(0x6,r3),r0
            0x0ce34ab6      0c60           extu.b r0,r0
            0x0ce34ab8      0840           shll2 r0
            0x0ce34aba      1e03           mov.l @(r0,r1),r3
            0x0ce34abc      2b43           jmp @r3
            0x0ce34abe      047f           add 0x04,r15
            ;-- aav.0x0ce34ac0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3703c)
            0x0ce34ac0      4684           mov.b @(0x6,r4),r0
            0x0ce34ac2      07e6           mov 0x07,r6
            0x0ce34ac4      8df4           fldi0 fr4
            0x0ce34ac6      0170           add 0x01,r0
            0x0ce34ac8      45d3           mov.l @(0x114,PC),r3
            0x0ce34aca      4680           mov.b r0,@(0x6,r4)
            0x0ce34acc      5ce0           mov 0x5C,r0
            0x0ce34ace      47f4           fmov fr4,@(r0,r4)
            0x0ce34ad0      60e0           mov 0x60,r0
            0x0ce34ad2      47f4           fmov fr4,@(r0,r4)
            0x0ce34ad4      68e0           mov 0x68,r0
            0x0ce34ad6      47f4           fmov fr4,@(r0,r4)
            0x0ce34ad8      6ce0           mov 0x6C,r0
            0x0ce34ada      47f4           fmov fr4,@(r0,r4)
            0x0ce34adc      2b43           jmp @r3
            0x0ce34ade      15e5           mov 0x15,r5
            ;-- aav.0x0ce34ae0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37040)
            0x0ce34ae0      224f           sts.l pr,@-r15
            0x0ce34ae2      fc7f           add 0xFC,r15
            0x0ce34ae4      3bd3           mov.l @(0xEC,PC),r3
            0x0ce34ae6      0b43           jsr @r3
            0x0ce34ae8      422f           mov.l r4,@r15
            0x0ce34aea      0e60           exts.b r0,r0
            0x0ce34aec      1140           cmp/pz r0
            0x0ce34aee      0489           bt 0x0ce34afa
            0x0ce34af0      f264           mov.l @r15,r4
            0x0ce34af2      047f           add 0x04,r15
            0x0ce34af4      38d3           mov.l @(0xE0,PC),r3
            0x0ce34af6      2b43           jmp @r3
            0x0ce34af8      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce34ae0 (+0xe)
            0x0ce34afa      047f           add 0x04,r15
            0x0ce34afc      264f           lds.l @r15+,pr
            0x0ce34afe      0b00           rts 
            0x0ce34b00      0900           nop 
            ;-- aav.0x0ce34b02:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e2c)
            0x0ce34b02      4363           mov r4,r3
            0x0ce34b04      37d1           mov.l @(0xDC,PC),r1
            0x0ce34b06      462f           mov.l r4,@-r15
            0x0ce34b08      3684           mov.b @(0x6,r3),r0
            0x0ce34b0a      0c60           extu.b r0,r0
            0x0ce34b0c      0840           shll2 r0
            0x0ce34b0e      1e03           mov.l @(r0,r1),r3
            0x0ce34b10      2b43           jmp @r3
            0x0ce34b12      047f           add 0x04,r15
            ;-- aav.0x0ce34b14:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37044)
            0x0ce34b14      5890           mov.w @(0xB0,PC),r0
            0x0ce34b16      e62f           mov.l r14,@-r15
            0x0ce34b18      436e           mov r4,r14
            0x0ce34b1a      224f           sts.l pr,@-r15
            0x0ce34b1c      ec00           mov.b @(r0,r14),r0
            0x0ce34b1e      0c60           extu.b r0,r0
            0x0ce34b20      0688           cmp/eq 0x06,r0
            0x0ce34b22      058b           bf 0x0ce34b30
            0x0ce34b24      5290           mov.w @(0xA4,PC),r0
            0x0ce34b26      10e3           mov 0x10,r3
            0x0ce34b28      4f92           mov.w @(0x9E,PC),r2
            0x0ce34b2a      240e           mov.b r2,@(r0,r14)
            0x0ce34b2c      0170           add 0x01,r0
            0x0ce34b2e      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce34b14 (+0xe)
            0x0ce34b30      e684           mov.b @(0x6,r14),r0
            0x0ce34b32      2dd3           mov.l @(0xB4,PC),r3
            0x0ce34b34      0170           add 0x01,r0
            0x0ce34b36      e680           mov.b r0,@(0x6,r14)
            0x0ce34b38      0b43           jsr @r3
            0x0ce34b3a      e364           mov r14,r4
            0x0ce34b3c      28d2           mov.l @(0xA0,PC),r2
            0x0ce34b3e      0fe5           mov 0x0F,r5
            0x0ce34b40      35e6           mov 0x35,r6
            0x0ce34b42      0b42           jsr @r2
            0x0ce34b44      e364           mov r14,r4
            0x0ce34b46      264f           lds.l @r15+,pr
            0x0ce34b48      28d3           mov.l @(0xA0,PC),r3
            0x0ce34b4a      3ce7           mov 0x3C,r7
            0x0ce34b4c      e364           mov r14,r4
            0x0ce34b4e      7366           mov r7,r6
            0x0ce34b50      0ae5           mov 0x0A,r5
            0x0ce34b52      2b43           jmp @r3
            0x0ce34b54      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34b56:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37048)
            0x0ce34b56      e62f           mov.l r14,@-r15
            0x0ce34b58      224f           sts.l pr,@-r15
            0x0ce34b5a      f47f           add 0xF4,r15
            0x0ce34b5c      3790           mov.w @(0x6E,PC),r0
            0x0ce34b5e      436e           mov r4,r14
            0x0ce34b60      02e4           mov 0x02,r4
            0x0ce34b62      450e           mov.w r4,@(r0,r14)
            0x0ce34b64      1470           add 0x14,r0
            0x0ce34b66      440e           mov.b r4,@(r0,r14)
            0x0ce34b68      05e3           mov 0x05,r3
            0x0ce34b6a      3190           mov.w @(0x62,PC),r0
            0x0ce34b6c      340e           mov.b r3,@(r0,r14)
            0x0ce34b6e      2b90           mov.w @(0x56,PC),r0
            0x0ce34b70      ec00           mov.b @(r0,r14),r0
            0x0ce34b72      0c60           extu.b r0,r0
            0x0ce34b74      0688           cmp/eq 0x06,r0
            0x0ce34b76      018b           bf 0x0ce34b7c
            0x0ce34b78      01a0           bra 0x0ce34b7e
            0x0ce34b7a      02e2           mov 0x02,r2
            ; CODE XREF from aav.0x0ce34b56 (+0x20)
            0x0ce34b7c      00e2           mov 0x00,r2
            ; CODE XREF from aav.0x0ce34b56 (+0x22)
            0x0ce34b7e      2890           mov.w @(0x50,PC),r0
            0x0ce34b80      14d3           mov.l @(0x50,PC),r3
            0x0ce34b82      240e           mov.b r2,@(r0,r14)
            0x0ce34b84      0b43           jsr @r3
            0x0ce34b86      e364           mov r14,r4
            0x0ce34b88      0e60           exts.b r0,r0
            0x0ce34b8a      1140           cmp/pz r0
            0x0ce34b8c      1889           bt 0x0ce34bc0
            0x0ce34b8e      1d90           mov.w @(0x3A,PC),r0
            0x0ce34b90      00e4           mov 0x00,r4
            0x0ce34b92      19d3           mov.l @(0x64,PC),r3
            0x0ce34b94      f365           mov r15,r5
            0x0ce34b96      440e           mov.b r4,@(r0,r14)
            0x0ce34b98      0170           add 0x01,r0
            0x0ce34b9a      440e           mov.b r4,@(r0,r14)
            0x0ce34b9c      03e6           mov 0x03,r6
            0x0ce34b9e      e684           mov.b @(0x6,r14),r0
            0x0ce34ba0      0170           add 0x01,r0
            0x0ce34ba2      e680           mov.b r0,@(0x6,r14)
            0x0ce34ba4      12c7           mova @(0x48,PC),r0
            0x0ce34ba6      08f3           fmov @r0,fr3
            0x0ce34ba8      12c7           mova @(0x48,PC),r0
            0x0ce34baa      3aff           fmov fr3,@r15
            0x0ce34bac      08f3           fmov @r0,fr3
            0x0ce34bae      04e0           mov 0x04,r0
            0x0ce34bb0      37ff           fmov fr3,@(r0,r15)
            0x0ce34bb2      0b43           jsr @r3
            0x0ce34bb4      e364           mov r14,r4
            0x0ce34bb6      0ad2           mov.l @(0x28,PC),r2
            0x0ce34bb8      0fe5           mov 0x0F,r5
            0x0ce34bba      37e6           mov 0x37,r6
            0x0ce34bbc      0b42           jsr @r2
            0x0ce34bbe      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce34b56 (+0x36)
            0x0ce34bc0      0c7f           add 0x0C,r15
            0x0ce34bc2      264f           lds.l @r15+,pr
            0x0ce34bc4      0b00           rts 
            0x0ce34bc6      f66e           mov.l @r15+,r14
            0x0ce34bc8      5502           mov.w r5,@(r0,r2)
            0x0ce34bca      ff00           mac.l @r15+,@r0+
            0x0ce34bcc      f003           .word 0x03F0
            0x0ce34bce      e403           mov.b r14,@(r0,r3)
            0x0ce34bd0      2803           .word 0x0328
            0x0ce34bd2      f103           .word 0x03F1
            0x0ce34bd4      ee4d           ldc r13,r6_bank
            0x0ce34bd6      038c           .word 0x8C03
            0x0ce34bd8      4816           mov.l r4,@(0x20,r6)
            0x0ce34bda      058c           .word 0x8C05
            0x0ce34bdc      .dword 0x0ce3703c ; aav.0x0ce3703c
            0x0ce34be0      8c4e           shad r8,r14
            0x0ce34be2      038c           .word 0x8C03
            0x0ce34be4      .dword 0x0ce37044 ; aav.0x0ce37044
            0x0ce34be8      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce34bec      449a           mov.w @(0x88,PC),r10
            0x0ce34bee      058c           .word 0x8C05
            0x0ce34bf0      0000           .word 0x0000
            0x0ce34bf2      20c2           mov.l r0,@(0x80,gbr)
            0x0ce34bf4      2449           rotcl r9
            0x0ce34bf6      1a43           lds r3,macl
            0x0ce34bf8      3408           mov.b r3,@(r0,r8)
            0x0ce34bfa      058c           .word 0x8C05
            ;-- aav.0x0ce34bfc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3704c)
            0x0ce34bfc      e62f           mov.l r14,@-r15
            0x0ce34bfe      224f           sts.l pr,@-r15
            0x0ce34c00      f07f           add 0xF0,r15
            0x0ce34c02      8a90           mov.w @(0x114,PC),r0
            0x0ce34c04      436e           mov r4,r14
            0x0ce34c06      02e4           mov 0x02,r4
            0x0ce34c08      450e           mov.w r4,@(r0,r14)
            0x0ce34c0a      1470           add 0x14,r0
            0x0ce34c0c      440e           mov.b r4,@(r0,r14)
            0x0ce34c0e      05e3           mov 0x05,r3
            0x0ce34c10      8490           mov.w @(0x108,PC),r0
            0x0ce34c12      340e           mov.b r3,@(r0,r14)
            0x0ce34c14      43d3           mov.l @(0x10C,PC),r3
            0x0ce34c16      0b43           jsr @r3
            0x0ce34c18      e364           mov r14,r4
            0x0ce34c1a      0e60           exts.b r0,r0
            0x0ce34c1c      1140           cmp/pz r0
            0x0ce34c1e      0a89           bt 0x0ce34c36
            0x0ce34c20      41d3           mov.l @(0x104,PC),r3
            0x0ce34c22      04e0           mov 0x04,r0
            0x0ce34c24      0fe5           mov 0x0F,r5
            0x0ce34c26      e680           mov.b r0,@(0x6,r14)
            0x0ce34c28      36e6           mov 0x36,r6
            0x0ce34c2a      0b43           jsr @r3
            0x0ce34c2c      e364           mov r14,r4
            0x0ce34c2e      107f           add 0x10,r15
            0x0ce34c30      264f           lds.l @r15+,pr
            0x0ce34c32      0b00           rts 
            0x0ce34c34      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34bfc (+0x22)
            0x0ce34c36      3dd2           mov.l @(0xF4,PC),r2
            0x0ce34c38      0b42           jsr @r2
            0x0ce34c3a      e364           mov r14,r4
            0x0ce34c3c      0820           tst r0,r0
            0x0ce34c3e      238d           bt.s 0x0ce34c88
            0x0ce34c40      022f           mov.l r0,@r15
            0x0ce34c42      e684           mov.b @(0x6,r14),r0
            0x0ce34c44      05e6           mov 0x05,r6
            0x0ce34c46      3ad3           mov.l @(0xE8,PC),r3
            0x0ce34c48      6365           mov r6,r5
            0x0ce34c4a      0170           add 0x01,r0
            0x0ce34c4c      e680           mov.b r0,@(0x6,r14)
            0x0ce34c4e      00e0           mov 0x00,r0
            0x0ce34c50      e780           mov.b r0,@(0x7,r14)
            0x0ce34c52      0b43           jsr @r3
            0x0ce34c54      e364           mov r14,r4
            0x0ce34c56      6390           mov.w @(0xC6,PC),r0
            0x0ce34c58      f365           mov r15,r5
            0x0ce34c5a      6092           mov.w @(0xC0,PC),r2
            0x0ce34c5c      0475           add 0x04,r5
            0x0ce34c5e      37d3           mov.l @(0xDC,PC),r3
            0x0ce34c60      240e           mov.b r2,@(r0,r14)
            0x0ce34c62      34c7           mova @(0xD0,PC),r0
            0x0ce34c64      08f3           fmov @r0,fr3
            0x0ce34c66      04e0           mov 0x04,r0
            0x0ce34c68      37ff           fmov fr3,@(r0,r15)
            0x0ce34c6a      33c7           mova @(0xCC,PC),r0
            0x0ce34c6c      08f3           fmov @r0,fr3
            0x0ce34c6e      08e0           mov 0x08,r0
            0x0ce34c70      37ff           fmov fr3,@(r0,r15)
            0x0ce34c72      0b43           jsr @r3
            0x0ce34c74      e364           mov r14,r4
            0x0ce34c76      2cd2           mov.l @(0xB0,PC),r2
            0x0ce34c78      0fe5           mov 0x0F,r5
            0x0ce34c7a      1de6           mov 0x1D,r6
            0x0ce34c7c      0b42           jsr @r2
            0x0ce34c7e      e364           mov r14,r4
            0x0ce34c80      2fd3           mov.l @(0xBC,PC),r3
            0x0ce34c82      f265           mov.l @r15,r5
            0x0ce34c84      0b43           jsr @r3
            0x0ce34c86      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce34bfc (+0x42)
            0x0ce34c88      107f           add 0x10,r15
            0x0ce34c8a      264f           lds.l @r15+,pr
            0x0ce34c8c      0b00           rts 
            0x0ce34c8e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34c90:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3707c)
            0x0ce34c90      e62f           mov.l r14,@-r15
            0x0ce34c92      224f           sts.l pr,@-r15
            0x0ce34c94      23d3           mov.l @(0x8C,PC),r3
            0x0ce34c96      0b43           jsr @r3
            0x0ce34c98      436e           mov r4,r14
            0x0ce34c9a      0e60           exts.b r0,r0
            0x0ce34c9c      1140           cmp/pz r0
            0x0ce34c9e      0989           bt 0x0ce34cb4
            0x0ce34ca0      e784           mov.b @(0x7,r14),r0
            0x0ce34ca2      e364           mov r14,r4
            0x0ce34ca4      20d3           mov.l @(0x80,PC),r3
            0x0ce34ca6      1ee6           mov 0x1E,r6
/ (fcn) fcn.0ce34ca8 12
|   fcn.0ce34ca8 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from loc.0ce34d40 (0xce34d4e)
|           0x0ce34ca8      0170           add 0x01,r0
|           0x0ce34caa      e780           mov.b r0,@(0x7,r14)
|           0x0ce34cac      0fe5           mov 0x0F,r5
|           0x0ce34cae      264f           lds.l @r15+,pr
|           0x0ce34cb0      2b43           jmp @r3
\           0x0ce34cb2      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34c90 (+0xe)
            0x0ce34cb4      264f           lds.l @r15+,pr
            0x0ce34cb6      0b00           rts 
            0x0ce34cb8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34cba:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37080)
            0x0ce34cba      e62f           mov.l r14,@-r15
            0x0ce34cbc      224f           sts.l pr,@-r15
            0x0ce34cbe      19d3           mov.l @(0x64,PC),r3
            0x0ce34cc0      0b43           jsr @r3
            0x0ce34cc2      436e           mov r4,r14
            0x0ce34cc4      0e60           exts.b r0,r0
            0x0ce34cc6      1140           cmp/pz r0
            0x0ce34cc8      2489           bt 0x0ce34d14
            0x0ce34cca      e784           mov.b @(0x7,r14),r0
            0x0ce34ccc      0170           add 0x01,r0
            0x0ce34cce      e780           mov.b r0,@(0x7,r14)
            0x0ce34cd0      1cc7           mova @(0x70,PC),r0
            0x0ce34cd2      08f3           fmov @r0,fr3
            0x0ce34cd4      5ce0           mov 0x5C,r0
            0x0ce34cd6      37fe           fmov fr3,@(r0,r14)
            0x0ce34cd8      68e0           mov 0x68,r0
            0x0ce34cda      8df3           fldi0 fr3
            0x0ce34cdc      37fe           fmov fr3,@(r0,r14)
            0x0ce34cde      1ac7           mova @(0x68,PC),r0
            0x0ce34ce0      08f3           fmov @r0,fr3
            0x0ce34ce2      60e0           mov 0x60,r0
            0x0ce34ce4      37fe           fmov fr3,@(r0,r14)
            0x0ce34ce6      19c7           mova @(0x64,PC),r0
            0x0ce34ce8      08f3           fmov @r0,fr3
            0x0ce34cea      6ce0           mov 0x6C,r0
            0x0ce34cec      37fe           fmov fr3,@(r0,r14)
            0x0ce34cee      1890           mov.w @(0x30,PC),r0
            0x0ce34cf0      ec03           mov.b @(r0,r14),r3
            0x0ce34cf2      3823           tst r3,r3
            0x0ce34cf4      088f           bf.s 0x0ce34d08
            0x0ce34cf6      39e6           mov 0x39,r6
            0x0ce34cf8      5ce0           mov 0x5C,r0
            0x0ce34cfa      e6f3           fmov @(r0,r14),fr3
            0x0ce34cfc      4df3           fneg fr3
            0x0ce34cfe      37fe           fmov fr3,@(r0,r14)
            0x0ce34d00      68e0           mov 0x68,r0
            0x0ce34d02      e6f3           fmov @(r0,r14),fr3
            0x0ce34d04      4df3           fneg fr3
            0x0ce34d06      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce34cba (+0x3a)
            0x0ce34d08      264f           lds.l @r15+,pr
            0x0ce34d0a      07d3           mov.l @(0x1C,PC),r3
            0x0ce34d0c      0fe5           mov 0x0F,r5
            0x0ce34d0e      e364           mov r14,r4
            0x0ce34d10      2b43           jmp @r3
            0x0ce34d12      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34cba (+0xe)
            0x0ce34d14      264f           lds.l @r15+,pr
            0x0ce34d16      0b00           rts 
            0x0ce34d18      f66e           mov.l @r15+,r14
            0x0ce34d1a      e403           mov.b r14,@(r0,r3)
            0x0ce34d1c      2803           .word 0x0328
            0x0ce34d1e      cd00           mov.w @(r0,r12),r0
            0x0ce34d20      f701           mul.l r15,r1
            0x0ce34d22      d201           stc r5_bank,r1
            0x0ce34d24      ee4d           ldc r13,r6_bank
            0x0ce34d26      038c           .word 0x8C03
            0x0ce34d28      8c4e           shad r8,r14
            0x0ce34d2a      038c           .word 0x8C03
            0x0ce34d2c      9057           mov.l @(0x0,r9),r7
            0x0ce34d2e      048c           .word 0x8C04
            0x0ce34d30      c4fe           fcmp/eq fr12,fr14
            0x0ce34d32      028c           .word 0x8C02
            0x0ce34d34      aaaa           bra 0x0ce3428c
            0x0ce34d36      12c3           trapa 0x12
            0x0ce34d38      b66d           mov.l @r11+,r13
            0x0ce34d3a      2b43           jmp @r3
            0x0ce34d3c      6036           cmp/eq r6,r6
            0x0ce34d3e      108c           .word 0x8C10
|- loc.0ce34d40 130
|   loc.0ce34d40 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CODE XREF from fcn.0ce342fa (0xce3430c)
|           0x0ce34d40      d823           tst r13,r3
|           0x0ce34d42      058c           .word 0x8C05
|           0x0ce34d44      5555           mov.l @(0x14,r5),r5
|           0x0ce34d46      0541           rotr r1
|           0x0ce34d48      2449           rotcl r9
|           0x0ce34d4a      d641           .word 0x41D6
|           0x0ce34d4c      b66d           mov.l @r11+,r13
|           0x0ce34d4e      abbf           bsr fcn.0ce34ca8
|           ;-- aav.0x0ce34d50:
|           ; UNKNOWN XREF from fcn.0ce36d2a (0xce37084)
|           0x0ce34d50      e62f           mov.l r14,@-r15
|           0x0ce34d52      5ce1           mov 0x5C,r1
|           0x0ce34d54      436e           mov r4,r14
|           0x0ce34d56      ec31           add r14,r1
|           0x0ce34d58      34e0           mov 0x34,r0
|           0x0ce34d5a      48d3           mov.l @(0x120,PC),r3
|           0x0ce34d5c      224f           sts.l pr,@-r15
|           0x0ce34d5e      e6f2           fmov @(r0,r14),fr2
|           0x0ce34d60      18f3           fmov @r1,fr3
|           0x0ce34d62      68e1           mov 0x68,r1
|           0x0ce34d64      ec31           add r14,r1
|           0x0ce34d66      30f2           fadd fr3,fr2
|           0x0ce34d68      27fe           fmov fr2,@(r0,r14)
|           0x0ce34d6a      5ce0           mov 0x5C,r0
|           0x0ce34d6c      18f3           fmov @r1,fr3
|           0x0ce34d6e      60e1           mov 0x60,r1
|           0x0ce34d70      e6f2           fmov @(r0,r14),fr2
|           0x0ce34d72      ec31           add r14,r1
|           0x0ce34d74      30f2           fadd fr3,fr2
|           0x0ce34d76      27fe           fmov fr2,@(r0,r14)
|           0x0ce34d78      38e0           mov 0x38,r0
|           0x0ce34d7a      e6f2           fmov @(r0,r14),fr2
|           0x0ce34d7c      18f3           fmov @r1,fr3
|           0x0ce34d7e      6ce1           mov 0x6C,r1
|           0x0ce34d80      ec31           add r14,r1
|           0x0ce34d82      30f2           fadd fr3,fr2
|           0x0ce34d84      27fe           fmov fr2,@(r0,r14)
|           0x0ce34d86      60e0           mov 0x60,r0
|           0x0ce34d88      e6f2           fmov @(r0,r14),fr2
|           0x0ce34d8a      18f3           fmov @r1,fr3
|           0x0ce34d8c      30f2           fadd fr3,fr2
|           0x0ce34d8e      27fe           fmov fr2,@(r0,r14)
|           0x0ce34d90      0b43           jsr @r3
|           0x0ce34d92      e364           mov r14,r4
|           0x0ce34d94      60e0           mov 0x60,r0
|           0x0ce34d96      8df3           fldi0 fr3
|           0x0ce34d98      e6f2           fmov @(r0,r14),fr2
|           0x0ce34d9a      25f3           fcmp/gt fr2,fr3
|           0x0ce34d9c      0e8b           bf 0x0ce34dbc
|           0x0ce34d9e      e784           mov.b @(0x7,r14),r0
|           0x0ce34da0      0170           add 0x01,r0
|           0x0ce34da2      e780           mov.b r0,@(0x7,r14)
|           0x0ce34da4      36c7           mova @(0xD8,PC),r0
|           0x0ce34da6      08f2           fmov @r0,fr2
|           0x0ce34da8      68e0           mov 0x68,r0
|           0x0ce34daa      27fe           fmov fr2,@(r0,r14)
|           0x0ce34dac      6290           mov.w @(0xC4,PC),r0
|           0x0ce34dae      ec03           mov.b @(r0,r14),r3
|           0x0ce34db0      3823           tst r3,r3
|           0x0ce34db2      038b           bf 0x0ce34dbc
|           0x0ce34db4      68e0           mov 0x68,r0
|           0x0ce34db6      e6f2           fmov @(r0,r14),fr2
|           0x0ce34db8      4df2           fneg fr2
|           0x0ce34dba      27fe           fmov fr2,@(r0,r14)
|           ; CODE XREFS from loc.0ce34d40 (0xce34d9c, 0xce34db2)
|           0x0ce34dbc      264f           lds.l @r15+,pr
|           0x0ce34dbe      0b00           rts 
\           0x0ce34dc0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34dc2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37088)
            0x0ce34dc2      e62f           mov.l r14,@-r15
            0x0ce34dc4      224f           sts.l pr,@-r15
            0x0ce34dc6      f47f           add 0xF4,r15
            0x0ce34dc8      5ce1           mov 0x5C,r1
            0x0ce34dca      436e           mov r4,r14
            0x0ce34dcc      ec31           add r14,r1
            0x0ce34dce      2bd3           mov.l @(0xAC,PC),r3
            0x0ce34dd0      34e0           mov 0x34,r0
            0x0ce34dd2      18f3           fmov @r1,fr3
            0x0ce34dd4      e6f2           fmov @(r0,r14),fr2
            0x0ce34dd6      68e1           mov 0x68,r1
            0x0ce34dd8      ec31           add r14,r1
            0x0ce34dda      30f2           fadd fr3,fr2
            0x0ce34ddc      27fe           fmov fr2,@(r0,r14)
            0x0ce34dde      5ce0           mov 0x5C,r0
            0x0ce34de0      e6f2           fmov @(r0,r14),fr2
            0x0ce34de2      18f3           fmov @r1,fr3
            0x0ce34de4      60e1           mov 0x60,r1
            0x0ce34de6      ec31           add r14,r1
            0x0ce34de8      30f2           fadd fr3,fr2
            0x0ce34dea      27fe           fmov fr2,@(r0,r14)
            0x0ce34dec      38e0           mov 0x38,r0
            0x0ce34dee      e6f2           fmov @(r0,r14),fr2
            0x0ce34df0      18f3           fmov @r1,fr3
            0x0ce34df2      6ce1           mov 0x6C,r1
            0x0ce34df4      ec31           add r14,r1
            0x0ce34df6      30f2           fadd fr3,fr2
            0x0ce34df8      27fe           fmov fr2,@(r0,r14)
            0x0ce34dfa      60e0           mov 0x60,r0
            0x0ce34dfc      e6f2           fmov @(r0,r14),fr2
            0x0ce34dfe      18f3           fmov @r1,fr3
            0x0ce34e00      30f2           fadd fr3,fr2
            0x0ce34e02      27fe           fmov fr2,@(r0,r14)
            0x0ce34e04      0b43           jsr @r3
            0x0ce34e06      e364           mov r14,r4
            0x0ce34e08      1ed2           mov.l @(0x78,PC),r2
            0x0ce34e0a      0b42           jsr @r2
            0x0ce34e0c      e364           mov r14,r4
            0x0ce34e0e      0c60           extu.b r0,r0
            0x0ce34e10      0820           tst r0,r0
            0x0ce34e12      2b89           bt 0x0ce34e6c
            0x0ce34e14      e784           mov.b @(0x7,r14),r0
            0x0ce34e16      14e5           mov 0x14,r5
            0x0ce34e18      1bd4           mov.l @(0x6C,PC),r4
            0x0ce34e1a      0170           add 0x01,r0
            0x0ce34e1c      1bd3           mov.l @(0x6C,PC),r3
            0x0ce34e1e      e780           mov.b r0,@(0x7,r14)
            0x0ce34e20      02e0           mov 0x02,r0
            0x0ce34e22      4580           mov.b r0,@(0x5,r4)
            0x0ce34e24      01e0           mov 0x01,r0
            0x0ce34e26      4680           mov.b r0,@(0x6,r4)
            0x0ce34e28      0b43           jsr @r3
            0x0ce34e2a      e364           mov r14,r4
            0x0ce34e2c      18d2           mov.l @(0x60,PC),r2
            0x0ce34e2e      0b42           jsr @r2
            0x0ce34e30      e364           mov r14,r4
            0x0ce34e32      2090           mov.w @(0x40,PC),r0
            0x0ce34e34      50e5           mov 0x50,r5
            0x0ce34e36      17d3           mov.l @(0x5C,PC),r3
            0x0ce34e38      ee04           mov.l @(r0,r14),r4
            0x0ce34e3a      d970           add 0xD9,r0
            0x0ce34e3c      5404           mov.b r5,@(r0,r4)
            0x0ce34e3e      540e           mov.b r5,@(r0,r14)
            0x0ce34e40      34e0           mov 0x34,r0
            0x0ce34e42      46f3           fmov @(r0,r4),fr3
            0x0ce34e44      01e5           mov 0x01,r5
            0x0ce34e46      1790           mov.w @(0x2E,PC),r0
            0x0ce34e48      3aff           fmov fr3,@r15
            0x0ce34e4a      e6f3           fmov @(r0,r14),fr3
            0x0ce34e4c      04e0           mov 0x04,r0
            0x0ce34e4e      37ff           fmov fr3,@(r0,r15)
            0x0ce34e50      0b43           jsr @r3
            0x0ce34e52      f364           mov r15,r4
            0x0ce34e54      10d2           mov.l @(0x40,PC),r2
            0x0ce34e56      49e5           mov 0x49,r5
            0x0ce34e58      0b42           jsr @r2
            0x0ce34e5a      e364           mov r14,r4
            0x0ce34e5c      0fd3           mov.l @(0x3C,PC),r3
            0x0ce34e5e      0b43           jsr @r3
            0x0ce34e60      e364           mov r14,r4
            0x0ce34e62      0fd2           mov.l @(0x3C,PC),r2
            0x0ce34e64      0fe5           mov 0x0F,r5
            0x0ce34e66      20e6           mov 0x20,r6
            0x0ce34e68      0b42           jsr @r2
            0x0ce34e6a      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce34dc2 (+0x50)
            0x0ce34e6c      0c7f           add 0x0C,r15
            0x0ce34e6e      264f           lds.l @r15+,pr
            0x0ce34e70      0b00           rts 
            0x0ce34e72      f66e           mov.l @r15+,r14
            0x0ce34e74      d201           stc r5_bank,r1
            0x0ce34e76      c801           .word 0x01C8
            0x0ce34e78      1c04           mov.b @(r0,r1),r4
            0x0ce34e7a      0000           .word 0x0000
            0x0ce34e7c      ee4d           ldc r13,r6_bank
            0x0ce34e7e      038c           .word 0x8C03
            0x0ce34e80      0000           .word 0x0000
            0x0ce34e82      f040           .word 0x40F0
            0x0ce34e84      e22c           mov.l r14,@r12
            0x0ce34e86      058c           .word 0x8C05
            0x0ce34e88      18a5           bra 0x0ce358bc
            0x0ce34e8a      268c           .word 0x8C26
            0x0ce34e8c      0820           tst r0,r0
            0x0ce34e8e      048c           .word 0x8C04
            0x0ce34e90      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce34e94      ca25           xor r12,r5
            0x0ce34e96      108c           .word 0x8C10
            0x0ce34e98      3a22           xor r3,r2
            0x0ce34e9a      048c           .word 0x8C04
            0x0ce34e9c      3c93           mov.w @(0x78,PC),r3
            0x0ce34e9e      058c           .word 0x8C05
            0x0ce34ea0      8c4e           shad r8,r14
            0x0ce34ea2      038c           .word 0x8C03
            ;-- aav.0x0ce34ea4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3708c)
            0x0ce34ea4      e62f           mov.l r14,@-r15
            0x0ce34ea6      224f           sts.l pr,@-r15
            0x0ce34ea8      fc7f           add 0xFC,r15
            0x0ce34eaa      7293           mov.w @(0xE4,PC),r3
            0x0ce34eac      436e           mov r4,r14
            0x0ce34eae      ec33           add r14,r3
            0x0ce34eb0      322f           mov.l r3,@r15
            0x0ce34eb2      3bd3           mov.l @(0xEC,PC),r3
            0x0ce34eb4      0b43           jsr @r3
            0x0ce34eb6      e364           mov r14,r4
            0x0ce34eb8      0e60           exts.b r0,r0
            0x0ce34eba      1140           cmp/pz r0
            0x0ce34ebc      1589           bt 0x0ce34eea
            0x0ce34ebe      e784           mov.b @(0x7,r14),r0
            0x0ce34ec0      0fe5           mov 0x0F,r5
            0x0ce34ec2      e364           mov r14,r4
            0x0ce34ec4      3ae6           mov 0x3A,r6
            0x0ce34ec6      0170           add 0x01,r0
            0x0ce34ec8      e780           mov.b r0,@(0x7,r14)
            0x0ce34eca      00e0           mov 0x00,r0
            0x0ce34ecc      f263           mov.l @r15,r3
            0x0ce34ece      3280           mov.b r0,@(0x2,r3)
            0x0ce34ed0      01e3           mov 0x01,r3
            0x0ce34ed2      5f90           mov.w @(0xBE,PC),r0
            0x0ce34ed4      ed02           mov.w @(r0,r14),r2
            0x0ce34ed6      3a22           xor r3,r2
            0x0ce34ed8      250e           mov.w r2,@(r0,r14)
            0x0ce34eda      ec01           mov.b @(r0,r14),r1
            0x0ce34edc      5b90           mov.w @(0xB6,PC),r0
            0x0ce34ede      140e           mov.b r1,@(r0,r14)
            0x0ce34ee0      047f           add 0x04,r15
            0x0ce34ee2      264f           lds.l @r15+,pr
            0x0ce34ee4      2fd2           mov.l @(0xBC,PC),r2
            0x0ce34ee6      2b42           jmp @r2
            0x0ce34ee8      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34ea4 (+0x18)
            0x0ce34eea      047f           add 0x04,r15
            0x0ce34eec      264f           lds.l @r15+,pr
            0x0ce34eee      0b00           rts 
            0x0ce34ef0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce34ef2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37090)
            0x0ce34ef2      e62f           mov.l r14,@-r15
            0x0ce34ef4      224f           sts.l pr,@-r15
            0x0ce34ef6      f47f           add 0xF4,r15
            0x0ce34ef8      29d3           mov.l @(0xA4,PC),r3
            0x0ce34efa      0b43           jsr @r3
            0x0ce34efc      436e           mov r4,r14
            0x0ce34efe      0e60           exts.b r0,r0
            0x0ce34f00      1140           cmp/pz r0
            0x0ce34f02      1989           bt 0x0ce34f38
            0x0ce34f04      e784           mov.b @(0x7,r14),r0
            0x0ce34f06      0170           add 0x01,r0
            0x0ce34f08      e780           mov.b r0,@(0x7,r14)
            0x0ce34f0a      27c7           mova @(0x9C,PC),r0
            0x0ce34f0c      08f4           fmov @r0,fr4
            0x0ce34f0e      4190           mov.w @(0x82,PC),r0
            0x0ce34f10      ed03           mov.w @(r0,r14),r3
            0x0ce34f12      3823           tst r3,r3
            0x0ce34f14      0389           bt 0x0ce34f1e
            0x0ce34f16      34e0           mov 0x34,r0
            0x0ce34f18      e6f3           fmov @(r0,r14),fr3
            0x0ce34f1a      03a0           bra 0x0ce34f24
            0x0ce34f1c      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce34ef2 (+0x22)
            0x0ce34f1e      34e0           mov 0x34,r0
            0x0ce34f20      e6f3           fmov @(r0,r14),fr3
            0x0ce34f22      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce34ef2 (+0x28)
            0x0ce34f24      1fd3           mov.l @(0x7C,PC),r3
            0x0ce34f26      0fe5           mov 0x0F,r5
            0x0ce34f28      37fe           fmov fr3,@(r0,r14)
            0x0ce34f2a      3be6           mov 0x3B,r6
            0x0ce34f2c      0b43           jsr @r3
            0x0ce34f2e      e364           mov r14,r4
            0x0ce34f30      0c7f           add 0x0C,r15
            0x0ce34f32      264f           lds.l @r15+,pr
            0x0ce34f34      0b00           rts 
            0x0ce34f36      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce34ef2 (+0x10)
            0x0ce34f38      2e90           mov.w @(0x5C,PC),r0
            0x0ce34f3a      ec02           mov.b @(r0,r14),r2
            0x0ce34f3c      2822           tst r2,r2
            0x0ce34f3e      2489           bt 0x0ce34f8a               ; fcn.0ce34f76+0x14
            0x0ce34f40      1ad4           mov.l @(0x68,PC),r4
            0x0ce34f42      00e3           mov 0x00,r3
            0x0ce34f44      01e5           mov 0x01,r5
            0x0ce34f46      340e           mov.b r3,@(r0,r14)
            0x0ce34f48      5360           mov r5,r0
            0x0ce34f4a      0900           nop 
            0x0ce34f4c      18d3           mov.l @(0x60,PC),r3
            0x0ce34f4e      4580           mov.b r0,@(0x5,r4)
            0x0ce34f50      4680           mov.b r0,@(0x6,r4)
            0x0ce34f52      0b43           jsr @r3
            0x0ce34f54      e364           mov r14,r4
            0x0ce34f56      2090           mov.w @(0x40,PC),r0
            0x0ce34f58      51e5           mov 0x51,r5
            0x0ce34f5a      16d3           mov.l @(0x58,PC),r3
            0x0ce34f5c      ee04           mov.l @(r0,r14),r4
            0x0ce34f5e      ec70           add 0xEC,r0
            0x0ce34f60      e604           mov.l r14,@(r0,r4)
            0x0ce34f62      ed70           add 0xED,r0
            0x0ce34f64      540e           mov.b r5,@(r0,r14)
            0x0ce34f66      5404           mov.b r5,@(r0,r4)
            0x0ce34f68      34e0           mov 0x34,r0
            0x0ce34f6a      46f3           fmov @(r0,r4),fr3
            0x0ce34f6c      01e5           mov 0x01,r5
            0x0ce34f6e      1590           mov.w @(0x2A,PC),r0
            0x0ce34f70      3aff           fmov fr3,@r15
            0x0ce34f72      e6f3           fmov @(r0,r14),fr3
            0x0ce34f74      04e0           mov 0x04,r0
/ (fcn) fcn.0ce34f76 28
|   fcn.0ce34f76 ();
|           ; CALL XREF from aav.0x0ce3414e (+0x6e)
|           0x0ce34f76      37ff           fmov fr3,@(r0,r15)
|           0x0ce34f78      0b43           jsr @r3
|           0x0ce34f7a      f364           mov r15,r4
|           0x0ce34f7c      0ed2           mov.l @(0x38,PC),r2
|           0x0ce34f7e      49e5           mov 0x49,r5
|           0x0ce34f80      0b42           jsr @r2
|           0x0ce34f82      e364           mov r14,r4
|           0x0ce34f84      0dd3           mov.l @(0x34,PC),r3
|           0x0ce34f86      0b43           jsr @r3
|           0x0ce34f88      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce34ef2 (+0x4c)
|           0x0ce34f8a      0c7f           add 0x0C,r15
|           0x0ce34f8c      264f           lds.l @r15+,pr
|           0x0ce34f8e      0b00           rts 
\           0x0ce34f90      f66e           mov.l @r15+,r14
            0x0ce34f92      a402           mov.b r10,@(r0,r2)
            0x0ce34f94      3001           .word 0x0130
            0x0ce34f96      d201           stc r5_bank,r1
            0x0ce34f98      4101           .word 0x0141
            0x0ce34f9a      c801           .word 0x01C8
            0x0ce34f9c      1c04           mov.b @(r0,r1),r4
            0x0ce34f9e      0000           .word 0x0000
            0x0ce34fa0      ee4d           ldc r13,r6_bank
            0x0ce34fa2      038c           .word 0x8C03
            0x0ce34fa4      8c4e           shad r8,r14
            0x0ce34fa6      038c           .word 0x8C03
            0x0ce34fa8      0000           .word 0x0000
            0x0ce34faa      2043           shal r3
            0x0ce34fac      18a5           bra fcn.0ce359e0
            0x0ce34fae      268c           .word 0x8C26
            0x0ce34fb0      fc23           cmp/str r15,r3
            0x0ce34fb2      048c           .word 0x8C04
            0x0ce34fb4      ca25           xor r12,r5
            0x0ce34fb6      108c           .word 0x8C10
            0x0ce34fb8      3a22           xor r3,r2
            0x0ce34fba      048c           .word 0x8C04
            0x0ce34fbc      3c93           mov.w @(0x78,PC),r3
            0x0ce34fbe      058c           .word 0x8C05
            ;-- aav.0x0ce34fc0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37094)
            0x0ce34fc0      e62f           mov.l r14,@-r15
            0x0ce34fc2      224f           sts.l pr,@-r15
            0x0ce34fc4      32d3           mov.l @(0xC8,PC),r3
            0x0ce34fc6      0b43           jsr @r3
            0x0ce34fc8      436e           mov r4,r14
            0x0ce34fca      5e90           mov.w @(0xBC,PC),r0
            0x0ce34fcc      ec02           mov.b @(r0,r14),r2
            0x0ce34fce      2822           tst r2,r2
            0x0ce34fd0      1f89           bt 0x0ce35012               ; fcn.0ce34ff8+0x1a
            0x0ce34fd2      00e3           mov 0x00,r3
            0x0ce34fd4      340e           mov.b r3,@(r0,r14)
            0x0ce34fd6      e784           mov.b @(0x7,r14),r0
            0x0ce34fd8      0170           add 0x01,r0
            0x0ce34fda      e780           mov.b r0,@(0x7,r14)
            0x0ce34fdc      2dc7           mova @(0xB4,PC),r0
            0x0ce34fde      08f3           fmov @r0,fr3
            0x0ce34fe0      5ce0           mov 0x5C,r0
            0x0ce34fe2      37fe           fmov fr3,@(r0,r14)
            0x0ce34fe4      68e0           mov 0x68,r0
            0x0ce34fe6      8df3           fldi0 fr3
            0x0ce34fe8      37fe           fmov fr3,@(r0,r14)
            0x0ce34fea      2bc7           mova @(0xAC,PC),r0
            0x0ce34fec      08f3           fmov @r0,fr3
            0x0ce34fee      60e0           mov 0x60,r0
            0x0ce34ff0      37fe           fmov fr3,@(r0,r14)
            0x0ce34ff2      2ac7           mova @(0xA8,PC),r0
            0x0ce34ff4      08f3           fmov @r0,fr3
            0x0ce34ff6      6ce0           mov 0x6C,r0
/ (fcn) fcn.0ce34ff8 32
|   fcn.0ce34ff8 ();
|           ; CALL XREF from aav.0x0ce35018 (+0x86)
|           0x0ce34ff8      37fe           fmov fr3,@(r0,r14)
|           0x0ce34ffa      4790           mov.w @(0x8E,PC),r0
|           0x0ce34ffc      ec03           mov.b @(r0,r14),r3
|           0x0ce34ffe      3823           tst r3,r3
|           0x0ce35000      078b           bf 0x0ce35012
|           0x0ce35002      5ce0           mov 0x5C,r0
|           0x0ce35004      e6f3           fmov @(r0,r14),fr3
|           0x0ce35006      4df3           fneg fr3
|           0x0ce35008      37fe           fmov fr3,@(r0,r14)
|           0x0ce3500a      68e0           mov 0x68,r0
|           0x0ce3500c      e6f3           fmov @(r0,r14),fr3
|           0x0ce3500e      4df3           fneg fr3
|           0x0ce35010      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from aav.0x0ce34fc0 (+0x10)
|           ; CODE XREF from fcn.0ce34ff8 (0xce35000)
|           0x0ce35012      264f           lds.l @r15+,pr
|           0x0ce35014      0b00           rts 
\           0x0ce35016      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35018:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37098)
            0x0ce35018      e62f           mov.l r14,@-r15
            0x0ce3501a      5ce1           mov 0x5C,r1
            0x0ce3501c      436e           mov r4,r14
            0x0ce3501e      ec31           add r14,r1
            0x0ce35020      34e0           mov 0x34,r0
            0x0ce35022      1bd3           mov.l @(0x6C,PC),r3
            0x0ce35024      224f           sts.l pr,@-r15
            0x0ce35026      e6f2           fmov @(r0,r14),fr2
            0x0ce35028      18f3           fmov @r1,fr3
            0x0ce3502a      68e1           mov 0x68,r1
            0x0ce3502c      ec31           add r14,r1
            0x0ce3502e      30f2           fadd fr3,fr2
            0x0ce35030      27fe           fmov fr2,@(r0,r14)
            0x0ce35032      5ce0           mov 0x5C,r0
            0x0ce35034      18f3           fmov @r1,fr3
            0x0ce35036      60e1           mov 0x60,r1
            0x0ce35038      e6f2           fmov @(r0,r14),fr2
            0x0ce3503a      ec31           add r14,r1
            0x0ce3503c      30f2           fadd fr3,fr2
            0x0ce3503e      27fe           fmov fr2,@(r0,r14)
            0x0ce35040      38e0           mov 0x38,r0
            0x0ce35042      e6f2           fmov @(r0,r14),fr2
            0x0ce35044      18f3           fmov @r1,fr3
            0x0ce35046      6ce1           mov 0x6C,r1
            0x0ce35048      ec31           add r14,r1
            0x0ce3504a      30f2           fadd fr3,fr2
            0x0ce3504c      27fe           fmov fr2,@(r0,r14)
            0x0ce3504e      60e0           mov 0x60,r0
            0x0ce35050      e6f2           fmov @(r0,r14),fr2
            0x0ce35052      18f3           fmov @r1,fr3
            0x0ce35054      30f2           fadd fr3,fr2
            0x0ce35056      27fe           fmov fr2,@(r0,r14)
            0x0ce35058      0b43           jsr @r3
            0x0ce3505a      e364           mov r14,r4
            0x0ce3505c      60e0           mov 0x60,r0
            0x0ce3505e      8df3           fldi0 fr3
            0x0ce35060      e6f2           fmov @(r0,r14),fr2
            0x0ce35062      25f3           fcmp/gt fr2,fr3
            0x0ce35064      0e8b           bf 0x0ce35084
            0x0ce35066      e784           mov.b @(0x7,r14),r0
            0x0ce35068      0170           add 0x01,r0
            0x0ce3506a      e780           mov.b r0,@(0x7,r14)
            0x0ce3506c      0cc7           mova @(0x30,PC),r0
            0x0ce3506e      08f2           fmov @r0,fr2
            0x0ce35070      68e0           mov 0x68,r0
            0x0ce35072      27fe           fmov fr2,@(r0,r14)
            0x0ce35074      0a90           mov.w @(0x14,PC),r0
            0x0ce35076      ec03           mov.b @(r0,r14),r3
            0x0ce35078      3823           tst r3,r3
            0x0ce3507a      038b           bf 0x0ce35084
            0x0ce3507c      68e0           mov 0x68,r0
            0x0ce3507e      e6f2           fmov @(r0,r14),fr2
            0x0ce35080      4df2           fneg fr2
            0x0ce35082      27fe           fmov fr2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce35018 (+0x4c, +0x62)
            0x0ce35084      264f           lds.l @r15+,pr
            0x0ce35086      0b00           rts 
            0x0ce35088      f66e           mov.l @r15+,r14
            0x0ce3508a      4101           .word 0x0141
            0x0ce3508c      d201           stc r5_bank,r1
            0x0ce3508e      0000           .word 0x0000
            0x0ce35090      ee4d           ldc r13,r6_bank
            0x0ce35092      038c           .word 0x8C03
            0x0ce35094      5555           mov.l @(0x14,r5),r5
            0x0ce35096      0541           rotr r1
            0x0ce35098      b66d           mov.l @r11+,r13
            0x0ce3509a      e741           ldc.l @r1+,r6_bank
            0x0ce3509c      b66d           mov.l @r11+,r13
            0x0ce3509e      abbf           bsr fcn.0ce34ff8
            0x0ce350a0      0000           .word 0x0000
            0x0ce350a2      f040           .word 0x40F0
            ;-- aav.0x0ce350a4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3709c)
            0x0ce350a4      e62f           mov.l r14,@-r15
            0x0ce350a6      224f           sts.l pr,@-r15
            0x0ce350a8      f47f           add 0xF4,r15
            0x0ce350aa      5ce1           mov 0x5C,r1
            0x0ce350ac      436e           mov r4,r14
            0x0ce350ae      ec31           add r14,r1
            0x0ce350b0      47d3           mov.l @(0x11C,PC),r3
            0x0ce350b2      34e0           mov 0x34,r0
            0x0ce350b4      18f3           fmov @r1,fr3
            0x0ce350b6      e6f2           fmov @(r0,r14),fr2
            0x0ce350b8      68e1           mov 0x68,r1
            0x0ce350ba      ec31           add r14,r1
            0x0ce350bc      30f2           fadd fr3,fr2
            0x0ce350be      27fe           fmov fr2,@(r0,r14)
            0x0ce350c0      5ce0           mov 0x5C,r0
            0x0ce350c2      e6f2           fmov @(r0,r14),fr2
            0x0ce350c4      18f3           fmov @r1,fr3
            0x0ce350c6      60e1           mov 0x60,r1
            0x0ce350c8      ec31           add r14,r1
            0x0ce350ca      30f2           fadd fr3,fr2
            0x0ce350cc      27fe           fmov fr2,@(r0,r14)
            0x0ce350ce      38e0           mov 0x38,r0
            0x0ce350d0      e6f2           fmov @(r0,r14),fr2
            0x0ce350d2      18f3           fmov @r1,fr3
            0x0ce350d4      6ce1           mov 0x6C,r1
            0x0ce350d6      ec31           add r14,r1
            0x0ce350d8      30f2           fadd fr3,fr2
            0x0ce350da      27fe           fmov fr2,@(r0,r14)
            0x0ce350dc      60e0           mov 0x60,r0
            0x0ce350de      e6f2           fmov @(r0,r14),fr2
            0x0ce350e0      18f3           fmov @r1,fr3
            0x0ce350e2      30f2           fadd fr3,fr2
            0x0ce350e4      27fe           fmov fr2,@(r0,r14)
            0x0ce350e6      0b43           jsr @r3
            0x0ce350e8      e364           mov r14,r4
            0x0ce350ea      3ad2           mov.l @(0xE8,PC),r2
            0x0ce350ec      0b42           jsr @r2
            0x0ce350ee      e364           mov r14,r4
            0x0ce350f0      0c60           extu.b r0,r0
            0x0ce350f2      0820           tst r0,r0
            0x0ce350f4      2b89           bt 0x0ce3514e               ; fcn.0ce3514c+0x2
            0x0ce350f6      e784           mov.b @(0x7,r14),r0
            0x0ce350f8      15e5           mov 0x15,r5
            0x0ce350fa      37d4           mov.l @(0xDC,PC),r4
            0x0ce350fc      0170           add 0x01,r0
            0x0ce350fe      37d3           mov.l @(0xDC,PC),r3
            0x0ce35100      e780           mov.b r0,@(0x7,r14)
            0x0ce35102      02e0           mov 0x02,r0
            0x0ce35104      4580           mov.b r0,@(0x5,r4)
            0x0ce35106      01e0           mov 0x01,r0
            0x0ce35108      4680           mov.b r0,@(0x6,r4)
            0x0ce3510a      0b43           jsr @r3
            0x0ce3510c      e364           mov r14,r4
            0x0ce3510e      34d2           mov.l @(0xD0,PC),r2
            0x0ce35110      0b42           jsr @r2
            0x0ce35112      e364           mov r14,r4
            0x0ce35114      5590           mov.w @(0xAA,PC),r0
            0x0ce35116      52e5           mov 0x52,r5
            0x0ce35118      32d3           mov.l @(0xC8,PC),r3
            0x0ce3511a      ee04           mov.l @(r0,r14),r4
            0x0ce3511c      d970           add 0xD9,r0
            0x0ce3511e      5404           mov.b r5,@(r0,r4)
            0x0ce35120      540e           mov.b r5,@(r0,r14)
            0x0ce35122      34e0           mov 0x34,r0
            0x0ce35124      46f3           fmov @(r0,r4),fr3
            0x0ce35126      01e5           mov 0x01,r5
            0x0ce35128      4c90           mov.w @(0x98,PC),r0
            0x0ce3512a      3aff           fmov fr3,@r15
            0x0ce3512c      e6f3           fmov @(r0,r14),fr3
            0x0ce3512e      04e0           mov 0x04,r0
            0x0ce35130      37ff           fmov fr3,@(r0,r15)
            0x0ce35132      0b43           jsr @r3
            0x0ce35134      f364           mov r15,r4
            0x0ce35136      2cd2           mov.l @(0xB0,PC),r2
            0x0ce35138      49e5           mov 0x49,r5
            0x0ce3513a      0b42           jsr @r2
            0x0ce3513c      e364           mov r14,r4
            0x0ce3513e      2bd3           mov.l @(0xAC,PC),r3
            0x0ce35140      0b43           jsr @r3
            0x0ce35142      e364           mov r14,r4
            0x0ce35144      2ad2           mov.l @(0xA8,PC),r2
            0x0ce35146      0fe5           mov 0x0F,r5
            0x0ce35148      38e6           mov 0x38,r6
            0x0ce3514a      0b42           jsr @r2
/ (fcn) fcn.0ce3514c 10
|   fcn.0ce3514c ();
|           ; CALL XREF from fcn.0ce352a8 (+0x8e)
|           0x0ce3514c      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce350a4 (+0x50)
|           0x0ce3514e      0c7f           add 0x0C,r15
|           0x0ce35150      264f           lds.l @r15+,pr
|           0x0ce35152      0b00           rts 
\           0x0ce35154      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35156:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370a0)
            0x0ce35156      e62f           mov.l r14,@-r15
            0x0ce35158      224f           sts.l pr,@-r15
            0x0ce3515a      1dd3           mov.l @(0x74,PC),r3
            0x0ce3515c      0b43           jsr @r3
            0x0ce3515e      436e           mov r4,r14
            0x0ce35160      0e60           exts.b r0,r0
            0x0ce35162      1140           cmp/pz r0
            0x0ce35164      0989           bt 0x0ce3517a
            0x0ce35166      e784           mov.b @(0x7,r14),r0
            0x0ce35168      e364           mov r14,r4
            0x0ce3516a      21d3           mov.l @(0x84,PC),r3
            0x0ce3516c      3ce6           mov 0x3C,r6
            0x0ce3516e      0170           add 0x01,r0
            0x0ce35170      e780           mov.b r0,@(0x7,r14)
            0x0ce35172      0fe5           mov 0x0F,r5
            0x0ce35174      264f           lds.l @r15+,pr
            0x0ce35176      2b43           jmp @r3
            0x0ce35178      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35156 (+0xe)
            0x0ce3517a      2490           mov.w @(0x48,PC),r0
            0x0ce3517c      ec02           mov.b @(r0,r14),r2
            0x0ce3517e      2822           tst r2,r2
            0x0ce35180      098d           bt.s 0x0ce35196
            0x0ce35182      00e4           mov 0x00,r4
            0x0ce35184      440e           mov.b r4,@(r0,r14)
            0x0ce35186      ef70           add 0xEF,r0
            0x0ce35188      ed02           mov.w @(r0,r14),r2
            0x0ce3518a      01e3           mov 0x01,r3
            0x0ce3518c      3a22           xor r3,r2
            0x0ce3518e      250e           mov.w r2,@(r0,r14)
            0x0ce35190      ec01           mov.b @(r0,r14),r1
            0x0ce35192      1990           mov.w @(0x32,PC),r0
            0x0ce35194      140e           mov.b r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce35156 (+0x2a)
            0x0ce35196      1890           mov.w @(0x30,PC),r0
            0x0ce35198      ec03           mov.b @(r0,r14),r3
            0x0ce3519a      3823           tst r3,r3
            0x0ce3519c      0e89           bt 0x0ce351bc
            0x0ce3519e      440e           mov.b r4,@(r0,r14)
            0x0ce351a0      14c7           mova @(0x50,PC),r0
            0x0ce351a2      08f4           fmov @r0,fr4
            0x0ce351a4      1290           mov.w @(0x24,PC),r0
            0x0ce351a6      ed03           mov.w @(r0,r14),r3
            0x0ce351a8      3823           tst r3,r3
            0x0ce351aa      0389           bt 0x0ce351b4
            0x0ce351ac      34e0           mov 0x34,r0
            0x0ce351ae      e6f3           fmov @(r0,r14),fr3
            0x0ce351b0      03a0           bra 0x0ce351ba
            0x0ce351b2      40f3           fadd fr4,fr3
            ; CODE XREF from aav.0x0ce35156 (+0x54)
            0x0ce351b4      34e0           mov 0x34,r0
            0x0ce351b6      e6f3           fmov @(r0,r14),fr3
            0x0ce351b8      41f3           fsub fr4,fr3
            ; CODE XREF from aav.0x0ce35156 (+0x5a)
            0x0ce351ba      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce35156 (+0x46)
            0x0ce351bc      264f           lds.l @r15+,pr
            0x0ce351be      0b00           rts 
            0x0ce351c0      f66e           mov.l @r15+,r14
            0x0ce351c2      c801           .word 0x01C8
            0x0ce351c4      1c04           mov.b @(r0,r1),r4
            0x0ce351c6      4101           .word 0x0141
            0x0ce351c8      d201           stc r5_bank,r1
            0x0ce351ca      4001           .word 0x0140
            0x0ce351cc      3001           .word 0x0130
            0x0ce351ce      0000           .word 0x0000
            0x0ce351d0      ee4d           ldc r13,r6_bank
            0x0ce351d2      038c           .word 0x8C03
            0x0ce351d4      e22c           mov.l r14,@r12
            0x0ce351d6      058c           .word 0x8C05
            0x0ce351d8      18a5           bra 0x0ce35c0c
            0x0ce351da      268c           .word 0x8C26
            0x0ce351dc      0820           tst r0,r0
            0x0ce351de      048c           .word 0x8C04
            0x0ce351e0      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce351e4      ca25           xor r12,r5
            0x0ce351e6      108c           .word 0x8C10
            0x0ce351e8      3a22           xor r3,r2
            0x0ce351ea      048c           .word 0x8C04
            0x0ce351ec      3c93           mov.w @(0x78,PC),r3
            0x0ce351ee      058c           .word 0x8C05
            0x0ce351f0      8c4e           shad r8,r14
            0x0ce351f2      038c           .word 0x8C03
            0x0ce351f4      0000           .word 0x0000
            0x0ce351f6      2043           shal r3
            ;-- aav.0x0ce351f8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370a4)
            0x0ce351f8      e62f           mov.l r14,@-r15
            0x0ce351fa      224f           sts.l pr,@-r15
            0x0ce351fc      4bd3           mov.l @(0x12C,PC),r3
            0x0ce351fe      0b43           jsr @r3
            0x0ce35200      436e           mov r4,r14
            0x0ce35202      0e60           exts.b r0,r0
            0x0ce35204      1140           cmp/pz r0
            0x0ce35206      1689           bt 0x0ce35236
            0x0ce35208      e784           mov.b @(0x7,r14),r0
            0x0ce3520a      e364           mov r14,r4
            0x0ce3520c      8df4           fldi0 fr4
            0x0ce3520e      2be6           mov 0x2B,r6
            0x0ce35210      0170           add 0x01,r0
            0x0ce35212      49d3           mov.l @(0x124,PC),r3
            0x0ce35214      e780           mov.b r0,@(0x7,r14)
            0x0ce35216      5ce0           mov 0x5C,r0
            0x0ce35218      47fe           fmov fr4,@(r0,r14)
            0x0ce3521a      68e0           mov 0x68,r0
            0x0ce3521c      47fe           fmov fr4,@(r0,r14)
            0x0ce3521e      44c7           mova @(0x110,PC),r0
            0x0ce35220      08f3           fmov @r0,fr3
            0x0ce35222      60e0           mov 0x60,r0
            0x0ce35224      0fe5           mov 0x0F,r5
            0x0ce35226      37fe           fmov fr3,@(r0,r14)
            0x0ce35228      42c7           mova @(0x108,PC),r0
            0x0ce3522a      08f3           fmov @r0,fr3
            0x0ce3522c      6ce0           mov 0x6C,r0
            0x0ce3522e      37fe           fmov fr3,@(r0,r14)
            0x0ce35230      264f           lds.l @r15+,pr
            0x0ce35232      2b43           jmp @r3
            0x0ce35234      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce351f8 (+0xe)
            0x0ce35236      7490           mov.w @(0xE8,PC),r0
            0x0ce35238      ec02           mov.b @(r0,r14),r2
            0x0ce3523a      2822           tst r2,r2
            0x0ce3523c      0c89           bt 0x0ce35258
            0x0ce3523e      00e3           mov 0x00,r3
            0x0ce35240      340e           mov.b r3,@(r0,r14)
            0x0ce35242      53e5           mov 0x53,r5
            0x0ce35244      6e90           mov.w @(0xDC,PC),r0
            0x0ce35246      11e3           mov 0x11,r3
            0x0ce35248      ee04           mov.l @(r0,r14),r4
            0x0ce3524a      ec70           add 0xEC,r0
            0x0ce3524c      e604           mov.l r14,@(r0,r4)
            0x0ce3524e      ed70           add 0xED,r0
            0x0ce35250      540e           mov.b r5,@(r0,r14)
            0x0ce35252      5404           mov.b r5,@(r0,r4)
            0x0ce35254      5570           add 0x55,r0
            0x0ce35256      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce351f8 (+0x44)
            0x0ce35258      264f           lds.l @r15+,pr
            0x0ce3525a      0b00           rts 
            0x0ce3525c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3525e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370a8)
            0x0ce3525e      6090           mov.w @(0xC0,PC),r0
            0x0ce35260      6195           mov.w @(0xC2,PC),r5
            0x0ce35262      4c03           mov.b @(r0,r4),r3
            0x0ce35264      3823           tst r3,r3
            0x0ce35266      058d           bt.s 0x0ce35274
            0x0ce35268      4c35           add r4,r5
            0x0ce3526a      4784           mov.b @(0x7,r4),r0
            0x0ce3526c      0170           add 0x01,r0
            0x0ce3526e      4780           mov.b r0,@(0x7,r4)
            0x0ce35270      00e0           mov 0x00,r0
            0x0ce35272      5280           mov.b r0,@(0x2,r5)
            ; CODE XREF from aav.0x0ce3525e (+0x8)
            0x0ce35274      2dd3           mov.l @(0xB4,PC),r3
            0x0ce35276      2b43           jmp @r3
            0x0ce35278      0900           nop 
            ;-- aav.0x0ce3527a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370ac)
            0x0ce3527a      e62f           mov.l r14,@-r15
            0x0ce3527c      d62f           mov.l r13,@-r15
            0x0ce3527e      224f           sts.l pr,@-r15
            0x0ce35280      f47f           add 0xF4,r15
            0x0ce35282      5ce1           mov 0x5C,r1
            0x0ce35284      436e           mov r4,r14
            0x0ce35286      ec31           add r14,r1
            0x0ce35288      28d3           mov.l @(0xA0,PC),r3
            0x0ce3528a      34e0           mov 0x34,r0
            0x0ce3528c      18f3           fmov @r1,fr3
            0x0ce3528e      e6f2           fmov @(r0,r14),fr2
            0x0ce35290      68e1           mov 0x68,r1
            0x0ce35292      ec31           add r14,r1
            0x0ce35294      30f2           fadd fr3,fr2
            0x0ce35296      27fe           fmov fr2,@(r0,r14)
            0x0ce35298      5ce0           mov 0x5C,r0
            0x0ce3529a      e6f2           fmov @(r0,r14),fr2
            0x0ce3529c      18f3           fmov @r1,fr3
            0x0ce3529e      60e1           mov 0x60,r1
            0x0ce352a0      ec31           add r14,r1
            0x0ce352a2      30f2           fadd fr3,fr2
            0x0ce352a4      27fe           fmov fr2,@(r0,r14)
            0x0ce352a6      38e0           mov 0x38,r0
/ (fcn) fcn.0ce352a8 122
|   fcn.0ce352a8 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce355cc (+0x12e)
|           0x0ce352a8      e6f2           fmov @(r0,r14),fr2
|           0x0ce352aa      18f3           fmov @r1,fr3
|           0x0ce352ac      6ce1           mov 0x6C,r1
|           0x0ce352ae      ec31           add r14,r1
|           0x0ce352b0      30f2           fadd fr3,fr2
|           0x0ce352b2      27fe           fmov fr2,@(r0,r14)
|           0x0ce352b4      60e0           mov 0x60,r0
|           0x0ce352b6      e6f2           fmov @(r0,r14),fr2
|           0x0ce352b8      18f3           fmov @r1,fr3
|           0x0ce352ba      30f2           fadd fr3,fr2
|           0x0ce352bc      27fe           fmov fr2,@(r0,r14)
|           0x0ce352be      0b43           jsr @r3
|           0x0ce352c0      e364           mov r14,r4
|           0x0ce352c2      2f90           mov.w @(0x5E,PC),r0
|           0x0ce352c4      ee0d           mov.l @(r0,r14),r13
|           0x0ce352c6      38e0           mov 0x38,r0
|           0x0ce352c8      e6f3           fmov @(r0,r14),fr3
|           0x0ce352ca      d6f2           fmov @(r0,r13),fr2
|           0x0ce352cc      1bc7           mova @(0x6C,PC),r0
|           0x0ce352ce      31f2           fsub fr3,fr2
|           0x0ce352d0      08f3           fmov @r0,fr3
|           0x0ce352d2      1bc7           mova @(0x6C,PC),r0
|           0x0ce352d4      08f1           fmov @r0,fr1
|           0x0ce352d6      30f2           fadd fr3,fr2
|           0x0ce352d8      25f1           fcmp/gt fr2,fr1
|           0x0ce352da      1d8b           bf 0x0ce35318
|           0x0ce352dc      e784           mov.b @(0x7,r14),r0
|           0x0ce352de      f365           mov r15,r5
|           0x0ce352e0      2293           mov.w @(0x44,PC),r3
|           0x0ce352e2      0170           add 0x01,r0
|           0x0ce352e4      e780           mov.b r0,@(0x7,r14)
|           0x0ce352e6      2090           mov.w @(0x40,PC),r0
|           0x0ce352e8      340e           mov.b r3,@(r0,r14)
|           0x0ce352ea      16c7           mova @(0x58,PC),r0
|           0x0ce352ec      08f2           fmov @r0,fr2
|           0x0ce352ee      16c7           mova @(0x58,PC),r0
|           0x0ce352f0      16d3           mov.l @(0x58,PC),r3
|           0x0ce352f2      2aff           fmov fr2,@r15
|           0x0ce352f4      08f3           fmov @r0,fr3
|           0x0ce352f6      04e0           mov 0x04,r0
|           0x0ce352f8      37ff           fmov fr3,@(r0,r15)
|           0x0ce352fa      0b43           jsr @r3
|           0x0ce352fc      e364           mov r14,r4
|           0x0ce352fe      14d2           mov.l @(0x50,PC),r2
|           0x0ce35300      05e5           mov 0x05,r5
|           0x0ce35302      0b42           jsr @r2
|           0x0ce35304      e364           mov r14,r4
|           0x0ce35306      0cd3           mov.l @(0x30,PC),r3
|           0x0ce35308      0fe5           mov 0x0F,r5
|           0x0ce3530a      1de6           mov 0x1D,r6
|           0x0ce3530c      0b43           jsr @r3
|           0x0ce3530e      e364           mov r14,r4
|           0x0ce35310      10d2           mov.l @(0x40,PC),r2
|           0x0ce35312      d365           mov r13,r5
|           0x0ce35314      0b42           jsr @r2
|           0x0ce35316      e364           mov r14,r4
|           ; CODE XREF from fcn.0ce352a8 (0xce352da)
|           0x0ce35318      0c7f           add 0x0C,r15
|           0x0ce3531a      264f           lds.l @r15+,pr
|           0x0ce3531c      f66d           mov.l @r15+,r13
|           0x0ce3531e      0b00           rts 
\           0x0ce35320      f66e           mov.l @r15+,r14
            0x0ce35322      4101           .word 0x0141
            0x0ce35324      c801           .word 0x01C8
            0x0ce35326      a402           mov.b r10,@(r0,r2)
            0x0ce35328      cd00           mov.w @(r0,r12),r0
            0x0ce3532a      f701           mul.l r15,r1
            0x0ce3532c      ee4d           ldc r13,r6_bank
            0x0ce3532e      038c           .word 0x8C03
            0x0ce35330      b66d           mov.l @r11+,r13
            0x0ce35332      2b42           jmp @r2
            0x0ce35334      9224           mov.l r9,@r4
            0x0ce35336      09bf           bsr fcn.0ce3514c
            0x0ce35338      8c4e           shad r8,r14
            0x0ce3533a      038c           .word 0x8C03
            0x0ce3533c      9224           mov.l r9,@r4
            0x0ce3533e      89c1           mov.w r0,@(0x112,gbr)
            0x0ce35340      9224           mov.l r9,@r4
            0x0ce35342      89c2           mov.l r0,@(0x224,gbr)
            0x0ce35344      aaaa           bra 0x0ce3489c
            0x0ce35346      12c3           trapa 0x12
            0x0ce35348      b66d           mov.l @r11+,r13
            0x0ce3534a      2b43           jmp @r3
            0x0ce3534c      6036           cmp/eq r6,r6
            0x0ce3534e      108c           .word 0x8C10
            0x0ce35350      0820           tst r0,r0
            0x0ce35352      048c           .word 0x8C04
            0x0ce35354      8e24           mulu.w r8,r4
            0x0ce35356      058c           .word 0x8C05
            ;-- aav.0x0ce35358:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370b0)
            0x0ce35358      e62f           mov.l r14,@-r15
            0x0ce3535a      224f           sts.l pr,@-r15
            0x0ce3535c      fc7f           add 0xFC,r15
            0x0ce3535e      7a93           mov.w @(0xF4,PC),r3
            0x0ce35360      436e           mov r4,r14
            0x0ce35362      ec33           add r14,r3
            0x0ce35364      322f           mov.l r3,@r15
            0x0ce35366      3ed3           mov.l @(0xF8,PC),r3
            0x0ce35368      0b43           jsr @r3
            0x0ce3536a      e364           mov r14,r4
            0x0ce3536c      0e60           exts.b r0,r0
            0x0ce3536e      1140           cmp/pz r0
            0x0ce35370      0d89           bt 0x0ce3538e
            0x0ce35372      e784           mov.b @(0x7,r14),r0
            0x0ce35374      0fe5           mov 0x0F,r5
            0x0ce35376      e364           mov r14,r4
            0x0ce35378      2ce6           mov 0x2C,r6
            0x0ce3537a      0170           add 0x01,r0
            0x0ce3537c      e780           mov.b r0,@(0x7,r14)
            0x0ce3537e      00e0           mov 0x00,r0
            0x0ce35380      f263           mov.l @r15,r3
            0x0ce35382      3280           mov.b r0,@(0x2,r3)
            0x0ce35384      047f           add 0x04,r15
            0x0ce35386      264f           lds.l @r15+,pr
            0x0ce35388      36d3           mov.l @(0xD8,PC),r3
            0x0ce3538a      2b43           jmp @r3
            0x0ce3538c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35358 (+0x18)
            0x0ce3538e      047f           add 0x04,r15
            0x0ce35390      264f           lds.l @r15+,pr
            0x0ce35392      0b00           rts 
            0x0ce35394      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35396:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370b4)
            0x0ce35396      e62f           mov.l r14,@-r15
            0x0ce35398      224f           sts.l pr,@-r15
            0x0ce3539a      31d3           mov.l @(0xC4,PC),r3
            0x0ce3539c      0b43           jsr @r3
            0x0ce3539e      436e           mov r4,r14
            0x0ce353a0      0e60           exts.b r0,r0
            0x0ce353a2      1140           cmp/pz r0
            0x0ce353a4      1689           bt 0x0ce353d4
/ (fcn) fcn.0ce353a6 46
|   fcn.0ce353a6 (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce353da (+0x94)
|           0x0ce353a6      e784           mov.b @(0x7,r14),r0
|           0x0ce353a8      e364           mov r14,r4
|           0x0ce353aa      8df4           fldi0 fr4
|           0x0ce353ac      2de6           mov 0x2D,r6
|           0x0ce353ae      0170           add 0x01,r0
|           0x0ce353b0      2cd3           mov.l @(0xB0,PC),r3
|           0x0ce353b2      e780           mov.b r0,@(0x7,r14)
|           0x0ce353b4      5ce0           mov 0x5C,r0
|           0x0ce353b6      47fe           fmov fr4,@(r0,r14)
|           0x0ce353b8      68e0           mov 0x68,r0
|           0x0ce353ba      47fe           fmov fr4,@(r0,r14)
|           0x0ce353bc      2ac7           mova @(0xA8,PC),r0
|           0x0ce353be      08f3           fmov @r0,fr3
|           0x0ce353c0      60e0           mov 0x60,r0
|           0x0ce353c2      0fe5           mov 0x0F,r5
|           0x0ce353c4      37fe           fmov fr3,@(r0,r14)
|           0x0ce353c6      29c7           mova @(0xA4,PC),r0
|           0x0ce353c8      08f3           fmov @r0,fr3
|           0x0ce353ca      6ce0           mov 0x6C,r0
|           0x0ce353cc      37fe           fmov fr3,@(r0,r14)
|           0x0ce353ce      264f           lds.l @r15+,pr
|           0x0ce353d0      2b43           jmp @r3
\           0x0ce353d2      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35396 (+0xe)
            0x0ce353d4      264f           lds.l @r15+,pr
            0x0ce353d6      0b00           rts 
            0x0ce353d8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce353da:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370b8)
            0x0ce353da      e62f           mov.l r14,@-r15
            0x0ce353dc      436e           mov r4,r14
            0x0ce353de      5ce1           mov 0x5C,r1
            0x0ce353e0      d62f           mov.l r13,@-r15
            0x0ce353e2      34e0           mov 0x34,r0
            0x0ce353e4      c62f           mov.l r12,@-r15
            0x0ce353e6      ec31           add r14,r1
            0x0ce353e8      359d           mov.w @(0x6A,PC),r13
            0x0ce353ea      224f           sts.l pr,@-r15
            0x0ce353ec      18f3           fmov @r1,fr3
            0x0ce353ee      68e1           mov 0x68,r1
            0x0ce353f0      e6f2           fmov @(r0,r14),fr2
            0x0ce353f2      ec31           add r14,r1
            0x0ce353f4      ec3d           add r14,r13
            0x0ce353f6      30f2           fadd fr3,fr2
            0x0ce353f8      27fe           fmov fr2,@(r0,r14)
            0x0ce353fa      5ce0           mov 0x5C,r0
            0x0ce353fc      18f3           fmov @r1,fr3
            0x0ce353fe      60e1           mov 0x60,r1
            0x0ce35400      e6f2           fmov @(r0,r14),fr2
            0x0ce35402      ec31           add r14,r1
            0x0ce35404      30f2           fadd fr3,fr2
            0x0ce35406      27fe           fmov fr2,@(r0,r14)
            0x0ce35408      38e0           mov 0x38,r0
            0x0ce3540a      e6f2           fmov @(r0,r14),fr2
            0x0ce3540c      18f3           fmov @r1,fr3
            0x0ce3540e      6ce1           mov 0x6C,r1
            0x0ce35410      ec31           add r14,r1
            0x0ce35412      30f2           fadd fr3,fr2
            0x0ce35414      27fe           fmov fr2,@(r0,r14)
            0x0ce35416      60e0           mov 0x60,r0
            0x0ce35418      18f3           fmov @r1,fr3
            0x0ce3541a      e6f2           fmov @(r0,r14),fr2
            0x0ce3541c      10d3           mov.l @(0x40,PC),r3
            0x0ce3541e      30f2           fadd fr3,fr2
            0x0ce35420      27fe           fmov fr2,@(r0,r14)
            0x0ce35422      0b43           jsr @r3
            0x0ce35424      e364           mov r14,r4
            0x0ce35426      12d2           mov.l @(0x48,PC),r2
            0x0ce35428      0b42           jsr @r2
            0x0ce3542a      e364           mov r14,r4
            0x0ce3542c      0820           tst r0,r0
            0x0ce3542e      2e89           bt 0x0ce3548e
            0x0ce35430      1290           mov.w @(0x24,PC),r0
            0x0ce35432      ec02           mov.b @(r0,r14),r2
            0x0ce35434      2822           tst r2,r2
            0x0ce35436      1d89           bt 0x0ce35474
            0x0ce35438      0f90           mov.w @(0x1E,PC),r0
            0x0ce3543a      ec03           mov.b @(r0,r14),r3
            0x0ce3543c      3823           tst r3,r3
            0x0ce3543e      1c89           bt 0x0ce3547a
            0x0ce35440      00e3           mov 0x00,r3
            0x0ce35442      340e           mov.b r3,@(r0,r14)
            0x0ce35444      0170           add 0x01,r0
            0x0ce35446      ec00           mov.b @(r0,r14),r0
            0x0ce35448      0188           cmp/eq 0x01,r0
            0x0ce3544a      1689           bt 0x0ce3547a
            0x0ce3544c      0690           mov.w @(0xC,PC),r0
            0x0ce3544e      ec02           mov.b @(r0,r14),r2
            0x0ce35450      ff72           add 0xFF,r2
            0x0ce35452      12a0           bra 0x0ce3547a
            0x0ce35454      240e           mov.b r2,@(r0,r14)
            0x0ce35456      a402           mov.b r10,@(r0,r2)
            0x0ce35458      2505           mov.w r2,@(r0,r5)
            0x0ce3545a      4101           .word 0x0141
            0x0ce3545c      4201           stc spc,r1
            0x0ce3545e      0000           .word 0x0000
            0x0ce35460      ee4d           ldc r13,r6_bank
            0x0ce35462      038c           .word 0x8C03
            0x0ce35464      8c4e           shad r8,r14
            0x0ce35466      038c           .word 0x8C03
            0x0ce35468      dbb6           bsr fcn.0ce36222
            0x0ce3546a      cdc0           mov.b r0,@(0xCD,gbr)
            0x0ce3546c      2449           rotcl r9
            0x0ce3546e      9abf           bsr fcn.0ce353a6
            0x0ce35470      2e5d           mov.l @(0x38,r2),r13
            0x0ce35472      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce353da (+0x5c)
            0x0ce35474      8c90           mov.w @(0x118,PC),r0
            0x0ce35476      01e1           mov 0x01,r1
            0x0ce35478      140e           mov.b r1,@(r0,r14)
            ; CODE XREFS from aav.0x0ce353da (+0x64, +0x70, +0x78)
            0x0ce3547a      d284           mov.b @(0x2,r13),r0
            0x0ce3547c      10e4           mov 0x10,r4
            0x0ce3547e      0170           add 0x01,r0
            0x0ce35480      d280           mov.b r0,@(0x2,r13)
            0x0ce35482      d284           mov.b @(0x2,r13),r0
            0x0ce35484      4730           cmp/gt r4,r0
            0x0ce35486      028b           bf 0x0ce3548e
            0x0ce35488      4360           mov r4,r0
            0x0ce3548a      0900           nop 
            0x0ce3548c      d280           mov.b r0,@(0x2,r13)
            ; CODE XREFS from aav.0x0ce353da (+0x54, +0xac)
            0x0ce3548e      43d3           mov.l @(0x10C,PC),r3
            0x0ce35490      0b43           jsr @r3
            0x0ce35492      e364           mov r14,r4
            0x0ce35494      0c60           extu.b r0,r0
            0x0ce35496      0820           tst r0,r0
            0x0ce35498      1c89           bt 0x0ce354d4
            0x0ce3549a      e784           mov.b @(0x7,r14),r0
            0x0ce3549c      8df4           fldi0 fr4
            0x0ce3549e      0170           add 0x01,r0
            0x0ce354a0      3fd4           mov.l @(0xFC,PC),r4
            0x0ce354a2      e780           mov.b r0,@(0x7,r14)
            0x0ce354a4      5ce0           mov 0x5C,r0
            0x0ce354a6      47fe           fmov fr4,@(r0,r14)
            0x0ce354a8      60e0           mov 0x60,r0
            0x0ce354aa      47fe           fmov fr4,@(r0,r14)
            0x0ce354ac      68e0           mov 0x68,r0
            0x0ce354ae      47fe           fmov fr4,@(r0,r14)
            0x0ce354b0      6ce0           mov 0x6C,r0
            0x0ce354b2      47fe           fmov fr4,@(r0,r14)
            0x0ce354b4      03e0           mov 0x03,r0
            0x0ce354b6      4580           mov.b r0,@(0x5,r4)
            0x0ce354b8      01e0           mov 0x01,r0
            0x0ce354ba      3ad3           mov.l @(0xE8,PC),r3
            ; CODE XREF from aav.0x0ce35f32 (+0x32)
            0x0ce354bc      4680           mov.b r0,@(0x6,r4)
            0x0ce354be      0b43           jsr @r3
            0x0ce354c0      e364           mov r14,r4
            0x0ce354c2      264f           lds.l @r15+,pr
            0x0ce354c4      38d2           mov.l @(0xE0,PC),r2
            0x0ce354c6      0fe5           mov 0x0F,r5
            0x0ce354c8      e364           mov r14,r4
            0x0ce354ca      2ee6           mov 0x2E,r6
            0x0ce354cc      f66c           mov.l @r15+,r12
            0x0ce354ce      f66d           mov.l @r15+,r13
            0x0ce354d0      2b42           jmp @r2
            0x0ce354d2      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce353da (+0xbe)
            0x0ce354d4      d284           mov.b @(0x2,r13),r0
            0x0ce354d6      05e3           mov 0x05,r3
            0x0ce354d8      3730           cmp/gt r3,r0
            0x0ce354da      218b           bf 0x0ce35520
            0x0ce354dc      5990           mov.w @(0xB2,PC),r0
            0x0ce354de      33dc           mov.l @(0xCC,PC),r12
            0x0ce354e0      ec01           mov.b @(r0,r14),r1
            0x0ce354e2      1821           tst r1,r1
            0x0ce354e4      098b           bf 0x0ce354fa
            0x0ce354e6      25e0           mov 0x25,r0
            0x0ce354e8      ec06           mov.b @(r0,r14),r6
            0x0ce354ea      01e7           mov 0x01,r7
            0x0ce354ec      d284           mov.b @(0x2,r13),r0
            0x0ce354ee      6c66           extu.b r6,r6
            0x0ce354f0      0840           shll2 r0
            0x0ce354f2      ce02           mov.l @(r0,r12),r2
            0x0ce354f4      2ed0           mov.l @(0xB8,PC),r0
            0x0ce354f6      09a0           bra 0x0ce3550c
            0x0ce354f8      0846           shll2 r6
            ; CODE XREF from aav.0x0ce353da (+0x10a)
            0x0ce354fa      25e0           mov 0x25,r0
            0x0ce354fc      ec06           mov.b @(r0,r14),r6
            0x0ce354fe      01e7           mov 0x01,r7
            0x0ce35500      d284           mov.b @(0x2,r13),r0
            0x0ce35502      6c66           extu.b r6,r6
            0x0ce35504      0840           shll2 r0
            0x0ce35506      ce02           mov.l @(r0,r12),r2
            0x0ce35508      0846           shll2 r6
            0x0ce3550a      2ad0           mov.l @(0xA8,PC),r0
            ; CODE XREF from aav.0x0ce353da (+0x11c)
            0x0ce3550c      264f           lds.l @r15+,pr
            0x0ce3550e      6e06           mov.l @(r0,r6),r6
            0x0ce35510      00e5           mov 0x00,r5
            0x0ce35512      e364           mov r14,r4
            0x0ce35514      f66c           mov.l @r15+,r12
            0x0ce35516      2c36           add r2,r6
            0x0ce35518      27d2           mov.l @(0x9C,PC),r2
            0x0ce3551a      f66d           mov.l @r15+,r13
            0x0ce3551c      2b42           jmp @r2
            0x0ce3551e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce353da (+0x100)
            0x0ce35520      264f           lds.l @r15+,pr
            0x0ce35522      f66c           mov.l @r15+,r12
            0x0ce35524      f66d           mov.l @r15+,r13
            0x0ce35526      0b00           rts 
            0x0ce35528      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3552a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370bc)
            0x0ce3552a      e62f           mov.l r14,@-r15
            0x0ce3552c      224f           sts.l pr,@-r15
            0x0ce3552e      f47f           add 0xF4,r15
            0x0ce35530      3090           mov.w @(0x60,PC),r0
            0x0ce35532      436e           mov r4,r14
            0x0ce35534      ec03           mov.b @(r0,r14),r3
            0x0ce35536      3823           tst r3,r3
            0x0ce35538      1889           bt 0x0ce3556c               ; fcn.0ce3555c+0x10
            0x0ce3553a      00e3           mov 0x00,r3
            0x0ce3553c      340e           mov.b r3,@(r0,r14)
            0x0ce3553e      01e5           mov 0x01,r5
            0x0ce35540      2990           mov.w @(0x52,PC),r0
            0x0ce35542      1ed3           mov.l @(0x78,PC),r3
            0x0ce35544      ee04           mov.l @(r0,r14),r4
            0x0ce35546      34e0           mov 0x34,r0
            0x0ce35548      46f3           fmov @(r0,r4),fr3
            0x0ce3554a      2590           mov.w @(0x4A,PC),r0
            0x0ce3554c      3aff           fmov fr3,@r15
            0x0ce3554e      e6f3           fmov @(r0,r14),fr3
            0x0ce35550      04e0           mov 0x04,r0
            0x0ce35552      37ff           fmov fr3,@(r0,r15)
            0x0ce35554      0b43           jsr @r3
            0x0ce35556      f364           mov r15,r4
            0x0ce35558      19d2           mov.l @(0x64,PC),r2
            0x0ce3555a      f365           mov r15,r5
/ (fcn) fcn.0ce3555c 52
|   fcn.0ce3555c (int arg_7h);
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce355cc (+0x136)
|           0x0ce3555c      7ee7           mov 0x7E,r7
|           0x0ce3555e      04e6           mov 0x04,r6
|           0x0ce35560      0b42           jsr @r2
|           0x0ce35562      e364           mov r14,r4
|           0x0ce35564      17d3           mov.l @(0x5C,PC),r3
|           0x0ce35566      4ae5           mov 0x4A,r5
|           0x0ce35568      0b43           jsr @r3
|           0x0ce3556a      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce3552a (+0xe)
|           0x0ce3556c      16d2           mov.l @(0x58,PC),r2
|           0x0ce3556e      0b42           jsr @r2
|           0x0ce35570      e364           mov r14,r4
|           0x0ce35572      0e60           exts.b r0,r0
|           0x0ce35574      1140           cmp/pz r0
|           0x0ce35576      0789           bt 0x0ce35588
|           0x0ce35578      e784           mov.b @(0x7,r14),r0
|           0x0ce3557a      0fe5           mov 0x0F,r5
|           0x0ce3557c      0ad3           mov.l @(0x28,PC),r3
|           0x0ce3557e      0ee6           mov 0x0E,r6
|           0x0ce35580      0170           add 0x01,r0
|           0x0ce35582      e780           mov.b r0,@(0x7,r14)
|           0x0ce35584      0b43           jsr @r3
|           0x0ce35586      e364           mov r14,r4
|           ; CODE XREF from fcn.0ce3555c (0xce35576)
|           0x0ce35588      0c7f           add 0x0C,r15
|           0x0ce3558a      264f           lds.l @r15+,pr
|           0x0ce3558c      0b00           rts 
\           0x0ce3558e      f66e           mov.l @r15+,r14
            0x0ce35590      4201           stc spc,r1
            0x0ce35592      0202           stc sr,r2
            0x0ce35594      4101           .word 0x0141
            0x0ce35596      c801           .word 0x01C8
            0x0ce35598      1c04           mov.b @(r0,r1),r4
            0x0ce3559a      0000           .word 0x0000
            0x0ce3559c      e22c           mov.l r14,@r12
            0x0ce3559e      058c           .word 0x8C05
            0x0ce355a0      18a5           bra 0x0ce35fd4
            0x0ce355a2      268c           .word 0x8C26
            0x0ce355a4      .dword 0x0ce36b7a ; aav.0x0ce36b7a
            0x0ce355a8      8c4e           shad r8,r14
            0x0ce355aa      038c           .word 0x8C03
            0x0ce355ac      .dword 0x0ce36c00 ; aav.0x0ce36c00
            0x0ce355b0      .dword 0x0ce36bd0 ; aav.0x0ce36bd0
            0x0ce355b4      .dword 0x0ce36be8 ; aav.0x0ce36be8
            0x0ce355b8      4c54           mov.l @(0x30,r4),r4
            0x0ce355ba      038c           .word 0x8C03
            0x0ce355bc      ca25           xor r12,r5
            0x0ce355be      108c           .word 0x8C10
            0x0ce355c0      5c23           cmp/str r5,r3
            0x0ce355c2      108c           .word 0x8C10
            0x0ce355c4      3a22           xor r3,r2
            0x0ce355c6      048c           .word 0x8C04
            0x0ce355c8      ee4d           ldc r13,r6_bank
            0x0ce355ca      038c           .word 0x8C03
            ;-- aav.0x0ce355cc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370c0)
            0x0ce355cc      e62f           mov.l r14,@-r15
            0x0ce355ce      436e           mov r4,r14
            0x0ce355d0      5ce1           mov 0x5C,r1
            0x0ce355d2      d62f           mov.l r13,@-r15
            0x0ce355d4      34e0           mov 0x34,r0
            0x0ce355d6      c62f           mov.l r12,@-r15
            0x0ce355d8      ec31           add r14,r1
            0x0ce355da      7f9c           mov.w @(0xFE,PC),r12
            0x0ce355dc      224f           sts.l pr,@-r15
            0x0ce355de      18f3           fmov @r1,fr3
            0x0ce355e0      68e1           mov 0x68,r1
            0x0ce355e2      e6f2           fmov @(r0,r14),fr2
            0x0ce355e4      ec31           add r14,r1
            0x0ce355e6      ec3c           add r14,r12
            0x0ce355e8      30f2           fadd fr3,fr2
            0x0ce355ea      27fe           fmov fr2,@(r0,r14)
            0x0ce355ec      5ce0           mov 0x5C,r0
            0x0ce355ee      18f3           fmov @r1,fr3
            0x0ce355f0      60e1           mov 0x60,r1
            0x0ce355f2      e6f2           fmov @(r0,r14),fr2
            0x0ce355f4      ec31           add r14,r1
            0x0ce355f6      30f2           fadd fr3,fr2
            0x0ce355f8      27fe           fmov fr2,@(r0,r14)
            0x0ce355fa      38e0           mov 0x38,r0
            0x0ce355fc      e6f2           fmov @(r0,r14),fr2
            0x0ce355fe      18f3           fmov @r1,fr3
            0x0ce35600      6ce1           mov 0x6C,r1
            0x0ce35602      ec31           add r14,r1
            0x0ce35604      30f2           fadd fr3,fr2
            0x0ce35606      27fe           fmov fr2,@(r0,r14)
            0x0ce35608      60e0           mov 0x60,r0
            0x0ce3560a      18f3           fmov @r1,fr3
            0x0ce3560c      e6f2           fmov @(r0,r14),fr2
            0x0ce3560e      38d3           mov.l @(0xE0,PC),r3
            0x0ce35610      30f2           fadd fr3,fr2
            0x0ce35612      27fe           fmov fr2,@(r0,r14)
            0x0ce35614      0b43           jsr @r3
            0x0ce35616      e364           mov r14,r4
            0x0ce35618      0e60           exts.b r0,r0
            0x0ce3561a      1140           cmp/pz r0
            0x0ce3561c      2789           bt 0x0ce3566e
            0x0ce3561e      e784           mov.b @(0x7,r14),r0
            0x0ce35620      0170           add 0x01,r0
            0x0ce35622      e780           mov.b r0,@(0x7,r14)
            0x0ce35624      33c7           mova @(0xCC,PC),r0
            0x0ce35626      08f3           fmov @r0,fr3
            0x0ce35628      5ce0           mov 0x5C,r0
            0x0ce3562a      37fe           fmov fr3,@(r0,r14)
            0x0ce3562c      32c7           mova @(0xC8,PC),r0
            0x0ce3562e      08f3           fmov @r0,fr3
            0x0ce35630      68e0           mov 0x68,r0
            0x0ce35632      37fe           fmov fr3,@(r0,r14)
            0x0ce35634      31c7           mova @(0xC4,PC),r0
            0x0ce35636      08f3           fmov @r0,fr3
            0x0ce35638      60e0           mov 0x60,r0
            0x0ce3563a      37fe           fmov fr3,@(r0,r14)
            0x0ce3563c      30c7           mova @(0xC0,PC),r0
            0x0ce3563e      08f3           fmov @r0,fr3
            0x0ce35640      6ce0           mov 0x6C,r0
            0x0ce35642      37fe           fmov fr3,@(r0,r14)
            0x0ce35644      4b90           mov.w @(0x96,PC),r0
            0x0ce35646      ec03           mov.b @(r0,r14),r3
            0x0ce35648      3823           tst r3,r3
            0x0ce3564a      088d           bt.s 0x0ce3565e
            0x0ce3564c      21e6           mov 0x21,r6
            0x0ce3564e      5ce0           mov 0x5C,r0
            0x0ce35650      e6f3           fmov @(r0,r14),fr3
            0x0ce35652      4df3           fneg fr3
            0x0ce35654      37fe           fmov fr3,@(r0,r14)
            0x0ce35656      68e0           mov 0x68,r0
            0x0ce35658      e6f3           fmov @(r0,r14),fr3
            0x0ce3565a      4df3           fneg fr3
            0x0ce3565c      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce355cc (+0x7e)
            0x0ce3565e      264f           lds.l @r15+,pr
            0x0ce35660      28d3           mov.l @(0xA0,PC),r3
            0x0ce35662      0fe5           mov 0x0F,r5
            0x0ce35664      e364           mov r14,r4
            0x0ce35666      f66c           mov.l @r15+,r12
            0x0ce35668      f66d           mov.l @r15+,r13
            0x0ce3566a      2b43           jmp @r3
            0x0ce3566c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce355cc (+0x50)
            0x0ce3566e      3790           mov.w @(0x6E,PC),r0
            0x0ce35670      ec02           mov.b @(r0,r14),r2
            0x0ce35672      2822           tst r2,r2
            0x0ce35674      2d89           bt 0x0ce356d2
            0x0ce35676      24d3           mov.l @(0x90,PC),r3
            0x0ce35678      00ed           mov 0x00,r13
            0x0ce3567a      d365           mov r13,r5
            0x0ce3567c      d40e           mov.b r13,@(r0,r14)
            0x0ce3567e      d366           mov r13,r6
            0x0ce35680      0b43           jsr @r3
            0x0ce35682      e364           mov r14,r4
            0x0ce35684      2d90           mov.w @(0x5A,PC),r0
            0x0ce35686      21d5           mov.l @(0x84,PC),r5
            0x0ce35688      ee04           mov.l @(r0,r14),r4
            0x0ce3568a      c284           mov.b @(0x2,r12),r0
            0x0ce3568c      2b91           mov.w @(0x56,PC),r1
            0x0ce3568e      0040           shll r0
            0x0ce35690      5c03           mov.b @(r0,r5),r3
            0x0ce35692      4c31           add r4,r1
            0x0ce35694      2690           mov.w @(0x4C,PC),r0
            0x0ce35696      3404           mov.b r3,@(r0,r4)
            0x0ce35698      d363           mov r13,r3
            0x0ce3569a      c284           mov.b @(0x2,r12),r0
            0x0ce3569c      0040           shll r0
            0x0ce3569e      5c30           add r5,r0
            0x0ce356a0      0184           mov.b @(0x1,r0),r0
            0x0ce356a2      0021           mov.b r0,@r1
            0x0ce356a4      c284           mov.b @(0x2,r12),r0
            0x0ce356a6      1e91           mov.w @(0x3C,PC),r1
            0x0ce356a8      0040           shll r0
            0x0ce356aa      0c35           add r0,r5
            0x0ce356ac      5184           mov.b @(0x1,r5),r0
            0x0ce356ae      ec31           add r14,r1
            0x0ce356b0      0021           mov.b r0,@r1
            0x0ce356b2      1990           mov.w @(0x32,PC),r0
            0x0ce356b4      d40e           mov.b r13,@(r0,r14)
            0x0ce356b6      ff70           add 0xFF,r0
            0x0ce356b8      d40e           mov.b r13,@(r0,r14)
            0x0ce356ba      1690           mov.w @(0x2C,PC),r0
            0x0ce356bc      d40e           mov.b r13,@(r0,r14)
            0x0ce356be      0170           add 0x01,r0
            0x0ce356c0      d40e           mov.b r13,@(r0,r14)
            0x0ce356c2      c284           mov.b @(0x2,r12),r0
            0x0ce356c4      0733           cmp/gt r0,r3
            0x0ce356c6      1191           mov.w @(0x22,PC),r1
            0x0ce356c8      3e30           addc r3,r0
            0x0ce356ca      2140           shar r0
            0x0ce356cc      ec31           add r14,r1
            0x0ce356ce      2070           add 0x20,r0
            0x0ce356d0      0021           mov.b r0,@r1
            ; CODE XREF from aav.0x0ce355cc (+0xa8)
            0x0ce356d2      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce36122 (+0x5a)
            0x0ce356d4      f66c           mov.l @r15+,r12
            0x0ce356d6      f66d           mov.l @r15+,r13
            0x0ce356d8      0b00           rts 
            0x0ce356da      f66e           mov.l @r15+,r14
            0x0ce356dc      a402           mov.b r10,@(r0,r2)
            0x0ce356de      d201           stc r5_bank,r1
            0x0ce356e0      4101           .word 0x0141
            0x0ce356e2      c801           .word 0x01C8
            0x0ce356e4      f601           mov.l r15,@(r0,r1)
            0x0ce356e6      a101           .word 0x01A1
            0x0ce356e8      f903           .word 0x03F9
            0x0ce356ea      2703           mul.l r2,r3
            0x0ce356ec      0502           mov.w r0,@(r0,r2)
            0x0ce356ee      0000           .word 0x0000
            0x0ce356f0      ee4d           ldc r13,r6_bank
            0x0ce356f2      038c           .word 0x8C03
            0x0ce356f4      5555           mov.l @(0x14,r5),r5
            0x0ce356f6      d540           .word 0x40D5
            0x0ce356f8      5555           mov.l @(0x14,r5),r5
            0x0ce356fa      d5bd           bsr fcn.0ce352a8
            0x0ce356fc      2449           rotcl r9
            0x0ce356fe      9a41           .word 0x419A
            0x0ce35700      b66d           mov.l @r11+,r13
            0x0ce35702      2bbf           bsr fcn.0ce3555c
            0x0ce35704      8c4e           shad r8,r14
            0x0ce35706      038c           .word 0x8C03
            0x0ce35708      c4fe           fcmp/eq fr12,fr14
            0x0ce3570a      028c           .word 0x8C02
            0x0ce3570c      .dword 0x0ce37058 ; aav.0x0ce37058
            ;-- aav.0x0ce35710:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370c4)
            0x0ce35710      e62f           mov.l r14,@-r15
            0x0ce35712      5ce1           mov 0x5C,r1
            0x0ce35714      436e           mov r4,r14
            0x0ce35716      ec31           add r14,r1
            0x0ce35718      34e0           mov 0x34,r0
            0x0ce3571a      51d3           mov.l @(0x144,PC),r3
            0x0ce3571c      224f           sts.l pr,@-r15
            0x0ce3571e      e6f2           fmov @(r0,r14),fr2
            0x0ce35720      18f3           fmov @r1,fr3
            0x0ce35722      68e1           mov 0x68,r1
            0x0ce35724      ec31           add r14,r1
            0x0ce35726      30f2           fadd fr3,fr2
            0x0ce35728      27fe           fmov fr2,@(r0,r14)
            0x0ce3572a      5ce0           mov 0x5C,r0
            0x0ce3572c      18f3           fmov @r1,fr3
            0x0ce3572e      60e1           mov 0x60,r1
            0x0ce35730      e6f2           fmov @(r0,r14),fr2
            0x0ce35732      ec31           add r14,r1
            0x0ce35734      30f2           fadd fr3,fr2
            0x0ce35736      27fe           fmov fr2,@(r0,r14)
            0x0ce35738      38e0           mov 0x38,r0
            0x0ce3573a      e6f2           fmov @(r0,r14),fr2
            0x0ce3573c      18f3           fmov @r1,fr3
            0x0ce3573e      6ce1           mov 0x6C,r1
            0x0ce35740      ec31           add r14,r1
            0x0ce35742      30f2           fadd fr3,fr2
            0x0ce35744      27fe           fmov fr2,@(r0,r14)
            0x0ce35746      60e0           mov 0x60,r0
            0x0ce35748      e6f2           fmov @(r0,r14),fr2
            0x0ce3574a      18f3           fmov @r1,fr3
            0x0ce3574c      30f2           fadd fr3,fr2
            0x0ce3574e      27fe           fmov fr2,@(r0,r14)
            0x0ce35750      0b43           jsr @r3
            0x0ce35752      e364           mov r14,r4
            0x0ce35754      0c60           extu.b r0,r0
            0x0ce35756      0820           tst r0,r0
            0x0ce35758      0c89           bt 0x0ce35774
            0x0ce3575a      42d3           mov.l @(0x108,PC),r3
            0x0ce3575c      0b43           jsr @r3
            0x0ce3575e      e364           mov r14,r4
            0x0ce35760      e784           mov.b @(0x7,r14),r0
            0x0ce35762      e364           mov r14,r4
            0x0ce35764      40d3           mov.l @(0x100,PC),r3
            0x0ce35766      22e6           mov 0x22,r6
            0x0ce35768      0170           add 0x01,r0
            0x0ce3576a      e780           mov.b r0,@(0x7,r14)
            0x0ce3576c      0fe5           mov 0x0F,r5
            0x0ce3576e      264f           lds.l @r15+,pr
            0x0ce35770      2b43           jmp @r3
            0x0ce35772      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35710 (+0x48)
            0x0ce35774      264f           lds.l @r15+,pr
            0x0ce35776      0b00           rts 
            0x0ce35778      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3577a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370c8)
            0x0ce3577a      e62f           mov.l r14,@-r15
            0x0ce3577c      224f           sts.l pr,@-r15
            0x0ce3577e      3bd3           mov.l @(0xEC,PC),r3
            0x0ce35780      0b43           jsr @r3
            0x0ce35782      436e           mov r4,r14
            0x0ce35784      0e60           exts.b r0,r0
            0x0ce35786      1140           cmp/pz r0
            0x0ce35788      0b89           bt 0x0ce357a2
            0x0ce3578a      6290           mov.w @(0xC4,PC),r0
            0x0ce3578c      00e3           mov 0x00,r3
            0x0ce3578e      3365           mov r3,r5
            0x0ce35790      340e           mov.b r3,@(r0,r14)
            0x0ce35792      37d3           mov.l @(0xDC,PC),r3
            0x0ce35794      0b43           jsr @r3
            0x0ce35796      e364           mov r14,r4
            0x0ce35798      264f           lds.l @r15+,pr
            0x0ce3579a      36d2           mov.l @(0xD8,PC),r2
            0x0ce3579c      e364           mov r14,r4
            0x0ce3579e      2b42           jmp @r2
            0x0ce357a0      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3577a (+0xe)
            0x0ce357a2      264f           lds.l @r15+,pr
            0x0ce357a4      0b00           rts 
            0x0ce357a6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce357a8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37050)
            0x0ce357a8      5490           mov.w @(0xA8,PC),r0
            0x0ce357aa      01e3           mov 0x01,r3
            0x0ce357ac      e62f           mov.l r14,@-r15
            0x0ce357ae      436e           mov r4,r14
            0x0ce357b0      340e           mov.b r3,@(r0,r14)
            0x0ce357b2      0370           add 0x03,r0
            0x0ce357b4      02e4           mov 0x02,r4
            0x0ce357b6      30d1           mov.l @(0xC0,PC),r1
            0x0ce357b8      440e           mov.b r4,@(r0,r14)
            0x0ce357ba      0870           add 0x08,r0
            0x0ce357bc      440e           mov.b r4,@(r0,r14)
            0x0ce357be      05e3           mov 0x05,r3
            0x0ce357c0      4990           mov.w @(0x92,PC),r0
            0x0ce357c2      440e           mov.b r4,@(r0,r14)
            0x0ce357c4      e364           mov r14,r4
            0x0ce357c6      4790           mov.w @(0x8E,PC),r0
            0x0ce357c8      340e           mov.b r3,@(r0,r14)
            0x0ce357ca      e784           mov.b @(0x7,r14),r0
            0x0ce357cc      0c60           extu.b r0,r0
            0x0ce357ce      0840           shll2 r0
            0x0ce357d0      1e03           mov.l @(r0,r1),r3
            0x0ce357d2      2b43           jmp @r3
            0x0ce357d4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce357d6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37054)
            0x0ce357d6      224f           sts.l pr,@-r15
            0x0ce357d8      fc7f           add 0xFC,r15
            0x0ce357da      24d3           mov.l @(0x90,PC),r3
            0x0ce357dc      0b43           jsr @r3
            0x0ce357de      422f           mov.l r4,@r15
            0x0ce357e0      0e60           exts.b r0,r0
            0x0ce357e2      1140           cmp/pz r0
            0x0ce357e4      0489           bt 0x0ce357f0
            0x0ce357e6      f264           mov.l @r15,r4
            0x0ce357e8      047f           add 0x04,r15
            0x0ce357ea      22d3           mov.l @(0x88,PC),r3
            0x0ce357ec      2b43           jmp @r3
            0x0ce357ee      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce357d6 (+0xe)
            0x0ce357f0      047f           add 0x04,r15
            0x0ce357f2      264f           lds.l @r15+,pr
            0x0ce357f4      0b00           rts 
            0x0ce357f6      0900           nop 
            ;-- aav.0x0ce357f8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e30)
            0x0ce357f8      4363           mov r4,r3
            0x0ce357fa      20d1           mov.l @(0x80,PC),r1
            0x0ce357fc      462f           mov.l r4,@-r15
            0x0ce357fe      3684           mov.b @(0x6,r3),r0
            0x0ce35800      0c60           extu.b r0,r0
            0x0ce35802      0840           shll2 r0
            0x0ce35804      1e03           mov.l @(r0,r1),r3
            0x0ce35806      2b43           jmp @r3
            0x0ce35808      047f           add 0x04,r15
            ;-- aav.0x0ce3580a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370cc)
            0x0ce3580a      e62f           mov.l r14,@-r15
            0x0ce3580c      436e           mov r4,r14
            0x0ce3580e      224f           sts.l pr,@-r15
            0x0ce35810      e684           mov.b @(0x6,r14),r0
            0x0ce35812      1bd3           mov.l @(0x6C,PC),r3
            0x0ce35814      0170           add 0x01,r0
            0x0ce35816      e680           mov.b r0,@(0x6,r14)
            0x0ce35818      0b43           jsr @r3
            0x0ce3581a      e364           mov r14,r4
            0x0ce3581c      264f           lds.l @r15+,pr
            0x0ce3581e      12d2           mov.l @(0x48,PC),r2
            0x0ce35820      e364           mov r14,r4
            0x0ce35822      0ee6           mov 0x0E,r6
            0x0ce35824      15e5           mov 0x15,r5
            0x0ce35826      2b42           jmp @r2
            0x0ce35828      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3582a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370d0)
            0x0ce3582a      e62f           mov.l r14,@-r15
            0x0ce3582c      224f           sts.l pr,@-r15
            0x0ce3582e      f47f           add 0xF4,r15
            0x0ce35830      0ed3           mov.l @(0x38,PC),r3
            0x0ce35832      0b43           jsr @r3
            0x0ce35834      436e           mov r4,r14
            0x0ce35836      0e60           exts.b r0,r0
            0x0ce35838      1140           cmp/pz r0
            0x0ce3583a      3989           bt 0x0ce358b0
            0x0ce3583c      e684           mov.b @(0x6,r14),r0
            0x0ce3583e      0170           add 0x01,r0
            0x0ce35840      e680           mov.b r0,@(0x6,r14)
            0x0ce35842      0a90           mov.w @(0x14,PC),r0
            0x0ce35844      ec03           mov.b @(r0,r14),r3
            0x0ce35846      3823           tst r3,r3
            0x0ce35848      1c8f           bf.s 0x0ce35884
            0x0ce3584a      00e5           mov 0x00,r5
            0x0ce3584c      0693           mov.w @(0xC,PC),r3
            0x0ce3584e      1ba0           bra 0x0ce35888
            0x0ce35850      340e           mov.b r3,@(r0,r14)
            0x0ce35852      0502           mov.w r0,@(r0,r2)
            0x0ce35854      ea01           .word 0x01EA
            0x0ce35856      f803           .word 0x03F8
            0x0ce35858      2803           .word 0x0328
            0x0ce3585a      0202           stc sr,r2
            0x0ce3585c      8000           .word 0x0080
            0x0ce3585e      0000           .word 0x0000
            0x0ce35860      e22c           mov.l r14,@r12
            0x0ce35862      058c           .word 0x8C05
            0x0ce35864      b411           mov.l r11,@(0x10,r1)
            0x0ce35866      058c           .word 0x8C05
            0x0ce35868      8c4e           shad r8,r14
            0x0ce3586a      038c           .word 0x8C03
            0x0ce3586c      ee4d           ldc r13,r6_bank
            0x0ce3586e      038c           .word 0x8C03
            0x0ce35870      6251           mov.l @(0x8,r6),r1
            0x0ce35872      038c           .word 0x8C03
            0x0ce35874      4816           mov.l r4,@(0x20,r6)
            0x0ce35876      058c           .word 0x8C05
            0x0ce35878      .dword 0x0ce3707c ; aav.0x0ce3707c
            0x0ce3587c      .dword 0x0ce370cc ; aav.0x0ce370cc
            0x0ce35880      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            ; CODE XREF from aav.0x0ce3582a (+0x1e)
            0x0ce35884      00e1           mov 0x00,r1
            0x0ce35886      140e           mov.b r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3582a (+0x24)
            0x0ce35888      52d3           mov.l @(0x148,PC),r3
            0x0ce3588a      0b43           jsr @r3
            0x0ce3588c      e364           mov r14,r4
            0x0ce3588e      52d2           mov.l @(0x148,PC),r2
            0x0ce35890      15e5           mov 0x15,r5
            0x0ce35892      0fe6           mov 0x0F,r6
            0x0ce35894      0b42           jsr @r2
            0x0ce35896      e364           mov r14,r4
            0x0ce35898      50c7           mova @(0x140,PC),r0
            0x0ce3589a      52d3           mov.l @(0x148,PC),r3
            0x0ce3589c      08f3           fmov @r0,fr3
            0x0ce3589e      50c7           mova @(0x140,PC),r0
            0x0ce358a0      f365           mov r15,r5
            0x0ce358a2      01e6           mov 0x01,r6
            0x0ce358a4      3aff           fmov fr3,@r15
            0x0ce358a6      08f3           fmov @r0,fr3
            0x0ce358a8      04e0           mov 0x04,r0
            0x0ce358aa      37ff           fmov fr3,@(r0,r15)
            0x0ce358ac      0b43           jsr @r3
            0x0ce358ae      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce3582a (+0x10)
            0x0ce358b0      0c7f           add 0x0C,r15
            0x0ce358b2      264f           lds.l @r15+,pr
            0x0ce358b4      0b00           rts 
            0x0ce358b6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce358b8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370d4)
            0x0ce358b8      224f           sts.l pr,@-r15
            0x0ce358ba      fc7f           add 0xFC,r15
            ; CODE XREF from aav.0x0ce34dc2 (+0xc6)
            0x0ce358bc      4ad3           mov.l @(0x128,PC),r3
            0x0ce358be      0b43           jsr @r3
            0x0ce358c0      422f           mov.l r4,@r15
            0x0ce358c2      0e60           exts.b r0,r0
            0x0ce358c4      1140           cmp/pz r0
            0x0ce358c6      0489           bt 0x0ce358d2
            0x0ce358c8      f264           mov.l @r15,r4
            0x0ce358ca      047f           add 0x04,r15
            0x0ce358cc      47d3           mov.l @(0x11C,PC),r3
            0x0ce358ce      2b43           jmp @r3
            0x0ce358d0      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce358b8 (+0xe)
            0x0ce358d2      047f           add 0x04,r15
            0x0ce358d4      264f           lds.l @r15+,pr
            0x0ce358d6      0b00           rts 
            0x0ce358d8      0900           nop 
            ;-- aav.0x0ce358da:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e34)
            0x0ce358da      4363           mov r4,r3
            0x0ce358dc      44d1           mov.l @(0x110,PC),r1
            0x0ce358de      462f           mov.l r4,@-r15
            0x0ce358e0      3684           mov.b @(0x6,r3),r0
            0x0ce358e2      0c60           extu.b r0,r0
            0x0ce358e4      0840           shll2 r0
            0x0ce358e6      1e03           mov.l @(r0,r1),r3
            0x0ce358e8      2b43           jmp @r3
            0x0ce358ea      047f           add 0x04,r15
            ;-- aav.0x0ce358ec:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370d8)
            0x0ce358ec      e62f           mov.l r14,@-r15
            0x0ce358ee      436e           mov r4,r14
            0x0ce358f0      224f           sts.l pr,@-r15
            0x0ce358f2      e684           mov.b @(0x6,r14),r0
            0x0ce358f4      3fd3           mov.l @(0xFC,PC),r3
            0x0ce358f6      0170           add 0x01,r0
            0x0ce358f8      e680           mov.b r0,@(0x6,r14)
            0x0ce358fa      0b43           jsr @r3
            0x0ce358fc      e364           mov r14,r4
            0x0ce358fe      3ed2           mov.l @(0xF8,PC),r2
            0x0ce35900      0b42           jsr @r2
            0x0ce35902      e364           mov r14,r4
            0x0ce35904      3dd3           mov.l @(0xF4,PC),r3
            0x0ce35906      08e5           mov 0x08,r5
            0x0ce35908      0b43           jsr @r3
            0x0ce3590a      e364           mov r14,r4
            0x0ce3590c      5e90           mov.w @(0xBC,PC),r0
            0x0ce3590e      2be2           mov 0x2B,r2
            0x0ce35910      00e4           mov 0x00,r4
            0x0ce35912      3bd3           mov.l @(0xEC,PC),r3
            0x0ce35914      240e           mov.b r2,@(r0,r14)
            0x0ce35916      0b70           add 0x0B,r0
            0x0ce35918      450e           mov.w r4,@(r0,r14)
            0x0ce3591a      f270           add 0xF2,r0
            0x0ce3591c      440e           mov.b r4,@(r0,r14)
            0x0ce3591e      2670           add 0x26,r0
            0x0ce35920      460e           mov.l r4,@(r0,r14)
            0x0ce35922      e364           mov r14,r4
            0x0ce35924      e284           mov.b @(0x2,r14),r0
            0x0ce35926      09e6           mov 0x09,r6
            0x0ce35928      3262           mov.l @r3,r2
            0x0ce3592a      15e5           mov 0x15,r5
            0x0ce3592c      0c60           extu.b r0,r0
            0x0ce3592e      0040           shll r0
            0x0ce35930      7c72           add 0x7C,r2
            0x0ce35932      2d01           mov.w @(r0,r2),r1
            0x0ce35934      0171           add 0x01,r1
            0x0ce35936      1502           mov.w r1,@(r0,r2)
            0x0ce35938      264f           lds.l @r15+,pr
            0x0ce3593a      27d2           mov.l @(0x9C,PC),r2
            0x0ce3593c      2b42           jmp @r2
            0x0ce3593e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35940:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370dc)
            0x0ce35940      e62f           mov.l r14,@-r15
            0x0ce35942      224f           sts.l pr,@-r15
            0x0ce35944      fc7f           add 0xFC,r15
            0x0ce35946      4293           mov.w @(0x84,PC),r3
            0x0ce35948      436e           mov r4,r14
            0x0ce3594a      ec33           add r14,r3
            0x0ce3594c      322f           mov.l r3,@r15
            0x0ce3594e      26d3           mov.l @(0x98,PC),r3
            0x0ce35950      0b43           jsr @r3
            0x0ce35952      e364           mov r14,r4
            0x0ce35954      3c90           mov.w @(0x78,PC),r0
            0x0ce35956      ec02           mov.b @(r0,r14),r2
            0x0ce35958      2822           tst r2,r2
            0x0ce3595a      1389           bt 0x0ce35984
            0x0ce3595c      00e4           mov 0x00,r4
            0x0ce3595e      440e           mov.b r4,@(r0,r14)
            0x0ce35960      e684           mov.b @(0x6,r14),r0
            0x0ce35962      0170           add 0x01,r0
            0x0ce35964      e680           mov.b r0,@(0x6,r14)
            0x0ce35966      f263           mov.l @r15,r3
            0x0ce35968      4360           mov r4,r0
            0x0ce3596a      0900           nop 
            0x0ce3596c      3380           mov.b r0,@(0x3,r3)
            0x0ce3596e      25d3           mov.l @(0x94,PC),r3
            0x0ce35970      0b43           jsr @r3
            0x0ce35972      e364           mov r14,r4
            0x0ce35974      0820           tst r0,r0
            0x0ce35976      058b           bf 0x0ce35984
            0x0ce35978      e364           mov r14,r4
            0x0ce3597a      047f           add 0x04,r15
            0x0ce3597c      264f           lds.l @r15+,pr
            0x0ce3597e      1bd3           mov.l @(0x6C,PC),r3
            0x0ce35980      2b43           jmp @r3
            0x0ce35982      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce35940 (+0x1a, +0x36)
            0x0ce35984      047f           add 0x04,r15
            0x0ce35986      264f           lds.l @r15+,pr
            0x0ce35988      0b00           rts 
            0x0ce3598a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3598c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370e0)
            0x0ce3598c      1f95           mov.w @(0x3E,PC),r5
            0x0ce3598e      4c35           add r4,r5
            0x0ce35990      5384           mov.b @(0x3,r5),r0
            0x0ce35992      0820           tst r0,r0
            0x0ce35994      028b           bf 0x0ce3599c
            0x0ce35996      14d0           mov.l @(0x50,PC),r0
            0x0ce35998      2b40           jmp @r0
            0x0ce3599a      0900           nop 
            ; CODE XREF from aav.0x0ce3598c (+0x8)
            0x0ce3599c      4684           mov.b @(0x6,r4),r0
            0x0ce3599e      0ae6           mov 0x0A,r6
            0x0ce359a0      0dd3           mov.l @(0x34,PC),r3
            0x0ce359a2      0170           add 0x01,r0
            0x0ce359a4      4680           mov.b r0,@(0x6,r4)
            0x0ce359a6      2b43           jmp @r3
            0x0ce359a8      15e5           mov 0x15,r5
            ;-- aav.0x0ce359aa:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370e4)
            0x0ce359aa      224f           sts.l pr,@-r15
            0x0ce359ac      fc7f           add 0xFC,r15
            0x0ce359ae      0ed3           mov.l @(0x38,PC),r3
            0x0ce359b0      0b43           jsr @r3
            0x0ce359b2      422f           mov.l r4,@r15
            0x0ce359b4      0e60           exts.b r0,r0
            0x0ce359b6      1140           cmp/pz r0
            0x0ce359b8      0489           bt 0x0ce359c4
            0x0ce359ba      f264           mov.l @r15,r4
            0x0ce359bc      047f           add 0x04,r15
            0x0ce359be      0bd3           mov.l @(0x2C,PC),r3
            0x0ce359c0      2b43           jmp @r3
            0x0ce359c2      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce359aa (+0xe)
            0x0ce359c4      047f           add 0x04,r15
            0x0ce359c6      264f           lds.l @r15+,pr
            0x0ce359c8      0b00           rts 
            0x0ce359ca      0900           nop 
            0x0ce359cc      a101           .word 0x01A1
            0x0ce359ce      a402           mov.b r10,@(r0,r2)
            0x0ce359d0      4101           .word 0x0141
            0x0ce359d2      0000           .word 0x0000
            0x0ce359d4      6251           mov.l @(0x8,r6),r1
            0x0ce359d6      038c           .word 0x8C03
            0x0ce359d8      8c4e           shad r8,r14
            0x0ce359da      038c           .word 0x8C03
            0x0ce359dc      5555           mov.l @(0x14,r5),r5
            0x0ce359de      d5c2           mov.l r0,@(0x354,gbr)
/ (fcn) fcn.0ce359e0 6
|   fcn.0ce359e0 ();
|           ; CODE XREF from fcn.0ce34f76 (+0x36)
|           ; CALL XREF from fcn.0ce35ad4 (+0x6e)
|           0x0ce359e0      b66d           mov.l @r11+,r13
|           0x0ce359e2      2b43           jmp @r3
\           0x0ce359e4      3408           mov.b r3,@(r0,r8)
            0x0ce359e6      058c           .word 0x8C05
            0x0ce359e8      ee4d           ldc r13,r6_bank
            0x0ce359ea      038c           .word 0x8C03
            0x0ce359ec      4816           mov.l r4,@(0x20,r6)
            0x0ce359ee      058c           .word 0x8C05
            0x0ce359f0      .dword 0x0ce370d8 ; aav.0x0ce370d8
            0x0ce359f4      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce359f8      5a11           mov.l r5,@(0x28,r1)
            0x0ce359fa      058c           .word 0x8C05
            0x0ce359fc      e46d           mov.b @r14+,r13
            0x0ce359fe      058c           .word 0x8C05
            0x0ce35a00      b096           mov.w @(0x160,PC),r6
            0x0ce35a02      288c           .word 0x8C28
            0x0ce35a04      080d           .word 0x0D08
            0x0ce35a06      068c           .word 0x8C06
            ;-- aav.0x0ce35a08:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e38)
            0x0ce35a08      4363           mov r4,r3
            0x0ce35a0a      47d1           mov.l @(0x11C,PC),r1
            0x0ce35a0c      462f           mov.l r4,@-r15
            0x0ce35a0e      3684           mov.b @(0x6,r3),r0
            0x0ce35a10      0c60           extu.b r0,r0
            0x0ce35a12      0840           shll2 r0
            0x0ce35a14      1e03           mov.l @(r0,r1),r3
            0x0ce35a16      2b43           jmp @r3
            0x0ce35a18      047f           add 0x04,r15
            ;-- aav.0x0ce35a1a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370e8)
            0x0ce35a1a      7d90           mov.w @(0xFA,PC),r0
            0x0ce35a1c      e62f           mov.l r14,@-r15
            0x0ce35a1e      436e           mov r4,r14
            0x0ce35a20      224f           sts.l pr,@-r15
            0x0ce35a22      ec00           mov.b @(r0,r14),r0
            0x0ce35a24      0c60           extu.b r0,r0
            0x0ce35a26      0688           cmp/eq 0x06,r0
            0x0ce35a28      058b           bf 0x0ce35a36
            0x0ce35a2a      7790           mov.w @(0xEE,PC),r0
            0x0ce35a2c      10e3           mov 0x10,r3
            0x0ce35a2e      7492           mov.w @(0xE8,PC),r2
            0x0ce35a30      240e           mov.b r2,@(r0,r14)
            0x0ce35a32      0170           add 0x01,r0
            0x0ce35a34      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce35a1a (+0xe)
            0x0ce35a36      e684           mov.b @(0x6,r14),r0
            0x0ce35a38      3cd3           mov.l @(0xF0,PC),r3
            0x0ce35a3a      0170           add 0x01,r0
            0x0ce35a3c      e680           mov.b r0,@(0x6,r14)
            0x0ce35a3e      0b43           jsr @r3
            0x0ce35a40      e364           mov r14,r4
            0x0ce35a42      6c90           mov.w @(0xD8,PC),r0
            0x0ce35a44      28e2           mov 0x28,r2
            0x0ce35a46      00e4           mov 0x00,r4
            0x0ce35a48      39d3           mov.l @(0xE4,PC),r3
            0x0ce35a4a      240e           mov.b r2,@(r0,r14)
            0x0ce35a4c      0b70           add 0x0B,r0
            0x0ce35a4e      450e           mov.w r4,@(r0,r14)
            0x0ce35a50      f270           add 0xF2,r0
            0x0ce35a52      440e           mov.b r4,@(r0,r14)
            0x0ce35a54      2670           add 0x26,r0
            0x0ce35a56      460e           mov.l r4,@(r0,r14)
            0x0ce35a58      e364           mov r14,r4
            0x0ce35a5a      e284           mov.b @(0x2,r14),r0
            0x0ce35a5c      0be6           mov 0x0B,r6
            0x0ce35a5e      3262           mov.l @r3,r2
            0x0ce35a60      15e5           mov 0x15,r5
            0x0ce35a62      0c60           extu.b r0,r0
            0x0ce35a64      0040           shll r0
            0x0ce35a66      7c72           add 0x7C,r2
            0x0ce35a68      2d01           mov.w @(r0,r2),r1
            0x0ce35a6a      0171           add 0x01,r1
            0x0ce35a6c      1502           mov.w r1,@(r0,r2)
            0x0ce35a6e      264f           lds.l @r15+,pr
            0x0ce35a70      30d2           mov.l @(0xC0,PC),r2
            0x0ce35a72      2b42           jmp @r2
            0x0ce35a74      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35a76:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370ec)
            0x0ce35a76      e62f           mov.l r14,@-r15
            0x0ce35a78      224f           sts.l pr,@-r15
            0x0ce35a7a      f47f           add 0xF4,r15
            0x0ce35a7c      5090           mov.w @(0xA0,PC),r0
            0x0ce35a7e      436e           mov r4,r14
            0x0ce35a80      02e3           mov 0x02,r3
            0x0ce35a82      340e           mov.b r3,@(r0,r14)
            0x0ce35a84      05e2           mov 0x05,r2
            0x0ce35a86      4c90           mov.w @(0x98,PC),r0
            0x0ce35a88      240e           mov.b r2,@(r0,r14)
            0x0ce35a8a      4590           mov.w @(0x8A,PC),r0
            0x0ce35a8c      ec00           mov.b @(r0,r14),r0
            0x0ce35a8e      0c60           extu.b r0,r0
            0x0ce35a90      0688           cmp/eq 0x06,r0
            0x0ce35a92      018b           bf 0x0ce35a98
            0x0ce35a94      01a0           bra 0x0ce35a9a
            0x0ce35a96      02e3           mov 0x02,r3
            ; CODE XREF from aav.0x0ce35a76 (+0x1c)
            0x0ce35a98      00e3           mov 0x00,r3
            ; CODE XREF from aav.0x0ce35a76 (+0x1e)
            0x0ce35a9a      4390           mov.w @(0x86,PC),r0
            0x0ce35a9c      340e           mov.b r3,@(r0,r14)
            0x0ce35a9e      26d3           mov.l @(0x98,PC),r3
            0x0ce35aa0      0b43           jsr @r3
            0x0ce35aa2      e364           mov r14,r4
            0x0ce35aa4      0e60           exts.b r0,r0
            0x0ce35aa6      1140           cmp/pz r0
            0x0ce35aa8      3289           bt 0x0ce35b10               ; fcn.0ce35ad4+0x3c
            0x0ce35aaa      3790           mov.w @(0x6E,PC),r0
            0x0ce35aac      00e4           mov 0x00,r4
            0x0ce35aae      28e3           mov 0x28,r3
            0x0ce35ab0      440e           mov.b r4,@(r0,r14)
            0x0ce35ab2      0170           add 0x01,r0
            0x0ce35ab4      440e           mov.b r4,@(r0,r14)
            0x0ce35ab6      e684           mov.b @(0x6,r14),r0
            0x0ce35ab8      0170           add 0x01,r0
            0x0ce35aba      e680           mov.b r0,@(0x6,r14)
            0x0ce35abc      2f90           mov.w @(0x5E,PC),r0
            0x0ce35abe      340e           mov.b r3,@(r0,r14)
            0x0ce35ac0      0b70           add 0x0B,r0
            0x0ce35ac2      450e           mov.w r4,@(r0,r14)
            0x0ce35ac4      f270           add 0xF2,r0
            0x0ce35ac6      440e           mov.b r4,@(r0,r14)
            0x0ce35ac8      2670           add 0x26,r0
            0x0ce35aca      19d3           mov.l @(0x64,PC),r3
            0x0ce35acc      460e           mov.l r4,@(r0,r14)
            0x0ce35ace      e284           mov.b @(0x2,r14),r0
            ; CODE XREF from aav.0x0ce364e8 (+0x90)
            0x0ce35ad0      3262           mov.l @r3,r2
            0x0ce35ad2      0c60           extu.b r0,r0
/ (fcn) fcn.0ce35ad4 68
|   fcn.0ce35ad4 ();
|           ; CALL XREF from aav.0x0ce35c8e (+0x30)
|           0x0ce35ad4      0040           shll r0
|           0x0ce35ad6      7c72           add 0x7C,r2
|           0x0ce35ad8      2d01           mov.w @(r0,r2),r1
|           0x0ce35ada      0171           add 0x01,r1
|           0x0ce35adc      1502           mov.w r1,@(r0,r2)
|           0x0ce35ade      17c7           mova @(0x5C,PC),r0
|           0x0ce35ae0      08f3           fmov @r0,fr3
|           0x0ce35ae2      60e0           mov 0x60,r0
|           0x0ce35ae4      37fe           fmov fr3,@(r0,r14)
|           0x0ce35ae6      16c7           mova @(0x58,PC),r0
|           0x0ce35ae8      08f3           fmov @r0,fr3
|           0x0ce35aea      12d2           mov.l @(0x48,PC),r2
|           0x0ce35aec      6ce0           mov 0x6C,r0
|           0x0ce35aee      15e5           mov 0x15,r5
|           0x0ce35af0      37fe           fmov fr3,@(r0,r14)
|           0x0ce35af2      0ce6           mov 0x0C,r6
|           0x0ce35af4      0b42           jsr @r2
|           0x0ce35af6      e364           mov r14,r4
|           0x0ce35af8      12c7           mova @(0x48,PC),r0
|           0x0ce35afa      14d3           mov.l @(0x50,PC),r3
|           0x0ce35afc      08f3           fmov @r0,fr3
|           0x0ce35afe      12c7           mova @(0x48,PC),r0
|           0x0ce35b00      f365           mov r15,r5
|           0x0ce35b02      01e6           mov 0x01,r6
|           0x0ce35b04      3aff           fmov fr3,@r15
|           0x0ce35b06      08f3           fmov @r0,fr3
|           0x0ce35b08      04e0           mov 0x04,r0
|           0x0ce35b0a      37ff           fmov fr3,@(r0,r15)
|           0x0ce35b0c      0b43           jsr @r3
|           0x0ce35b0e      e364           mov r14,r4
|           ; CODE XREF from aav.0x0ce35a76 (+0x32)
|           0x0ce35b10      0c7f           add 0x0C,r15
|           0x0ce35b12      264f           lds.l @r15+,pr
|           0x0ce35b14      0b00           rts 
\           0x0ce35b16      f66e           mov.l @r15+,r14
            0x0ce35b18      5502           mov.w r5,@(r0,r2)
            0x0ce35b1a      ff00           mac.l @r15+,@r0+
            0x0ce35b1c      f003           .word 0x03F0
            0x0ce35b1e      a101           .word 0x01A1
            0x0ce35b20      f803           .word 0x03F8
            0x0ce35b22      2803           .word 0x0328
            0x0ce35b24      f103           .word 0x03F1
            0x0ce35b26      0000           .word 0x0000
            0x0ce35b28      .dword 0x0ce370e8 ; aav.0x0ce370e8
            0x0ce35b2c      .dword 0x0ce31b5c ; aav.0x0ce31b5c
            0x0ce35b30      b096           mov.w @(0x160,PC),r6
            0x0ce35b32      288c           .word 0x8C28
            0x0ce35b34      8c4e           shad r8,r14
            0x0ce35b36      038c           .word 0x8C03
            0x0ce35b38      ee4d           ldc r13,r6_bank
            0x0ce35b3a      038c           .word 0x8C03
            0x0ce35b3c      9224           mov.l r9,@r4
            0x0ce35b3e      0942           shlr2 r2
            0x0ce35b40      dbb6           bsr fcn.0ce368fa
            0x0ce35b42      4dbf           bsr fcn.0ce359e0
            0x0ce35b44      0000           .word 0x0000
            0x0ce35b46      20c2           mov.l r0,@(0x80,gbr)
            0x0ce35b48      2449           rotcl r9
            0x0ce35b4a      1a43           lds r3,macl
            0x0ce35b4c      3408           mov.b r3,@(r0,r8)
            0x0ce35b4e      058c           .word 0x8C05
            ;-- aav.0x0ce35b50:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370f0)
            0x0ce35b50      e62f           mov.l r14,@-r15
            0x0ce35b52      436e           mov r4,r14
            0x0ce35b54      a890           mov.w @(0x150,PC),r0
            0x0ce35b56      02e4           mov 0x02,r4
            0x0ce35b58      05e3           mov 0x05,r3
            0x0ce35b5a      d62f           mov.l r13,@-r15
            0x0ce35b5c      224f           sts.l pr,@-r15
            0x0ce35b5e      440e           mov.b r4,@(r0,r14)
            0x0ce35b60      a390           mov.w @(0x146,PC),r0
            0x0ce35b62      340e           mov.b r3,@(r0,r14)
            0x0ce35b64      a290           mov.w @(0x144,PC),r0
            0x0ce35b66      ec02           mov.b @(r0,r14),r2
            0x0ce35b68      2822           tst r2,r2
            0x0ce35b6a      1e8f           bf.s 0x0ce35baa
            0x0ce35b6c      00ed           mov 0x00,r13
            0x0ce35b6e      9e90           mov.w @(0x13C,PC),r0
            0x0ce35b70      5ce1           mov 0x5C,r1
            0x0ce35b72      ec31           add r14,r1
            0x0ce35b74      440e           mov.b r4,@(r0,r14)
            0x0ce35b76      34e0           mov 0x34,r0
            0x0ce35b78      e6f2           fmov @(r0,r14),fr2
            0x0ce35b7a      18f3           fmov @r1,fr3
            0x0ce35b7c      68e1           mov 0x68,r1
            0x0ce35b7e      ec31           add r14,r1
            0x0ce35b80      30f2           fadd fr3,fr2
            0x0ce35b82      27fe           fmov fr2,@(r0,r14)
            0x0ce35b84      5ce0           mov 0x5C,r0
            0x0ce35b86      e6f2           fmov @(r0,r14),fr2
            0x0ce35b88      18f3           fmov @r1,fr3
            0x0ce35b8a      60e1           mov 0x60,r1
            0x0ce35b8c      ec31           add r14,r1
            0x0ce35b8e      30f2           fadd fr3,fr2
            0x0ce35b90      27fe           fmov fr2,@(r0,r14)
            0x0ce35b92      38e0           mov 0x38,r0
            0x0ce35b94      e6f2           fmov @(r0,r14),fr2
            0x0ce35b96      18f3           fmov @r1,fr3
            0x0ce35b98      6ce1           mov 0x6C,r1
            0x0ce35b9a      ec31           add r14,r1
            0x0ce35b9c      30f2           fadd fr3,fr2
            0x0ce35b9e      27fe           fmov fr2,@(r0,r14)
            0x0ce35ba0      60e0           mov 0x60,r0
            0x0ce35ba2      e6f2           fmov @(r0,r14),fr2
            0x0ce35ba4      18f3           fmov @r1,fr3
            0x0ce35ba6      30f2           fadd fr3,fr2
            0x0ce35ba8      27fe           fmov fr2,@(r0,r14)
            ; CODE XREF from aav.0x0ce35b50 (+0x1a)
            0x0ce35baa      60e0           mov 0x60,r0
            0x0ce35bac      8df3           fldi0 fr3
            0x0ce35bae      e6f2           fmov @(r0,r14),fr2
            0x0ce35bb0      25f3           fcmp/gt fr2,fr3
            0x0ce35bb2      178b           bf 0x0ce35be4
            0x0ce35bb4      7c90           mov.w @(0xF8,PC),r0
            0x0ce35bb6      15e5           mov 0x15,r5
            0x0ce35bb8      41d3           mov.l @(0x104,PC),r3
            0x0ce35bba      0de6           mov 0x0D,r6
            0x0ce35bbc      d40e           mov.b r13,@(r0,r14)
            0x0ce35bbe      ff70           add 0xFF,r0
            0x0ce35bc0      d40e           mov.b r13,@(r0,r14)
            0x0ce35bc2      7690           mov.w @(0xEC,PC),r0
            0x0ce35bc4      d40e           mov.b r13,@(r0,r14)
            0x0ce35bc6      0170           add 0x01,r0
            0x0ce35bc8      d40e           mov.b r13,@(r0,r14)
            0x0ce35bca      e684           mov.b @(0x6,r14),r0
            0x0ce35bcc      0170           add 0x01,r0
            0x0ce35bce      e680           mov.b r0,@(0x6,r14)
            0x0ce35bd0      39c7           mova @(0xE4,PC),r0
            0x0ce35bd2      08f2           fmov @r0,fr2
            0x0ce35bd4      60e0           mov 0x60,r0
            0x0ce35bd6      27fe           fmov fr2,@(r0,r14)
            0x0ce35bd8      38c7           mova @(0xE0,PC),r0
            0x0ce35bda      08f2           fmov @r0,fr2
            0x0ce35bdc      6ce0           mov 0x6C,r0
            0x0ce35bde      27fe           fmov fr2,@(r0,r14)
            0x0ce35be0      0b43           jsr @r3
            0x0ce35be2      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce35b50 (+0x62)
            0x0ce35be4      6690           mov.w @(0xCC,PC),r0
            0x0ce35be6      ec02           mov.b @(r0,r14),r2
            0x0ce35be8      2822           tst r2,r2
            0x0ce35bea      148d           bt.s 0x0ce35c16
            0x0ce35bec      e364           mov r14,r4
            0x0ce35bee      ec03           mov.b @(r0,r14),r3
            0x0ce35bf0      6070           add 0x60,r0
            0x0ce35bf2      340e           mov.b r3,@(r0,r14)
            0x0ce35bf4      0b70           add 0x0B,r0
            0x0ce35bf6      d50e           mov.w r13,@(r0,r14)
            0x0ce35bf8      f270           add 0xF2,r0
            0x0ce35bfa      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce36678 (+0x2c)
            0x0ce35bfc      2670           add 0x26,r0
            0x0ce35bfe      31d3           mov.l @(0xC4,PC),r3
            0x0ce35c00      d60e           mov.l r13,@(r0,r14)
            0x0ce35c02      e284           mov.b @(0x2,r14),r0
            0x0ce35c04      3262           mov.l @r3,r2
            0x0ce35c06      0c60           extu.b r0,r0
            0x0ce35c08      0040           shll r0
            0x0ce35c0a      7c72           add 0x7C,r2
            ; CODE XREF from aav.0x0ce35156 (+0x82)
            0x0ce35c0c      2d01           mov.w @(r0,r2),r1
            0x0ce35c0e      0171           add 0x01,r1
            0x0ce35c10      1502           mov.w r1,@(r0,r2)
            0x0ce35c12      4f90           mov.w @(0x9E,PC),r0
            0x0ce35c14      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce35b50 (+0x9a)
            0x0ce35c16      264f           lds.l @r15+,pr
            0x0ce35c18      2bd3           mov.l @(0xAC,PC),r3
            0x0ce35c1a      f66d           mov.l @r15+,r13
            0x0ce35c1c      2b43           jmp @r3
            0x0ce35c1e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35c20:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370f4)
            0x0ce35c20      e62f           mov.l r14,@-r15
            0x0ce35c22      5ce1           mov 0x5C,r1
            0x0ce35c24      436e           mov r4,r14
            0x0ce35c26      ec31           add r14,r1
            0x0ce35c28      34e0           mov 0x34,r0
            0x0ce35c2a      28d3           mov.l @(0xA0,PC),r3
            0x0ce35c2c      224f           sts.l pr,@-r15
            0x0ce35c2e      e6f2           fmov @(r0,r14),fr2
            0x0ce35c30      18f3           fmov @r1,fr3
            0x0ce35c32      68e1           mov 0x68,r1
            0x0ce35c34      ec31           add r14,r1
            0x0ce35c36      30f2           fadd fr3,fr2
            0x0ce35c38      27fe           fmov fr2,@(r0,r14)
            0x0ce35c3a      5ce0           mov 0x5C,r0
            0x0ce35c3c      18f3           fmov @r1,fr3
            0x0ce35c3e      60e1           mov 0x60,r1
            0x0ce35c40      e6f2           fmov @(r0,r14),fr2
            0x0ce35c42      ec31           add r14,r1
            0x0ce35c44      30f2           fadd fr3,fr2
            0x0ce35c46      27fe           fmov fr2,@(r0,r14)
            0x0ce35c48      38e0           mov 0x38,r0
            0x0ce35c4a      e6f2           fmov @(r0,r14),fr2
            0x0ce35c4c      18f3           fmov @r1,fr3
            0x0ce35c4e      6ce1           mov 0x6C,r1
            0x0ce35c50      ec31           add r14,r1
            0x0ce35c52      30f2           fadd fr3,fr2
            0x0ce35c54      27fe           fmov fr2,@(r0,r14)
            0x0ce35c56      60e0           mov 0x60,r0
            0x0ce35c58      e6f2           fmov @(r0,r14),fr2
            0x0ce35c5a      18f3           fmov @r1,fr3
            0x0ce35c5c      30f2           fadd fr3,fr2
            0x0ce35c5e      27fe           fmov fr2,@(r0,r14)
            0x0ce35c60      0b43           jsr @r3
            0x0ce35c62      e364           mov r14,r4
            0x0ce35c64      0c60           extu.b r0,r0
            0x0ce35c66      0820           tst r0,r0
            0x0ce35c68      0c89           bt 0x0ce35c84
            0x0ce35c6a      e684           mov.b @(0x6,r14),r0
            0x0ce35c6c      18d3           mov.l @(0x60,PC),r3
            0x0ce35c6e      0170           add 0x01,r0
            0x0ce35c70      e680           mov.b r0,@(0x6,r14)
            0x0ce35c72      0b43           jsr @r3
            0x0ce35c74      e364           mov r14,r4
            0x0ce35c76      264f           lds.l @r15+,pr
            0x0ce35c78      11d2           mov.l @(0x44,PC),r2
            0x0ce35c7a      e364           mov r14,r4
            0x0ce35c7c      03e6           mov 0x03,r6
            0x0ce35c7e      01e5           mov 0x01,r5
            0x0ce35c80      2b42           jmp @r2
            0x0ce35c82      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35c20 (+0x48)
            0x0ce35c84      264f           lds.l @r15+,pr
            0x0ce35c86      10d3           mov.l @(0x40,PC),r3
            0x0ce35c88      e364           mov r14,r4
            0x0ce35c8a      2b43           jmp @r3
            0x0ce35c8c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35c8e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370f8)
            0x0ce35c8e      224f           sts.l pr,@-r15
            0x0ce35c90      fc7f           add 0xFC,r15
            0x0ce35c92      0dd3           mov.l @(0x34,PC),r3
            0x0ce35c94      0b43           jsr @r3
            0x0ce35c96      422f           mov.l r4,@r15
            0x0ce35c98      0e60           exts.b r0,r0
            0x0ce35c9a      1140           cmp/pz r0
            0x0ce35c9c      1c89           bt 0x0ce35cd8
            0x0ce35c9e      f264           mov.l @r15,r4
            0x0ce35ca0      047f           add 0x04,r15
            0x0ce35ca2      0cd3           mov.l @(0x30,PC),r3
            0x0ce35ca4      2b43           jmp @r3
            0x0ce35ca6      264f           lds.l @r15+,pr
            0x0ce35ca8      f803           .word 0x03F8
            0x0ce35caa      2803           .word 0x0328
            0x0ce35cac      4b01           .word 0x014B
            0x0ce35cae      f901           .word 0x01F9
            0x0ce35cb0      f903           .word 0x03F9
            0x0ce35cb2      2703           mul.l r2,r3
            0x0ce35cb4      4101           .word 0x0141
            0x0ce35cb6      0000           .word 0x0000
            0x0ce35cb8      9224           mov.l r9,@r4
            0x0ce35cba      09c1           mov.w r0,@(0x12,gbr)
            0x0ce35cbc      9224           mov.l r9,@r4
            0x0ce35cbe      09bf           bsr fcn.0ce35ad4
            0x0ce35cc0      8c4e           shad r8,r14
            0x0ce35cc2      038c           .word 0x8C03
            0x0ce35cc4      b096           mov.w @(0x160,PC),r6
            0x0ce35cc6      288c           .word 0x8C28
            0x0ce35cc8      ee4d           ldc r13,r6_bank
            0x0ce35cca      038c           .word 0x8C03
            0x0ce35ccc      e22c           mov.l r14,@r12
            0x0ce35cce      058c           .word 0x8C05
            0x0ce35cd0      b411           mov.l r11,@(0x10,r1)
            0x0ce35cd2      058c           .word 0x8C05
            0x0ce35cd4      4816           mov.l r4,@(0x20,r6)
            0x0ce35cd6      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce35c8e (+0xe)
            0x0ce35cd8      047f           add 0x04,r15
            0x0ce35cda      264f           lds.l @r15+,pr
            0x0ce35cdc      0b00           rts 
            0x0ce35cde      0900           nop 
            ;-- aav.0x0ce35ce0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36e3c)
            0x0ce35ce0      4363           mov r4,r3
            0x0ce35ce2      40d1           mov.l @(0x100,PC),r1
            0x0ce35ce4      462f           mov.l r4,@-r15
            0x0ce35ce6      3684           mov.b @(0x6,r3),r0
            0x0ce35ce8      0c60           extu.b r0,r0
            0x0ce35cea      0840           shll2 r0
            0x0ce35cec      1e03           mov.l @(r0,r1),r3
            0x0ce35cee      2b43           jmp @r3
            0x0ce35cf0      047f           add 0x04,r15
            ;-- aav.0x0ce35cf2:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce370fc)
            0x0ce35cf2      e62f           mov.l r14,@-r15
            0x0ce35cf4      436e           mov r4,r14
            0x0ce35cf6      8df4           fldi0 fr4
            0x0ce35cf8      d62f           mov.l r13,@-r15
            0x0ce35cfa      00ed           mov 0x00,r13
            0x0ce35cfc      224f           sts.l pr,@-r15
            0x0ce35cfe      e684           mov.b @(0x6,r14),r0
            0x0ce35d00      d365           mov r13,r5
            0x0ce35d02      39d3           mov.l @(0xE4,PC),r3
            0x0ce35d04      0170           add 0x01,r0
            0x0ce35d06      e680           mov.b r0,@(0x6,r14)
            0x0ce35d08      5ce0           mov 0x5C,r0
            0x0ce35d0a      47fe           fmov fr4,@(r0,r14)
            0x0ce35d0c      60e0           mov 0x60,r0
            0x0ce35d0e      47fe           fmov fr4,@(r0,r14)
            0x0ce35d10      68e0           mov 0x68,r0
            0x0ce35d12      47fe           fmov fr4,@(r0,r14)
            0x0ce35d14      6ce0           mov 0x6C,r0
            0x0ce35d16      47fe           fmov fr4,@(r0,r14)
            0x0ce35d18      5f90           mov.w @(0xBE,PC),r0
            0x0ce35d1a      d40e           mov.b r13,@(r0,r14)
            0x0ce35d1c      5e90           mov.w @(0xBC,PC),r0
            0x0ce35d1e      e6f3           fmov @(r0,r14),fr3
            0x0ce35d20      38e0           mov 0x38,r0
            0x0ce35d22      37fe           fmov fr3,@(r0,r14)
            0x0ce35d24      0b43           jsr @r3
            0x0ce35d26      e364           mov r14,r4
            0x0ce35d28      30d2           mov.l @(0xC0,PC),r2
            0x0ce35d2a      0b42           jsr @r2
            0x0ce35d2c      e364           mov r14,r4
            0x0ce35d2e      30d3           mov.l @(0xC0,PC),r3
            0x0ce35d30      0b43           jsr @r3
            0x0ce35d32      e364           mov r14,r4
            0x0ce35d34      5390           mov.w @(0xA6,PC),r0
            0x0ce35d36      3ae2           mov 0x3A,r2
            0x0ce35d38      2ed3           mov.l @(0xB8,PC),r3
            0x0ce35d3a      10e6           mov 0x10,r6
            0x0ce35d3c      240e           mov.b r2,@(r0,r14)
            0x0ce35d3e      0b70           add 0x0B,r0
            0x0ce35d40      d50e           mov.w r13,@(r0,r14)
            0x0ce35d42      f270           add 0xF2,r0
            0x0ce35d44      d40e           mov.b r13,@(r0,r14)
            0x0ce35d46      2670           add 0x26,r0
            0x0ce35d48      d60e           mov.l r13,@(r0,r14)
            0x0ce35d4a      15e5           mov 0x15,r5
            0x0ce35d4c      e284           mov.b @(0x2,r14),r0
            0x0ce35d4e      e364           mov r14,r4
            0x0ce35d50      3262           mov.l @r3,r2
            0x0ce35d52      0c60           extu.b r0,r0
            0x0ce35d54      0040           shll r0
            0x0ce35d56      7c72           add 0x7C,r2
            0x0ce35d58      2d01           mov.w @(r0,r2),r1
            0x0ce35d5a      0171           add 0x01,r1
            0x0ce35d5c      1502           mov.w r1,@(r0,r2)
            0x0ce35d5e      264f           lds.l @r15+,pr
            0x0ce35d60      25d2           mov.l @(0x94,PC),r2
            0x0ce35d62      f66d           mov.l @r15+,r13
            0x0ce35d64      2b42           jmp @r2
            0x0ce35d66      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35d68:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37100)
            0x0ce35d68      e62f           mov.l r14,@-r15
            0x0ce35d6a      224f           sts.l pr,@-r15
            0x0ce35d6c      f47f           add 0xF4,r15
            0x0ce35d6e      23d3           mov.l @(0x8C,PC),r3
            0x0ce35d70      0b43           jsr @r3
            0x0ce35d72      436e           mov r4,r14
            0x0ce35d74      0e60           exts.b r0,r0
            0x0ce35d76      1140           cmp/pz r0
            0x0ce35d78      0689           bt 0x0ce35d88
            0x0ce35d7a      21d3           mov.l @(0x84,PC),r3
            0x0ce35d7c      0b43           jsr @r3
            0x0ce35d7e      e364           mov r14,r4
            0x0ce35d80      0c7f           add 0x0C,r15
            0x0ce35d82      264f           lds.l @r15+,pr
            0x0ce35d84      0b00           rts 
            0x0ce35d86      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35d68 (+0x10)
            0x0ce35d88      2a90           mov.w @(0x54,PC),r0
            0x0ce35d8a      ec02           mov.b @(r0,r14),r2
            0x0ce35d8c      2822           tst r2,r2
            0x0ce35d8e      0c89           bt 0x0ce35daa
            0x0ce35d90      00e3           mov 0x00,r3
            0x0ce35d92      f365           mov r15,r5
            0x0ce35d94      340e           mov.b r3,@(r0,r14)
            0x0ce35d96      1bc7           mova @(0x6C,PC),r0
            0x0ce35d98      08f3           fmov @r0,fr3
            0x0ce35d9a      1bc7           mova @(0x6C,PC),r0
            0x0ce35d9c      1bd3           mov.l @(0x6C,PC),r3
            0x0ce35d9e      3aff           fmov fr3,@r15
            0x0ce35da0      08f3           fmov @r0,fr3
            0x0ce35da2      04e0           mov 0x04,r0
            0x0ce35da4      37ff           fmov fr3,@(r0,r15)
            0x0ce35da6      0b43           jsr @r3
            0x0ce35da8      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce35d68 (+0x26)
            0x0ce35daa      1a90           mov.w @(0x34,PC),r0
            0x0ce35dac      ec02           mov.b @(r0,r14),r2
            0x0ce35dae      2822           tst r2,r2
            0x0ce35db0      0689           bt 0x0ce35dc0
            0x0ce35db2      17d3           mov.l @(0x5C,PC),r3
            0x0ce35db4      16e5           mov 0x16,r5
            0x0ce35db6      0b43           jsr @r3
            0x0ce35db8      e364           mov r14,r4
            0x0ce35dba      1290           mov.w @(0x24,PC),r0
            0x0ce35dbc      00e2           mov 0x00,r2
            0x0ce35dbe      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce35d68 (+0x48)
            0x0ce35dc0      0c7f           add 0x0C,r15
            0x0ce35dc2      264f           lds.l @r15+,pr
            0x0ce35dc4      0b00           rts 
            0x0ce35dc6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35dc8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d50)
            0x0ce35dc8      4363           mov r4,r3
            0x0ce35dca      12d1           mov.l @(0x48,PC),r1
            0x0ce35dcc      462f           mov.l r4,@-r15
            0x0ce35dce      3684           mov.b @(0x6,r3),r0
            0x0ce35dd0      0c60           extu.b r0,r0
            0x0ce35dd2      0840           shll2 r0
            0x0ce35dd4      1e03           mov.l @(r0,r1),r3
            0x0ce35dd6      2b43           jmp @r3
            0x0ce35dd8      047f           add 0x04,r15
            0x0ce35dda      f901           .word 0x01F9
            0x0ce35ddc      1c04           mov.b @(r0,r1),r4
            0x0ce35dde      a101           .word 0x01A1
            0x0ce35de0      4001           .word 0x0140
            0x0ce35de2      4b01           .word 0x014B
            0x0ce35de4      .dword 0x0ce370fc ; aav.0x0ce370fc
            0x0ce35de8      6251           mov.l @(0x8,r6),r1
            0x0ce35dea      038c           .word 0x8C03
            0x0ce35dec      8a21           xor r8,r1
            0x0ce35dee      058c           .word 0x8C05
            0x0ce35df0      5a11           mov.l r5,@(0x28,r1)
            0x0ce35df2      058c           .word 0x8C05
            0x0ce35df4      b096           mov.w @(0x160,PC),r6
            0x0ce35df6      288c           .word 0x8C28
            0x0ce35df8      8c4e           shad r8,r14
            0x0ce35dfa      038c           .word 0x8C03
            0x0ce35dfc      ee4d           ldc r13,r6_bank
            0x0ce35dfe      038c           .word 0x8C03
            0x0ce35e00      4816           mov.l r4,@(0x20,r6)
            0x0ce35e02      058c           .word 0x8C05
            0x0ce35e04      5555           mov.l @(0x14,r5),r5
            0x0ce35e06      8542           .word 0x4285
            0x0ce35e08      dbb6           bsr fcn.0ce36bc2
            0x0ce35e0a      4d43           shld r4,r3
            0x0ce35e0c      a40e           mov.b r10,@(r0,r14)
            0x0ce35e0e      058c           .word 0x8C05
/ (fcn) fcn.0ce35e10 140
|   fcn.0ce35e10 (int arg_6h);
|           ; arg int arg_6h @ r14+0x6
|           ; CALL XREF from aav.0x0ce35f32 (+0x40)
|           0x0ce35e10      3a22           xor r3,r2
|           0x0ce35e12      048c           .word 0x8C04
|           0x0ce35e14      .dword 0x0ce37104 ; aav.0x0ce37104
|           ;-- aav.0x0ce35e18:
|           ; UNKNOWN XREF from fcn.0ce36d2a (0xce37104)
|           0x0ce35e18      e62f           mov.l r14,@-r15
|           0x0ce35e1a      436e           mov r4,r14
|           0x0ce35e1c      224f           sts.l pr,@-r15
|           0x0ce35e1e      50d3           mov.l @(0x140,PC),r3
|           0x0ce35e20      0b43           jsr @r3
|           0x0ce35e22      00e5           mov 0x00,r5
|           0x0ce35e24      e684           mov.b @(0x6,r14),r0
|           0x0ce35e26      02e3           mov 0x02,r3
|           0x0ce35e28      0170           add 0x01,r0
|           0x0ce35e2a      e680           mov.b r0,@(0x6,r14)
|           0x0ce35e2c      9390           mov.w @(0x126,PC),r0
|           0x0ce35e2e      340e           mov.b r3,@(r0,r14)
|           0x0ce35e30      4cc7           mova @(0x130,PC),r0
|           0x0ce35e32      08f3           fmov @r0,fr3
|           0x0ce35e34      5ce0           mov 0x5C,r0
|           0x0ce35e36      37fe           fmov fr3,@(r0,r14)
|           0x0ce35e38      4bc7           mova @(0x12C,PC),r0
|           0x0ce35e3a      08f3           fmov @r0,fr3
|           0x0ce35e3c      68e0           mov 0x68,r0
|           0x0ce35e3e      37fe           fmov fr3,@(r0,r14)
|           0x0ce35e40      8a90           mov.w @(0x114,PC),r0
|           0x0ce35e42      ec03           mov.b @(r0,r14),r3
|           0x0ce35e44      3823           tst r3,r3
|           0x0ce35e46      078b           bf 0x0ce35e58
|           0x0ce35e48      5ce0           mov 0x5C,r0
|           0x0ce35e4a      e6f3           fmov @(r0,r14),fr3
|           0x0ce35e4c      4df3           fneg fr3
|           0x0ce35e4e      37fe           fmov fr3,@(r0,r14)
|           0x0ce35e50      68e0           mov 0x68,r0
|           0x0ce35e52      e6f3           fmov @(r0,r14),fr3
|           0x0ce35e54      4df3           fneg fr3
|           0x0ce35e56      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce35e10 (0xce35e46)
|           0x0ce35e58      44c7           mova @(0x110,PC),r0
|           0x0ce35e5a      08f3           fmov @r0,fr3
|           0x0ce35e5c      60e0           mov 0x60,r0
|           0x0ce35e5e      36e3           mov 0x36,r3
|           0x0ce35e60      37fe           fmov fr3,@(r0,r14)
|           0x0ce35e62      43c7           mova @(0x10C,PC),r0
|           0x0ce35e64      08f3           fmov @r0,fr3
|           0x0ce35e66      6ce0           mov 0x6C,r0
|           0x0ce35e68      00e4           mov 0x00,r4
|           0x0ce35e6a      37fe           fmov fr3,@(r0,r14)
|           0x0ce35e6c      06e6           mov 0x06,r6
|           0x0ce35e6e      7490           mov.w @(0xE8,PC),r0
|           0x0ce35e70      15e5           mov 0x15,r5
|           0x0ce35e72      340e           mov.b r3,@(r0,r14)
|           0x0ce35e74      0b70           add 0x0B,r0
|           0x0ce35e76      450e           mov.w r4,@(r0,r14)
|           0x0ce35e78      f270           add 0xF2,r0
|           0x0ce35e7a      440e           mov.b r4,@(r0,r14)
|           0x0ce35e7c      2670           add 0x26,r0
|           0x0ce35e7e      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce35e80      460e           mov.l r4,@(r0,r14)
|           0x0ce35e82      e364           mov r14,r4
|           0x0ce35e84      e284           mov.b @(0x2,r14),r0
|           0x0ce35e86      3262           mov.l @r3,r2
|           0x0ce35e88      0c60           extu.b r0,r0
|           0x0ce35e8a      0040           shll r0
|           0x0ce35e8c      7c72           add 0x7C,r2
|           0x0ce35e8e      2d01           mov.w @(r0,r2),r1
|           0x0ce35e90      0171           add 0x01,r1
|           0x0ce35e92      1502           mov.w r1,@(r0,r2)
|           0x0ce35e94      264f           lds.l @r15+,pr
|           0x0ce35e96      38d2           mov.l @(0xE0,PC),r2
|           0x0ce35e98      2b42           jmp @r2
\           0x0ce35e9a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35e9c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37108)
            0x0ce35e9c      e62f           mov.l r14,@-r15
            0x0ce35e9e      224f           sts.l pr,@-r15
            0x0ce35ea0      36d3           mov.l @(0xD8,PC),r3
            0x0ce35ea2      0b43           jsr @r3
            0x0ce35ea4      436e           mov r4,r14
            0x0ce35ea6      5ce1           mov 0x5C,r1
            0x0ce35ea8      35d3           mov.l @(0xD4,PC),r3
            0x0ce35eaa      ec31           add r14,r1
            0x0ce35eac      34e0           mov 0x34,r0
            0x0ce35eae      18f3           fmov @r1,fr3
            0x0ce35eb0      e6f2           fmov @(r0,r14),fr2
            0x0ce35eb2      68e1           mov 0x68,r1
            0x0ce35eb4      ec31           add r14,r1
            0x0ce35eb6      30f2           fadd fr3,fr2
            0x0ce35eb8      27fe           fmov fr2,@(r0,r14)
            0x0ce35eba      5ce0           mov 0x5C,r0
            0x0ce35ebc      e6f2           fmov @(r0,r14),fr2
            0x0ce35ebe      18f3           fmov @r1,fr3
            0x0ce35ec0      60e1           mov 0x60,r1
            0x0ce35ec2      ec31           add r14,r1
            0x0ce35ec4      30f2           fadd fr3,fr2
            0x0ce35ec6      27fe           fmov fr2,@(r0,r14)
            0x0ce35ec8      38e0           mov 0x38,r0
            0x0ce35eca      e6f2           fmov @(r0,r14),fr2
            0x0ce35ecc      18f3           fmov @r1,fr3
            0x0ce35ece      6ce1           mov 0x6C,r1
            0x0ce35ed0      ec31           add r14,r1
            0x0ce35ed2      30f2           fadd fr3,fr2
            0x0ce35ed4      27fe           fmov fr2,@(r0,r14)
            0x0ce35ed6      60e0           mov 0x60,r0
            0x0ce35ed8      e6f2           fmov @(r0,r14),fr2
            0x0ce35eda      18f3           fmov @r1,fr3
            0x0ce35edc      30f2           fadd fr3,fr2
            0x0ce35ede      27fe           fmov fr2,@(r0,r14)
            0x0ce35ee0      0b43           jsr @r3
            0x0ce35ee2      e364           mov r14,r4
            0x0ce35ee4      0c60           extu.b r0,r0
            0x0ce35ee6      0820           tst r0,r0
            0x0ce35ee8      0c89           bt 0x0ce35f04
            0x0ce35eea      e684           mov.b @(0x6,r14),r0
            0x0ce35eec      14e5           mov 0x14,r5
            0x0ce35eee      22d3           mov.l @(0x88,PC),r3
            0x0ce35ef0      00e6           mov 0x00,r6
            0x0ce35ef2      0170           add 0x01,r0
            0x0ce35ef4      e680           mov.b r0,@(0x6,r14)
            0x0ce35ef6      0b43           jsr @r3
            0x0ce35ef8      e364           mov r14,r4
            0x0ce35efa      264f           lds.l @r15+,pr
            0x0ce35efc      21d2           mov.l @(0x84,PC),r2
            0x0ce35efe      e364           mov r14,r4
            0x0ce35f00      2b42           jmp @r2
            0x0ce35f02      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35e9c (+0x4c)
            0x0ce35f04      264f           lds.l @r15+,pr
            0x0ce35f06      0b00           rts 
            0x0ce35f08      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35f0a:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3710c)
            0x0ce35f0a      e62f           mov.l r14,@-r15
            0x0ce35f0c      224f           sts.l pr,@-r15
            0x0ce35f0e      1bd3           mov.l @(0x6C,PC),r3
            0x0ce35f10      0b43           jsr @r3
            0x0ce35f12      436e           mov r4,r14
            0x0ce35f14      0e60           exts.b r0,r0
            0x0ce35f16      1140           cmp/pz r0
            0x0ce35f18      0889           bt 0x0ce35f2c
            0x0ce35f1a      11d3           mov.l @(0x44,PC),r3
            0x0ce35f1c      00e5           mov 0x00,r5
            0x0ce35f1e      0b43           jsr @r3
            0x0ce35f20      e364           mov r14,r4
            0x0ce35f22      264f           lds.l @r15+,pr
            0x0ce35f24      18d2           mov.l @(0x60,PC),r2
            0x0ce35f26      e364           mov r14,r4
            0x0ce35f28      2b42           jmp @r2
            0x0ce35f2a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce35f0a (+0xe)
            0x0ce35f2c      264f           lds.l @r15+,pr
            0x0ce35f2e      0b00           rts 
            0x0ce35f30      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce35f32:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d3c)
            0x0ce35f32      e62f           mov.l r14,@-r15
            0x0ce35f34      d62f           mov.l r13,@-r15
            0x0ce35f36      224f           sts.l pr,@-r15
            0x0ce35f38      fc7f           add 0xFC,r15
            0x0ce35f3a      0c90           mov.w @(0x18,PC),r0
            0x0ce35f3c      436e           mov r4,r14
            0x0ce35f3e      0d93           mov.w @(0x1A,PC),r3
            0x0ce35f40      12dd           mov.l @(0x48,PC),r13
            0x0ce35f42      ec33           add r14,r3
            0x0ce35f44      322f           mov.l r3,@r15
            0x0ce35f46      ec00           mov.b @(r0,r14),r0
            0x0ce35f48      0c60           extu.b r0,r0
            0x0ce35f4a      0288           cmp/eq 0x02,r0
            0x0ce35f4c      2089           bt 0x0ce35f90
            0x0ce35f4e      0188           cmp/eq 0x01,r0
            0x0ce35f50      3589           bt 0x0ce35fbe
            0x0ce35f52      4ba0           bra 0x0ce35fec
            0x0ce35f54      0900           nop 
            0x0ce35f56      f901           .word 0x01F9
            0x0ce35f58      d201           stc r5_bank,r1
            0x0ce35f5a      a101           .word 0x01A1
            0x0ce35f5c      a402           mov.b r10,@(r0,r2)
            0x0ce35f5e      0000           .word 0x0000
            0x0ce35f60      6251           mov.l @(0x8,r6),r1
            0x0ce35f62      038c           .word 0x8C03
            0x0ce35f64      aaaa           bra 0x0ce354bc
            0x0ce35f66      6241           sts.l fpscr,@-r1
            0x0ce35f68      5555           mov.l @(0x14,r5),r5
            0x0ce35f6a      553f           dmulu.l r5,r15
            0x0ce35f6c      9224           mov.l r9,@r4
            0x0ce35f6e      8940           .word 0x4089
            0x0ce35f70      dbb6           bsr fcn.0ce36d2a
            0x0ce35f72      4dbf           bsr fcn.0ce35e10
            0x0ce35f74      b096           mov.w @(0x160,PC),r6
            0x0ce35f76      288c           .word 0x8C28
            0x0ce35f78      8c4e           shad r8,r14
            0x0ce35f7a      038c           .word 0x8C03
            0x0ce35f7c      ee4d           ldc r13,r6_bank
            0x0ce35f7e      038c           .word 0x8C03
            0x0ce35f80      e22c           mov.l r14,@r12
            0x0ce35f82      058c           .word 0x8C05
            0x0ce35f84      b411           mov.l r11,@(0x10,r1)
            0x0ce35f86      058c           .word 0x8C05
            0x0ce35f88      5418           mov.l r5,@(0x10,r8)
            0x0ce35f8a      058c           .word 0x8C05
            0x0ce35f8c      9057           mov.l @(0x0,r9),r7
            0x0ce35f8e      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce35f32 (+0x1a)
            0x0ce35f90      5790           mov.w @(0xAE,PC),r0
            0x0ce35f92      5792           mov.w @(0xAE,PC),r2
            0x0ce35f94      ed03           mov.w @(r0,r14),r3
            0x0ce35f96      3d63           extu.w r3,r3
            0x0ce35f98      2823           tst r2,r3
            0x0ce35f9a      4c89           bt 0x0ce36036
            0x0ce35f9c      5390           mov.w @(0xA6,PC),r0
            0x0ce35f9e      ec03           mov.b @(r0,r14),r3
            0x0ce35fa0      3823           tst r3,r3
            0x0ce35fa2      488b           bf 0x0ce36036
            0x0ce35fa4      5090           mov.w @(0xA0,PC),r0
            0x0ce35fa6      ec03           mov.b @(r0,r14),r3
            0x0ce35fa8      3823           tst r3,r3
            0x0ce35faa      4489           bt 0x0ce36036
            0x0ce35fac      0b4d           jsr @r13
            0x0ce35fae      e364           mov r14,r4
            0x0ce35fb0      0820           tst r0,r0
            0x0ce35fb2      048d           bt.s 0x0ce35fbe
            0x0ce35fb4      0364           mov r0,r4
            0x0ce35fb6      4890           mov.w @(0x90,PC),r0
            0x0ce35fb8      08e3           mov 0x08,r3
            0x0ce35fba      36a0           bra 0x0ce3602a
            0x0ce35fbc      340e           mov.b r3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce35f32 (+0x1e, +0x80)
            0x0ce35fbe      4090           mov.w @(0x80,PC),r0
            0x0ce35fc0      4492           mov.w @(0x88,PC),r2
            0x0ce35fc2      ed03           mov.w @(r0,r14),r3
            0x0ce35fc4      3d63           extu.w r3,r3
            0x0ce35fc6      2823           tst r2,r3
            0x0ce35fc8      3589           bt 0x0ce36036
            0x0ce35fca      3c90           mov.w @(0x78,PC),r0
            0x0ce35fcc      ec03           mov.b @(r0,r14),r3
            0x0ce35fce      3823           tst r3,r3
            0x0ce35fd0      3189           bt 0x0ce36036
            0x0ce35fd2      3990           mov.w @(0x72,PC),r0
            ; CODE XREF from fcn.0ce3555c (+0x44)
            0x0ce35fd4      ec02           mov.b @(r0,r14),r2
            0x0ce35fd6      2822           tst r2,r2
            0x0ce35fd8      2d89           bt 0x0ce36036
            0x0ce35fda      0b4d           jsr @r13
            0x0ce35fdc      e364           mov r14,r4
            0x0ce35fde      0820           tst r0,r0
            0x0ce35fe0      048d           bt.s 0x0ce35fec
            0x0ce35fe2      0364           mov r0,r4
            0x0ce35fe4      3190           mov.w @(0x62,PC),r0
            0x0ce35fe6      02e2           mov 0x02,r2
            0x0ce35fe8      1fa0           bra 0x0ce3602a
            0x0ce35fea      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce35f32 (+0x20, +0xae)
            0x0ce35fec      2990           mov.w @(0x52,PC),r0
            0x0ce35fee      2e92           mov.w @(0x5C,PC),r2
            0x0ce35ff0      ed03           mov.w @(r0,r14),r3
            0x0ce35ff2      3d63           extu.w r3,r3
            0x0ce35ff4      2823           tst r2,r3
            0x0ce35ff6      1e89           bt 0x0ce36036
            0x0ce35ff8      2690           mov.w @(0x4C,PC),r0
            0x0ce35ffa      ec03           mov.b @(r0,r14),r3
            0x0ce35ffc      3823           tst r3,r3
            0x0ce35ffe      1a89           bt 0x0ce36036
            0x0ce36000      2190           mov.w @(0x42,PC),r0
            0x0ce36002      ec03           mov.b @(r0,r14),r3
            0x0ce36004      3823           tst r3,r3
            0x0ce36006      088b           bf 0x0ce3601a
            0x0ce36008      0b4d           jsr @r13
            0x0ce3600a      e364           mov r14,r4
            0x0ce3600c      0820           tst r0,r0
            0x0ce3600e      128d           bt.s 0x0ce36036
            0x0ce36010      0364           mov r0,r4
            0x0ce36012      1a90           mov.w @(0x34,PC),r0
            0x0ce36014      00e2           mov 0x00,r2
            0x0ce36016      08a0           bra 0x0ce3602a
            0x0ce36018      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce35f32 (+0xd4)
            0x0ce3601a      0b4d           jsr @r13
            0x0ce3601c      e364           mov r14,r4
            0x0ce3601e      0820           tst r0,r0
            0x0ce36020      098d           bt.s 0x0ce36036
            0x0ce36022      0364           mov r0,r4
            0x0ce36024      1190           mov.w @(0x22,PC),r0
            0x0ce36026      01e2           mov 0x01,r2
            0x0ce36028      240e           mov.b r2,@(r0,r14)
            ; CODE XREFS from aav.0x0ce35f32 (+0x88, +0xb6, +0xe4)
            0x0ce3602a      0a90           mov.w @(0x14,PC),r0
            0x0ce3602c      f263           mov.l @r15,r3
            0x0ce3602e      ed02           mov.w @(r0,r14),r2
            0x0ce36030      2123           mov.w r2,@r3
            0x0ce36032      01a0           bra 0x0ce36038
            0x0ce36034      4360           mov r4,r0
            ; XREFS: CODE 0x0ce35f9a  CODE 0x0ce35fa2  CODE 0x0ce35faa  
            ; XREFS: CODE 0x0ce35fc8  CODE 0x0ce35fd0  CODE 0x0ce35fd8  
            ; XREFS: CODE 0x0ce35ff6  CODE 0x0ce35ffe  CODE 0x0ce3600e  
            ; XREFS: CODE 0x0ce36020  
            0x0ce36036      00e0           mov 0x00,r0
            ; CODE XREF from aav.0x0ce35f32 (+0x100)
            0x0ce36038      047f           add 0x04,r15
            0x0ce3603a      264f           lds.l @r15+,pr
            0x0ce3603c      f66d           mov.l @r15+,r13
            0x0ce3603e      0b00           rts 
            0x0ce36040      f66e           mov.l @r15+,r14
            0x0ce36042      fa01           .word 0x01FA
            0x0ce36044      001c           mov.l r0,@(0x0,r12)
            0x0ce36046      fe01           mov.l @(r0,r15),r1
            0x0ce36048      a301           ocbp @r1
            0x0ce3604a      f701           mul.l r15,r1
            0x0ce3604c      0008           .word 0x0800
            0x0ce3604e      000c           .word 0x0C00
            ;-- aav.0x0ce36050:
            ; XREFS: UNKNOWN 0x0ce37110  UNKNOWN 0x0ce3711c  UNKNOWN 0x0ce37120  
            ; XREFS: UNKNOWN 0x0ce37124  UNKNOWN 0x0ce37128  UNKNOWN 0x0ce37138  
            ; XREFS: UNKNOWN 0x0ce3713c  UNKNOWN 0x0ce37140  UNKNOWN 0x0ce37144  
            0x0ce36050      e62f           mov.l r14,@-r15
            0x0ce36052      224f           sts.l pr,@-r15
            0x0ce36054      f47f           add 0xF4,r15
            0x0ce36056      436e           mov r4,r14
            0x0ce36058      8994           mov.w @(0x112,PC),r4
            0x0ce3605a      8992           mov.w @(0x112,PC),r2
            0x0ce3605c      ec34           add r14,r4
            0x0ce3605e      4163           mov.w @r4,r3
            0x0ce36060      3d63           extu.w r3,r3
            0x0ce36062      2823           tst r2,r3
            0x0ce36064      168d           bt.s 0x0ce36094
            0x0ce36066      0ae2           mov 0x0A,r2
            0x0ce36068      8390           mov.w @(0x106,PC),r0
            0x0ce3606a      8291           mov.w @(0x104,PC),r1
            0x0ce3606c      ed00           mov.w @(r0,r14),r0
            0x0ce3606e      ec31           add r14,r1
            0x0ce36070      01ca           xor 0x01,r0
            0x0ce36072      0121           mov.w r0,@r1
            0x0ce36074      7d90           mov.w @(0xFA,PC),r0
            0x0ce36076      7c91           mov.w @(0xF8,PC),r1
            0x0ce36078      ec03           mov.b @(r0,r14),r3
            0x0ce3607a      7b90           mov.w @(0xF6,PC),r0
            0x0ce3607c      340e           mov.b r3,@(r0,r14)
            0x0ce3607e      f670           add 0xF6,r0
            0x0ce36080      ee04           mov.l @(r0,r14),r4
            0x0ce36082      7690           mov.w @(0xEC,PC),r0
            0x0ce36084      4c31           add r4,r1
            0x0ce36086      4d00           mov.w @(r0,r4),r0
            0x0ce36088      01ca           xor 0x01,r0
            0x0ce3608a      0121           mov.w r0,@r1
            0x0ce3608c      7190           mov.w @(0xE2,PC),r0
            0x0ce3608e      4c03           mov.b @(r0,r4),r3
            0x0ce36090      7090           mov.w @(0xE0,PC),r0
            0x0ce36092      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce36050 (+0x14)
            0x0ce36094      6f90           mov.w @(0xDE,PC),r0
            0x0ce36096      05e6           mov 0x05,r6
            0x0ce36098      37d3           mov.l @(0xDC,PC),r3
            0x0ce3609a      6365           mov r6,r5
            0x0ce3609c      240e           mov.b r2,@(r0,r14)
            0x0ce3609e      00e0           mov 0x00,r0
            0x0ce360a0      e780           mov.b r0,@(0x7,r14)
            0x0ce360a2      e680           mov.b r0,@(0x6,r14)
            0x0ce360a4      0b43           jsr @r3
            0x0ce360a6      e364           mov r14,r4
            0x0ce360a8      34c7           mova @(0xD0,PC),r0
            0x0ce360aa      36d3           mov.l @(0xD8,PC),r3
            0x0ce360ac      08f3           fmov @r0,fr3
            0x0ce360ae      34c7           mova @(0xD0,PC),r0
            0x0ce360b0      f365           mov r15,r5
            0x0ce360b2      3aff           fmov fr3,@r15
            0x0ce360b4      08f3           fmov @r0,fr3
            0x0ce360b6      04e0           mov 0x04,r0
            0x0ce360b8      37ff           fmov fr3,@(r0,r15)
            0x0ce360ba      0b43           jsr @r3
            0x0ce360bc      e364           mov r14,r4
            0x0ce360be      32d2           mov.l @(0xC8,PC),r2
            0x0ce360c0      0b42           jsr @r2
            0x0ce360c2      e364           mov r14,r4
            0x0ce360c4      31d3           mov.l @(0xC4,PC),r3
            0x0ce360c6      0fe5           mov 0x0F,r5
            0x0ce360c8      00e6           mov 0x00,r6
            0x0ce360ca      0b43           jsr @r3
            0x0ce360cc      e364           mov r14,r4
            0x0ce360ce      0c7f           add 0x0C,r15
            0x0ce360d0      264f           lds.l @r15+,pr
            0x0ce360d2      0b00           rts 
            0x0ce360d4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce360d6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37114)
            0x0ce360d6      e62f           mov.l r14,@-r15
            0x0ce360d8      224f           sts.l pr,@-r15
            0x0ce360da      f47f           add 0xF4,r15
            0x0ce360dc      4b90           mov.w @(0x96,PC),r0
            0x0ce360de      436e           mov r4,r14
            0x0ce360e0      0ae3           mov 0x0A,r3
            0x0ce360e2      340e           mov.b r3,@(r0,r14)
            0x0ce360e4      05e6           mov 0x05,r6
            0x0ce360e6      24d3           mov.l @(0x90,PC),r3
            0x0ce360e8      00e0           mov 0x00,r0
            0x0ce360ea      6365           mov r6,r5
            0x0ce360ec      e780           mov.b r0,@(0x7,r14)
            0x0ce360ee      e680           mov.b r0,@(0x6,r14)
            0x0ce360f0      0b43           jsr @r3
            0x0ce360f2      e364           mov r14,r4
            0x0ce360f4      26c7           mova @(0x98,PC),r0
            0x0ce360f6      23d3           mov.l @(0x8C,PC),r3
            0x0ce360f8      08f3           fmov @r0,fr3
            0x0ce360fa      21c7           mova @(0x84,PC),r0
            0x0ce360fc      f365           mov r15,r5
            0x0ce360fe      3aff           fmov fr3,@r15
            0x0ce36100      08f3           fmov @r0,fr3
            0x0ce36102      04e0           mov 0x04,r0
            0x0ce36104      37ff           fmov fr3,@(r0,r15)
            0x0ce36106      0b43           jsr @r3
            0x0ce36108      e364           mov r14,r4
            0x0ce3610a      1fd2           mov.l @(0x7C,PC),r2
            0x0ce3610c      0b42           jsr @r2
            0x0ce3610e      e364           mov r14,r4
            0x0ce36110      1ed3           mov.l @(0x78,PC),r3
            0x0ce36112      0fe5           mov 0x0F,r5
            0x0ce36114      01e6           mov 0x01,r6
            0x0ce36116      0b43           jsr @r3
            0x0ce36118      e364           mov r14,r4
            0x0ce3611a      0c7f           add 0x0C,r15
            0x0ce3611c      264f           lds.l @r15+,pr
            0x0ce3611e      0b00           rts 
            0x0ce36120      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce36122:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37118)
            0x0ce36122      e62f           mov.l r14,@-r15
            0x0ce36124      224f           sts.l pr,@-r15
            0x0ce36126      f47f           add 0xF4,r15
            0x0ce36128      2590           mov.w @(0x4A,PC),r0
            0x0ce3612a      436e           mov r4,r14
            0x0ce3612c      0ae3           mov 0x0A,r3
            0x0ce3612e      340e           mov.b r3,@(r0,r14)
            0x0ce36130      05e6           mov 0x05,r6
            0x0ce36132      11d3           mov.l @(0x44,PC),r3
            0x0ce36134      00e0           mov 0x00,r0
            0x0ce36136      6365           mov r6,r5
            0x0ce36138      e780           mov.b r0,@(0x7,r14)
            0x0ce3613a      e680           mov.b r0,@(0x6,r14)
            0x0ce3613c      0b43           jsr @r3
            0x0ce3613e      e364           mov r14,r4
            0x0ce36140      14c7           mova @(0x50,PC),r0
            0x0ce36142      10d3           mov.l @(0x40,PC),r3
            0x0ce36144      08f3           fmov @r0,fr3
            0x0ce36146      14c7           mova @(0x50,PC),r0
            0x0ce36148      f365           mov r15,r5
            0x0ce3614a      3aff           fmov fr3,@r15
            0x0ce3614c      08f3           fmov @r0,fr3
            0x0ce3614e      04e0           mov 0x04,r0
            0x0ce36150      37ff           fmov fr3,@(r0,r15)
            0x0ce36152      0b43           jsr @r3
            0x0ce36154      e364           mov r14,r4
            0x0ce36156      0cd2           mov.l @(0x30,PC),r2
            0x0ce36158      0b42           jsr @r2
            0x0ce3615a      e364           mov r14,r4
            0x0ce3615c      0bd3           mov.l @(0x2C,PC),r3
            0x0ce3615e      0fe5           mov 0x0F,r5
            0x0ce36160      02e6           mov 0x02,r6
            0x0ce36162      0b43           jsr @r3
            0x0ce36164      e364           mov r14,r4
            0x0ce36166      0c7f           add 0x0C,r15
            0x0ce36168      264f           lds.l @r15+,pr
            0x0ce3616a      0b00           rts 
            0x0ce3616c      f66e           mov.l @r15+,r14
            0x0ce3616e      a402           mov.b r10,@(r0,r2)
            0x0ce36170      0004           .word 0x0400
            0x0ce36172      3001           .word 0x0130
            0x0ce36174      d201           stc r5_bank,r1
            0x0ce36176      a001           .word 0x01A0
            0x0ce36178      c4fe           fcmp/eq fr12,fr14
            0x0ce3617a      028c           .word 0x8C02
            0x0ce3617c      aaaa           bra 0x0ce356d4
            0x0ce3617e      12c3           trapa 0x12
            0x0ce36180      b66d           mov.l @r11+,r13
            0x0ce36182      2b43           jmp @r3
            0x0ce36184      6036           cmp/eq r6,r6
            0x0ce36186      108c           .word 0x8C10
            0x0ce36188      2a6f           negc r2,r15
            0x0ce3618a      058c           .word 0x8C05
            0x0ce3618c      8c4e           shad r8,r14
            0x0ce3618e      038c           .word 0x8C03
            0x0ce36190      0000           .word 0x0000
            0x0ce36192      20c3           trapa 0x20
            0x0ce36194      5555           mov.l @(0x14,r5),r5
            0x0ce36196      2dc3           trapa 0x2D                  ; '-'
            0x0ce36198      9224           mov.l r9,@r4
            0x0ce3619a      0943           shlr2 r3
            ;-- aav.0x0ce3619c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3712c)
            0x0ce3619c      e62f           mov.l r14,@-r15
            0x0ce3619e      224f           sts.l pr,@-r15
            0x0ce361a0      f47f           add 0xF4,r15
            0x0ce361a2      436e           mov r4,r14
            0x0ce361a4      00e4           mov 0x00,r4
            0x0ce361a6      4360           mov r4,r0
            0x0ce361a8      0900           nop 
            0x0ce361aa      e780           mov.b r0,@(0x7,r14)
            0x0ce361ac      e680           mov.b r0,@(0x6,r14)
            0x0ce361ae      3ce0           mov 0x3C,r0
            0x0ce361b0      ee81           mov.w r0,@(0x1C,r14)
            0x0ce361b2      4360           mov r4,r0
            0x0ce361b4      0900           nop 
            0x0ce361b6      4dd3           mov.l @(0x134,PC),r3
            0x0ce361b8      05e6           mov 0x05,r6
            0x0ce361ba      ef81           mov.w r0,@(0x1E,r14)
            0x0ce361bc      6365           mov r6,r5
            0x0ce361be      0b43           jsr @r3
            0x0ce361c0      e364           mov r14,r4
            0x0ce361c2      4bc7           mova @(0x12C,PC),r0
            0x0ce361c4      4cd3           mov.l @(0x130,PC),r3
            0x0ce361c6      08f3           fmov @r0,fr3
            0x0ce361c8      4ac7           mova @(0x128,PC),r0
            0x0ce361ca      f365           mov r15,r5
            0x0ce361cc      3aff           fmov fr3,@r15
            0x0ce361ce      08f3           fmov @r0,fr3
            0x0ce361d0      04e0           mov 0x04,r0
            0x0ce361d2      37ff           fmov fr3,@(r0,r15)
            0x0ce361d4      0b43           jsr @r3
            0x0ce361d6      e364           mov r14,r4
            0x0ce361d8      48d2           mov.l @(0x120,PC),r2
            0x0ce361da      0b42           jsr @r2
            0x0ce361dc      e364           mov r14,r4
            0x0ce361de      48d3           mov.l @(0x120,PC),r3
            0x0ce361e0      0fe5           mov 0x0F,r5
            0x0ce361e2      06e6           mov 0x06,r6
            0x0ce361e4      0b43           jsr @r3
            0x0ce361e6      e364           mov r14,r4
            0x0ce361e8      0c7f           add 0x0C,r15
            0x0ce361ea      264f           lds.l @r15+,pr
            0x0ce361ec      0b00           rts 
            0x0ce361ee      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce361f0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37130)
            0x0ce361f0      e62f           mov.l r14,@-r15
            0x0ce361f2      224f           sts.l pr,@-r15
            0x0ce361f4      f47f           add 0xF4,r15
            0x0ce361f6      436e           mov r4,r14
            0x0ce361f8      7194           mov.w @(0xE2,PC),r4
            0x0ce361fa      7192           mov.w @(0xE2,PC),r2
            0x0ce361fc      ec34           add r14,r4
            0x0ce361fe      4163           mov.w @r4,r3
            0x0ce36200      3d63           extu.w r3,r3
            0x0ce36202      2823           tst r2,r3
            0x0ce36204      168d           bt.s 0x0ce36234             ; fcn.0ce36222+0x12
            0x0ce36206      8df4           fldi0 fr4
            0x0ce36208      6b90           mov.w @(0xD6,PC),r0
            0x0ce3620a      6a91           mov.w @(0xD4,PC),r1
            0x0ce3620c      ed00           mov.w @(r0,r14),r0
            0x0ce3620e      ec31           add r14,r1
            0x0ce36210      01ca           xor 0x01,r0
            0x0ce36212      0121           mov.w r0,@r1
            0x0ce36214      6590           mov.w @(0xCA,PC),r0
            0x0ce36216      6491           mov.w @(0xC8,PC),r1
            0x0ce36218      ec03           mov.b @(r0,r14),r3
            0x0ce3621a      6390           mov.w @(0xC6,PC),r0
            0x0ce3621c      340e           mov.b r3,@(r0,r14)
            0x0ce3621e      f670           add 0xF6,r0
            0x0ce36220      ee04           mov.l @(r0,r14),r4
/ (fcn) fcn.0ce36222 102
|   fcn.0ce36222 (int arg_6h, int arg_7h);
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce353da (+0x8e)
|           0x0ce36222      5e90           mov.w @(0xBC,PC),r0
|           0x0ce36224      4c31           add r4,r1
|           0x0ce36226      4d00           mov.w @(r0,r4),r0
|           0x0ce36228      01ca           xor 0x01,r0
|           0x0ce3622a      0121           mov.w r0,@r1
|           0x0ce3622c      5990           mov.w @(0xB2,PC),r0
|           0x0ce3622e      4c03           mov.b @(r0,r4),r3
|           0x0ce36230      5890           mov.w @(0xB0,PC),r0
|           0x0ce36232      3404           mov.b r3,@(r0,r4)
|           ; CODE XREF from aav.0x0ce361f0 (+0x14)
|           0x0ce36234      5ce0           mov 0x5C,r0
|           0x0ce36236      47fe           fmov fr4,@(r0,r14)
|           0x0ce36238      60e0           mov 0x60,r0
|           0x0ce3623a      47fe           fmov fr4,@(r0,r14)
|           0x0ce3623c      68e0           mov 0x68,r0
|           0x0ce3623e      47fe           fmov fr4,@(r0,r14)
|           0x0ce36240      6ce0           mov 0x6C,r0
|           0x0ce36242      47fe           fmov fr4,@(r0,r14)
|           0x0ce36244      0ae3           mov 0x0A,r3
|           0x0ce36246      4e90           mov.w @(0x9C,PC),r0
|           0x0ce36248      05e6           mov 0x05,r6
|           0x0ce3624a      6365           mov r6,r5
|           0x0ce3624c      340e           mov.b r3,@(r0,r14)
|           0x0ce3624e      00e0           mov 0x00,r0
|           0x0ce36250      26d3           mov.l @(0x98,PC),r3
|           0x0ce36252      e780           mov.b r0,@(0x7,r14)
|           0x0ce36254      e680           mov.b r0,@(0x6,r14)
|           0x0ce36256      0b43           jsr @r3
|           0x0ce36258      e364           mov r14,r4
|           0x0ce3625a      2ac7           mova @(0xA8,PC),r0
|           0x0ce3625c      26d3           mov.l @(0x98,PC),r3
|           0x0ce3625e      08f3           fmov @r0,fr3
|           0x0ce36260      29c7           mova @(0xA4,PC),r0
|           0x0ce36262      f365           mov r15,r5
|           0x0ce36264      3aff           fmov fr3,@r15
|           0x0ce36266      08f3           fmov @r0,fr3
|           0x0ce36268      04e0           mov 0x04,r0
|           0x0ce3626a      37ff           fmov fr3,@(r0,r15)
|           0x0ce3626c      0b43           jsr @r3
|           0x0ce3626e      e364           mov r14,r4
|           0x0ce36270      22d2           mov.l @(0x88,PC),r2
|           0x0ce36272      0b42           jsr @r2
|           0x0ce36274      e364           mov r14,r4
|           0x0ce36276      22d3           mov.l @(0x88,PC),r3
|           0x0ce36278      0fe5           mov 0x0F,r5
|           0x0ce3627a      03e6           mov 0x03,r6
|           0x0ce3627c      0b43           jsr @r3
|           0x0ce3627e      e364           mov r14,r4
|           0x0ce36280      0c7f           add 0x0C,r15
|           0x0ce36282      264f           lds.l @r15+,pr
|           0x0ce36284      0b00           rts 
\           0x0ce36286      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce36288:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37134)
            0x0ce36288      e62f           mov.l r14,@-r15
            0x0ce3628a      224f           sts.l pr,@-r15
            0x0ce3628c      f47f           add 0xF4,r15
            0x0ce3628e      1fc7           mova @(0x7C,PC),r0
            0x0ce36290      19d3           mov.l @(0x64,PC),r3
            0x0ce36292      08f3           fmov @r0,fr3
            0x0ce36294      1ec7           mova @(0x78,PC),r0
            0x0ce36296      436e           mov r4,r14
            0x0ce36298      f365           mov r15,r5
            0x0ce3629a      3aff           fmov fr3,@r15
            0x0ce3629c      08f3           fmov @r0,fr3
            0x0ce3629e      04e0           mov 0x04,r0
            0x0ce362a0      37ff           fmov fr3,@(r0,r15)
            0x0ce362a2      0b43           jsr @r3
            0x0ce362a4      e364           mov r14,r4
            0x0ce362a6      1bd2           mov.l @(0x6C,PC),r2
            0x0ce362a8      05e5           mov 0x05,r5
            0x0ce362aa      0b42           jsr @r2
            0x0ce362ac      e364           mov r14,r4
            0x0ce362ae      14d3           mov.l @(0x50,PC),r3
            0x0ce362b0      0fe5           mov 0x0F,r5
            0x0ce362b2      04e6           mov 0x04,r6
            0x0ce362b4      0b43           jsr @r3
            0x0ce362b6      e364           mov r14,r4
            0x0ce362b8      17d2           mov.l @(0x5C,PC),r2
            0x0ce362ba      0b42           jsr @r2
            0x0ce362bc      e364           mov r14,r4
            0x0ce362be      0c7f           add 0x0C,r15
            0x0ce362c0      264f           lds.l @r15+,pr
            0x0ce362c2      0b00           rts 
            0x0ce362c4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce362c6:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d40)
            0x0ce362c6      462f           mov.l r4,@-r15
            0x0ce362c8      4360           mov r4,r0
            0x0ce362ca      0900           nop 
            0x0ce362cc      0c91           mov.w @(0x18,PC),r1
            0x0ce362ce      13d2           mov.l @(0x4C,PC),r2
            0x0ce362d0      1c00           mov.b @(r0,r1),r0
            0x0ce362d2      0c60           extu.b r0,r0
            0x0ce362d4      3fc9           and 0x3F,r0
            0x0ce362d6      0840           shll2 r0
            0x0ce362d8      2e03           mov.l @(r0,r2),r3
            0x0ce362da      2b43           jmp @r3
            0x0ce362dc      047f           add 0x04,r15
            0x0ce362de      a402           mov.b r10,@(r0,r2)
            0x0ce362e0      0008           .word 0x0800
            0x0ce362e2      3001           .word 0x0130
            0x0ce362e4      d201           stc r5_bank,r1
            0x0ce362e6      a001           .word 0x01A0
            0x0ce362e8      f701           mul.l r15,r1
            0x0ce362ea      0000           .word 0x0000
            0x0ce362ec      c4fe           fcmp/eq fr12,fr14
            0x0ce362ee      028c           .word 0x8C02
            0x0ce362f0      0000           .word 0x0000
            0x0ce362f2      20c3           trapa 0x20
            0x0ce362f4      b66d           mov.l @r11+,r13
            0x0ce362f6      2b43           jmp @r3
            0x0ce362f8      6036           cmp/eq r6,r6
            0x0ce362fa      108c           .word 0x8C10
            0x0ce362fc      2a6f           negc r2,r15
            0x0ce362fe      058c           .word 0x8C05
            0x0ce36300      8c4e           shad r8,r14
            0x0ce36302      038c           .word 0x8C03
            0x0ce36304      5555           mov.l @(0x14,r5),r5
            0x0ce36306      05c3           trapa 0x05
            0x0ce36308      6ddb           mov.l @(0x1B4,PC),r11
            0x0ce3630a      5e43           ldc r3,r5_bank
            0x0ce3630c      0000           .word 0x0000
            0x0ce3630e      f0c2           mov.l r0,@(0x3C0,gbr)
            0x0ce36310      dbb6           bsr fcn.0ce370ca            ; fcn.0ce36d2a+0x3a0
            0x0ce36312      cd42           shld r12,r2
            0x0ce36314      e46d           mov.b @r14+,r13
            0x0ce36316      058c           .word 0x8C05
            0x0ce36318      5a11           mov.l r5,@(0x28,r1)
            0x0ce3631a      058c           .word 0x8C05
            0x0ce3631c      .dword 0x0ce37110 ; aav.0x0ce37110
            ;-- aav.0x0ce36320:
            ; XREFS: UNKNOWN 0x0ce3716c  UNKNOWN 0x0ce37178  UNKNOWN 0x0ce3717c  
            ; XREFS: UNKNOWN 0x0ce37180  UNKNOWN 0x0ce37184  UNKNOWN 0x0ce37194  
            ; XREFS: UNKNOWN 0x0ce37198  UNKNOWN 0x0ce3719c  UNKNOWN 0x0ce371a0  
            0x0ce36320      e62f           mov.l r14,@-r15
            0x0ce36322      224f           sts.l pr,@-r15
            0x0ce36324      35d3           mov.l @(0xD4,PC),r3
            0x0ce36326      0b43           jsr @r3
            0x0ce36328      436e           mov r4,r14
            0x0ce3632a      0e60           exts.b r0,r0
            0x0ce3632c      1140           cmp/pz r0
            0x0ce3632e      0489           bt 0x0ce3633a
            0x0ce36330      264f           lds.l @r15+,pr
            0x0ce36332      33d3           mov.l @(0xCC,PC),r3
            0x0ce36334      e364           mov r14,r4
            0x0ce36336      2b43           jmp @r3
            0x0ce36338      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce36320 (+0xe)
            0x0ce3633a      5c90           mov.w @(0xB8,PC),r0
            0x0ce3633c      ec02           mov.b @(r0,r14),r2
            0x0ce3633e      2822           tst r2,r2
            0x0ce36340      1189           bt 0x0ce36366
            0x0ce36342      00e3           mov 0x00,r3
            0x0ce36344      3365           mov r3,r5
            0x0ce36346      3366           mov r3,r6
            0x0ce36348      340e           mov.b r3,@(r0,r14)
            0x0ce3634a      2ed3           mov.l @(0xB8,PC),r3
            0x0ce3634c      0b43           jsr @r3
            0x0ce3634e      e364           mov r14,r4
            0x0ce36350      5290           mov.w @(0xA4,PC),r0
            0x0ce36352      02e3           mov 0x02,r3
            0x0ce36354      20e5           mov 0x20,r5
            0x0ce36356      ee04           mov.l @(r0,r14),r4
            0x0ce36358      ec70           add 0xEC,r0
            0x0ce3635a      e604           mov.l r14,@(r0,r4)
            0x0ce3635c      4270           add 0x42,r0
            0x0ce3635e      3404           mov.b r3,@(r0,r4)
            0x0ce36360      ab70           add 0xAB,r0
            0x0ce36362      5404           mov.b r5,@(r0,r4)
            0x0ce36364      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce36320 (+0x20)
            0x0ce36366      264f           lds.l @r15+,pr
            0x0ce36368      0b00           rts 
            0x0ce3636a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3636c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37150)
            0x0ce3636c      e62f           mov.l r14,@-r15
            0x0ce3636e      224f           sts.l pr,@-r15
            0x0ce36370      f47f           add 0xF4,r15
            0x0ce36372      22d3           mov.l @(0x88,PC),r3
            0x0ce36374      0b43           jsr @r3
            0x0ce36376      436e           mov r4,r14
            0x0ce36378      0e60           exts.b r0,r0
            0x0ce3637a      1140           cmp/pz r0
            0x0ce3637c      0689           bt 0x0ce3638c
            0x0ce3637e      20d3           mov.l @(0x80,PC),r3
            0x0ce36380      0b43           jsr @r3
            0x0ce36382      e364           mov r14,r4
            0x0ce36384      0c7f           add 0x0C,r15
            0x0ce36386      264f           lds.l @r15+,pr
            0x0ce36388      0b00           rts 
            0x0ce3638a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3636c (+0x10)
            0x0ce3638c      3390           mov.w @(0x66,PC),r0
            0x0ce3638e      ec00           mov.b @(r0,r14),r0
            0x0ce36390      0288           cmp/eq 0x02,r0
            0x0ce36392      158b           bf 0x0ce363c0
            0x0ce36394      2f90           mov.w @(0x5E,PC),r0
            0x0ce36396      00e2           mov 0x00,r2
            0x0ce36398      1dd3           mov.l @(0x74,PC),r3
            0x0ce3639a      f365           mov r15,r5
            0x0ce3639c      240e           mov.b r2,@(r0,r14)
            0x0ce3639e      1ac7           mova @(0x68,PC),r0
            0x0ce363a0      08f3           fmov @r0,fr3
            0x0ce363a2      1ac7           mova @(0x68,PC),r0
            0x0ce363a4      3aff           fmov fr3,@r15
            0x0ce363a6      08f3           fmov @r0,fr3
            0x0ce363a8      04e0           mov 0x04,r0
            0x0ce363aa      37ff           fmov fr3,@(r0,r15)
            0x0ce363ac      0b43           jsr @r3
            0x0ce363ae      e364           mov r14,r4
            0x0ce363b0      18d2           mov.l @(0x60,PC),r2
            0x0ce363b2      0ce5           mov 0x0C,r5
            0x0ce363b4      0b42           jsr @r2
            0x0ce363b6      e364           mov r14,r4
            0x0ce363b8      0c7f           add 0x0C,r15
            0x0ce363ba      264f           lds.l @r15+,pr
            0x0ce363bc      0b00           rts 
            0x0ce363be      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3636c (+0x26)
            0x0ce363c0      1990           mov.w @(0x32,PC),r0
            0x0ce363c2      ec00           mov.b @(r0,r14),r0
            0x0ce363c4      0188           cmp/eq 0x01,r0
            0x0ce363c6      128b           bf 0x0ce363ee
            0x0ce363c8      1590           mov.w @(0x2A,PC),r0
            0x0ce363ca      00e2           mov 0x00,r2
            0x0ce363cc      0dd3           mov.l @(0x34,PC),r3
            0x0ce363ce      2365           mov r2,r5
            0x0ce363d0      240e           mov.b r2,@(r0,r14)
            0x0ce363d2      2366           mov r2,r6
            0x0ce363d4      0b43           jsr @r3
            0x0ce363d6      e364           mov r14,r4
            0x0ce363d8      0e90           mov.w @(0x1C,PC),r0
            0x0ce363da      01e3           mov 0x01,r3
            0x0ce363dc      23e5           mov 0x23,r5
            0x0ce363de      ee04           mov.l @(r0,r14),r4
            0x0ce363e0      ec70           add 0xEC,r0
            0x0ce363e2      e604           mov.l r14,@(r0,r4)
            0x0ce363e4      4270           add 0x42,r0
            0x0ce363e6      3404           mov.b r3,@(r0,r4)
            0x0ce363e8      ab70           add 0xAB,r0
            0x0ce363ea      5404           mov.b r5,@(r0,r4)
            0x0ce363ec      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce3636c (+0x5a)
            0x0ce363ee      0c7f           add 0x0C,r15
            0x0ce363f0      264f           lds.l @r15+,pr
            0x0ce363f2      0b00           rts 
            0x0ce363f4      f66e           mov.l @r15+,r14
            0x0ce363f6      4101           .word 0x0141
            0x0ce363f8      c801           .word 0x01C8
            0x0ce363fa      0000           .word 0x0000
            0x0ce363fc      ee4d           ldc r13,r6_bank
            0x0ce363fe      038c           .word 0x8C03
            0x0ce36400      4816           mov.l r4,@(0x20,r6)
            0x0ce36402      058c           .word 0x8C05
            0x0ce36404      c4fe           fcmp/eq fr12,fr14
            0x0ce36406      028c           .word 0x8C02
            0x0ce36408      5555           mov.l @(0x14,r5),r5
            0x0ce3640a      d5c2           mov.l r0,@(0x354,gbr)
            0x0ce3640c      dbb6           bsr fcn.0ce371c6            ; fcn.0ce36d2a+0x49c
            0x0ce3640e      4d43           shld r4,r3
            0x0ce36410      4edb           mov.l @(0x138,PC),r11
            0x0ce36412      0f8c           .word 0x8C0F
            0x0ce36414      3a22           xor r3,r2
            0x0ce36416      048c           .word 0x8C04
            ;-- aav.0x0ce36418:
            ; CODE XREF from aav.0x0ce364ac (+0x26)
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3714c)
            0x0ce36418      e62f           mov.l r14,@-r15
            0x0ce3641a      224f           sts.l pr,@-r15
            0x0ce3641c      f47f           add 0xF4,r15
            0x0ce3641e      49d3           mov.l @(0x124,PC),r3
            0x0ce36420      0b43           jsr @r3
            0x0ce36422      436e           mov r4,r14
            0x0ce36424      ee85           mov.w @(0x1C,r14),r0
            0x0ce36426      ff70           add 0xFF,r0
            0x0ce36428      ee81           mov.w r0,@(0x1C,r14)
            0x0ce3642a      0f60           exts.w r0,r0
            0x0ce3642c      0820           tst r0,r0
            0x0ce3642e      3189           bt 0x0ce36494
            0x0ce36430      45d3           mov.l @(0x114,PC),r3
            0x0ce36432      0b43           jsr @r3
            0x0ce36434      e364           mov r14,r4
            0x0ce36436      0820           tst r0,r0
            0x0ce36438      0289           bt 0x0ce36440
            0x0ce3643a      7f90           mov.w @(0xFE,PC),r0
            0x0ce3643c      05e3           mov 0x05,r3
            0x0ce3643e      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce36418 (+0x20)
            0x0ce36440      42d3           mov.l @(0x108,PC),r3
            0x0ce36442      7c90           mov.w @(0xF8,PC),r0
            0x0ce36444      0b43           jsr @r3
            0x0ce36446      ee04           mov.l @(r0,r14),r4
            0x0ce36448      0820           tst r0,r0
            0x0ce3644a      238b           bf 0x0ce36494
            0x0ce3644c      7890           mov.w @(0xF0,PC),r0
            0x0ce3644e      ec03           mov.b @(r0,r14),r3
            0x0ce36450      3823           tst r3,r3
            0x0ce36452      2789           bt 0x0ce364a4
            0x0ce36454      00e3           mov 0x00,r3
            0x0ce36456      340e           mov.b r3,@(r0,r14)
            0x0ce36458      23e5           mov 0x23,r5
            0x0ce3645a      7090           mov.w @(0xE0,PC),r0
            0x0ce3645c      3cd3           mov.l @(0xF0,PC),r3
            0x0ce3645e      ee04           mov.l @(r0,r14),r4
            0x0ce36460      ec70           add 0xEC,r0
            0x0ce36462      e604           mov.l r14,@(r0,r4)
            0x0ce36464      ed70           add 0xED,r0
            0x0ce36466      5404           mov.b r5,@(r0,r4)
            0x0ce36468      540e           mov.b r5,@(r0,r14)
            0x0ce3646a      0b43           jsr @r3
            0x0ce3646c      e364           mov r14,r4
            0x0ce3646e      39c7           mova @(0xE4,PC),r0
            0x0ce36470      3ad3           mov.l @(0xE8,PC),r3
            0x0ce36472      08f3           fmov @r0,fr3
            0x0ce36474      38c7           mova @(0xE0,PC),r0
            0x0ce36476      f365           mov r15,r5
            0x0ce36478      3aff           fmov fr3,@r15
            0x0ce3647a      08f3           fmov @r0,fr3
            0x0ce3647c      04e0           mov 0x04,r0
            0x0ce3647e      37ff           fmov fr3,@(r0,r15)
            0x0ce36480      0b43           jsr @r3
            0x0ce36482      e364           mov r14,r4
            0x0ce36484      36d2           mov.l @(0xD8,PC),r2
            0x0ce36486      0ce5           mov 0x0C,r5
            0x0ce36488      0b42           jsr @r2
            0x0ce3648a      e364           mov r14,r4
            0x0ce3648c      0c7f           add 0x0C,r15
            0x0ce3648e      264f           lds.l @r15+,pr
            0x0ce36490      0b00           rts 
            0x0ce36492      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce36418 (+0x16, +0x32)
            0x0ce36494      e784           mov.b @(0x7,r14),r0
            0x0ce36496      0fe5           mov 0x0F,r5
            0x0ce36498      32d3           mov.l @(0xC8,PC),r3
            0x0ce3649a      32e6           mov 0x32,r6
            0x0ce3649c      0170           add 0x01,r0
            0x0ce3649e      e780           mov.b r0,@(0x7,r14)
            0x0ce364a0      0b43           jsr @r3
            0x0ce364a2      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce36418 (+0x3a)
            0x0ce364a4      0c7f           add 0x0C,r15
            0x0ce364a6      264f           lds.l @r15+,pr
            0x0ce364a8      0b00           rts 
            0x0ce364aa      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce364ac:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37148)
            0x0ce364ac      e62f           mov.l r14,@-r15
            0x0ce364ae      436e           mov r4,r14
            0x0ce364b0      224f           sts.l pr,@-r15
            0x0ce364b2      e784           mov.b @(0x7,r14),r0
            0x0ce364b4      14e5           mov 0x14,r5
            0x0ce364b6      2cd3           mov.l @(0xB0,PC),r3
            0x0ce364b8      0170           add 0x01,r0
            0x0ce364ba      e780           mov.b r0,@(0x7,r14)
            0x0ce364bc      3f90           mov.w @(0x7E,PC),r0
            0x0ce364be      0b43           jsr @r3
            0x0ce364c0      ee04           mov.l @(r0,r14),r4
            0x0ce364c2      2ad2           mov.l @(0xA8,PC),r2
            0x0ce364c4      03e5           mov 0x03,r5
            0x0ce364c6      0b42           jsr @r2
            0x0ce364c8      e364           mov r14,r4
            0x0ce364ca      40e0           mov 0x40,r0
            0x0ce364cc      e364           mov r14,r4
            0x0ce364ce      ee81           mov.w r0,@(0x1C,r14)
            0x0ce364d0      264f           lds.l @r15+,pr
            0x0ce364d2      a1af           bra aav.0x0ce36418
            0x0ce364d4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce364d6:
            ; UNKNOWN XREFS from fcn.0ce36d2a (0xce37168, 0xce37170)
            0x0ce364d6      4363           mov r4,r3
            0x0ce364d8      25d1           mov.l @(0x94,PC),r1
            0x0ce364da      462f           mov.l r4,@-r15
            0x0ce364dc      3784           mov.b @(0x7,r3),r0
            0x0ce364de      0c60           extu.b r0,r0
            0x0ce364e0      0840           shll2 r0
            0x0ce364e2      1e03           mov.l @(r0,r1),r3
            0x0ce364e4      2b43           jmp @r3
            0x0ce364e6      047f           add 0x04,r15
            ;-- aav.0x0ce364e8:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3715c)
            0x0ce364e8      e62f           mov.l r14,@-r15
            0x0ce364ea      224f           sts.l pr,@-r15
            0x0ce364ec      f47f           add 0xF4,r15
            0x0ce364ee      15d3           mov.l @(0x54,PC),r3
            0x0ce364f0      0b43           jsr @r3
            0x0ce364f2      436e           mov r4,r14
            0x0ce364f4      0e60           exts.b r0,r0
            0x0ce364f6      1140           cmp/pz r0
            0x0ce364f8      0689           bt 0x0ce36508
            0x0ce364fa      1ed3           mov.l @(0x78,PC),r3
            0x0ce364fc      0b43           jsr @r3
            0x0ce364fe      e364           mov r14,r4
            0x0ce36500      0c7f           add 0x0C,r15
            0x0ce36502      264f           lds.l @r15+,pr
            0x0ce36504      0b00           rts 
            0x0ce36506      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce364e8 (+0x10)
            0x0ce36508      1a90           mov.w @(0x34,PC),r0
            0x0ce3650a      ec00           mov.b @(r0,r14),r0
            0x0ce3650c      0288           cmp/eq 0x02,r0
            0x0ce3650e      398b           bf 0x0ce36584
            0x0ce36510      1690           mov.w @(0x2C,PC),r0
            0x0ce36512      00e2           mov 0x00,r2
            0x0ce36514      11d3           mov.l @(0x44,PC),r3
            0x0ce36516      f365           mov r15,r5
            0x0ce36518      240e           mov.b r2,@(r0,r14)
            0x0ce3651a      17c7           mova @(0x5C,PC),r0
            0x0ce3651c      08f3           fmov @r0,fr3
            0x0ce3651e      17c7           mova @(0x5C,PC),r0
            0x0ce36520      3aff           fmov fr3,@r15
            0x0ce36522      08f3           fmov @r0,fr3
            0x0ce36524      04e0           mov 0x04,r0
            0x0ce36526      37ff           fmov fr3,@(r0,r15)
            0x0ce36528      0b43           jsr @r3
            0x0ce3652a      e364           mov r14,r4
            0x0ce3652c      14d2           mov.l @(0x50,PC),r2
            0x0ce3652e      20e5           mov 0x20,r5
            0x0ce36530      0b42           jsr @r2
            0x0ce36532      e364           mov r14,r4
            0x0ce36534      0c7f           add 0x0C,r15
            0x0ce36536      264f           lds.l @r15+,pr
            0x0ce36538      0b00           rts 
            0x0ce3653a      f66e           mov.l @r15+,r14
            0x0ce3653c      4201           stc spc,r1
            0x0ce3653e      c801           .word 0x01C8
            0x0ce36540      4101           .word 0x0141
            0x0ce36542      0000           .word 0x0000
            0x0ce36544      ee4d           ldc r13,r6_bank
            0x0ce36546      038c           .word 0x8C03
            0x0ce36548      8206           stc r0_bank,r6
            0x0ce3654a      058c           .word 0x8C05
            0x0ce3654c      1006           .word 0x0610
            0x0ce3654e      058c           .word 0x8C05
            0x0ce36550      3c93           mov.w @(0x78,PC),r3
            0x0ce36552      058c           .word 0x8C05
            0x0ce36554      5555           mov.l @(0x14,r5),r5
            0x0ce36556      d5c2           mov.l r0,@(0x354,gbr)
            0x0ce36558      dbb6           bsr 0x0ce37312
            0x0ce3655a      4d43           shld r4,r3
            0x0ce3655c      4edb           mov.l @(0x138,PC),r11
            0x0ce3655e      0f8c           .word 0x8C0F
            0x0ce36560      3a22           xor r3,r2
            0x0ce36562      048c           .word 0x8C04
            0x0ce36564      8c4e           shad r8,r14
            0x0ce36566      038c           .word 0x8C03
            0x0ce36568      5205           stc r5_bank,r5
            0x0ce3656a      058c           .word 0x8C05
            0x0ce3656c      4e06           mov.l @(r0,r4),r6
            0x0ce3656e      058c           .word 0x8C05
            0x0ce36570      .dword 0x0ce37148 ; aav.0x0ce37148
            0x0ce36574      4816           mov.l r4,@(0x20,r6)
            0x0ce36576      058c           .word 0x8C05
            0x0ce36578      aaaa           bra 0x0ce35ad0
            0x0ce3657a      3ac3           trapa 0x3A                  ; ':'
            0x0ce3657c      9224           mov.l r9,@r4
            0x0ce3657e      0943           shlr2 r3
            0x0ce36580      0820           tst r0,r0
            0x0ce36582      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce364e8 (+0x26)
            0x0ce36584      8190           mov.w @(0x102,PC),r0
            0x0ce36586      ec00           mov.b @(r0,r14),r0
            0x0ce36588      0188           cmp/eq 0x01,r0
            0x0ce3658a      128b           bf 0x0ce365b2
            0x0ce3658c      7d90           mov.w @(0xFA,PC),r0
            0x0ce3658e      00e2           mov 0x00,r2
            0x0ce36590      3fd3           mov.l @(0xFC,PC),r3
            0x0ce36592      2365           mov r2,r5
            0x0ce36594      240e           mov.b r2,@(r0,r14)
            0x0ce36596      2366           mov r2,r6
            0x0ce36598      0b43           jsr @r3
            0x0ce3659a      e364           mov r14,r4
            0x0ce3659c      7690           mov.w @(0xEC,PC),r0
            0x0ce3659e      01e3           mov 0x01,r3
            0x0ce365a0      24e5           mov 0x24,r5
            0x0ce365a2      ee04           mov.l @(r0,r14),r4
            0x0ce365a4      ec70           add 0xEC,r0
            0x0ce365a6      e604           mov.l r14,@(r0,r4)
            0x0ce365a8      4270           add 0x42,r0
            0x0ce365aa      3404           mov.b r3,@(r0,r4)
            0x0ce365ac      ab70           add 0xAB,r0
            0x0ce365ae      5404           mov.b r5,@(r0,r4)
            0x0ce365b0      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce364e8 (+0xa2)
            0x0ce365b2      0c7f           add 0x0C,r15
            0x0ce365b4      264f           lds.l @r15+,pr
            0x0ce365b6      0b00           rts 
            0x0ce365b8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce365ba:
            ; CODE XREF from aav.0x0ce3664e (+0x26)
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37158)
            0x0ce365ba      e62f           mov.l r14,@-r15
            0x0ce365bc      224f           sts.l pr,@-r15
            0x0ce365be      f47f           add 0xF4,r15
            0x0ce365c0      34d3           mov.l @(0xD0,PC),r3
            0x0ce365c2      0b43           jsr @r3
            0x0ce365c4      436e           mov r4,r14
            0x0ce365c6      ee85           mov.w @(0x1C,r14),r0
            0x0ce365c8      ff70           add 0xFF,r0
            0x0ce365ca      ee81           mov.w r0,@(0x1C,r14)
            0x0ce365cc      0f60           exts.w r0,r0
            0x0ce365ce      0820           tst r0,r0
            0x0ce365d0      3189           bt 0x0ce36636
            0x0ce365d2      31d3           mov.l @(0xC4,PC),r3
            0x0ce365d4      0b43           jsr @r3
            0x0ce365d6      e364           mov r14,r4
            0x0ce365d8      0820           tst r0,r0
            0x0ce365da      0289           bt 0x0ce365e2
            0x0ce365dc      5790           mov.w @(0xAE,PC),r0
            0x0ce365de      05e3           mov 0x05,r3
            0x0ce365e0      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce365ba (+0x20)
            0x0ce365e2      2ed3           mov.l @(0xB8,PC),r3
            0x0ce365e4      5290           mov.w @(0xA4,PC),r0
            0x0ce365e6      0b43           jsr @r3
            0x0ce365e8      ee04           mov.l @(r0,r14),r4
            0x0ce365ea      0820           tst r0,r0
            0x0ce365ec      238b           bf 0x0ce36636
            0x0ce365ee      4c90           mov.w @(0x98,PC),r0
            0x0ce365f0      ec03           mov.b @(r0,r14),r3
            0x0ce365f2      3823           tst r3,r3
            0x0ce365f4      2789           bt 0x0ce36646
            0x0ce365f6      00e3           mov 0x00,r3
            0x0ce365f8      340e           mov.b r3,@(r0,r14)
            0x0ce365fa      24e5           mov 0x24,r5
            0x0ce365fc      4690           mov.w @(0x8C,PC),r0
            0x0ce365fe      28d3           mov.l @(0xA0,PC),r3
            0x0ce36600      ee04           mov.l @(r0,r14),r4
            0x0ce36602      ec70           add 0xEC,r0
            0x0ce36604      e604           mov.l r14,@(r0,r4)
            0x0ce36606      ed70           add 0xED,r0
            0x0ce36608      5404           mov.b r5,@(r0,r4)
            0x0ce3660a      540e           mov.b r5,@(r0,r14)
            0x0ce3660c      0b43           jsr @r3
            0x0ce3660e      e364           mov r14,r4
            0x0ce36610      24c7           mova @(0x90,PC),r0
            0x0ce36612      26d3           mov.l @(0x98,PC),r3
            0x0ce36614      08f3           fmov @r0,fr3
            0x0ce36616      24c7           mova @(0x90,PC),r0
            0x0ce36618      f365           mov r15,r5
            0x0ce3661a      3aff           fmov fr3,@r15
            0x0ce3661c      08f3           fmov @r0,fr3
            0x0ce3661e      04e0           mov 0x04,r0
            0x0ce36620      37ff           fmov fr3,@(r0,r15)
            0x0ce36622      0b43           jsr @r3
            0x0ce36624      e364           mov r14,r4
            0x0ce36626      22d2           mov.l @(0x88,PC),r2
            0x0ce36628      20e5           mov 0x20,r5
            0x0ce3662a      0b42           jsr @r2
            0x0ce3662c      e364           mov r14,r4
            0x0ce3662e      0c7f           add 0x0C,r15
            0x0ce36630      264f           lds.l @r15+,pr
            0x0ce36632      0b00           rts 
            0x0ce36634      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce365ba (+0x16, +0x32)
            0x0ce36636      e784           mov.b @(0x7,r14),r0
            0x0ce36638      0fe5           mov 0x0F,r5
            0x0ce3663a      1ed3           mov.l @(0x78,PC),r3
            0x0ce3663c      33e6           mov 0x33,r6
            0x0ce3663e      0170           add 0x01,r0
            0x0ce36640      e780           mov.b r0,@(0x7,r14)
            0x0ce36642      0b43           jsr @r3
            0x0ce36644      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce365ba (+0x3a)
            0x0ce36646      0c7f           add 0x0C,r15
            0x0ce36648      264f           lds.l @r15+,pr
            0x0ce3664a      0b00           rts 
            0x0ce3664c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3664e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37154)
            0x0ce3664e      e62f           mov.l r14,@-r15
            0x0ce36650      436e           mov r4,r14
            0x0ce36652      224f           sts.l pr,@-r15
            0x0ce36654      e784           mov.b @(0x7,r14),r0
            0x0ce36656      14e5           mov 0x14,r5
            0x0ce36658      17d3           mov.l @(0x5C,PC),r3
            0x0ce3665a      0170           add 0x01,r0
            0x0ce3665c      e780           mov.b r0,@(0x7,r14)
            0x0ce3665e      1590           mov.w @(0x2A,PC),r0
            0x0ce36660      0b43           jsr @r3
            0x0ce36662      ee04           mov.l @(r0,r14),r4
            0x0ce36664      15d2           mov.l @(0x54,PC),r2
            0x0ce36666      03e5           mov 0x03,r5
            0x0ce36668      0b42           jsr @r2
            0x0ce3666a      e364           mov r14,r4
            0x0ce3666c      40e0           mov 0x40,r0
            0x0ce3666e      e364           mov r14,r4
            0x0ce36670      ee81           mov.w r0,@(0x1C,r14)
            0x0ce36672      264f           lds.l @r15+,pr
            0x0ce36674      a1af           bra aav.0x0ce365ba
            0x0ce36676      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce36678:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37174)
            0x0ce36678      4363           mov r4,r3
            0x0ce3667a      11d1           mov.l @(0x44,PC),r1
            0x0ce3667c      462f           mov.l r4,@-r15
            0x0ce3667e      3784           mov.b @(0x7,r3),r0
            0x0ce36680      0c60           extu.b r0,r0
            0x0ce36682      0840           shll2 r0
            0x0ce36684      1e03           mov.l @(r0,r1),r3
            0x0ce36686      2b43           jmp @r3
            0x0ce36688      047f           add 0x04,r15
            0x0ce3668a      4101           .word 0x0141
            0x0ce3668c      c801           .word 0x01C8
            0x0ce3668e      4201           stc spc,r1
            0x0ce36690      c4fe           fcmp/eq fr12,fr14
            0x0ce36692      028c           .word 0x8C02
            0x0ce36694      ee4d           ldc r13,r6_bank
            0x0ce36696      038c           .word 0x8C03
            0x0ce36698      8206           stc r0_bank,r6
            0x0ce3669a      058c           .word 0x8C05
            0x0ce3669c      1006           .word 0x0610
            0x0ce3669e      058c           .word 0x8C05
            0x0ce366a0      3c93           mov.w @(0x78,PC),r3
            0x0ce366a2      058c           .word 0x8C05
            0x0ce366a4      aaaa           bra 0x0ce35bfc
            0x0ce366a6      3ac3           trapa 0x3A                  ; ':'
            0x0ce366a8      9224           mov.l r9,@r4
            0x0ce366aa      0943           shlr2 r3
            0x0ce366ac      4edb           mov.l @(0x138,PC),r11
            0x0ce366ae      0f8c           .word 0x8C0F
            0x0ce366b0      0820           tst r0,r0
            0x0ce366b2      048c           .word 0x8C04
            0x0ce366b4      8c4e           shad r8,r14
            0x0ce366b6      038c           .word 0x8C03
            0x0ce366b8      5205           stc r5_bank,r5
            0x0ce366ba      058c           .word 0x8C05
            0x0ce366bc      4e06           mov.l @(r0,r4),r6
            0x0ce366be      058c           .word 0x8C05
            0x0ce366c0      .dword 0x0ce37154 ; aav.0x0ce37154
            ;-- aav.0x0ce366c4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37160)
            0x0ce366c4      e62f           mov.l r14,@-r15
            0x0ce366c6      d62f           mov.l r13,@-r15
            0x0ce366c8      00ed           mov 0x00,r13
            0x0ce366ca      c62f           mov.l r12,@-r15
            0x0ce366cc      01ec           mov 0x01,r12
            0x0ce366ce      224f           sts.l pr,@-r15
            0x0ce366d0      42d3           mov.l @(0x108,PC),r3
            0x0ce366d2      0b43           jsr @r3
            0x0ce366d4      436e           mov r4,r14
            0x0ce366d6      ee85           mov.w @(0x1C,r14),r0
            0x0ce366d8      ff70           add 0xFF,r0
            0x0ce366da      ee81           mov.w r0,@(0x1C,r14)
            0x0ce366dc      0f60           exts.w r0,r0
            0x0ce366de      1140           cmp/pz r0
            0x0ce366e0      1689           bt 0x0ce36710
            0x0ce366e2      3fd2           mov.l @(0xFC,PC),r2
            0x0ce366e4      00e6           mov 0x00,r6
            0x0ce366e6      6365           mov r6,r5
            0x0ce366e8      0b42           jsr @r2
            0x0ce366ea      e364           mov r14,r4
            0x0ce366ec      6e90           mov.w @(0xDC,PC),r0
            0x0ce366ee      07e3           mov 0x07,r3
            0x0ce366f0      27e5           mov 0x27,r5
            0x0ce366f2      ee04           mov.l @(r0,r14),r4
            0x0ce366f4      ec70           add 0xEC,r0
            0x0ce366f6      e604           mov.l r14,@(r0,r4)
            0x0ce366f8      4270           add 0x42,r0
            0x0ce366fa      3404           mov.b r3,@(r0,r4)
            0x0ce366fc      ab70           add 0xAB,r0
            0x0ce366fe      39d3           mov.l @(0xE4,PC),r3
            0x0ce36700      5404           mov.b r5,@(r0,r4)
            0x0ce36702      e364           mov r14,r4
            0x0ce36704      540e           mov.b r5,@(r0,r14)
            0x0ce36706      264f           lds.l @r15+,pr
            0x0ce36708      f66c           mov.l @r15+,r12
            0x0ce3670a      f66d           mov.l @r15+,r13
            0x0ce3670c      2b43           jmp @r3
            0x0ce3670e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce366c4 (+0x1c)
            0x0ce36710      5d90           mov.w @(0xBA,PC),r0
            0x0ce36712      ec02           mov.b @(r0,r14),r2
            0x0ce36714      2822           tst r2,r2
            0x0ce36716      1389           bt 0x0ce36740
            0x0ce36718      33d3           mov.l @(0xCC,PC),r3
            0x0ce3671a      0b43           jsr @r3
            0x0ce3671c      e364           mov r14,r4
            0x0ce3671e      0820           tst r0,r0
            0x0ce36720      4f89           bt 0x0ce367c2
            0x0ce36722      ef85           mov.w @(0x1E,r14),r0
            0x0ce36724      0ae3           mov 0x0A,r3
            0x0ce36726      0170           add 0x01,r0
            0x0ce36728      ef81           mov.w r0,@(0x1E,r14)
            0x0ce3672a      ff70           add 0xFF,r0
            0x0ce3672c      0f60           exts.w r0,r0
            0x0ce3672e      3730           cmp/gt r3,r0
            0x0ce36730      4789           bt 0x0ce367c2
            0x0ce36732      2ed1           mov.l @(0xB8,PC),r1
            0x0ce36734      0b41           jsr @r1
            0x0ce36736      0900           nop 
            0x0ce36738      c820           tst r12,r0
            0x0ce3673a      2689           bt 0x0ce3678a
            0x0ce3673c      26a0           bra 0x0ce3678c
            0x0ce3673e      d364           mov r13,r4
            ; CODE XREF from aav.0x0ce366c4 (+0x52)
            0x0ce36740      4690           mov.w @(0x8C,PC),r0
            0x0ce36742      4692           mov.w @(0x8C,PC),r2
            0x0ce36744      ed03           mov.w @(r0,r14),r3
            0x0ce36746      3d63           extu.w r3,r3
            0x0ce36748      2823           tst r2,r3
            0x0ce3674a      3a89           bt 0x0ce367c2
            0x0ce3674c      ed00           mov.w @(r0,r14),r0
            0x0ce3674e      4193           mov.w @(0x82,PC),r3
            0x0ce36750      0d60           extu.w r0,r0
            0x0ce36752      3820           tst r3,r0
            0x0ce36754      1989           bt 0x0ce3678a
            0x0ce36756      3b90           mov.w @(0x76,PC),r0
            0x0ce36758      3d92           mov.w @(0x7A,PC),r2
            0x0ce3675a      ed01           mov.w @(r0,r14),r1
            0x0ce3675c      1d61           extu.w r1,r1
            0x0ce3675e      2821           tst r2,r1
            0x0ce36760      148d           bt.s 0x0ce3678c
            0x0ce36762      d364           mov r13,r4
            0x0ce36764      3890           mov.w @(0x70,PC),r0
            0x0ce36766      01e3           mov 0x01,r3
            0x0ce36768      3792           mov.w @(0x6E,PC),r2
            0x0ce3676a      ed01           mov.w @(r0,r14),r1
            0x0ce3676c      ec32           add r14,r2
            0x0ce3676e      3a21           xor r3,r1
            0x0ce36770      150e           mov.w r1,@(r0,r14)
            0x0ce36772      ec00           mov.b @(r0,r14),r0
            0x0ce36774      0022           mov.b r0,@r2
            0x0ce36776      2990           mov.w @(0x52,PC),r0
            0x0ce36778      ee05           mov.l @(r0,r14),r5
            0x0ce3677a      2d90           mov.w @(0x5A,PC),r0
            0x0ce3677c      5d02           mov.w @(r0,r5),r2
            0x0ce3677e      3a22           xor r3,r2
            0x0ce36780      2505           mov.w r2,@(r0,r5)
            0x0ce36782      5c01           mov.b @(r0,r5),r1
            0x0ce36784      2990           mov.w @(0x52,PC),r0
            0x0ce36786      01a0           bra 0x0ce3678c
            0x0ce36788      1405           mov.b r1,@(r0,r5)
            ; CODE XREFS from aav.0x0ce366c4 (+0x76, +0x90)
            0x0ce3678a      c364           mov r12,r4
            ; CODE XREFS from aav.0x0ce366c4 (+0x78, +0x9c, +0xc2)
            0x0ce3678c      4360           mov r4,r0
            0x0ce3678e      0900           nop 
            0x0ce36790      0088           cmp/eq 0x00,r0
            0x0ce36792      0389           bt 0x0ce3679c
            0x0ce36794      0188           cmp/eq 0x01,r0
            0x0ce36796      0689           bt 0x0ce367a6
            0x0ce36798      13a0           bra 0x0ce367c2
            0x0ce3679a      0900           nop 
            ; CODE XREF from aav.0x0ce366c4 (+0xce)
            0x0ce3679c      c360           mov r12,r0
            0x0ce3679e      0900           nop 
            0x0ce367a0      e680           mov.b r0,@(0x6,r14)
            0x0ce367a2      06a0           bra 0x0ce367b2
            0x0ce367a4      34e6           mov 0x34,r6
            ; CODE XREF from aav.0x0ce366c4 (+0xd2)
            0x0ce367a6      02e0           mov 0x02,r0
            0x0ce367a8      e680           mov.b r0,@(0x6,r14)
            0x0ce367aa      d360           mov r13,r0
            0x0ce367ac      0900           nop 
            0x0ce367ae      07e6           mov 0x07,r6
            0x0ce367b0      e780           mov.b r0,@(0x7,r14)
            ; CODE XREF from aav.0x0ce366c4 (+0xde)
            0x0ce367b2      264f           lds.l @r15+,pr
            0x0ce367b4      0ed3           mov.l @(0x38,PC),r3
            0x0ce367b6      0fe5           mov 0x0F,r5
            0x0ce367b8      e364           mov r14,r4
            0x0ce367ba      f66c           mov.l @r15+,r12
            0x0ce367bc      f66d           mov.l @r15+,r13
            0x0ce367be      2b43           jmp @r3
            0x0ce367c0      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce366c4 (+0x5c, +0x6c, +0x86, +0xd4)
            0x0ce367c2      264f           lds.l @r15+,pr
            0x0ce367c4      f66c           mov.l @r15+,r12
            0x0ce367c6      f66d           mov.l @r15+,r13
            0x0ce367c8      0b00           rts 
            0x0ce367ca      f66e           mov.l @r15+,r14
            0x0ce367cc      c801           .word 0x01C8
            0x0ce367ce      2505           mov.w r2,@(r0,r5)
            0x0ce367d0      4a03           .word 0x034A
            0x0ce367d2      2001           .word 0x0120
            0x0ce367d4      0001           .word 0x0100
            0x0ce367d6      0004           .word 0x0400
            0x0ce367d8      3001           .word 0x0130
            0x0ce367da      d201           stc r5_bank,r1
            0x0ce367dc      ee4d           ldc r13,r6_bank
            0x0ce367de      038c           .word 0x8C03
            0x0ce367e0      c4fe           fcmp/eq fr12,fr14
            0x0ce367e2      028c           .word 0x8C02
            0x0ce367e4      4816           mov.l r4,@(0x20,r6)
            0x0ce367e6      058c           .word 0x8C05
            0x0ce367e8      545d           mov.l @(0x10,r5),r13
            0x0ce367ea      058c           .word 0x8C05
            0x0ce367ec      30e7           mov 0x30,r7
            0x0ce367ee      118c           .word 0x8C11
            0x0ce367f0      8c4e           shad r8,r14
            0x0ce367f2      038c           .word 0x8C03
            ;-- aav.0x0ce367f4:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37164)
            0x0ce367f4      e62f           mov.l r14,@-r15
            0x0ce367f6      224f           sts.l pr,@-r15
            0x0ce367f8      3ed3           mov.l @(0xF8,PC),r3
            0x0ce367fa      0b43           jsr @r3
            0x0ce367fc      436e           mov r4,r14
            0x0ce367fe      0e60           exts.b r0,r0
            0x0ce36800      1140           cmp/pz r0
            0x0ce36802      0489           bt 0x0ce3680e
            0x0ce36804      264f           lds.l @r15+,pr
            0x0ce36806      3cd3           mov.l @(0xF0,PC),r3
            0x0ce36808      e364           mov r14,r4
            0x0ce3680a      2b43           jmp @r3
            0x0ce3680c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce367f4 (+0xe)
            0x0ce3680e      6a90           mov.w @(0xD4,PC),r0
            0x0ce36810      ec02           mov.b @(r0,r14),r2
            0x0ce36812      2822           tst r2,r2
            0x0ce36814      0f89           bt 0x0ce36836
            0x0ce36816      00e3           mov 0x00,r3
            0x0ce36818      3365           mov r3,r5
            0x0ce3681a      3366           mov r3,r6
            0x0ce3681c      340e           mov.b r3,@(r0,r14)
            0x0ce3681e      37d3           mov.l @(0xDC,PC),r3
            0x0ce36820      0b43           jsr @r3
            0x0ce36822      e364           mov r14,r4
            0x0ce36824      6090           mov.w @(0xC0,PC),r0
            0x0ce36826      02e3           mov 0x02,r3
            0x0ce36828      20e5           mov 0x20,r5
            0x0ce3682a      ee04           mov.l @(r0,r14),r4
            0x0ce3682c      2e70           add 0x2E,r0
            0x0ce3682e      3404           mov.b r3,@(r0,r4)
            0x0ce36830      ab70           add 0xAB,r0
            0x0ce36832      5404           mov.b r5,@(r0,r4)
            0x0ce36834      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce367f4 (+0x20)
            0x0ce36836      264f           lds.l @r15+,pr
            0x0ce36838      0b00           rts 
            0x0ce3683a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3683c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37188)
            0x0ce3683c      4363           mov r4,r3
            0x0ce3683e      30d1           mov.l @(0xC0,PC),r1
            0x0ce36840      462f           mov.l r4,@-r15
            0x0ce36842      3684           mov.b @(0x6,r3),r0
            0x0ce36844      0c60           extu.b r0,r0
            0x0ce36846      0840           shll2 r0
            0x0ce36848      1e03           mov.l @(r0,r1),r3
            0x0ce3684a      2b43           jmp @r3
            0x0ce3684c      047f           add 0x04,r15
            ;-- aav.0x0ce3684e:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce3718c)
            0x0ce3684e      e62f           mov.l r14,@-r15
            0x0ce36850      224f           sts.l pr,@-r15
            0x0ce36852      28d3           mov.l @(0xA0,PC),r3
            0x0ce36854      0b43           jsr @r3
            0x0ce36856      436e           mov r4,r14
            0x0ce36858      0e60           exts.b r0,r0
            0x0ce3685a      1140           cmp/pz r0
            0x0ce3685c      0789           bt 0x0ce3686e
            0x0ce3685e      29d3           mov.l @(0xA4,PC),r3
            0x0ce36860      0b43           jsr @r3
            0x0ce36862      e364           mov r14,r4
            0x0ce36864      264f           lds.l @r15+,pr
            0x0ce36866      28d2           mov.l @(0xA0,PC),r2
            0x0ce36868      e364           mov r14,r4
            0x0ce3686a      2b42           jmp @r2
            0x0ce3686c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3684e (+0xe)
            0x0ce3686e      3a90           mov.w @(0x74,PC),r0
            0x0ce36870      ec03           mov.b @(r0,r14),r3
            0x0ce36872      3823           tst r3,r3
            0x0ce36874      0f89           bt 0x0ce36896
            0x0ce36876      00e3           mov 0x00,r3
            0x0ce36878      3365           mov r3,r5
            0x0ce3687a      3366           mov r3,r6
            0x0ce3687c      340e           mov.b r3,@(r0,r14)
            0x0ce3687e      1fd3           mov.l @(0x7C,PC),r3
            0x0ce36880      0b43           jsr @r3
            0x0ce36882      e364           mov r14,r4
            0x0ce36884      3090           mov.w @(0x60,PC),r0
            0x0ce36886      01e3           mov 0x01,r3
            0x0ce36888      21e5           mov 0x21,r5
            0x0ce3688a      ee04           mov.l @(r0,r14),r4
            0x0ce3688c      2e70           add 0x2E,r0
            0x0ce3688e      3404           mov.b r3,@(r0,r4)
            0x0ce36890      ab70           add 0xAB,r0
            0x0ce36892      5404           mov.b r5,@(r0,r4)
            0x0ce36894      540e           mov.b r5,@(r0,r14)
            ; CODE XREF from aav.0x0ce3684e (+0x26)
            0x0ce36896      264f           lds.l @r15+,pr
            0x0ce36898      0b00           rts 
            0x0ce3689a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3689c:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce37190)
            0x0ce3689c      e62f           mov.l r14,@-r15
            0x0ce3689e      224f           sts.l pr,@-r15
            0x0ce368a0      f47f           add 0xF4,r15
            0x0ce368a2      14d3           mov.l @(0x50,PC),r3
            0x0ce368a4      0b43           jsr @r3
            0x0ce368a6      436e           mov r4,r14
            0x0ce368a8      0e60           exts.b r0,r0
            0x0ce368aa      1140           cmp/pz r0
            0x0ce368ac      3089           bt 0x0ce36910               ; fcn.0ce368fa+0x16
            0x0ce368ae      1c90           mov.w @(0x38,PC),r0
            0x0ce368b0      ec03           mov.b @(r0,r14),r3
            0x0ce368b2      3823           tst r3,r3
            0x0ce368b4      108b           bf 0x0ce368d8
            0x0ce368b6      1990           mov.w @(0x32,PC),r0
            0x0ce368b8      1992           mov.w @(0x32,PC),r2
            0x0ce368ba      ed03           mov.w @(r0,r14),r3
            0x0ce368bc      3d63           extu.w r3,r3
            0x0ce368be      2823           tst r2,r3
            0x0ce368c0      0a89           bt 0x0ce368d8
            0x0ce368c2      1590           mov.w @(0x2A,PC),r0
            0x0ce368c4      ffe3           mov 0xFF,r3
            0x0ce368c6      0de5           mov 0x0D,r5
            0x0ce368c8      340e           mov.b r3,@(r0,r14)
            0x0ce368ca      10d3           mov.l @(0x40,PC),r3
            0x0ce368cc      0b43           jsr @r3
            0x0ce368ce      e364           mov r14,r4
            0x0ce368d0      0c7f           add 0x0C,r15
            0x0ce368d2      264f           lds.l @r15+,pr
            0x0ce368d4      0b00           rts 
            0x0ce368d6      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce3689c (+0x18, +0x24)
            0x0ce368d8      07d3           mov.l @(0x1C,PC),r3
            0x0ce368da      0b43           jsr @r3
            0x0ce368dc      e364           mov r14,r4
            0x0ce368de      0c7f           add 0x0C,r15
            0x0ce368e0      264f           lds.l @r15+,pr
            0x0ce368e2      0b00           rts 
            0x0ce368e4      f66e           mov.l @r15+,r14
            0x0ce368e6      4101           .word 0x0141
            0x0ce368e8      c801           .word 0x01C8
            0x0ce368ea      2505           mov.w r2,@(r0,r5)
            0x0ce368ec      4a03           .word 0x034A
            0x0ce368ee      0020           mov.b r0,@r0
            0x0ce368f0      d301           .word 0x01D3
            0x0ce368f2      0000           .word 0x0000
            0x0ce368f4      ee4d           ldc r13,r6_bank
            0x0ce368f6      038c           .word 0x8C03
            0x0ce368f8      4816           mov.l r4,@(0x20,r6)
/ (fcn) fcn.0ce368fa 90
|   fcn.0ce368fa ();
|           ; CALL XREF from fcn.0ce35ad4 (+0x6c)
|           0x0ce368fa      058c           .word 0x8C05
|           0x0ce368fc      c4fe           fcmp/eq fr12,fr14
|           0x0ce368fe      028c           .word 0x8C02
|           0x0ce36900      .dword 0x0ce37160 ; aav.0x0ce37160
|           0x0ce36904      8a21           xor r8,r1
|           0x0ce36906      058c           .word 0x8C05
|           0x0ce36908      6e17           mov.l r6,@(0x38,r7)
|           0x0ce3690a      058c           .word 0x8C05
|           0x0ce3690c      a832           sub r10,r2
|           0x0ce3690e      058c           .word 0x8C05
|           ; CODE XREF from aav.0x0ce3689c (+0x10)
|           0x0ce36910      8890           mov.w @(0x110,PC),r0
|           0x0ce36912      ec02           mov.b @(r0,r14),r2
|           0x0ce36914      2822           tst r2,r2
|           0x0ce36916      1989           bt 0x0ce3694c
|           0x0ce36918      00e3           mov 0x00,r3
|           0x0ce3691a      340e           mov.b r3,@(r0,r14)
|           0x0ce3691c      05e5           mov 0x05,r5
|           0x0ce3691e      45d3           mov.l @(0x114,PC),r3
|           0x0ce36920      0b43           jsr @r3
|           0x0ce36922      e364           mov r14,r4
|           0x0ce36924      8df3           fldi0 fr3
|           0x0ce36926      44c7           mova @(0x110,PC),r0
|           0x0ce36928      3aff           fmov fr3,@r15
|           0x0ce3692a      f365           mov r15,r5
|           0x0ce3692c      08f3           fmov @r0,fr3
|           0x0ce3692e      04e0           mov 0x04,r0
|           0x0ce36930      42d3           mov.l @(0x108,PC),r3
|           0x0ce36932      07e6           mov 0x07,r6
|           0x0ce36934      37ff           fmov fr3,@(r0,r15)
|           0x0ce36936      0b43           jsr @r3
|           0x0ce36938      e364           mov r14,r4
|           0x0ce3693a      7490           mov.w @(0xE8,PC),r0
|           0x0ce3693c      01e3           mov 0x01,r3
|           0x0ce3693e      22e5           mov 0x22,r5
|           0x0ce36940      ee04           mov.l @(r0,r14),r4
|           0x0ce36942      2e70           add 0x2E,r0
|           0x0ce36944      3404           mov.b r3,@(r0,r4)
|           0x0ce36946      ab70           add 0xAB,r0
|           0x0ce36948      5404           mov.b r5,@(r0,r4)
|           0x0ce3694a      540e           mov.b r5,@(r0,r14)
|           ; CODE XREF from fcn.0ce368fa (0xce36916)
|           0x0ce3694c      0c7f           add 0x0C,r15
|           0x0ce3694e      264f           lds.l @r15+,pr
|           0x0ce36950      0b00           rts 
\           0x0ce36952      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce36954:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d44)
            0x0ce36954      6890           mov.w @(0xD0,PC),r0
            0x0ce36956      01e3           mov 0x01,r3
            0x0ce36958      e62f           mov.l r14,@-r15
            0x0ce3695a      436e           mov r4,r14
            0x0ce3695c      340e           mov.b r3,@(r0,r14)
            0x0ce3695e      0d70           add 0x0D,r0
            0x0ce36960      ec00           mov.b @(r0,r14),r0
            0x0ce36962      e364           mov r14,r4
            0x0ce36964      36d1           mov.l @(0xD8,PC),r1
            0x0ce36966      0c60           extu.b r0,r0
            0x0ce36968      3fc9           and 0x3F,r0
            0x0ce3696a      0840           shll2 r0
            0x0ce3696c      1e03           mov.l @(r0,r1),r3
            0x0ce3696e      2b43           jmp @r3
            0x0ce36970      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce36972:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d48)
            0x0ce36972      462f           mov.l r4,@-r15
            0x0ce36974      4360           mov r4,r0
            0x0ce36976      0900           nop 
            0x0ce36978      5791           mov.w @(0xAE,PC),r1
            0x0ce3697a      32d2           mov.l @(0xC8,PC),r2
            0x0ce3697c      1c00           mov.b @(r0,r1),r0
            0x0ce3697e      0c60           extu.b r0,r0
            0x0ce36980      3fc9           and 0x3F,r0
            0x0ce36982      0840           shll2 r0
            0x0ce36984      2e03           mov.l @(r0,r2),r3
            0x0ce36986      2b43           jmp @r3
            0x0ce36988      047f           add 0x04,r15
            ;-- aav.0x0ce3698a:
            ; XREFS: UNKNOWN 0x0ce371a4  UNKNOWN 0x0ce371b8  UNKNOWN 0x0ce371c4  
            ; XREFS: UNKNOWN 0x0ce371c8  UNKNOWN 0x0ce371d0  UNKNOWN 0x0ce371d4  
            0x0ce3698a      4c90           mov.w @(0x98,PC),r0
            0x0ce3698c      4365           mov r4,r5
            0x0ce3698e      462f           mov.l r4,@-r15
            0x0ce36990      2dd3           mov.l @(0xB4,PC),r3
            0x0ce36992      4e04           mov.l @(r0,r4),r4
            0x0ce36994      2b43           jmp @r3
            0x0ce36996      047f           add 0x04,r15
            ;-- aav.0x0ce36998:
            ; XREFS: UNKNOWN 0x0ce371a8  UNKNOWN 0x0ce371ac  UNKNOWN 0x0ce371b0  
            ; XREFS: UNKNOWN 0x0ce371b4  UNKNOWN 0x0ce371bc  UNKNOWN 0x0ce371c0  
            0x0ce36998      4590           mov.w @(0x8A,PC),r0
            0x0ce3699a      e62f           mov.l r14,@-r15
            0x0ce3699c      436e           mov r4,r14
            0x0ce3699e      4593           mov.w @(0x8A,PC),r3
            0x0ce369a0      ee04           mov.l @(r0,r14),r4
            0x0ce369a2      4c33           add r4,r3
            0x0ce369a4      3184           mov.b @(0x1,r3),r0
            0x0ce369a6      0820           tst r0,r0
            0x0ce369a8      0589           bt 0x0ce369b6
            0x0ce369aa      3c90           mov.w @(0x78,PC),r0
            0x0ce369ac      e365           mov r14,r5
            0x0ce369ae      26d3           mov.l @(0x98,PC),r3
            0x0ce369b0      ee04           mov.l @(r0,r14),r4
            0x0ce369b2      2b43           jmp @r3
            0x0ce369b4      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce36998 (+0x10)
            0x0ce369b6      0b00           rts 
            0x0ce369b8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce369ba:
            ; UNKNOWN XREFS from fcn.0ce36d2a (0xce371cc, 0xce371d8)
            0x0ce369ba      3490           mov.w @(0x68,PC),r0
            0x0ce369bc      e62f           mov.l r14,@-r15
            0x0ce369be      436e           mov r4,r14
            0x0ce369c0      3493           mov.w @(0x68,PC),r3
            0x0ce369c2      ee04           mov.l @(r0,r14),r4
            0x0ce369c4      4c33           add r4,r3
            0x0ce369c6      3184           mov.b @(0x1,r3),r0
            0x0ce369c8      0820           tst r0,r0
            0x0ce369ca      0589           bt 0x0ce369d8
            0x0ce369cc      2b90           mov.w @(0x56,PC),r0
            0x0ce369ce      e365           mov r14,r5
            0x0ce369d0      1dd3           mov.l @(0x74,PC),r3
            0x0ce369d2      ee04           mov.l @(r0,r14),r4
            0x0ce369d4      2b43           jmp @r3
            0x0ce369d6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce369ba (+0x10)
            0x0ce369d8      0b00           rts 
            0x0ce369da      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce369dc:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d58)
            0x0ce369dc      00e0           mov 0x00,r0
            0x0ce369de      4580           mov.b r0,@(0x5,r4)
            0x0ce369e0      4780           mov.b r0,@(0x7,r4)
            0x0ce369e2      4680           mov.b r0,@(0x6,r4)
            0x0ce369e4      2390           mov.w @(0x46,PC),r0
            0x0ce369e6      4c00           mov.b @(r0,r4),r0
            0x0ce369e8      0088           cmp/eq 0x00,r0
            0x0ce369ea      048d           bt.s 0x0ce369f6
            0x0ce369ec      08e5           mov 0x08,r5
            0x0ce369ee      0188           cmp/eq 0x01,r0
            0x0ce369f0      0189           bt 0x0ce369f6
            0x0ce369f2      0288           cmp/eq 0x02,r0
            0x0ce369f4      018b           bf 0x0ce369fa
            ; CODE XREFS from aav.0x0ce369dc (+0xe, +0x14)
            0x0ce369f6      1b90           mov.w @(0x36,PC),r0
            0x0ce369f8      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce369dc (+0x18)
            0x0ce369fa      14d2           mov.l @(0x50,PC),r2
            0x0ce369fc      2b42           jmp @r2
            0x0ce369fe      1de5           mov 0x1D,r5
            ;-- aav.0x0ce36a00:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d5c)
            0x0ce36a00      00e0           mov 0x00,r0
            0x0ce36a02      4580           mov.b r0,@(0x5,r4)
            0x0ce36a04      4780           mov.b r0,@(0x7,r4)
            0x0ce36a06      4680           mov.b r0,@(0x6,r4)
            0x0ce36a08      1190           mov.w @(0x22,PC),r0
            0x0ce36a0a      4c00           mov.b @(r0,r4),r0
            0x0ce36a0c      0088           cmp/eq 0x00,r0
            0x0ce36a0e      048d           bt.s 0x0ce36a1a
            0x0ce36a10      08e5           mov 0x08,r5
            0x0ce36a12      0188           cmp/eq 0x01,r0
            0x0ce36a14      0189           bt 0x0ce36a1a
            0x0ce36a16      0288           cmp/eq 0x02,r0
            0x0ce36a18      018b           bf 0x0ce36a1e
            ; CODE XREFS from aav.0x0ce36a00 (+0xe, +0x14)
            0x0ce36a1a      0990           mov.w @(0x12,PC),r0
            0x0ce36a1c      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a00 (+0x18)
            0x0ce36a1e      0bd2           mov.l @(0x2C,PC),r2
            0x0ce36a20      2b42           jmp @r2
            0x0ce36a22      1de5           mov 0x1D,r5
            0x0ce36a24      4101           .word 0x0141
            0x0ce36a26      c801           .word 0x01C8
            0x0ce36a28      ea01           .word 0x01EA
            0x0ce36a2a      f701           mul.l r15,r1
            0x0ce36a2c      5001           .word 0x0150
            0x0ce36a2e      c904           .word 0x04C9
            0x0ce36a30      e901           .word 0x01E9
            0x0ce36a32      0000           .word 0x0000
            0x0ce36a34      0820           tst r0,r0
            0x0ce36a36      048c           .word 0x8C04
            0x0ce36a38      9224           mov.l r9,@r4
            0x0ce36a3a      0943           shlr2 r3
            0x0ce36a3c      b6da           mov.l @(0x2D8,PC),r10
            0x0ce36a3e      0f8c           .word 0x8C0F
            0x0ce36a40      .dword 0x0ce3716c ; aav.0x0ce3716c
            0x0ce36a44      .dword 0x0ce371a4 ; aav.0x0ce371a4
            0x0ce36a48      1ccc           tst.b 0x1C,@(r0,gbr)
            0x0ce36a4a      048c           .word 0x8C04
            0x0ce36a4c      d830           sub r13,r0
            0x0ce36a4e      058c           .word 0x8C05
            ;-- aav.0x0ce36a50:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d60)
            0x0ce36a50      00e5           mov 0x00,r5
            0x0ce36a52      5360           mov r5,r0
            0x0ce36a54      0900           nop 
            0x0ce36a56      4580           mov.b r0,@(0x5,r4)
            0x0ce36a58      4780           mov.b r0,@(0x7,r4)
            0x0ce36a5a      4680           mov.b r0,@(0x6,r4)
            0x0ce36a5c      3a90           mov.w @(0x74,PC),r0
            0x0ce36a5e      4c00           mov.b @(r0,r4),r0
            0x0ce36a60      0088           cmp/eq 0x00,r0
            0x0ce36a62      0589           bt 0x0ce36a70
            0x0ce36a64      0188           cmp/eq 0x01,r0
            0x0ce36a66      0689           bt 0x0ce36a76
            0x0ce36a68      0288           cmp/eq 0x02,r0
            0x0ce36a6a      0a89           bt 0x0ce36a82
            0x0ce36a6c      0fa0           bra 0x0ce36a8e
            0x0ce36a6e      0900           nop 
            ; CODE XREF from aav.0x0ce36a50 (+0x12)
            0x0ce36a70      3190           mov.w @(0x62,PC),r0
            0x0ce36a72      09a0           bra 0x0ce36a88
            0x0ce36a74      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a50 (+0x16)
            0x0ce36a76      2e90           mov.w @(0x5C,PC),r0
            0x0ce36a78      04e3           mov 0x04,r3
            0x0ce36a7a      3404           mov.b r3,@(r0,r4)
            0x0ce36a7c      ba70           add 0xBA,r0
            0x0ce36a7e      06a0           bra 0x0ce36a8e
            0x0ce36a80      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a50 (+0x1a)
            0x0ce36a82      2890           mov.w @(0x50,PC),r0
            0x0ce36a84      06e2           mov 0x06,r2
            0x0ce36a86      2404           mov.b r2,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a50 (+0x22)
            0x0ce36a88      2690           mov.w @(0x4C,PC),r0
            0x0ce36a8a      01e3           mov 0x01,r3
            0x0ce36a8c      3404           mov.b r3,@(r0,r4)
            ; CODE XREFS from aav.0x0ce36a50 (+0x1c, +0x2e)
            0x0ce36a8e      13d3           mov.l @(0x4C,PC),r3
            0x0ce36a90      2b43           jmp @r3
            0x0ce36a92      15e5           mov 0x15,r5
            ;-- aav.0x0ce36a94:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d64)
            0x0ce36a94      00e5           mov 0x00,r5
            0x0ce36a96      5360           mov r5,r0
            0x0ce36a98      0900           nop 
            0x0ce36a9a      4580           mov.b r0,@(0x5,r4)
            0x0ce36a9c      4780           mov.b r0,@(0x7,r4)
            0x0ce36a9e      4680           mov.b r0,@(0x6,r4)
            0x0ce36aa0      1890           mov.w @(0x30,PC),r0
            0x0ce36aa2      4c00           mov.b @(r0,r4),r0
            0x0ce36aa4      0088           cmp/eq 0x00,r0
            0x0ce36aa6      0589           bt 0x0ce36ab4
            0x0ce36aa8      0188           cmp/eq 0x01,r0
            0x0ce36aaa      0689           bt 0x0ce36aba
            0x0ce36aac      0288           cmp/eq 0x02,r0
            0x0ce36aae      0889           bt 0x0ce36ac2
            0x0ce36ab0      0da0           bra 0x0ce36ace
            0x0ce36ab2      0900           nop 
            ; CODE XREF from aav.0x0ce36a94 (+0x12)
            0x0ce36ab4      0f90           mov.w @(0x1E,PC),r0
            0x0ce36ab6      07a0           bra 0x0ce36ac8
            0x0ce36ab8      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a94 (+0x16)
            0x0ce36aba      0c90           mov.w @(0x18,PC),r0
            0x0ce36abc      04e2           mov 0x04,r2
            0x0ce36abe      03a0           bra 0x0ce36ac8
            0x0ce36ac0      2404           mov.b r2,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a94 (+0x1a)
            0x0ce36ac2      0890           mov.w @(0x10,PC),r0
            0x0ce36ac4      06e3           mov 0x06,r3
            0x0ce36ac6      3404           mov.b r3,@(r0,r4)
            ; CODE XREFS from aav.0x0ce36a94 (+0x22, +0x2a)
            0x0ce36ac8      0690           mov.w @(0xC,PC),r0
            0x0ce36aca      01e2           mov 0x01,r2
            0x0ce36acc      2404           mov.b r2,@(r0,r4)
            ; CODE XREF from aav.0x0ce36a94 (+0x1c)
            0x0ce36ace      03d2           mov.l @(0xC,PC),r2
            0x0ce36ad0      2b42           jmp @r2
            0x0ce36ad2      15e5           mov 0x15,r5
            0x0ce36ad4      c904           .word 0x04C9
            0x0ce36ad6      e901           .word 0x01E9
            0x0ce36ad8      a301           ocbp @r1
            0x0ce36ada      0000           .word 0x0000
            0x0ce36adc      d830           sub r13,r0
            0x0ce36ade      058c           .word 0x8C05
            ;-- aav.0x0ce36ae0:
            ; UNKNOWN XREF from fcn.0ce36d2a (0xce36d78)
            0x0ce36ae0      5090           mov.w @(0xA0,PC),r0
            0x0ce36ae2      4e05           mov.l @(r0,r4),r5
            0x0ce36ae4      4184           mov.b @(0x1,r4),r0
            0x0ce36ae6      0c60           extu.b r0,r0
            0x0ce36ae8      0188           cmp/eq 0x01,r0
            0x0ce36aea      438b           bf 0x0ce36b74
            0x0ce36aec      4b90           mov.w @(0x96,PC),r0
            0x0ce36aee      5c04           mov.b @(r0,r5),r4
            0x0ce36af0      4c60           extu.b r4,r0
            0x0ce36af2      2588           cmp/eq 0x25,r0
            0x0ce36af4      3c8d           bt.s 0x0ce36b70
            0x0ce36af6      0364           mov r0,r4
            0x0ce36af8      4360           mov r4,r0
            0x0ce36afa      0900           nop 
            0x0ce36afc      2688           cmp/eq 0x26,r0
            0x0ce36afe      3789           bt 0x0ce36b70
            0x0ce36b00      4360           mov r4,r0
            0x0ce36b02      0900           nop 
            0x0ce36b04      3d88           cmp/eq 0x3D,r0
            0x0ce36b06      3389           bt 0x0ce36b70
            0x0ce36b08      4360           mov r4,r0
            0x0ce36b0a      0900           nop 
            0x0ce36b0c      3e88           cmp/eq 0x3E,r0
            0x0ce36b0e      2f89           bt 0x0ce36b70
            0x0ce36b10      4360           mov r4,r0
            0x0ce36b12      0900           nop 
            0x0ce36b14      4188           cmp/eq 0x41,r0
            0x0ce36b16      2b89           bt 0x0ce36b70
            0x0ce36b18      4360           mov r4,r0
            0x0ce36b1a      0900           nop 
            0x0ce36b1c      4288           cmp/eq 0x42,r0
            0x0ce36b1e      2789           bt 0x0ce36b70
            0x0ce36b20      4360           mov r4,r0
            0x0ce36b22      0900           nop 
            0x0ce36b24      4388           cmp/eq 0x43,r0
            0x0ce36b26      2389           bt 0x0ce36b70
            0x0ce36b28      4360           mov r4,r0
            0x0ce36b2a      0900           nop 
            0x0ce36b2c      4488           cmp/eq 0x44,r0
            0x0ce36b2e      1f89           bt 0x0ce36b70
            0x0ce36b30      4360           mov r4,r0
            0x0ce36b32      0900           nop 
            0x0ce36b34      4c88           cmp/eq 0x4C,r0
            0x0ce36b36      1b89           bt 0x0ce36b70
            0x0ce36b38      4360           mov r4,r0
            0x0ce36b3a      0900           nop 
            0x0ce36b3c      4d88           cmp/eq 0x4D,r0
            0x0ce36b3e      1789           bt 0x0ce36b70
            0x0ce36b40      4360           mov r4,r0
            0x0ce36b42      0900           nop 
            0x0ce36b44      4e88           cmp/eq 0x4E,r0
            0x0ce36b46      1389           bt 0x0ce36b70
            0x0ce36b48      4360           mov r4,r0
            0x0ce36b4a      0900           nop 
            0x0ce36b4c      4f88           cmp/eq 0x4F,r0
            0x0ce36b4e      0f89           bt 0x0ce36b70
            0x0ce36b50      4360           mov r4,r0
            0x0ce36b52      0900           nop 
            0x0ce36b54      5488           cmp/eq 0x54,r0
            0x0ce36b56      0b89           bt 0x0ce36b70
            0x0ce36b58      4360           mov r4,r0
            0x0ce36b5a      0900           nop 
            0x0ce36b5c      5588           cmp/eq 0x55,r0
            0x0ce36b5e      0789           bt 0x0ce36b70
            0x0ce36b60      4360           mov r4,r0
            0x0ce36b62      0900           nop 
            0x0ce36b64      5688           cmp/eq 0x56,r0
            0x0ce36b66      0389           bt 0x0ce36b70
            0x0ce36b68      4360           mov r4,r0
            0x0ce36b6a      0900           nop 
            0x0ce36b6c      5788           cmp/eq 0x57,r0
            0x0ce36b6e      018b           bf 0x0ce36b74
            ; XREFS: CODE 0x0ce36af4  CODE 0x0ce36afe  CODE 0x0ce36b06  
            ; XREFS: CODE 0x0ce36b0e  CODE 0x0ce36b16  CODE 0x0ce36b1e  
            ; XREFS: CODE 0x0ce36b26  CODE 0x0ce36b2e  CODE 0x0ce36b36  
            ; XREFS: CODE 0x0ce36b3e  CODE 0x0ce36b46  CODE 0x0ce36b4e  
            ; XREFS: CODE 0x0ce36b56  CODE 0x0ce36b5e  CODE 0x0ce36b66  
            0x0ce36b70      0b00           rts 
            0x0ce36b72      01e0           mov 0x01,r0
            ; CODE XREFS from aav.0x0ce36ae0 (+0xa, +0x8e)
            0x0ce36b74      00e0           mov 0x00,r0
            0x0ce36b76      0b00           rts 
            0x0ce36b78      0900           nop 
            ;-- aav.0x0ce36b7a:
            ; XREFS: UNKNOWN 0x0ce326b4  UNKNOWN 0x0ce32c04  UNKNOWN 0x0ce33530  
            ; XREFS: UNKNOWN 0x0ce337b4  UNKNOWN 0x0ce33f20  UNKNOWN 0x0ce34310  
            ; XREFS: UNKNOWN 0x0ce34e90  UNKNOWN 0x0ce351e0  UNKNOWN 0x0ce355a4  
            0x0ce36b7a      0390           mov.w @(0x6,PC),r0
            0x0ce36b7c      02d3           mov.l @(0x8,PC),r3
            0x0ce36b7e      4e04           mov.l @(r0,r4),r4
            0x0ce36b80      2b43           jmp @r3
            0x0ce36b82      31e5           mov 0x31,r5
            0x0ce36b84      c801           .word 0x01C8
            0x0ce36b86      a101           .word 0x01A1
            0x0ce36b88      3a22           xor r3,r2
            0x0ce36b8a      048c           .word 0x8C04
            ;-- aav.0x0ce36b8c:
            ; UNKNOWN XREF from fcn.0ce342fe (+0x1a)
            0x0ce36b8c      0000           .word 0x0000
            0x0ce36b8e      0000           .word 0x0000
            0x0ce36b90      0000           .word 0x0000
            0x0ce36b92      0000           .word 0x0000
            0x0ce36b94      0000           .word 0x0000
            0x0ce36b96      0000           .word 0x0000
            0x0ce36b98      0000           .word 0x0000
            0x0ce36b9a      0000           .word 0x0000
            0x0ce36b9c      0000           .word 0x0000
            0x0ce36b9e      0000           .word 0x0000
            0x0ce36ba0      0000           .word 0x0000
            0x0ce36ba2      0000           .word 0x0000
            0x0ce36ba4      0000           .word 0x0000
            0x0ce36ba6      0000           .word 0x0000
            0x0ce36ba8      0000           .word 0x0000
            0x0ce36baa      0000           .word 0x0000
            0x0ce36bac      0100           .word 0x0001
            0x0ce36bae      0000           .word 0x0000
            0x0ce36bb0      0100           .word 0x0001
            0x0ce36bb2      0000           .word 0x0000
            0x0ce36bb4      0100           .word 0x0001
            0x0ce36bb6      0000           .word 0x0000
            0x0ce36bb8      0100           .word 0x0001
            0x0ce36bba      0000           .word 0x0000
            0x0ce36bbc      0200           stc sr,r0
            0x0ce36bbe      0000           .word 0x0000
            0x0ce36bc0      0200           stc sr,r0
/ (fcn) fcn.0ce36bc2 46
|   fcn.0ce36bc2 ();
|           ; CALL XREF from aav.0x0ce35dc8 (+0x40)
|           0x0ce36bc2      0000           .word 0x0000
|           0x0ce36bc4      0200           stc sr,r0
|           0x0ce36bc6      0000           .word 0x0000
|           0x0ce36bc8      0200           stc sr,r0
|           0x0ce36bca      0000           .word 0x0000
|           0x0ce36bcc      0200           stc sr,r0
|           0x0ce36bce      0000           .word 0x0000
|           ;-- aav.0x0ce36bd0:
|           ; UNKNOWN XREF from fcn.0ce342fe (+0x1e)
|           ; UNKNOWN XREF from fcn.0ce3555c (+0x54)
|           0x0ce36bd0      0e00           mov.l @(r0,r0),r0
|           0x0ce36bd2      0000           .word 0x0000
|           0x0ce36bd4      1100           .word 0x0011
|           0x0ce36bd6      0000           .word 0x0000
|           0x0ce36bd8      1400           mov.b r1,@(r0,r0)
|           0x0ce36bda      0000           .word 0x0000
|           0x0ce36bdc      1700           mul.l r1,r0
|           0x0ce36bde      0000           .word 0x0000
|           0x0ce36be0      1a00           sts macl,r0
|           0x0ce36be2      0000           .word 0x0000
|           0x0ce36be4      1d00           mov.w @(r0,r1),r0
|           0x0ce36be6      0000           .word 0x0000
|           ;-- aav.0x0ce36be8:
|           ; UNKNOWN XREF from fcn.0ce342fe (+0x22)
|           ; UNKNOWN XREF from fcn.0ce3555c (+0x58)
|           0x0ce36be8      2000           .word 0x0020
|           0x0ce36bea      0000           .word 0x0000
|           0x0ce36bec      2300           braf r0
\           0x0ce36bee      0000           .word 0x0000
            0x0ce36bf0      2600           mov.l r2,@(r0,r0)
            0x0ce36bf2      0000           .word 0x0000
            0x0ce36bf4      2900           movt r0
            0x0ce36bf6      0000           .word 0x0000
            0x0ce36bf8      2c00           mov.b @(r0,r2),r0
            0x0ce36bfa      0000           .word 0x0000
            0x0ce36bfc      2f00           mac.l @r2+,@r0+
            0x0ce36bfe      0000           .word 0x0000
            ;-- aav.0x0ce36c00:
            ; UNKNOWN XREF from fcn.0ce3555c (+0x50)
            0x0ce36c00      0000           .word 0x0000
            0x0ce36c02      0000           .word 0x0000
            0x0ce36c04      0000           .word 0x0000
            0x0ce36c06      0000           .word 0x0000
            0x0ce36c08      0000           .word 0x0000
            0x0ce36c0a      0000           .word 0x0000
            0x0ce36c0c      0000           .word 0x0000
            0x0ce36c0e      0000           .word 0x0000
            0x0ce36c10      0000           .word 0x0000
            0x0ce36c12      0000           .word 0x0000
            0x0ce36c14      0000           .word 0x0000
            0x0ce36c16      0000           .word 0x0000
            0x0ce36c18      0000           .word 0x0000
            0x0ce36c1a      0000           .word 0x0000
            0x0ce36c1c      0000           .word 0x0000
            0x0ce36c1e      0000           .word 0x0000
            0x0ce36c20      0000           .word 0x0000
            0x0ce36c22      0000           .word 0x0000
            0x0ce36c24      0000           .word 0x0000
            0x0ce36c26      0000           .word 0x0000
            0x0ce36c28      0000           .word 0x0000
            0x0ce36c2a      0000           .word 0x0000
            0x0ce36c2c      0100           .word 0x0001
            0x0ce36c2e      0000           .word 0x0000
            0x0ce36c30      0100           .word 0x0001
            0x0ce36c32      0000           .word 0x0000
            0x0ce36c34      0100           .word 0x0001
            0x0ce36c36      0000           .word 0x0000
            0x0ce36c38      0100           .word 0x0001
            0x0ce36c3a      0000           .word 0x0000
            0x0ce36c3c      0100           .word 0x0001
            0x0ce36c3e      0000           .word 0x0000
            0x0ce36c40      0200           stc sr,r0
            0x0ce36c42      0000           .word 0x0000
            ;-- aav.0x0ce36c44:
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x1d2)
            0x0ce36c44      0102           .word 0x0201
            0x0ce36c46      0102           .word 0x0201
            ;-- aav.0x0ce36c48:
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x1d6)
            0x0ce36c48      ffff           .word 0xFFFF
            0x0ce36c4a      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c4c:
            ; UNKNOWN XREFS from aav.0x0ce30912 (+0x9a, +0x1da)
            0x0ce36c4c      ffff           .word 0xFFFF
            0x0ce36c4e      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c50:
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x306)
            0x0ce36c50      0102           .word 0x0201
            0x0ce36c52      0102           .word 0x0201
            ;-- aav.0x0ce36c54:
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x30a)
            0x0ce36c54      ffff           .word 0xFFFF
            0x0ce36c56      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c58:
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x30e)
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0xe6)
            0x0ce36c58      ffff           .word 0xFFFF
            0x0ce36c5a      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c5c:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x1ea)
            0x0ce36c5c      0102           .word 0x0201
            0x0ce36c5e      0102           .word 0x0201
            ;-- aav.0x0ce36c60:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x1fa)
            0x0ce36c60      ffff           .word 0xFFFF
            0x0ce36c62      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c64:
            ; UNKNOWN XREFS from aav.0x0ce30c72 (+0x1f2, +0x2fe)
            0x0ce36c64      ffff           .word 0xFFFF
            0x0ce36c66      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c68:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x406)
            0x0ce36c68      0102           .word 0x0201
            0x0ce36c6a      0102           .word 0x0201
            ;-- aav.0x0ce36c6c:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x40e)
            0x0ce36c6c      ffff           .word 0xFFFF
            0x0ce36c6e      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c70:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x412)
            0x0ce36c70      ffff           .word 0xFFFF
            0x0ce36c72      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c74:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x1ee)
            0x0ce36c74      0102           .word 0x0201
            0x0ce36c76      0102           .word 0x0201
            ;-- aav.0x0ce36c78:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x1fe)
            0x0ce36c78      ff02           mac.l @r15+,@r2+
            0x0ce36c7a      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce36c7c:
            ; UNKNOWN XREFS from aav.0x0ce30c72 (+0x1f6, +0x302)
            0x0ce36c7c      ffff           .word 0xFFFF
            0x0ce36c7e      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c80:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x40a)
            0x0ce36c80      0102           .word 0x0201
            0x0ce36c82      0102           .word 0x0201
            ;-- aav.0x0ce36c84:
            ; UNKNOWN XREF from aav.0x0ce30c72 (+0x402)
            0x0ce36c84      ff02           mac.l @r15+,@r2+
            0x0ce36c86      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce36c88:
            ; UNKNOWN XREF from aav.0x0ce31116 (+0x4a)
            0x0ce36c88      ffff           .word 0xFFFF
            0x0ce36c8a      ffff           .word 0xFFFF
            ;-- aav.0x0ce36c8c:
            ; UNKNOWN XREF from fcn.0ce3049c (+0x54)
            0x0ce36c8c      0300           bsrf r0
            0x0ce36c8e      0010           mov.l r0,@(0x0,r0)
            0x0ce36c90      0200           stc sr,r0
            0x0ce36c92      0000           .word 0x0000
            0x0ce36c94      0008           .word 0x0800
            0x0ce36c96      0010           mov.l r0,@(0x0,r0)
            0x0ce36c98      0018           mov.l r0,@(0x0,r8)
            0x0ce36c9a      0003           .word 0x0300
            ;-- aav.0x0ce36c9c:
            ; UNKNOWN XREF from fcn.0ce3049c (+0x64)
            0x0ce36c9c      0400           mov.b r0,@(r0,r0)
            0x0ce36c9e      0000           .word 0x0000
            0x0ce36ca0      0300           bsrf r0
            0x0ce36ca2      0000           .word 0x0000
            0x0ce36ca4      0003           .word 0x0300
            ;-- aav.0x0ce36ca6:
            ; UNKNOWN XREF from fcn.0ce3049c (+0x6c)
            0x0ce36ca6      0500           mov.w r0,@(r0,r0)
            0x0ce36ca8      0010           mov.l r0,@(0x0,r0)
            0x0ce36caa      0400           mov.b r0,@(r0,r0)
            0x0ce36cac      0000           .word 0x0000
            0x0ce36cae      0004           .word 0x0400
            0x0ce36cb0      0014           mov.l r0,@(0x0,r4)
            0x0ce36cb2      0010           mov.l r0,@(0x0,r0)
            0x0ce36cb4      0018           mov.l r0,@(0x0,r8)
            0x0ce36cb6      0008           .word 0x0800
            0x0ce36cb8      6000           .word 0x0060
            ;-- aav.0x0ce36cba:
            ; UNKNOWN XREF from fcn.0ce305e0 (+0x44)
            ; UNKNOWN XREF from fcn.0ce30838 (+0x60)
            0x0ce36cba      0400           mov.b r0,@(r0,r0)
            0x0ce36cbc      0091           mov.w @(0x0,PC),r1
            0x0ce36cbe      0500           mov.w r0,@(r0,r0)
            0x0ce36cc0      0000           .word 0x0000
            0x0ce36cc2      0003           .word 0x0300
            ;-- aav.0x0ce36cc4:
            ; UNKNOWN XREF from fcn.0ce305e0 (+0x50)
            0x0ce36cc4      0300           bsrf r0
            0x0ce36cc6      0010           mov.l r0,@(0x0,r0)
            0x0ce36cc8      0600           mov.l r0,@(r0,r0)
            0x0ce36cca      0000           .word 0x0000
            0x0ce36ccc      0008           .word 0x0800
            0x0ce36cce      0010           mov.l r0,@(0x0,r0)
            0x0ce36cd0      0018           mov.l r0,@(0x0,r8)
            0x0ce36cd2      6000           .word 0x0060
            ;-- aav.0x0ce36cd4:
            ; UNKNOWN XREF from fcn.0ce305e0 (+0x5c)
            ; UNKNOWN XREF from fcn.0ce30838 (+0x68)
            0x0ce36cd4      0400           mov.b r0,@(r0,r0)
            0x0ce36cd6      0091           mov.w @(0x0,PC),r1
            0x0ce36cd8      1100           .word 0x0011
            0x0ce36cda      0000           .word 0x0000
            0x0ce36cdc      6000           .word 0x0060
            ;-- aav.0x0ce36cde:
            ; UNKNOWN XREF from fcn.0ce30716 (+0x52)
            0x0ce36cde      0300           bsrf r0
            0x0ce36ce0      0011           mov.l r0,@(0x0,r1)
            0x0ce36ce2      1200           stc gbr,r0
            0x0ce36ce4      0000           .word 0x0000
            0x0ce36ce6      0004           .word 0x0400
            0x0ce36ce8      0010           mov.l r0,@(0x0,r0)
            0x0ce36cea      0014           mov.l r0,@(0x0,r4)
            0x0ce36cec      4000           .word 0x0040
            ;-- aav.0x0ce36cee:
            ; UNKNOWN XREF from fcn.0ce30716 (+0x5e)
            0x0ce36cee      0300           bsrf r0
            0x0ce36cf0      0010           mov.l r0,@(0x0,r0)
            0x0ce36cf2      1300           .word 0x0013
            0x0ce36cf4      0000           .word 0x0000
            0x0ce36cf6      0010           mov.l r0,@(0x0,r0)
            0x0ce36cf8      0018           mov.l r0,@(0x0,r8)
            0x0ce36cfa      0008           .word 0x0800
            0x0ce36cfc      0003           .word 0x0300
            ;-- aav.0x0ce36cfe:
            ; UNKNOWN XREF from fcn.0ce30716 (+0x66)
            ; UNKNOWN XREF from aav.0x0ce30912 (+0x8e)
            0x0ce36cfe      0400           mov.b r0,@(r0,r0)
            0x0ce36d00      0091           mov.w @(0x0,PC),r1
            0x0ce36d02      1400           mov.b r1,@(r0,r0)
            0x0ce36d04      0000           .word 0x0000
            0x0ce36d06      6000           .word 0x0060
            ;-- aav.0x0ce36d08:
            ; UNKNOWN XREF from fcn.0ce30838 (+0x48)
            0x0ce36d08      0300           bsrf r0
            0x0ce36d0a      0010           mov.l r0,@(0x0,r0)
            0x0ce36d0c      0000           .word 0x0000
            0x0ce36d0e      0000           .word 0x0000
            0x0ce36d10      0010           mov.l r0,@(0x0,r0)
            0x0ce36d12      0014           mov.l r0,@(0x0,r4)
            0x0ce36d14      0004           .word 0x0400
            0x0ce36d16      0002           .word 0x0200
            ;-- aav.0x0ce36d18:
            ; UNKNOWN XREF from aav.0x0ce3001c (+0xbc)
            0x0ce36d18      .dword 0x0ce30912 ; aav.0x0ce30912
            0x0ce36d1c      .dword 0x0ce3001c ; aav.0x0ce3001c
            0x0ce36d20      .dword 0x0ce31116 ; aav.0x0ce31116
            0x0ce36d24      .dword 0x0ce31746 ; aav.0x0ce31746
            0x0ce36d28      .dword 0x0ce3186e ; aav.0x0ce3186e
/ (fcn) fcn.0ce36d2a 1202
|   fcn.0ce36d2a ();
|           ; CALL XREF from aav.0x0ce35f32 (+0x3e)
|           0x0ce36d2a      e30c           .word 0x0CE3
|           0x0ce36d2c      .dword 0x0ce31a28 ; aav.0x0ce31a28
|           0x0ce36d30      .dword 0x0ce31a2e ; aav.0x0ce31a2e
|           0x0ce36d34      .dword 0x0ce31af2 ; aav.0x0ce31af2
|           0x0ce36d38      .dword 0x0ce31b48 ; aav.0x0ce31b48
|           0x0ce36d3c      .dword 0x0ce35f32 ; aav.0x0ce35f32
|           0x0ce36d40      .dword 0x0ce362c6 ; aav.0x0ce362c6
|           0x0ce36d44      .dword 0x0ce36954 ; aav.0x0ce36954
|           0x0ce36d48      .dword 0x0ce36972 ; aav.0x0ce36972
|           0x0ce36d4c      .dword 0x0ce308da ; aav.0x0ce308da
|           0x0ce36d50      .dword 0x0ce35dc8 ; aav.0x0ce35dc8
|           0x0ce36d54      .dword 0x0ce3178c ; aav.0x0ce3178c
|           0x0ce36d58      .dword 0x0ce369dc ; aav.0x0ce369dc
|           0x0ce36d5c      .dword 0x0ce36a00 ; aav.0x0ce36a00
|           0x0ce36d60      .dword 0x0ce36a50 ; aav.0x0ce36a50
|           0x0ce36d64      .dword 0x0ce36a94 ; aav.0x0ce36a94
|           0x0ce36d68      0000           .word 0x0000
|           0x0ce36d6a      0000           .word 0x0000
|           0x0ce36d6c      0000           .word 0x0000
|           0x0ce36d6e      0000           .word 0x0000
|           0x0ce36d70      0000           .word 0x0000
|           0x0ce36d72      0000           .word 0x0000
|           0x0ce36d74      0000           .word 0x0000
|           0x0ce36d76      0000           .word 0x0000
|           0x0ce36d78      .dword 0x0ce36ae0 ; aav.0x0ce36ae0
|           0x0ce36d7c      0000           .word 0x0000
|           0x0ce36d7e      0000           .word 0x0000
|           0x0ce36d80      0000           .word 0x0000
|           0x0ce36d82      0000           .word 0x0000
|           0x0ce36d84      0000           .word 0x0000
|           0x0ce36d86      0000           .word 0x0000
|           ;-- aav.0x0ce36d88:
|           ; UNKNOWN XREF from aav.0x0ce31116 (+0x56)
|           0x0ce36d88      .dword 0x0ce30c72 ; aav.0x0ce30c72
|           0x0ce36d8c      .dword 0x0ce310ea ; aav.0x0ce310ea
|           0x0ce36d90      .dword 0x0ce310d8 ; aav.0x0ce310d8
|           0x0ce36d94      .dword 0x0ce31112 ; aav.0x0ce31112
|           ;-- aav.0x0ce36d98:
|           ; UNKNOWN XREF from aav.0x0ce31746 (+0x42)
|           0x0ce36d98      .dword 0x0ce31394 ; aav.0x0ce31394
|           0x0ce36d9c      .dword 0x0ce316f4 ; aav.0x0ce316f4
|           0x0ce36da0      .dword 0x0ce3171e ; aav.0x0ce3171e
|           0x0ce36da4      .dword 0x0ce31736 ; aav.0x0ce31736
|           ;-- aav.0x0ce36da8:
|           ; UNKNOWN XREF from aav.0x0ce3186e (+0x42)
|           0x0ce36da8      .dword 0x0ce318b4 ; aav.0x0ce318b4
|           0x0ce36dac      .dword 0x0ce31946 ; aav.0x0ce31946
|           0x0ce36db0      .dword 0x0ce31a06 ; aav.0x0ce31a06
|           ;-- aav.0x0ce36db4:
|           ; UNKNOWN XREF from aav.0x0ce31af2 (+0x3a)
|           0x0ce36db4      .dword 0x0ce31a40 ; aav.0x0ce31a40
|           0x0ce36db8      .dword 0x0ce31a4e ; aav.0x0ce31a4e
|           ;-- aav.0x0ce36dbc:
|           ; UNKNOWN XREF from aav.0x0ce31af2 (+0x42)
|           0x0ce36dbc      .dword 0x0ce31a6e ; aav.0x0ce31a6e
|           0x0ce36dc0      .dword 0x0ce31a8e ; aav.0x0ce31a8e
|           ;-- aav.0x0ce36dc4:
|           ; UNKNOWN XREF from aav.0x0ce31af2 (+0x46)
|           0x0ce36dc4      .dword 0x0ce31aa6 ; aav.0x0ce31aa6
|           0x0ce36dc8      .dword 0x0ce31ab4 ; aav.0x0ce31ab4
|           ;-- aav.0x0ce36dcc:
|           ; UNKNOWN XREF from aav.0x0ce31af2 (+0x4a)
|           0x0ce36dcc      .dword 0x0ce31acc ; aav.0x0ce31acc
|           0x0ce36dd0      .dword 0x0ce31ada ; aav.0x0ce31ada
|           ;-- aav.0x0ce36dd4:
|           ; UNKNOWN XREF from aav.0x0ce31af2 (+0x52)
|           0x0ce36dd4      .dword 0x0ce31a94 ; aav.0x0ce31a94
|           0x0ce36dd8      .dword 0x0ce31aba ; aav.0x0ce31aba
|           0x0ce36ddc      .dword 0x0ce31a94 ; aav.0x0ce31a94
|           0x0ce36de0      .dword 0x0ce31ae0 ; aav.0x0ce31ae0
|           0x0ce36de4      .dword 0x0ce31aba ; aav.0x0ce31aba
|           ;-- aav.0x0ce36de8:
|           ; UNKNOWN XREF from aav.0x0ce31c0e (+0x4e)
|           0x0ce36de8      .dword 0x0ce31b96 ; aav.0x0ce31b96
|           0x0ce36dec      .dword 0x0ce31eae ; aav.0x0ce31eae
|           0x0ce36df0      .dword 0x0ce3216e ; aav.0x0ce3216e
|           0x0ce36df4      .dword 0x0ce322ba ; aav.0x0ce322ba
|           0x0ce36df8      .dword 0x0ce32e90 ; aav.0x0ce32e90
|           0x0ce36dfc      .dword 0x0ce33954 ; aav.0x0ce33954
|           0x0ce36e00      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e04      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e08      .dword 0x0ce34904 ; aav.0x0ce34904
|           0x0ce36e0c      .dword 0x0ce34aae ; aav.0x0ce34aae
|           0x0ce36e10      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e14      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e18      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e1c      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e20      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e24      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e28      .dword 0x0ce34622 ; aav.0x0ce34622
|           0x0ce36e2c      .dword 0x0ce34b02 ; aav.0x0ce34b02
|           0x0ce36e30      .dword 0x0ce357f8 ; aav.0x0ce357f8
|           0x0ce36e34      .dword 0x0ce358da ; aav.0x0ce358da
|           0x0ce36e38      .dword 0x0ce35a08 ; aav.0x0ce35a08
|           0x0ce36e3c      .dword 0x0ce35ce0 ; aav.0x0ce35ce0
|           ;-- aav.0x0ce36e40:
|           ; UNKNOWN XREF from aav.0x0ce31c0e (+0x5a)
|           0x0ce36e40      .dword 0x0ce31ba8 ; aav.0x0ce31ba8
|           0x0ce36e44      .dword 0x0ce31d1c ; aav.0x0ce31d1c
|           ;-- aav.0x0ce36e48:
|           ; UNKNOWN XREF from aav.0x0ce31c0e (+0x5e)
|           0x0ce36e48      .dword 0x0ce31bba ; aav.0x0ce31bba
|           0x0ce36e4c      .dword 0x0ce31c0e ; aav.0x0ce31c0e
|           ;-- aav.0x0ce36e50:
|           ; UNKNOWN XREF from aav.0x0ce31d1c (+0x2c)
|           0x0ce36e50      .dword 0x0ce31d4c ; aav.0x0ce31d4c
|           0x0ce36e54      .dword 0x0ce31e1e ; aav.0x0ce31e1e
|           ;-- aav.0x0ce36e58:
|           ; UNKNOWN XREF from fcn.0ce31f92 (0xce31fa4)
|           0x0ce36e58      .dword 0x0ce31ec0 ; aav.0x0ce31ec0
|           0x0ce36e5c      .dword 0x0ce31ffa ; aav.0x0ce31ffa
|           ;-- aav.0x0ce36e60:
|           ; UNKNOWN XREF from fcn.0ce31f92 (0xce31fa8)
|           0x0ce36e60      .dword 0x0ce31ed2 ; aav.0x0ce31ed2
|           0x0ce36e64      .dword 0x0ce31f26 ; aav.0x0ce31f26
|           ;-- aav.0x0ce36e68:
|           ; UNKNOWN XREF from aav.0x0ce3200c (+0xd0)
|           0x0ce36e68      .dword 0x0ce3200c ; aav.0x0ce3200c
|           0x0ce36e6c      .dword 0x0ce32112 ; aav.0x0ce32112
|           ;-- aav.0x0ce36e70:
|           ; UNKNOWN XREF from aav.0x0ce321d0 (+0x68)
|           0x0ce36e70      .dword 0x0ce32180 ; aav.0x0ce32180
|           0x0ce36e74      .dword 0x0ce321d0 ; aav.0x0ce321d0
|           ;-- aav.0x0ce36e78:
|           ; UNKNOWN XREF from aav.0x0ce32304 (+0x2c)
|           0x0ce36e78      0010           mov.l r0,@(0x0,r0)
|           0x0ce36e7a      0014           mov.l r0,@(0x0,r4)
|           0x0ce36e7c      0014           mov.l r0,@(0x0,r4)
|           0x0ce36e7e      001c           mov.l r0,@(0x0,r12)
|           0x0ce36e80      0018           mov.l r0,@(0x0,r8)
|           0x0ce36e82      0038           cmp/eq r0,r8
|           ;-- aav.0x0ce36e84:
|           ; UNKNOWN XREF from aav.0x0ce32304 (+0x3c)
|           0x0ce36e84      .dword 0x0ce322cc ; aav.0x0ce322cc
|           0x0ce36e88      .dword 0x0ce32864 ; aav.0x0ce32864
|           ;-- aav.0x0ce36e8c:
|           ; UNKNOWN XREF from aav.0x0ce32304 (+0x40)
|           0x0ce36e8c      .dword 0x0ce322de ; aav.0x0ce322de
|           0x0ce36e90      .dword 0x0ce32304 ; aav.0x0ce32304
|           0x0ce36e94      .dword 0x0ce323b2 ; aav.0x0ce323b2
|           0x0ce36e98      .dword 0x0ce32434 ; aav.0x0ce32434
|           0x0ce36e9c      .dword 0x0ce324f6 ; aav.0x0ce324f6
|           0x0ce36ea0      .dword 0x0ce3261a ; aav.0x0ce3261a
|           0x0ce36ea4      .dword 0x0ce326d0 ; aav.0x0ce326d0
|           0x0ce36ea8      .dword 0x0ce327a0 ; aav.0x0ce327a0
|           0x0ce36eac      .dword 0x0ce3281a ; aav.0x0ce3281a
|           ;-- aav.0x0ce36eb0:
|           ; UNKNOWN XREF from fcn.0ce32528 (+0x70)
|           0x0ce36eb0      0080           mov.b r0,@(0x0,r0)
|           0x0ce36eb2      0500           mov.w r0,@(r0,r0)
|           0x0ce36eb4      0080           mov.b r0,@(0x0,r0)
|           0x0ce36eb6      0e00           mov.l @(r0,r0),r0
|           0x0ce36eb8      0040           shll r0
|           0x0ce36eba      ffff           .word 0xFFFF
|           0x0ce36ebc      0080           mov.b r0,@(0x0,r0)
|           0x0ce36ebe      0300           bsrf r0
|           0x0ce36ec0      0080           mov.b r0,@(0x0,r0)
|           0x0ce36ec2      1000           .word 0x0010
|           0x0ce36ec4      0080           mov.b r0,@(0x0,r0)
|           0x0ce36ec6      ffff           .word 0xFFFF
|           ;-- aav.0x0ce36ec8:
|           ; UNKNOWN XREF from aav.0x0ce328c4 (+0xb4)
|           0x0ce36ec8      .dword 0x0ce32876 ; aav.0x0ce32876
|           0x0ce36ecc      .dword 0x0ce328c4 ; aav.0x0ce328c4
|           0x0ce36ed0      .dword 0x0ce329b8 ; aav.0x0ce329b8
|           0x0ce36ed4      .dword 0x0ce32a0c ; aav.0x0ce32a0c
|           0x0ce36ed8      .dword 0x0ce32aec ; aav.0x0ce32aec
|           0x0ce36edc      .dword 0x0ce32c0c ; aav.0x0ce32c0c
|           0x0ce36ee0      .dword 0x0ce32c8a ; aav.0x0ce32c8a
|           0x0ce36ee4      .dword 0x0ce32d7c ; aav.0x0ce32d7c
|           0x0ce36ee8      .dword 0x0ce32df6 ; aav.0x0ce32df6
|           0x0ce36eec      .dword 0x0ce32e1c ; aav.0x0ce32e1c
|           ;-- aav.0x0ce36ef0:
|           ; UNKNOWN XREF from aav.0x0ce32a0c (+0xd0)
|           0x0ce36ef0      0000           .word 0x0000
|           0x0ce36ef2      0400           mov.b r0,@(r0,r0)
|           0x0ce36ef4      0080           mov.b r0,@(0x0,r0)
|           0x0ce36ef6      0d00           mov.w @(r0,r0),r0
|           0x0ce36ef8      0040           shll r0
|           0x0ce36efa      ffff           .word 0xFFFF
|           0x0ce36efc      0080           mov.b r0,@(0x0,r0)
|           0x0ce36efe      0200           stc sr,r0
|           0x0ce36f00      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f02      0e00           mov.l @(r0,r0),r0
|           0x0ce36f04      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f06      ffff           .word 0xFFFF
|           ;-- aav.0x0ce36f08:
|           ; UNKNOWN XREF from fcn.0ce32eaa (+0x42)
|           0x0ce36f08      .dword 0x0ce32ea2 ; aav.0x0ce32ea2
|           0x0ce36f0c      .dword 0x0ce32f10 ; aav.0x0ce32f10
|           0x0ce36f10      .dword 0x0ce33050 ; aav.0x0ce33050
|           0x0ce36f14      .dword 0x0ce33130 ; aav.0x0ce33130
|           0x0ce36f18      .dword 0x0ce335d8 ; aav.0x0ce335d8
|           0x0ce36f1c      .dword 0x0ce33930 ; aav.0x0ce33930
|           ;-- aav.0x0ce36f20:
|           ; UNKNOWN XREF from aav.0x0ce32f10 (+0x12c)
|           0x0ce36f20      2000           .word 0x0020
|           0x0ce36f22      3000           .word 0x0030
|           0x0ce36f24      3000           .word 0x0030
|           0x0ce36f26      7000           .word 0x0070
|           ;-- aav.0x0ce36f28:
|           ; UNKNOWN XREF from aav.0x0ce3333c (+0xa0)
|           0x0ce36f28      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f2a      0300           bsrf r0
|           0x0ce36f2c      0000           .word 0x0000
|           0x0ce36f2e      0000           .word 0x0000
|           0x0ce36f30      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f32      0c00           mov.b @(r0,r0),r0
|           0x0ce36f34      0020           mov.b r0,@r0
|           0x0ce36f36      ffff           .word 0xFFFF
|           0x0ce36f38      0000           .word 0x0000
|           0x0ce36f3a      0500           mov.w r0,@(r0,r0)
|           0x0ce36f3c      0000           .word 0x0000
|           0x0ce36f3e      0000           .word 0x0000
|           0x0ce36f40      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f42      0d00           mov.w @(r0,r0),r0
|           0x0ce36f44      0060           mov.b @r0,r0
|           0x0ce36f46      ffff           .word 0xFFFF
|           ;-- aav.0x0ce36f48:
|           ; UNKNOWN XREF from fcn.0ce333e4 (0xce333e8)
|           0x0ce36f48      8002           .word 0x0280
|           0x0ce36f4a      8004           .word 0x0480
|           ;-- aav.0x0ce36f4c:
|           ; UNKNOWN XREF from fcn.0ce3360c (+0x3c)
|           0x0ce36f4c      .dword 0x0ce33184 ; aav.0x0ce33184
|           0x0ce36f50      .dword 0x0ce331b6 ; aav.0x0ce331b6
|           0x0ce36f54      .dword 0x0ce33284 ; aav.0x0ce33284
|           0x0ce36f58      .dword 0x0ce3333c ; aav.0x0ce3333c
|           0x0ce36f5c      .dword 0x0ce333f0 ; aav.0x0ce333f0
|           0x0ce36f60      .dword 0x0ce33470 ; aav.0x0ce33470
|           0x0ce36f64      .dword 0x0ce3354c ; aav.0x0ce3354c
|           0x0ce36f68      .dword 0x0ce335b6 ; aav.0x0ce335b6
|           ;-- aav.0x0ce36f6c:
|           ; UNKNOWN XREF from aav.0x0ce3370c (+0x90)
|           0x0ce36f6c      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f6e      0300           bsrf r0
|           0x0ce36f70      0000           .word 0x0000
|           0x0ce36f72      0000           .word 0x0000
|           0x0ce36f74      0080           mov.b r0,@(0x0,r0)
|           0x0ce36f76      0c00           mov.b @(r0,r0),r0
|           0x0ce36f78      0040           shll r0
|           0x0ce36f7a      ffff           .word 0xFFFF
|           0x0ce36f7c      0000           .word 0x0000
|           0x0ce36f7e      0500           mov.w r0,@(r0,r0)
|           0x0ce36f80      0000           .word 0x0000
|           0x0ce36f82      0000           .word 0x0000
|           0x0ce36f84      0000           .word 0x0000
|           0x0ce36f86      0d00           mov.w @(r0,r0),r0
|           0x0ce36f88      0060           mov.b @r0,r0
|           0x0ce36f8a      ffff           .word 0xFFFF
|           ;-- aav.0x0ce36f8c:
|           ; UNKNOWN XREF from aav.0x0ce339d4 (+0x78)
|           0x0ce36f8c      .dword 0x0ce335fc ; aav.0x0ce335fc
|           0x0ce36f90      .dword 0x0ce3364c ; aav.0x0ce3364c
|           0x0ce36f94      .dword 0x0ce3370c ; aav.0x0ce3370c
|           0x0ce36f98      .dword 0x0ce337b8 ; aav.0x0ce337b8
|           0x0ce36f9c      .dword 0x0ce3386e ; aav.0x0ce3386e
|           0x0ce36fa0      .dword 0x0ce338d8 ; aav.0x0ce338d8
|           ;-- aav.0x0ce36fa4:
|           ; UNKNOWN XREF from aav.0x0ce339d4 (+0x7c)
|           0x0ce36fa4      .dword 0x0ce33966 ; aav.0x0ce33966
|           0x0ce36fa8      .dword 0x0ce339d4 ; aav.0x0ce339d4
|           0x0ce36fac      .dword 0x0ce34594 ; aav.0x0ce34594
|           0x0ce36fb0      .dword 0x0ce34600 ; aav.0x0ce34600
|           ;-- aav.0x0ce36fb4:
|           ; UNKNOWN XREF from aav.0x0ce34594 (+0x48)
|           0x0ce36fb4      024c           sts.l mach,@-r12
|           0x0ce36fb6      024d           sts.l mach,@-r13
|           0x0ce36fb8      024e           sts.l mach,@-r14
|           0x0ce36fba      094f           shlr2 r15
|           ;-- aav.0x0ce36fbc:
|           ; UNKNOWN XREF from aav.0x0ce34594 (+0x68)
|           0x0ce36fbc      .dword 0x0ce33b46 ; aav.0x0ce33b46
|           0x0ce36fc0      .dword 0x0ce33bb8 ; aav.0x0ce33bb8
|           0x0ce36fc4      .dword 0x0ce33c7a ; aav.0x0ce33c7a
|           0x0ce36fc8      .dword 0x0ce33d6c ; aav.0x0ce33d6c
|           0x0ce36fcc      .dword 0x0ce33e0c ; aav.0x0ce33e0c
|           0x0ce36fd0      .dword 0x0ce33eda ; aav.0x0ce33eda
|           0x0ce36fd4      .dword 0x0ce33fc4 ; aav.0x0ce33fc4
|           0x0ce36fd8      .dword 0x0ce3402a ; aav.0x0ce3402a
|           0x0ce36fdc      .dword 0x0ce3407c ; aav.0x0ce3407c
|           0x0ce36fe0      .dword 0x0ce34124 ; aav.0x0ce34124
|           0x0ce36fe4      .dword 0x0ce3414e ; aav.0x0ce3414e
|           0x0ce36fe8      .dword 0x0ce341c4 ; aav.0x0ce341c4
|           0x0ce36fec      .dword 0x0ce34328 ; aav.0x0ce34328
|           0x0ce36ff0      .dword 0x0ce343a2 ; aav.0x0ce343a2
|           0x0ce36ff4      .dword 0x0ce344fc ; aav.0x0ce344fc
|           0x0ce36ff8      .dword 0x0ce34566 ; aav.0x0ce34566
|           ;-- aav.0x0ce36ffc:
|           ; UNKNOWN XREF from aav.0x0ce34726 (+0x32)
|           0x0ce36ffc      .dword 0x0ce34634 ; aav.0x0ce34634
|           0x0ce37000      .dword 0x0ce346f0 ; aav.0x0ce346f0
|           0x0ce37004      .dword 0x0ce34726 ; aav.0x0ce34726
|           0x0ce37008      .dword 0x0ce34844 ; aav.0x0ce34844
|           ;-- aav.0x0ce3700c:
|           ; UNKNOWN XREF from aav.0x0ce34726 (+0x46)
|           0x0ce3700c      0000           .word 0x0000
|           0x0ce3700e      0400           mov.b r0,@(r0,r0)
|           0x0ce37010      00f0           fadd fr0,fr0
|           0x0ce37012      ffff           .word 0xFFFF
|           0x0ce37014      0000           .word 0x0000
|           0x0ce37016      0800           clrt 
|           0x0ce37018      00f0           fadd fr0,fr0
|           0x0ce3701a      ffff           .word 0xFFFF
|           0x0ce3701c      0000           .word 0x0000
|           0x0ce3701e      0100           .word 0x0001
|           0x0ce37020      00f0           fadd fr0,fr0
|           0x0ce37022      ffff           .word 0xFFFF
|           0x0ce37024      0000           .word 0x0000
|           0x0ce37026      0300           bsrf r0
|           0x0ce37028      00f0           fadd fr0,fr0
|           0x0ce3702a      ffff           .word 0xFFFF
|           ;-- aav.0x0ce3702c:
|           ; UNKNOWN XREF from aav.0x0ce34726 (+0x3e)
|           0x0ce3702c      1000           .word 0x0010
|           0x0ce3702e      2000           .word 0x0020
|           ;-- aav.0x0ce37030:
|           ; UNKNOWN XREF from aav.0x0ce3497a (+0xee)
|           0x0ce37030      .dword 0x0ce34916 ; aav.0x0ce34916
|           0x0ce37034      .dword 0x0ce3497a ; aav.0x0ce3497a
|           0x0ce37038      .dword 0x0ce34a8c ; aav.0x0ce34a8c
|           ;-- aav.0x0ce3703c:
|           ; UNKNOWN XREF from aav.0x0ce34b56 (+0x86)
|           0x0ce3703c      .dword 0x0ce34ac0 ; aav.0x0ce34ac0
|           0x0ce37040      .dword 0x0ce34ae0 ; aav.0x0ce34ae0
|           ;-- aav.0x0ce37044:
|           ; UNKNOWN XREF from aav.0x0ce34b56 (+0x8e)
|           0x0ce37044      .dword 0x0ce34b14 ; aav.0x0ce34b14
|           0x0ce37048      .dword 0x0ce34b56 ; aav.0x0ce34b56
|           0x0ce3704c      .dword 0x0ce34bfc ; aav.0x0ce34bfc
|           0x0ce37050      .dword 0x0ce357a8 ; aav.0x0ce357a8
|           0x0ce37054      .dword 0x0ce357d6 ; aav.0x0ce357d6
|           ;-- aav.0x0ce37058:
|           ; UNKNOWN XREF from aav.0x0ce355cc (+0x140)
|           0x0ce37058      0254           mov.l @(0x8,r0),r4
|           0x0ce3705a      0254           mov.l @(0x8,r0),r4
|           0x0ce3705c      0254           mov.l @(0x8,r0),r4
|           0x0ce3705e      0254           mov.l @(0x8,r0),r4
|           0x0ce37060      0254           mov.l @(0x8,r0),r4
|           0x0ce37062      0254           mov.l @(0x8,r0),r4
|           0x0ce37064      0255           mov.l @(0x8,r0),r5
|           0x0ce37066      0255           mov.l @(0x8,r0),r5
|           0x0ce37068      0255           mov.l @(0x8,r0),r5
|           0x0ce3706a      0255           mov.l @(0x8,r0),r5
|           0x0ce3706c      0255           mov.l @(0x8,r0),r5
|           0x0ce3706e      0256           mov.l @(0x8,r0),r6
|           0x0ce37070      0256           mov.l @(0x8,r0),r6
|           0x0ce37072      0256           mov.l @(0x8,r0),r6
|           0x0ce37074      0256           mov.l @(0x8,r0),r6
|           0x0ce37076      0256           mov.l @(0x8,r0),r6
|           0x0ce37078      0957           mov.l @(0x24,r0),r7
|           0x0ce3707a      0000           .word 0x0000
|           ;-- aav.0x0ce3707c:
|           ; UNKNOWN XREF from aav.0x0ce3582a (+0x4e)
|           0x0ce3707c      .dword 0x0ce34c90 ; aav.0x0ce34c90
|           0x0ce37080      .dword 0x0ce34cba ; aav.0x0ce34cba
|           0x0ce37084      .dword 0x0ce34d50 ; aav.0x0ce34d50
|           0x0ce37088      .dword 0x0ce34dc2 ; aav.0x0ce34dc2
|           0x0ce3708c      .dword 0x0ce34ea4 ; aav.0x0ce34ea4
|           0x0ce37090      .dword 0x0ce34ef2 ; aav.0x0ce34ef2
|           0x0ce37094      .dword 0x0ce34fc0 ; aav.0x0ce34fc0
|           0x0ce37098      .dword 0x0ce35018 ; aav.0x0ce35018
|           0x0ce3709c      .dword 0x0ce350a4 ; aav.0x0ce350a4
|           0x0ce370a0      .dword 0x0ce35156 ; aav.0x0ce35156
|           0x0ce370a4      .dword 0x0ce351f8 ; aav.0x0ce351f8
|           0x0ce370a8      .dword 0x0ce3525e ; aav.0x0ce3525e
|           0x0ce370ac      .dword 0x0ce3527a ; aav.0x0ce3527a
|           0x0ce370b0      .dword 0x0ce35358 ; aav.0x0ce35358
|           0x0ce370b4      .dword 0x0ce35396 ; aav.0x0ce35396
|           0x0ce370b8      .dword 0x0ce353da ; aav.0x0ce353da
|           0x0ce370bc      .dword 0x0ce3552a ; aav.0x0ce3552a
|           0x0ce370c0      .dword 0x0ce355cc ; aav.0x0ce355cc
|           0x0ce370c4      .dword 0x0ce35710 ; aav.0x0ce35710
|           0x0ce370c8      .dword 0x0ce3577a ; aav.0x0ce3577a
|           ;-- fcn.0ce370ca:
|           ; CALL XREF from aav.0x0ce362c6 (+0x4a)
|           0x0ce370ca      e30c           .word 0x0CE3
|           ;-- aav.0x0ce370cc:
|           ; UNKNOWN XREF from aav.0x0ce3582a (+0x52)
|           0x0ce370cc      .dword 0x0ce3580a ; aav.0x0ce3580a
|           0x0ce370d0      .dword 0x0ce3582a ; aav.0x0ce3582a
|           0x0ce370d4      .dword 0x0ce358b8 ; aav.0x0ce358b8
|           ;-- aav.0x0ce370d8:
|           ; UNKNOWN XREF from fcn.0ce359e0 (+0x10)
|           0x0ce370d8      .dword 0x0ce358ec ; aav.0x0ce358ec
|           0x0ce370dc      .dword 0x0ce35940 ; aav.0x0ce35940
|           0x0ce370e0      .dword 0x0ce3598c ; aav.0x0ce3598c
|           0x0ce370e4      .dword 0x0ce359aa ; aav.0x0ce359aa
|           ;-- aav.0x0ce370e8:
|           ; UNKNOWN XREF from fcn.0ce35ad4 (+0x54)
|           0x0ce370e8      .dword 0x0ce35a1a ; aav.0x0ce35a1a
|           0x0ce370ec      .dword 0x0ce35a76 ; aav.0x0ce35a76
|           0x0ce370f0      .dword 0x0ce35b50 ; aav.0x0ce35b50
|           0x0ce370f4      .dword 0x0ce35c20 ; aav.0x0ce35c20
|           0x0ce370f8      .dword 0x0ce35c8e ; aav.0x0ce35c8e
|           ;-- aav.0x0ce370fc:
|           ; UNKNOWN XREF from aav.0x0ce35dc8 (+0x1c)
|           0x0ce370fc      .dword 0x0ce35cf2 ; aav.0x0ce35cf2
|           0x0ce37100      .dword 0x0ce35d68 ; aav.0x0ce35d68
|           ;-- aav.0x0ce37104:
|           ; UNKNOWN XREF from fcn.0ce35e10 (0xce35e14)
|           0x0ce37104      .dword 0x0ce35e18 ; aav.0x0ce35e18
|           0x0ce37108      .dword 0x0ce35e9c ; aav.0x0ce35e9c
|           0x0ce3710c      .dword 0x0ce35f0a ; aav.0x0ce35f0a
|           ;-- aav.0x0ce37110:
|           ; UNKNOWN XREF from aav.0x0ce362c6 (+0x56)
|           0x0ce37110      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37114      .dword 0x0ce360d6 ; aav.0x0ce360d6
|           0x0ce37118      .dword 0x0ce36122 ; aav.0x0ce36122
|           0x0ce3711c      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37120      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37124      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37128      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce3712c      .dword 0x0ce3619c ; aav.0x0ce3619c
|           0x0ce37130      .dword 0x0ce361f0 ; aav.0x0ce361f0
|           0x0ce37134      .dword 0x0ce36288 ; aav.0x0ce36288
|           0x0ce37138      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce3713c      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37140      .dword 0x0ce36050 ; aav.0x0ce36050
|           0x0ce37144      .dword 0x0ce36050 ; aav.0x0ce36050
|           ;-- aav.0x0ce37148:
|           ; UNKNOWN XREF from aav.0x0ce364e8 (+0x88)
|           0x0ce37148      .dword 0x0ce364ac ; aav.0x0ce364ac
|           0x0ce3714c      .dword 0x0ce36418 ; aav.0x0ce36418
|           0x0ce37150      .dword 0x0ce3636c ; aav.0x0ce3636c
|           ;-- aav.0x0ce37154:
|           ; UNKNOWN XREF from aav.0x0ce36678 (+0x48)
|           0x0ce37154      .dword 0x0ce3664e ; aav.0x0ce3664e
|           0x0ce37158      .dword 0x0ce365ba ; aav.0x0ce365ba
|           0x0ce3715c      .dword 0x0ce364e8 ; aav.0x0ce364e8
|           ;-- aav.0x0ce37160:
|           ; UNKNOWN XREF from fcn.0ce368fa (0xce36900)
|           0x0ce37160      .dword 0x0ce366c4 ; aav.0x0ce366c4
|           0x0ce37164      .dword 0x0ce367f4 ; aav.0x0ce367f4
|           0x0ce37168      .dword 0x0ce364d6 ; aav.0x0ce364d6
|           ;-- aav.0x0ce3716c:
|           ; UNKNOWN XREF from aav.0x0ce36a00 (+0x40)
|           0x0ce3716c      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce37170      .dword 0x0ce364d6 ; aav.0x0ce364d6
|           0x0ce37174      .dword 0x0ce36678 ; aav.0x0ce36678
|           0x0ce37178      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce3717c      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce37180      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce37184      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce37188      .dword 0x0ce3683c ; aav.0x0ce3683c
|           0x0ce3718c      .dword 0x0ce3684e ; aav.0x0ce3684e
|           0x0ce37190      .dword 0x0ce3689c ; aav.0x0ce3689c
|           0x0ce37194      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce37198      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce3719c      .dword 0x0ce36320 ; aav.0x0ce36320
|           0x0ce371a0      .dword 0x0ce36320 ; aav.0x0ce36320
|           ;-- aav.0x0ce371a4:
|           ; UNKNOWN XREF from aav.0x0ce36a00 (+0x44)
|           0x0ce371a4      .dword 0x0ce3698a ; aav.0x0ce3698a
|           0x0ce371a8      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371ac      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371b0      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371b4      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371b8      .dword 0x0ce3698a ; aav.0x0ce3698a
|           0x0ce371bc      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371c0      .dword 0x0ce36998 ; aav.0x0ce36998
|           0x0ce371c4      .dword 0x0ce3698a ; aav.0x0ce3698a
|           ;-- fcn.0ce371c6:
|           ; CALL XREF from aav.0x0ce3636c (+0xa0)
|           0x0ce371c6      e30c           .word 0x0CE3
|           0x0ce371c8      .dword 0x0ce3698a ; aav.0x0ce3698a
|           0x0ce371cc      .dword 0x0ce369ba ; aav.0x0ce369ba
|           0x0ce371d0      .dword 0x0ce3698a ; aav.0x0ce3698a
|           0x0ce371d4      .dword 0x0ce3698a ; aav.0x0ce3698a
|           0x0ce371d8      .dword 0x0ce369ba ; aav.0x0ce369ba
