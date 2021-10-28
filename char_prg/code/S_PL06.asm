;Cyclops everyone hates scott

/   fcn.0ce30000 ();
|           0x0ce30000      6590           mov.w @(0xCA,PC),r0
|           0x0ce30002      70e5           mov 0x70,r5
|           0x0ce30004      32d7           mov.l @(0xC8,PC),r7
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

;==============================================================================
            ;-- aav.0x0ce3001c:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x4)
            0x0ce3001c      e62f           mov.l r14,@-r15
            0x0ce3001e      224f           sts.l pr,@-r15
            0x0ce30020      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30022      0b43           jsr @r3
            0x0ce30024      436e           mov r4,r14
            0x0ce30026      0c60           extu.b r0,r0
            0x0ce30028      0820           tst r0,r0
        ,=< 0x0ce3002a      4d8b           bf 0x0ce300c8
        |   0x0ce3002c      2ad3           mov.l @(0xA8,PC),r3
        |   0x0ce3002e      0b43           jsr @r3
        |   0x0ce30030      e364           mov r14,r4
        |   0x0ce30032      0c60           extu.b r0,r0
        |   0x0ce30034      0820           tst r0,r0
       ,==< 0x0ce30036      478b           bf 0x0ce300c8
       ||   0x0ce30038      28d3           mov.l @(0xA0,PC),r3
       ||   0x0ce3003a      0b43           jsr @r3
       ||   0x0ce3003c      e364           mov r14,r4
       ||   0x0ce3003e      0c60           extu.b r0,r0
       ||   0x0ce30040      0820           tst r0,r0
      ,===< 0x0ce30042      418b           bf 0x0ce300c8
      |||   0x0ce30044      26d3           mov.l @(0x98,PC),r3
      |||   0x0ce30046      0b43           jsr @r3
      |||   0x0ce30048      e364           mov r14,r4
      |||   0x0ce3004a      0c60           extu.b r0,r0
      |||   0x0ce3004c      0820           tst r0,r0
     ,====< 0x0ce3004e      3b8b           bf 0x0ce300c8
     ||||   0x0ce30050      4cb0           bsr fcn.0ce300ec
     ||||   0x0ce30052      e364           mov r14,r4
     ||||   0x0ce30054      0c60           extu.b r0,r0
     ||||   0x0ce30056      0820           tst r0,r0
    ,=====< 0x0ce30058      368b           bf 0x0ce300c8
    |||||   0x0ce3005a      7ab0           bsr fcn.0ce30152
    |||||   0x0ce3005c      e364           mov r14,r4
    |||||   0x0ce3005e      0c60           extu.b r0,r0
    |||||   0x0ce30060      0820           tst r0,r0
   ,======< 0x0ce30062      318b           bf 0x0ce300c8
   ||||||   0x0ce30064      ecb0           bsr fcn.0ce30240
   ||||||   0x0ce30066      e364           mov r14,r4
   ||||||   0x0ce30068      0c60           extu.b r0,r0
   ||||||   0x0ce3006a      0820           tst r0,r0
  ,=======< 0x0ce3006c      2c8b           bf 0x0ce300c8
  |||||||   0x0ce3006e      0bb1           bsr fcn.0ce30288
  |||||||   0x0ce30070      e364           mov r14,r4
  |||||||   0x0ce30072      0820           tst r0,r0
  ========< 0x0ce30074      288b           bf 0x0ce300c8
  |||||||   0x0ce30076      82b1           bsr fcn.0ce3037e
  |||||||   0x0ce30078      e364           mov r14,r4
  |||||||   0x0ce3007a      0c60           extu.b r0,r0
  |||||||   0x0ce3007c      0820           tst r0,r0
  ========< 0x0ce3007e      238b           bf 0x0ce300c8
  |||||||   0x0ce30080      aab0           bsr fcn.0ce301d8
  |||||||   0x0ce30082      e364           mov r14,r4
  |||||||   0x0ce30084      0c60           extu.b r0,r0
  |||||||   0x0ce30086      0820           tst r0,r0
  ========< 0x0ce30088      1e8b           bf 0x0ce300c8
  |||||||   0x0ce3008a      9bb1           bsr fcn.0ce303c4
  |||||||   0x0ce3008c      e364           mov r14,r4
  |||||||   0x0ce3008e      0c60           extu.b r0,r0
  |||||||   0x0ce30090      0820           tst r0,r0
  ========< 0x0ce30092      198b           bf 0x0ce300c8
  |||||||   0x0ce30094      17b1           bsr fcn.0ce302c6
  |||||||   0x0ce30096      e364           mov r14,r4
  |||||||   0x0ce30098      0c60           extu.b r0,r0
  |||||||   0x0ce3009a      0820           tst r0,r0
  ========< 0x0ce3009c      148b           bf 0x0ce300c8
  |||||||   0x0ce3009e      4fb1           bsr fcn.0ce30340
  |||||||   0x0ce300a0      e364           mov r14,r4
  |||||||   0x0ce300a2      0c60           extu.b r0,r0
  |||||||   0x0ce300a4      0820           tst r0,r0
  ========< 0x0ce300a6      0f8b           bf 0x0ce300c8
  |||||||   0x0ce300a8      b0b1           bsr fcn.0ce3040c
  |||||||   0x0ce300aa      e364           mov r14,r4
  |||||||   0x0ce300ac      0820           tst r0,r0
  ========< 0x0ce300ae      0b8b           bf 0x0ce300c8
  |||||||   0x0ce300b0      e2b1           bsr fcn.0ce30478
  |||||||   0x0ce300b2      e364           mov r14,r4
  |||||||   0x0ce300b4      0820           tst r0,r0
  ========< 0x0ce300b6      078b           bf 0x0ce300c8
  |||||||   0x0ce300b8      0ad3           mov.l @(0x28,PC),r3
  |||||||   0x0ce300ba      0b43           jsr @r3
  |||||||   0x0ce300bc      e364           mov r14,r4
  |||||||   0x0ce300be      264f           lds.l @r15+,pr
  |||||||   0x0ce300c0      09d2           mov.l @(0x24,PC),r2
  |||||||   0x0ce300c2      e364           mov r14,r4
  |||||||   0x0ce300c4      2b42           jmp @r2
  |||||||   0x0ce300c6      f66e           mov.l @r15+,r14
  ```````-> 0x0ce300c8      264f           lds.l @r15+,pr
            0x0ce300ca      0b00           rts 
            0x0ce300cc      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce300ce 0x0428
0x0ce300d0  0x0ce33e9c 0x8c054508 0x8c054b34 0x8c05496c
0x0ce300e0  0x8c054d04 0x8c053e00 0x8c0542e0

;==============================================================================
/ (fcn) fcn.0ce300ec 102
|   fcn.0ce300ec (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x34)
|           0x0ce300ec      e62f           mov.l r14,@-r15
|           0x0ce300ee      436e           mov r4,r14
|           0x0ce300f0      224f           sts.l pr,@-r15
|           0x0ce300f2      35d5           mov.l @(0xD4,PC),r5
|           0x0ce300f4      6096           mov.w @(0xC0,PC),r6
|           0x0ce300f6      35d3           mov.l @(0xD4,PC),r3
|           0x0ce300f8      0b43           jsr @r3
|           0x0ce300fa      ec36           add r14,r6
|           0x0ce300fc      0c60           extu.b r0,r0
|           0x0ce300fe      0820           tst r0,r0
|           0x0ce30100      1189           bt 0x0ce30126
|           0x0ce30102      5a90           mov.w @(0xB4,PC),r0
|           0x0ce30104      ee03           mov.l @(r0,r14),r3
|           0x0ce30106      3062           mov.b @r3,r2
|           0x0ce30108      2822           tst r2,r2
|           0x0ce3010a      0c89           bt 0x0ce30126
|           0x0ce3010c      5690           mov.w @(0xAC,PC),r0
|           0x0ce3010e      ec00           mov.b @(r0,r14),r0
|           0x0ce30110      0c60           extu.b r0,r0
|           0x0ce30112      0288           cmp/eq 0x02,r0
|           0x0ce30114      0e8b           bf 0x0ce30134
|           0x0ce30116      5290           mov.w @(0xA4,PC),r0
|           0x0ce30118      ec02           mov.b @(r0,r14),r2
|           0x0ce3011a      2822           tst r2,r2
|           0x0ce3011c      0a8b           bf 0x0ce30134
|           0x0ce3011e      4f90           mov.w @(0x9E,PC),r0
|           0x0ce30120      ec03           mov.b @(r0,r14),r3
|           0x0ce30122      3823           tst r3,r3
|           0x0ce30124      0389           bt 0x0ce3012e
|           ; CODE XREFS from fcn.0ce300ec (0xce30100, 0xce3010a)
|           0x0ce30126      264f           lds.l @r15+,pr
|           0x0ce30128      00e0           mov 0x00,r0
|           0x0ce3012a      0b00           rts 
|           0x0ce3012c      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce300ec (0xce30124)
|           0x0ce3012e      ec03           mov.b @(r0,r14),r3
|           0x0ce30130      0173           add 0x01,r3
|           0x0ce30132      340e           mov.b r3,@(r0,r14)
|           ; CODE XREFS from fcn.0ce300ec (0xce30114, 0xce3011c)
|           0x0ce30134      00e0           mov 0x00,r0
|           0x0ce30136      e580           mov.b r0,@(0x5,r14)
|           0x0ce30138      02e3           mov 0x02,r3
|           0x0ce3013a      e780           mov.b r0,@(0x7,r14)
|           0x0ce3013c      1de5           mov 0x1D,r5
|           0x0ce3013e      e680           mov.b r0,@(0x6,r14)
|           0x0ce30140      3f90           mov.w @(0x7E,PC),r0
|           0x0ce30142      340e           mov.b r3,@(r0,r14)
|           0x0ce30144      22d3           mov.l @(0x88,PC),r3
|           0x0ce30146      0b43           jsr @r3
|           0x0ce30148      e364           mov r14,r4
|           0x0ce3014a      01e0           mov 0x01,r0
|           0x0ce3014c      264f           lds.l @r15+,pr
|           0x0ce3014e      0b00           rts 
\           0x0ce30150      f66e           mov.l @r15+,r14

;==============================================================================
/ (fcn) fcn.0ce30152 102
|   fcn.0ce30152 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x3e)
|           0x0ce30152      e62f           mov.l r14,@-r15
|           0x0ce30154      436e           mov r4,r14
|           0x0ce30156      224f           sts.l pr,@-r15
|           0x0ce30158      1ed5           mov.l @(0x78,PC),r5
|           0x0ce3015a      3396           mov.w @(0x66,PC),r6
|           0x0ce3015c      1bd3           mov.l @(0x6C,PC),r3
|           0x0ce3015e      0b43           jsr @r3
|           0x0ce30160      ec36           add r14,r6
|           0x0ce30162      0c60           extu.b r0,r0
|           0x0ce30164      0820           tst r0,r0
|           0x0ce30166      1189           bt 0x0ce3018c
|           0x0ce30168      2790           mov.w @(0x4E,PC),r0
|           0x0ce3016a      ee03           mov.l @(r0,r14),r3
|           0x0ce3016c      3062           mov.b @r3,r2
|           0x0ce3016e      2822           tst r2,r2
|           0x0ce30170      0c89           bt 0x0ce3018c
|           0x0ce30172      2390           mov.w @(0x46,PC),r0
|           0x0ce30174      ec00           mov.b @(r0,r14),r0
|           0x0ce30176      0c60           extu.b r0,r0
|           0x0ce30178      0288           cmp/eq 0x02,r0
|           0x0ce3017a      0e8b           bf 0x0ce3019a
|           0x0ce3017c      1f90           mov.w @(0x3E,PC),r0
|           0x0ce3017e      ec02           mov.b @(r0,r14),r2
|           0x0ce30180      2822           tst r2,r2
|           0x0ce30182      0a8b           bf 0x0ce3019a
|           0x0ce30184      1c90           mov.w @(0x38,PC),r0
|           0x0ce30186      ec03           mov.b @(r0,r14),r3
|           0x0ce30188      3823           tst r3,r3
|           0x0ce3018a      0389           bt 0x0ce30194
|           ; CODE XREFS from fcn.0ce30152 (0xce30166, 0xce30170)
|           0x0ce3018c      264f           lds.l @r15+,pr
|           0x0ce3018e      00e0           mov 0x00,r0
|           0x0ce30190      0b00           rts 
|           0x0ce30192      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30152 (0xce3018a)
|           0x0ce30194      ec03           mov.b @(r0,r14),r3
|           0x0ce30196      0173           add 0x01,r3
|           0x0ce30198      340e           mov.b r3,@(r0,r14)
|           ; CODE XREFS from fcn.0ce30152 (0xce3017a, 0xce30182)
|           0x0ce3019a      00e0           mov 0x00,r0
|           0x0ce3019c      e580           mov.b r0,@(0x5,r14)
|           0x0ce3019e      01e3           mov 0x01,r3
|           0x0ce301a0      e780           mov.b r0,@(0x7,r14)
|           0x0ce301a2      1de5           mov 0x1D,r5
|           0x0ce301a4      e680           mov.b r0,@(0x6,r14)
|           0x0ce301a6      0c90           mov.w @(0x18,PC),r0
|           0x0ce301a8      340e           mov.b r3,@(r0,r14)
|           0x0ce301aa      09d3           mov.l @(0x24,PC),r3
|           0x0ce301ac      0b43           jsr @r3
|           0x0ce301ae      e364           mov r14,r4
|           0x0ce301b0      01e0           mov 0x01,r0
|           0x0ce301b2      264f           lds.l @r15+,pr
|           0x0ce301b4      0b00           rts 
\           0x0ce301b6      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce301b8 0x0374 0x040c 0x01f9 0x01fc 0x01d4 0x01e9 0x036c 0x0000
0x0ce301c8  0x0ce33e0c 0x8c054e58 0x8c0530d8 0x0ce33e1c

;==============================================================================
/ (fcn) fcn.0ce301d8 104
|   fcn.0ce301d8 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x64)
|           0x0ce301d8      e62f           mov.l r14,@-r15
|           0x0ce301da      436e           mov r4,r14
|           0x0ce301dc      224f           sts.l pr,@-r15
|           0x0ce301de      46d5           mov.l @(0x118,PC),r5
|           0x0ce301e0      8096           mov.w @(0x100,PC),r6
|           0x0ce301e2      46d3           mov.l @(0x118,PC),r3
|           0x0ce301e4      0b43           jsr @r3
|           0x0ce301e6      ec36           add r14,r6
|           0x0ce301e8      0c60           extu.b r0,r0
|           0x0ce301ea      0820           tst r0,r0
|           0x0ce301ec      0c89           bt 0x0ce30208
|           0x0ce301ee      7a90           mov.w @(0xF4,PC),r0
|           0x0ce301f0      ec00           mov.b @(r0,r14),r0
|           0x0ce301f2      0c60           extu.b r0,r0
|           0x0ce301f4      0288           cmp/eq 0x02,r0
|           0x0ce301f6      0e8b           bf 0x0ce30216
|           0x0ce301f8      7690           mov.w @(0xEC,PC),r0
|           0x0ce301fa      ec02           mov.b @(r0,r14),r2
|           0x0ce301fc      2822           tst r2,r2
|           0x0ce301fe      0a8b           bf 0x0ce30216
|           0x0ce30200      7390           mov.w @(0xE6,PC),r0
|           0x0ce30202      ec03           mov.b @(r0,r14),r3
|           0x0ce30204      3823           tst r3,r3
|           0x0ce30206      0389           bt 0x0ce30210
|           ; CODE XREF from fcn.0ce301d8 (0xce301ec)
|           0x0ce30208      264f           lds.l @r15+,pr
|           0x0ce3020a      00e0           mov 0x00,r0
|           0x0ce3020c      0b00           rts 
|           0x0ce3020e      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce301d8 (0xce30206)
|           0x0ce30210      ec03           mov.b @(r0,r14),r3
|           0x0ce30212      0173           add 0x01,r3
|           0x0ce30214      340e           mov.b r3,@(r0,r14)
|           ; CODE XREFS from fcn.0ce301d8 (0xce301f6, 0xce301fe)
|           0x0ce30216      6595           mov.w @(0xCA,PC),r5
|           0x0ce30218      39d2           mov.l @(0xE4,PC),r2
|           0x0ce3021a      ec35           add r14,r5
|           0x0ce3021c      0b42           jsr @r2
|           0x0ce3021e      e364           mov r14,r4
|           0x0ce30220      00e4           mov 0x00,r4
|           0x0ce30222      4360           mov r4,r0
|           0x0ce30224      0900           nop 
|           0x0ce30226      e580           mov.b r0,@(0x5,r14)
|           0x0ce30228      15e5           mov 0x15,r5
|           0x0ce3022a      e780           mov.b r0,@(0x7,r14)
|           0x0ce3022c      e680           mov.b r0,@(0x6,r14)
|           0x0ce3022e      5d90           mov.w @(0xBA,PC),r0
|           0x0ce30230      34d3           mov.l @(0xD0,PC),r3
|           0x0ce30232      440e           mov.b r4,@(r0,r14)
|           0x0ce30234      0b43           jsr @r3
|           0x0ce30236      e364           mov r14,r4
|           0x0ce30238      01e0           mov 0x01,r0
|           0x0ce3023a      264f           lds.l @r15+,pr
|           0x0ce3023c      0b00           rts 
\           0x0ce3023e      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30240 72
|   fcn.0ce30240 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x48)
|           0x0ce30240      e62f           mov.l r14,@-r15
|           0x0ce30242      436e           mov r4,r14
|           0x0ce30244      224f           sts.l pr,@-r15
|           0x0ce30246      30d5           mov.l @(0xC0,PC),r5
|           0x0ce30248      5196           mov.w @(0xA2,PC),r6
|           0x0ce3024a      2cd3           mov.l @(0xB0,PC),r3
|           0x0ce3024c      0b43           jsr @r3
|           0x0ce3024e      ec36           add r14,r6
|           0x0ce30250      0c60           extu.b r0,r0
|           0x0ce30252      0820           tst r0,r0
|           0x0ce30254      038b           bf 0x0ce3025e
|           0x0ce30256      264f           lds.l @r15+,pr
|           0x0ce30258      00e0           mov 0x00,r0
|           0x0ce3025a      0b00           rts 
|           0x0ce3025c      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30240 (0xce30254)
|           0x0ce3025e      4695           mov.w @(0x8C,PC),r5
|           0x0ce30260      27d3           mov.l @(0x9C,PC),r3
|           0x0ce30262      ec35           add r14,r5
|           0x0ce30264      0b43           jsr @r3
|           0x0ce30266      e364           mov r14,r4
|           0x0ce30268      4090           mov.w @(0x80,PC),r0
|           0x0ce3026a      03e2           mov 0x03,r2
|           0x0ce3026c      25d3           mov.l @(0x94,PC),r3
|           0x0ce3026e      15e5           mov 0x15,r5
|           0x0ce30270      240e           mov.b r2,@(r0,r14)
|           0x0ce30272      00e0           mov 0x00,r0
|           0x0ce30274      e580           mov.b r0,@(0x5,r14)
|           0x0ce30276      0b43           jsr @r3
|           0x0ce30278      e364           mov r14,r4
|           0x0ce3027a      00e0           mov 0x00,r0
|           0x0ce3027c      e780           mov.b r0,@(0x7,r14)
|           0x0ce3027e      e680           mov.b r0,@(0x6,r14)
|           0x0ce30280      01e0           mov 0x01,r0
|           0x0ce30282      264f           lds.l @r15+,pr
|           0x0ce30284      0b00           rts 
\           0x0ce30286      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30288 62
|   fcn.0ce30288 ();
|           ; CALL XREF from aav.0x0ce3001c (+0x52)
|           0x0ce30288      e62f           mov.l r14,@-r15
|           0x0ce3028a      436e           mov r4,r14
|           0x0ce3028c      224f           sts.l pr,@-r15
|           0x0ce3028e      1fd5           mov.l @(0x7C,PC),r5
|           0x0ce30290      2e96           mov.w @(0x5C,PC),r6
|           0x0ce30292      1ad3           mov.l @(0x68,PC),r3
|           0x0ce30294      0b43           jsr @r3
|           0x0ce30296      ec36           add r14,r6
|           0x0ce30298      0c60           extu.b r0,r0
|           0x0ce3029a      0820           tst r0,r0
|           0x0ce3029c      0589           bt 0x0ce302aa
|           0x0ce3029e      1cd2           mov.l @(0x70,PC),r2
|           0x0ce302a0      0b42           jsr @r2
|           0x0ce302a2      e364           mov r14,r4
|           0x0ce302a4      0820           tst r0,r0
|           0x0ce302a6      048f           bf.s 0x0ce302b2
|           0x0ce302a8      0365           mov r0,r5
|           ; CODE XREF from fcn.0ce30288 (0xce3029c)
|           0x0ce302aa      264f           lds.l @r15+,pr
|           0x0ce302ac      00e0           mov 0x00,r0
|           0x0ce302ae      0b00           rts 
|           0x0ce302b0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30288 (0xce302a6)
|           0x0ce302b2      1e90           mov.w @(0x3C,PC),r0
|           0x0ce302b4      43e2           mov 0x43,r2
|           0x0ce302b6      17d3           mov.l @(0x5C,PC),r3
|           0x0ce302b8      240e           mov.b r2,@(r0,r14)
|           0x0ce302ba      0b43           jsr @r3
|           0x0ce302bc      e364           mov r14,r4
|           0x0ce302be      01e0           mov 0x01,r0
|           0x0ce302c0      264f           lds.l @r15+,pr
|           0x0ce302c2      0b00           rts 
\           0x0ce302c4      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce302c6 30
|   fcn.0ce302c6 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x78)
|           0x0ce302c6      e62f           mov.l r14,@-r15
|           0x0ce302c8      436e           mov r4,r14
|           0x0ce302ca      224f           sts.l pr,@-r15
|           0x0ce302cc      12d5           mov.l @(0x48,PC),r5
|           0x0ce302ce      1196           mov.w @(0x22,PC),r6
|           0x0ce302d0      12d3           mov.l @(0x48,PC),r3
|           0x0ce302d2      0b43           jsr @r3
|           0x0ce302d4      ec36           add r14,r6
|           0x0ce302d6      0c60           extu.b r0,r0
|           0x0ce302d8      0820           tst r0,r0
|           0x0ce302da      218b           bf 0x0ce30320
|           0x0ce302dc      264f           lds.l @r15+,pr
|           0x0ce302de      00e0           mov 0x00,r0
|           0x0ce302e0      0b00           rts 
\           0x0ce302e2      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce302e4 0x0364 0x01f9 0x01fc 0x01d4 0x01e9 0x037c 0x03a4 0x01f7
0x0ce302f4 0x0384 0x0000
0x0ce302f8  0x0ce33e2c 0x8c054e58 0x8c055c3a 0x8c0530d8
0x0ce30308  0x0ce33e5c 0x0ce33e88 0x8c045790 0x8c0522e0
0x0ce30318  0x0ce33e6c 0x8c055066

;==============================================================================
            ; CODE XREF from fcn.0ce302c6 (0xce302da)
            0x0ce30320      9490           mov.w @(0x128,PC),r0
            0x0ce30322      04e3           mov 0x04,r3
            0x0ce30324      15e5           mov 0x15,r5
            0x0ce30326      340e           mov.b r3,@(r0,r14)
            0x0ce30328      00e0           mov 0x00,r0
            0x0ce3032a      4bd3           mov.l @(0x12C,PC),r3
            0x0ce3032c      e580           mov.b r0,@(0x5,r14)
            0x0ce3032e      0b43           jsr @r3
            0x0ce30330      e364           mov r14,r4
            0x0ce30332      00e0           mov 0x00,r0
            0x0ce30334      e780           mov.b r0,@(0x7,r14)
            0x0ce30336      e680           mov.b r0,@(0x6,r14)
            0x0ce30338      01e0           mov 0x01,r0
            0x0ce3033a      264f           lds.l @r15+,pr
            0x0ce3033c      0b00           rts 
            0x0ce3033e      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30340 62
|   fcn.0ce30340 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x82)
|           0x0ce30340      e62f           mov.l r14,@-r15
|           0x0ce30342      436e           mov r4,r14
|           0x0ce30344      224f           sts.l pr,@-r15
|           0x0ce30346      45d5           mov.l @(0x114,PC),r5
|           0x0ce30348      8196           mov.w @(0x102,PC),r6
|           0x0ce3034a      45d3           mov.l @(0x114,PC),r3
|           0x0ce3034c      0b43           jsr @r3
|           0x0ce3034e      ec36           add r14,r6
|           0x0ce30350      0c60           extu.b r0,r0
|           0x0ce30352      0820           tst r0,r0
|           0x0ce30354      038b           bf 0x0ce3035e
|           0x0ce30356      264f           lds.l @r15+,pr
|           0x0ce30358      00e0           mov 0x00,r0
|           0x0ce3035a      0b00           rts 
|           0x0ce3035c      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30340 (0xce30354)
|           0x0ce3035e      7590           mov.w @(0xEA,PC),r0
|           0x0ce30360      09e3           mov 0x09,r3
|           0x0ce30362      15e5           mov 0x15,r5
|           0x0ce30364      340e           mov.b r3,@(r0,r14)
|           0x0ce30366      00e0           mov 0x00,r0
|           0x0ce30368      3bd3           mov.l @(0xEC,PC),r3
|           0x0ce3036a      e580           mov.b r0,@(0x5,r14)
|           0x0ce3036c      0b43           jsr @r3
|           0x0ce3036e      e364           mov r14,r4
|           0x0ce30370      00e0           mov 0x00,r0
|           0x0ce30372      e780           mov.b r0,@(0x7,r14)
|           0x0ce30374      e680           mov.b r0,@(0x6,r14)
|           0x0ce30376      01e0           mov 0x01,r0
|           0x0ce30378      264f           lds.l @r15+,pr
|           0x0ce3037a      0b00           rts 
\           0x0ce3037c      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3037e 70
|   fcn.0ce3037e (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x5a)
|           0x0ce3037e      e62f           mov.l r14,@-r15
|           0x0ce30380      436e           mov r4,r14
|           0x0ce30382      224f           sts.l pr,@-r15
|           0x0ce30384      37d5           mov.l @(0xDC,PC),r5
|           0x0ce30386      6396           mov.w @(0xC6,PC),r6
|           0x0ce30388      37d3           mov.l @(0xDC,PC),r3
|           0x0ce3038a      0b43           jsr @r3
|           0x0ce3038c      ec36           add r14,r6
|           0x0ce3038e      0c60           extu.b r0,r0
|           0x0ce30390      0820           tst r0,r0
|           0x0ce30392      038b           bf 0x0ce3039c
|           0x0ce30394      264f           lds.l @r15+,pr
|           0x0ce30396      00e0           mov 0x00,r0
|           0x0ce30398      0b00           rts 
|           0x0ce3039a      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3037e (0xce30392)
|           0x0ce3039c      5895           mov.w @(0xB0,PC),r5
|           0x0ce3039e      33d3           mov.l @(0xCC,PC),r3
|           0x0ce303a0      ec35           add r14,r5
|           0x0ce303a2      0b43           jsr @r3
|           0x0ce303a4      e364           mov r14,r4
|           0x0ce303a6      00e0           mov 0x00,r0
|           0x0ce303a8      e580           mov.b r0,@(0x5,r14)
|           0x0ce303aa      08e3           mov 0x08,r3
|           0x0ce303ac      e780           mov.b r0,@(0x7,r14)
|           0x0ce303ae      15e5           mov 0x15,r5
|           0x0ce303b0      e680           mov.b r0,@(0x6,r14)
|           0x0ce303b2      4b90           mov.w @(0x96,PC),r0
|           0x0ce303b4      340e           mov.b r3,@(r0,r14)
|           0x0ce303b6      28d3           mov.l @(0xA0,PC),r3
|           0x0ce303b8      0b43           jsr @r3
|           0x0ce303ba      e364           mov r14,r4
|           0x0ce303bc      01e0           mov 0x01,r0
|           0x0ce303be      264f           lds.l @r15+,pr
|           0x0ce303c0      0b00           rts 
\           0x0ce303c2      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce303c4 72
|   fcn.0ce303c4 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x6e)
|           0x0ce303c4      e62f           mov.l r14,@-r15
|           0x0ce303c6      436e           mov r4,r14
|           0x0ce303c8      224f           sts.l pr,@-r15
|           0x0ce303ca      29d5           mov.l @(0xA4,PC),r5
|           0x0ce303cc      4196           mov.w @(0x82,PC),r6
|           0x0ce303ce      26d3           mov.l @(0x98,PC),r3
|           0x0ce303d0      0b43           jsr @r3
|           0x0ce303d2      ec36           add r14,r6
|           0x0ce303d4      0c60           extu.b r0,r0
|           0x0ce303d6      0820           tst r0,r0
|           0x0ce303d8      038b           bf 0x0ce303e2
|           0x0ce303da      264f           lds.l @r15+,pr
|           0x0ce303dc      00e0           mov 0x00,r0
|           0x0ce303de      0b00           rts 
|           0x0ce303e0      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce303c4 (0xce303d8)
|           0x0ce303e2      3695           mov.w @(0x6C,PC),r5
|           0x0ce303e4      21d3           mov.l @(0x84,PC),r3
|           0x0ce303e6      ec35           add r14,r5
|           0x0ce303e8      0b43           jsr @r3
|           0x0ce303ea      e364           mov r14,r4
|           0x0ce303ec      2e90           mov.w @(0x5C,PC),r0
|           0x0ce303ee      07e2           mov 0x07,r2
|           0x0ce303f0      19d3           mov.l @(0x64,PC),r3
|           0x0ce303f2      15e5           mov 0x15,r5
|           0x0ce303f4      240e           mov.b r2,@(r0,r14)
|           0x0ce303f6      00e0           mov 0x00,r0
|           0x0ce303f8      e580           mov.b r0,@(0x5,r14)
|           0x0ce303fa      0b43           jsr @r3
|           0x0ce303fc      e364           mov r14,r4
|           0x0ce303fe      00e0           mov 0x00,r0
|           0x0ce30400      e780           mov.b r0,@(0x7,r14)
|           0x0ce30402      e680           mov.b r0,@(0x6,r14)
|           0x0ce30404      01e0           mov 0x01,r0
|           0x0ce30406      264f           lds.l @r15+,pr
|           0x0ce30408      0b00           rts 
\           0x0ce3040a      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3040c 64
|   fcn.0ce3040c (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x8c)
|           0x0ce3040c      e62f           mov.l r14,@-r15
|           0x0ce3040e      224f           sts.l pr,@-r15
|           0x0ce30410      18d3           mov.l @(0x60,PC),r3
|           0x0ce30412      0b43           jsr @r3
|           0x0ce30414      436e           mov r4,r14
|           0x0ce30416      0820           tst r0,r0
|           0x0ce30418      0489           bt 0x0ce30424
|           0x0ce3041a      1b90           mov.w @(0x36,PC),r0
|           0x0ce3041c      ee02           mov.l @(r0,r14),r2
|           0x0ce3041e      2063           mov.b @r2,r3
|           0x0ce30420      3823           tst r3,r3
|           0x0ce30422      038b           bf 0x0ce3042c
|           ; CODE XREF from fcn.0ce3040c (0xce30418)
|           0x0ce30424      264f           lds.l @r15+,pr
|           0x0ce30426      00e0           mov 0x00,r0
|           0x0ce30428      0b00           rts 
|           0x0ce3042a      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3040c (0xce30422)
|           0x0ce3042c      0e90           mov.w @(0x1C,PC),r0
|           0x0ce3042e      0ce3           mov 0x0C,r3
|           0x0ce30430      1de5           mov 0x1D,r5
|           0x0ce30432      340e           mov.b r3,@(r0,r14)
|           0x0ce30434      00e0           mov 0x00,r0
|           0x0ce30436      08d3           mov.l @(0x20,PC),r3
|           0x0ce30438      e580           mov.b r0,@(0x5,r14)
|           0x0ce3043a      0b43           jsr @r3
|           0x0ce3043c      e364           mov r14,r4
|           0x0ce3043e      00e0           mov 0x00,r0
|           0x0ce30440      e780           mov.b r0,@(0x7,r14)
|           0x0ce30442      e680           mov.b r0,@(0x6,r14)
|           0x0ce30444      01e0           mov 0x01,r0
|           0x0ce30446      264f           lds.l @r15+,pr
|           0x0ce30448      0b00           rts 
\           0x0ce3044a      f66e           mov.l @r15+,r14


;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3044c 0x01e9 0x0394 0x038c 0x039c 0x040c 0x0000
0x0ce30458  0x8c0530d8 0x0ce33e7a 0x8c055066 0x0ce33e3c
0x0ce30468  0x8c054e58 0x8c055c3a 0x0ce33e4c 0x8c054d1c

;==============================================================================
/ (fcn) fcn.0ce30478 58
|   fcn.0ce30478 (int arg_5h, int arg_6h, int arg_7h);
|           ; arg int arg_5h @ r14+0x5
|           ; arg int arg_6h @ r14+0x6
|           ; arg int arg_7h @ r14+0x7
|           ; CALL XREF from aav.0x0ce3001c (+0x94)
|           0x0ce30478      e62f           mov.l r14,@-r15
|           0x0ce3047a      436e           mov r4,r14
|           0x0ce3047c      224f           sts.l pr,@-r15
|           0x0ce3047e      44d3           mov.l @(0x110,PC),r3
|           0x0ce30480      0b43           jsr @r3
|           0x0ce30482      0be5           mov 0x0B,r5
|           0x0ce30484      0c60           extu.b r0,r0
|           0x0ce30486      0820           tst r0,r0
|           0x0ce30488      038b           bf 0x0ce30492
|           0x0ce3048a      264f           lds.l @r15+,pr
|           0x0ce3048c      00e0           mov 0x00,r0
|           0x0ce3048e      0b00           rts 
|           0x0ce30490      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce30478 (0xce30488)
|           0x0ce30492      7390           mov.w @(0xE6,PC),r0
|           0x0ce30494      0be3           mov 0x0B,r3
|           0x0ce30496      15e5           mov 0x15,r5
|           0x0ce30498      340e           mov.b r3,@(r0,r14)
|           0x0ce3049a      00e0           mov 0x00,r0
|           0x0ce3049c      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce3049e      e580           mov.b r0,@(0x5,r14)
|           0x0ce304a0      0b43           jsr @r3
|           0x0ce304a2      e364           mov r14,r4
|           0x0ce304a4      00e0           mov 0x00,r0
|           0x0ce304a6      e780           mov.b r0,@(0x7,r14)
|           0x0ce304a8      e680           mov.b r0,@(0x6,r14)
|           0x0ce304aa      01e0           mov 0x01,r0
|           0x0ce304ac      264f           lds.l @r15+,pr
|           0x0ce304ae      0b00           rts 
\           0x0ce304b0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce304b2:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x34)
            0x0ce304b2      224f           sts.l pr,@-r15
            0x0ce304b4      fc7f           add 0xFC,r15
            0x0ce304b6      0fb0           bsr fcn.0ce304d8
            0x0ce304b8      422f           mov.l r4,@r15
            0x0ce304ba      0820           tst r0,r0
            0x0ce304bc      038b           bf 0x0ce304c6
            0x0ce304be      26b0           bsr fcn.0ce3050e
            0x0ce304c0      f264           mov.l @r15,r4
            0x0ce304c2      0820           tst r0,r0
            0x0ce304c4      0389           bt 0x0ce304ce
            ; CODE XREF from aav.0x0ce304b2 (+0xa)
            0x0ce304c6      047f           add 0x04,r15
            0x0ce304c8      264f           lds.l @r15+,pr
            0x0ce304ca      0b00           rts 
            0x0ce304cc      01e0           mov 0x01,r0
            ; CODE XREF from aav.0x0ce304b2 (+0x12)
            0x0ce304ce      00e0           mov 0x00,r0
            0x0ce304d0      047f           add 0x04,r15
            0x0ce304d2      264f           lds.l @r15+,pr
            0x0ce304d4      0b00           rts 
            0x0ce304d6      0900           nop 
/ (fcn) fcn.0ce304d8 54
|   fcn.0ce304d8 ();
|           ; CALL XREF from aav.0x0ce304b2 (+0x4)
|           0x0ce304d8      e62f           mov.l r14,@-r15
|           0x0ce304da      436e           mov r4,r14
|           0x0ce304dc      224f           sts.l pr,@-r15
|           0x0ce304de      2ed5           mov.l @(0xB8,PC),r5
|           0x0ce304e0      4d96           mov.w @(0x9A,PC),r6
|           0x0ce304e2      2ed3           mov.l @(0xB8,PC),r3
|           0x0ce304e4      0b43           jsr @r3
|           0x0ce304e6      ec36           add r14,r6
|           0x0ce304e8      0c60           extu.b r0,r0
|           0x0ce304ea      0820           tst r0,r0
|           0x0ce304ec      0489           bt 0x0ce304f8
|           0x0ce304ee      4790           mov.w @(0x8E,PC),r0
|           0x0ce304f0      ee02           mov.l @(r0,r14),r2
|           0x0ce304f2      2063           mov.b @r2,r3
|           0x0ce304f4      3823           tst r3,r3
|           0x0ce304f6      038b           bf 0x0ce30500
|           ; CODE XREF from fcn.0ce304d8 (0xce304ec)
|           0x0ce304f8      264f           lds.l @r15+,pr
|           0x0ce304fa      00e0           mov 0x00,r0
|           0x0ce304fc      0b00           rts 
|           0x0ce304fe      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce304d8 (0xce304f6)
|           0x0ce30500      3f90           mov.w @(0x7E,PC),r0
|           0x0ce30502      02e3           mov 0x02,r3
|           0x0ce30504      340e           mov.b r3,@(r0,r14)
|           0x0ce30506      01e0           mov 0x01,r0
|           0x0ce30508      264f           lds.l @r15+,pr
|           0x0ce3050a      0b00           rts 
\           0x0ce3050c      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3050e 66
|   fcn.0ce3050e ();
|           ; CALL XREF from aav.0x0ce304b2 (+0xc)
|           0x0ce3050e      e62f           mov.l r14,@-r15
|           0x0ce30510      436e           mov r4,r14
|           0x0ce30512      224f           sts.l pr,@-r15
|           0x0ce30514      22d5           mov.l @(0x88,PC),r5
|           0x0ce30516      3596           mov.w @(0x6A,PC),r6
|           0x0ce30518      20d3           mov.l @(0x80,PC),r3
|           0x0ce3051a      0b43           jsr @r3
|           0x0ce3051c      ec36           add r14,r6
|           0x0ce3051e      0c60           extu.b r0,r0
|           0x0ce30520      0820           tst r0,r0
|           0x0ce30522      0989           bt 0x0ce30538
|           0x0ce30524      2c90           mov.w @(0x58,PC),r0
|           0x0ce30526      ee03           mov.l @(r0,r14),r3
|           0x0ce30528      3062           mov.b @r3,r2
|           0x0ce3052a      2822           tst r2,r2
|           0x0ce3052c      0489           bt 0x0ce30538
|           0x0ce3052e      2a90           mov.w @(0x54,PC),r0
|           0x0ce30530      ec00           mov.b @(r0,r14),r0
|           0x0ce30532      0c60           extu.b r0,r0
|           0x0ce30534      0288           cmp/eq 0x02,r0
|           0x0ce30536      038b           bf 0x0ce30540
|           ; CODE XREFS from fcn.0ce3050e (0xce30522, 0xce3052c)
|           0x0ce30538      264f           lds.l @r15+,pr
|           0x0ce3053a      00e0           mov 0x00,r0
|           0x0ce3053c      0b00           rts 
|           0x0ce3053e      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce3050e (0xce30536)
|           0x0ce30540      1f90           mov.w @(0x3E,PC),r0
|           0x0ce30542      01e2           mov 0x01,r2
|           0x0ce30544      240e           mov.b r2,@(r0,r14)
|           0x0ce30546      2360           mov r2,r0
|           0x0ce30548      0900           nop 
|           0x0ce3054a      264f           lds.l @r15+,pr
|           0x0ce3054c      0b00           rts 
\           0x0ce3054e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30550:
            ; UNKNOWN XREF from aav.0x0ce33e9c ()
            0x0ce30550      1a90           mov.w @(0x34,PC),r0
            0x0ce30552      4c03           mov.b @(r0,r4),r3
            0x0ce30554      3823           tst r3,r3
            0x0ce30556      0289           bt 0x0ce3055e
            0x0ce30558      4584           mov.b @(0x5,r4),r0
            0x0ce3055a      0820           tst r0,r0
            0x0ce3055c      0289           bt 0x0ce30564
            ; CODE XREF from aav.0x0ce30550 (+0x6)
            0x0ce3055e      1490           mov.w @(0x28,PC),r0
            0x0ce30560      00e2           mov 0x00,r2
            0x0ce30562      2404           mov.b r2,@(r0,r4)
            ; CODE XREF from aav.0x0ce30550 (+0xc)
            0x0ce30564      0b00           rts 
            0x0ce30566      0900           nop 
            ;-- aav.0x0ce30568:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x8)
            0x0ce30568      1090           mov.w @(0x20,PC),r0
            0x0ce3056a      4363           mov r4,r3
            0x0ce3056c      462f           mov.l r4,@-r15
            0x0ce3056e      3c02           mov.b @(r0,r3),r2
            0x0ce30570      0cd0           mov.l @(0x30,PC),r0
            0x0ce30572      2c62           extu.b r2,r2
            0x0ce30574      0842           shll2 r2
            0x0ce30576      2e03           mov.l @(r0,r2),r3
            0x0ce30578      2b43           jmp @r3
            0x0ce3057a      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3057c 0x01e9 0x0374 0x040c 0x0258 0x036c 0x01f9 0x01a0 0x02a8  ..t...X.l...
0x0ce3058c 0x01ff 0x0000
0x0ce30590  0x8c054da0 0x8c0530d8 0x0ce33e0c 0x8c054e58  .M...0...>..XN..       
0x0ce305a0  0x0ce33e1c 0x0ce33f0c 

;==============================================================================
            ;-- aav.0x0ce305a8:
            ; UNKNOWN XREFS from aav.0x0ce33f0c (, +0xc)
            0x0ce305a8      e62f           mov.l r14,@-r15
            0x0ce305aa      224f           sts.l pr,@-r15
            0x0ce305ac      3ed3           mov.l @(0xF8,PC),r3
            0x0ce305ae      0b43           jsr @r3
            0x0ce305b0      436e           mov r4,r14
            0x0ce305b2      7090           mov.w @(0xE0,PC),r0
            0x0ce305b4      ec00           mov.b @(r0,r14),r0

            0x0ce305b6      0c60           extu.b r0,r0
            0x0ce305b8      0188           cmp/eq 0x01,r0
            0x0ce305ba      0c8b           bf 0x0ce305d6;To punches

            0x0ce305bc      6c90           mov.w @(0xD8,PC),r0
            0x0ce305be      ec00           mov.b @(r0,r14),r0
            0x0ce305c0      0c60           extu.b r0,r0
            0x0ce305c2      0188           cmp/eq 0x01,r0
            0x0ce305c4      038b           bf 0x0ce305ce
            0x0ce305c6      264f           lds.l @r15+,pr
            0x0ce305c8      e364           mov r14,r4
            0x0ce305ca      32a1           bra 0x0ce30832 ;Crouch Kicks
            0x0ce305cc      f66e           mov.l @r15+,r14


            ; CODE XREF from aav.0x0ce305a8 (+0x1c)
            0x0ce305ce      264f           lds.l @r15+,pr
            0x0ce305d0      e364           mov r14,r4
            0x0ce305d2      caa0           bra 0x0ce3076a ;Standing Kicks
            0x0ce305d4      f66e           mov.l @r15+,r14
 
           ; CODE XREF from aav.0x0ce305a8 (+0x12)
            0x0ce305d6      5f90           mov.w @(0xBE,PC),r0
            0x0ce305d8      ec00           mov.b @(r0,r14),r0
            0x0ce305da      0c60           extu.b r0,r0
            0x0ce305dc      0188           cmp/eq 0x01,r0
            0x0ce305de      038b           bf 0x0ce305e8
            0x0ce305e0      264f           lds.l @r15+,pr
            0x0ce305e2      e364           mov r14,r4
            0x0ce305e4      6ea0           bra 0x0ce306c4;To crouching punches
            0x0ce305e6      f66e           mov.l @r15+,r14

            ; CODE XREF from aav.0x0ce305a8 (+0x36)
            0x0ce305e8      264f           lds.l @r15+,pr
            0x0ce305ea      e364           mov r14,r4
            0x0ce305ec      00a0           bra 0x0ce305f0; Standing Punches
            0x0ce305ee      f66e           mov.l @r15+,r14

            ; CODE XREF from aav.0x0ce305a8 (+0x44)
            0x0ce305f0      5390           mov.w @(0xA6,PC),r0
            0x0ce305f2      e62f           mov.l r14,@-r15
            0x0ce305f4      436e           mov r4,r14
            0x0ce305f6      d62f           mov.l r13,@-r15
            0x0ce305f8      c62f           mov.l r12,@-r15
            0x0ce305fa      01ec           mov 0x01,r12
            0x0ce305fc      224f           sts.l pr,@-r15
            0x0ce305fe      ec00           mov.b @(r0,r14),r0
            0x0ce30600      0c60           extu.b r0,r0
 
;LP
            0x0ce30602      0088           cmp/eq 0x00,r0
            0x0ce30604      068d           bt.s 0x0ce30614
            0x0ce30606      00ed           mov 0x00,r13

;MP?
            0x0ce30608      0188           cmp/eq 0x01,r0 ;chain checks?
            0x0ce3060a      1389           bt 0x0ce30634

;MP?
            0x0ce3060c      0288           cmp/eq 0x02,r0
            0x0ce3060e      1f89           bt 0x0ce30650

;Nothing?
            0x0ce30610      28a0           bra 0x0ce30664
            0x0ce30612      0900           nop 

;5LP Animation write
            ; CODE XREF from aav.0x0ce305a8 (+0x5c) ;LP
            0x0ce30614      4290           mov.w @(0x84,PC),r0 ; 0xce3069c
            0x0ce30616      14e5           mov 0x14,r5
            0x0ce30618      24d3           mov.l @(0x90,PC),r3 ; 0xce036ac
            0x0ce3061a      d40e           mov.b r13,@(r0,r14)
            0x0ce3061c      4970           add 0x49,r0
            0x0ce3061e      d40e           mov.b r13,@(r0,r14)
            0x0ce30620      0b43           jsr @r3
            0x0ce30622      e364           mov r14,r4
            0x0ce30624      3b90           mov.w @(0x76,PC),r0
            0x0ce30626      22d2           mov.l @(0x88,PC),r2
            0x0ce30628      260e           mov.l r2,@(r0,r14)
            0x0ce3062a      3990           mov.w @(0x72,PC),r0
            0x0ce3062c      d40e           mov.b r13,@(r0,r14)
            0x0ce3062e      3890           mov.w @(0x70,PC),r0
            0x0ce30630      0ca0           bra 0x0ce3064c
            0x0ce30632      0900           nop 

            ; CODE XREF from aav.0x0ce305a8 (+0x62)
            0x0ce30634      3290           mov.w @(0x64,PC),r0
            0x0ce30636      15e5           mov 0x15,r5
            0x0ce30638      1cd3           mov.l @(0x70,PC),r3
            0x0ce3063a      c40e           mov.b r12,@(r0,r14)
            0x0ce3063c      4970           add 0x49,r0
            0x0ce3063e      c40e           mov.b r12,@(r0,r14)
            0x0ce30640      0b43           jsr @r3
            0x0ce30642      e364           mov r14,r4
            0x0ce30644      2b90           mov.w @(0x56,PC),r0
            0x0ce30646      1bd2           mov.l @(0x6C,PC),r2
            0x0ce30648      260e           mov.l r2,@(r0,r14)
            0x0ce3064a      2990           mov.w @(0x52,PC),r0

            ; CODE XREF from aav.0x0ce305a8 (+0x88)
            0x0ce3064c      0aa0           bra 0x0ce30664
            0x0ce3064e      c40e           mov.b r12,@(r0,r14)


            ; CODE XREF from aav.0x0ce305a8 (+0x66)
            0x0ce30650      2490           mov.w @(0x48,PC),r0
            0x0ce30652      02e4           mov 0x02,r4
            0x0ce30654      18d3           mov.l @(0x60,PC),r3
            0x0ce30656      440e           mov.b r4,@(r0,r14)
            0x0ce30658      4970           add 0x49,r0
            0x0ce3065a      440e           mov.b r4,@(r0,r14)
            0x0ce3065c      1f90           mov.w @(0x3E,PC),r0
            0x0ce3065e      360e           mov.l r3,@(r0,r14)
            0x0ce30660      1e90           mov.w @(0x3C,PC),r0
            0x0ce30662      440e           mov.b r4,@(r0,r14)
 
            ; CODE XREFS from aav.0x0ce305a8 (+0x68, +0xa4)
            0x0ce30664      1e90           mov.w @(0x3C,PC),r0
            0x0ce30666      07e5           mov 0x07,r5
            0x0ce30668      14d3           mov.l @(0x50,PC),r3
            0x0ce3066a      e364           mov r14,r4
            0x0ce3066c      d50e           mov.w r13,@(r0,r14)
            0x0ce3066e      f270           add 0xF2,r0
            0x0ce30670      d40e           mov.b r13,@(r0,r14)
            0x0ce30672      2670           add 0x26,r0
            0x0ce30674      d60e           mov.l r13,@(r0,r14)
            0x0ce30676      e284           mov.b @(0x2,r14),r0
            0x0ce30678      3262           mov.l @r3,r2
            0x0ce3067a      0c60           extu.b r0,r0
            0x0ce3067c      0040           shll r0
            0x0ce3067e      7c72           add 0x7C,r2
            0x0ce30680      2d01           mov.w @(r0,r2),r1
            0x0ce30682      0171           add 0x01,r1
            0x0ce30684      1502           mov.w r1,@(r0,r2)
            0x0ce30686      264f           lds.l @r15+,pr
            0x0ce30688      0890           mov.w @(0x10,PC),r0
            0x0ce3068a      0dd2           mov.l @(0x34,PC),r2
            0x0ce3068c      f66c           mov.l @r15+,r12
            0x0ce3068e      ec06           mov.b @(r0,r14),r6
            0x0ce30690      f66d           mov.l @r15+,r13
            0x0ce30692      2b42           jmp @r2
            0x0ce30694      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30696 0x01fe 0x01f9 0x01e8 0x0158 0x03f4 0x01a7 0x02a2 0x01ac
0x0ce306a6 0x0000

0x0ce306a8  0x8c052b4c 0x8c04223a 0x0ce33dc4 0x0ce33dc8
0x0ce306b8  0x0ce33dcc 0x8c2896b0 0x8c034e8c

;==============================================================================
            ; CODE XREF from aav.0x0ce305a8 (+0x3c)
            0x0ce306c4      7890           mov.w @(0xF0,PC),r0
            0x0ce306c6      e62f           mov.l r14,@-r15
            0x0ce306c8      436e           mov r4,r14
            0x0ce306ca      d62f           mov.l r13,@-r15
            0x0ce306cc      224f           sts.l pr,@-r15
            0x0ce306ce      ec00           mov.b @(r0,r14),r0

;Crouch Punches
            0x0ce306d0      0c60           extu.b r0,r0
            0x0ce306d2      0088           cmp/eq 0x00,r0
            0x0ce306d4      068d           bt.s 0x0ce306e4
            0x0ce306d6      00ed           mov 0x00,r13
            0x0ce306d8      0188           cmp/eq 0x01,r0
            0x0ce306da      1289           bt 0x0ce30702
            0x0ce306dc      0288           cmp/eq 0x02,r0
            0x0ce306de      2189           bt 0x0ce30724
            0x0ce306e0      2ba0           bra 0x0ce3073a
            0x0ce306e2      0900           nop 

;
            ; CODE XREF from aav.0x0ce305a8 (+0x12c)
            0x0ce306e4      6990           mov.w @(0xD2,PC),r0
            0x0ce306e6      06e3           mov 0x06,r3
            0x0ce306e8      14e5           mov 0x14,r5
            0x0ce306ea      d40e           mov.b r13,@(r0,r14)
            0x0ce306ec      4970           add 0x49,r0
            0x0ce306ee      340e           mov.b r3,@(r0,r14)
            0x0ce306f0      34d3           mov.l @(0xD0,PC),r3
            0x0ce306f2      0b43           jsr @r3
            0x0ce306f4      e364           mov r14,r4
            0x0ce306f6      6190           mov.w @(0xC2,PC),r0
            0x0ce306f8      33d2           mov.l @(0xCC,PC),r2
            0x0ce306fa      260e           mov.l r2,@(r0,r14)
            0x0ce306fc      5f90           mov.w @(0xBE,PC),r0
            0x0ce306fe      1ca0           bra 0x0ce3073a
            0x0ce30700      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x132)
            0x0ce30702      5a90           mov.w @(0xB4,PC),r0
            0x0ce30704      01e2           mov 0x01,r2
            0x0ce30706      07e3           mov 0x07,r3
            0x0ce30708      240e           mov.b r2,@(r0,r14)
            0x0ce3070a      4970           add 0x49,r0
            0x0ce3070c      340e           mov.b r3,@(r0,r14)
            0x0ce3070e      15e5           mov 0x15,r5
            0x0ce30710      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30712      0b43           jsr @r3
            0x0ce30714      e364           mov r14,r4
            0x0ce30716      5190           mov.w @(0xA2,PC),r0
            0x0ce30718      01e3           mov 0x01,r3
            0x0ce3071a      2cd2           mov.l @(0xB0,PC),r2
            0x0ce3071c      260e           mov.l r2,@(r0,r14)
            0x0ce3071e      4e90           mov.w @(0x9C,PC),r0
            0x0ce30720      0ba0           bra 0x0ce3073a
            0x0ce30722      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x136)
            0x0ce30724      4990           mov.w @(0x92,PC),r0
            0x0ce30726      02e4           mov 0x02,r4
            0x0ce30728      08e3           mov 0x08,r3
            0x0ce3072a      29d2           mov.l @(0xA4,PC),r2
            0x0ce3072c      440e           mov.b r4,@(r0,r14)
            0x0ce3072e      4970           add 0x49,r0
            0x0ce30730      340e           mov.b r3,@(r0,r14)
            0x0ce30732      4390           mov.w @(0x86,PC),r0
            0x0ce30734      260e           mov.l r2,@(r0,r14)
            0x0ce30736      4290           mov.w @(0x84,PC),r0
            0x0ce30738      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce305a8 (+0x138, +0x156, +0x178)
            0x0ce3073a      4190           mov.w @(0x82,PC),r0
            0x0ce3073c      09e5           mov 0x09,r5
            0x0ce3073e      25d3           mov.l @(0x94,PC),r3
            0x0ce30740      e364           mov r14,r4
            0x0ce30742      d50e           mov.w r13,@(r0,r14)
            0x0ce30744      f270           add 0xF2,r0
            0x0ce30746      d40e           mov.b r13,@(r0,r14)
            0x0ce30748      2670           add 0x26,r0
            0x0ce3074a      d60e           mov.l r13,@(r0,r14)
            0x0ce3074c      e284           mov.b @(0x2,r14),r0
            0x0ce3074e      3262           mov.l @r3,r2
            0x0ce30750      0c60           extu.b r0,r0
            0x0ce30752      0040           shll r0
            0x0ce30754      7c72           add 0x7C,r2
            0x0ce30756      2d01           mov.w @(r0,r2),r1
            0x0ce30758      0171           add 0x01,r1
            0x0ce3075a      1502           mov.w r1,@(r0,r2)
            0x0ce3075c      264f           lds.l @r15+,pr
            0x0ce3075e      2c90           mov.w @(0x58,PC),r0
            0x0ce30760      1dd2           mov.l @(0x74,PC),r2
            0x0ce30762      f66d           mov.l @r15+,r13
            0x0ce30764      ec06           mov.b @(r0,r14),r6
            0x0ce30766      2b42           jmp @r2
            0x0ce30768      f66e           mov.l @r15+,r14

;Standing Kicks
            ; CODE XREF from aav.0x0ce305a8 (+0x2a)
            0x0ce3076a      2590           mov.w @(0x4A,PC),r0
            0x0ce3076c      e62f           mov.l r14,@-r15
            0x0ce3076e      436e           mov r4,r14
            0x0ce30770      d62f           mov.l r13,@-r15
            0x0ce30772      224f           sts.l pr,@-r15
            0x0ce30774      ec00           mov.b @(r0,r14),r0
            0x0ce30776      0c60           extu.b r0,r0
            0x0ce30778      0088           cmp/eq 0x00,r0
            0x0ce3077a      068d           bt.s 0x0ce3078a
            0x0ce3077c      00ed           mov 0x00,r13
            0x0ce3077e      0188           cmp/eq 0x01,r0
            0x0ce30780      0f89           bt 0x0ce307a2
            0x0ce30782      0288           cmp/eq 0x02,r0
            0x0ce30784      2e89           bt 0x0ce307e4
            0x0ce30786      39a0           bra 0x0ce307fc
            0x0ce30788      0900           nop 

            ; CODE XREF from aav.0x0ce305a8 (+0x1d2)
            0x0ce3078a      1690           mov.w @(0x2C,PC),r0
            0x0ce3078c      03e3           mov 0x03,r3
            0x0ce3078e      14e5           mov 0x14,r5
            0x0ce30790      d40e           mov.b r13,@(r0,r14)
            0x0ce30792      4970           add 0x49,r0
            0x0ce30794      340e           mov.b r3,@(r0,r14)
            0x0ce30796      1190           mov.w @(0x22,PC),r0
            0x0ce30798      10d3           mov.l @(0x40,PC),r3
            0x0ce3079a      360e           mov.l r3,@(r0,r14)
            0x0ce3079c      0f90           mov.w @(0x1E,PC),r0
            0x0ce3079e      2da0           bra 0x0ce307fc
            0x0ce307a0      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x1d8)
            0x0ce307a2      0a90           mov.w @(0x14,PC),r0
            0x0ce307a4      01e4           mov 0x01,r4
            0x0ce307a6      04e3           mov 0x04,r3
            0x0ce307a8      440e           mov.b r4,@(r0,r14)
            0x0ce307aa      4970           add 0x49,r0
            0x0ce307ac      340e           mov.b r3,@(r0,r14)
            0x0ce307ae      0590           mov.w @(0xA,PC),r0
            0x0ce307b0      0bd3           mov.l @(0x2C,PC),r3
            0x0ce307b2      360e           mov.l r3,@(r0,r14)
            0x0ce307b4      20a0           bra 0x0ce307f8
            0x0ce307b6      15e5           mov 0x15,r5

;##############################################################################
0x0ce307b8 0x01e8 0x0158 0x03f4 0x01a7 0x01ac 0x0000
0x0ce307c4  0x8c04223a 0x0ce33dc4 0x0ce33dc8 0x0ce33dcc
0x0ce307d4  0x8c2896b0 0x8c034e8c 0x0ce33dd0 0x0ce33dd4

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce305a8 (+0x1dc)
            0x0ce307e4      8790           mov.w @(0x10E,PC),r0
            0x0ce307e6      02e4           mov 0x02,r4
            0x0ce307e8      05e3           mov 0x05,r3
            0x0ce307ea      440e           mov.b r4,@(r0,r14)
            0x0ce307ec      4970           add 0x49,r0
            0x0ce307ee      340e           mov.b r3,@(r0,r14)
            0x0ce307f0      16e5           mov 0x16,r5
            0x0ce307f2      44d3           mov.l @(0x110,PC),r3
            0x0ce307f4      8090           mov.w @(0x100,PC),r0
            0x0ce307f6      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x20c)
            0x0ce307f8      7f90           mov.w @(0xFE,PC),r0
            0x0ce307fa      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce305a8 (+0x1de, +0x1f6)
            0x0ce307fc      42d2           mov.l @(0x108,PC),r2
            0x0ce307fe      0b42           jsr @r2
            0x0ce30800      e364           mov r14,r4
            0x0ce30802      7b90           mov.w @(0xF6,PC),r0
            0x0ce30804      08e5           mov 0x08,r5
            0x0ce30806      41d3           mov.l @(0x104,PC),r3
            0x0ce30808      e364           mov r14,r4
            0x0ce3080a      d50e           mov.w r13,@(r0,r14)
            0x0ce3080c      f270           add 0xF2,r0
            0x0ce3080e      d40e           mov.b r13,@(r0,r14)
            0x0ce30810      2670           add 0x26,r0
            0x0ce30812      d60e           mov.l r13,@(r0,r14)
            0x0ce30814      e284           mov.b @(0x2,r14),r0
            0x0ce30816      3262           mov.l @r3,r2
            0x0ce30818      0c60           extu.b r0,r0
            0x0ce3081a      0040           shll r0
            0x0ce3081c      7c72           add 0x7C,r2
            0x0ce3081e      2d01           mov.w @(r0,r2),r1
            0x0ce30820      0171           add 0x01,r1
            0x0ce30822      1502           mov.w r1,@(r0,r2)
            0x0ce30824      264f           lds.l @r15+,pr
            0x0ce30826      6690           mov.w @(0xCC,PC),r0
            0x0ce30828      39d2           mov.l @(0xE4,PC),r2
            0x0ce3082a      f66d           mov.l @r15+,r13
            0x0ce3082c      ec06           mov.b @(r0,r14),r6
            0x0ce3082e      2b42           jmp @r2
            0x0ce30830      f66e           mov.l @r15+,r14

;==============================================================================
            ; CODE XREF from aav.0x0ce305a8 (+0x22)
            0x0ce30832      6490           mov.w @(0xC8,PC),r0
            0x0ce30834      e62f           mov.l r14,@-r15
            0x0ce30836      436e           mov r4,r14
            0x0ce30838      d62f           mov.l r13,@-r15
            0x0ce3083a      224f           sts.l pr,@-r15
            0x0ce3083c      ec00           mov.b @(r0,r14),r0

            0x0ce3083e      0c60           extu.b r0,r0
            0x0ce30840      0088           cmp/eq 0x00,r0
            0x0ce30842      068d           bt.s 0x0ce30852
            0x0ce30844      00ed           mov 0x00,r13
            0x0ce30846      0188           cmp/eq 0x01,r0
            0x0ce30848      0f89           bt 0x0ce3086a
            0x0ce3084a      0288           cmp/eq 0x02,r0
            0x0ce3084c      1889           bt 0x0ce30880
            0x0ce3084e      23a0           bra 0x0ce30898
            0x0ce30850      0900           nop

;2LK
            ; CODE XREF from aav.0x0ce305a8 (+0x29a)
            0x0ce30852      5090           mov.w @(0xA0,PC),r0
            0x0ce30854      09e3           mov 0x09,r3
            0x0ce30856      14e5           mov 0x14,r5
            0x0ce30858      d40e           mov.b r13,@(r0,r14)
            0x0ce3085a      4970           add 0x49,r0
            0x0ce3085c      340e           mov.b r3,@(r0,r14)
            0x0ce3085e      4b90           mov.w @(0x96,PC),r0
            0x0ce30860      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30862      360e           mov.l r3,@(r0,r14)
            0x0ce30864      4990           mov.w @(0x92,PC),r0
            0x0ce30866      17a0           bra 0x0ce30898
            0x0ce30868      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x2a0)
            0x0ce3086a      4490           mov.w @(0x88,PC),r0
            0x0ce3086c      01e4           mov 0x01,r4
            0x0ce3086e      0ae3           mov 0x0A,r3
            0x0ce30870      440e           mov.b r4,@(r0,r14)
            0x0ce30872      4970           add 0x49,r0
            0x0ce30874      340e           mov.b r3,@(r0,r14)
            0x0ce30876      3f90           mov.w @(0x7E,PC),r0
            0x0ce30878      27d3           mov.l @(0x9C,PC),r3
            0x0ce3087a      360e           mov.l r3,@(r0,r14)
            0x0ce3087c      0aa0           bra 0x0ce30894
            0x0ce3087e      15e5           mov 0x15,r5
            ; CODE XREF from aav.0x0ce305a8 (+0x2a4)
            0x0ce30880      3990           mov.w @(0x72,PC),r0
            0x0ce30882      02e4           mov 0x02,r4
            0x0ce30884      0be3           mov 0x0B,r3
            0x0ce30886      440e           mov.b r4,@(r0,r14)
            0x0ce30888      4970           add 0x49,r0
            0x0ce3088a      340e           mov.b r3,@(r0,r14)
            0x0ce3088c      16e5           mov 0x16,r5
            0x0ce3088e      1dd3           mov.l @(0x74,PC),r3
            0x0ce30890      3290           mov.w @(0x64,PC),r0
            0x0ce30892      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce305a8 (+0x2d4)
            0x0ce30894      3190           mov.w @(0x62,PC),r0
            0x0ce30896      440e           mov.b r4,@(r0,r14)
            ; CODE XREFS from aav.0x0ce305a8 (+0x2a6, +0x2be)
            0x0ce30898      1bd2           mov.l @(0x6C,PC),r2
            0x0ce3089a      0b42           jsr @r2
            0x0ce3089c      e364           mov r14,r4
            0x0ce3089e      2d90           mov.w @(0x5A,PC),r0
            0x0ce308a0      0ae5           mov 0x0A,r5
            0x0ce308a2      1ad3           mov.l @(0x68,PC),r3
            0x0ce308a4      e364           mov r14,r4
            0x0ce308a6      d50e           mov.w r13,@(r0,r14)
            0x0ce308a8      f270           add 0xF2,r0
            0x0ce308aa      d40e           mov.b r13,@(r0,r14)
            0x0ce308ac      2670           add 0x26,r0
            0x0ce308ae      d60e           mov.l r13,@(r0,r14)
            0x0ce308b0      e284           mov.b @(0x2,r14),r0
            0x0ce308b2      3262           mov.l @r3,r2
            0x0ce308b4      0c60           extu.b r0,r0
            0x0ce308b6      0040           shll r0
            0x0ce308b8      7c72           add 0x7C,r2
            0x0ce308ba      2d01           mov.w @(r0,r2),r1
            0x0ce308bc      0171           add 0x01,r1
            0x0ce308be      1502           mov.w r1,@(r0,r2)
            0x0ce308c0      264f           lds.l @r15+,pr
            0x0ce308c2      1890           mov.w @(0x30,PC),r0
            0x0ce308c4      12d2           mov.l @(0x48,PC),r2
            0x0ce308c6      f66d           mov.l @r15+,r13
            0x0ce308c8      ec06           mov.b @(r0,r14),r6
            0x0ce308ca      2b42           jmp @r2
            0x0ce308cc      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce308ce:
            ; UNKNOWN XREF from aav.0x0ce33f0c (+0x4)
            0x0ce308ce      1790           mov.w @(0x2E,PC),r0
            0x0ce308d0      4c03           mov.b @(r0,r4),r3
            0x0ce308d2      3823           tst r3,r3
            0x0ce308d4      038b           bf 0x0ce308de
            0x0ce308d6      1490           mov.w @(0x28,PC),r0
            0x0ce308d8      4c00           mov.b @(r0,r4),r0
            0x0ce308da      0fc8           tst 0x0F,r0
            0x0ce308dc      078b           bf 0x0ce308ee
            ; CODE XREF from aav.0x0ce308ce (+0x6)
            0x0ce308de      0f90           mov.w @(0x1E,PC),r0
            0x0ce308e0      4c02           mov.b @(r0,r4),r2
            0x0ce308e2      2822           tst r2,r2
            0x0ce308e4      0589           bt 0x0ce308f2
            0x0ce308e6      0c90           mov.w @(0x18,PC),r0
            0x0ce308e8      4c00           mov.b @(r0,r4),r0
            0x0ce308ea      f0c8           tst 0xF0,r0
            0x0ce308ec      0189           bt 0x0ce308f2
            ; CODE XREF from aav.0x0ce308ce (+0xe)
            0x0ce308ee      15a0           bra aav.0x0ce3091c
            0x0ce308f0      0900           nop 
            ; CODE XREFS from aav.0x0ce308ce (+0x16, +0x1e)
            0x0ce308f2      0b00           rts 
            0x0ce308f4      0900           nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce308f6 0x0158 0x03f4 0x01a7 0x01ac 0x01e8 0x01fe 0x01d6
0x0ce30904  0x0ce33dd8 0x8c04223a 0x8c2896b0 0x8c034e8c
0x0ce30914  0x0ce33dd0 0x0ce33dd4

;==============================================================================
            ;-- aav.0x0ce3091c:
            ; CODE XREF from aav.0x0ce308ce (+0x20)
            ; UNKNOWN XREF from aav.0x0ce33f0c (+0x8)
            0x0ce3091c      6d90           mov.w @(0xDA,PC),r0
            0x0ce3091e      4c00           mov.b @(r0,r4),r0
            0x0ce30920      0c60           extu.b r0,r0
            0x0ce30922      0188           cmp/eq 0x01,r0
            0x0ce30924      018b           bf 0x0ce3092a
            0x0ce30926      a3a0           bra 0x0ce30a70
            0x0ce30928      0900           nop 
            ; CODE XREF from aav.0x0ce3091c (+0x8)
            0x0ce3092a      00a0           bra 0x0ce3092e
            0x0ce3092c      0900           nop 
            ; CODE XREF from aav.0x0ce3091c (+0xe)
            0x0ce3092e      6690           mov.w @(0xCC,PC),r0
            0x0ce30930      e62f           mov.l r14,@-r15
            0x0ce30932      436e           mov r4,r14
            0x0ce30934      d62f           mov.l r13,@-r15
            0x0ce30936      c62f           mov.l r12,@-r15
            0x0ce30938      224f           sts.l pr,@-r15
            0x0ce3093a      ec00           mov.b @(r0,r14),r0
            0x0ce3093c      5e94           mov.w @(0xBC,PC),r4
            0x0ce3093e      0c60           extu.b r0,r0
            0x0ce30940      31dc           mov.l @(0xC4,PC),r12

;Air Punches
            0x0ce30942      0088           cmp/eq 0x00,r0
            0x0ce30944      068d           bt.s 0x0ce30954
            0x0ce30946      00ed           mov 0x00,r13
            0x0ce30948      0188           cmp/eq 0x01,r0
            0x0ce3094a      1989           bt 0x0ce30980
            0x0ce3094c      0288           cmp/eq 0x02,r0
            0x0ce3094e      3889           bt 0x0ce309c2
            0x0ce30950      6ca0           bra 0x0ce30a2c
            0x0ce30952      0900           nop


            ; CODE XREF from aav.0x0ce3091c (+0x28)
            0x0ce30954      5490           mov.w @(0xA8,PC),r0
            0x0ce30956      0ce3           mov 0x0C,r3
            0x0ce30958      14e5           mov 0x14,r5
            0x0ce3095a      d40e           mov.b r13,@(r0,r14)
            0x0ce3095c      4970           add 0x49,r0
            0x0ce3095e      340e           mov.b r3,@(r0,r14)
            0x0ce30960      0b4c           jsr @r12
            0x0ce30962      e364           mov r14,r4
            0x0ce30964      4d90           mov.w @(0x9A,PC),r0
            0x0ce30966      ec03           mov.b @(r0,r14),r3
            0x0ce30968      3823           tst r3,r3
            0x0ce3096a      038b           bf 0x0ce30974
            0x0ce3096c      4a90           mov.w @(0x94,PC),r0
            0x0ce3096e      27d3           mov.l @(0x9C,PC),r3
            0x0ce30970      03a0           bra 0x0ce3097a
            0x0ce30972      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x4e)
            0x0ce30974      4690           mov.w @(0x8C,PC),r0
            0x0ce30976      26d1           mov.l @(0x98,PC),r1
            0x0ce30978      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x54)
            0x0ce3097a      4490           mov.w @(0x88,PC),r0
            0x0ce3097c      56a0           bra 0x0ce30a2c
            0x0ce3097e      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x2e)
            0x0ce30980      3e90           mov.w @(0x7C,PC),r0
            0x0ce30982      01e2           mov 0x01,r2
            0x0ce30984      0de3           mov 0x0D,r3
            0x0ce30986      240e           mov.b r2,@(r0,r14)
            0x0ce30988      4970           add 0x49,r0
            0x0ce3098a      340e           mov.b r3,@(r0,r14)
            0x0ce3098c      5970           add 0x59,r0
            0x0ce3098e      ed02           mov.w @(r0,r14),r2
            0x0ce30990      2d62           extu.w r2,r2
            0x0ce30992      4822           tst r4,r2
            0x0ce30994      068d           bt.s 0x0ce309a4
            0x0ce30996      15e5           mov 0x15,r5
            0x0ce30998      3290           mov.w @(0x64,PC),r0
            0x0ce3099a      03e1           mov 0x03,r1
            0x0ce3099c      12e3           mov 0x12,r3
            0x0ce3099e      140e           mov.b r1,@(r0,r14)
            0x0ce309a0      4970           add 0x49,r0
            0x0ce309a2      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x78)
            0x0ce309a4      0b4c           jsr @r12
            0x0ce309a6      e364           mov r14,r4
            0x0ce309a8      2b90           mov.w @(0x56,PC),r0
            0x0ce309aa      ec03           mov.b @(r0,r14),r3
            0x0ce309ac      3823           tst r3,r3
            0x0ce309ae      038b           bf 0x0ce309b8
            0x0ce309b0      2890           mov.w @(0x50,PC),r0
            0x0ce309b2      18d3           mov.l @(0x60,PC),r3
            0x0ce309b4      03a0           bra 0x0ce309be
            0x0ce309b6      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x92)
            0x0ce309b8      2490           mov.w @(0x48,PC),r0
            0x0ce309ba      17d1           mov.l @(0x5C,PC),r1
            0x0ce309bc      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x98)
            0x0ce309be      33a0           bra 0x0ce30a28
            0x0ce309c0      01e3           mov 0x01,r3
            ; CODE XREF from aav.0x0ce3091c (+0x32)
            0x0ce309c2      1d90           mov.w @(0x3A,PC),r0
            0x0ce309c4      02e1           mov 0x02,r1
            0x0ce309c6      0ee3           mov 0x0E,r3
            0x0ce309c8      140e           mov.b r1,@(r0,r14)
            0x0ce309ca      4970           add 0x49,r0
            0x0ce309cc      340e           mov.b r3,@(r0,r14)
            0x0ce309ce      5970           add 0x59,r0
            0x0ce309d0      ed02           mov.w @(r0,r14),r2
            0x0ce309d2      2d62           extu.w r2,r2
            0x0ce309d4      4822           tst r4,r2
            0x0ce309d6      068d           bt.s 0x0ce309e6
            0x0ce309d8      16e5           mov 0x16,r5
            0x0ce309da      1190           mov.w @(0x22,PC),r0
            0x0ce309dc      04e1           mov 0x04,r1
            0x0ce309de      13e3           mov 0x13,r3
            0x0ce309e0      140e           mov.b r1,@(r0,r14)
            0x0ce309e2      4970           add 0x49,r0
            0x0ce309e4      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0xba)
            0x0ce309e6      0b4c           jsr @r12
            0x0ce309e8      e364           mov r14,r4
            0x0ce309ea      0a90           mov.w @(0x14,PC),r0
            0x0ce309ec      ec03           mov.b @(r0,r14),r3
            0x0ce309ee      3823           tst r3,r3
            0x0ce309f0      168b           bf 0x0ce30a20
            0x0ce309f2      0790           mov.w @(0xE,PC),r0
            0x0ce309f4      09d3           mov.l @(0x24,PC),r3
            0x0ce309f6      16a0           bra 0x0ce30a26
            0x0ce309f8      360e           mov.l r3,@(r0,r14)

;##############################################################################
0x0ce309fa 0x01fe 0x1000 0x01e8 0x0158 0x01fc 0x03f4 0x01a7
0x0ce30a08  0x8c04223a 0x0ce33ddc 0x0ce33df4 0x0ce33de0
0x0ce30a18  0x0ce33df8 0x0ce33de4

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce3091c (+0xd4)
            0x0ce30a20      7b90           mov.w @(0xF6,PC),r0
            0x0ce30a22      42d1           mov.l @(0x108,PC),r1
            0x0ce30a24      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0xda)
            0x0ce30a26      02e3           mov 0x02,r3
            ; CODE XREF from aav.0x0ce3091c (+0xa2)
            0x0ce30a28      7890           mov.w @(0xF0,PC),r0
            0x0ce30a2a      340e           mov.b r3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce3091c (+0x34, +0x60)
            0x0ce30a2c      7790           mov.w @(0xEE,PC),r0
            0x0ce30a2e      0be5           mov 0x0B,r5
            0x0ce30a30      3fd3           mov.l @(0xFC,PC),r3
            0x0ce30a32      d50e           mov.w r13,@(r0,r14)
            0x0ce30a34      f270           add 0xF2,r0
            0x0ce30a36      d40e           mov.b r13,@(r0,r14)
            0x0ce30a38      2670           add 0x26,r0
            0x0ce30a3a      d60e           mov.l r13,@(r0,r14)
            0x0ce30a3c      e284           mov.b @(0x2,r14),r0
            0x0ce30a3e      3262           mov.l @r3,r2
            0x0ce30a40      0c60           extu.b r0,r0
            0x0ce30a42      0040           shll r0
            0x0ce30a44      7c72           add 0x7C,r2
            0x0ce30a46      2d01           mov.w @(r0,r2),r1
            0x0ce30a48      0171           add 0x01,r1
            0x0ce30a4a      1502           mov.w r1,@(r0,r2)
            0x0ce30a4c      6890           mov.w @(0xD0,PC),r0
            0x0ce30a4e      39d2           mov.l @(0xE4,PC),r2
            0x0ce30a50      ec06           mov.b @(r0,r14),r6
            0x0ce30a52      0b42           jsr @r2
            0x0ce30a54      e364           mov r14,r4
            0x0ce30a56      6490           mov.w @(0xC8,PC),r0
            0x0ce30a58      ec00           mov.b @(r0,r14),r0
            0x0ce30a5a      0fc8           tst 0x0F,r0
            0x0ce30a5c      0389           bt 0x0ce30a66
            0x0ce30a5e      6090           mov.w @(0xC0,PC),r0
            0x0ce30a60      ec02           mov.b @(r0,r14),r2
            0x0ce30a62      ff72           add 0xFF,r2
            0x0ce30a64      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x140)
            0x0ce30a66      264f           lds.l @r15+,pr
            0x0ce30a68      f66c           mov.l @r15+,r12
            0x0ce30a6a      f66d           mov.l @r15+,r13
            0x0ce30a6c      0b00           rts 
            0x0ce30a6e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3091c (+0xa)
            0x0ce30a70      5990           mov.w @(0xB2,PC),r0
            0x0ce30a72      e62f           mov.l r14,@-r15
            0x0ce30a74      436e           mov r4,r14
            0x0ce30a76      d62f           mov.l r13,@-r15
            0x0ce30a78      c62f           mov.l r12,@-r15
            0x0ce30a7a      224f           sts.l pr,@-r15
            0x0ce30a7c      ec00           mov.b @(r0,r14),r0
            0x0ce30a7e      2edc           mov.l @(0xB8,PC),r12
            0x0ce30a80      0c60           extu.b r0,r0
            0x0ce30a82      4f94           mov.w @(0x9E,PC),r4

;Air Kicks
            0x0ce30a84      0088           cmp/eq 0x00,r0
            0x0ce30a86      068d           bt.s 0x0ce30a96
            0x0ce30a88      00ed           mov 0x00,r13
            0x0ce30a8a      0188           cmp/eq 0x01,r0
            0x0ce30a8c      2489           bt 0x0ce30ad8
            0x0ce30a8e      0288           cmp/eq 0x02,r0
            0x0ce30a90      5c89           bt 0x0ce30b4c
            0x0ce30a92      7da0           bra 0x0ce30b90
            0x0ce30a94      0900           nop 
            ; CODE XREF from aav.0x0ce3091c (+0x16a)
            0x0ce30a96      4390           mov.w @(0x86,PC),r0
            0x0ce30a98      0fe3           mov 0x0F,r3
            0x0ce30a9a      d40e           mov.b r13,@(r0,r14)
            0x0ce30a9c      4970           add 0x49,r0
            0x0ce30a9e      340e           mov.b r3,@(r0,r14)
            0x0ce30aa0      5970           add 0x59,r0
            0x0ce30aa2      ed02           mov.w @(r0,r14),r2
            0x0ce30aa4      2d62           extu.w r2,r2
            0x0ce30aa6      4822           tst r4,r2
            0x0ce30aa8      068d           bt.s 0x0ce30ab8
            0x0ce30aaa      14e5           mov 0x14,r5
            0x0ce30aac      3890           mov.w @(0x70,PC),r0
            0x0ce30aae      03e1           mov 0x03,r1
            0x0ce30ab0      14e3           mov 0x14,r3
            0x0ce30ab2      140e           mov.b r1,@(r0,r14)
            0x0ce30ab4      4970           add 0x49,r0
            0x0ce30ab6      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x18c)
            0x0ce30ab8      0b4c           jsr @r12
            0x0ce30aba      e364           mov r14,r4
            0x0ce30abc      3490           mov.w @(0x68,PC),r0
            0x0ce30abe      ec03           mov.b @(r0,r14),r3
            0x0ce30ac0      3823           tst r3,r3
            0x0ce30ac2      038b           bf 0x0ce30acc
            0x0ce30ac4      2990           mov.w @(0x52,PC),r0
            0x0ce30ac6      1dd3           mov.l @(0x74,PC),r3
            0x0ce30ac8      03a0           bra 0x0ce30ad2
            0x0ce30aca      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x1a6)
            0x0ce30acc      2590           mov.w @(0x4A,PC),r0
            0x0ce30ace      1cd1           mov.l @(0x70,PC),r1
            0x0ce30ad0      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x1ac)
            0x0ce30ad2      2390           mov.w @(0x46,PC),r0
            0x0ce30ad4      5ca0           bra 0x0ce30b90
            0x0ce30ad6      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x170)
            0x0ce30ad8      2290           mov.w @(0x44,PC),r0
            0x0ce30ada      01e2           mov 0x01,r2
            0x0ce30adc      10e3           mov 0x10,r3
            0x0ce30ade      240e           mov.b r2,@(r0,r14)
            0x0ce30ae0      4970           add 0x49,r0
            0x0ce30ae2      340e           mov.b r3,@(r0,r14)
            0x0ce30ae4      5970           add 0x59,r0
            0x0ce30ae6      ed02           mov.w @(r0,r14),r2
            0x0ce30ae8      2d62           extu.w r2,r2
            0x0ce30aea      4822           tst r4,r2
            0x0ce30aec      068d           bt.s 0x0ce30afc
            0x0ce30aee      15e5           mov 0x15,r5
            0x0ce30af0      1690           mov.w @(0x2C,PC),r0
            0x0ce30af2      04e1           mov 0x04,r1
            0x0ce30af4      15e3           mov 0x15,r3
            0x0ce30af6      140e           mov.b r1,@(r0,r14)
            0x0ce30af8      4970           add 0x49,r0
            0x0ce30afa      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x1d0)
            0x0ce30afc      0b4c           jsr @r12
            0x0ce30afe      e364           mov r14,r4
            0x0ce30b00      1290           mov.w @(0x24,PC),r0
            0x0ce30b02      ec03           mov.b @(r0,r14),r3
            0x0ce30b04      3823           tst r3,r3
            0x0ce30b06      038b           bf 0x0ce30b10
            0x0ce30b08      0790           mov.w @(0xE,PC),r0
            0x0ce30b0a      0ed3           mov.l @(0x38,PC),r3
            0x0ce30b0c      03a0           bra 0x0ce30b16
            0x0ce30b0e      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x1ea)
            0x0ce30b10      0390           mov.w @(0x6,PC),r0
            0x0ce30b12      0dd1           mov.l @(0x34,PC),r1
            0x0ce30b14      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x1f0)
            0x0ce30b16      39a0           bra 0x0ce30b8c
            0x0ce30b18      01e3           mov 0x01,r3

;##############################################################################
0x0ce30b1a 0x03f4 0x01a7 0x01ac 0x0158 0x01d6 0x1000 0x01e8 0x01fc
0x0ce30b2a 0x0000

0x0ce30b2c  0x0ce33dfc 0x8c2896b0 0x8c034e8c 0x8c04223a
0x0ce30b3c  0x0ce33de8 0x0ce33e00 0x0ce33dec 0x0ce33e04

;------------------------------------------------------------------------------
;?????
            ; CODE XREF from aav.0x0ce3091c (+0x174)
            0x0ce30b4c      9490           mov.w @(0x128,PC),r0;anim
            0x0ce30b4e      02e1           mov 0x02,r1
            0x0ce30b50      11e3           mov 0x11,r3
            0x0ce30b52      140e           mov.b r1,@(r0,r14)
            0x0ce30b54      4970           add 0x49,r0
            0x0ce30b56      340e           mov.b r3,@(r0,r14)
            0x0ce30b58      5970           add 0x59,r0
            0x0ce30b5a      ed02           mov.w @(r0,r14),r2
            0x0ce30b5c      2d62           extu.w r2,r2
            0x0ce30b5e      4822           tst r4,r2
            0x0ce30b60      068d           bt.s 0x0ce30b70
            0x0ce30b62      16e5           mov 0x16,r5
            0x0ce30b64      8890           mov.w @(0x110,PC),r0
            0x0ce30b66      05e1           mov 0x05,r1
            0x0ce30b68      16e3           mov 0x16,r3
            0x0ce30b6a      140e           mov.b r1,@(r0,r14)
            0x0ce30b6c      4970           add 0x49,r0
            0x0ce30b6e      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x244)
            0x0ce30b70      0b4c           jsr @r12
            0x0ce30b72      e364           mov r14,r4
            0x0ce30b74      8190           mov.w @(0x102,PC),r0
            0x0ce30b76      ec03           mov.b @(r0,r14),r3
            0x0ce30b78      3823           tst r3,r3
            0x0ce30b7a      038b           bf 0x0ce30b84
            0x0ce30b7c      7e90           mov.w @(0xFC,PC),r0
            0x0ce30b7e      43d3           mov.l @(0x10C,PC),r3
            0x0ce30b80      03a0           bra 0x0ce30b8a
            0x0ce30b82      360e           mov.l r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x25e)
            0x0ce30b84      7a90           mov.w @(0xF4,PC),r0
            0x0ce30b86      42d1           mov.l @(0x108,PC),r1
            0x0ce30b88      160e           mov.l r1,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x264)
            0x0ce30b8a      02e3           mov 0x02,r3
            ; CODE XREF from aav.0x0ce3091c (+0x1fa)
            0x0ce30b8c      7790           mov.w @(0xEE,PC),r0
            0x0ce30b8e      340e           mov.b r3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce3091c (+0x176, +0x1b8)
            0x0ce30b90      7690           mov.w @(0xEC,PC),r0
            0x0ce30b92      0ce5           mov 0x0C,r5
            0x0ce30b94      3fd3           mov.l @(0xFC,PC),r3
            0x0ce30b96      d50e           mov.w r13,@(r0,r14)
            0x0ce30b98      f270           add 0xF2,r0
            0x0ce30b9a      d40e           mov.b r13,@(r0,r14)
            0x0ce30b9c      2670           add 0x26,r0
            0x0ce30b9e      d60e           mov.l r13,@(r0,r14)
            0x0ce30ba0      e284           mov.b @(0x2,r14),r0
            0x0ce30ba2      3262           mov.l @r3,r2
            0x0ce30ba4      0c60           extu.b r0,r0
            0x0ce30ba6      0040           shll r0
            0x0ce30ba8      7c72           add 0x7C,r2
            0x0ce30baa      2d01           mov.w @(r0,r2),r1
            0x0ce30bac      0171           add 0x01,r1
            0x0ce30bae      1502           mov.w r1,@(r0,r2)
            0x0ce30bb0      6290           mov.w @(0xC4,PC),r0
            0x0ce30bb2      39d2           mov.l @(0xE4,PC),r2
            0x0ce30bb4      ec06           mov.b @(r0,r14),r6
            0x0ce30bb6      0b42           jsr @r2
            0x0ce30bb8      e364           mov r14,r4
            0x0ce30bba      6290           mov.w @(0xC4,PC),r0
            0x0ce30bbc      ec00           mov.b @(r0,r14),r0
            0x0ce30bbe      f0c8           tst 0xF0,r0
            0x0ce30bc0      0389           bt 0x0ce30bca
            0x0ce30bc2      5e90           mov.w @(0xBC,PC),r0
            0x0ce30bc4      ec02           mov.b @(r0,r14),r2
            0x0ce30bc6      f072           add 0xF0,r2
            0x0ce30bc8      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce3091c (+0x2a4)
            0x0ce30bca      264f           lds.l @r15+,pr
            0x0ce30bcc      f66c           mov.l @r15+,r12
            0x0ce30bce      f66d           mov.l @r15+,r13
            0x0ce30bd0      0b00           rts 
            0x0ce30bd2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30bd4:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0xc)
            0x0ce30bd4      5690           mov.w @(0xAC,PC),r0
            0x0ce30bd6      4363           mov r4,r3
            0x0ce30bd8      462f           mov.l r4,@-r15
            0x0ce30bda      3c02           mov.b @(r0,r3),r2
            0x0ce30bdc      2fd0           mov.l @(0xBC,PC),r0
            0x0ce30bde      2c62           extu.b r2,r2
            0x0ce30be0      0842           shll2 r2
            0x0ce30be2      2e03           mov.l @(r0,r2),r3
            0x0ce30be4      2b43           jmp @r3
            0x0ce30be6      047f           add 0x04,r15
            ;-- aav.0x0ce30be8:
            ; UNKNOWN XREF from aav.0x0ce33f1c (+0xc)
            0x0ce30be8      224f           sts.l pr,@-r15
            0x0ce30bea      2dd3           mov.l @(0xB4,PC),r3
            0x0ce30bec      0b43           jsr @r3
            0x0ce30bee      462f           mov.l r4,@-r15
            0x0ce30bf0      f264           mov.l @r15,r4
            0x0ce30bf2      047f           add 0x04,r15
            0x0ce30bf4      264f           lds.l @r15+,pr
            ;-- aav.0x0ce30bf6:
            ; UNKNOWN XREF from aav.0x0ce33f1c ()
            0x0ce30bf6      e62f           mov.l r14,@-r15
            0x0ce30bf8      5ce1           mov 0x5C,r1
            0x0ce30bfa      436e           mov r4,r14
            0x0ce30bfc      ec31           add r14,r1
            0x0ce30bfe      34e0           mov 0x34,r0
            0x0ce30c00      28d3           mov.l @(0xA0,PC),r3
            0x0ce30c02      224f           sts.l pr,@-r15
            0x0ce30c04      e6f2           fmov @(r0,r14),fr2
            0x0ce30c06      18f3           fmov @r1,fr3
            0x0ce30c08      68e1           mov 0x68,r1
            0x0ce30c0a      ec31           add r14,r1
            0x0ce30c0c      30f2           fadd fr3,fr2
            0x0ce30c0e      27fe           fmov fr2,@(r0,r14)
            0x0ce30c10      5ce0           mov 0x5C,r0
            0x0ce30c12      18f3           fmov @r1,fr3
            0x0ce30c14      60e1           mov 0x60,r1
            0x0ce30c16      e6f2           fmov @(r0,r14),fr2
            0x0ce30c18      ec31           add r14,r1
            0x0ce30c1a      30f2           fadd fr3,fr2
            0x0ce30c1c      27fe           fmov fr2,@(r0,r14)
            0x0ce30c1e      38e0           mov 0x38,r0
            0x0ce30c20      e6f2           fmov @(r0,r14),fr2
            0x0ce30c22      18f3           fmov @r1,fr3
            0x0ce30c24      6ce1           mov 0x6C,r1
            0x0ce30c26      ec31           add r14,r1
            0x0ce30c28      30f2           fadd fr3,fr2
            0x0ce30c2a      27fe           fmov fr2,@(r0,r14)
            0x0ce30c2c      60e0           mov 0x60,r0
            0x0ce30c2e      e6f2           fmov @(r0,r14),fr2
            0x0ce30c30      18f3           fmov @r1,fr3
            0x0ce30c32      30f2           fadd fr3,fr2
            0x0ce30c34      27fe           fmov fr2,@(r0,r14)
            0x0ce30c36      0b43           jsr @r3
            0x0ce30c38      e364           mov r14,r4
            0x0ce30c3a      2490           mov.w @(0x48,PC),r0
            0x0ce30c3c      ec00           mov.b @(r0,r14),r0
            0x0ce30c3e      0c60           extu.b r0,r0
            0x0ce30c40      0188           cmp/eq 0x01,r0
            0x0ce30c42      0c8b           bf 0x0ce30c5e
            0x0ce30c44      2090           mov.w @(0x40,PC),r0
            0x0ce30c46      ec00           mov.b @(r0,r14),r0
            0x0ce30c48      0c60           extu.b r0,r0
            0x0ce30c4a      0188           cmp/eq 0x01,r0
            0x0ce30c4c      038b           bf 0x0ce30c56
            0x0ce30c4e      264f           lds.l @r15+,pr
            0x0ce30c50      e364           mov r14,r4
            0x0ce30c52      d3a0           bra 0x0ce30dfc
            0x0ce30c54      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x56)
            0x0ce30c56      264f           lds.l @r15+,pr
            0x0ce30c58      e364           mov r14,r4
            0x0ce30c5a      6fa0           bra 0x0ce30d3c
            0x0ce30c5c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x4c)
            0x0ce30c5e      1390           mov.w @(0x26,PC),r0
            0x0ce30c60      ec00           mov.b @(r0,r14),r0
            0x0ce30c62      0c60           extu.b r0,r0
            0x0ce30c64      0188           cmp/eq 0x01,r0
            0x0ce30c66      038b           bf 0x0ce30c70
            0x0ce30c68      264f           lds.l @r15+,pr
            0x0ce30c6a      e364           mov r14,r4
            0x0ce30c6c      41a0           bra 0x0ce30cf2
            0x0ce30c6e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x70)
            0x0ce30c70      264f           lds.l @r15+,pr
            0x0ce30c72      e364           mov r14,r4
            0x0ce30c74      18a0           bra 0x0ce30ca8
            0x0ce30c76      f66e           mov.l @r15+,r14

;##############################################################################
0x0ce30c78 0x0158 0x01fc 0x03f4 0x01a7 0x01ac 0x01d6 0x01ff 0x01fe
0x0ce30c88 0x01f9 0x0000

0x0ce30c8c  0x0ce33df0 0x0ce33e08 0x8c2896b0 0x8c034e8c
0x0ce30c9c  0x0ce33f1c 0x8c0511e2 0x8c052c84

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce30bf6 (+0x7e)
            0x0ce30ca8      e62f           mov.l r14,@-r15
            0x0ce30caa      224f           sts.l pr,@-r15
            0x0ce30cac      35d3           mov.l @(0xD4,PC),r3
            0x0ce30cae      0b43           jsr @r3
            0x0ce30cb0      436e           mov r4,r14
            0x0ce30cb2      0e60           exts.b r0,r0
            0x0ce30cb4      1140           cmp/pz r0
            0x0ce30cb6      0489           bt 0x0ce30cc2
            0x0ce30cb8      264f           lds.l @r15+,pr
            0x0ce30cba      33d3           mov.l @(0xCC,PC),r3
            0x0ce30cbc      e364           mov r14,r4
            0x0ce30cbe      2b43           jmp @r3
            0x0ce30cc0      f66e           mov.l @r15+,r14


            ; CODE XREF from aav.0x0ce30bf6 (+0xc0)
            0x0ce30cc2      5c90           mov.w @(0xB8,PC),r0
            0x0ce30cc4      ec00           mov.b @(r0,r14),r0
            0x0ce30cc6      0c60           extu.b r0,r0
            0x0ce30cc8      0288           cmp/eq 0x02,r0
            0x0ce30cca      0f8b           bf 0x0ce30cec
            0x0ce30ccc      5890           mov.w @(0xB0,PC),r0
            0x0ce30cce      ec02           mov.b @(r0,r14),r2
            0x0ce30cd0      2822           tst r2,r2
            0x0ce30cd2      0b89           bt 0x0ce30cec
            0x0ce30cd4      00e3           mov 0x00,r3
            0x0ce30cd6      3365           mov r3,r5
            0x0ce30cd8      340e           mov.b r3,@(r0,r14)
            0x0ce30cda      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30cdc      0b43           jsr @r3
            0x0ce30cde      e364           mov r14,r4
            0x0ce30ce0      264f           lds.l @r15+,pr
            0x0ce30ce2      2bd2           mov.l @(0xAC,PC),r2
            0x0ce30ce4      00e5           mov 0x00,r5
            0x0ce30ce6      e364           mov r14,r4
            0x0ce30ce8      2b42           jmp @r2
            0x0ce30cea      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce30bf6 (+0xd4, +0xdc)
            0x0ce30cec      264f           lds.l @r15+,pr
            0x0ce30cee      0b00           rts 
            0x0ce30cf0      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x76)
            0x0ce30cf2      e62f           mov.l r14,@-r15
            0x0ce30cf4      224f           sts.l pr,@-r15
            0x0ce30cf6      23d3           mov.l @(0x8C,PC),r3
            0x0ce30cf8      0b43           jsr @r3
            0x0ce30cfa      436e           mov r4,r14
            0x0ce30cfc      0e60           exts.b r0,r0
            0x0ce30cfe      1140           cmp/pz r0
            0x0ce30d00      0489           bt 0x0ce30d0c
            0x0ce30d02      264f           lds.l @r15+,pr
            0x0ce30d04      20d3           mov.l @(0x80,PC),r3
            0x0ce30d06      e364           mov r14,r4
            0x0ce30d08      2b43           jmp @r3
            0x0ce30d0a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x10a)
            0x0ce30d0c      3790           mov.w @(0x6E,PC),r0
            0x0ce30d0e      ec00           mov.b @(r0,r14),r0
            0x0ce30d10      0c60           extu.b r0,r0
            0x0ce30d12      0288           cmp/eq 0x02,r0
            0x0ce30d14      0f8b           bf 0x0ce30d36
            0x0ce30d16      3390           mov.w @(0x66,PC),r0
            0x0ce30d18      ec02           mov.b @(r0,r14),r2
            0x0ce30d1a      2822           tst r2,r2
            0x0ce30d1c      0b89           bt 0x0ce30d36
            0x0ce30d1e      00e3           mov 0x00,r3
            0x0ce30d20      340e           mov.b r3,@(r0,r14)
            0x0ce30d22      01e5           mov 0x01,r5
            0x0ce30d24      19d3           mov.l @(0x64,PC),r3
            0x0ce30d26      0b43           jsr @r3
            0x0ce30d28      e364           mov r14,r4
            0x0ce30d2a      264f           lds.l @r15+,pr
            0x0ce30d2c      18d2           mov.l @(0x60,PC),r2
            0x0ce30d2e      01e5           mov 0x01,r5
            0x0ce30d30      e364           mov r14,r4
            0x0ce30d32      2b42           jmp @r2
            0x0ce30d34      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce30bf6 (+0x11e, +0x126)
            0x0ce30d36      264f           lds.l @r15+,pr
            0x0ce30d38      0b00           rts 
            0x0ce30d3a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x64)
            0x0ce30d3c      1f90           mov.w @(0x3E,PC),r0
            0x0ce30d3e      e62f           mov.l r14,@-r15
            0x0ce30d40      436e           mov r4,r14
            0x0ce30d42      224f           sts.l pr,@-r15
            0x0ce30d44      ec00           mov.b @(r0,r14),r0
            0x0ce30d46      0c60           extu.b r0,r0
            0x0ce30d48      0088           cmp/eq 0x00,r0
            0x0ce30d4a      0589           bt 0x0ce30d58
            0x0ce30d4c      0188           cmp/eq 0x01,r0
            0x0ce30d4e      0389           bt 0x0ce30d58
            0x0ce30d50      0288           cmp/eq 0x02,r0
            0x0ce30d52      0989           bt 0x0ce30d68
            0x0ce30d54      4fa0           bra 0x0ce30df6
            0x0ce30d56      0900           nop 
            ; CODE XREFS from aav.0x0ce30bf6 (+0x154, +0x158)
            0x0ce30d58      0ad3           mov.l @(0x28,PC),r3
            0x0ce30d5a      0b43           jsr @r3
            0x0ce30d5c      e364           mov r14,r4
            0x0ce30d5e      0e60           exts.b r0,r0
            0x0ce30d60      1140           cmp/pz r0
            0x0ce30d62      078b           bf 0x0ce30d74
            0x0ce30d64      47a0           bra 0x0ce30df6
            0x0ce30d66      0900           nop 
            ; CODE XREF from aav.0x0ce30bf6 (+0x15c)
            0x0ce30d68      06d3           mov.l @(0x18,PC),r3
            0x0ce30d6a      0b43           jsr @r3
            0x0ce30d6c      e364           mov r14,r4
            0x0ce30d6e      0e60           exts.b r0,r0
            0x0ce30d70      1140           cmp/pz r0
            0x0ce30d72      0f89           bt 0x0ce30d94
            ; CODE XREF from aav.0x0ce30bf6 (+0x16c)
            0x0ce30d74      264f           lds.l @r15+,pr
            0x0ce30d76      04d3           mov.l @(0x10,PC),r3
            0x0ce30d78      e364           mov r14,r4
            0x0ce30d7a      2b43           jmp @r3
            0x0ce30d7c      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30d7e 0x01e8 0x0141 0x0000 
0x0ce30d84  0x8c034dee 0x8c051648 0x8c068b40 0x8c0bfc20

;==============================================================================
            ; CODE XREF from aav.0x0ce30bf6 (+0x17c)
            0x0ce30d94      8d90           mov.w @(0x11A,PC),r0
            0x0ce30d96      ec03           mov.b @(r0,r14),r3
            0x0ce30d98      3823           tst r3,r3
            0x0ce30d9a      2c89           bt 0x0ce30df6
            0x0ce30d9c      8b93           mov.w @(0x116,PC),r3
            0x0ce30d9e      8990           mov.w @(0x112,PC),r0
            0x0ce30da0      ec33           add r14,r3
            0x0ce30da2      3163           mov.w @r3,r3
            0x0ce30da4      ed00           mov.w @(r0,r14),r0
            0x0ce30da6      3d63           extu.w r3,r3
            0x0ce30da8      0d60           extu.w r0,r0
            0x0ce30daa      3b20           or r3,r0
            0x0ce30dac      20c8           tst 0x20,r0
            0x0ce30dae      2289           bt 0x0ce30df6
            0x0ce30db0      42d3           mov.l @(0x108,PC),r3
            0x0ce30db2      0b43           jsr @r3
            0x0ce30db4      e364           mov r14,r4
            0x0ce30db6      7e90           mov.w @(0xFC,PC),r0
            0x0ce30db8      00e4           mov 0x00,r4
            0x0ce30dba      1be3           mov 0x1B,r3
            0x0ce30dbc      450e           mov.w r4,@(r0,r14)
            0x0ce30dbe      08e5           mov 0x08,r5
            0x0ce30dc0      7a90           mov.w @(0xF4,PC),r0
            0x0ce30dc2      04e6           mov 0x04,r6
            0x0ce30dc4      340e           mov.b r3,@(r0,r14)
            0x0ce30dc6      0b70           add 0x0B,r0
            0x0ce30dc8      450e           mov.w r4,@(r0,r14)
            0x0ce30dca      f270           add 0xF2,r0
            0x0ce30dcc      440e           mov.b r4,@(r0,r14)
            0x0ce30dce      2670           add 0x26,r0
            0x0ce30dd0      3bd3           mov.l @(0xEC,PC),r3
            0x0ce30dd2      460e           mov.l r4,@(r0,r14)
            0x0ce30dd4      e284           mov.b @(0x2,r14),r0
            0x0ce30dd6      3262           mov.l @r3,r2
            0x0ce30dd8      0c60           extu.b r0,r0
            0x0ce30dda      0040           shll r0
            0x0ce30ddc      7c72           add 0x7C,r2
            0x0ce30dde      2d01           mov.w @(r0,r2),r1
            0x0ce30de0      0171           add 0x01,r1
            0x0ce30de2      1502           mov.w r1,@(r0,r2)
            0x0ce30de4      37d2           mov.l @(0xDC,PC),r2
            0x0ce30de6      0b42           jsr @r2
            0x0ce30de8      e364           mov r14,r4
            0x0ce30dea      264f           lds.l @r15+,pr
            0x0ce30dec      36d3           mov.l @(0xD8,PC),r3
            0x0ce30dee      16e5           mov 0x16,r5
            0x0ce30df0      e364           mov r14,r4
            0x0ce30df2      2b43           jmp @r3
            0x0ce30df4      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce30bf6 (+0x15e, +0x16e, +0x1a4, +0x1b8)
            0x0ce30df6      264f           lds.l @r15+,pr
            0x0ce30df8      0b00           rts 
            0x0ce30dfa      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30bf6 (+0x5c)
            0x0ce30dfc      224f           sts.l pr,@-r15
            0x0ce30dfe      fc7f           add 0xFC,r15
            0x0ce30e00      32d3           mov.l @(0xC8,PC),r3
            0x0ce30e02      0b43           jsr @r3
            0x0ce30e04      422f           mov.l r4,@r15
            0x0ce30e06      0e60           exts.b r0,r0
            0x0ce30e08      1140           cmp/pz r0
            0x0ce30e0a      0489           bt 0x0ce30e16
            0x0ce30e0c      f264           mov.l @r15,r4
            0x0ce30e0e      047f           add 0x04,r15
            ; CODE XREF from aav.0x0ce30bf6 (+0x196)
            0x0ce30e10      2fd3           mov.l @(0xBC,PC),r3
            0x0ce30e12      2b43           jmp @r3
            0x0ce30e14      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce30bf6 (+0x214)
            0x0ce30e16      047f           add 0x04,r15
            0x0ce30e18      264f           lds.l @r15+,pr
            0x0ce30e1a      0b00           rts 
            0x0ce30e1c      0900           nop 
            ;-- aav.0x0ce30e1e:
            ; UNKNOWN XREF from aav.0x0ce33f1c (+0x8)
            0x0ce30e1e      e62f           mov.l r14,@-r15
            0x0ce30e20      224f           sts.l pr,@-r15
            0x0ce30e22      2cd3           mov.l @(0xB0,PC),r3
            0x0ce30e24      0b43           jsr @r3
            0x0ce30e26      436e           mov r4,r14
            0x0ce30e28      2bd2           mov.l @(0xAC,PC),r2
            0x0ce30e2a      0b42           jsr @r2
            0x0ce30e2c      e364           mov r14,r4
            0x0ce30e2e      264f           lds.l @r15+,pr
            0x0ce30e30      e364           mov r14,r4
            0x0ce30e32      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30e34:
            ; UNKNOWN XREF from aav.0x0ce33f1c (+0x4)
            0x0ce30e34      e62f           mov.l r14,@-r15
            0x0ce30e36      224f           sts.l pr,@-r15
            0x0ce30e38      28d3           mov.l @(0xA0,PC),r3
            0x0ce30e3a      0b43           jsr @r3
            0x0ce30e3c      436e           mov r4,r14
            0x0ce30e3e      28d2           mov.l @(0xA0,PC),r2
            0x0ce30e40      0b42           jsr @r2
            0x0ce30e42      e364           mov r14,r4
            0x0ce30e44      3990           mov.w @(0x72,PC),r0
            0x0ce30e46      ec00           mov.b @(r0,r14),r0
            0x0ce30e48      0c60           extu.b r0,r0
            0x0ce30e4a      0188           cmp/eq 0x01,r0
            0x0ce30e4c      038b           bf 0x0ce30e56
            0x0ce30e4e      23b0           bsr fcn.0ce30e98
            0x0ce30e50      e364           mov r14,r4
            0x0ce30e52      02a0           bra 0x0ce30e5a
            0x0ce30e54      0900           nop 
            ; CODE XREF from aav.0x0ce30e34 (+0x18)
            0x0ce30e56      0eb0           bsr fcn.0ce30e76
            0x0ce30e58      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce30e34 (+0x1e)
            0x0ce30e5a      22d3           mov.l @(0x88,PC),r3
            0x0ce30e5c      0b43           jsr @r3
            0x0ce30e5e      e364           mov r14,r4
            0x0ce30e60      0c60           extu.b r0,r0
            0x0ce30e62      0820           tst r0,r0
            0x0ce30e64      0489           bt 0x0ce30e70
            0x0ce30e66      264f           lds.l @r15+,pr
            0x0ce30e68      1fd3           mov.l @(0x7C,PC),r3
            0x0ce30e6a      e364           mov r14,r4
            0x0ce30e6c      2b43           jmp @r3
            0x0ce30e6e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30e34 (+0x30)
            0x0ce30e70      264f           lds.l @r15+,pr
            0x0ce30e72      0b00           rts 
            0x0ce30e74      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce30e76 34
|   fcn.0ce30e76 ();
|           ; CALL XREF from aav.0x0ce30e34 (+0x22)
|           0x0ce30e76      224f           sts.l pr,@-r15
|           0x0ce30e78      fc7f           add 0xFC,r15
|           0x0ce30e7a      14d3           mov.l @(0x50,PC),r3
|           0x0ce30e7c      0b43           jsr @r3
|           0x0ce30e7e      422f           mov.l r4,@r15
|           0x0ce30e80      0e60           exts.b r0,r0
|           0x0ce30e82      1140           cmp/pz r0
|           0x0ce30e84      0489           bt 0x0ce30e90
|           0x0ce30e86      f264           mov.l @r15,r4
|           0x0ce30e88      047f           add 0x04,r15
|           0x0ce30e8a      18d3           mov.l @(0x60,PC),r3
|           0x0ce30e8c      2b43           jmp @r3
|           0x0ce30e8e      264f           lds.l @r15+,pr
|           ; CODE XREF from fcn.0ce30e76 (0xce30e84)
|           0x0ce30e90      047f           add 0x04,r15
|           0x0ce30e92      264f           lds.l @r15+,pr
|           0x0ce30e94      0b00           rts 
\           0x0ce30e96      0900           nop 
/ (fcn) fcn.0ce30e98 26
|   fcn.0ce30e98 ();
|           ; CALL XREF from aav.0x0ce30e34 (+0x1a)
|           0x0ce30e98      224f           sts.l pr,@-r15
|           0x0ce30e9a      fc7f           add 0xFC,r15
|           0x0ce30e9c      0bd3           mov.l @(0x2C,PC),r3
|           0x0ce30e9e      0b43           jsr @r3
|           0x0ce30ea0      422f           mov.l r4,@r15
|           0x0ce30ea2      0e60           exts.b r0,r0
|           0x0ce30ea4      1140           cmp/pz r0
|           0x0ce30ea6      2389           bt 0x0ce30ef0
|           0x0ce30ea8      f264           mov.l @r15,r4
|           0x0ce30eaa      047f           add 0x04,r15
|           0x0ce30eac      0fd3           mov.l @(0x3C,PC),r3
|           0x0ce30eae      2b43           jmp @r3
\           0x0ce30eb0      264f           lds.l @r15+,pr

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30eb2 0x0141 0x034e 0x0352 0x01a1 0x01fe
0x0ce30ebc  0x8c05225e 0x8c2896b0 0x8c034e8c 0x8c04223a  ^"....(..N..:"..       
0x0ce30ecc  0x8c034dee 0x8c051648 0x8c050084 0x8c04ff88  .M..H...........       
0x0ce30edc  0x8c04fea8 0x8c050048 0x8c052ce2 0x8c052dac  ....H....,...-..       
0x0ce30eec  0x8c05176e

;==============================================================================
            ; CODE XREF from fcn.0ce30e98 (0xce30ea6)
            0x0ce30ef0      047f           add 0x04,r15
            0x0ce30ef2      264f           lds.l @r15+,pr
            0x0ce30ef4      0b00           rts 
            0x0ce30ef6      0900           nop 
            ;-- aav.0x0ce30ef8:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x3c)
            0x0ce30ef8      e62f           mov.l r14,@-r15
            0x0ce30efa      436e           mov r4,r14
            0x0ce30efc      d62f           mov.l r13,@-r15
            0x0ce30efe      224f           sts.l pr,@-r15
            0x0ce30f00      e184           mov.b @(0x1,r14),r0
            0x0ce30f02      0c60           extu.b r0,r0
            0x0ce30f04      0688           cmp/eq 0x06,r0
            0x0ce30f06      638b           bf 0x0ce30fd0
            0x0ce30f08      e684           mov.b @(0x6,r14),r0
            0x0ce30f0a      0820           tst r0,r0
            0x0ce30f0c      338b           bf 0x0ce30f76
            0x0ce30f0e      3cd3           mov.l @(0xF0,PC),r3
            0x0ce30f10      0b43           jsr @r3
            0x0ce30f12      e364           mov r14,r4
            0x0ce30f14      e684           mov.b @(0x6,r14),r0
            0x0ce30f16      0170           add 0x01,r0
            0x0ce30f18      e680           mov.b r0,@(0x6,r14)
            0x0ce30f1a      6c90           mov.w @(0xD8,PC),r0
            0x0ce30f1c      ec03           mov.b @(r0,r14),r3
            0x0ce30f1e      3823           tst r3,r3
            0x0ce30f20      078f           bf.s 0x0ce30f32


            0x0ce30f22      00ed           mov 0x00,r13
            0x0ce30f24      6890           mov.w @(0xD0,PC),r0
            0x0ce30f26      44e1           mov 0x44,r1
            0x0ce30f28      140e           mov.b r1,@(r0,r14)
            0x0ce30f2a      5870           add 0x58,r0
            0x0ce30f2c      d40e           mov.b r13,@(r0,r14)
            0x0ce30f2e      07a0           bra 0x0ce30f40
            0x0ce30f30      11e6           mov 0x11,r6
            ; CODE XREF from aav.0x0ce30ef8 (+0x28)

            0x0ce30f32      6190           mov.w @(0xC2,PC),r0 ; 0x1a1
            0x0ce30f34      45e3           mov 0x45,r3  ; Attack Data
            0x0ce30f36      01e2           mov 0x01,r2  ; Crouch State
            0x0ce30f38      340e           mov.b r3,@(r0,r14) ; write attack data
            0x0ce30f3a      5870           add 0x58,r0	; 0x1a1 + 0x58 = 0x1f9 aka r0 = 0x1f9
            0x0ce30f3c      12e6           mov 0x12,r6		;Animation ID
            0x0ce30f3e      240e           mov.b r2,@(r0,r14) ; write character is crouching

;Group Animation write and jsr
            0x0ce30f40      30d3           mov.l @(0xC0,PC),r3
            0x0ce30f42      14e5           mov 0x14,r5		;Animation Group ID
            0x0ce30f44      0b43           jsr @r3	;0x8c034e8c


            0x0ce30f46      e364           mov r14,r4
            0x0ce30f48      5790           mov.w @(0xAE,PC),r0
            0x0ce30f4a      15e5           mov 0x15,r5
            0x0ce30f4c      2ed3           mov.l @(0xB8,PC),r3
            0x0ce30f4e      d50e           mov.w r13,@(r0,r14)
            0x0ce30f50      f270           add 0xF2,r0
            0x0ce30f52      d40e           mov.b r13,@(r0,r14)
            0x0ce30f54      2670           add 0x26,r0
            0x0ce30f56      d60e           mov.l r13,@(r0,r14)
            0x0ce30f58      e284           mov.b @(0x2,r14),r0
            0x0ce30f5a      3262           mov.l @r3,r2
            0x0ce30f5c      0c60           extu.b r0,r0
            0x0ce30f5e      0040           shll r0
            0x0ce30f60      7c72           add 0x7C,r2
            0x0ce30f62      2d01           mov.w @(r0,r2),r1
            0x0ce30f64      0171           add 0x01,r1
            0x0ce30f66      1502           mov.w r1,@(r0,r2)
            0x0ce30f68      28d2           mov.l @(0xA0,PC),r2
            0x0ce30f6a      0b42           jsr @r2
            0x0ce30f6c      e364           mov r14,r4
            0x0ce30f6e      28d3           mov.l @(0xA0,PC),r3
            0x0ce30f70      05e5           mov 0x05,r5
            0x0ce30f72      0b43           jsr @r3
            0x0ce30f74      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce30ef8 (+0x14)
            0x0ce30f76      4190           mov.w @(0x82,PC),r0
            0x0ce30f78      ec00           mov.b @(r0,r14),r0
            0x0ce30f7a      0c60           extu.b r0,r0
            0x0ce30f7c      0388           cmp/eq 0x03,r0
            0x0ce30f7e      028b           bf 0x0ce30f86
            0x0ce30f80      24d2           mov.l @(0x90,PC),r2
            0x0ce30f82      0b42           jsr @r2
            0x0ce30f84      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce30ef8 (+0x86)
            0x0ce30f86      5ce1           mov 0x5C,r1
            0x0ce30f88      23d3           mov.l @(0x8C,PC),r3
            0x0ce30f8a      ec31           add r14,r1
            0x0ce30f8c      34e0           mov 0x34,r0
            0x0ce30f8e      18f3           fmov @r1,fr3
            0x0ce30f90      e6f2           fmov @(r0,r14),fr2
            0x0ce30f92      68e1           mov 0x68,r1
            0x0ce30f94      ec31           add r14,r1
            0x0ce30f96      30f2           fadd fr3,fr2
            0x0ce30f98      27fe           fmov fr2,@(r0,r14)
            0x0ce30f9a      5ce0           mov 0x5C,r0
            0x0ce30f9c      e6f2           fmov @(r0,r14),fr2
            0x0ce30f9e      18f3           fmov @r1,fr3
            0x0ce30fa0      60e1           mov 0x60,r1
            0x0ce30fa2      ec31           add r14,r1
            0x0ce30fa4      30f2           fadd fr3,fr2
            0x0ce30fa6      27fe           fmov fr2,@(r0,r14)
            0x0ce30fa8      38e0           mov 0x38,r0
            0x0ce30faa      e6f2           fmov @(r0,r14),fr2
            0x0ce30fac      18f3           fmov @r1,fr3
            0x0ce30fae      6ce1           mov 0x6C,r1
            0x0ce30fb0      ec31           add r14,r1
            0x0ce30fb2      30f2           fadd fr3,fr2
            0x0ce30fb4      27fe           fmov fr2,@(r0,r14)
            0x0ce30fb6      60e0           mov 0x60,r0
            0x0ce30fb8      e6f2           fmov @(r0,r14),fr2
            0x0ce30fba      18f3           fmov @r1,fr3
            0x0ce30fbc      30f2           fadd fr3,fr2
            0x0ce30fbe      27fe           fmov fr2,@(r0,r14)
            0x0ce30fc0      0b43           jsr @r3
            0x0ce30fc2      e364           mov r14,r4
            0x0ce30fc4      15d2           mov.l @(0x54,PC),r2
            0x0ce30fc6      0b42           jsr @r2
            0x0ce30fc8      e364           mov r14,r4
            0x0ce30fca      0e60           exts.b r0,r0
            0x0ce30fcc      1140           cmp/pz r0
            0x0ce30fce      0589           bt 0x0ce30fdc
            ; CODE XREF from aav.0x0ce30ef8 (+0xe)
            0x0ce30fd0      264f           lds.l @r15+,pr
            0x0ce30fd2      13d2           mov.l @(0x4C,PC),r2
            0x0ce30fd4      e364           mov r14,r4
            0x0ce30fd6      f66d           mov.l @r15+,r13
            0x0ce30fd8      2b42           jmp @r2
            0x0ce30fda      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce30ef8 (+0xd6)
            0x0ce30fdc      264f           lds.l @r15+,pr
            0x0ce30fde      f66d           mov.l @r15+,r13
            0x0ce30fe0      0b00           rts 
            0x0ce30fe2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce30fe4:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x10)
            0x0ce30fe4      4363           mov r4,r3
            0x0ce30fe6      0fd1           mov.l @(0x3C,PC),r1
            0x0ce30fe8      462f           mov.l r4,@-r15
            0x0ce30fea      3684           mov.b @(0x6,r3),r0
            0x0ce30fec      0c60           extu.b r0,r0
            0x0ce30fee      0840           shll2 r0
            0x0ce30ff0      1e03           mov.l @(r0,r1),r3
            0x0ce30ff2      2b43           jmp @r3
            0x0ce30ff4      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30ff6 0x01fe 0x01a1 0x01ac 0x01ff 0x0000
0x0ce31000  0x8c052b4c 0x8c034e8c 0x8c2896b0 0x8c04223a
0x0ce31010  0x8c056de4 0x8c0511e2 0x8c052c84 0x8c034dee
0x0ce31020  0x8c051648 0x0ce33f2c

;==============================================================================
            ;-- aav.0x0ce31028:
            ; UNKNOWN XREF from aav.0x0ce33f2c ()
            0x0ce31028      e62f           mov.l r14,@-r15
            0x0ce3102a      224f           sts.l pr,@-r15
            0x0ce3102c      4bd3           mov.l @(0x12C,PC),r3
            0x0ce3102e      0b43           jsr @r3
            0x0ce31030      436e           mov r4,r14
            0x0ce31032      9190           mov.w @(0x122,PC),r0
            0x0ce31034      ec02           mov.b @(r0,r14),r2
            0x0ce31036      2822           tst r2,r2
            0x0ce31038      168b           bf 0x0ce31068
            0x0ce3103a      e684           mov.b @(0x6,r14),r0
            0x0ce3103c      8df4           fldi0 fr4
            0x0ce3103e      0170           add 0x01,r0
            0x0ce31040      e680           mov.b r0,@(0x6,r14)
            0x0ce31042      5ce0           mov 0x5C,r0
            0x0ce31044      47fe           fmov fr4,@(r0,r14)
            0x0ce31046      60e0           mov 0x60,r0
            0x0ce31048      47fe           fmov fr4,@(r0,r14)
            0x0ce3104a      68e0           mov 0x68,r0
            0x0ce3104c      47fe           fmov fr4,@(r0,r14)
            0x0ce3104e      6ce0           mov 0x6C,r0
            0x0ce31050      47fe           fmov fr4,@(r0,r14)
            0x0ce31052      8290           mov.w @(0x104,PC),r0
            ; CODE XREF from aav.0x0ce3194e (+0x1ae)
            0x0ce31054      ec03           mov.b @(r0,r14),r3
            0x0ce31056      3823           tst r3,r3
            0x0ce31058      0289           bt 0x0ce31060
            0x0ce3105a      41c7           mova @(0x104,PC),r0
            0x0ce3105c      02a0           bra 0x0ce31064
            0x0ce3105e      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31028 (+0x30)
            0x0ce31060      40c7           mova @(0x100,PC),r0
            0x0ce31062      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31028 (+0x34)
            0x0ce31064      5ce0           mov 0x5C,r0
            0x0ce31066      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce31028 (+0x10)
            0x0ce31068      264f           lds.l @r15+,pr
            0x0ce3106a      0b00           rts 
            0x0ce3106c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3106e:
            ; UNKNOWN XREF from aav.0x0ce33f2c (+0x4)
            0x0ce3106e      e62f           mov.l r14,@-r15
            0x0ce31070      224f           sts.l pr,@-r15
            0x0ce31072      3ad3           mov.l @(0xE8,PC),r3
            0x0ce31074      0b43           jsr @r3
            0x0ce31076      436e           mov r4,r14
            0x0ce31078      5ce1           mov 0x5C,r1
            0x0ce3107a      ec31           add r14,r1
            0x0ce3107c      34e0           mov 0x34,r0
            0x0ce3107e      18f3           fmov @r1,fr3
            0x0ce31080      e6f2           fmov @(r0,r14),fr2
            0x0ce31082      68e1           mov 0x68,r1
            0x0ce31084      ec31           add r14,r1
            0x0ce31086      30f2           fadd fr3,fr2
            0x0ce31088      27fe           fmov fr2,@(r0,r14)
            0x0ce3108a      5ce0           mov 0x5C,r0
            0x0ce3108c      e6f2           fmov @(r0,r14),fr2
            0x0ce3108e      18f3           fmov @r1,fr3
            0x0ce31090      60e1           mov 0x60,r1
            0x0ce31092      ec31           add r14,r1
            0x0ce31094      30f2           fadd fr3,fr2
            0x0ce31096      27fe           fmov fr2,@(r0,r14)
            0x0ce31098      38e0           mov 0x38,r0
            0x0ce3109a      e6f2           fmov @(r0,r14),fr2
            0x0ce3109c      18f3           fmov @r1,fr3
            0x0ce3109e      6ce1           mov 0x6C,r1
            0x0ce310a0      ec31           add r14,r1
            0x0ce310a2      30f2           fadd fr3,fr2
            0x0ce310a4      27fe           fmov fr2,@(r0,r14)
            0x0ce310a6      60e0           mov 0x60,r0
            0x0ce310a8      e6f2           fmov @(r0,r14),fr2
            0x0ce310aa      18f3           fmov @r1,fr3
            0x0ce310ac      30f2           fadd fr3,fr2
            0x0ce310ae      27fe           fmov fr2,@(r0,r14)
            0x0ce310b0      5290           mov.w @(0xA4,PC),r0
            0x0ce310b2      ec03           mov.b @(r0,r14),r3
            0x0ce310b4      3823           tst r3,r3
            0x0ce310b6      1689           bt 0x0ce310e6
            0x0ce310b8      e684           mov.b @(0x6,r14),r0
            0x0ce310ba      8df4           fldi0 fr4
            0x0ce310bc      0170           add 0x01,r0
            0x0ce310be      e680           mov.b r0,@(0x6,r14)
            0x0ce310c0      5ce0           mov 0x5C,r0
            0x0ce310c2      47fe           fmov fr4,@(r0,r14)
            0x0ce310c4      60e0           mov 0x60,r0
            0x0ce310c6      47fe           fmov fr4,@(r0,r14)
            0x0ce310c8      68e0           mov 0x68,r0
            0x0ce310ca      47fe           fmov fr4,@(r0,r14)
            0x0ce310cc      6ce0           mov 0x6C,r0
            0x0ce310ce      47fe           fmov fr4,@(r0,r14)
            0x0ce310d0      4390           mov.w @(0x86,PC),r0
            0x0ce310d2      ec03           mov.b @(r0,r14),r3
            0x0ce310d4      3823           tst r3,r3
            0x0ce310d6      0289           bt 0x0ce310de
            0x0ce310d8      23c7           mova @(0x8C,PC),r0
            0x0ce310da      02a0           bra 0x0ce310e2
            0x0ce310dc      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce3106e (+0x68)
            0x0ce310de      23c7           mova @(0x8C,PC),r0
            0x0ce310e0      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce3106e (+0x6c)
            0x0ce310e2      5ce0           mov 0x5C,r0
            0x0ce310e4      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3106e (+0x48)
            0x0ce310e6      264f           lds.l @r15+,pr
            0x0ce310e8      0b00           rts 
            0x0ce310ea      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce310ec:
            ; UNKNOWN XREF from aav.0x0ce33f2c (+0x8)
            0x0ce310ec      e62f           mov.l r14,@-r15
            0x0ce310ee      5ce1           mov 0x5C,r1
            0x0ce310f0      436e           mov r4,r14
            0x0ce310f2      ec31           add r14,r1
            0x0ce310f4      34e0           mov 0x34,r0
            0x0ce310f6      19d3           mov.l @(0x64,PC),r3
            0x0ce310f8      224f           sts.l pr,@-r15
            0x0ce310fa      e6f2           fmov @(r0,r14),fr2
            0x0ce310fc      18f3           fmov @r1,fr3
            0x0ce310fe      68e1           mov 0x68,r1
            0x0ce31100      ec31           add r14,r1
            0x0ce31102      30f2           fadd fr3,fr2
            0x0ce31104      27fe           fmov fr2,@(r0,r14)
            0x0ce31106      5ce0           mov 0x5C,r0
            0x0ce31108      18f3           fmov @r1,fr3
            0x0ce3110a      60e1           mov 0x60,r1
            0x0ce3110c      e6f2           fmov @(r0,r14),fr2
            0x0ce3110e      ec31           add r14,r1
            0x0ce31110      30f2           fadd fr3,fr2
            0x0ce31112      27fe           fmov fr2,@(r0,r14)
            0x0ce31114      38e0           mov 0x38,r0
            0x0ce31116      e6f2           fmov @(r0,r14),fr2
            0x0ce31118      18f3           fmov @r1,fr3
            0x0ce3111a      6ce1           mov 0x6C,r1
            0x0ce3111c      ec31           add r14,r1
            0x0ce3111e      30f2           fadd fr3,fr2
            0x0ce31120      27fe           fmov fr2,@(r0,r14)
            0x0ce31122      60e0           mov 0x60,r0
            0x0ce31124      e6f2           fmov @(r0,r14),fr2
            0x0ce31126      18f3           fmov @r1,fr3
            0x0ce31128      30f2           fadd fr3,fr2
            0x0ce3112a      27fe           fmov fr2,@(r0,r14)
            0x0ce3112c      0b43           jsr @r3
            0x0ce3112e      e364           mov r14,r4
            0x0ce31130      0e60           exts.b r0,r0
            0x0ce31132      1140           cmp/pz r0
            0x0ce31134      0489           bt 0x0ce31140
            0x0ce31136      264f           lds.l @r15+,pr
            0x0ce31138      0dd3           mov.l @(0x34,PC),r3
            0x0ce3113a      e364           mov r14,r4
            0x0ce3113c      2b43           jmp @r3
            0x0ce3113e      f66e           mov.l @r15+,r14
            ; CODE XREF from fcn.0ce3111c (0xce31134)
            0x0ce31140      264f           lds.l @r15+,pr
            0x0ce31142      0b00           rts 
            0x0ce31144      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31146:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x14)
            0x0ce31146      4363           mov r4,r3
            0x0ce31148      0ad1           mov.l @(0x28,PC),r1
            0x0ce3114a      462f           mov.l r4,@-r15
            0x0ce3114c      3684           mov.b @(0x6,r3),r0
            0x0ce3114e      0c60           extu.b r0,r0
            0x0ce31150      0840           shll2 r0
            0x0ce31152      1e03           mov.l @(r0,r1),r3
            0x0ce31154      2b43           jmp @r3
            0x0ce31156      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31158 0x0141 0x01d2
0x0ce3115c  0x8c034dee 0x41555555 0xc1555555 0x3fd55555
0x0ce3116c  0xbfd55555 0x8c051648 0x0ce33f38

;==============================================================================
            ;-- aav.0x0ce31178:
            ; UNKNOWN XREF from aav.0x0ce33f38 ()
            0x0ce31178      5ce0           mov 0x5C,r0
            0x0ce3117a      8df4           fldi0 fr4
            0x0ce3117c      47f4           fmov fr4,@(r0,r4)
            0x0ce3117e      60e0           mov 0x60,r0
            0x0ce31180      47f4           fmov fr4,@(r0,r4)
            0x0ce31182      68e0           mov 0x68,r0
            0x0ce31184      47f4           fmov fr4,@(r0,r4)
            0x0ce31186      6ce0           mov 0x6C,r0
            0x0ce31188      47f4           fmov fr4,@(r0,r4)
            0x0ce3118a      4684           mov.b @(0x6,r4),r0
            0x0ce3118c      0170           add 0x01,r0
            0x0ce3118e      4680           mov.b r0,@(0x6,r4)
            0x0ce31190      9390           mov.w @(0x126,PC),r0
            0x0ce31192      4c03           mov.b @(r0,r4),r3
            0x0ce31194      3823           tst r3,r3
            0x0ce31196      0289           bt 0x0ce3119e
            0x0ce31198      4ac7           mova @(0x128,PC),r0
            0x0ce3119a      02a0           bra 0x0ce311a2
            0x0ce3119c      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31178 (+0x1e)
            0x0ce3119e      4ac7           mova @(0x128,PC),r0
            0x0ce311a0      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31178 (+0x22)
            0x0ce311a2      5ce0           mov 0x5C,r0
            0x0ce311a4      37f4           fmov fr3,@(r0,r4)
            ;-- aav.0x0ce311a6:
            ; UNKNOWN XREF from aav.0x0ce33f38 (+0x4)
            0x0ce311a6      e62f           mov.l r14,@-r15
            0x0ce311a8      5ce1           mov 0x5C,r1
            0x0ce311aa      436e           mov r4,r14
            0x0ce311ac      ec31           add r14,r1
            0x0ce311ae      34e0           mov 0x34,r0
            0x0ce311b0      46d3           mov.l @(0x118,PC),r3
            0x0ce311b2      224f           sts.l pr,@-r15
            0x0ce311b4      e6f2           fmov @(r0,r14),fr2
            0x0ce311b6      18f3           fmov @r1,fr3
            0x0ce311b8      68e1           mov 0x68,r1
            0x0ce311ba      ec31           add r14,r1
            0x0ce311bc      30f2           fadd fr3,fr2
            0x0ce311be      27fe           fmov fr2,@(r0,r14)
            0x0ce311c0      5ce0           mov 0x5C,r0
            0x0ce311c2      18f3           fmov @r1,fr3
            0x0ce311c4      60e1           mov 0x60,r1
            0x0ce311c6      e6f2           fmov @(r0,r14),fr2
            0x0ce311c8      ec31           add r14,r1
            0x0ce311ca      30f2           fadd fr3,fr2
            0x0ce311cc      27fe           fmov fr2,@(r0,r14)
            0x0ce311ce      38e0           mov 0x38,r0
            0x0ce311d0      e6f2           fmov @(r0,r14),fr2
            0x0ce311d2      18f3           fmov @r1,fr3
            0x0ce311d4      6ce1           mov 0x6C,r1
            0x0ce311d6      ec31           add r14,r1
            0x0ce311d8      30f2           fadd fr3,fr2
            0x0ce311da      27fe           fmov fr2,@(r0,r14)
            0x0ce311dc      60e0           mov 0x60,r0
            0x0ce311de      e6f2           fmov @(r0,r14),fr2
            0x0ce311e0      18f3           fmov @r1,fr3
            0x0ce311e2      30f2           fadd fr3,fr2
            0x0ce311e4      27fe           fmov fr2,@(r0,r14)
            0x0ce311e6      0b43           jsr @r3
            0x0ce311e8      e364           mov r14,r4
            0x0ce311ea      6790           mov.w @(0xCE,PC),r0
            0x0ce311ec      ec02           mov.b @(r0,r14),r2
            0x0ce311ee      2822           tst r2,r2
            0x0ce311f0      0289           bt 0x0ce311f8
            0x0ce311f2      e684           mov.b @(0x6,r14),r0
            0x0ce311f4      0170           add 0x01,r0
            0x0ce311f6      e680           mov.b r0,@(0x6,r14)
            ; CODE XREF from aav.0x0ce311a6 (+0x4a)
            0x0ce311f8      264f           lds.l @r15+,pr
            0x0ce311fa      0b00           rts 
            0x0ce311fc      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce311fe:
            ; UNKNOWN XREF from aav.0x0ce33f38 (+0x8)
            0x0ce311fe      224f           sts.l pr,@-r15
            0x0ce31200      fc7f           add 0xFC,r15
            0x0ce31202      32d3           mov.l @(0xC8,PC),r3
            0x0ce31204      0b43           jsr @r3
            0x0ce31206      422f           mov.l r4,@r15
            0x0ce31208      0e60           exts.b r0,r0
            0x0ce3120a      1140           cmp/pz r0
            0x0ce3120c      0489           bt 0x0ce31218
            0x0ce3120e      f264           mov.l @r15,r4
            0x0ce31210      047f           add 0x04,r15
            0x0ce31212      2fd3           mov.l @(0xBC,PC),r3
            0x0ce31214      2b43           jmp @r3
            0x0ce31216      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce311fe (+0xe)
            0x0ce31218      047f           add 0x04,r15
            0x0ce3121a      264f           lds.l @r15+,pr
            0x0ce3121c      0b00           rts 
            0x0ce3121e      0900           nop 
            ;-- aav.0x0ce31220:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x18)
            0x0ce31220      4363           mov r4,r3
            0x0ce31222      2cd1           mov.l @(0xB0,PC),r1
            0x0ce31224      462f           mov.l r4,@-r15
            0x0ce31226      3684           mov.b @(0x6,r3),r0
            0x0ce31228      0c60           extu.b r0,r0
            0x0ce3122a      0840           shll2 r0
            0x0ce3122c      1e03           mov.l @(r0,r1),r3
            0x0ce3122e      2b43           jmp @r3
            0x0ce31230      047f           add 0x04,r15
            ;-- aav.0x0ce31232:
            ; UNKNOWN XREF from aav.0x0ce33f44 ()
            0x0ce31232      e62f           mov.l r14,@-r15
            0x0ce31234      436e           mov r4,r14
            0x0ce31236      01e3           mov 0x01,r3
            0x0ce31238      224f           sts.l pr,@-r15
            0x0ce3123a      e684           mov.b @(0x6,r14),r0
            0x0ce3123c      02e5           mov 0x02,r5
            0x0ce3123e      0170           add 0x01,r0
            0x0ce31240      e680           mov.b r0,@(0x6,r14)
            0x0ce31242      3c90           mov.w @(0x78,PC),r0
            0x0ce31244      340e           mov.b r3,@(r0,r14)
            0x0ce31246      24d3           mov.l @(0x90,PC),r3
            0x0ce31248      0b43           jsr @r3
            0x0ce3124a      e364           mov r14,r4
            0x0ce3124c      264f           lds.l @r15+,pr
            0x0ce3124e      23d2           mov.l @(0x8C,PC),r2
            0x0ce31250      e364           mov r14,r4
            0x0ce31252      00e6           mov 0x00,r6
            0x0ce31254      12e5           mov 0x12,r5
            0x0ce31256      2b42           jmp @r2
            0x0ce31258      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3125a:
            ; UNKNOWN XREF from aav.0x0ce33f44 (+0x4)
            0x0ce3125a      e62f           mov.l r14,@-r15
            0x0ce3125c      224f           sts.l pr,@-r15
            0x0ce3125e      1bd3           mov.l @(0x6C,PC),r3
            0x0ce31260      0b43           jsr @r3
            0x0ce31262      436e           mov r4,r14
            0x0ce31264      2c90           mov.w @(0x58,PC),r0
            0x0ce31266      ec02           mov.b @(r0,r14),r2
            0x0ce31268      2822           tst r2,r2
            0x0ce3126a      0a89           bt 0x0ce31282
            0x0ce3126c      00e5           mov 0x00,r5
            0x0ce3126e      2894           mov.w @(0x50,PC),r4
            0x0ce31270      540e           mov.b r5,@(r0,r14)
            0x0ce31272      e684           mov.b @(0x6,r14),r0
            0x0ce31274      ec34           add r14,r4
            0x0ce31276      0170           add 0x01,r0
            0x0ce31278      e680           mov.b r0,@(0x6,r14)
            0x0ce3127a      5360           mov r5,r0
            0x0ce3127c      0900           nop 
            0x0ce3127e      4780           mov.b r0,@(0x7,r4)
            0x0ce31280      4680           mov.b r0,@(0x6,r4)
            ; CODE XREF from aav.0x0ce3125a (+0x10)
            0x0ce31282      264f           lds.l @r15+,pr
            0x0ce31284      0b00           rts 
            0x0ce31286      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31288:
            ; UNKNOWN XREF from aav.0x0ce33f44 (+0x8)
            0x0ce31288      e62f           mov.l r14,@-r15
            0x0ce3128a      224f           sts.l pr,@-r15
            0x0ce3128c      56b0           bsr fcn.0ce3133c
            0x0ce3128e      436e           mov r4,r14
            0x0ce31290      0ed2           mov.l @(0x38,PC),r2
            0x0ce31292      0b42           jsr @r2
            0x0ce31294      e364           mov r14,r4
            0x0ce31296      1390           mov.w @(0x26,PC),r0
            0x0ce31298      ec03           mov.b @(r0,r14),r3
            0x0ce3129a      3823           tst r3,r3
            0x0ce3129c      0a89           bt 0x0ce312b4
            0x0ce3129e      00e5           mov 0x00,r5
            0x0ce312a0      0f94           mov.w @(0x1E,PC),r4
            0x0ce312a2      540e           mov.b r5,@(r0,r14)
            0x0ce312a4      e684           mov.b @(0x6,r14),r0
            0x0ce312a6      ec34           add r14,r4
            0x0ce312a8      0170           add 0x01,r0
            0x0ce312aa      e680           mov.b r0,@(0x6,r14)
            0x0ce312ac      5360           mov r5,r0
            0x0ce312ae      0900           nop 
            0x0ce312b0      4780           mov.b r0,@(0x7,r4)
            0x0ce312b2      4680           mov.b r0,@(0x6,r4)
            ; CODE XREF from aav.0x0ce31288 (+0x14)
            0x0ce312b4      264f           lds.l @r15+,pr
            0x0ce312b6      0b00           rts 
            0x0ce312b8      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce312ba 0x01d2 0x0141 0x012c 0x0140 0x02a4
0x0ce312c4  0xc1555555 0x41555555 0x8c034dee 0x8c051648
0x0ce312d4  0x0ce33f44 0x8c0bfc20 0x8c034e8c

;==============================================================================
            ;-- aav.0x0ce312e0:
            ; UNKNOWN XREF from aav.0x0ce33f44 (+0xc)
            0x0ce312e0      e62f           mov.l r14,@-r15
            0x0ce312e2      224f           sts.l pr,@-r15
            0x0ce312e4      45b0           bsr fcn.0ce31372
            0x0ce312e6      436e           mov r4,r14
            0x0ce312e8      4bd2           mov.l @(0x12C,PC),r2
            0x0ce312ea      0b42           jsr @r2
            0x0ce312ec      e364           mov r14,r4
            0x0ce312ee      0e60           exts.b r0,r0
            0x0ce312f0      1140           cmp/pz r0
            0x0ce312f2      0c89           bt 0x0ce3130e
            0x0ce312f4      e684           mov.b @(0x6,r14),r0
            0x0ce312f6      12e5           mov 0x12,r5
            0x0ce312f8      48d3           mov.l @(0x120,PC),r3
            0x0ce312fa      01e6           mov 0x01,r6
            0x0ce312fc      0170           add 0x01,r0
            0x0ce312fe      e680           mov.b r0,@(0x6,r14)
            0x0ce31300      0b43           jsr @r3
            0x0ce31302      e364           mov r14,r4
            0x0ce31304      8494           mov.w @(0x108,PC),r4
            0x0ce31306      00e0           mov 0x00,r0
            0x0ce31308      ec34           add r14,r4
            0x0ce3130a      4780           mov.b r0,@(0x7,r4)
            0x0ce3130c      4680           mov.b r0,@(0x6,r4)
            ; CODE XREF from aav.0x0ce312e0 (+0x12)
            0x0ce3130e      264f           lds.l @r15+,pr
            0x0ce31310      0b00           rts 
            0x0ce31312      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31314:
            ; UNKNOWN XREF from aav.0x0ce33f44 (+0x10)
            0x0ce31314      e62f           mov.l r14,@-r15
            0x0ce31316      224f           sts.l pr,@-r15
            0x0ce31318      3fd3           mov.l @(0xFC,PC),r3
            0x0ce3131a      0b43           jsr @r3
            0x0ce3131c      436e           mov r4,r14
            0x0ce3131e      0e60           exts.b r0,r0
            0x0ce31320      1140           cmp/pz r0
            0x0ce31322      0889           bt 0x0ce31336
            0x0ce31324      e584           mov.b @(0x5,r14),r0
            0x0ce31326      e364           mov r14,r4
            0x0ce31328      3dd3           mov.l @(0xF4,PC),r3
            0x0ce3132a      00e5           mov 0x00,r5
            0x0ce3132c      0170           add 0x01,r0
            0x0ce3132e      e580           mov.b r0,@(0x5,r14)
            0x0ce31330      264f           lds.l @r15+,pr
            0x0ce31332      2b43           jmp @r3
            0x0ce31334      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31314 (+0xe)
            0x0ce31336      264f           lds.l @r15+,pr
            0x0ce31338      0b00           rts 
            0x0ce3133a      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce3133c 54
|   fcn.0ce3133c ();
|           ; CALL XREF from aav.0x0ce31288 (+0x4)
|           0x0ce3133c      fc7f           add 0xFC,r15
|           0x0ce3133e      6795           mov.w @(0xCE,PC),r5
|           0x0ce31340      08e3           mov 0x08,r3
|           0x0ce31342      4c35           add r4,r5
|           0x0ce31344      5684           mov.b @(0x6,r5),r0
|           0x0ce31346      3330           cmp/ge r3,r0
|           0x0ce31348      1189           bt 0x0ce3136e
|           0x0ce3134a      25e0           mov 0x25,r0
|           0x0ce3134c      35d2           mov.l @(0xD4,PC),r2
|           0x0ce3134e      4c01           mov.b @(r0,r4),r1
|           0x0ce31350      01e7           mov 0x01,r7
|           0x0ce31352      5684           mov.b @(0x6,r5),r0
|           0x0ce31354      1c61           extu.b r1,r1
|           0x0ce31356      0841           shll2 r1
|           0x0ce31358      0041           shll r1
|           0x0ce3135a      0c31           add r0,r1
|           0x0ce3135c      2071           add 0x20,r1
|           0x0ce3135e      122f           mov.l r1,@r15
|           0x0ce31360      5684           mov.b @(0x6,r5),r0
|           0x0ce31362      0170           add 0x01,r0
|           0x0ce31364      5680           mov.b r0,@(0x6,r5)
|           0x0ce31366      00e5           mov 0x00,r5
|           0x0ce31368      f266           mov.l @r15,r6
|           0x0ce3136a      2b42           jmp @r2
|           0x0ce3136c      047f           add 0x04,r15
|           ; CODE XREF from fcn.0ce3133c (0xce31348)
|           0x0ce3136e      0b00           rts 
\           0x0ce31370      047f           add 0x04,r15
/ (fcn) fcn.0ce31372 54
|   fcn.0ce31372 ();
|           ; CALL XREF from aav.0x0ce312e0 (+0x4)
|           0x0ce31372      fc7f           add 0xFC,r15
|           0x0ce31374      4c95           mov.w @(0x98,PC),r5
|           0x0ce31376      08e3           mov 0x08,r3
|           0x0ce31378      4c35           add r4,r5
|           0x0ce3137a      5684           mov.b @(0x6,r5),r0
|           0x0ce3137c      3330           cmp/ge r3,r0
|           0x0ce3137e      1189           bt 0x0ce313a4
|           0x0ce31380      25e0           mov 0x25,r0
|           0x0ce31382      28d2           mov.l @(0xA0,PC),r2
|           0x0ce31384      4c01           mov.b @(r0,r4),r1
|           0x0ce31386      01e7           mov 0x01,r7
|           0x0ce31388      5684           mov.b @(0x6,r5),r0
|           0x0ce3138a      1c61           extu.b r1,r1
|           0x0ce3138c      0841           shll2 r1
|           0x0ce3138e      0041           shll r1
|           0x0ce31390      0831           sub r0,r1
|           0x0ce31392      2771           add 0x27,r1
|           0x0ce31394      122f           mov.l r1,@r15
|           0x0ce31396      5684           mov.b @(0x6,r5),r0
|           0x0ce31398      0170           add 0x01,r0
|           0x0ce3139a      5680           mov.b r0,@(0x6,r5)
|           0x0ce3139c      00e5           mov 0x00,r5
|           0x0ce3139e      f266           mov.l @r15,r6
|           0x0ce313a0      2b42           jmp @r2
|           0x0ce313a2      047f           add 0x04,r15
|           ; CODE XREF from fcn.0ce31372 (0xce3137e)
|           0x0ce313a4      0b00           rts 
\           0x0ce313a6      047f           add 0x04,r15
            ;-- aav.0x0ce313a8:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x1c)
            0x0ce313a8      e62f           mov.l r14,@-r15
            0x0ce313aa      224f           sts.l pr,@-r15
            0x0ce313ac      1ed3           mov.l @(0x78,PC),r3
            0x0ce313ae      0b43           jsr @r3
            0x0ce313b0      436e           mov r4,r14
            0x0ce313b2      0820           tst r0,r0
            0x0ce313b4      0889           bt 0x0ce313c8
            0x0ce313b6      1dd3           mov.l @(0x74,PC),r3
            0x0ce313b8      2be5           mov 0x2B,r5
            0x0ce313ba      0b43           jsr @r3
            0x0ce313bc      e364           mov r14,r4
            0x0ce313be      264f           lds.l @r15+,pr
            0x0ce313c0      1bd2           mov.l @(0x6C,PC),r2
            0x0ce313c2      e364           mov r14,r4
            0x0ce313c4      2b42           jmp @r2
            0x0ce313c6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce313a8 (+0xc)
            0x0ce313c8      20e0           mov 0x20,r0
            0x0ce313ca      e364           mov r14,r4
            0x0ce313cc      ec02           mov.b @(r0,r14),r2
            0x0ce313ce      19d0           mov.l @(0x64,PC),r0
            0x0ce313d0      2c62           extu.b r2,r2
            0x0ce313d2      264f           lds.l @r15+,pr
            0x0ce313d4      0842           shll2 r2
            0x0ce313d6      2e03           mov.l @(r0,r2),r3
            0x0ce313d8      2b43           jmp @r3
            0x0ce313da      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce313dc:
            ; UNKNOWN XREF from aav.0x0ce33f58 ()
            0x0ce313dc      4363           mov r4,r3
            0x0ce313de      16d1           mov.l @(0x58,PC),r1
            0x0ce313e0      462f           mov.l r4,@-r15
            0x0ce313e2      3684           mov.b @(0x6,r3),r0
            0x0ce313e4      0c60           extu.b r0,r0
            0x0ce313e6      0840           shll2 r0
            0x0ce313e8      1e03           mov.l @(r0,r1),r3
            0x0ce313ea      2b43           jmp @r3
            0x0ce313ec      047f           add 0x04,r15
            ;-- aav.0x0ce313ee:
            ; UNKNOWN XREF from aav.0x0ce33f6c ()
            0x0ce313ee      13d3           mov.l @(0x4C,PC),r3
            0x0ce313f0      01e5           mov 0x01,r5
            0x0ce313f2      e62f           mov.l r14,@-r15
            0x0ce313f4      436e           mov r4,r14
            0x0ce313f6      3264           mov.l @r3,r4
            0x0ce313f8      4752           mov.l @(0x1C,r4),r2
            0x0ce313fa      5822           tst r5,r2
            0x0ce313fc      0389           bt 0x0ce31406
            0x0ce313fe      0890           mov.w @(0x10,PC),r0
            0x0ce31400      4c00           mov.b @(r0,r4),r0
            0x0ce31402      0820           tst r0,r0
            0x0ce31404      1c89           bt 0x0ce31440
            ; CODE XREF from aav.0x0ce313ee (+0xe)
            0x0ce31406      03e0           mov 0x03,r0
            0x0ce31408      e680           mov.b r0,@(0x6,r14)
            0x0ce3140a      0390           mov.w @(0x6,PC),r0  ;anim write?
            0x0ce3140c      1ea0           bra 0x0ce3144c
            0x0ce3140e      540e           mov.b r5,@(r0,r14)

;##############################################################################
0x0ce31410 0x02a4 0x0088 0x0158 0x0000
0x0ce31418  0x8c034dee 0x8c034e8c 0x8c035162 0x8c03544c  .M...N..bQ..LT..       
0x0ce31428  0x8c046c8a 0x8c042008 0x8c051648 0x0ce33f58  .l... ..H...X?..       
0x0ce31438  0x0ce33f6c 0x8c26823c

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce313ee (+0x16)
;????
            0x0ce31440      e684           mov.b @(0x6,r14),r0
            0x0ce31442      00e3           mov 0x00,r3
            0x0ce31444      0170           add 0x01,r0
            0x0ce31446      e680           mov.b r0,@(0x6,r14)
            0x0ce31448      7590           mov.w @(0xEA,PC),r0
            0x0ce3144a      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce313ee (+0x1e)
            0x0ce3144c      7390           mov.w @(0xE6,PC),r0
            0x0ce3144e      e364           mov r14,r4
            0x0ce31450      3cd3           mov.l @(0xF0,PC),r3
            0x0ce31452      13e5           mov 0x13,r5
            0x0ce31454      ec06           mov.b @(r0,r14),r6
            0x0ce31456      2b43           jmp @r3
            0x0ce31458      f66e           mov.l @r15+,r14


            ;-- aav.0x0ce3145a:
            ; UNKNOWN XREF from aav.0x0ce33f6c (+0x4)
            0x0ce3145a      e62f           mov.l r14,@-r15
            0x0ce3145c      d62f           mov.l r13,@-r15
            0x0ce3145e      224f           sts.l pr,@-r15
            0x0ce31460      39d3           mov.l @(0xE4,PC),r3
            0x0ce31462      0b43           jsr @r3
            0x0ce31464      436e           mov r4,r14
            0x0ce31466      6790           mov.w @(0xCE,PC),r0
            0x0ce31468      ec02           mov.b @(r0,r14),r2
            0x0ce3146a      2822           tst r2,r2
            0x0ce3146c      1489           bt 0x0ce31498
            0x0ce3146e      e684           mov.b @(0x6,r14),r0
            0x0ce31470      00e3           mov 0x00,r3
            0x0ce31472      629d           mov.w @(0xC4,PC),r13
            0x0ce31474      3366           mov r3,r6
            0x0ce31476      0170           add 0x01,r0
            0x0ce31478      34d2           mov.l @(0xD0,PC),r2
            0x0ce3147a      e680           mov.b r0,@(0x6,r14)
            0x0ce3147c      ec3d           add r14,r13
            0x0ce3147e      5b90           mov.w @(0xB6,PC),r0
            0x0ce31480      01e5           mov 0x01,r5
            0x0ce31482      3367           mov r3,r7
            0x0ce31484      340e           mov.b r3,@(r0,r14)
            0x0ce31486      40e0           mov 0x40,r0
            0x0ce31488      d180           mov.b r0,@(0x1,r13)
            0x0ce3148a      04e0           mov 0x04,r0
            0x0ce3148c      d181           mov.w r0,@(0x2,r13)
            0x0ce3148e      302d           mov.b r3,@r13
            0x0ce31490      0b42           jsr @r2
            0x0ce31492      e364           mov r14,r4
            0x0ce31494      5290           mov.w @(0xA4,PC),r0
            0x0ce31496      d480           mov.b r0,@(0x4,r13)
            ; CODE XREF from aav.0x0ce3145a (+0x12)
            0x0ce31498      264f           lds.l @r15+,pr
            0x0ce3149a      f66d           mov.l @r15+,r13
            0x0ce3149c      0b00           rts 
            0x0ce3149e      f66e           mov.l @r15+,r14


            ;-- aav.0x0ce314a0:
            ; UNKNOWN XREF from aav.0x0ce33f6c (+0x8)
            0x0ce314a0      4d90           mov.w @(0x9A,PC),r0
            0x0ce314a2      4b93           mov.w @(0x96,PC),r3
            0x0ce314a4      3404           mov.b r3,@(r0,r4)
            0x0ce314a6      28d3           mov.l @(0xA0,PC),r3
            0x0ce314a8      2b43           jmp @r3
            0x0ce314aa      0900           nop 
            ;-- aav.0x0ce314ac:
            ; UNKNOWN XREF from aav.0x0ce33f6c (+0xc)
            0x0ce314ac      e62f           mov.l r14,@-r15
            0x0ce314ae      224f           sts.l pr,@-r15
            0x0ce314b0      25d3           mov.l @(0x94,PC),r3
            0x0ce314b2      0b43           jsr @r3
            ; CODE XREF from aav.0x0ce31e54 (+0x108)
            0x0ce314b4      436e           mov r4,r14
            0x0ce314b6      3f90           mov.w @(0x7E,PC),r0
            0x0ce314b8      ec02           mov.b @(r0,r14),r2
            0x0ce314ba      2822           tst r2,r2
            0x0ce314bc      0789           bt 0x0ce314ce
            0x0ce314be      00e3           mov 0x00,r3
            0x0ce314c0      e364           mov r14,r4
            0x0ce314c2      340e           mov.b r3,@(r0,r14)
            0x0ce314c4      04e5           mov 0x04,r5
            0x0ce314c6      264f           lds.l @r15+,pr
            0x0ce314c8      21d3           mov.l @(0x84,PC),r3
            0x0ce314ca      2b43           jmp @r3
            0x0ce314cc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce314ac (+0x10)
            0x0ce314ce      264f           lds.l @r15+,pr
            0x0ce314d0      0b00           rts 
            0x0ce314d2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce314d4:
            ; UNKNOWN XREFS from aav.0x0ce33f58 (+0x4, +0xc)
            0x0ce314d4      4684           mov.b @(0x6,r4),r0
            0x0ce314d6      0820           tst r0,r0
            0x0ce314d8      068b           bf 0x0ce314e8
            0x0ce314da      4684           mov.b @(0x6,r4),r0
            0x0ce314dc      02e6           mov 0x02,r6
            0x0ce314de      19d3           mov.l @(0x64,PC),r3
            0x0ce314e0      0170           add 0x01,r0
            0x0ce314e2      4680           mov.b r0,@(0x6,r4)
            0x0ce314e4      2b43           jmp @r3
            0x0ce314e6      13e5           mov 0x13,r5
            ; CODE XREF from aav.0x0ce314d4 (+0x4)
            0x0ce314e8      17d3           mov.l @(0x5C,PC),r3
            0x0ce314ea      2b43           jmp @r3
            0x0ce314ec      0900           nop 
            ;-- aav.0x0ce314ee:
            ; UNKNOWN XREF from aav.0x0ce33f58 (+0x8)
            0x0ce314ee      4684           mov.b @(0x6,r4),r0
            0x0ce314f0      0820           tst r0,r0
            0x0ce314f2      068b           bf 0x0ce31502
            0x0ce314f4      4684           mov.b @(0x6,r4),r0
            0x0ce314f6      05e6           mov 0x05,r6
            0x0ce314f8      12d3           mov.l @(0x48,PC),r3
            0x0ce314fa      0170           add 0x01,r0
            0x0ce314fc      4680           mov.b r0,@(0x6,r4)
            0x0ce314fe      2b43           jmp @r3
            0x0ce31500      13e5           mov 0x13,r5
            ; CODE XREF from aav.0x0ce314ee (+0x4)
            0x0ce31502      11d3           mov.l @(0x44,PC),r3
            0x0ce31504      2b43           jmp @r3
            0x0ce31506      0900           nop 
            ;-- aav.0x0ce31508:
            ; UNKNOWN XREF from aav.0x0ce33f58 (+0x10)
            0x0ce31508      4684           mov.b @(0x6,r4),r0
            0x0ce3150a      0820           tst r0,r0
            0x0ce3150c      068b           bf 0x0ce3151c
            0x0ce3150e      4684           mov.b @(0x6,r4),r0
            0x0ce31510      03e6           mov 0x03,r6
            0x0ce31512      0cd3           mov.l @(0x30,PC),r3
            0x0ce31514      0170           add 0x01,r0
            0x0ce31516      4680           mov.b r0,@(0x6,r4)
            0x0ce31518      2b43           jmp @r3
            0x0ce3151a      13e5           mov 0x13,r5
            ; CODE XREF from aav.0x0ce31508 (+0x4)
            0x0ce3151c      0ad3           mov.l @(0x28,PC),r3
            0x0ce3151e      2b43           jmp @r3
            0x0ce31520      0900           nop 
            ;-- aav.0x0ce31522:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x20)
            0x0ce31522      0d90           mov.w @(0x1A,PC),r0
            0x0ce31524      4363           mov r4,r3
            0x0ce31526      462f           mov.l r4,@-r15
            0x0ce31528      3c02           mov.b @(r0,r3),r2
            0x0ce3152a      0ad0           mov.l @(0x28,PC),r0
            0x0ce3152c      2c62           extu.b r2,r2
            0x0ce3152e      0842           shll2 r2
            0x0ce31530      2e03           mov.l @(r0,r2),r3
            0x0ce31532      2b43           jmp @r3
            0x0ce31534      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31536 0x0158 0x0141 0x02a4 0x00ff 0x02a8 0x01e9 0x0000

0x0ce31544  0x8c034e8c 0x8c034dee 0x8c068ee4 0x8c0bfc20  .N...M...... ...       
0x0ce31554  0x0ce33f7c

;==============================================================================
            ;-- aav.0x0ce31558:
            ; UNKNOWN XREFS from aav.0x0ce33f7c (, +0x14, +0x18, +0x28, +0x34)
            0x0ce31558      a190           mov.w @(0x142,PC),r0
            0x0ce3155a      e62f           mov.l r14,@-r15
            0x0ce3155c      436e           mov r4,r14
            0x0ce3155e      224f           sts.l pr,@-r15
            0x0ce31560      ec00           mov.b @(r0,r14),r0
            0x0ce31562      0c60           extu.b r0,r0
            0x0ce31564      0288           cmp/eq 0x02,r0
            0x0ce31566      0c8b           bf 0x0ce31582
            0x0ce31568      50d2           mov.l @(0x140,PC),r2
            0x0ce3156a      0b42           jsr @r2
            0x0ce3156c      e364           mov r14,r4
            0x0ce3156e      9790           mov.w @(0x12E,PC),r0
            0x0ce31570      e6f3           fmov @(r0,r14),fr3
            0x0ce31572      38e0           mov 0x38,r0
            0x0ce31574      e6f2           fmov @(r0,r14),fr2
            0x0ce31576      25f3           fcmp/gt fr2,fr3
            0x0ce31578      038b           bf 0x0ce31582
            0x0ce3157a      9190           mov.w @(0x122,PC),r0
            0x0ce3157c      e6f3           fmov @(r0,r14),fr3
            0x0ce3157e      38e0           mov 0x38,r0
            0x0ce31580      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31558 (+0xe, +0x20)
            0x0ce31582      e684           mov.b @(0x6,r14),r0
            0x0ce31584      e364           mov r14,r4
            0x0ce31586      4ad1           mov.l @(0x128,PC),r1
            0x0ce31588      0c60           extu.b r0,r0
            0x0ce3158a      8a95           mov.w @(0x114,PC),r5
            0x0ce3158c      264f           lds.l @r15+,pr
            0x0ce3158e      0840           shll2 r0
            0x0ce31590      1e03           mov.l @(r0,r1),r3
            0x0ce31592      ec35           add r14,r5
            0x0ce31594      2b43           jmp @r3
            0x0ce31596      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31598:
            ; UNKNOWN XREF from aav.0x0ce33fb4 ()
            0x0ce31598      e62f           mov.l r14,@-r15
            0x0ce3159a      436e           mov r4,r14
            0x0ce3159c      d62f           mov.l r13,@-r15
            0x0ce3159e      c62f           mov.l r12,@-r15
            0x0ce315a0      536c           mov r5,r12
            0x0ce315a2      b62f           mov.l r11,@-r15
            0x0ce315a4      00e5           mov 0x00,r5
            0x0ce315a6      224f           sts.l pr,@-r15
            0x0ce315a8      e684           mov.b @(0x6,r14),r0
            0x0ce315aa      42d3           mov.l @(0x108,PC),r3
            0x0ce315ac      0170           add 0x01,r0
            0x0ce315ae      e680           mov.b r0,@(0x6,r14)
            0x0ce315b0      0b43           jsr @r3
            0x0ce315b2      e364           mov r14,r4
            0x0ce315b4      40d2           mov.l @(0x100,PC),r2
            0x0ce315b6      0b42           jsr @r2
            0x0ce315b8      e364           mov r14,r4
            0x0ce315ba      40d3           mov.l @(0x100,PC),r3
            0x0ce315bc      05e5           mov 0x05,r5
            0x0ce315be      0b43           jsr @r3
            0x0ce315c0      e364           mov r14,r4
            0x0ce315c2      6c90           mov.w @(0xD8,PC),r0
            0x0ce315c4      0ceb           mov 0x0C,r11
            0x0ce315c6      ec00           mov.b @(r0,r14),r0
            0x0ce315c8      0c60           extu.b r0,r0
            0x0ce315ca      0288           cmp/eq 0x02,r0
            0x0ce315cc      378f           bf.s 0x0ce3163e
            0x0ce315ce      00ed           mov 0x00,r13
            0x0ce315d0      3bd1           mov.l @(0xEC,PC),r1
            0x0ce315d2      5ce0           mov 0x5C,r0
            0x0ce315d4      e6f2           fmov @(r0,r14),fr2
            0x0ce315d6      34e3           mov 0x34,r3
            0x0ce315d8      5a41           lds r1,fpul
            0x0ce315da      3ad1           mov.l @(0xE8,PC),r1
            0x0ce315dc      0df3           fsts fpul,fr3
            0x0ce315de      33f2           fdiv fr3,fr2
            0x0ce315e0      5a41           lds r1,fpul
            0x0ce315e2      39d1           mov.l @(0xE4,PC),r1
            0x0ce315e4      8df3           fldi0 fr3
            0x0ce315e6      27fe           fmov fr2,@(r0,r14)
            0x0ce315e8      60e0           mov 0x60,r0
            0x0ce315ea      e6f1           fmov @(r0,r14),fr1
            0x0ce315ec      0df2           fsts fpul,fr2
            0x0ce315ee      23f1           fdiv fr2,fr1
            0x0ce315f0      5a41           lds r1,fpul
            0x0ce315f2      17fe           fmov fr1,@(r0,r14)
            0x0ce315f4      6ce0           mov 0x6C,r0
            0x0ce315f6      e6f0           fmov @(r0,r14),fr0
            0x0ce315f8      0df1           fsts fpul,fr1
            0x0ce315fa      13f0           fdiv fr1,fr0
            0x0ce315fc      07fe           fmov fr0,@(r0,r14)
            0x0ce315fe      68e0           mov 0x68,r0
            0x0ce31600      37fe           fmov fr3,@(r0,r14)
            0x0ce31602      0ae0           mov 0x0A,r0
            0x0ce31604      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31606      4d90           mov.w @(0x9A,PC),r0
            0x0ce31608      b02c           mov.b r11,@r12
            0x0ce3160a      340e           mov.b r3,@(r0,r14)
            0x0ce3160c      0b70           add 0x0B,r0
            0x0ce3160e      d50e           mov.w r13,@(r0,r14)
            0x0ce31610      f270           add 0xF2,r0
            0x0ce31612      2ed3           mov.l @(0xB8,PC),r3
            0x0ce31614      d40e           mov.b r13,@(r0,r14)
            0x0ce31616      2670           add 0x26,r0
            0x0ce31618      d60e           mov.l r13,@(r0,r14)
            0x0ce3161a      e364           mov r14,r4
            0x0ce3161c      e284           mov.b @(0x2,r14),r0
            0x0ce3161e      15e5           mov 0x15,r5
            0x0ce31620      3262           mov.l @r3,r2
            0x0ce31622      03e6           mov 0x03,r6
            0x0ce31624      0c60           extu.b r0,r0
            0x0ce31626      0040           shll r0
            0x0ce31628      7c72           add 0x7C,r2
            0x0ce3162a      2d01           mov.w @(r0,r2),r1
            0x0ce3162c      0171           add 0x01,r1
            0x0ce3162e      1502           mov.w r1,@(r0,r2)
            0x0ce31630      264f           lds.l @r15+,pr
            0x0ce31632      27d2           mov.l @(0x9C,PC),r2
            0x0ce31634      f66b           mov.l @r15+,r11
            0x0ce31636      f66c           mov.l @r15+,r12
            0x0ce31638      f66d           mov.l @r15+,r13
            0x0ce3163a      2b42           jmp @r2
            0x0ce3163c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31598 (+0x34)
            0x0ce3163e      25d2           mov.l @(0x94,PC),r2
            0x0ce31640      0b42           jsr @r2
            0x0ce31642      e364           mov r14,r4
            0x0ce31644      24d3           mov.l @(0x90,PC),r3
            0x0ce31646      0b43           jsr @r3
            0x0ce31648      e364           mov r14,r4
            0x0ce3164a      2890           mov.w @(0x50,PC),r0
            0x0ce3164c      d40e           mov.b r13,@(r0,r14)
            0x0ce3164e      aa70           add 0xAA,r0
            0x0ce31650      ec04           mov.b @(r0,r14),r4
            0x0ce31652      2890           mov.w @(0x50,PC),r0
            0x0ce31654      ec00           mov.b @(r0,r14),r0
            0x0ce31656      0c60           extu.b r0,r0
            0x0ce31658      0388           cmp/eq 0x03,r0
            0x0ce3165a      018f           bf.s 0x0ce31660
            0x0ce3165c      3174           add 0x31,r4
            0x0ce3165e      41e4           mov 0x41,r4
            ; CODE XREF from aav.0x0ce31598 (+0xc2)
            0x0ce31660      2090           mov.w @(0x40,PC),r0
            0x0ce31662      15e5           mov 0x15,r5
            0x0ce31664      19d3           mov.l @(0x64,PC),r3
            0x0ce31666      440e           mov.b r4,@(r0,r14)
            0x0ce31668      0b70           add 0x0B,r0
            0x0ce3166a      d50e           mov.w r13,@(r0,r14)
            0x0ce3166c      f270           add 0xF2,r0
            0x0ce3166e      d40e           mov.b r13,@(r0,r14)
            0x0ce31670      2670           add 0x26,r0
            0x0ce31672      d60e           mov.l r13,@(r0,r14)
            0x0ce31674      e284           mov.b @(0x2,r14),r0
            0x0ce31676      3262           mov.l @r3,r2
            0x0ce31678      0c60           extu.b r0,r0
            0x0ce3167a      0040           shll r0
            0x0ce3167c      7c72           add 0x7C,r2
            0x0ce3167e      2d01           mov.w @(r0,r2),r1
            0x0ce31680      0171           add 0x01,r1
            0x0ce31682      1502           mov.w r1,@(r0,r2)
            0x0ce31684      1090           mov.w @(0x20,PC),r0
            0x0ce31686      12d2           mov.l @(0x48,PC),r2
            0x0ce31688      ec06           mov.b @(r0,r14),r6
            0x0ce3168a      0046           shll r6
            0x0ce3168c      0b42           jsr @r2
            0x0ce3168e      e364           mov r14,r4
            0x0ce31690      0a90           mov.w @(0x14,PC),r0
            0x0ce31692      ec03           mov.b @(r0,r14),r3
            0x0ce31694      3823           tst r3,r3
            0x0ce31696      218b           bf 0x0ce316dc
            0x0ce31698      b02c           mov.b r11,@r12
            0x0ce3169a      22a0           bra 0x0ce316e2
            0x0ce3169c      b360           mov r11,r0

;##############################################################################
0x0ce3169e 0x01f9 0x041c 0x02a4 0x01a1 0x0255 0x01a3 0x0000

0x0ce316ac  0x8c04fea8 0x0ce33fb4 0x8c035162 0x8c05218a
0x0ce316bc  0x8c056de4 0x41800000 0x41000000 0x42800000
0x0ce316cc  0x8c2896b0 0x8c034e8c 0x8c052b4c 0x8c05115a

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce31598 (+0xfe)
            0x0ce316dc      0ee2           mov 0x0E,r2
            0x0ce316de      0ae0           mov 0x0A,r0
            0x0ce316e0      202c           mov.b r2,@r12
            ; CODE XREF from aav.0x0ce31598 (+0x102)
            0x0ce316e2      ee81           mov.w r0,@(0x1C,r14)
            0x0ce316e4      264f           lds.l @r15+,pr
            0x0ce316e6      f66b           mov.l @r15+,r11
            0x0ce316e8      f66c           mov.l @r15+,r12
            0x0ce316ea      f66d           mov.l @r15+,r13
            0x0ce316ec      0b00           rts 
            0x0ce316ee      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce316f0:
            ; UNKNOWN XREF from aav.0x0ce33fb4 (+0x4)
            0x0ce316f0      e62f           mov.l r14,@-r15
            0x0ce316f2      436e           mov r4,r14
            0x0ce316f4      d62f           mov.l r13,@-r15
            0x0ce316f6      224f           sts.l pr,@-r15
            0x0ce316f8      48d3           mov.l @(0x120,PC),r3
            0x0ce316fa      0b43           jsr @r3
            0x0ce316fc      536d           mov r5,r13
            0x0ce316fe      8790           mov.w @(0x10E,PC),r0
            0x0ce31700      ec02           mov.b @(r0,r14),r2
            0x0ce31702      2822           tst r2,r2
            0x0ce31704      0e89           bt 0x0ce31724
            0x0ce31706      e684           mov.b @(0x6,r14),r0
            0x0ce31708      00e7           mov 0x00,r7
            0x0ce3170a      45d3           mov.l @(0x114,PC),r3
            0x0ce3170c      7365           mov r7,r5
            0x0ce3170e      0170           add 0x01,r0
            0x0ce31710      7366           mov r7,r6
            0x0ce31712      e680           mov.b r0,@(0x6,r14)
            0x0ce31714      20e0           mov 0x20,r0
            0x0ce31716      d180           mov.b r0,@(0x1,r13)
            0x0ce31718      0de0           mov 0x0D,r0
            0x0ce3171a      d181           mov.w r0,@(0x2,r13)
            0x0ce3171c      0b43           jsr @r3
            0x0ce3171e      e364           mov r14,r4
            0x0ce31720      7790           mov.w @(0xEE,PC),r0
            0x0ce31722      d480           mov.b r0,@(0x4,r13)
            ; CODE XREF from aav.0x0ce316f0 (+0x14)
            0x0ce31724      264f           lds.l @r15+,pr
            0x0ce31726      f66d           mov.l @r15+,r13
            0x0ce31728      0b00           rts 
            0x0ce3172a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3172c:
            ; UNKNOWN XREF from aav.0x0ce33fb4 (+0x8)
            0x0ce3172c      e62f           mov.l r14,@-r15
            0x0ce3172e      436e           mov r4,r14
            0x0ce31730      d62f           mov.l r13,@-r15
            0x0ce31732      536d           mov r5,r13
            0x0ce31734      6d90           mov.w @(0xDA,PC),r0
            0x0ce31736      d365           mov r13,r5
            0x0ce31738      224f           sts.l pr,@-r15
            0x0ce3173a      d480           mov.b r0,@(0x4,r13)
            0x0ce3173c      b0b2           bsr aav.0x0ce31ca0
            0x0ce3173e      e364           mov r14,r4
            0x0ce31740      36d2           mov.l @(0xD8,PC),r2
            0x0ce31742      0b42           jsr @r2
            0x0ce31744      e364           mov r14,r4
            0x0ce31746      ee85           mov.w @(0x1C,r14),r0
            0x0ce31748      ff70           add 0xFF,r0
            0x0ce3174a      ee81           mov.w r0,@(0x1C,r14)
            0x0ce3174c      0f60           exts.w r0,r0
            0x0ce3174e      1540           cmp/pl r0
            0x0ce31750      0689           bt 0x0ce31760
            0x0ce31752      e684           mov.b @(0x6,r14),r0
            0x0ce31754      0170           add 0x01,r0
            0x0ce31756      e680           mov.b r0,@(0x6,r14)
            0x0ce31758      00e0           mov 0x00,r0
            0x0ce3175a      d180           mov.b r0,@(0x1,r13)
            0x0ce3175c      08e0           mov 0x08,r0
            0x0ce3175e      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce3172c (+0x24)
            0x0ce31760      264f           lds.l @r15+,pr
            0x0ce31762      f66d           mov.l @r15+,r13
            0x0ce31764      0b00           rts 
            0x0ce31766      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31768:
            ; UNKNOWN XREF from aav.0x0ce33fb4 (+0xc)
            0x0ce31768      e62f           mov.l r14,@-r15
            0x0ce3176a      224f           sts.l pr,@-r15
            0x0ce3176c      fc7f           add 0xFC,r15
            0x0ce3176e      5090           mov.w @(0xA0,PC),r0
            0x0ce31770      5363           mov r5,r3
            0x0ce31772      522f           mov.l r5,@r15
            0x0ce31774      436e           mov r4,r14
            0x0ce31776      3480           mov.b r0,@(0x4,r3)
            0x0ce31778      28d3           mov.l @(0xA0,PC),r3
            0x0ce3177a      0b43           jsr @r3
            0x0ce3177c      e364           mov r14,r4
            0x0ce3177e      ee85           mov.w @(0x1C,r14),r0
            0x0ce31780      ff70           add 0xFF,r0
            0x0ce31782      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31784      0f60           exts.w r0,r0
            0x0ce31786      1140           cmp/pz r0
            0x0ce31788      2389           bt 0x0ce317d2
            0x0ce3178a      e684           mov.b @(0x6,r14),r0
            0x0ce3178c      0170           add 0x01,r0
            0x0ce3178e      e680           mov.b r0,@(0x6,r14)
            0x0ce31790      00e0           mov 0x00,r0
            0x0ce31792      f263           mov.l @r15,r3
            0x0ce31794      3480           mov.b r0,@(0x4,r3)
            0x0ce31796      07e3           mov 0x07,r3
            0x0ce31798      3c90           mov.w @(0x78,PC),r0  ;Optic Recovery?
            0x0ce3179a      340e           mov.b r3,@(r0,r14)
            0x0ce3179c      3b90           mov.w @(0x76,PC),r0
            0x0ce3179e      ec00           mov.b @(r0,r14),r0
            0x0ce317a0      0c60           extu.b r0,r0
            0x0ce317a2      0288           cmp/eq 0x02,r0
            0x0ce317a4      0889           bt 0x0ce317b8
            0x0ce317a6      3790           mov.w @(0x6E,PC),r0
            0x0ce317a8      ec03           mov.b @(r0,r14),r3
            0x0ce317aa      3823           tst r3,r3
            0x0ce317ac      018b           bf 0x0ce317b2
            0x0ce317ae      01a0           bra 0x0ce317b4
            0x0ce317b0      04e2           mov 0x04,r2
            ; CODE XREF from aav.0x0ce31768 (+0x44)
            0x0ce317b2      06e2           mov 0x06,r2
            ; CODE XREF from aav.0x0ce31768 (+0x46)
            0x0ce317b4      2e90           mov.w @(0x5C,PC),r0 ;?????
            0x0ce317b6      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce31768 (+0x3c)
            0x0ce317b8      1ad3           mov.l @(0x68,PC),r3
            0x0ce317ba      00e5           mov 0x00,r5
            0x0ce317bc      0b43           jsr @r3
            0x0ce317be      e364           mov r14,r4
            0x0ce317c0      2890           mov.w @(0x50,PC),r0 ;?????
            0x0ce317c2      e364           mov r14,r4
            0x0ce317c4      15e5           mov 0x15,r5
            0x0ce317c6      ec06           mov.b @(r0,r14),r6
            0x0ce317c8      047f           add 0x04,r15
            0x0ce317ca      264f           lds.l @r15+,pr
            0x0ce317cc      16d3           mov.l @(0x58,PC),r3
            0x0ce317ce      2b43           jmp @r3
            0x0ce317d0      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31768 (+0x20)
            0x0ce317d2      047f           add 0x04,r15
            0x0ce317d4      264f           lds.l @r15+,pr
            0x0ce317d6      0b00           rts 
            0x0ce317d8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce317da:
            ; UNKNOWN XREF from aav.0x0ce33fb4 (+0x10)
            0x0ce317da      e62f           mov.l r14,@-r15
            0x0ce317dc      224f           sts.l pr,@-r15
            0x0ce317de      0fd3           mov.l @(0x3C,PC),r3
            0x0ce317e0      0b43           jsr @r3
            0x0ce317e2      436e           mov r4,r14
            0x0ce317e4      0e60           exts.b r0,r0
            0x0ce317e6      1140           cmp/pz r0
            0x0ce317e8      2689           bt 0x0ce31838
            0x0ce317ea      10d3           mov.l @(0x40,PC),r3
            0x0ce317ec      2be5           mov 0x2B,r5
            0x0ce317ee      0b43           jsr @r3
            0x0ce317f0      e364           mov r14,r4
            0x0ce317f2      1090           mov.w @(0x20,PC),r0
            0x0ce317f4      ec00           mov.b @(r0,r14),r0
            0x0ce317f6      0c60           extu.b r0,r0
            0x0ce317f8      0288           cmp/eq 0x02,r0
            0x0ce317fa      048b           bf 0x0ce31806
            0x0ce317fc      264f           lds.l @r15+,pr
            0x0ce317fe      0cd2           mov.l @(0x30,PC),r2
            0x0ce31800      e364           mov r14,r4
            0x0ce31802      2b42           jmp @r2
            0x0ce31804      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce317da (+0x20)
            0x0ce31806      264f           lds.l @r15+,pr
            0x0ce31808      0ad2           mov.l @(0x28,PC),r2
            0x0ce3180a      e364           mov r14,r4
            0x0ce3180c      2b42           jmp @r2
            0x0ce3180e      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31810 0x0141 0x00ff 0x0158 0x01f9 0x01a3 0x0000
0x0ce3181c  0x8c034dee 0x8c068ee4 0x8c035162 0x8c034e8c
0x0ce3182c  0x8c042008 0x8c05176e 0x8c051648

;==============================================================================
            ; CODE XREF from aav.0x0ce317da (+0xe)
            0x0ce31838      264f           lds.l @r15+,pr
            0x0ce3183a      0b00           rts 
            0x0ce3183c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3183e:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x4)
            0x0ce3183e      9a90           mov.w @(0x134,PC),r0
            0x0ce31840      e62f           mov.l r14,@-r15
            0x0ce31842      436e           mov r4,r14
            0x0ce31844      224f           sts.l pr,@-r15
            0x0ce31846      ec00           mov.b @(r0,r14),r0
            0x0ce31848      0c60           extu.b r0,r0
            0x0ce3184a      0288           cmp/eq 0x02,r0
            0x0ce3184c      0c8b           bf 0x0ce31868
            0x0ce3184e      4ed2           mov.l @(0x138,PC),r2
            0x0ce31850      0b42           jsr @r2
            0x0ce31852      e364           mov r14,r4
            0x0ce31854      9090           mov.w @(0x120,PC),r0
            0x0ce31856      e6f3           fmov @(r0,r14),fr3
            0x0ce31858      38e0           mov 0x38,r0
            0x0ce3185a      e6f2           fmov @(r0,r14),fr2
            0x0ce3185c      25f3           fcmp/gt fr2,fr3
            0x0ce3185e      038b           bf 0x0ce31868
            0x0ce31860      8a90           mov.w @(0x114,PC),r0
            0x0ce31862      e6f3           fmov @(r0,r14),fr3
            0x0ce31864      38e0           mov 0x38,r0
            0x0ce31866      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce3183e (+0xe, +0x20)
            0x0ce31868      e684           mov.b @(0x6,r14),r0
            0x0ce3186a      e364           mov r14,r4
            0x0ce3186c      47d1           mov.l @(0x11C,PC),r1
            0x0ce3186e      0c60           extu.b r0,r0
            0x0ce31870      8395           mov.w @(0x106,PC),r5
            0x0ce31872      264f           lds.l @r15+,pr
            0x0ce31874      0840           shll2 r0
            0x0ce31876      1e03           mov.l @(r0,r1),r3
            0x0ce31878      ec35           add r14,r5
            0x0ce3187a      2b43           jmp @r3
            0x0ce3187c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3187e:
            ; UNKNOWN XREF from aav.0x0ce33fc8 ()
            0x0ce3187e      e62f           mov.l r14,@-r15
            0x0ce31880      d62f           mov.l r13,@-r15
            0x0ce31882      224f           sts.l pr,@-r15
            0x0ce31884      fc7f           add 0xFC,r15
            0x0ce31886      7990           mov.w @(0xF2,PC),r0
            0x0ce31888      436e           mov r4,r14
            0x0ce3188a      522f           mov.l r5,@r15
            0x0ce3188c      ec00           mov.b @(r0,r14),r0
            0x0ce3188e      0c60           extu.b r0,r0
            0x0ce31890      0688           cmp/eq 0x06,r0
            0x0ce31892      058b           bf 0x0ce318a0
            0x0ce31894      7490           mov.w @(0xE8,PC),r0
            0x0ce31896      10e3           mov 0x10,r3
            0x0ce31898      7192           mov.w @(0xE2,PC),r2
            0x0ce3189a      240e           mov.b r2,@(r0,r14)
            0x0ce3189c      0170           add 0x01,r0
            0x0ce3189e      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3187e (+0x14)
            0x0ce318a0      e684           mov.b @(0x6,r14),r0
            0x0ce318a2      00e5           mov 0x00,r5
            0x0ce318a4      3ad3           mov.l @(0xE8,PC),r3
            0x0ce318a6      0170           add 0x01,r0
            0x0ce318a8      e680           mov.b r0,@(0x6,r14)
            0x0ce318aa      0b43           jsr @r3
            0x0ce318ac      e364           mov r14,r4
            0x0ce318ae      39d2           mov.l @(0xE4,PC),r2
            0x0ce318b0      0b42           jsr @r2
            0x0ce318b2      e364           mov r14,r4
            0x0ce318b4      5f90           mov.w @(0xBE,PC),r0
            0x0ce318b6      ec00           mov.b @(r0,r14),r0
            0x0ce318b8      0c60           extu.b r0,r0
            0x0ce318ba      0288           cmp/eq 0x02,r0
            0x0ce318bc      1a8f           bf.s 0x0ce318f4
            0x0ce318be      00ed           mov 0x00,r13
            0x0ce318c0      35d1           mov.l @(0xD4,PC),r1
            0x0ce318c2      5ce0           mov 0x5C,r0
            0x0ce318c4      e6f2           fmov @(r0,r14),fr2
            0x0ce318c6      5a41           lds r1,fpul
            0x0ce318c8      34d1           mov.l @(0xD0,PC),r1
            0x0ce318ca      0df3           fsts fpul,fr3
            0x0ce318cc      33f2           fdiv fr3,fr2
            0x0ce318ce      5a41           lds r1,fpul
            0x0ce318d0      33d1           mov.l @(0xCC,PC),r1
            0x0ce318d2      8df3           fldi0 fr3
            0x0ce318d4      27fe           fmov fr2,@(r0,r14)
            0x0ce318d6      60e0           mov 0x60,r0
            0x0ce318d8      e6f1           fmov @(r0,r14),fr1
            0x0ce318da      0df2           fsts fpul,fr2
            0x0ce318dc      23f1           fdiv fr2,fr1
            0x0ce318de      5a41           lds r1,fpul
            0x0ce318e0      17fe           fmov fr1,@(r0,r14)
            0x0ce318e2      6ce0           mov 0x6C,r0
            0x0ce318e4      e6f0           fmov @(r0,r14),fr0
            0x0ce318e6      0df1           fsts fpul,fr1
            0x0ce318e8      13f0           fdiv fr1,fr0
            0x0ce318ea      07fe           fmov fr0,@(r0,r14)
            0x0ce318ec      68e0           mov 0x68,r0
            0x0ce318ee      37fe           fmov fr3,@(r0,r14)
            0x0ce318f0      09a0           bra 0x0ce31906
            0x0ce318f2      1be6           mov 0x1B,r6
            ; CODE XREF from aav.0x0ce3187e (+0x3e)
            0x0ce318f4      2bd3           mov.l @(0xAC,PC),r3
            0x0ce318f6      0b43           jsr @r3
            0x0ce318f8      e364           mov r14,r4
            0x0ce318fa      2bd2           mov.l @(0xAC,PC),r2
            0x0ce318fc      0b42           jsr @r2
            0x0ce318fe      e364           mov r14,r4
            0x0ce31900      3990           mov.w @(0x72,PC),r0
            0x0ce31902      09e6           mov 0x09,r6
            0x0ce31904      d40e           mov.b r13,@(r0,r14)
            ; CODE XREF from aav.0x0ce3187e (+0x72)
            0x0ce31906      29d3           mov.l @(0xA4,PC),r3
            0x0ce31908      15e5           mov 0x15,r5
            0x0ce3190a      0b43           jsr @r3
            0x0ce3190c      e364           mov r14,r4
            0x0ce3190e      3890           mov.w @(0x70,PC),r0
            0x0ce31910      36e2           mov 0x36,r2
            0x0ce31912      27d3           mov.l @(0x9C,PC),r3
            0x0ce31914      240e           mov.b r2,@(r0,r14)
            0x0ce31916      0b70           add 0x0B,r0
            0x0ce31918      d50e           mov.w r13,@(r0,r14)
            0x0ce3191a      f270           add 0xF2,r0
            0x0ce3191c      d40e           mov.b r13,@(r0,r14)
            0x0ce3191e      2670           add 0x26,r0
            0x0ce31920      d60e           mov.l r13,@(r0,r14)
            0x0ce31922      e284           mov.b @(0x2,r14),r0
            0x0ce31924      3262           mov.l @r3,r2
            0x0ce31926      0c60           extu.b r0,r0
            0x0ce31928      0040           shll r0
            0x0ce3192a      7c72           add 0x7C,r2
            0x0ce3192c      2d01           mov.w @(r0,r2),r1
            0x0ce3192e      0171           add 0x01,r1
            0x0ce31930      1502           mov.w r1,@(r0,r2)
            0x0ce31932      f262           mov.l @r15,r2
            0x0ce31934      2360           mov r2,r0
            0x0ce31936      0900           nop 
            0x0ce31938      07e1           mov 0x07,r1
            0x0ce3193a      0c31           add r0,r1
            0x0ce3193c      d021           mov.b r13,@r1
            0x0ce3193e      d360           mov r13,r0
            0x0ce31940      0900           nop 
            0x0ce31942      2680           mov.b r0,@(0x6,r2)
            0x0ce31944      047f           add 0x04,r15
            0x0ce31946      264f           lds.l @r15+,pr
            0x0ce31948      f66d           mov.l @r15+,r13
            0x0ce3194a      0b00           rts 
            0x0ce3194c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3194e:
            ; UNKNOWN XREF from aav.0x0ce33fc8 (+0x4)
            0x0ce3194e      e62f           mov.l r14,@-r15
            0x0ce31950      d62f           mov.l r13,@-r15
            0x0ce31952      c62f           mov.l r12,@-r15
            0x0ce31954      224f           sts.l pr,@-r15
            0x0ce31956      e87f           add 0xE8,r15
            0x0ce31958      1490           mov.w @(0x28,PC),r0
            0x0ce3195a      436e           mov r4,r14
            0x0ce3195c      02e3           mov 0x02,r3
            0x0ce3195e      340e           mov.b r3,@(r0,r14)
            0x0ce31960      05e2           mov 0x05,r2
            0x0ce31962      1090           mov.w @(0x20,PC),r0
            0x0ce31964      240e           mov.b r2,@(r0,r14)
            0x0ce31966      0990           mov.w @(0x12,PC),r0
            0x0ce31968      ec00           mov.b @(r0,r14),r0
            0x0ce3196a      0c60           extu.b r0,r0
            0x0ce3196c      0688           cmp/eq 0x06,r0
            0x0ce3196e      218f           bf.s 0x0ce319b4
            0x0ce31970      536c           mov r5,r12
            0x0ce31972      20a0           bra 0x0ce319b6
            0x0ce31974      02e3           mov 0x02,r3

;##############################################################################
0x0ce31976 0x01f9 0x041c 0x02a4 0x0255 0x00ff 0x03f0 0x01a1 0x03f8
0x0ce31986 0x0328

0x0ce31988  0x8c04fea8 0x0ce33fc8 0x8c035162 0x8c05218a  .....?..bQ...!..       
0x0ce31998  0x41800000 0x41000000 0x42800000 0x8c052b4c  ...A...A...BL+..       
0x0ce319a8  0x8c05115a 0x8c034e8c 0x8c2896b0 

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce3194e (+0x20)
            0x0ce319b4      00e3           mov 0x00,r3
            ; CODE XREF from aav.0x0ce3194e (+0x24)
            0x0ce319b6      9390           mov.w @(0x126,PC),r0
            0x0ce319b8      f36d           mov r15,r13
            0x0ce319ba      340e           mov.b r3,@(r0,r14)
            0x0ce319bc      4cd3           mov.l @(0x130,PC),r3
            0x0ce319be      0b43           jsr @r3
            0x0ce319c0      e364           mov r14,r4
            0x0ce319c2      0e60           exts.b r0,r0
            0x0ce319c4      1140           cmp/pz r0
            0x0ce319c6      298b           bf 0x0ce31a1c
            0x0ce319c8      8b90           mov.w @(0x116,PC),r0
            0x0ce319ca      ec03           mov.b @(r0,r14),r3
            0x0ce319cc      3823           tst r3,r3
            0x0ce319ce      018b           bf 0x0ce319d4
            0x0ce319d0      80a0           bra 0x0ce31ad4
            0x0ce319d2      0900           nop 
            ; CODE XREF from aav.0x0ce3194e (+0x80)
            0x0ce319d4      00e4           mov 0x00,r4
            0x0ce319d6      440e           mov.b r4,@(r0,r14)
            0x0ce319d8      8490           mov.w @(0x108,PC),r0
            0x0ce319da      440e           mov.b r4,@(r0,r14)
            0x0ce319dc      0170           add 0x01,r0
            0x0ce319de      440e           mov.b r4,@(r0,r14)
            0x0ce319e0      8190           mov.w @(0x102,PC),r0
            0x0ce319e2      ec00           mov.b @(r0,r14),r0
            0x0ce319e4      0c60           extu.b r0,r0
            0x0ce319e6      0288           cmp/eq 0x02,r0
            0x0ce319e8      068b           bf 0x0ce319f8
            0x0ce319ea      42c7           mova @(0x108,PC),r0
            0x0ce319ec      d364           mov r13,r4
            0x0ce319ee      08f3           fmov @r0,fr3
            0x0ce319f0      41c7           mova @(0x104,PC),r0
            0x0ce319f2      3af4           fmov fr3,@r4
            0x0ce319f4      06a0           bra 0x0ce31a04
            0x0ce319f6      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce3194e (+0x9a)
            0x0ce319f8      40c7           mova @(0x100,PC),r0
            0x0ce319fa      d364           mov r13,r4
            0x0ce319fc      08f3           fmov @r0,fr3
            0x0ce319fe      40c7           mova @(0x100,PC),r0
            0x0ce31a00      3af4           fmov fr3,@r4
            0x0ce31a02      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce3194e (+0xa6)
            0x0ce31a04      04e0           mov 0x04,r0
            0x0ce31a06      3fd3           mov.l @(0xFC,PC),r3
            0x0ce31a08      37f4           fmov fr3,@(r0,r4)
            0x0ce31a0a      08e0           mov 0x08,r0
            0x0ce31a0c      d365           mov r13,r5
            0x0ce31a0e      8df3           fldi0 fr3
            0x0ce31a10      01e6           mov 0x01,r6
            0x0ce31a12      37f5           fmov fr3,@(r0,r5)
            0x0ce31a14      0b43           jsr @r3
            0x0ce31a16      e364           mov r14,r4
            0x0ce31a18      5ca0           bra 0x0ce31ad4
            0x0ce31a1a      0900           nop 
            ; CODE XREF from aav.0x0ce3194e (+0x78)
            0x0ce31a1c      e684           mov.b @(0x6,r14),r0
            0x0ce31a1e      e362           mov r14,r2
            0x0ce31a20      39d3           mov.l @(0xE4,PC),r3
            0x0ce31a22      3472           add 0x34,r2
            0x0ce31a24      0170           add 0x01,r0
            0x0ce31a26      d364           mov r13,r4
            0x0ce31a28      e680           mov.b r0,@(0x6,r14)
            0x0ce31a2a      32e0           mov 0x32,r0
            0x0ce31a2c      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31a2e      d361           mov r13,r1
            0x0ce31a30      5a90           mov.w @(0xB4,PC),r0
            0x0ce31a32      c480           mov.b r0,@(0x4,r12)
            0x0ce31a34      30e0           mov 0x30,r0
            0x0ce31a36      c580           mov.b r0,@(0x5,r12)
            0x0ce31a38      40e0           mov 0x40,r0
            0x0ce31a3a      c180           mov.b r0,@(0x1,r12)
            0x0ce31a3c      0de0           mov 0x0D,r0
            0x0ce31a3e      c181           mov.w r0,@(0x2,r12)
            0x0ce31a40      0b43           jsr @r3
            0x0ce31a42      0ce0           mov 0x0C,r0
            0x0ce31a44      31c7           mova @(0xC4,PC),r0
            0x0ce31a46      30d3           mov.l @(0xC0,PC),r3
            0x0ce31a48      08f4           fmov @r0,fr4
            0x0ce31a4a      04e0           mov 0x04,r0
            0x0ce31a4c      46f3           fmov @(r0,r4),fr3
            0x0ce31a4e      4361           mov r4,r1
            0x0ce31a50      0c71           add 0x0C,r1
            0x0ce31a52      40f3           fadd fr4,fr3
            0x0ce31a54      37f4           fmov fr3,@(r0,r4)
            0x0ce31a56      4890           mov.w @(0x90,PC),r0
            0x0ce31a58      ee02           mov.l @(r0,r14),r2
            0x0ce31a5a      3472           add 0x34,r2
            0x0ce31a5c      0b43           jsr @r3
            0x0ce31a5e      0ce0           mov 0x0C,r0
            0x0ce31a60      4390           mov.w @(0x86,PC),r0
            0x0ce31a62      ee05           mov.l @(r0,r14),r5
            0x0ce31a64      ed70           add 0xED,r0
            0x0ce31a66      5c05           mov.b @(r0,r5),r5
            0x0ce31a68      5c65           extu.b r5,r5
            0x0ce31a6a      5825           tst r5,r5
            0x0ce31a6c      048d           bt.s 0x0ce31a78
            0x0ce31a6e      0c74           add 0x0C,r4
            0x0ce31a70      5360           mov r5,r0
            0x0ce31a72      0900           nop 
            0x0ce31a74      0188           cmp/eq 0x01,r0
            0x0ce31a76      078b           bf 0x0ce31a88
            ; CODE XREF from aav.0x0ce3194e (+0x11e)
            0x0ce31a78      3790           mov.w @(0x6E,PC),r0
            0x0ce31a7a      ee03           mov.l @(r0,r14),r3
            0x0ce31a7c      3690           mov.w @(0x6C,PC),r0
            0x0ce31a7e      36f3           fmov @(r0,r3),fr3
            0x0ce31a80      04e0           mov 0x04,r0
            0x0ce31a82      40f3           fadd fr4,fr3
            0x0ce31a84      07a0           bra 0x0ce31a96
            0x0ce31a86      37f4           fmov fr3,@(r0,r4)
            ; CODE XREF from aav.0x0ce3194e (+0x128)
            0x0ce31a88      21d1           mov.l @(0x84,PC),r1
            0x0ce31a8a      04e0           mov 0x04,r0
            0x0ce31a8c      46f2           fmov @(r0,r4),fr2
            0x0ce31a8e      5a41           lds r1,fpul
            0x0ce31a90      0df3           fsts fpul,fr3
            0x0ce31a92      30f2           fadd fr3,fr2
            0x0ce31a94      27f4           fmov fr2,@(r0,r4)
            ; CODE XREF from aav.0x0ce3194e (+0x136)
            0x0ce31a96      1fd3           mov.l @(0x7C,PC),r3
            0x0ce31a98      d365           mov r13,r5
            0x0ce31a9a      0c75           add 0x0C,r5
            0x0ce31a9c      0b43           jsr @r3
            0x0ce31a9e      d364           mov r13,r4
            0x0ce31aa0      0c60           extu.b r0,r0
            0x0ce31aa2      1140           cmp/pz r0
            0x0ce31aa4      0089           bt 0x0ce31aa8
            0x0ce31aa6      0f70           add 0x0F,r0
            ; CODE XREF from aav.0x0ce3194e (+0x156)
            0x0ce31aa8      fce3           mov 0xFC,r3
            0x0ce31aaa      0fe4           mov 0x0F,r4
            0x0ce31aac      3c40           shad r3,r0
            0x0ce31aae      0924           and r0,r4
            0x0ce31ab0      1d90           mov.w @(0x3A,PC),r0
            0x0ce31ab2      ed02           mov.w @(r0,r14),r2
            0x0ce31ab4      2822           tst r2,r2
            0x0ce31ab6      0389           bt 0x0ce31ac0
            0x0ce31ab8      10e0           mov 0x10,r0
            0x0ce31aba      4830           sub r4,r0
            0x0ce31abc      0fe4           mov 0x0F,r4
            0x0ce31abe      0924           and r0,r4
            ; CODE XREF from aav.0x0ce3194e (+0x168)
            0x0ce31ac0      c365           mov r12,r5
            0x0ce31ac2      402c           mov.b r4,@r12
            0x0ce31ac4      d5b0           bsr fcn.0ce31c72
            0x0ce31ac6      e364           mov r14,r4
            0x0ce31ac8      13d2           mov.l @(0x4C,PC),r2
            0x0ce31aca      00e6           mov 0x00,r6
            0x0ce31acc      02e7           mov 0x02,r7
            0x0ce31ace      6365           mov r6,r5
            0x0ce31ad0      0b42           jsr @r2
            0x0ce31ad2      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce3194e (+0x82, +0xca)
            0x0ce31ad4      187f           add 0x18,r15
            0x0ce31ad6      264f           lds.l @r15+,pr
            0x0ce31ad8      f66c           mov.l @r15+,r12
            0x0ce31ada      f66d           mov.l @r15+,r13
            0x0ce31adc      0b00           rts 
            0x0ce31ade      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31ae0 0x03f1 0x0141 0x03f0 0x01f9 0x00ff 0x020c 0x041c 0x0130
0x0ce31af0  0x8c034dee 0xc0d55555 0x435edb6d 0xc23aaaaa
0x0ce31b00  0x43340000 0x8c050834 0x8c1294c8 0x42cc0000
0x0ce31b10  0x42600000 0x8c03362c 0x8c068ee4

;==============================================================================
            ;-- aav.0x0ce31b1c:
            ; UNKNOWN XREF from aav.0x0ce33fc8 (+0x8)
            0x0ce31b1c      9190           mov.w @(0x122,PC),r0
            0x0ce31b1e      02e3           mov 0x02,r3
            0x0ce31b20      e62f           mov.l r14,@-r15
            0x0ce31b22      436e           mov r4,r14
            0x0ce31b24      05e2           mov 0x05,r2
            0x0ce31b26      d62f           mov.l r13,@-r15
            0x0ce31b28      224f           sts.l pr,@-r15
            0x0ce31b2a      340e           mov.b r3,@(r0,r14)
            0x0ce31b2c      536d           mov r5,r13
            0x0ce31b2e      8990           mov.w @(0x112,PC),r0
            0x0ce31b30      d365           mov r13,r5
            0x0ce31b32      240e           mov.b r2,@(r0,r14)
            0x0ce31b34      8790           mov.w @(0x10E,PC),r0
            0x0ce31b36      d480           mov.b r0,@(0x4,r13)
            0x0ce31b38      b2b0           bsr aav.0x0ce31ca0
            0x0ce31b3a      e364           mov r14,r4
            0x0ce31b3c      44d2           mov.l @(0x110,PC),r2
            0x0ce31b3e      0b42           jsr @r2
            0x0ce31b40      e364           mov r14,r4
            0x0ce31b42      0e60           exts.b r0,r0
            0x0ce31b44      1140           cmp/pz r0
            0x0ce31b46      0289           bt 0x0ce31b4e
            0x0ce31b48      d365           mov r13,r5
            0x0ce31b4a      c6b0           bsr fcn.0ce31cda
            0x0ce31b4c      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce31b1c (+0x2a)
            0x0ce31b4e      d584           mov.b @(0x5,r13),r0
            0x0ce31b50      0820           tst r0,r0
            0x0ce31b52      0a89           bt 0x0ce31b6a
            0x0ce31b54      3fd3           mov.l @(0xFC,PC),r3
            0x0ce31b56      0b43           jsr @r3
            0x0ce31b58      e364           mov r14,r4
            0x0ce31b5a      0820           tst r0,r0
            0x0ce31b5c      0589           bt 0x0ce31b6a
            0x0ce31b5e      d584           mov.b @(0x5,r13),r0
            0x0ce31b60      ff70           add 0xFF,r0
            0x0ce31b62      d580           mov.b r0,@(0x5,r13)
            0x0ce31b64      ee85           mov.w @(0x1C,r14),r0
            0x0ce31b66      0170           add 0x01,r0
            0x0ce31b68      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREFS from aav.0x0ce31b1c (+0x36, +0x40)
            0x0ce31b6a      ee85           mov.w @(0x1C,r14),r0
            0x0ce31b6c      ff70           add 0xFF,r0
            0x0ce31b6e      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31b70      0f60           exts.w r0,r0
            0x0ce31b72      1140           cmp/pz r0
            0x0ce31b74      0689           bt 0x0ce31b84
            0x0ce31b76      e684           mov.b @(0x6,r14),r0
            0x0ce31b78      0170           add 0x01,r0
            0x0ce31b7a      e680           mov.b r0,@(0x6,r14)
            0x0ce31b7c      08e0           mov 0x08,r0
            0x0ce31b7e      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31b80      00e0           mov 0x00,r0
            0x0ce31b82      d180           mov.b r0,@(0x1,r13)
            ; CODE XREF from aav.0x0ce31b1c (+0x58)
            0x0ce31b84      264f           lds.l @r15+,pr
            0x0ce31b86      f66d           mov.l @r15+,r13
            0x0ce31b88      0b00           rts 
            0x0ce31b8a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31b8c:
            ; UNKNOWN XREF from aav.0x0ce33fc8 (+0xc)
            0x0ce31b8c      5990           mov.w @(0xB2,PC),r0
            0x0ce31b8e      02e3           mov 0x02,r3
            0x0ce31b90      e62f           mov.l r14,@-r15
            0x0ce31b92      436e           mov r4,r14
            0x0ce31b94      05e2           mov 0x05,r2
            0x0ce31b96      224f           sts.l pr,@-r15
            0x0ce31b98      340e           mov.b r3,@(r0,r14)
            0x0ce31b9a      5390           mov.w @(0xA6,PC),r0
            0x0ce31b9c      240e           mov.b r2,@(r0,r14)
            0x0ce31b9e      5290           mov.w @(0xA4,PC),r0
            0x0ce31ba0      5480           mov.b r0,@(0x4,r5)
            0x0ce31ba2      ee85           mov.w @(0x1C,r14),r0
            0x0ce31ba4      ff70           add 0xFF,r0
            0x0ce31ba6      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31ba8      0f60           exts.w r0,r0
            0x0ce31baa      1140           cmp/pz r0
            0x0ce31bac      2789           bt 0x0ce31bfe
            0x0ce31bae      4b90           mov.w @(0x96,PC),r0
            0x0ce31bb0      00e4           mov 0x00,r4
            0x0ce31bb2      440e           mov.b r4,@(r0,r14)
            0x0ce31bb4      ff70           add 0xFF,r0
            0x0ce31bb6      440e           mov.b r4,@(r0,r14)
            0x0ce31bb8      4790           mov.w @(0x8E,PC),r0
            0x0ce31bba      440e           mov.b r4,@(r0,r14)
            0x0ce31bbc      0170           add 0x01,r0
            0x0ce31bbe      440e           mov.b r4,@(r0,r14)
            0x0ce31bc0      ff70           add 0xFF,r0
            0x0ce31bc2      440e           mov.b r4,@(r0,r14)
            0x0ce31bc4      0170           add 0x01,r0
            0x0ce31bc6      440e           mov.b r4,@(r0,r14)
            0x0ce31bc8      e684           mov.b @(0x6,r14),r0
            0x0ce31bca      0170           add 0x01,r0
            0x0ce31bcc      e680           mov.b r0,@(0x6,r14)
            0x0ce31bce      4360           mov r4,r0
            0x0ce31bd0      0900           nop 
            0x0ce31bd2      5480           mov.b r0,@(0x4,r5)
            0x0ce31bd4      3a90           mov.w @(0x74,PC),r0
            0x0ce31bd6      ec00           mov.b @(r0,r14),r0
            0x0ce31bd8      0c60           extu.b r0,r0
            0x0ce31bda      0288           cmp/eq 0x02,r0
            0x0ce31bdc      018b           bf 0x0ce31be2
            0x0ce31bde      01a0           bra 0x0ce31be4
            0x0ce31be0      2ce3           mov 0x2C,r3
            ; CODE XREF from aav.0x0ce31b8c (+0x50)
            0x0ce31be2      1ae3           mov 0x1A,r3
            ; CODE XREF from aav.0x0ce31b8c (+0x52)
            0x0ce31be4      3390           mov.w @(0x66,PC),r0;anim
            0x0ce31be6      15e5           mov 0x15,r5
            0x0ce31be8      340e           mov.b r3,@(r0,r14)
            0x0ce31bea      1bd3           mov.l @(0x6C,PC),r3
            0x0ce31bec      ec06           mov.b @(r0,r14),r6
            0x0ce31bee      0b43           jsr @r3
            0x0ce31bf0      e364           mov r14,r4
            0x0ce31bf2      264f           lds.l @r15+,pr
            0x0ce31bf4      19d2           mov.l @(0x64,PC),r2
            0x0ce31bf6      00e5           mov 0x00,r5
            0x0ce31bf8      e364           mov r14,r4
            0x0ce31bfa      2b42           jmp @r2
            0x0ce31bfc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31b8c (+0x20)
            0x0ce31bfe      264f           lds.l @r15+,pr
            0x0ce31c00      0b00           rts 
            0x0ce31c02      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31c04:
            ; UNKNOWN XREF from aav.0x0ce33fc8 (+0x10)
            0x0ce31c04      e62f           mov.l r14,@-r15
            0x0ce31c06      224f           sts.l pr,@-r15
            0x0ce31c08      11d3           mov.l @(0x44,PC),r3
            0x0ce31c0a      0b43           jsr @r3
            0x0ce31c0c      436e           mov r4,r14
            0x0ce31c0e      0e60           exts.b r0,r0
            0x0ce31c10      1140           cmp/pz r0
            0x0ce31c12      2b89           bt 0x0ce31c6c
            0x0ce31c14      12d3           mov.l @(0x48,PC),r3
            0x0ce31c16      2be5           mov 0x2B,r5
            0x0ce31c18      0b43           jsr @r3
            0x0ce31c1a      e364           mov r14,r4
            0x0ce31c1c      0fd2           mov.l @(0x3C,PC),r2
            0x0ce31c1e      00e5           mov 0x00,r5
            0x0ce31c20      0b42           jsr @r2
            0x0ce31c22      e364           mov r14,r4
            0x0ce31c24      1290           mov.w @(0x24,PC),r0
            0x0ce31c26      ec00           mov.b @(r0,r14),r0
            0x0ce31c28      0c60           extu.b r0,r0
            0x0ce31c2a      0288           cmp/eq 0x02,r0
            0x0ce31c2c      048b           bf 0x0ce31c38
            0x0ce31c2e      264f           lds.l @r15+,pr
            0x0ce31c30      0cd2           mov.l @(0x30,PC),r2
            0x0ce31c32      e364           mov r14,r4
            0x0ce31c34      2b42           jmp @r2
            0x0ce31c36      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31c04 (+0x28)
            0x0ce31c38      264f           lds.l @r15+,pr
            0x0ce31c3a      0bd2           mov.l @(0x2C,PC),r2
            0x0ce31c3c      e364           mov r14,r4
            0x0ce31c3e      2b42           jmp @r2
            0x0ce31c40      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31c42 0x03f8 0x0328 0x00ff 0x03f9 0x0327 0x01f9 0x0158
0x0ce31c50  0x8c034dee 0x8c055d54 0x8c034e8c 0x8c035162
0x0ce31c60  0x8c042008 0x8c05176e 0x8c051648

;==============================================================================
            ; CODE XREF from aav.0x0ce31c04 (+0xe)
            0x0ce31c6c      264f           lds.l @r15+,pr
            0x0ce31c6e      0b00           rts 
            0x0ce31c70      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce31c72 46
|   fcn.0ce31c72 ();
|           ; CALL XREF from aav.0x0ce3194e (+0x176)
|           ; CODE XREF from fcn.0ce31cda (0xce31d24)
|           0x0ce31c72      7990           mov.w @(0xF2,PC),r0
|           0x0ce31c74      e62f           mov.l r14,@-r15
|           0x0ce31c76      436e           mov r4,r14
|           0x0ce31c78      ec00           mov.b @(r0,r14),r0
|           0x0ce31c7a      0c60           extu.b r0,r0
|           0x0ce31c7c      0288           cmp/eq 0x02,r0
|           0x0ce31c7e      048b           bf 0x0ce31c8a
|           0x0ce31c80      5062           mov.b @r5,r2
|           0x0ce31c82      7290           mov.w @(0xE4,PC),r0
|           0x0ce31c84      1c72           add 0x1C,r2
|           0x0ce31c86      04a0           bra 0x0ce31c92
|           0x0ce31c88      240e           mov.b r2,@(r0,r14)
|           ; CODE XREF from fcn.0ce31c72 (0xce31c7e)
|           0x0ce31c8a      5061           mov.b @r5,r1
|           0x0ce31c8c      6d90           mov.w @(0xDA,PC),r0
|           0x0ce31c8e      0a71           add 0x0A,r1
|           0x0ce31c90      140e           mov.b r1,@(r0,r14)
|           ; CODE XREF from fcn.0ce31c72 (0xce31c86)
|           0x0ce31c92      6a90           mov.w @(0xD4,PC),r0
|           0x0ce31c94      e364           mov r14,r4
|           0x0ce31c96      37d3           mov.l @(0xDC,PC),r3
|           0x0ce31c98      15e5           mov 0x15,r5
|           0x0ce31c9a      ec06           mov.b @(r0,r14),r6
|           0x0ce31c9c      2b43           jmp @r3
\           0x0ce31c9e      f66e           mov.l @r15+,r14
/ (fcn) aav.0x0ce31ca0 56
|   aav.0x0ce31ca0 ();
|           ; XREFS: CALL 0x0ce3173c  CALL 0x0ce31b38  CALL 0x0ce31f98  
|           ; XREFS: CALL 0x0ce3282c  UNKNOWN 0x0ce33870  UNKNOWN 0x0ce33afc  
|           ; XREFS: UNKNOWN 0x0ce33c84  
|           0x0ce31ca0      e62f           mov.l r14,@-r15
|           0x0ce31ca2      5784           mov.b @(0x7,r5),r0
|           0x0ce31ca4      ff70           add 0xFF,r0
|           0x0ce31ca6      5780           mov.b r0,@(0x7,r5)
|           0x0ce31ca8      0e60           exts.b r0,r0
|           0x0ce31caa      1140           cmp/pz r0
|           0x0ce31cac      1389           bt 0x0ce31cd6
|           0x0ce31cae      01e0           mov 0x01,r0
|           0x0ce31cb0      5780           mov.b r0,@(0x7,r5)
|           0x0ce31cb2      25e0           mov 0x25,r0
|           0x0ce31cb4      4c0e           mov.b @(r0,r4),r14
|           0x0ce31cb6      5684           mov.b @(0x6,r5),r0
|           0x0ce31cb8      ec6e           extu.b r14,r14
|           0x0ce31cba      01ca           xor 0x01,r0
|           0x0ce31cbc      5680           mov.b r0,@(0x6,r5)
|           0x0ce31cbe      0e60           exts.b r0,r0
|           0x0ce31cc0      004e           shll r14
|           0x0ce31cc2      0820           tst r0,r0
|           0x0ce31cc4      018d           bt.s 0x0ce31cca
|           0x0ce31cc6      507e           add 0x50,r14
            0x0ce31cc8      017e           add 0x01,r14
|           ; CODE XREF from aav.0x0ce31ca0 (0xce31cc4)
|           0x0ce31cca      2bd2           mov.l @(0xAC,PC),r2
|           0x0ce31ccc      00e5           mov 0x00,r5
|           0x0ce31cce      01e7           mov 0x01,r7
|           0x0ce31cd0      e366           mov r14,r6
|           0x0ce31cd2      2b42           jmp @r2
|           0x0ce31cd4      f66e           mov.l @r15+,r14
|           ; CODE XREF from aav.0x0ce31ca0 (0xce31cac)
|           0x0ce31cd6      0b00           rts 
\           0x0ce31cd8      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce31cda 78
|   fcn.0ce31cda ();
|           ; CALL XREF from aav.0x0ce31b1c (+0x2e)
|           0x0ce31cda      4790           mov.w @(0x8E,PC),r0
|           0x0ce31cdc      f6e2           mov 0xF6,r2
|           0x0ce31cde      4693           mov.w @(0x8C,PC),r3
|           0x0ce31ce0      e62f           mov.l r14,@-r15
|           0x0ce31ce2      4d06           mov.w @(r0,r4),r6
|           0x0ce31ce4      25d0           mov.l @(0x94,PC),r0
|           0x0ce31ce6      6d66           extu.w r6,r6
|           0x0ce31ce8      3926           and r3,r6
|           0x0ce31cea      2c46           shad r2,r6
|           0x0ce31cec      6e66           exts.b r6,r6
|           0x0ce31cee      6c06           mov.b @(r0,r6),r6
|           0x0ce31cf0      6e6e           exts.b r6,r14
|           0x0ce31cf2      114e           cmp/pz r14
|           0x0ce31cf4      168b           bf 0x0ce31d24
|           0x0ce31cf6      5062           mov.b @r5,r2
|           0x0ce31cf8      2c62           extu.b r2,r2
|           0x0ce31cfa      203e           cmp/eq r2,r14
|           0x0ce31cfc      1289           bt 0x0ce31d24
|           0x0ce31cfe      5063           mov.b @r5,r3
|           0x0ce31d00      3c63           extu.b r3,r3
|           0x0ce31d02      e360           mov r14,r0
|           0x0ce31d04      0900           nop 
|           0x0ce31d06      3830           sub r3,r0
|           0x0ce31d08      08e3           mov 0x08,r3
|           0x0ce31d0a      0fc9           and 0x0F,r0
|           0x0ce31d0c      3330           cmp/ge r3,r0
|           0x0ce31d0e      0389           bt 0x0ce31d18
|           0x0ce31d10      5061           mov.b @r5,r1
|           0x0ce31d12      0171           add 0x01,r1
|           0x0ce31d14      03a0           bra 0x0ce31d1e
|           0x0ce31d16      1025           mov.b r1,@r5
|           ; CODE XREF from fcn.0ce31cda (0xce31d0e)
|           0x0ce31d18      5060           mov.b @r5,r0
|           0x0ce31d1a      ff70           add 0xFF,r0
|           0x0ce31d1c      0025           mov.b r0,@r5
|           ; CODE XREF from fcn.0ce31cda (0xce31d14)
|           0x0ce31d1e      5060           mov.b @r5,r0
|           0x0ce31d20      0fc9           and 0x0F,r0
|           0x0ce31d22      0025           mov.b r0,@r5
|           ; CODE XREFS from fcn.0ce31cda (0xce31cf4, 0xce31cfc)
|           0x0ce31d24      a5af           bra fcn.0ce31c72
\           0x0ce31d26      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31d28:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x8)
            0x0ce31d28      1e90           mov.w @(0x3C,PC),r0
            0x0ce31d2a      e62f           mov.l r14,@-r15
            0x0ce31d2c      436e           mov r4,r14
            0x0ce31d2e      224f           sts.l pr,@-r15
            0x0ce31d30      ec00           mov.b @(r0,r14),r0
            0x0ce31d32      0c60           extu.b r0,r0
            0x0ce31d34      0288           cmp/eq 0x02,r0
            0x0ce31d36      0c8b           bf 0x0ce31d52
            0x0ce31d38      11d2           mov.l @(0x44,PC),r2
            0x0ce31d3a      0b42           jsr @r2
            0x0ce31d3c      e364           mov r14,r4
            0x0ce31d3e      1790           mov.w @(0x2E,PC),r0
            0x0ce31d40      e6f3           fmov @(r0,r14),fr3
            0x0ce31d42      38e0           mov 0x38,r0
            0x0ce31d44      e6f2           fmov @(r0,r14),fr2
            0x0ce31d46      25f3           fcmp/gt fr2,fr3
            0x0ce31d48      038b           bf 0x0ce31d52
            0x0ce31d4a      1190           mov.w @(0x22,PC),r0
            0x0ce31d4c      e6f3           fmov @(r0,r14),fr3
            0x0ce31d4e      38e0           mov 0x38,r0
            0x0ce31d50      37fe           fmov fr3,@(r0,r14)
            ; CODE XREFS from aav.0x0ce31d28 (+0xe, +0x20)
            0x0ce31d52      e684           mov.b @(0x6,r14),r0
            0x0ce31d54      e364           mov r14,r4
            0x0ce31d56      0bd1           mov.l @(0x2C,PC),r1
            0x0ce31d58      0c60           extu.b r0,r0
            0x0ce31d5a      0a95           mov.w @(0x14,PC),r5
            0x0ce31d5c      264f           lds.l @r15+,pr
            0x0ce31d5e      0840           shll2 r0
            0x0ce31d60      1e03           mov.l @(r0,r1),r3
            0x0ce31d62      ec35           add r14,r5
            0x0ce31d64      2b43           jmp @r3
            0x0ce31d66      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31d68 0x01f9 0x0158 0x034a 0x3c00 0x041c 0x02a4
0x0ce31d74  0x8c034e8c 0x8c03544c 0x0ce33fdc 0x8c04fea8  .N..LT...?......       
0x0ce31d84  0x0ce33fec

;==============================================================================
            ;-- aav.0x0ce31d88:
            ; UNKNOWN XREF from aav.0x0ce33fec ()
            0x0ce31d88      7890           mov.w @(0xF0,PC),r0
            0x0ce31d8a      e62f           mov.l r14,@-r15
            0x0ce31d8c      436e           mov r4,r14
            0x0ce31d8e      d62f           mov.l r13,@-r15
            0x0ce31d90      224f           sts.l pr,@-r15
            0x0ce31d92      ec00           mov.b @(r0,r14),r0
            0x0ce31d94      0c60           extu.b r0,r0
            0x0ce31d96      0688           cmp/eq 0x06,r0
            0x0ce31d98      058b           bf 0x0ce31da6
            0x0ce31d9a      7190           mov.w @(0xE2,PC),r0
            0x0ce31d9c      10e3           mov 0x10,r3
            0x0ce31d9e      6e92           mov.w @(0xDC,PC),r2
            0x0ce31da0      240e           mov.b r2,@(r0,r14)
            0x0ce31da2      0170           add 0x01,r0
            0x0ce31da4      340e           mov.b r3,@(r0,r14)
            ; CODE XREF from aav.0x0ce31d88 (+0x10)
            0x0ce31da6      e684           mov.b @(0x6,r14),r0
            0x0ce31da8      00e5           mov 0x00,r5
            0x0ce31daa      38d3           mov.l @(0xE0,PC),r3
            0x0ce31dac      0170           add 0x01,r0
            0x0ce31dae      e680           mov.b r0,@(0x6,r14)
            0x0ce31db0      0b43           jsr @r3
            0x0ce31db2      e364           mov r14,r4
            0x0ce31db4      36d2           mov.l @(0xD8,PC),r2
            0x0ce31db6      0b42           jsr @r2
            0x0ce31db8      e364           mov r14,r4
            0x0ce31dba      6290           mov.w @(0xC4,PC),r0
            0x0ce31dbc      ec00           mov.b @(r0,r14),r0
            0x0ce31dbe      0c60           extu.b r0,r0
            0x0ce31dc0      0288           cmp/eq 0x02,r0
            0x0ce31dc2      1a8f           bf.s 0x0ce31dfa
            0x0ce31dc4      00ed           mov 0x00,r13
            0x0ce31dc6      33d1           mov.l @(0xCC,PC),r1
            0x0ce31dc8      5ce0           mov 0x5C,r0
            0x0ce31dca      e6f2           fmov @(r0,r14),fr2
            0x0ce31dcc      5a41           lds r1,fpul
            0x0ce31dce      32d1           mov.l @(0xC8,PC),r1
            0x0ce31dd0      0df3           fsts fpul,fr3
            0x0ce31dd2      33f2           fdiv fr3,fr2
            0x0ce31dd4      5a41           lds r1,fpul
            0x0ce31dd6      31d1           mov.l @(0xC4,PC),r1
            0x0ce31dd8      8df3           fldi0 fr3
            0x0ce31dda      27fe           fmov fr2,@(r0,r14)
            0x0ce31ddc      60e0           mov 0x60,r0
            0x0ce31dde      e6f1           fmov @(r0,r14),fr1
            0x0ce31de0      0df2           fsts fpul,fr2
            0x0ce31de2      23f1           fdiv fr2,fr1
            0x0ce31de4      5a41           lds r1,fpul
            0x0ce31de6      17fe           fmov fr1,@(r0,r14)
            0x0ce31de8      6ce0           mov 0x6C,r0
            0x0ce31dea      e6f0           fmov @(r0,r14),fr0
            0x0ce31dec      0df1           fsts fpul,fr1
            0x0ce31dee      13f0           fdiv fr1,fr0
            0x0ce31df0      07fe           fmov fr0,@(r0,r14)
            0x0ce31df2      68e0           mov 0x68,r0
            0x0ce31df4      37fe           fmov fr3,@(r0,r14)
            0x0ce31df6      14a0           bra 0x0ce31e22
            0x0ce31df8      09e6           mov 0x09,r6
            ; CODE XREF from aav.0x0ce31d88 (+0x3a)
            0x0ce31dfa      29d2           mov.l @(0xA4,PC),r2
            0x0ce31dfc      0b42           jsr @r2
            0x0ce31dfe      e364           mov r14,r4
            0x0ce31e00      28d3           mov.l @(0xA0,PC),r3
            0x0ce31e02      0b43           jsr @r3
            0x0ce31e04      e364           mov r14,r4
            0x0ce31e06      3c90           mov.w @(0x78,PC),r0
            0x0ce31e08      d366           mov r13,r6
            0x0ce31e0a      d40e           mov.b r13,@(r0,r14)
            0x0ce31e0c      5c70           add 0x5C,r0
            0x0ce31e0e      ec04           mov.b @(r0,r14),r4
            0x0ce31e10      4c60           extu.b r4,r0
            0x0ce31e12      0588           cmp/eq 0x05,r0
            0x0ce31e14      048d           bt.s 0x0ce31e20
            0x0ce31e16      0364           mov r0,r4
            0x0ce31e18      4360           mov r4,r0
            0x0ce31e1a      0900           nop 
            0x0ce31e1c      0488           cmp/eq 0x04,r0
            0x0ce31e1e      008b           bf 0x0ce31e22
            ; CODE XREF from aav.0x0ce31d88 (+0x8c)
            0x0ce31e20      08e6           mov 0x08,r6
            ; CODE XREFS from aav.0x0ce31d88 (+0x6e, +0x96)
            0x0ce31e22      2f90           mov.w @(0x5E,PC),r0
            0x0ce31e24      38e3           mov 0x38,r3
            0x0ce31e26      16e5           mov 0x16,r5
            0x0ce31e28      e364           mov r14,r4
            0x0ce31e2a      340e           mov.b r3,@(r0,r14)
            0x0ce31e2c      0b70           add 0x0B,r0
            0x0ce31e2e      d50e           mov.w r13,@(r0,r14)
            0x0ce31e30      f270           add 0xF2,r0
            0x0ce31e32      d40e           mov.b r13,@(r0,r14)
            0x0ce31e34      2670           add 0x26,r0
            0x0ce31e36      1cd3           mov.l @(0x70,PC),r3
            0x0ce31e38      d60e           mov.l r13,@(r0,r14)
            0x0ce31e3a      e284           mov.b @(0x2,r14),r0
            0x0ce31e3c      3262           mov.l @r3,r2
            0x0ce31e3e      0c60           extu.b r0,r0
            0x0ce31e40      0040           shll r0
            0x0ce31e42      7c72           add 0x7C,r2
            0x0ce31e44      2d01           mov.w @(r0,r2),r1
            0x0ce31e46      0171           add 0x01,r1
            0x0ce31e48      1502           mov.w r1,@(r0,r2)
            0x0ce31e4a      264f           lds.l @r15+,pr
            0x0ce31e4c      17d2           mov.l @(0x5C,PC),r2
            0x0ce31e4e      f66d           mov.l @r15+,r13
            0x0ce31e50      2b42           jmp @r2
            0x0ce31e52      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce31e54:
            ; UNKNOWN XREF from aav.0x0ce33fec (+0x4)
            0x0ce31e54      e62f           mov.l r14,@-r15
            0x0ce31e56      d62f           mov.l r13,@-r15
            0x0ce31e58      c62f           mov.l r12,@-r15
            0x0ce31e5a      224f           sts.l pr,@-r15
            0x0ce31e5c      f47f           add 0xF4,r15
            0x0ce31e5e      1290           mov.w @(0x24,PC),r0
            0x0ce31e60      436e           mov r4,r14
            0x0ce31e62      02e3           mov 0x02,r3
            0x0ce31e64      340e           mov.b r3,@(r0,r14)
            0x0ce31e66      05e2           mov 0x05,r2
            0x0ce31e68      0e90           mov.w @(0x1C,PC),r0
            0x0ce31e6a      240e           mov.b r2,@(r0,r14)
            0x0ce31e6c      0690           mov.w @(0xC,PC),r0
            0x0ce31e6e      ec00           mov.b @(r0,r14),r0
            0x0ce31e70      0c60           extu.b r0,r0
            0x0ce31e72      0688           cmp/eq 0x06,r0
            0x0ce31e74      1c8f           bf.s 0x0ce31eb0
            0x0ce31e76      536c           mov r5,r12
            0x0ce31e78      1ba0           bra 0x0ce31eb2
            0x0ce31e7a      02e3           mov 0x02,r3

;##############################################################################
0x0ce31e7c 0x0255 0x00ff 0x03f0 0x01f9 0x01a1 0x03f8 0x0328 0x0000
0x0ce31e8c  0x8c035162 0x8c05218a 0x41800000 0x41000000  bQ...!.....A...A       
0x0ce31e9c  0x42800000 0x8c052b4c 0x8c05115a 0x8c2896b0  ...BL+..Z.....(.       
0x0ce31eac  0x8c034e8c

;------------------------------------------------------------------------------
            ; CODE XREF from aav.0x0ce31e54 (+0x20)
            0x0ce31eb0      00e3           mov 0x00,r3
            ; CODE XREF from aav.0x0ce31e54 (+0x24)
            0x0ce31eb2      4890           mov.w @(0x90,PC),r0
            0x0ce31eb4      00ed           mov 0x00,r13
            0x0ce31eb6      340e           mov.b r3,@(r0,r14)
            0x0ce31eb8      25d3           mov.l @(0x94,PC),r3
            0x0ce31eba      0b43           jsr @r3
            0x0ce31ebc      e364           mov r14,r4
            0x0ce31ebe      0e60           exts.b r0,r0
            0x0ce31ec0      1140           cmp/pz r0
            0x0ce31ec2      248b           bf 0x0ce31f0e
            0x0ce31ec4      4090           mov.w @(0x80,PC),r0
            0x0ce31ec6      ec03           mov.b @(r0,r14),r3
            0x0ce31ec8      3823           tst r3,r3
            0x0ce31eca      3689           bt 0x0ce31f3a
            0x0ce31ecc      d40e           mov.b r13,@(r0,r14)
            0x0ce31ece      3c90           mov.w @(0x78,PC),r0
            0x0ce31ed0      d40e           mov.b r13,@(r0,r14)
            0x0ce31ed2      0170           add 0x01,r0
            0x0ce31ed4      d40e           mov.b r13,@(r0,r14)
            0x0ce31ed6      3990           mov.w @(0x72,PC),r0
            0x0ce31ed8      ec00           mov.b @(r0,r14),r0
            0x0ce31eda      0c60           extu.b r0,r0
            0x0ce31edc      0288           cmp/eq 0x02,r0
            0x0ce31ede      058b           bf 0x0ce31eec
            0x0ce31ee0      1cc7           mova @(0x70,PC),r0
            0x0ce31ee2      08f3           fmov @r0,fr3
            0x0ce31ee4      1cc7           mova @(0x70,PC),r0
            0x0ce31ee6      3aff           fmov fr3,@r15
            0x0ce31ee8      05a0           bra 0x0ce31ef6
            0x0ce31eea      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31e54 (+0x8a)
            0x0ce31eec      1bc7           mova @(0x6C,PC),r0
            0x0ce31eee      08f3           fmov @r0,fr3
            0x0ce31ef0      1bc7           mova @(0x6C,PC),r0
            0x0ce31ef2      3aff           fmov fr3,@r15
            0x0ce31ef4      08f3           fmov @r0,fr3
            ; CODE XREF from aav.0x0ce31e54 (+0x94)
            0x0ce31ef6      04e0           mov 0x04,r0
            0x0ce31ef8      1ad3           mov.l @(0x68,PC),r3
            0x0ce31efa      37ff           fmov fr3,@(r0,r15)
            0x0ce31efc      08e0           mov 0x08,r0
            0x0ce31efe      8df3           fldi0 fr3
            0x0ce31f00      f365           mov r15,r5
            0x0ce31f02      37ff           fmov fr3,@(r0,r15)
            0x0ce31f04      01e6           mov 0x01,r6
            0x0ce31f06      0b43           jsr @r3
            0x0ce31f08      e364           mov r14,r4
            0x0ce31f0a      16a0           bra 0x0ce31f3a
            0x0ce31f0c      0900           nop 
            ; CODE XREF from aav.0x0ce31e54 (+0x6e)
            0x0ce31f0e      e684           mov.b @(0x6,r14),r0
            0x0ce31f10      0170           add 0x01,r0
            0x0ce31f12      e680           mov.b r0,@(0x6,r14)
            0x0ce31f14      d360           mov r13,r0
            0x0ce31f16      0900           nop 
            0x0ce31f18      13d3           mov.l @(0x4C,PC),r3
            0x0ce31f1a      00e5           mov 0x00,r5
            0x0ce31f1c      e780           mov.b r0,@(0x7,r14)
            0x0ce31f1e      c180           mov.b r0,@(0x1,r12)
            0x0ce31f20      0b43           jsr @r3
            0x0ce31f22      e364           mov r14,r4
            0x0ce31f24      d360           mov r13,r0
            0x0ce31f26      0900           nop 
            0x0ce31f28      c480           mov.b r0,@(0x4,r12)
            0x0ce31f2a      3ce0           mov 0x3C,r0
            0x0ce31f2c      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31f2e      30e0           mov 0x30,r0
            0x0ce31f30      0ed3           mov.l @(0x38,PC),r3
            0x0ce31f32      48e5           mov 0x48,r5
            0x0ce31f34      c580           mov.b r0,@(0x5,r12)
            0x0ce31f36      0b43           jsr @r3
            0x0ce31f38      e364           mov r14,r4
            ; CODE XREFS from aav.0x0ce31e54 (+0x76, +0xb6)
            0x0ce31f3a      0c7f           add 0x0C,r15
            0x0ce31f3c      264f           lds.l @r15+,pr
            0x0ce31f3e      f66c           mov.l @r15+,r12
            0x0ce31f40      f66d           mov.l @r15+,r13
            0x0ce31f42      0b00           rts 
            0x0ce31f44      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31f46 0x03f1 0x0141 0x03f0 0x01f9 0x0000 
0x0ce31f50  0x8c034dee 0xc0d55555 0x435edb6d 0xc23aaaaa
0x0ce31f60  0x43340000 0x8c050834 0x8c0699dc 0x8c04223a

;==============================================================================
            ;-- aav.0x0ce31f70:
            ; UNKNOWN XREF from aav.0x0ce33fec (+0x8)
            0x0ce31f70      7c90           mov.w @(0xF8,PC),r0
            0x0ce31f72      02e3           mov 0x02,r3
            0x0ce31f74      e62f           mov.l r14,@-r15
            0x0ce31f76      436e           mov r4,r14
            0x0ce31f78      d62f           mov.l r13,@-r15
            0x0ce31f7a      05e2           mov 0x05,r2
            0x0ce31f7c      c62f           mov.l r12,@-r15
            0x0ce31f7e      536c           mov r5,r12
            0x0ce31f80      224f           sts.l pr,@-r15
            0x0ce31f82      340e           mov.b r3,@(r0,r14)
            0x0ce31f84      7390           mov.w @(0xE6,PC),r0
            0x0ce31f86      3dd3           mov.l @(0xF4,PC),r3
            0x0ce31f88      240e           mov.b r2,@(r0,r14)
            0x0ce31f8a      7190           mov.w @(0xE2,PC),r0
            0x0ce31f8c      0b43           jsr @r3
            0x0ce31f8e      c480           mov.b r0,@(0x4,r12)
            0x0ce31f90      3bd2           mov.l @(0xEC,PC),r2
            0x0ce31f92      0b42           jsr @r2
            0x0ce31f94      e364           mov r14,r4
            0x0ce31f96      c365           mov r12,r5
            0x0ce31f98      82be           bsr aav.0x0ce31ca0
            0x0ce31f9a      e364           mov r14,r4
            0x0ce31f9c      c584           mov.b @(0x5,r12),r0
            0x0ce31f9e      0820           tst r0,r0
            0x0ce31fa0      0a89           bt 0x0ce31fb8
            0x0ce31fa2      38d3           mov.l @(0xE0,PC),r3
            0x0ce31fa4      0b43           jsr @r3
            0x0ce31fa6      e364           mov r14,r4
            0x0ce31fa8      0820           tst r0,r0
            0x0ce31faa      0589           bt 0x0ce31fb8
            0x0ce31fac      c584           mov.b @(0x5,r12),r0
            0x0ce31fae      ff70           add 0xFF,r0
            0x0ce31fb0      c580           mov.b r0,@(0x5,r12)
            0x0ce31fb2      ee85           mov.w @(0x1C,r14),r0
            0x0ce31fb4      0170           add 0x01,r0
            0x0ce31fb6      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREFS from aav.0x0ce31f70 (+0x30, +0x3a)
            0x0ce31fb8      ee85           mov.w @(0x1C,r14),r0
            0x0ce31fba      ff70           add 0xFF,r0
            0x0ce31fbc      ee81           mov.w r0,@(0x1C,r14)
            0x0ce31fbe      0f60           exts.w r0,r0
            0x0ce31fc0      1140           cmp/pz r0
            0x0ce31fc2      2b89           bt 0x0ce3201c
            0x0ce31fc4      e684           mov.b @(0x6,r14),r0
            0x0ce31fc6      00ed           mov 0x00,r13
            0x0ce31fc8      01e3           mov 0x01,r3
            0x0ce31fca      0170           add 0x01,r0
            0x0ce31fcc      e680           mov.b r0,@(0x6,r14)
            0x0ce31fce      5090           mov.w @(0xA0,PC),r0
            0x0ce31fd0      d40e           mov.b r13,@(r0,r14)
            0x0ce31fd2      ff70           add 0xFF,r0
            0x0ce31fd4      d40e           mov.b r13,@(r0,r14)
            0x0ce31fd6      4d90           mov.w @(0x9A,PC),r0
            0x0ce31fd8      d40e           mov.b r13,@(r0,r14)
            0x0ce31fda      0170           add 0x01,r0
            0x0ce31fdc      d40e           mov.b r13,@(r0,r14)
            0x0ce31fde      ff70           add 0xFF,r0
            0x0ce31fe0      d40e           mov.b r13,@(r0,r14)
            0x0ce31fe2      0170           add 0x01,r0
            0x0ce31fe4      d40e           mov.b r13,@(r0,r14)
            0x0ce31fe6      4690           mov.w @(0x8C,PC),r0
            0x0ce31fe8      340e           mov.b r3,@(r0,r14)
            0x0ce31fea      4590           mov.w @(0x8A,PC),r0
            0x0ce31fec      ec00           mov.b @(r0,r14),r0
            0x0ce31fee      0c60           extu.b r0,r0
            0x0ce31ff0      0288           cmp/eq 0x02,r0
            0x0ce31ff2      028b           bf 0x0ce31ffa
            0x0ce31ff4      3f90           mov.w @(0x7E,PC),r0
            0x0ce31ff6      0ae2           mov 0x0A,r2
            0x0ce31ff8      240e           mov.b r2,@(r0,r14)
            ; CODE XREF from aav.0x0ce31f70 (+0x82)
            0x0ce31ffa      3c90           mov.w @(0x78,PC),r0
            0x0ce31ffc      16e5           mov 0x16,r5
            0x0ce31ffe      22d3           mov.l @(0x88,PC),r3
            0x0ce32000      ec06           mov.b @(r0,r14),r6
            0x0ce32002      0b43           jsr @r3
            0x0ce32004      e364           mov r14,r4
            0x0ce32006      d360           mov r13,r0
            0x0ce32008      0900           nop 
            0x0ce3200a      c480           mov.b r0,@(0x4,r12)
            0x0ce3200c      00e5           mov 0x00,r5
            0x0ce3200e      264f           lds.l @r15+,pr
            0x0ce32010      1ed3           mov.l @(0x78,PC),r3
            0x0ce32012      e364           mov r14,r4
            0x0ce32014      f66c           mov.l @r15+,r12
            0x0ce32016      f66d           mov.l @r15+,r13
            0x0ce32018      2b43           jmp @r3
            0x0ce3201a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce31f70 (+0x52)
            0x0ce3201c      264f           lds.l @r15+,pr
            0x0ce3201e      f66c           mov.l @r15+,r12
            0x0ce32020      f66d           mov.l @r15+,r13
            0x0ce32022      0b00           rts 
            0x0ce32024      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32026:
            ; UNKNOWN XREF from aav.0x0ce33fec (+0xc)
            0x0ce32026      e62f           mov.l r14,@-r15
            0x0ce32028      224f           sts.l pr,@-r15
            0x0ce3202a      15d3           mov.l @(0x54,PC),r3
            0x0ce3202c      0b43           jsr @r3
            0x0ce3202e      436e           mov r4,r14
            0x0ce32030      0e60           exts.b r0,r0
            0x0ce32032      1140           cmp/pz r0
            0x0ce32034      0e89           bt 0x0ce32054
            0x0ce32036      1f90           mov.w @(0x3E,PC),r0
            0x0ce32038      ec00           mov.b @(r0,r14),r0
            0x0ce3203a      0c60           extu.b r0,r0
            0x0ce3203c      0288           cmp/eq 0x02,r0
            0x0ce3203e      048b           bf 0x0ce3204a
            0x0ce32040      264f           lds.l @r15+,pr
            0x0ce32042      13d2           mov.l @(0x4C,PC),r2
            0x0ce32044      e364           mov r14,r4
            0x0ce32046      2b42           jmp @r2
            0x0ce32048      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32026 (+0x18)
            0x0ce3204a      264f           lds.l @r15+,pr
            0x0ce3204c      11d2           mov.l @(0x44,PC),r2
            0x0ce3204e      e364           mov r14,r4
            0x0ce32050      2b42           jmp @r2
            0x0ce32052      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32026 (+0xe)
            0x0ce32054      264f           lds.l @r15+,pr
            0x0ce32056      0b00           rts 
            0x0ce32058      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3205a:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0xc)
            0x0ce3205a      4363           mov r4,r3
            0x0ce3205c      0ed1           mov.l @(0x38,PC),r1
            0x0ce3205e      462f           mov.l r4,@-r15
            0x0ce32060      3684           mov.b @(0x6,r3),r0
            0x0ce32062      0c60           extu.b r0,r0
            0x0ce32064      0840           shll2 r0
            0x0ce32066      1e03           mov.l @(r0,r1),r3
            0x0ce32068      2b43           jmp @r3
            0x0ce3206a      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3206c 0x03f8 0x0328 0x00ff 0x03f9 0x0327 0x0158 0x01f9 0x0000
0x0ce3207c  0x8c03319e 0x8c034dee 0x8c055d54 0x8c034e8c
0x0ce3208c  0x8c035162 0x8c05176e 0x8c051648 0x0ce33ffc

;==============================================================================
|           ;-- aav.0x0ce3209c:
|           ; UNKNOWN XREF from aav.0x0ce33ffc ()
|           0x0ce3209c      e62f           mov.l r14,@-r15
|           0x0ce3209e      d62f           mov.l r13,@-r15
|           0x0ce320a0      224f           sts.l pr,@-r15
|           0x0ce320a2      f87f           add 0xF8,r15
|           0x0ce320a4      436e           mov r4,r14
|           0x0ce320a6      e684           mov.b @(0x6,r14),r0
|           0x0ce320a8      40d3           mov.l @(0x100,PC),r3
|           0x0ce320aa      00ed           mov 0x00,r13
|           0x0ce320ac      0170           add 0x01,r0
|           0x0ce320ae      d365           mov r13,r5
|           0x0ce320b0      e680           mov.b r0,@(0x6,r14)
|           0x0ce320b2      0b43           jsr @r3
|           0x0ce320b4      e364           mov r14,r4
|           0x0ce320b6      3ed2           mov.l @(0xF8,PC),r2
|           0x0ce320b8      0b42           jsr @r2
|           0x0ce320ba      e364           mov r14,r4
|           0x0ce320bc      3dd3           mov.l @(0xF4,PC),r3
|           0x0ce320be      0b43           jsr @r3
|           0x0ce320c0      e364           mov r14,r4
|           0x0ce320c2      3dd2           mov.l @(0xF4,PC),r2
|           0x0ce320c4      0ae5           mov 0x0A,r5
|           0x0ce320c6      0b42           jsr @r2
|           0x0ce320c8      e364           mov r14,r4
|           0x0ce320ca      6a90           mov.w @(0xD4,PC),r0
|           0x0ce320cc      f366           mov r15,r6
|           0x0ce320ce      3bd5           mov.l @(0xEC,PC),r5
|           0x0ce320d0      6361           mov r6,r1
|           0x0ce320d2      ec00           mov.b @(r0,r14),r0
|           0x0ce320d4      1364           mov r1,r4
|           0x0ce320d6      0474           add 0x04,r4
|           0x0ce320d8      0c60           extu.b r0,r0
|           0x0ce320da      0040           shll r0
|           0x0ce320dc      0170           add 0x01,r0
|           0x0ce320de      ee81           mov.w r0,@(0x1C,r14)
|           0x0ce320e0      6090           mov.w @(0xC0,PC),r0
|           0x0ce320e2      d50e           mov.w r13,@(r0,r14)
|           0x0ce320e4      5d90           mov.w @(0xBA,PC),r0
|           0x0ce320e6      ec03           mov.b @(r0,r14),r3
|           0x0ce320e8      35c7           mova @(0xD4,PC),r0
|           0x0ce320ea      3c63           extu.b r3,r3
|           0x0ce320ec      0843           shll2 r3
|           0x0ce320ee      0043           shll r3
|           0x0ce320f0      5c33           add r5,r3
|           0x0ce320f2      38f3           fmov @r3,fr3
|           0x0ce320f4      3af1           fmov fr3,@r1
|           0x0ce320f6      08f2           fmov @r0,fr2
|           0x0ce320f8      5390           mov.w @(0xA6,PC),r0
|           0x0ce320fa      2af4           fmov fr2,@r4
|           0x0ce320fc      ec03           mov.b @(r0,r14),r3
|           ;-- fcn.0ce320fe:
|           ; CALL XREF from fcn.0ce320fe (+0xc8)
|           0x0ce320fe      04e0           mov 0x04,r0
|           0x0ce32100      3c63           extu.b r3,r3
|           0x0ce32102      0843           shll2 r3
|           0x0ce32104      0043           shll r3
|           0x0ce32106      3c35           add r3,r5
|           0x0ce32108      56f3           fmov @(r0,r5),fr3
|           0x0ce3210a      60e0           mov 0x60,r0
|           0x0ce3210c      37fe           fmov fr3,@(r0,r14)
|           0x0ce3210e      2dc7           mova @(0xB4,PC),r0
|           0x0ce32110      08f3           fmov @r0,fr3
|           0x0ce32112      6ce0           mov 0x6C,r0
|           0x0ce32114      37fe           fmov fr3,@(r0,r14)
|           0x0ce32116      4690           mov.w @(0x8C,PC),r0
|           0x0ce32118      ec03           mov.b @(r0,r14),r3
|           0x0ce3211a      3823           tst r3,r3
|           0x0ce3211c      0d8b           bf 0x0ce3213a
|           0x0ce3211e      5ce0           mov 0x5C,r0
|           0x0ce32120      18f3           fmov @r1,fr3
|           0x0ce32122      e6f2           fmov @(r0,r14),fr2
|           0x0ce32124      31f2           fsub fr3,fr2
|           0x0ce32126      8df3           fldi0 fr3
|           0x0ce32128      27fe           fmov fr2,@(r0,r14)
|           0x0ce3212a      68e0           mov 0x68,r0
|           0x0ce3212c      e6f2           fmov @(r0,r14),fr2
|           0x0ce3212e      25f3           fcmp/gt fr2,fr3
|           0x0ce32130      1289           bt 0x0ce32158
|           0x0ce32132      e6f1           fmov @(r0,r14),fr1
|           0x0ce32134      48f2           fmov @r4,fr2
|           0x0ce32136      0da0           bra 0x0ce32154
|           0x0ce32138      21f1           fsub fr2,fr1
|           ; CODE XREF from fcn.0ce32070 (0xce3211c)
|           0x0ce3213a      5ce0           mov 0x5C,r0
|           0x0ce3213c      18f3           fmov @r1,fr3
|           0x0ce3213e      e6f2           fmov @(r0,r14),fr2
|           0x0ce32140      30f2           fadd fr3,fr2
|           0x0ce32142      8df3           fldi0 fr3
|           0x0ce32144      27fe           fmov fr2,@(r0,r14)
|           0x0ce32146      68e0           mov 0x68,r0
|           0x0ce32148      e6f2           fmov @(r0,r14),fr2
|           0x0ce3214a      25f3           fcmp/gt fr2,fr3
|           0x0ce3214c      048b           bf 0x0ce32158
|           0x0ce3214e      e6f1           fmov @(r0,r14),fr1
|           0x0ce32150      48f2           fmov @r4,fr2
|           0x0ce32152      20f1           fadd fr2,fr1
|           ; CODE XREF from fcn.0ce32070 (0xce32136)
|           0x0ce32154      03a0           bra 0x0ce3215e
|           0x0ce32156      17fe           fmov fr1,@(r0,r14)
|           ; CODE XREFS from fcn.0ce32070 (0xce32130, 0xce3214c)
|           0x0ce32158      48f3           fmov @r4,fr3
|           0x0ce3215a      68e0           mov 0x68,r0
|           0x0ce3215c      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce32070 (0xce32154)
|           0x0ce3215e      2390           mov.w @(0x46,PC),r0
|           0x0ce32160      ec00           mov.b @(r0,r14),r0
|           0x0ce32162      0c60           extu.b r0,r0
|           0x0ce32164      0388           cmp/eq 0x03,r0
|           0x0ce32166      018f           bf.s 0x0ce3216c
|           0x0ce32168      30e4           mov 0x30,r4
            0x0ce3216a      48e4           mov 0x48,r4
|           ; CODE XREF from fcn.0ce32070 (0xce32166)
|           0x0ce3216c      1d90           mov.w @(0x3A,PC),r0
|           0x0ce3216e      14e5           mov 0x14,r5
|           0x0ce32170      15d3           mov.l @(0x54,PC),r3
|           0x0ce32172      02e6           mov 0x02,r6
|           0x0ce32174      440e           mov.b r4,@(r0,r14)
|           0x0ce32176      0b70           add 0x0B,r0
|           0x0ce32178      d50e           mov.w r13,@(r0,r14)
|           0x0ce3217a      f270           add 0xF2,r0
|           0x0ce3217c      d40e           mov.b r13,@(r0,r14)
|           0x0ce3217e      2670           add 0x26,r0
|           0x0ce32180      d60e           mov.l r13,@(r0,r14)
|           0x0ce32182      e284           mov.b @(0x2,r14),r0
|           0x0ce32184      3262           mov.l @r3,r2
|           0x0ce32186      0c60           extu.b r0,r0
|           0x0ce32188      0040           shll r0
|           0x0ce3218a      7c72           add 0x7C,r2
|           0x0ce3218c      2d01           mov.w @(r0,r2),r1
|           0x0ce3218e      0171           add 0x01,r1
|           0x0ce32190      1502           mov.w r1,@(r0,r2)
|           0x0ce32192      0ed2           mov.l @(0x38,PC),r2
|           0x0ce32194      0b42           jsr @r2
|           0x0ce32196      e364           mov r14,r4
|           0x0ce32198      087f           add 0x08,r15
|           0x0ce3219a      264f           lds.l @r15+,pr
|           0x0ce3219c      f66d           mov.l @r15+,r13
|           0x0ce3219e      0b00           rts 
\           0x0ce321a0      f66e           mov.l @r15+,r14


;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce321a2 0x01a3 0x0352 0x01d2 0x0255 0x01a1
0x0ce321ac  0x8c035162 0x8c05218a 0x8c05115a 0x8c056de4
0x0ce321bc  0x0ce34010 0xbf555555 0xbf9a4924 0x8c2896b0
0x0ce321cc  0x8c034e8c

;==============================================================================
            ;-- aav.0x0ce321d0:
            ; UNKNOWN XREF from aav.0x0ce33ffc (+0x4)
            0x0ce321d0      e62f           mov.l r14,@-r15
            0x0ce321d2      224f           sts.l pr,@-r15
            0x0ce321d4      4fd3           mov.l @(0x13C,PC),r3
            0x0ce321d6      0b43           jsr @r3
            0x0ce321d8      436e           mov r4,r14
            0x0ce321da      9490           mov.w @(0x128,PC),r0
            0x0ce321dc      ec00           mov.b @(r0,r14),r0
            0x0ce321de      0f88           cmp/eq 0x0F,r0
            0x0ce321e0      2189           bt 0x0ce32226
            0x0ce321e2      4dd2           mov.l @(0x134,PC),r2
            0x0ce321e4      0b42           jsr @r2
            0x0ce321e6      e364           mov r14,r4
            0x0ce321e8      5ce1           mov 0x5C,r1
            0x0ce321ea      4cd3           mov.l @(0x130,PC),r3
            0x0ce321ec      ec31           add r14,r1
            0x0ce321ee      34e0           mov 0x34,r0
            0x0ce321f0      18f3           fmov @r1,fr3
            0x0ce321f2      e6f2           fmov @(r0,r14),fr2
            0x0ce321f4      68e1           mov 0x68,r1
            0x0ce321f6      ec31           add r14,r1
            0x0ce321f8      30f2           fadd fr3,fr2
            0x0ce321fa      27fe           fmov fr2,@(r0,r14)
            0x0ce321fc      5ce0           mov 0x5C,r0
            0x0ce321fe      e6f2           fmov @(r0,r14),fr2
            0x0ce32200      18f3           fmov @r1,fr3
            0x0ce32202      60e1           mov 0x60,r1
            0x0ce32204      ec31           add r14,r1
            0x0ce32206      30f2           fadd fr3,fr2
            0x0ce32208      27fe           fmov fr2,@(r0,r14)
            0x0ce3220a      38e0           mov 0x38,r0
            0x0ce3220c      e6f2           fmov @(r0,r14),fr2
            0x0ce3220e      18f3           fmov @r1,fr3
            0x0ce32210      6ce1           mov 0x6C,r1
            0x0ce32212      ec31           add r14,r1
            0x0ce32214      30f2           fadd fr3,fr2
            0x0ce32216      27fe           fmov fr2,@(r0,r14)
            0x0ce32218      60e0           mov 0x60,r0
            0x0ce3221a      e6f2           fmov @(r0,r14),fr2
            0x0ce3221c      18f3           fmov @r1,fr3
            0x0ce3221e      30f2           fadd fr3,fr2
            0x0ce32220      27fe           fmov fr2,@(r0,r14)
            0x0ce32222      0b43           jsr @r3
            0x0ce32224      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce321d0 (+0x10)
            0x0ce32226      6e90           mov.w @(0xDC,PC),r0
            0x0ce32228      48e6           mov 0x48,r6
            0x0ce3222a      3dd5           mov.l @(0xF4,PC),r5
            0x0ce3222c      ec00           mov.b @(r0,r14),r0
            0x0ce3222e      0188           cmp/eq 0x01,r0
            0x0ce32230      198f           bf.s 0x0ce32266
            0x0ce32232      00e4           mov 0x00,r4
            0x0ce32234      6790           mov.w @(0xCE,PC),r0
            0x0ce32236      440e           mov.b r4,@(r0,r14)
            0x0ce32238      6690           mov.w @(0xCC,PC),r0
            0x0ce3223a      ec00           mov.b @(r0,r14),r0
            0x0ce3223c      0c60           extu.b r0,r0
            0x0ce3223e      0388           cmp/eq 0x03,r0
            0x0ce32240      018f           bf.s 0x0ce32246
            0x0ce32242      30e7           mov 0x30,r7
            0x0ce32244      6367           mov r6,r7
            ; CODE XREF from aav.0x0ce321d0 (+0x70)
            0x0ce32246      6090           mov.w @(0xC0,PC),r0
            0x0ce32248      740e           mov.b r7,@(r0,r14)
            0x0ce3224a      0b70           add 0x0B,r0
            0x0ce3224c      450e           mov.w r4,@(r0,r14)
            0x0ce3224e      f270           add 0xF2,r0
            0x0ce32250      440e           mov.b r4,@(r0,r14)
            0x0ce32252      2670           add 0x26,r0
            0x0ce32254      460e           mov.l r4,@(r0,r14)
            0x0ce32256      e284           mov.b @(0x2,r14),r0
            0x0ce32258      5263           mov.l @r5,r3
            0x0ce3225a      0c60           extu.b r0,r0
            0x0ce3225c      0040           shll r0
            0x0ce3225e      7c73           add 0x7C,r3
            0x0ce32260      3d02           mov.w @(r0,r3),r2
            0x0ce32262      0172           add 0x01,r2
            0x0ce32264      2503           mov.w r2,@(r0,r3)
            ; CODE XREF from aav.0x0ce321d0 (+0x60)
            0x0ce32266      4e90           mov.w @(0x9C,PC),r0
            0x0ce32268      ec00           mov.b @(r0,r14),r0
            0x0ce3226a      0288           cmp/eq 0x02,r0
            0x0ce3226c      3b8b           bf 0x0ce322e6
            0x0ce3226e      4a90           mov.w @(0x94,PC),r0
            0x0ce32270      440e           mov.b r4,@(r0,r14)
            0x0ce32272      ee85           mov.w @(0x1C,r14),r0
            0x0ce32274      0820           tst r0,r0
            0x0ce32276      3689           bt 0x0ce322e6
            0x0ce32278      4890           mov.w @(0x90,PC),r0
            0x0ce3227a      4892           mov.w @(0x90,PC),r2
            0x0ce3227c      ed03           mov.w @(r0,r14),r3
            0x0ce3227e      3d63           extu.w r3,r3
            0x0ce32280      2823           tst r2,r3
            0x0ce32282      3089           bt 0x0ce322e6
            0x0ce32284      27d1           mov.l @(0x9C,PC),r1
            0x0ce32286      450e           mov.w r4,@(r0,r14)
            0x0ce32288      60e0           mov 0x60,r0
            0x0ce3228a      5a41           lds r1,fpul
            0x0ce3228c      e6f2           fmov @(r0,r14),fr2
            0x0ce3228e      0df3           fsts fpul,fr3
            0x0ce32290      30f2           fadd fr3,fr2
            0x0ce32292      27fe           fmov fr2,@(r0,r14)
            0x0ce32294      ee85           mov.w @(0x1C,r14),r0
            0x0ce32296      ff70           add 0xFF,r0
            0x0ce32298      ee81           mov.w r0,@(0x1C,r14)
            0x0ce3229a      3590           mov.w @(0x6A,PC),r0
            0x0ce3229c      ec00           mov.b @(r0,r14),r0
            0x0ce3229e      0c60           extu.b r0,r0
            0x0ce322a0      0388           cmp/eq 0x03,r0
            0x0ce322a2      018f           bf.s 0x0ce322a8
            0x0ce322a4      30e7           mov 0x30,r7
            0x0ce322a6      6367           mov r6,r7
            ; CODE XREF from aav.0x0ce321d0 (+0xd2)
            0x0ce322a8      2f90           mov.w @(0x5E,PC),r0
            0x0ce322aa      740e           mov.b r7,@(r0,r14)
            0x0ce322ac      0b70           add 0x0B,r0
            0x0ce322ae      450e           mov.w r4,@(r0,r14)
            0x0ce322b0      f270           add 0xF2,r0
            0x0ce322b2      440e           mov.b r4,@(r0,r14)
            0x0ce322b4      2670           add 0x26,r0
            0x0ce322b6      460e           mov.l r4,@(r0,r14)
            0x0ce322b8      e284           mov.b @(0x2,r14),r0
            0x0ce322ba      5263           mov.l @r5,r3
            0x0ce322bc      0c60           extu.b r0,r0
            0x0ce322be      0040           shll r0
            0x0ce322c0      7c73           add 0x7C,r3
            0x0ce322c2      3d02           mov.w @(r0,r3),r2
            0x0ce322c4      0172           add 0x01,r2
            0x0ce322c6      2503           mov.w r2,@(r0,r3)
            0x0ce322c8      ee85           mov.w @(0x1C,r14),r0
            0x0ce322ca      01c8           tst 0x01,r0
            0x0ce322cc      0189           bt 0x0ce322d2
            0x0ce322ce      01a0           bra 0x0ce322d4
            0x0ce322d0      06e3           mov 0x06,r3
            ; CODE XREF from aav.0x0ce321d0 (+0xfc)
            0x0ce322d2      05e3           mov 0x05,r3
            ; CODE XREF from aav.0x0ce321d0 (+0xfe)
            0x0ce322d4      1c90           mov.w @(0x38,PC),r0
            0x0ce322d6      14e5           mov 0x14,r5
            0x0ce322d8      e364           mov r14,r4
            0x0ce322da      340e           mov.b r3,@(r0,r14)
            0x0ce322dc      264f           lds.l @r15+,pr
            0x0ce322de      12d3           mov.l @(0x48,PC),r3
            0x0ce322e0      ec06           mov.b @(r0,r14),r6
            0x0ce322e2      2b43           jmp @r3
            0x0ce322e4      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce321d0 (+0x9c, +0xa6, +0xb2)
            0x0ce322e6      0e90           mov.w @(0x1C,PC),r0
            0x0ce322e8      ec00           mov.b @(r0,r14),r0
            0x0ce322ea      0388           cmp/eq 0x03,r0
            0x0ce322ec      088b           bf 0x0ce32300
            0x0ce322ee      0a90           mov.w @(0x14,PC),r0
            0x0ce322f0      02e5           mov 0x02,r5
            0x0ce322f2      0ed3           mov.l @(0x38,PC),r3
            0x0ce322f4      440e           mov.b r4,@(r0,r14)
            0x0ce322f6      0b43           jsr @r3
            0x0ce322f8      e364           mov r14,r4
            0x0ce322fa      e684           mov.b @(0x6,r14),r0
            0x0ce322fc      0170           add 0x01,r0
            0x0ce322fe      e680           mov.b r0,@(0x6,r14)
            ; CODE XREF from aav.0x0ce321d0 (+0x11c)
            0x0ce32300      264f           lds.l @r15+,pr
            0x0ce32302      0b00           rts 
            0x0ce32304      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce32306 0x0141 0x0255 0x01a1 0x0352 0x0300 0x0158 0x0000
0x0ce32314  0x8c034dee 0x8c053082 0x8c052c84 0x8c2896b0
0x0ce32324  0x41892492 0x8c034e8c 0x8c068b40

;==============================================================================
|           ;-- aav.0x0ce32330:
|           ; UNKNOWN XREF from aav.0x0ce33ffc (+0x8)
|           0x0ce32330      e62f           mov.l r14,@-r15
|           0x0ce32332      224f           sts.l pr,@-r15
|           0x0ce32334      4cd3           mov.l @(0x130,PC),r3
|           0x0ce32336      0b43           jsr @r3
|           0x0ce32338      436e           mov r4,r14
|           0x0ce3233a      5ce1           mov 0x5C,r1
|           0x0ce3233c      4bd3           mov.l @(0x12C,PC),r3
|           0x0ce3233e      ec31           add r14,r1
|           0x0ce32340      34e0           mov 0x34,r0
|           0x0ce32342      18f3           fmov @r1,fr3
|           0x0ce32344      e6f2           fmov @(r0,r14),fr2
|           0x0ce32346      68e1           mov 0x68,r1
|           0x0ce32348      ec31           add r14,r1
|           0x0ce3234a      30f2           fadd fr3,fr2
|           0x0ce3234c      27fe           fmov fr2,@(r0,r14)
|           0x0ce3234e      5ce0           mov 0x5C,r0
|           0x0ce32350      e6f2           fmov @(r0,r14),fr2
|           0x0ce32352      18f3           fmov @r1,fr3
|           0x0ce32354      60e1           mov 0x60,r1
|           0x0ce32356      ec31           add r14,r1
|           0x0ce32358      30f2           fadd fr3,fr2
|           0x0ce3235a      27fe           fmov fr2,@(r0,r14)
|           0x0ce3235c      38e0           mov 0x38,r0
|           0x0ce3235e      e6f2           fmov @(r0,r14),fr2
|           0x0ce32360      18f3           fmov @r1,fr3
|           0x0ce32362      6ce1           mov 0x6C,r1
|           0x0ce32364      ec31           add r14,r1
|           0x0ce32366      30f2           fadd fr3,fr2
|           0x0ce32368      27fe           fmov fr2,@(r0,r14)
|           0x0ce3236a      60e0           mov 0x60,r0
|           0x0ce3236c      e6f2           fmov @(r0,r14),fr2
|           0x0ce3236e      18f3           fmov @r1,fr3
|           0x0ce32370      30f2           fadd fr3,fr2
|           0x0ce32372      27fe           fmov fr2,@(r0,r14)
|           0x0ce32374      0b43           jsr @r3
|           0x0ce32376      e364           mov r14,r4
|           0x0ce32378      60e0           mov 0x60,r0
|           0x0ce3237a      8df3           fldi0 fr3
|           0x0ce3237c      e6f2           fmov @(r0,r14),fr2
|           0x0ce3237e      35f2           fcmp/gt fr3,fr2
|           0x0ce32380      1289           bt 0x0ce323a8
|           0x0ce32382      e684           mov.b @(0x6,r14),r0
|           0x0ce32384      e364           mov r14,r4
|           0x0ce32386      8df4           fldi0 fr4
|           0x0ce32388      03e6           mov 0x03,r6
|           0x0ce3238a      0170           add 0x01,r0
|           0x0ce3238c      39d3           mov.l @(0xE4,PC),r3
|           0x0ce3238e      e680           mov.b r0,@(0x6,r14)
|           0x0ce32390      37c7           mova @(0xDC,PC),r0
|           0x0ce32392      08f3           fmov @r0,fr3
|           0x0ce32394      6ce0           mov 0x6C,r0
|           0x0ce32396      14e5           mov 0x14,r5
|           0x0ce32398      37fe           fmov fr3,@(r0,r14)
|           0x0ce3239a      5ce0           mov 0x5C,r0
|           0x0ce3239c      47fe           fmov fr4,@(r0,r14)
|           0x0ce3239e      68e0           mov 0x68,r0
|           0x0ce323a0      47fe           fmov fr4,@(r0,r14)
|           0x0ce323a2      264f           lds.l @r15+,pr
|           0x0ce323a4      2b43           jmp @r3
|           0x0ce323a6      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce32310 (0xce32380)
|           0x0ce323a8      264f           lds.l @r15+,pr
|           0x0ce323aa      0b00           rts 
|           0x0ce323ac      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce323ae:
            ; UNKNOWN XREF from aav.0x0ce33ffc (+0xc)
            0x0ce323ae      e62f           mov.l r14,@-r15
|           ; CODE XREF from fcn.0ce32310 (0xce3232c)
|           0x0ce323b0      224f           sts.l pr,@-r15
|           0x0ce323b2      2dd3           mov.l @(0xB4,PC),r3
|           0x0ce323b4      0b43           jsr @r3
|           0x0ce323b6      436e           mov r4,r14
|           0x0ce323b8      5ce1           mov 0x5C,r1
|           0x0ce323ba      2cd3           mov.l @(0xB0,PC),r3
|           0x0ce323bc      ec31           add r14,r1
|           0x0ce323be      34e0           mov 0x34,r0
|           0x0ce323c0      18f3           fmov @r1,fr3
|           0x0ce323c2      e6f2           fmov @(r0,r14),fr2
|           0x0ce323c4      68e1           mov 0x68,r1
|           0x0ce323c6      ec31           add r14,r1
|           0x0ce323c8      30f2           fadd fr3,fr2
|           0x0ce323ca      27fe           fmov fr2,@(r0,r14)
|           0x0ce323cc      5ce0           mov 0x5C,r0
|           0x0ce323ce      e6f2           fmov @(r0,r14),fr2
|           0x0ce323d0      18f3           fmov @r1,fr3
|           0x0ce323d2      60e1           mov 0x60,r1
|           0x0ce323d4      ec31           add r14,r1
|           0x0ce323d6      30f2           fadd fr3,fr2
|           0x0ce323d8      27fe           fmov fr2,@(r0,r14)
|           0x0ce323da      38e0           mov 0x38,r0
|           0x0ce323dc      e6f2           fmov @(r0,r14),fr2
|           0x0ce323de      18f3           fmov @r1,fr3
|           0x0ce323e0      6ce1           mov 0x6C,r1
|           0x0ce323e2      ec31           add r14,r1
|           0x0ce323e4      30f2           fadd fr3,fr2
|           0x0ce323e6      27fe           fmov fr2,@(r0,r14)
|           0x0ce323e8      60e0           mov 0x60,r0
|           0x0ce323ea      e6f2           fmov @(r0,r14),fr2
|           0x0ce323ec      18f3           fmov @r1,fr3
|           0x0ce323ee      30f2           fadd fr3,fr2
|           0x0ce323f0      27fe           fmov fr2,@(r0,r14)
|           0x0ce323f2      0b43           jsr @r3
|           0x0ce323f4      e364           mov r14,r4
|           0x0ce323f6      20d2           mov.l @(0x80,PC),r2
|           0x0ce323f8      0b42           jsr @r2
|           0x0ce323fa      e364           mov r14,r4
|           0x0ce323fc      0c60           extu.b r0,r0
|           0x0ce323fe      0820           tst r0,r0
|           0x0ce32400      1589           bt 0x0ce3242e
|           0x0ce32402      1ed2           mov.l @(0x78,PC),r2
|           0x0ce32404      0b42           jsr @r2
|           0x0ce32406      e364           mov r14,r4
|           0x0ce32408      e684           mov.b @(0x6,r14),r0
|           0x0ce3240a      e364           mov r14,r4
|           0x0ce3240c      8df4           fldi0 fr4
|           0x0ce3240e      04e6           mov 0x04,r6
|           0x0ce32410      0170           add 0x01,r0
|           0x0ce32412      18d3           mov.l @(0x60,PC),r3
|           0x0ce32414      e680           mov.b r0,@(0x6,r14)
|           0x0ce32416      5ce0           mov 0x5C,r0
|           0x0ce32418      47fe           fmov fr4,@(r0,r14)
|           0x0ce3241a      60e0           mov 0x60,r0
|           0x0ce3241c      47fe           fmov fr4,@(r0,r14)
|           0x0ce3241e      68e0           mov 0x68,r0
|           0x0ce32420      47fe           fmov fr4,@(r0,r14)
|           0x0ce32422      6ce0           mov 0x6C,r0
|           0x0ce32424      47fe           fmov fr4,@(r0,r14)
|           0x0ce32426      14e5           mov 0x14,r5
|           0x0ce32428      264f           lds.l @r15+,pr
|           0x0ce3242a      2b43           jmp @r3
|           0x0ce3242c      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce32310 (0xce32400)
|           0x0ce3242e      264f           lds.l @r15+,pr
|           0x0ce32430      0b00           rts 
\           0x0ce32432      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32434:
            ; UNKNOWN XREF from aav.0x0ce33ffc (+0x10)
            0x0ce32434      224f           sts.l pr,@-r15
            0x0ce32436      fc7f           add 0xFC,r15
            0x0ce32438      0bd3           mov.l @(0x2C,PC),r3
            0x0ce3243a      0b43           jsr @r3
            ; CODE XREF from aav.0x0ce32e5a (+0x8a)
            0x0ce3243c      422f           mov.l r4,@r15
            0x0ce3243e      0e60           exts.b r0,r0
            0x0ce32440      1140           cmp/pz r0
            0x0ce32442      0489           bt 0x0ce3244e
            0x0ce32444      f264           mov.l @r15,r4
            0x0ce32446      047f           add 0x04,r15
            0x0ce32448      0dd3           mov.l @(0x34,PC),r3
            0x0ce3244a      2b43           jmp @r3
            0x0ce3244c      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce32434 (+0xe)
            0x0ce3244e      047f           add 0x04,r15
            0x0ce32450      264f           lds.l @r15+,pr
            0x0ce32452      0b00           rts 
            0x0ce32454      0900           nop 
            ;-- aav.0x0ce32456:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x10)
            0x0ce32456      4363           mov r4,r3
            0x0ce32458      0ad1           mov.l @(0x28,PC),r1
            0x0ce3245a      462f           mov.l r4,@-r15
            0x0ce3245c      3684           mov.b @(0x6,r3),r0
            0x0ce3245e      0c60           extu.b r0,r0
            0x0ce32460      0840           shll2 r0
            0x0ce32462      1e03           mov.l @(r0,r1),r3
            0x0ce32464      2b43           jmp @r3
            0x0ce32466      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce32468      ee4d           ldc r13,r6_bank
            0x0ce3246a      038c           .word 0x8C03
            0x0ce3246c      842c           mov.b r8,@-r12
            0x0ce3246e      058c           .word 0x8C05
            0x0ce32470      dbb6           bsr fcn.0ce3322a
            0x0ce32472      4dbf           bsr fcn.0ce32310
            0x0ce32474      8c4e           shad r8,r14
            0x0ce32476      038c           .word 0x8C03
            0x0ce32478      e22c           mov.l r14,@r12
            0x0ce3247a      058c           .word 0x8C05
            0x0ce3247c      b411           mov.l r11,@(0x10,r1)
            0x0ce3247e      058c           .word 0x8C05
            0x0ce32480      4816           mov.l r4,@(0x20,r6)
            0x0ce32482      058c           .word 0x8C05
            0x0ce32484      .dword 0x0ce34020 ; aav.0x0ce34020

;==============================================================================
            ;-- aav.0x0ce32488:
            ; UNKNOWN XREF from aav.0x0ce34020 ()
            0x0ce32488      e62f           mov.l r14,@-r15
            0x0ce3248a      436e           mov r4,r14
            0x0ce3248c      224f           sts.l pr,@-r15
            0x0ce3248e      e684           mov.b @(0x6,r14),r0
            0x0ce32490      41d3           mov.l @(0x104,PC),r3
            0x0ce32492      0170           add 0x01,r0
            0x0ce32494      e680           mov.b r0,@(0x6,r14)
            0x0ce32496      1ce0           mov 0x1C,r0
            0x0ce32498      ee81           mov.w r0,@(0x1C,r14)
            0x0ce3249a      0b43           jsr @r3
            0x0ce3249c      e364           mov r14,r4
            0x0ce3249e      3fd2           mov.l @(0xFC,PC),r2
            0x0ce324a0      0ae5           mov 0x0A,r5
            0x0ce324a2      0b42           jsr @r2
            0x0ce324a4      e364           mov r14,r4
            0x0ce324a6      5ce0           mov 0x5C,r0
            0x0ce324a8      8df4           fldi0 fr4
            0x0ce324aa      47fe           fmov fr4,@(r0,r14)
            0x0ce324ac      60e0           mov 0x60,r0
            0x0ce324ae      47fe           fmov fr4,@(r0,r14)
            0x0ce324b0      68e0           mov 0x68,r0
            0x0ce324b2      47fe           fmov fr4,@(r0,r14)
            0x0ce324b4      6ce0           mov 0x6C,r0
            0x0ce324b6      47fe           fmov fr4,@(r0,r14)
            0x0ce324b8      39c7           mova @(0xE4,PC),r0
            0x0ce324ba      08f3           fmov @r0,fr3
            0x0ce324bc      5ce0           mov 0x5C,r0
            0x0ce324be      37fe           fmov fr3,@(r0,r14)
            0x0ce324c0      6590           mov.w @(0xCA,PC),r0
            0x0ce324c2      ec03           mov.b @(r0,r14),r3
            0x0ce324c4      3823           tst r3,r3
            0x0ce324c6      048f           bf.s 0x0ce324d2
            0x0ce324c8      e364           mov r14,r4
            0x0ce324ca      5ce0           mov 0x5C,r0
            0x0ce324cc      e6f3           fmov @(r0,r14),fr3
            0x0ce324ce      4df3           fneg fr3
            0x0ce324d0      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce32488 (+0x3e)
            0x0ce324d2      34d3           mov.l @(0xD0,PC),r3
            0x0ce324d4      0b43           jsr @r3
            0x0ce324d6      0900           nop 
            0x0ce324d8      33d2           mov.l @(0xCC,PC),r2
            0x0ce324da      0fe5           mov 0x0F,r5
            0x0ce324dc      0ae6           mov 0x0A,r6
            0x0ce324de      0b42           jsr @r2
            0x0ce324e0      e364           mov r14,r4
            0x0ce324e2      264f           lds.l @r15+,pr
            0x0ce324e4      e364           mov r14,r4
            0x0ce324e6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce324e8:
            ; UNKNOWN XREF from aav.0x0ce34020 (+0x4)
            0x0ce324e8      4e85           mov.w @(0x1C,r4),r0
            0x0ce324ea      ff70           add 0xFF,r0
            0x0ce324ec      4e81           mov.w r0,@(0x1C,r4)
            0x0ce324ee      0f60           exts.w r0,r0
            0x0ce324f0      1540           cmp/pl r0
            0x0ce324f2      0289           bt 0x0ce324fa
            0x0ce324f4      4684           mov.b @(0x6,r4),r0
            0x0ce324f6      0170           add 0x01,r0
            0x0ce324f8      4680           mov.b r0,@(0x6,r4)
            ; CODE XREF from aav.0x0ce324e8 (+0xa)
            0x0ce324fa      0b00           rts 
            0x0ce324fc      0900           nop 
            ;-- aav.0x0ce324fe:
            ; UNKNOWN XREF from aav.0x0ce34020 (+0x8)
            0x0ce324fe      e62f           mov.l r14,@-r15
            0x0ce32500      5ce1           mov 0x5C,r1
            0x0ce32502      436e           mov r4,r14
            0x0ce32504      ec31           add r14,r1
            0x0ce32506      34e0           mov 0x34,r0
            0x0ce32508      28d3           mov.l @(0xA0,PC),r3
            0x0ce3250a      224f           sts.l pr,@-r15
            0x0ce3250c      e6f2           fmov @(r0,r14),fr2
            0x0ce3250e      18f3           fmov @r1,fr3
            0x0ce32510      68e1           mov 0x68,r1
            0x0ce32512      ec31           add r14,r1
            0x0ce32514      30f2           fadd fr3,fr2
            0x0ce32516      27fe           fmov fr2,@(r0,r14)
            0x0ce32518      5ce0           mov 0x5C,r0
            0x0ce3251a      18f3           fmov @r1,fr3
            0x0ce3251c      60e1           mov 0x60,r1
            0x0ce3251e      e6f2           fmov @(r0,r14),fr2
            0x0ce32520      ec31           add r14,r1
            0x0ce32522      30f2           fadd fr3,fr2
            0x0ce32524      27fe           fmov fr2,@(r0,r14)
            0x0ce32526      38e0           mov 0x38,r0
            0x0ce32528      e6f2           fmov @(r0,r14),fr2
            0x0ce3252a      18f3           fmov @r1,fr3
            0x0ce3252c      6ce1           mov 0x6C,r1
            0x0ce3252e      ec31           add r14,r1
            0x0ce32530      30f2           fadd fr3,fr2
            0x0ce32532      27fe           fmov fr2,@(r0,r14)
            0x0ce32534      60e0           mov 0x60,r0
            0x0ce32536      e6f2           fmov @(r0,r14),fr2
            0x0ce32538      18f3           fmov @r1,fr3
            0x0ce3253a      30f2           fadd fr3,fr2
            0x0ce3253c      27fe           fmov fr2,@(r0,r14)
            0x0ce3253e      0b43           jsr @r3
            0x0ce32540      e364           mov r14,r4
            0x0ce32542      0e60           exts.b r0,r0
            0x0ce32544      1140           cmp/pz r0
            0x0ce32546      0489           bt 0x0ce32552
            0x0ce32548      264f           lds.l @r15+,pr
            0x0ce3254a      19d3           mov.l @(0x64,PC),r3
            0x0ce3254c      e364           mov r14,r4
            0x0ce3254e      2b43           jmp @r3
            0x0ce32550      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce324fe (+0x48)
            0x0ce32552      1d90           mov.w @(0x3A,PC),r0
            0x0ce32554      ec03           mov.b @(r0,r14),r3
            0x0ce32556      3823           tst r3,r3
            0x0ce32558      0d8b           bf 0x0ce32576
            0x0ce3255a      16d3           mov.l @(0x58,PC),r3
            0x0ce3255c      0b43           jsr @r3
            0x0ce3255e      e364           mov r14,r4
            0x0ce32560      0820           tst r0,r0
            0x0ce32562      088d           bt.s 0x0ce32576
            0x0ce32564      0365           mov r0,r5
            0x0ce32566      1590           mov.w @(0x2A,PC),r0
            0x0ce32568      e364           mov r14,r4
            0x0ce3256a      1293           mov.w @(0x24,PC),r3
            0x0ce3256c      340e           mov.b r3,@(r0,r14)
            0x0ce3256e      264f           lds.l @r15+,pr
            0x0ce32570      11d3           mov.l @(0x44,PC),r3
            0x0ce32572      2b43           jmp @r3
            0x0ce32574      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce324fe (+0x5a, +0x64)
            0x0ce32576      264f           lds.l @r15+,pr
            0x0ce32578      0b00           rts 
            0x0ce3257a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3257c:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x1c)
            0x0ce3257c      4363           mov r4,r3
            0x0ce3257e      0fd1           mov.l @(0x3C,PC),r1
            0x0ce32580      462f           mov.l r4,@-r15
            0x0ce32582      3684           mov.b @(0x6,r3),r0
            0x0ce32584      0c60           extu.b r0,r0
            0x0ce32586      0840           shll2 r0
            0x0ce32588      1e03           mov.l @(r0,r1),r3
            0x0ce3258a      2b43           jmp @r3
            0x0ce3258c      047f           add 0x04,r15

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce3258e      d201           stc r5_bank,r1
            0x0ce32590      4101           .word 0x0141
            0x0ce32592      c000           .word 0x00C0
            0x0ce32594      f701           mul.l r15,r1
            0x0ce32596      0000           .word 0x0000
            0x0ce32598      8a21           xor r8,r1
            0x0ce3259a      058c           .word 0x8C05
            0x0ce3259c      e46d           mov.b @r14+,r13
            0x0ce3259e      058c           .word 0x8C05
            0x0ce325a0      aaaa           bra 0x0ce31af8
            0x0ce325a2      3a41           .word 0x413A
            0x0ce325a4      5a11           mov.l r5,@(0x28,r1)
            0x0ce325a6      058c           .word 0x8C05
            0x0ce325a8      8c4e           shad r8,r14
            0x0ce325aa      038c           .word 0x8C03
            0x0ce325ac      ee4d           ldc r13,r6_bank
            0x0ce325ae      038c           .word 0x8C03
            0x0ce325b0      4816           mov.l r4,@(0x20,r6)
            0x0ce325b2      058c           .word 0x8C05
            0x0ce325b4      9057           mov.l @(0x0,r9),r7
            0x0ce325b6      048c           .word 0x8C04
            0x0ce325b8      e022           mov.b r14,@r2
            0x0ce325ba      058c           .word 0x8C05
            0x0ce325bc      .dword 0x0ce3402c ; aav.0x0ce3402c

;==============================================================================
            ;-- aav.0x0ce325c0:
            ; UNKNOWN XREF from aav.0x0ce3402c ()
            0x0ce325c0      e62f           mov.l r14,@-r15
            0x0ce325c2      436e           mov r4,r14
            0x0ce325c4      224f           sts.l pr,@-r15
            0x0ce325c6      e684           mov.b @(0x6,r14),r0
            0x0ce325c8      4cd3           mov.l @(0x130,PC),r3
            0x0ce325ca      0170           add 0x01,r0
            0x0ce325cc      e680           mov.b r0,@(0x6,r14)
            0x0ce325ce      0b43           jsr @r3
            0x0ce325d0      e364           mov r14,r4
            0x0ce325d2      4bd2           mov.l @(0x12C,PC),r2
            0x0ce325d4      00e5           mov 0x00,r5
            0x0ce325d6      0b42           jsr @r2
            0x0ce325d8      e364           mov r14,r4
            0x0ce325da      4ad3           mov.l @(0x128,PC),r3
            0x0ce325dc      0b43           jsr @r3
            0x0ce325de      e364           mov r14,r4
            0x0ce325e0      49d2           mov.l @(0x124,PC),r2
            0x0ce325e2      05e5           mov 0x05,r5
            0x0ce325e4      0b42           jsr @r2
            0x0ce325e6      e364           mov r14,r4
            0x0ce325e8      48d3           mov.l @(0x120,PC),r3
            0x0ce325ea      0b43           jsr @r3
            0x0ce325ec      e364           mov r14,r4
            0x0ce325ee      48c7           mova @(0x120,PC),r0
            0x0ce325f0      08f3           fmov @r0,fr3
            0x0ce325f2      60e0           mov 0x60,r0
            0x0ce325f4      37fe           fmov fr3,@(r0,r14)
            0x0ce325f6      47c7           mova @(0x11C,PC),r0
            0x0ce325f8      08f3           fmov @r0,fr3
            0x0ce325fa      6ce0           mov 0x6C,r0
            0x0ce325fc      37fe           fmov fr3,@(r0,r14)
            0x0ce325fe      46c7           mova @(0x118,PC),r0
            0x0ce32600      08f3           fmov @r0,fr3
            0x0ce32602      5ce0           mov 0x5C,r0
            0x0ce32604      37fe           fmov fr3,@(r0,r14)
            0x0ce32606      68e0           mov 0x68,r0
            0x0ce32608      8df3           fldi0 fr3
            0x0ce3260a      37fe           fmov fr3,@(r0,r14)
            0x0ce3260c      7190           mov.w @(0xE2,PC),r0
            0x0ce3260e      ec03           mov.b @(r0,r14),r3
            0x0ce32610      3823           tst r3,r3
            0x0ce32612      048d           bt.s 0x0ce3261e
            0x0ce32614      3fe4           mov 0x3F,r4
            0x0ce32616      5ce0           mov 0x5C,r0
            0x0ce32618      e6f3           fmov @(r0,r14),fr3
            0x0ce3261a      4df3           fneg fr3
            0x0ce3261c      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce325c0 (+0x52)
            0x0ce3261e      6990           mov.w @(0xD2,PC),r0
            0x0ce32620      ec00           mov.b @(r0,r14),r0
            0x0ce32622      0c60           extu.b r0,r0
            0x0ce32624      0388           cmp/eq 0x03,r0
            0x0ce32626      008b           bf 0x0ce3262a
            0x0ce32628      46e4           mov 0x46,r4
            ; CODE XREF from aav.0x0ce325c0 (+0x66)
            0x0ce3262a      6490           mov.w @(0xC8,PC),r0
            0x0ce3262c      2de6           mov 0x2D,r6
            0x0ce3262e      3bd3           mov.l @(0xEC,PC),r3
            0x0ce32630      15e5           mov 0x15,r5
            0x0ce32632      440e           mov.b r4,@(r0,r14)
            0x0ce32634      0b70           add 0x0B,r0
            0x0ce32636      00e4           mov 0x00,r4
            0x0ce32638      450e           mov.w r4,@(r0,r14)
            0x0ce3263a      f270           add 0xF2,r0
            0x0ce3263c      440e           mov.b r4,@(r0,r14)
            0x0ce3263e      2670           add 0x26,r0
            0x0ce32640      460e           mov.l r4,@(r0,r14)
            0x0ce32642      e364           mov r14,r4
            0x0ce32644      e284           mov.b @(0x2,r14),r0
            0x0ce32646      3262           mov.l @r3,r2
            0x0ce32648      0c60           extu.b r0,r0
            0x0ce3264a      0040           shll r0
            0x0ce3264c      7c72           add 0x7C,r2
/ (fcn) fcn.0ce3264e 14
|   fcn.0ce3264e ();
|           ; CALL XREF from aav.0x0ce3265c (+0xba)
|           0x0ce3264e      2d01           mov.w @(r0,r2),r1
|           0x0ce32650      0171           add 0x01,r1
|           0x0ce32652      1502           mov.w r1,@(r0,r2)
|           0x0ce32654      264f           lds.l @r15+,pr
|           0x0ce32656      32d2           mov.l @(0xC8,PC),r2
|           0x0ce32658      2b42           jmp @r2
\           0x0ce3265a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3265c:
            ; UNKNOWN XREF from aav.0x0ce3402c (+0x4)
            0x0ce3265c      5ce1           mov 0x5C,r1
            0x0ce3265e      4c31           add r4,r1
            0x0ce32660      34e0           mov 0x34,r0
            0x0ce32662      18f3           fmov @r1,fr3
            0x0ce32664      46f2           fmov @(r0,r4),fr2
            0x0ce32666      68e1           mov 0x68,r1
            0x0ce32668      4c31           add r4,r1
            0x0ce3266a      30f2           fadd fr3,fr2
            0x0ce3266c      27f4           fmov fr2,@(r0,r4)
            0x0ce3266e      5ce0           mov 0x5C,r0
            0x0ce32670      46f2           fmov @(r0,r4),fr2
            0x0ce32672      18f3           fmov @r1,fr3
            0x0ce32674      60e1           mov 0x60,r1
            0x0ce32676      4c31           add r4,r1
            0x0ce32678      30f2           fadd fr3,fr2
            0x0ce3267a      27f4           fmov fr2,@(r0,r4)
            0x0ce3267c      38e0           mov 0x38,r0
            0x0ce3267e      46f2           fmov @(r0,r4),fr2
            0x0ce32680      18f3           fmov @r1,fr3
            0x0ce32682      6ce1           mov 0x6C,r1
            0x0ce32684      4c31           add r4,r1
            0x0ce32686      30f2           fadd fr3,fr2
            0x0ce32688      27f4           fmov fr2,@(r0,r4)
            0x0ce3268a      60e0           mov 0x60,r0
            0x0ce3268c      46f2           fmov @(r0,r4),fr2
            0x0ce3268e      18f3           fmov @r1,fr3
            0x0ce32690      30f2           fadd fr3,fr2
            0x0ce32692      27f4           fmov fr2,@(r0,r4)
            0x0ce32694      3090           mov.w @(0x60,PC),r0
            0x0ce32696      46f3           fmov @(r0,r4),fr3
            0x0ce32698      38e0           mov 0x38,r0
            0x0ce3269a      46f2           fmov @(r0,r4),fr2
            0x0ce3269c      35f2           fcmp/gt fr3,fr2
            0x0ce3269e      028b           bf 0x0ce326a6
            0x0ce326a0      20d3           mov.l @(0x80,PC),r3
            0x0ce326a2      2b43           jmp @r3
            0x0ce326a4      0900           nop 
            ; CODE XREF from aav.0x0ce3265c (+0x42)
            0x0ce326a6      4684           mov.b @(0x6,r4),r0
            0x0ce326a8      00e6           mov 0x00,r6
            0x0ce326aa      0170           add 0x01,r0
            0x0ce326ac      4680           mov.b r0,@(0x6,r4)
            0x0ce326ae      2390           mov.w @(0x46,PC),r0
            0x0ce326b0      46f3           fmov @(r0,r4),fr3
            0x0ce326b2      38e0           mov 0x38,r0
            0x0ce326b4      37f4           fmov fr3,@(r0,r4)
            0x0ce326b6      2090           mov.w @(0x40,PC),r0
            0x0ce326b8      6404           mov.b r6,@(r0,r4)
            0x0ce326ba      5c70           add 0x5C,r0
            0x0ce326bc      4c00           mov.b @(r0,r4),r0
            0x0ce326be      0c60           extu.b r0,r0
            0x0ce326c0      0388           cmp/eq 0x03,r0
            0x0ce326c2      018f           bf.s 0x0ce326c8
            0x0ce326c4      40e5           mov 0x40,r5
            0x0ce326c6      47e5           mov 0x47,r5
            ; CODE XREF from aav.0x0ce3265c (+0x66)
            0x0ce326c8      1590           mov.w @(0x2A,PC),r0
            0x0ce326ca      14d3           mov.l @(0x50,PC),r3
            0x0ce326cc      5404           mov.b r5,@(r0,r4)
            0x0ce326ce      0b70           add 0x0B,r0
            0x0ce326d0      6504           mov.w r6,@(r0,r4)
            0x0ce326d2      f270           add 0xF2,r0
            0x0ce326d4      6404           mov.b r6,@(r0,r4)
            0x0ce326d6      2670           add 0x26,r0
            0x0ce326d8      6604           mov.l r6,@(r0,r4)
            0x0ce326da      2ee6           mov 0x2E,r6
            0x0ce326dc      4284           mov.b @(0x2,r4),r0
            0x0ce326de      3262           mov.l @r3,r2
            0x0ce326e0      0c60           extu.b r0,r0
            0x0ce326e2      0040           shll r0
            0x0ce326e4      7c72           add 0x7C,r2
            0x0ce326e6      2d01           mov.w @(r0,r2),r1
            0x0ce326e8      0171           add 0x01,r1
            0x0ce326ea      1502           mov.w r1,@(r0,r2)
            0x0ce326ec      0cd2           mov.l @(0x30,PC),r2
            0x0ce326ee      2b42           jmp @r2
            0x0ce326f0      15e5           mov 0x15,r5

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce326f2      d201           stc r5_bank,r1
            0x0ce326f4      5502           mov.w r5,@(r0,r2)
            0x0ce326f6      a101           .word 0x01A1
            0x0ce326f8      1c04           mov.b @(r0,r1),r4
            0x0ce326fa      f901           .word 0x01F9
            0x0ce326fc      8230           cmp/hs r8,r0
            0x0ce326fe      058c           .word 0x8C05
            0x0ce32700      6251           mov.l @(0x8,r6),r1
            0x0ce32702      038c           .word 0x8C03
            0x0ce32704      8a21           xor r8,r1
            0x0ce32706      058c           .word 0x8C05
            0x0ce32708      e46d           mov.b @r14+,r13
            0x0ce3270a      058c           .word 0x8C05
            0x0ce3270c      5a11           mov.l r5,@(0x28,r1)
            0x0ce3270e      058c           .word 0x8C05
            0x0ce32710      9224           mov.l r9,@r4
            0x0ce32712      0941           shlr2 r1
            0x0ce32714      2449           rotcl r9
            0x0ce32716      9abf           bsr fcn.0ce3264e
            0x0ce32718      0000           .word 0x0000
            0x0ce3271a      f0c0           mov.b r0,@(0xF0,gbr)
            0x0ce3271c      b096           mov.w @(0x160,PC),r6
            0x0ce3271e      288c           .word 0x8C28
            0x0ce32720      8c4e           shad r8,r14
            0x0ce32722      038c           .word 0x8C03
            0x0ce32724      ee4d           ldc r13,r6_bank
            0x0ce32726      038c           .word 0x8C03

;==============================================================================
            ;-- aav.0x0ce32728:
            ; UNKNOWN XREF from aav.0x0ce3402c (+0x8)
            0x0ce32728      e62f           mov.l r14,@-r15
            0x0ce3272a      224f           sts.l pr,@-r15
            0x0ce3272c      4dd3           mov.l @(0x134,PC),r3
            0x0ce3272e      0b43           jsr @r3
            0x0ce32730      436e           mov r4,r14
            0x0ce32732      0e60           exts.b r0,r0
            0x0ce32734      1140           cmp/pz r0
            0x0ce32736      0d89           bt 0x0ce32754
            0x0ce32738      5ce0           mov 0x5C,r0
            0x0ce3273a      8df4           fldi0 fr4
            0x0ce3273c      47fe           fmov fr4,@(r0,r14)
            0x0ce3273e      60e0           mov 0x60,r0
            0x0ce32740      47fe           fmov fr4,@(r0,r14)
            0x0ce32742      68e0           mov 0x68,r0
            0x0ce32744      47fe           fmov fr4,@(r0,r14)
            0x0ce32746      6ce0           mov 0x6C,r0
            0x0ce32748      47d3           mov.l @(0x11C,PC),r3
            0x0ce3274a      e364           mov r14,r4
            0x0ce3274c      47fe           fmov fr4,@(r0,r14)
            0x0ce3274e      264f           lds.l @r15+,pr
            0x0ce32750      2b43           jmp @r3
            0x0ce32752      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32728 (+0xe)
            0x0ce32754      264f           lds.l @r15+,pr
            0x0ce32756      0b00           rts 
            0x0ce32758      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3275a:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x20)
            0x0ce3275a      e62f           mov.l r14,@-r15
            0x0ce3275c      436e           mov r4,r14
            0x0ce3275e      e684           mov.b @(0x6,r14),r0
            0x0ce32760      42d1           mov.l @(0x108,PC),r1
            0x0ce32762      0c60           extu.b r0,r0
            0x0ce32764      7895           mov.w @(0xF0,PC),r5
            0x0ce32766      0840           shll2 r0
            0x0ce32768      1e03           mov.l @(r0,r1),r3
            0x0ce3276a      ec35           add r14,r5
            0x0ce3276c      2b43           jmp @r3
            0x0ce3276e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32770:
            ; UNKNOWN XREF from aav.0x0ce34038 ()
            0x0ce32770      e62f           mov.l r14,@-r15
            0x0ce32772      436e           mov r4,r14
            0x0ce32774      224f           sts.l pr,@-r15
            0x0ce32776      e684           mov.b @(0x6,r14),r0
            0x0ce32778      00e5           mov 0x00,r5
            0x0ce3277a      3dd3           mov.l @(0xF4,PC),r3
            0x0ce3277c      0170           add 0x01,r0
            0x0ce3277e      e680           mov.b r0,@(0x6,r14)
            0x0ce32780      0b43           jsr @r3
            0x0ce32782      e364           mov r14,r4
            0x0ce32784      3bd2           mov.l @(0xEC,PC),r2
            0x0ce32786      0b42           jsr @r2
            0x0ce32788      e364           mov r14,r4
            0x0ce3278a      3bd3           mov.l @(0xEC,PC),r3
            0x0ce3278c      05e5           mov 0x05,r5
            0x0ce3278e      0b43           jsr @r3
            0x0ce32790      e364           mov r14,r4
            0x0ce32792      3ad2           mov.l @(0xE8,PC),r2
            0x0ce32794      0b42           jsr @r2
            0x0ce32796      e364           mov r14,r4
            0x0ce32798      5f90           mov.w @(0xBE,PC),r0
            0x0ce3279a      01e3           mov 0x01,r3
            0x0ce3279c      35e2           mov 0x35,r2
            0x0ce3279e      340e           mov.b r3,@(r0,r14)
            0x0ce327a0      00e4           mov 0x00,r4
            0x0ce327a2      5b90           mov.w @(0xB6,PC),r0
            0x0ce327a4      05e6           mov 0x05,r6
            0x0ce327a6      36d3           mov.l @(0xD8,PC),r3
            0x0ce327a8      16e5           mov 0x16,r5
            0x0ce327aa      240e           mov.b r2,@(r0,r14)
            0x0ce327ac      0b70           add 0x0B,r0
            0x0ce327ae      450e           mov.w r4,@(r0,r14)
            0x0ce327b0      f270           add 0xF2,r0
            0x0ce327b2      440e           mov.b r4,@(r0,r14)
            0x0ce327b4      2670           add 0x26,r0
            0x0ce327b6      460e           mov.l r4,@(r0,r14)
            0x0ce327b8      e364           mov r14,r4
            0x0ce327ba      e284           mov.b @(0x2,r14),r0
            0x0ce327bc      3262           mov.l @r3,r2
            0x0ce327be      0c60           extu.b r0,r0
/ (fcn) fcn.0ce327c0 18
|   fcn.0ce327c0 ();
|           ; CALL XREF from aav.0x0ce3297c (+0x96)
|           0x0ce327c0      0040           shll r0
|           0x0ce327c2      7c72           add 0x7C,r2
|           0x0ce327c4      2d01           mov.w @(r0,r2),r1
|           0x0ce327c6      0171           add 0x01,r1
|           0x0ce327c8      1502           mov.w r1,@(r0,r2)
|           0x0ce327ca      264f           lds.l @r15+,pr
|           0x0ce327cc      2dd2           mov.l @(0xB4,PC),r2
|           0x0ce327ce      2b42           jmp @r2
\           0x0ce327d0      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce327d2:
            ; UNKNOWN XREF from aav.0x0ce34038 (+0x4)
            0x0ce327d2      e62f           mov.l r14,@-r15
            0x0ce327d4      436e           mov r4,r14
            0x0ce327d6      d62f           mov.l r13,@-r15
            0x0ce327d8      224f           sts.l pr,@-r15
            0x0ce327da      22d3           mov.l @(0x88,PC),r3
            0x0ce327dc      0b43           jsr @r3
            0x0ce327de      536d           mov r5,r13
            0x0ce327e0      3d90           mov.w @(0x7A,PC),r0
            0x0ce327e2      ec02           mov.b @(r0,r14),r2
            0x0ce327e4      2822           tst r2,r2
            0x0ce327e6      1589           bt 0x0ce32814
            0x0ce327e8      e684           mov.b @(0x6,r14),r0
            0x0ce327ea      00e3           mov 0x00,r3
            0x0ce327ec      3365           mov r3,r5
            0x0ce327ee      3367           mov r3,r7
            0x0ce327f0      0170           add 0x01,r0
            0x0ce327f2      3366           mov r3,r6
            0x0ce327f4      e680           mov.b r0,@(0x6,r14)
            0x0ce327f6      0be2           mov 0x0B,r2
            0x0ce327f8      3190           mov.w @(0x62,PC),r0
            0x0ce327fa      340e           mov.b r3,@(r0,r14)
            0x0ce327fc      20e0           mov 0x20,r0
            0x0ce327fe      22d3           mov.l @(0x88,PC),r3
            0x0ce32800      202d           mov.b r2,@r13
            0x0ce32802      d180           mov.b r0,@(0x1,r13)
            0x0ce32804      03e0           mov 0x03,r0
            0x0ce32806      d181           mov.w r0,@(0x2,r13)
            0x0ce32808      0b43           jsr @r3
            0x0ce3280a      e364           mov r14,r4
            0x0ce3280c      2890           mov.w @(0x50,PC),r0
            0x0ce3280e      d480           mov.b r0,@(0x4,r13)
            0x0ce32810      0ae0           mov 0x0A,r0
            0x0ce32812      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce327d2 (+0x14)
            0x0ce32814      264f           lds.l @r15+,pr
            0x0ce32816      f66d           mov.l @r15+,r13
            0x0ce32818      0b00           rts 
            0x0ce3281a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3281c:
            ; UNKNOWN XREF from aav.0x0ce34038 (+0x8)
            0x0ce3281c      e62f           mov.l r14,@-r15
            0x0ce3281e      436e           mov r4,r14
            0x0ce32820      d62f           mov.l r13,@-r15
            0x0ce32822      536d           mov r5,r13
            0x0ce32824      1c90           mov.w @(0x38,PC),r0
            0x0ce32826      d365           mov r13,r5
            0x0ce32828      224f           sts.l pr,@-r15
            0x0ce3282a      d480           mov.b r0,@(0x4,r13)
            0x0ce3282c      38ba           bsr aav.0x0ce31ca0
            0x0ce3282e      e364           mov r14,r4
            0x0ce32830      0cd2           mov.l @(0x30,PC),r2
            0x0ce32832      0b42           jsr @r2
            0x0ce32834      e364           mov r14,r4
            0x0ce32836      ee85           mov.w @(0x1C,r14),r0
            0x0ce32838      ff70           add 0xFF,r0
            0x0ce3283a      ee81           mov.w r0,@(0x1C,r14)
            0x0ce3283c      0f60           exts.w r0,r0
            0x0ce3283e      1140           cmp/pz r0
            0x0ce32840      0689           bt 0x0ce32850
            0x0ce32842      e684           mov.b @(0x6,r14),r0
            0x0ce32844      0170           add 0x01,r0
            0x0ce32846      e680           mov.b r0,@(0x6,r14)
            0x0ce32848      00e0           mov 0x00,r0
            0x0ce3284a      d180           mov.b r0,@(0x1,r13)
            0x0ce3284c      08e0           mov 0x08,r0
            0x0ce3284e      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce3281c (+0x24)
            0x0ce32850      264f           lds.l @r15+,pr
            0x0ce32852      f66d           mov.l @r15+,r13
            0x0ce32854      0b00           rts 
            0x0ce32856      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce32858      a402           mov.b r10,@(r0,r2)
            0x0ce3285a      f901           .word 0x01F9
            0x0ce3285c      a101           .word 0x01A1
            0x0ce3285e      4101           .word 0x0141
            0x0ce32860      ff00           mac.l @r15+,@r0+
            0x0ce32862      0000           .word 0x0000
            0x0ce32864      ee4d           ldc r13,r6_bank
            0x0ce32866      038c           .word 0x8C03
            0x0ce32868      4816           mov.l r4,@(0x20,r6)
            0x0ce3286a      058c           .word 0x8C05
            0x0ce3286c      .dword 0x0ce34038 ; aav.0x0ce34038
            0x0ce32870      6251           mov.l @(0x8,r6),r1
            0x0ce32872      038c           .word 0x8C03
            0x0ce32874      8a21           xor r8,r1
            0x0ce32876      058c           .word 0x8C05
            0x0ce32878      e46d           mov.b @r14+,r13
            0x0ce3287a      058c           .word 0x8C05
            0x0ce3287c      5a11           mov.l r5,@(0x28,r1)
            0x0ce3287e      058c           .word 0x8C05
            0x0ce32880      b096           mov.w @(0x160,PC),r6
            0x0ce32882      288c           .word 0x8C28
            0x0ce32884      8c4e           shad r8,r14
            0x0ce32886      038c           .word 0x8C03
            0x0ce32888      e48e           .word 0x8EE4
            0x0ce3288a      068c           .word 0x8C06

;==============================================================================
            ;-- aav.0x0ce3288c:
            ; UNKNOWN XREF from aav.0x0ce34038 (+0xc)
            0x0ce3288c      e62f           mov.l r14,@-r15
            0x0ce3288e      224f           sts.l pr,@-r15
            0x0ce32890      fc7f           add 0xFC,r15
            0x0ce32892      a790           mov.w @(0x14E,PC),r0
            0x0ce32894      5363           mov r5,r3
            0x0ce32896      522f           mov.l r5,@r15
            0x0ce32898      436e           mov r4,r14
            0x0ce3289a      3480           mov.b r0,@(0x4,r3)
            0x0ce3289c      54d3           mov.l @(0x150,PC),r3
            0x0ce3289e      0b43           jsr @r3
            0x0ce328a0      e364           mov r14,r4
            0x0ce328a2      ee85           mov.w @(0x1C,r14),r0
            0x0ce328a4      ff70           add 0xFF,r0
            0x0ce328a6      ee81           mov.w r0,@(0x1C,r14)
            0x0ce328a8      0f60           exts.w r0,r0
            0x0ce328aa      1140           cmp/pz r0
            0x0ce328ac      1189           bt 0x0ce328d2
            0x0ce328ae      e684           mov.b @(0x6,r14),r0
            0x0ce328b0      0170           add 0x01,r0
            0x0ce328b2      e680           mov.b r0,@(0x6,r14)
            0x0ce328b4      00e0           mov 0x00,r0
            0x0ce328b6      f263           mov.l @r15,r3
            0x0ce328b8      0365           mov r0,r5
            0x0ce328ba      3480           mov.b r0,@(0x4,r3)
            0x0ce328bc      4dd3           mov.l @(0x134,PC),r3
            0x0ce328be      0b43           jsr @r3
            0x0ce328c0      e364           mov r14,r4
            0x0ce328c2      e364           mov r14,r4
            0x0ce328c4      16e5           mov 0x16,r5
            0x0ce328c6      06e6           mov 0x06,r6
            0x0ce328c8      047f           add 0x04,r15
            0x0ce328ca      264f           lds.l @r15+,pr
            0x0ce328cc      4ad2           mov.l @(0x128,PC),r2
            0x0ce328ce      2b42           jmp @r2
            0x0ce328d0      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3288c (+0x20)
            0x0ce328d2      047f           add 0x04,r15
            0x0ce328d4      264f           lds.l @r15+,pr
            0x0ce328d6      0b00           rts 
            0x0ce328d8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce328da:
            ; UNKNOWN XREF from aav.0x0ce34038 (+0x10)
            0x0ce328da      e62f           mov.l r14,@-r15
            0x0ce328dc      224f           sts.l pr,@-r15
            0x0ce328de      44d3           mov.l @(0x110,PC),r3
            0x0ce328e0      0b43           jsr @r3
            0x0ce328e2      436e           mov r4,r14
            0x0ce328e4      0e60           exts.b r0,r0
            0x0ce328e6      1140           cmp/pz r0
            0x0ce328e8      0b89           bt 0x0ce32902
            0x0ce328ea      44d3           mov.l @(0x110,PC),r3
            0x0ce328ec      2be5           mov 0x2B,r5
            0x0ce328ee      0b43           jsr @r3
            0x0ce328f0      e364           mov r14,r4
            0x0ce328f2      7890           mov.w @(0xF0,PC),r0
            0x0ce328f4      00e2           mov 0x00,r2
            0x0ce328f6      42d3           mov.l @(0x108,PC),r3
            0x0ce328f8      e364           mov r14,r4
            0x0ce328fa      240e           mov.b r2,@(r0,r14)
            0x0ce328fc      264f           lds.l @r15+,pr
            0x0ce328fe      2b43           jmp @r3
            0x0ce32900      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce328da (+0xe)
            0x0ce32902      264f           lds.l @r15+,pr
            0x0ce32904      0b00           rts 
            0x0ce32906      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32908:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x24)
            0x0ce32908      e62f           mov.l r14,@-r15
            0x0ce3290a      436e           mov r4,r14
            0x0ce3290c      5ce1           mov 0x5C,r1
            0x0ce3290e      3dd3           mov.l @(0xF4,PC),r3
            0x0ce32910      ec31           add r14,r1
            0x0ce32912      34e0           mov 0x34,r0
            0x0ce32914      224f           sts.l pr,@-r15
            0x0ce32916      18f3           fmov @r1,fr3
            0x0ce32918      68e1           mov 0x68,r1
            0x0ce3291a      e6f2           fmov @(r0,r14),fr2
            0x0ce3291c      ec31           add r14,r1
            0x0ce3291e      30f2           fadd fr3,fr2
            0x0ce32920      27fe           fmov fr2,@(r0,r14)
            0x0ce32922      5ce0           mov 0x5C,r0
            0x0ce32924      e6f2           fmov @(r0,r14),fr2
            0x0ce32926      18f3           fmov @r1,fr3
            0x0ce32928      30f2           fadd fr3,fr2
            0x0ce3292a      27fe           fmov fr2,@(r0,r14)
            0x0ce3292c      0b43           jsr @r3
            0x0ce3292e      e364           mov r14,r4
            0x0ce32930      e684           mov.b @(0x6,r14),r0
            0x0ce32932      e364           mov r14,r4
            0x0ce32934      34d1           mov.l @(0xD0,PC),r1
            0x0ce32936      0c60           extu.b r0,r0
            0x0ce32938      264f           lds.l @r15+,pr
            0x0ce3293a      0840           shll2 r0
            0x0ce3293c      1e03           mov.l @(r0,r1),r3
            0x0ce3293e      2b43           jmp @r3
            0x0ce32940      f66e           mov.l @r15+,r14
/ (fcn) fcn.0ce32942 42
|   fcn.0ce32942 ();
|           ; CALL XREF from aav.0x0ce3297c (+0x22)
|           ; CALL XREF from aav.0x0ce32a24 (+0x8e)
|           ; CALL XREF from aav.0x0ce32b0c (+0x8e)
|           ; CALL XREF from aav.0x0ce32bda (+0x74)
|           0x0ce32942      32c7           mova @(0xC8,PC),r0
|           0x0ce32944      08f3           fmov @r0,fr3
|           0x0ce32946      5ce0           mov 0x5C,r0
|           0x0ce32948      37f4           fmov fr3,@(r0,r4)
|           0x0ce3294a      31c7           mova @(0xC4,PC),r0
|           0x0ce3294c      08f3           fmov @r0,fr3
|           0x0ce3294e      68e0           mov 0x68,r0
|           0x0ce32950      37f4           fmov fr3,@(r0,r4)
|           0x0ce32952      4990           mov.w @(0x92,PC),r0
|           0x0ce32954      4c03           mov.b @(r0,r4),r3
|           0x0ce32956      3823           tst r3,r3
|           0x0ce32958      088f           bf.s 0x0ce3296c
|           0x0ce3295a      00e5           mov 0x00,r5
            0x0ce3295c      5ce0           mov 0x5C,r0
            0x0ce3295e      46f3           fmov @(r0,r4),fr3
            0x0ce32960      4df3           fneg fr3
            0x0ce32962      37f4           fmov fr3,@(r0,r4)
            0x0ce32964      68e0           mov 0x68,r0
            0x0ce32966      46f3           fmov @(r0,r4),fr3
            0x0ce32968      4df3           fneg fr3
            0x0ce3296a      37f4           fmov fr3,@(r0,r4)
|           ; CODE XREF from fcn.0ce32942 (0xce32958)
|           0x0ce3296c      3d90           mov.w @(0x7A,PC),r0
|           0x0ce3296e      5504           mov.w r5,@(r0,r4)
|           0x0ce32970      0270           add 0x02,r0
|           0x0ce32972      5504           mov.w r5,@(r0,r4)
|           0x0ce32974      5360           mov r5,r0
|           0x0ce32976      0900           nop 
|           0x0ce32978      0b00           rts 
\           0x0ce3297a      4e81           mov.w r0,@(0x1C,r4)
            ;-- aav.0x0ce3297c:
            ; UNKNOWN XREF from aav.0x0ce3404c ()
            0x0ce3297c      e62f           mov.l r14,@-r15
            0x0ce3297e      436e           mov r4,r14
            0x0ce32980      d62f           mov.l r13,@-r15
            0x0ce32982      00ed           mov 0x00,r13
            0x0ce32984      224f           sts.l pr,@-r15
            0x0ce32986      e684           mov.b @(0x6,r14),r0
            0x0ce32988      d365           mov r13,r5
            0x0ce3298a      1ad3           mov.l @(0x68,PC),r3
            0x0ce3298c      0170           add 0x01,r0
            0x0ce3298e      e680           mov.b r0,@(0x6,r14)
            0x0ce32990      2990           mov.w @(0x52,PC),r0
            0x0ce32992      d40e           mov.b r13,@(r0,r14)
            0x0ce32994      0b43           jsr @r3
            0x0ce32996      e364           mov r14,r4
            0x0ce32998      1ed2           mov.l @(0x78,PC),r2
            0x0ce3299a      0b42           jsr @r2
            0x0ce3299c      e364           mov r14,r4
            0x0ce3299e      d0bf           bsr fcn.0ce32942
            0x0ce329a0      e364           mov r14,r4
            0x0ce329a2      1dd2           mov.l @(0x74,PC),r2
            0x0ce329a4      0ae5           mov 0x0A,r5
            0x0ce329a6      0b42           jsr @r2
            0x0ce329a8      e364           mov r14,r4
            0x0ce329aa      1f90           mov.w @(0x3E,PC),r0
            0x0ce329ac      3be3           mov 0x3B,r3
            0x0ce329ae      340e           mov.b r3,@(r0,r14)
            0x0ce329b0      0b70           add 0x0B,r0
            0x0ce329b2      d50e           mov.w r13,@(r0,r14)
            0x0ce329b4      f270           add 0xF2,r0
            0x0ce329b6      d40e           mov.b r13,@(r0,r14)
            0x0ce329b8      2670           add 0x26,r0
            0x0ce329ba      18d3           mov.l @(0x60,PC),r3
            0x0ce329bc      d60e           mov.l r13,@(r0,r14)
            0x0ce329be      e284           mov.b @(0x2,r14),r0
            0x0ce329c0      3262           mov.l @r3,r2
            0x0ce329c2      0c60           extu.b r0,r0
            0x0ce329c4      0040           shll r0
            0x0ce329c6      7c72           add 0x7C,r2
            0x0ce329c8      2d01           mov.w @(r0,r2),r1
            0x0ce329ca      0171           add 0x01,r1
            0x0ce329cc      1502           mov.w r1,@(r0,r2)
            0x0ce329ce      14d2           mov.l @(0x50,PC),r2
            0x0ce329d0      0b42           jsr @r2
            0x0ce329d2      e364           mov r14,r4
            0x0ce329d4      264f           lds.l @r15+,pr
            0x0ce329d6      08d3           mov.l @(0x20,PC),r3
            0x0ce329d8      09e6           mov 0x09,r6
            0x0ce329da      14e5           mov 0x14,r5
            0x0ce329dc      e364           mov r14,r4
            0x0ce329de      f66d           mov.l @r15+,r13
            0x0ce329e0      2b43           jmp @r3
            0x0ce329e2      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce329e4      ff00           mac.l @r15+,@r0+
            0x0ce329e6      f901           .word 0x01F9
            0x0ce329e8      d201           stc r5_bank,r1
            0x0ce329ea      5003           .word 0x0350
            0x0ce329ec      a101           .word 0x01A1
            0x0ce329ee      0000           .word 0x0000
            0x0ce329f0      ee4d           ldc r13,r6_bank
            0x0ce329f2      038c           .word 0x8C03
            0x0ce329f4      6251           mov.l @(0x8,r6),r1
            0x0ce329f6      038c           .word 0x8C03
            0x0ce329f8      8c4e           shad r8,r14
            0x0ce329fa      038c           .word 0x8C03
            0x0ce329fc      0820           tst r0,r0
            0x0ce329fe      048c           .word 0x8C04
            0x0ce32a00      4816           mov.l r4,@(0x20,r6)
            0x0ce32a02      058c           .word 0x8C05
            0x0ce32a04      842c           mov.b r8,@-r12
            0x0ce32a06      058c           .word 0x8C05
            0x0ce32a08      .dword 0x0ce3404c ; aav.0x0ce3404c
            0x0ce32a0c      5555           mov.l @(0x14,r5),r5
            0x0ce32a0e      5541           .word 0x4155
            0x0ce32a10      5555           mov.l @(0x14,r5),r5
            0x0ce32a12      d5be           bsr fcn.0ce327c0
            0x0ce32a14      8a21           xor r8,r1
            0x0ce32a16      058c           .word 0x8C05
            0x0ce32a18      e46d           mov.b @r14+,r13
            0x0ce32a1a      058c           .word 0x8C05
            0x0ce32a1c      b096           mov.w @(0x160,PC),r6
            0x0ce32a1e      288c           .word 0x8C28
            0x0ce32a20      5a11           mov.l r5,@(0x28,r1)
            0x0ce32a22      058c           .word 0x8C05

;==============================================================================
            ;-- aav.0x0ce32a24:
            ; UNKNOWN XREF from aav.0x0ce3404c (+0x4)
            0x0ce32a24      e62f           mov.l r14,@-r15
            0x0ce32a26      436e           mov r4,r14
            0x0ce32a28      d62f           mov.l r13,@-r15
            0x0ce32a2a      224f           sts.l pr,@-r15
            0x0ce32a2c      33d3           mov.l @(0xCC,PC),r3
            0x0ce32a2e      0b43           jsr @r3
            0x0ce32a30      00ed           mov 0x00,r13
            0x0ce32a32      0e60           exts.b r0,r0
            0x0ce32a34      1140           cmp/pz r0
            0x0ce32a36      2c8b           bf 0x0ce32a92
            0x0ce32a38      5b90           mov.w @(0xB6,PC),r0
            0x0ce32a3a      ec03           mov.b @(r0,r14),r3
            0x0ce32a3c      3823           tst r3,r3
            0x0ce32a3e      1289           bt 0x0ce32a66
            0x0ce32a40      d40e           mov.b r13,@(r0,r14)
            0x0ce32a42      6170           add 0x61,r0
            0x0ce32a44      3be3           mov 0x3B,r3
            0x0ce32a46      340e           mov.b r3,@(r0,r14)
            0x0ce32a48      0b70           add 0x0B,r0
            0x0ce32a4a      d50e           mov.w r13,@(r0,r14)
            0x0ce32a4c      f270           add 0xF2,r0
            0x0ce32a4e      d40e           mov.b r13,@(r0,r14)
            0x0ce32a50      2670           add 0x26,r0
            0x0ce32a52      2bd3           mov.l @(0xAC,PC),r3
            0x0ce32a54      d60e           mov.l r13,@(r0,r14)
            0x0ce32a56      e284           mov.b @(0x2,r14),r0
            0x0ce32a58      3262           mov.l @r3,r2
            0x0ce32a5a      0c60           extu.b r0,r0
            0x0ce32a5c      0040           shll r0
            0x0ce32a5e      7c72           add 0x7C,r2
            0x0ce32a60      2d01           mov.w @(r0,r2),r1
            0x0ce32a62      0171           add 0x01,r1
            0x0ce32a64      1502           mov.w r1,@(r0,r2)
            ; CODE XREF from aav.0x0ce32a24 (+0x1a)
            0x0ce32a66      4590           mov.w @(0x8A,PC),r0
            0x0ce32a68      ec03           mov.b @(r0,r14),r3
            0x0ce32a6a      3823           tst r3,r3
            0x0ce32a6c      3d89           bt 0x0ce32aea
            0x0ce32a6e      25d3           mov.l @(0x94,PC),r3
            0x0ce32a70      0b43           jsr @r3
            0x0ce32a72      e364           mov r14,r4
            0x0ce32a74      0820           tst r0,r0
            0x0ce32a76      098b           bf 0x0ce32a8c
            0x0ce32a78      3d90           mov.w @(0x7A,PC),r0
            0x0ce32a7a      ed03           mov.w @(r0,r14),r3
            0x0ce32a7c      0470           add 0x04,r0
            0x0ce32a7e      ed02           mov.w @(r0,r14),r2
            0x0ce32a80      3d63           extu.w r3,r3
            0x0ce32a82      2d62           extu.w r2,r2
            0x0ce32a84      2b23           or r2,r3
            0x0ce32a86      3792           mov.w @(0x6E,PC),r2
            0x0ce32a88      2823           tst r2,r3
            0x0ce32a8a      2e89           bt 0x0ce32aea
            ; CODE XREF from aav.0x0ce32a24 (+0x52)
            0x0ce32a8c      01e0           mov 0x01,r0
            0x0ce32a8e      2ca0           bra 0x0ce32aea
            0x0ce32a90      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce32a24 (+0x12)
            0x0ce32a92      ee85           mov.w @(0x1C,r14),r0
            0x0ce32a94      0820           tst r0,r0
            0x0ce32a96      098b           bf 0x0ce32aac
            0x0ce32a98      05e0           mov 0x05,r0
            0x0ce32a9a      1bd3           mov.l @(0x6C,PC),r3
            0x0ce32a9c      e364           mov r14,r4
            0x0ce32a9e      e680           mov.b r0,@(0x6,r14)
            0x0ce32aa0      264f           lds.l @r15+,pr
            0x0ce32aa2      10e6           mov 0x10,r6
            0x0ce32aa4      14e5           mov 0x14,r5
            0x0ce32aa6      f66d           mov.l @r15+,r13
            0x0ce32aa8      2b43           jmp @r3
            0x0ce32aaa      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32a24 (+0x72)
            0x0ce32aac      e684           mov.b @(0x6,r14),r0
            0x0ce32aae      0170           add 0x01,r0
            0x0ce32ab0      e680           mov.b r0,@(0x6,r14)
            0x0ce32ab2      46bf           bsr fcn.0ce32942
            0x0ce32ab4      e364           mov r14,r4
            0x0ce32ab6      2090           mov.w @(0x40,PC),r0
            0x0ce32ab8      3ce2           mov 0x3C,r2
            0x0ce32aba      11d3           mov.l @(0x44,PC),r3
            0x0ce32abc      0ae6           mov 0x0A,r6
            0x0ce32abe      240e           mov.b r2,@(r0,r14)
            0x0ce32ac0      0b70           add 0x0B,r0
            0x0ce32ac2      d50e           mov.w r13,@(r0,r14)
            0x0ce32ac4      f270           add 0xF2,r0
            0x0ce32ac6      d40e           mov.b r13,@(r0,r14)
            0x0ce32ac8      2670           add 0x26,r0
            0x0ce32aca      d60e           mov.l r13,@(r0,r14)
            0x0ce32acc      14e5           mov 0x14,r5
            0x0ce32ace      e284           mov.b @(0x2,r14),r0
            0x0ce32ad0      e364           mov r14,r4
            0x0ce32ad2      3262           mov.l @r3,r2
            0x0ce32ad4      0c60           extu.b r0,r0
            0x0ce32ad6      0040           shll r0
            0x0ce32ad8      7c72           add 0x7C,r2
            0x0ce32ada      2d01           mov.w @(r0,r2),r1
            0x0ce32adc      0171           add 0x01,r1
            0x0ce32ade      1502           mov.w r1,@(r0,r2)
            0x0ce32ae0      264f           lds.l @r15+,pr
            0x0ce32ae2      09d2           mov.l @(0x24,PC),r2
            0x0ce32ae4      f66d           mov.l @r15+,r13
            0x0ce32ae6      2b42           jmp @r2
            0x0ce32ae8      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce32a24 (+0x48, +0x66, +0x6a)
            0x0ce32aea      264f           lds.l @r15+,pr
            0x0ce32aec      f66d           mov.l @r15+,r13
            0x0ce32aee      0b00           rts 
            0x0ce32af0      f66e           mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
            0x0ce32af2      4001           .word 0x0140
            0x0ce32af4      4101           .word 0x0141
            0x0ce32af6      4e03           mov.l @(r0,r4),r3
            0x0ce32af8      6003           .word 0x0360
            0x0ce32afa      a101           .word 0x01A1
            0x0ce32afc      ee4d           ldc r13,r6_bank
            0x0ce32afe      038c           .word 0x8C03
            0x0ce32b00      b096           mov.w @(0x160,PC),r6
            0x0ce32b02      288c           .word 0x8C28
            0x0ce32b04      545d           mov.l @(0x10,r5),r13
            0x0ce32b06      058c           .word 0x8C05
            0x0ce32b08      8c4e           shad r8,r14
            0x0ce32b0a      038c           .word 0x8C03

;==============================================================================
            ;-- aav.0x0ce32b0c:
            ; UNKNOWN XREF from aav.0x0ce3404c (+0x8)
            0x0ce32b0c      e62f           mov.l r14,@-r15
            0x0ce32b0e      436e           mov r4,r14
            0x0ce32b10      d62f           mov.l r13,@-r15
            0x0ce32b12      224f           sts.l pr,@-r15
            0x0ce32b14      42d3           mov.l @(0x108,PC),r3
            0x0ce32b16      0b43           jsr @r3
            0x0ce32b18      00ed           mov 0x00,r13
            0x0ce32b1a      0e60           exts.b r0,r0
            0x0ce32b1c      1140           cmp/pz r0
            0x0ce32b1e      2c8b           bf 0x0ce32b7a
            0x0ce32b20      7990           mov.w @(0xF2,PC),r0
            0x0ce32b22      ec03           mov.b @(r0,r14),r3
            0x0ce32b24      3823           tst r3,r3
            0x0ce32b26      1289           bt 0x0ce32b4e
            0x0ce32b28      d40e           mov.b r13,@(r0,r14)
            0x0ce32b2a      6170           add 0x61,r0
            0x0ce32b2c      3be3           mov 0x3B,r3
            0x0ce32b2e      340e           mov.b r3,@(r0,r14)
            0x0ce32b30      0b70           add 0x0B,r0
            0x0ce32b32      d50e           mov.w r13,@(r0,r14)
            0x0ce32b34      f270           add 0xF2,r0
            0x0ce32b36      d40e           mov.b r13,@(r0,r14)
            0x0ce32b38      2670           add 0x26,r0
            0x0ce32b3a      3ad3           mov.l @(0xE8,PC),r3
            0x0ce32b3c      d60e           mov.l r13,@(r0,r14)
            0x0ce32b3e      e284           mov.b @(0x2,r14),r0
            0x0ce32b40      3262           mov.l @r3,r2
            0x0ce32b42      0c60           extu.b r0,r0
            0x0ce32b44      0040           shll r0
            0x0ce32b46      7c72           add 0x7C,r2
            0x0ce32b48      2d01           mov.w @(r0,r2),r1
            0x0ce32b4a      0171           add 0x01,r1
            0x0ce32b4c      1502           mov.w r1,@(r0,r2)
            ; CODE XREF from aav.0x0ce32b0c (+0x1a)
            0x0ce32b4e      6390           mov.w @(0xC6,PC),r0
            0x0ce32b50      ec03           mov.b @(r0,r14),r3
            0x0ce32b52      3823           tst r3,r3
            0x0ce32b54      3d89           bt 0x0ce32bd2
            0x0ce32b56      34d3           mov.l @(0xD0,PC),r3
            0x0ce32b58      0b43           jsr @r3
            0x0ce32b5a      e364           mov r14,r4
            0x0ce32b5c      0820           tst r0,r0
            0x0ce32b5e      098b           bf 0x0ce32b74
            0x0ce32b60      5b90           mov.w @(0xB6,PC),r0
            0x0ce32b62      ed03           mov.w @(r0,r14),r3
            0x0ce32b64      0470           add 0x04,r0
            0x0ce32b66      ed02           mov.w @(r0,r14),r2
            0x0ce32b68      3d63           extu.w r3,r3
            0x0ce32b6a      2d62           extu.w r2,r2
            0x0ce32b6c      2b23           or r2,r3
            0x0ce32b6e      5592           mov.w @(0xAA,PC),r2
            0x0ce32b70      2823           tst r2,r3
            0x0ce32b72      2e89           bt 0x0ce32bd2
            ; CODE XREF from aav.0x0ce32b0c (+0x52)
            0x0ce32b74      01e0           mov 0x01,r0
            0x0ce32b76      2ca0           bra 0x0ce32bd2
            0x0ce32b78      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce32b0c (+0x12)
            0x0ce32b7a      ee85           mov.w @(0x1C,r14),r0
            0x0ce32b7c      0820           tst r0,r0
            0x0ce32b7e      098b           bf 0x0ce32b94
            0x0ce32b80      05e0           mov 0x05,r0
            0x0ce32b82      2ad3           mov.l @(0xA8,PC),r3
            0x0ce32b84      e364           mov r14,r4
            0x0ce32b86      e680           mov.b r0,@(0x6,r14)
            0x0ce32b88      264f           lds.l @r15+,pr
            0x0ce32b8a      10e6           mov 0x10,r6
            0x0ce32b8c      14e5           mov 0x14,r5
            0x0ce32b8e      f66d           mov.l @r15+,r13
            0x0ce32b90      2b43           jmp @r3
            0x0ce32b92      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32b0c (+0x72)
            0x0ce32b94      e684           mov.b @(0x6,r14),r0
            0x0ce32b96      0170           add 0x01,r0
            0x0ce32b98      e680           mov.b r0,@(0x6,r14)
            0x0ce32b9a      d2be           bsr fcn.0ce32942
            0x0ce32b9c      e364           mov r14,r4
            0x0ce32b9e      3e90           mov.w @(0x7C,PC),r0
            0x0ce32ba0      3de2           mov 0x3D,r2
            0x0ce32ba2      20d3           mov.l @(0x80,PC),r3
            0x0ce32ba4      0be6           mov 0x0B,r6
            0x0ce32ba6      240e           mov.b r2,@(r0,r14)
            0x0ce32ba8      0b70           add 0x0B,r0
            0x0ce32baa      d50e           mov.w r13,@(r0,r14)
            0x0ce32bac      f270           add 0xF2,r0
            0x0ce32bae      d40e           mov.b r13,@(r0,r14)
            0x0ce32bb0      2670           add 0x26,r0
            0x0ce32bb2      d60e           mov.l r13,@(r0,r14)
            0x0ce32bb4      14e5           mov 0x14,r5
            0x0ce32bb6      e284           mov.b @(0x2,r14),r0
            0x0ce32bb8      e364           mov r14,r4
            0x0ce32bba      3262           mov.l @r3,r2
            0x0ce32bbc      0c60           extu.b r0,r0
            0x0ce32bbe      0040           shll r0
            0x0ce32bc0      7c72           add 0x7C,r2
            0x0ce32bc2      2d01           mov.w @(r0,r2),r1
            0x0ce32bc4      0171           add 0x01,r1
            0x0ce32bc6      1502           mov.w r1,@(r0,r2)
            0x0ce32bc8      264f           lds.l @r15+,pr
            0x0ce32bca      18d2           mov.l @(0x60,PC),r2
            0x0ce32bcc      f66d           mov.l @r15+,r13
            0x0ce32bce      2b42           jmp @r2
            0x0ce32bd0      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce32b0c (+0x48, +0x66, +0x6a)
            0x0ce32bd2      264f           lds.l @r15+,pr
            0x0ce32bd4      f66d           mov.l @r15+,r13
            0x0ce32bd6      0b00           rts 
            0x0ce32bd8      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32bda:
            ; UNKNOWN XREF from aav.0x0ce3404c (+0xc)
            0x0ce32bda      e62f           mov.l r14,@-r15
            0x0ce32bdc      224f           sts.l pr,@-r15
            0x0ce32bde      10d3           mov.l @(0x40,PC),r3
            0x0ce32be0      0b43           jsr @r3
            0x0ce32be2      436e           mov r4,r14
            0x0ce32be4      0e60           exts.b r0,r0
            0x0ce32be6      1140           cmp/pz r0
            0x0ce32be8      228b           bf 0x0ce32c30
            0x0ce32bea      1590           mov.w @(0x2A,PC),r0
            0x0ce32bec      ec03           mov.b @(r0,r14),r3
            0x0ce32bee      3823           tst r3,r3
            0x0ce32bf0      4989           bt 0x0ce32c86
            0x0ce32bf2      0dd3           mov.l @(0x34,PC),r3
            0x0ce32bf4      0b43           jsr @r3
            0x0ce32bf6      e364           mov r14,r4
            0x0ce32bf8      0820           tst r0,r0
            0x0ce32bfa      098b           bf 0x0ce32c10
            0x0ce32bfc      0d90           mov.w @(0x1A,PC),r0
            0x0ce32bfe      ed03           mov.w @(r0,r14),r3
            0x0ce32c00      0470           add 0x04,r0
            0x0ce32c02      ed02           mov.w @(r0,r14),r2
            0x0ce32c04      3d63           extu.w r3,r3
            0x0ce32c06      2d62           extu.w r2,r2
            0x0ce32c08      2b23           or r2,r3
            0x0ce32c0a      0792           mov.w @(0xE,PC),r2
            0x0ce32c0c      2823           tst r2,r3
            0x0ce32c0e      3a89           bt 0x0ce32c86
            ; CODE XREF from aav.0x0ce32bda (+0x20)
            0x0ce32c10      01e0           mov 0x01,r0
            0x0ce32c12      38a0           bra 0x0ce32c86
            0x0ce32c14      ee81           mov.w r0,@(0x1C,r14)
            0x0ce32c16      4001           .word 0x0140
            0x0ce32c18      4101           .word 0x0141
            0x0ce32c1a      4e03           mov.l @(r0,r4),r3
            0x0ce32c1c      6003           .word 0x0360
            0x0ce32c1e      a101           .word 0x01A1
            0x0ce32c20      ee4d           ldc r13,r6_bank
            0x0ce32c22      038c           .word 0x8C03
            0x0ce32c24      b096           mov.w @(0x160,PC),r6
            0x0ce32c26      288c           .word 0x8C28
            0x0ce32c28      545d           mov.l @(0x10,r5),r13
            0x0ce32c2a      058c           .word 0x8C05
            0x0ce32c2c      8c4e           shad r8,r14
            0x0ce32c2e      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce32bda (+0xe)
            0x0ce32c30      ee85           mov.w @(0x1C,r14),r0
            0x0ce32c32      0820           tst r0,r0
            0x0ce32c34      088b           bf 0x0ce32c48
            0x0ce32c36      50d3           mov.l @(0x140,PC),r3
            0x0ce32c38      05e0           mov 0x05,r0
            0x0ce32c3a      e364           mov r14,r4
            0x0ce32c3c      e680           mov.b r0,@(0x6,r14)
            0x0ce32c3e      264f           lds.l @r15+,pr
            0x0ce32c40      10e6           mov 0x10,r6
            0x0ce32c42      14e5           mov 0x14,r5
            0x0ce32c44      2b43           jmp @r3
            0x0ce32c46      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32bda (+0x5a)
            0x0ce32c48      e684           mov.b @(0x6,r14),r0
            0x0ce32c4a      0170           add 0x01,r0
            0x0ce32c4c      e680           mov.b r0,@(0x6,r14)
            0x0ce32c4e      78be           bsr fcn.0ce32942
            0x0ce32c50      e364           mov r14,r4
            0x0ce32c52      8c90           mov.w @(0x118,PC),r0
            0x0ce32c54      3ee2           mov 0x3E,r2
            0x0ce32c56      00e4           mov 0x00,r4
            0x0ce32c58      48d3           mov.l @(0x120,PC),r3
            0x0ce32c5a      240e           mov.b r2,@(r0,r14)
            0x0ce32c5c      0b70           add 0x0B,r0
            0x0ce32c5e      450e           mov.w r4,@(r0,r14)
            0x0ce32c60      f270           add 0xF2,r0
            0x0ce32c62      440e           mov.b r4,@(r0,r14)
            0x0ce32c64      2670           add 0x26,r0
            0x0ce32c66      460e           mov.l r4,@(r0,r14)
            0x0ce32c68      e364           mov r14,r4
            0x0ce32c6a      e284           mov.b @(0x2,r14),r0
            0x0ce32c6c      0ce6           mov 0x0C,r6
            0x0ce32c6e      3262           mov.l @r3,r2
            0x0ce32c70      14e5           mov 0x14,r5
            0x0ce32c72      0c60           extu.b r0,r0
            0x0ce32c74      0040           shll r0
            0x0ce32c76      7c72           add 0x7C,r2
            0x0ce32c78      2d01           mov.w @(r0,r2),r1
            0x0ce32c7a      0171           add 0x01,r1
            0x0ce32c7c      1502           mov.w r1,@(r0,r2)
            0x0ce32c7e      264f           lds.l @r15+,pr
            0x0ce32c80      3dd2           mov.l @(0xF4,PC),r2
            0x0ce32c82      2b42           jmp @r2
            0x0ce32c84      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce32bda (+0x16, +0x34, +0x38)
            0x0ce32c86      264f           lds.l @r15+,pr
            0x0ce32c88      0b00           rts 
            0x0ce32c8a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32c8c:
            ; UNKNOWN XREF from aav.0x0ce3404c (+0x10)
            0x0ce32c8c      e62f           mov.l r14,@-r15
            0x0ce32c8e      224f           sts.l pr,@-r15
            0x0ce32c90      3bd3           mov.l @(0xEC,PC),r3
            0x0ce32c92      0b43           jsr @r3
            0x0ce32c94      436e           mov r4,r14
            0x0ce32c96      0e60           exts.b r0,r0
            0x0ce32c98      1140           cmp/pz r0
            0x0ce32c9a      0489           bt 0x0ce32ca6
            0x0ce32c9c      264f           lds.l @r15+,pr
            0x0ce32c9e      39d3           mov.l @(0xE4,PC),r3
            0x0ce32ca0      e364           mov r14,r4
            0x0ce32ca2      2b43           jmp @r3
            0x0ce32ca4      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32c8c (+0xe)
            0x0ce32ca6      6390           mov.w @(0xC6,PC),r0
            0x0ce32ca8      ec03           mov.b @(r0,r14),r3
            0x0ce32caa      3823           tst r3,r3
            0x0ce32cac      0789           bt 0x0ce32cbe
            0x0ce32cae      00e3           mov 0x00,r3
            0x0ce32cb0      e364           mov r14,r4
            0x0ce32cb2      340e           mov.b r3,@(r0,r14)
            0x0ce32cb4      03e5           mov 0x03,r5
            0x0ce32cb6      264f           lds.l @r15+,pr
            0x0ce32cb8      33d3           mov.l @(0xCC,PC),r3
            0x0ce32cba      2b43           jmp @r3
            0x0ce32cbc      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32c8c (+0x20)
            0x0ce32cbe      264f           lds.l @r15+,pr
            0x0ce32cc0      0b00           rts 
            0x0ce32cc2      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32cc4:
            ; UNKNOWN XREF from aav.0x0ce3404c (+0x14)
            0x0ce32cc4      224f           sts.l pr,@-r15
            0x0ce32cc6      fc7f           add 0xFC,r15
            0x0ce32cc8      2dd3           mov.l @(0xB4,PC),r3
            0x0ce32cca      0b43           jsr @r3
            0x0ce32ccc      422f           mov.l r4,@r15
            0x0ce32cce      0e60           exts.b r0,r0
            0x0ce32cd0      1140           cmp/pz r0
            0x0ce32cd2      0489           bt 0x0ce32cde
            0x0ce32cd4      f264           mov.l @r15,r4
            0x0ce32cd6      047f           add 0x04,r15
            0x0ce32cd8      2ad3           mov.l @(0xA8,PC),r3
            0x0ce32cda      2b43           jmp @r3
            0x0ce32cdc      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce32cc4 (+0xe)
            0x0ce32cde      047f           add 0x04,r15
            0x0ce32ce0      264f           lds.l @r15+,pr
            0x0ce32ce2      0b00           rts 
            0x0ce32ce4      0900           nop 
            ;-- aav.0x0ce32ce6:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x30)
            0x0ce32ce6      4363           mov r4,r3
            0x0ce32ce8      28d1           mov.l @(0xA0,PC),r1
            0x0ce32cea      462f           mov.l r4,@-r15
            0x0ce32cec      3684           mov.b @(0x6,r3),r0
            0x0ce32cee      0c60           extu.b r0,r0
            0x0ce32cf0      0840           shll2 r0
            0x0ce32cf2      1e03           mov.l @(r0,r1),r3
            0x0ce32cf4      2b43           jmp @r3
            0x0ce32cf6      047f           add 0x04,r15
            ;-- aav.0x0ce32cf8:
            ; UNKNOWN XREF from aav.0x0ce34064 ()
            0x0ce32cf8      e62f           mov.l r14,@-r15
            0x0ce32cfa      436e           mov r4,r14
            0x0ce32cfc      8df4           fldi0 fr4
            0x0ce32cfe      d62f           mov.l r13,@-r15
            0x0ce32d00      00ed           mov 0x00,r13
            0x0ce32d02      224f           sts.l pr,@-r15
            0x0ce32d04      e684           mov.b @(0x6,r14),r0
            0x0ce32d06      d365           mov r13,r5
            0x0ce32d08      21d3           mov.l @(0x84,PC),r3
            0x0ce32d0a      0170           add 0x01,r0
            0x0ce32d0c      e680           mov.b r0,@(0x6,r14)
            0x0ce32d0e      5ce0           mov 0x5C,r0
            0x0ce32d10      47fe           fmov fr4,@(r0,r14)
            0x0ce32d12      60e0           mov 0x60,r0
            0x0ce32d14      47fe           fmov fr4,@(r0,r14)
            0x0ce32d16      68e0           mov 0x68,r0
            0x0ce32d18      47fe           fmov fr4,@(r0,r14)
            0x0ce32d1a      6ce0           mov 0x6C,r0
            0x0ce32d1c      47fe           fmov fr4,@(r0,r14)
            0x0ce32d1e      2890           mov.w @(0x50,PC),r0
            0x0ce32d20      d40e           mov.b r13,@(r0,r14)
            0x0ce32d22      2790           mov.w @(0x4E,PC),r0
            0x0ce32d24      e6f3           fmov @(r0,r14),fr3
            0x0ce32d26      38e0           mov 0x38,r0
            0x0ce32d28      37fe           fmov fr3,@(r0,r14)
            0x0ce32d2a      0b43           jsr @r3
            0x0ce32d2c      e364           mov r14,r4
            0x0ce32d2e      19d2           mov.l @(0x64,PC),r2
            0x0ce32d30      0b42           jsr @r2
            0x0ce32d32      e364           mov r14,r4
            0x0ce32d34      18d3           mov.l @(0x60,PC),r3
            0x0ce32d36      0b43           jsr @r3
            0x0ce32d38      e364           mov r14,r4
            0x0ce32d3a      1890           mov.w @(0x30,PC),r0
            0x0ce32d3c      43e2           mov 0x43,r2
            0x0ce32d3e      0fd3           mov.l @(0x3C,PC),r3
            0x0ce32d40      2fe6           mov 0x2F,r6
            0x0ce32d42      240e           mov.b r2,@(r0,r14)
            0x0ce32d44      0b70           add 0x0B,r0
            0x0ce32d46      d50e           mov.w r13,@(r0,r14)
            0x0ce32d48      f270           add 0xF2,r0
            0x0ce32d4a      d40e           mov.b r13,@(r0,r14)
            0x0ce32d4c      2670           add 0x26,r0
            0x0ce32d4e      d60e           mov.l r13,@(r0,r14)
            0x0ce32d50      15e5           mov 0x15,r5
            0x0ce32d52      e284           mov.b @(0x2,r14),r0
            0x0ce32d54      e364           mov r14,r4
            0x0ce32d56      3262           mov.l @r3,r2
            0x0ce32d58      0c60           extu.b r0,r0
            0x0ce32d5a      0040           shll r0
            0x0ce32d5c      7c72           add 0x7C,r2
            0x0ce32d5e      2d01           mov.w @(r0,r2),r1
            0x0ce32d60      0171           add 0x01,r1
            0x0ce32d62      1502           mov.w r1,@(r0,r2)
            0x0ce32d64      264f           lds.l @r15+,pr
            0x0ce32d66      04d2           mov.l @(0x10,PC),r2
            0x0ce32d68      f66d           mov.l @r15+,r13
            0x0ce32d6a      2b42           jmp @r2
            0x0ce32d6c      f66e           mov.l @r15+,r14


            0x0ce32d6e      a101           .word 0x01A1
            0x0ce32d70      4101           .word 0x0141
            0x0ce32d72      f901           .word 0x01F9
            0x0ce32d74      1c04           mov.b @(r0,r1),r4
            0x0ce32d76      0000           .word 0x0000
            0x0ce32d78      8c4e           shad r8,r14
            0x0ce32d7a      038c           .word 0x8C03
            0x0ce32d7c      b096           mov.w @(0x160,PC),r6
            0x0ce32d7e      288c           .word 0x8C28
            0x0ce32d80      ee4d           ldc r13,r6_bank
            0x0ce32d82      038c           .word 0x8C03
            0x0ce32d84      4816           mov.l r4,@(0x20,r6)
            0x0ce32d86      058c           .word 0x8C05
            0x0ce32d88      408b           bf 0x0ce32e0c
            0x0ce32d8a      068c           .word 0x8C06
            0x0ce32d8c      .dword 0x0ce34064 ; aav.0x0ce34064
            0x0ce32d90      6251           mov.l @(0x8,r6),r1
            0x0ce32d92      038c           .word 0x8C03
            0x0ce32d94      8a21           xor r8,r1
            0x0ce32d96      058c           .word 0x8C05
            0x0ce32d98      5a11           mov.l r5,@(0x28,r1)
            0x0ce32d9a      058c           .word 0x8C05
            ;-- aav.0x0ce32d9c:
            ; UNKNOWN XREF from aav.0x0ce34064 (+0x4)
            0x0ce32d9c      e62f           mov.l r14,@-r15
            0x0ce32d9e      224f           sts.l pr,@-r15
            0x0ce32da0      f47f           add 0xF4,r15
            0x0ce32da2      4ed3           mov.l @(0x138,PC),r3
            0x0ce32da4      0b43           jsr @r3
            0x0ce32da6      436e           mov r4,r14
/ (fcn) fcn.0ce32da8 62
|   fcn.0ce32da8 ();
|           ; CALL XREF from aav.0x0ce32e5a (+0xb0)
|           0x0ce32da8      0e60           exts.b r0,r0
|           0x0ce32daa      1140           cmp/pz r0
|           0x0ce32dac      0689           bt 0x0ce32dbc
|           0x0ce32dae      4cd3           mov.l @(0x130,PC),r3
|           0x0ce32db0      0b43           jsr @r3
|           0x0ce32db2      e364           mov r14,r4
|           0x0ce32db4      0c7f           add 0x0C,r15
|           0x0ce32db6      264f           lds.l @r15+,pr
|           0x0ce32db8      0b00           rts 
|           0x0ce32dba      f66e           mov.l @r15+,r14
|           ; CODE XREF from fcn.0ce32da8 (0xce32dac)
|           0x0ce32dbc      8a90           mov.w @(0x114,PC),r0
|           0x0ce32dbe      ec02           mov.b @(r0,r14),r2
|           0x0ce32dc0      2822           tst r2,r2
|           0x0ce32dc2      0c89           bt 0x0ce32dde
|           0x0ce32dc4      00e3           mov 0x00,r3
|           0x0ce32dc6      f365           mov r15,r5
|           0x0ce32dc8      340e           mov.b r3,@(r0,r14)
|           0x0ce32dca      46c7           mova @(0x118,PC),r0
|           0x0ce32dcc      08f3           fmov @r0,fr3
|           0x0ce32dce      46c7           mova @(0x118,PC),r0
|           0x0ce32dd0      46d3           mov.l @(0x118,PC),r3
|           0x0ce32dd2      3aff           fmov fr3,@r15
|           0x0ce32dd4      08f3           fmov @r0,fr3
|           0x0ce32dd6      04e0           mov 0x04,r0
|           0x0ce32dd8      37ff           fmov fr3,@(r0,r15)
|           0x0ce32dda      0b43           jsr @r3
|           0x0ce32ddc      e364           mov r14,r4
|           ; CODE XREF from fcn.0ce32da8 (0xce32dc2)
|           0x0ce32dde      0c7f           add 0x0C,r15
|           0x0ce32de0      264f           lds.l @r15+,pr
|           0x0ce32de2      0b00           rts 
\           0x0ce32de4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32de6:
            ; UNKNOWN XREF from aav.0x0ce33f7c (+0x2c)
            0x0ce32de6      e62f           mov.l r14,@-r15
            0x0ce32de8      436e           mov r4,r14
            0x0ce32dea      224f           sts.l pr,@-r15
            0x0ce32dec      e684           mov.b @(0x6,r14),r0
            0x0ce32dee      0820           tst r0,r0
            0x0ce32df0      188b           bf 0x0ce32e24
            0x0ce32df2      e684           mov.b @(0x6,r14),r0
            0x0ce32df4      01e7           mov 0x01,r7
            0x0ce32df6      8df4           fldi0 fr4
            0x0ce32df8      7365           mov r7,r5
            0x0ce32dfa      0170           add 0x01,r0
            0x0ce32dfc      3cd3           mov.l @(0xF0,PC),r3
            0x0ce32dfe      e680           mov.b r0,@(0x6,r14)
            0x0ce32e00      5ce0           mov 0x5C,r0
            0x0ce32e02      47fe           fmov fr4,@(r0,r14)
            0x0ce32e04      60e0           mov 0x60,r0
            0x0ce32e06      47fe           fmov fr4,@(r0,r14)
            0x0ce32e08      68e0           mov 0x68,r0
            0x0ce32e0a      47fe           fmov fr4,@(r0,r14)
            ; CODE XREF from aav.0x0ce32cf8 (+0x90)
            0x0ce32e0c      6ce0           mov 0x6C,r0
            0x0ce32e0e      47fe           fmov fr4,@(r0,r14)
            0x0ce32e10      19e6           mov 0x19,r6
            0x0ce32e12      0b43           jsr @r3
            0x0ce32e14      e364           mov r14,r4
            0x0ce32e16      264f           lds.l @r15+,pr
            0x0ce32e18      36d2           mov.l @(0xD8,PC),r2
            0x0ce32e1a      e364           mov r14,r4
            0x0ce32e1c      04e6           mov 0x04,r6
            0x0ce32e1e      13e5           mov 0x13,r5
            0x0ce32e20      2b42           jmp @r2
            0x0ce32e22      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32de6 (+0xa)
            0x0ce32e24      2dd2           mov.l @(0xB4,PC),r2
            0x0ce32e26      0b42           jsr @r2
            0x0ce32e28      e364           mov r14,r4
            0x0ce32e2a      0e60           exts.b r0,r0
            0x0ce32e2c      1140           cmp/pz r0
            0x0ce32e2e      0889           bt 0x0ce32e42
            0x0ce32e30      31d2           mov.l @(0xC4,PC),r2
            0x0ce32e32      00e5           mov 0x00,r5
            0x0ce32e34      0b42           jsr @r2
            0x0ce32e36      e364           mov r14,r4
            0x0ce32e38      264f           lds.l @r15+,pr
            0x0ce32e3a      29d3           mov.l @(0xA4,PC),r3
            0x0ce32e3c      e364           mov r14,r4
            0x0ce32e3e      2b43           jmp @r3
            0x0ce32e40      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32de6 (+0x48)
            0x0ce32e42      264f           lds.l @r15+,pr
            0x0ce32e44      0b00           rts 
            0x0ce32e46      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32e48:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x38)
            0x0ce32e48      4363           mov r4,r3
            0x0ce32e4a      2cd1           mov.l @(0xB0,PC),r1
            0x0ce32e4c      462f           mov.l r4,@-r15
            0x0ce32e4e      3684           mov.b @(0x6,r3),r0
            0x0ce32e50      0c60           extu.b r0,r0
            0x0ce32e52      0840           shll2 r0
            0x0ce32e54      1e03           mov.l @(r0,r1),r3
            0x0ce32e56      2b43           jmp @r3
            0x0ce32e58      047f           add 0x04,r15
            ;-- aav.0x0ce32e5a:
            ; UNKNOWN XREF from aav.0x0ce3406c ()
            0x0ce32e5a      e62f           mov.l r14,@-r15
            0x0ce32e5c      436e           mov r4,r14
            0x0ce32e5e      224f           sts.l pr,@-r15
            0x0ce32e60      25d3           mov.l @(0x94,PC),r3
            0x0ce32e62      0b43           jsr @r3
            0x0ce32e64      00e5           mov 0x00,r5
            0x0ce32e66      e684           mov.b @(0x6,r14),r0
            0x0ce32e68      02e3           mov 0x02,r3
            0x0ce32e6a      0170           add 0x01,r0
            0x0ce32e6c      e680           mov.b r0,@(0x6,r14)
            0x0ce32e6e      3290           mov.w @(0x64,PC),r0
            0x0ce32e70      340e           mov.b r3,@(r0,r14)
            0x0ce32e72      23c7           mova @(0x8C,PC),r0
            0x0ce32e74      08f3           fmov @r0,fr3
            0x0ce32e76      5ce0           mov 0x5C,r0
            0x0ce32e78      37fe           fmov fr3,@(r0,r14)
            0x0ce32e7a      2d90           mov.w @(0x5A,PC),r0
            0x0ce32e7c      ec03           mov.b @(r0,r14),r3
            0x0ce32e7e      3823           tst r3,r3
            0x0ce32e80      038b           bf 0x0ce32e8a
            0x0ce32e82      5ce0           mov 0x5C,r0
            0x0ce32e84      e6f3           fmov @(r0,r14),fr3
            0x0ce32e86      4df3           fneg fr3
            0x0ce32e88      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce32e5a (+0x26)
            0x0ce32e8a      68e0           mov 0x68,r0
            0x0ce32e8c      8df3           fldi0 fr3
            0x0ce32e8e      37fe           fmov fr3,@(r0,r14)
            0x0ce32e90      1cc7           mova @(0x70,PC),r0
            0x0ce32e92      08f3           fmov @r0,fr3
            0x0ce32e94      60e0           mov 0x60,r0
            0x0ce32e96      3ae3           mov 0x3A,r3
            0x0ce32e98      37fe           fmov fr3,@(r0,r14)
            0x0ce32e9a      1bc7           mova @(0x6C,PC),r0
            0x0ce32e9c      08f3           fmov @r0,fr3
            0x0ce32e9e      6ce0           mov 0x6C,r0
            0x0ce32ea0      00e4           mov 0x00,r4
            0x0ce32ea2      37fe           fmov fr3,@(r0,r14)
            0x0ce32ea4      14e5           mov 0x14,r5
            0x0ce32ea6      1890           mov.w @(0x30,PC),r0
            0x0ce32ea8      07e6           mov 0x07,r6
            0x0ce32eaa      340e           mov.b r3,@(r0,r14)
            0x0ce32eac      0b70           add 0x0B,r0
            0x0ce32eae      450e           mov.w r4,@(r0,r14)
            0x0ce32eb0      f270           add 0xF2,r0
            0x0ce32eb2      440e           mov.b r4,@(r0,r14)
            0x0ce32eb4      2670           add 0x26,r0
            0x0ce32eb6      15d3           mov.l @(0x54,PC),r3
            0x0ce32eb8      460e           mov.l r4,@(r0,r14)
            0x0ce32eba      e284           mov.b @(0x2,r14),r0
            0x0ce32ebc      3262           mov.l @r3,r2
            0x0ce32ebe      0c60           extu.b r0,r0
            0x0ce32ec0      0040           shll r0
            0x0ce32ec2      7c72           add 0x7C,r2
            0x0ce32ec4      2d01           mov.w @(r0,r2),r1
            0x0ce32ec6      0171           add 0x01,r1
            0x0ce32ec8      1502           mov.w r1,@(r0,r2)
            0x0ce32eca      264f           lds.l @r15+,pr
            0x0ce32ecc      09d2           mov.l @(0x24,PC),r2
            0x0ce32ece      e364           mov r14,r4
            0x0ce32ed0      2b42           jmp @r2
            0x0ce32ed2      f66e           mov.l @r15+,r14
            0x0ce32ed4      4101           .word 0x0141
            0x0ce32ed6      f901           .word 0x01F9
            0x0ce32ed8      d201           stc r5_bank,r1
            0x0ce32eda      a101           .word 0x01A1
            0x0ce32edc      ee4d           ldc r13,r6_bank
            0x0ce32ede      038c           .word 0x8C03
            0x0ce32ee0      4816           mov.l r4,@(0x20,r6)
            0x0ce32ee2      058c           .word 0x8C05
            0x0ce32ee4      aaaa           bra 0x0ce3243c
            0x0ce32ee6      7642           .word 0x4276
            0x0ce32ee8      9224           mov.l r9,@r4
            0x0ce32eea      c542           .word 0x42C5
            0x0ce32eec      a40e           mov.b r10,@(r0,r14)
            0x0ce32eee      058c           .word 0x8C05
            0x0ce32ef0      4c54           mov.l @(0x30,r4),r4
            0x0ce32ef2      038c           .word 0x8C03
            0x0ce32ef4      8c4e           shad r8,r14
            0x0ce32ef6      038c           .word 0x8C03
            0x0ce32ef8      6251           mov.l @(0x8,r6),r1
            0x0ce32efa      038c           .word 0x8C03
            0x0ce32efc      .dword 0x0ce3406c ; aav.0x0ce3406c
            0x0ce32f00      0000           .word 0x0000
            0x0ce32f02      f041           .word 0x41F0
            0x0ce32f04      9224           mov.l r9,@r4
            0x0ce32f06      8940           .word 0x4089
            0x0ce32f08      dbb6           bsr fcn.0ce33cc2
            0x0ce32f0a      4dbf           bsr fcn.0ce32da8
            0x0ce32f0c      b096           mov.w @(0x160,PC),r6
            0x0ce32f0e      288c           .word 0x8C28
            ;-- aav.0x0ce32f10:
            ; UNKNOWN XREF from aav.0x0ce3406c (+0x4)
            0x0ce32f10      e62f           mov.l r14,@-r15
            0x0ce32f12      224f           sts.l pr,@-r15
            0x0ce32f14      43d3           mov.l @(0x10C,PC),r3
            0x0ce32f16      0b43           jsr @r3
            0x0ce32f18      436e           mov r4,r14
            0x0ce32f1a      5ce1           mov 0x5C,r1
            0x0ce32f1c      42d3           mov.l @(0x108,PC),r3
            0x0ce32f1e      ec31           add r14,r1
            0x0ce32f20      34e0           mov 0x34,r0
            0x0ce32f22      18f3           fmov @r1,fr3
            0x0ce32f24      e6f2           fmov @(r0,r14),fr2
            0x0ce32f26      68e1           mov 0x68,r1
            0x0ce32f28      ec31           add r14,r1
            0x0ce32f2a      30f2           fadd fr3,fr2
            0x0ce32f2c      27fe           fmov fr2,@(r0,r14)
            0x0ce32f2e      5ce0           mov 0x5C,r0
            0x0ce32f30      e6f2           fmov @(r0,r14),fr2
            0x0ce32f32      18f3           fmov @r1,fr3
            0x0ce32f34      60e1           mov 0x60,r1
            0x0ce32f36      ec31           add r14,r1
            0x0ce32f38      30f2           fadd fr3,fr2
            0x0ce32f3a      27fe           fmov fr2,@(r0,r14)
            0x0ce32f3c      38e0           mov 0x38,r0
            0x0ce32f3e      e6f2           fmov @(r0,r14),fr2
            0x0ce32f40      18f3           fmov @r1,fr3
            0x0ce32f42      6ce1           mov 0x6C,r1
            0x0ce32f44      ec31           add r14,r1
            0x0ce32f46      30f2           fadd fr3,fr2
            0x0ce32f48      27fe           fmov fr2,@(r0,r14)
            0x0ce32f4a      60e0           mov 0x60,r0
            0x0ce32f4c      e6f2           fmov @(r0,r14),fr2
            0x0ce32f4e      18f3           fmov @r1,fr3
            0x0ce32f50      30f2           fadd fr3,fr2
            0x0ce32f52      27fe           fmov fr2,@(r0,r14)
            0x0ce32f54      0b43           jsr @r3
            0x0ce32f56      e364           mov r14,r4
            0x0ce32f58      0c60           extu.b r0,r0
            0x0ce32f5a      0820           tst r0,r0
            0x0ce32f5c      0c89           bt 0x0ce32f78
            0x0ce32f5e      e684           mov.b @(0x6,r14),r0
            0x0ce32f60      14e5           mov 0x14,r5
            0x0ce32f62      32d3           mov.l @(0xC8,PC),r3
            0x0ce32f64      08e6           mov 0x08,r6
            0x0ce32f66      0170           add 0x01,r0
            0x0ce32f68      e680           mov.b r0,@(0x6,r14)
            0x0ce32f6a      0b43           jsr @r3
            0x0ce32f6c      e364           mov r14,r4
            0x0ce32f6e      264f           lds.l @r15+,pr
            0x0ce32f70      2fd2           mov.l @(0xBC,PC),r2
            0x0ce32f72      e364           mov r14,r4
            0x0ce32f74      2b42           jmp @r2
            0x0ce32f76      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32f10 (+0x4c)
            0x0ce32f78      264f           lds.l @r15+,pr
            0x0ce32f7a      0b00           rts 
            0x0ce32f7c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32f7e:
            ; UNKNOWN XREF from aav.0x0ce3406c (+0x8)
            0x0ce32f7e      e62f           mov.l r14,@-r15
            0x0ce32f80      224f           sts.l pr,@-r15
            0x0ce32f82      28d3           mov.l @(0xA0,PC),r3
            0x0ce32f84      0b43           jsr @r3
            0x0ce32f86      436e           mov r4,r14
            0x0ce32f88      0e60           exts.b r0,r0
            0x0ce32f8a      1140           cmp/pz r0
            0x0ce32f8c      0889           bt 0x0ce32fa0
            0x0ce32f8e      29d3           mov.l @(0xA4,PC),r3
            0x0ce32f90      00e5           mov 0x00,r5
            0x0ce32f92      0b43           jsr @r3
            0x0ce32f94      e364           mov r14,r4
            0x0ce32f96      264f           lds.l @r15+,pr
            0x0ce32f98      27d2           mov.l @(0x9C,PC),r2
            0x0ce32f9a      e364           mov r14,r4
            0x0ce32f9c      2b42           jmp @r2
            0x0ce32f9e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32f7e (+0xe)
            0x0ce32fa0      3990           mov.w @(0x72,PC),r0
            0x0ce32fa2      ec02           mov.b @(r0,r14),r2
            0x0ce32fa4      2822           tst r2,r2
            0x0ce32fa6      0789           bt 0x0ce32fb8
            0x0ce32fa8      00e3           mov 0x00,r3
            0x0ce32faa      e364           mov r14,r4
            0x0ce32fac      340e           mov.b r3,@(r0,r14)
            0x0ce32fae      07e5           mov 0x07,r5
            0x0ce32fb0      264f           lds.l @r15+,pr
            0x0ce32fb2      22d3           mov.l @(0x88,PC),r3
            0x0ce32fb4      2b43           jmp @r3
            0x0ce32fb6      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce32f7e (+0x28)
            0x0ce32fb8      264f           lds.l @r15+,pr
            0x0ce32fba      0b00           rts 
            0x0ce32fbc      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce32fbe:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x24)
            0x0ce32fbe      fc7f           add 0xFC,r15
            0x0ce32fc0      422f           mov.l r4,@r15
            0x0ce32fc2      4360           mov r4,r0
            0x0ce32fc4      0900           nop 
            0x0ce32fc6      2791           mov.w @(0x4E,PC),r1
            0x0ce32fc8      1dd2           mov.l @(0x74,PC),r2
            0x0ce32fca      1c00           mov.b @(r0,r1),r0
            0x0ce32fcc      0c60           extu.b r0,r0
            0x0ce32fce      0840           shll2 r0
            0x0ce32fd0      2e00           mov.l @(r0,r2),r0
            0x0ce32fd2      2b40           jmp @r0
            0x0ce32fd4      047f           add 0x04,r15
            ;-- aav.0x0ce32fd6:
            ; UNKNOWN XREFS from aav.0x0ce34078 (, +0xc)
            0x0ce32fd6      2090           mov.w @(0x40,PC),r0
            0x0ce32fd8      f6e1           mov 0xF6,r1
            0x0ce32fda      e62f           mov.l r14,@-r15
            0x0ce32fdc      436e           mov r4,r14
            0x0ce32fde      1d92           mov.w @(0x3A,PC),r2
            0x0ce32fe0      224f           sts.l pr,@-r15
            0x0ce32fe2      ed03           mov.w @(r0,r14),r3
            0x0ce32fe4      22e0           mov 0x22,r0
            0x0ce32fe6      3d63           extu.w r3,r3
            0x0ce32fe8      2923           and r2,r3
            0x0ce32fea      1c43           shad r1,r3
            0x0ce32fec      340e           mov.b r3,@(r0,r14)
            0x0ce32fee      3c63           extu.b r3,r3
            0x0ce32ff0      3823           tst r3,r3
            0x0ce32ff2      4189           bt 0x0ce33078
            0x0ce32ff4      1390           mov.w @(0x26,PC),r0
            0x0ce32ff6      ec03           mov.b @(r0,r14),r3
            0x0ce32ff8      3823           tst r3,r3
            0x0ce32ffa      258b           bf 0x0ce33048
            0x0ce32ffc      1090           mov.w @(0x20,PC),r0
            0x0ce32ffe      ec00           mov.b @(r0,r14),r0
            0x0ce33000      0c60           extu.b r0,r0
            0x0ce33002      0188           cmp/eq 0x01,r0
            0x0ce33004      208b           bf 0x0ce33048
            0x0ce33006      0fd2           mov.l @(0x3C,PC),r2
            0x0ce33008      0b42           jsr @r2
            0x0ce3300a      e364           mov r14,r4
            0x0ce3300c      0820           tst r0,r0
            0x0ce3300e      338d           bt.s 0x0ce33078
            0x0ce33010      0364           mov r0,r4
            0x0ce33012      2aa0           bra 0x0ce3306a
            0x0ce33014      02e2           mov 0x02,r2
            0x0ce33016      4101           .word 0x0141
            0x0ce33018      f901           .word 0x01F9
            0x0ce3301a      fa01           .word 0x01FA
            0x0ce3301c      000c           .word 0x0C00
            0x0ce3301e      fe01           mov.l @(r0,r15),r1
            0x0ce33020      a301           ocbp @r1
            0x0ce33022      0000           .word 0x0000
            0x0ce33024      ee4d           ldc r13,r6_bank
            0x0ce33026      038c           .word 0x8C03
            0x0ce33028      e22c           mov.l r14,@r12
            0x0ce3302a      058c           .word 0x8C05
            0x0ce3302c      8c4e           shad r8,r14
            0x0ce3302e      038c           .word 0x8C03
            0x0ce33030      b411           mov.l r11,@(0x10,r1)
            0x0ce33032      058c           .word 0x8C05
            0x0ce33034      6251           mov.l @(0x8,r6),r1
            0x0ce33036      038c           .word 0x8C03
            0x0ce33038      5418           mov.l r5,@(0x10,r8)
            0x0ce3303a      058c           .word 0x8C05
            0x0ce3303c      20fc           fadd fr2,fr12
            0x0ce3303e      0b8c           .word 0x8C0B
            0x0ce33040      .dword 0x0ce34078 ; aav.0x0ce34078
            0x0ce33044      9057           mov.l @(0x0,r9),r7
            0x0ce33046      048c           .word 0x8C04
            ; CODE XREFS from aav.0x0ce32fd6 (+0x24, +0x2e)
            0x0ce33048      8490           mov.w @(0x108,PC),r0
            0x0ce3304a      ec00           mov.b @(r0,r14),r0
            0x0ce3304c      0c60           extu.b r0,r0
            0x0ce3304e      0188           cmp/eq 0x01,r0
            0x0ce33050      128b           bf 0x0ce33078
            0x0ce33052      8090           mov.w @(0x100,PC),r0
            0x0ce33054      ec00           mov.b @(r0,r14),r0
            0x0ce33056      0c60           extu.b r0,r0
            0x0ce33058      0188           cmp/eq 0x01,r0
            0x0ce3305a      0d8b           bf 0x0ce33078
            0x0ce3305c      41d2           mov.l @(0x104,PC),r2
            0x0ce3305e      0b42           jsr @r2
            0x0ce33060      e364           mov r14,r4
            0x0ce33062      0820           tst r0,r0
            0x0ce33064      088d           bt.s 0x0ce33078
            0x0ce33066      0364           mov r0,r4
            0x0ce33068      05e2           mov 0x05,r2
            ; CODE XREF from aav.0x0ce32fd6 (+0x3c)
            0x0ce3306a      7590           mov.w @(0xEA,PC),r0
            0x0ce3306c      240e           mov.b r2,@(r0,r14)
            0x0ce3306e      4360           mov r4,r0
            0x0ce33070      0900           nop 
            0x0ce33072      264f           lds.l @r15+,pr
            0x0ce33074      0b00           rts 
            0x0ce33076      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce32fd6 (+0x1c, +0x38, +0x7a, +0x84, +0x8e)
            0x0ce33078      00e0           mov 0x00,r0
            0x0ce3307a      264f           lds.l @r15+,pr
            0x0ce3307c      0b00           rts 
            0x0ce3307e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33080:
            ; UNKNOWN XREF from aav.0x0ce34078 (+0x4)
            0x0ce33080      6b90           mov.w @(0xD6,PC),r0
            0x0ce33082      f6e1           mov 0xF6,r1
            0x0ce33084      e62f           mov.l r14,@-r15
            0x0ce33086      436e           mov r4,r14
            0x0ce33088      6892           mov.w @(0xD0,PC),r2
            0x0ce3308a      224f           sts.l pr,@-r15
            0x0ce3308c      ed03           mov.w @(r0,r14),r3
            0x0ce3308e      22e0           mov 0x22,r0
            0x0ce33090      3d63           extu.w r3,r3
            0x0ce33092      2923           and r2,r3
            0x0ce33094      1c43           shad r1,r3
            0x0ce33096      340e           mov.b r3,@(r0,r14)
            0x0ce33098      3c63           extu.b r3,r3
            0x0ce3309a      3823           tst r3,r3
            0x0ce3309c      1789           bt 0x0ce330ce
            0x0ce3309e      5990           mov.w @(0xB2,PC),r0
            0x0ce330a0      ec00           mov.b @(r0,r14),r0
            0x0ce330a2      0c60           extu.b r0,r0
            0x0ce330a4      0188           cmp/eq 0x01,r0
            0x0ce330a6      128b           bf 0x0ce330ce
            0x0ce330a8      5590           mov.w @(0xAA,PC),r0
            0x0ce330aa      ec00           mov.b @(r0,r14),r0
            0x0ce330ac      0c60           extu.b r0,r0
            0x0ce330ae      0188           cmp/eq 0x01,r0
            0x0ce330b0      0d8b           bf 0x0ce330ce
            0x0ce330b2      2cd2           mov.l @(0xB0,PC),r2
            0x0ce330b4      0b42           jsr @r2
            0x0ce330b6      e364           mov r14,r4
            0x0ce330b8      0820           tst r0,r0
            0x0ce330ba      088d           bt.s 0x0ce330ce
            0x0ce330bc      0364           mov r0,r4
            0x0ce330be      4b90           mov.w @(0x96,PC),r0
            0x0ce330c0      01e2           mov 0x01,r2
            0x0ce330c2      240e           mov.b r2,@(r0,r14)
            0x0ce330c4      4360           mov r4,r0
            0x0ce330c6      0900           nop 
            0x0ce330c8      264f           lds.l @r15+,pr
            0x0ce330ca      0b00           rts 
            0x0ce330cc      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce33080 (+0x1c, +0x26, +0x30, +0x3a)
            0x0ce330ce      00e0           mov 0x00,r0
            0x0ce330d0      264f           lds.l @r15+,pr
            0x0ce330d2      0b00           rts 
            0x0ce330d4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce330d6:
            ; UNKNOWN XREF from aav.0x0ce34078 (+0x8)
            0x0ce330d6      4090           mov.w @(0x80,PC),r0
            0x0ce330d8      f6e1           mov 0xF6,r1
            0x0ce330da      e62f           mov.l r14,@-r15
            0x0ce330dc      436e           mov r4,r14
            0x0ce330de      3d92           mov.w @(0x7A,PC),r2
            0x0ce330e0      224f           sts.l pr,@-r15
            0x0ce330e2      ed03           mov.w @(r0,r14),r3
            0x0ce330e4      22e0           mov 0x22,r0
            0x0ce330e6      3d63           extu.w r3,r3
            0x0ce330e8      2923           and r2,r3
            0x0ce330ea      1c43           shad r1,r3
            0x0ce330ec      340e           mov.b r3,@(r0,r14)
            0x0ce330ee      3c63           extu.b r3,r3
            0x0ce330f0      3823           tst r3,r3
            0x0ce330f2      1f89           bt 0x0ce33134
            0x0ce330f4      2e90           mov.w @(0x5C,PC),r0
            0x0ce330f6      ec03           mov.b @(r0,r14),r3
            0x0ce330f8      3823           tst r3,r3
            0x0ce330fa      1b8b           bf 0x0ce33134
            0x0ce330fc      2b90           mov.w @(0x56,PC),r0
            0x0ce330fe      ec00           mov.b @(r0,r14),r0
            0x0ce33100      0c60           extu.b r0,r0
            0x0ce33102      0188           cmp/eq 0x01,r0
            0x0ce33104      168b           bf 0x0ce33134
            0x0ce33106      18c7           mova @(0x60,PC),r0
            0x0ce33108      08f3           fmov @r0,fr3
            0x0ce3310a      2890           mov.w @(0x50,PC),r0
            0x0ce3310c      e6f2           fmov @(r0,r14),fr2
            0x0ce3310e      38e0           mov 0x38,r0
            0x0ce33110      e6f1           fmov @(r0,r14),fr1
            0x0ce33112      30f2           fadd fr3,fr2
            0x0ce33114      25f1           fcmp/gt fr2,fr1
            0x0ce33116      0d8b           bf 0x0ce33134
            0x0ce33118      12d2           mov.l @(0x48,PC),r2
            0x0ce3311a      0b42           jsr @r2
            0x0ce3311c      e364           mov r14,r4
            0x0ce3311e      0820           tst r0,r0
            0x0ce33120      088d           bt.s 0x0ce33134
            0x0ce33122      0364           mov r0,r4
            0x0ce33124      1890           mov.w @(0x30,PC),r0
            0x0ce33126      1b92           mov.w @(0x36,PC),r2
            0x0ce33128      240e           mov.b r2,@(r0,r14)
            0x0ce3312a      4360           mov r4,r0
            0x0ce3312c      0900           nop 
            0x0ce3312e      264f           lds.l @r15+,pr
            0x0ce33130      0b00           rts 
            0x0ce33132      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce330d6 (+0x1c, +0x24, +0x2e, +0x40, +0x4a)
            0x0ce33134      00e0           mov 0x00,r0
            0x0ce33136      264f           lds.l @r15+,pr
            0x0ce33138      0b00           rts 
            0x0ce3313a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3313c:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x28)
            0x0ce3313c      462f           mov.l r4,@-r15
            0x0ce3313e      4360           mov r4,r0
            0x0ce33140      0900           nop 
            0x0ce33142      0991           mov.w @(0x12,PC),r1
            0x0ce33144      09d2           mov.l @(0x24,PC),r2
            0x0ce33146      1c00           mov.b @(r0,r1),r0
            0x0ce33148      0c60           extu.b r0,r0
            0x0ce3314a      3fc9           and 0x3F,r0
            0x0ce3314c      0840           shll2 r0
            0x0ce3314e      2e03           mov.l @(r0,r2),r3
            0x0ce33150      2b43           jmp @r3
            0x0ce33152      047f           add 0x04,r15
            0x0ce33154      fe01           mov.l @(r0,r15),r1
            0x0ce33156      a301           ocbp @r1
            0x0ce33158      f701           mul.l r15,r1
            0x0ce3315a      fa01           .word 0x01FA
            0x0ce3315c      000c           .word 0x0C00
            0x0ce3315e      1c04           mov.b @(r0,r1),r4
            0x0ce33160      8400           mov.b r8,@(r0,r0)
            0x0ce33162      0000           .word 0x0000
            0x0ce33164      9057           mov.l @(0x0,r9),r7
            0x0ce33166      048c           .word 0x8C04
            0x0ce33168      9224           mov.l r9,@r4
            0x0ce3316a      0943           shlr2 r3
            0x0ce3316c      .dword 0x0ce34088 ; aav.0x0ce34088
            ;-- aav.0x0ce33170:
            ; UNKNOWN XREF from aav.0x0ce34088 ()
            0x0ce33170      e62f           mov.l r14,@-r15
            0x0ce33172      224f           sts.l pr,@-r15
            0x0ce33174      f47f           add 0xF4,r15
            0x0ce33176      51c7           mova @(0x144,PC),r0
            0x0ce33178      52d3           mov.l @(0x148,PC),r3
            0x0ce3317a      08f3           fmov @r0,fr3
/ (fcn) fcn.0ce3317c 20
|   fcn.0ce3317c ();
|           ; CALL XREF from aav.0x0ce33260 (+0x7e)
|           0x0ce3317c      50c7           mova @(0x140,PC),r0
|           0x0ce3317e      436e           mov r4,r14
|           0x0ce33180      f365           mov r15,r5
|           0x0ce33182      3aff           fmov fr3,@r15
|           0x0ce33184      08f3           fmov @r0,fr3
|           0x0ce33186      04e0           mov 0x04,r0
|           0x0ce33188      37ff           fmov fr3,@(r0,r15)
|           0x0ce3318a      0b43           jsr @r3
|           0x0ce3318c      e364           mov r14,r4
\           0x0ce3318e      9490           mov.w @(0x128,PC),r0
/ (fcn) fcn.0ce33190 28
|   fcn.0ce33190 ();
|           ; CALL XREF from aav.0x0ce3338e (+0x54)
|           0x0ce33190      0ae2           mov 0x0A,r2
|           0x0ce33192      4dd3           mov.l @(0x134,PC),r3
|           0x0ce33194      240e           mov.b r2,@(r0,r14)
|           0x0ce33196      0b43           jsr @r3
|           0x0ce33198      e364           mov r14,r4
|           0x0ce3319a      4cd2           mov.l @(0x130,PC),r2
|           0x0ce3319c      0fe5           mov 0x0F,r5
|           0x0ce3319e      00e6           mov 0x00,r6
|           0x0ce331a0      0b42           jsr @r2
|           0x0ce331a2      e364           mov r14,r4
|           0x0ce331a4      0c7f           add 0x0C,r15
|           0x0ce331a6      264f           lds.l @r15+,pr
|           0x0ce331a8      0b00           rts 
\           0x0ce331aa      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce331ac:
            ; UNKNOWN XREF from aav.0x0ce34088 (+0x4)
            0x0ce331ac      e62f           mov.l r14,@-r15
            0x0ce331ae      224f           sts.l pr,@-r15
            0x0ce331b0      f47f           add 0xF4,r15
            0x0ce331b2      47c7           mova @(0x11C,PC),r0
            0x0ce331b4      43d3           mov.l @(0x10C,PC),r3
            0x0ce331b6      08f3           fmov @r0,fr3
            0x0ce331b8      41c7           mova @(0x104,PC),r0
            0x0ce331ba      436e           mov r4,r14
            0x0ce331bc      f365           mov r15,r5
            0x0ce331be      3aff           fmov fr3,@r15
            0x0ce331c0      08f3           fmov @r0,fr3
            0x0ce331c2      04e0           mov 0x04,r0
            0x0ce331c4      37ff           fmov fr3,@(r0,r15)
            0x0ce331c6      0b43           jsr @r3
            0x0ce331c8      e364           mov r14,r4
            0x0ce331ca      7690           mov.w @(0xEC,PC),r0
            0x0ce331cc      0ae2           mov 0x0A,r2
            0x0ce331ce      3ed3           mov.l @(0xF8,PC),r3
            0x0ce331d0      240e           mov.b r2,@(r0,r14)
            0x0ce331d2      0b43           jsr @r3
            0x0ce331d4      e364           mov r14,r4
            0x0ce331d6      3dd2           mov.l @(0xF4,PC),r2
            0x0ce331d8      0fe5           mov 0x0F,r5
            0x0ce331da      01e6           mov 0x01,r6
            0x0ce331dc      0b42           jsr @r2
            0x0ce331de      e364           mov r14,r4
            0x0ce331e0      0c7f           add 0x0C,r15
            0x0ce331e2      264f           lds.l @r15+,pr
            0x0ce331e4      0b00           rts 
            0x0ce331e6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce331e8:
            ; UNKNOWN XREF from aav.0x0ce34088 (+0x8)
            0x0ce331e8      e62f           mov.l r14,@-r15
            0x0ce331ea      224f           sts.l pr,@-r15
            0x0ce331ec      f47f           add 0xF4,r15
            0x0ce331ee      38c7           mova @(0xE0,PC),r0
            0x0ce331f0      34d3           mov.l @(0xD0,PC),r3
            0x0ce331f2      08f3           fmov @r0,fr3
            0x0ce331f4      32c7           mova @(0xC8,PC),r0
            0x0ce331f6      436e           mov r4,r14
            0x0ce331f8      f365           mov r15,r5
            0x0ce331fa      3aff           fmov fr3,@r15
            0x0ce331fc      08f3           fmov @r0,fr3
            0x0ce331fe      04e0           mov 0x04,r0
            0x0ce33200      37ff           fmov fr3,@(r0,r15)
            0x0ce33202      0b43           jsr @r3
            0x0ce33204      e364           mov r14,r4
            0x0ce33206      5890           mov.w @(0xB0,PC),r0
            0x0ce33208      0ae2           mov 0x0A,r2
            0x0ce3320a      2fd3           mov.l @(0xBC,PC),r3
            0x0ce3320c      240e           mov.b r2,@(r0,r14)
            0x0ce3320e      0b43           jsr @r3
            0x0ce33210      e364           mov r14,r4
            0x0ce33212      2ed2           mov.l @(0xB8,PC),r2
            0x0ce33214      0fe5           mov 0x0F,r5
            0x0ce33216      02e6           mov 0x02,r6
            0x0ce33218      0b42           jsr @r2
            0x0ce3321a      e364           mov r14,r4
            0x0ce3321c      0c7f           add 0x0C,r15
            0x0ce3321e      264f           lds.l @r15+,pr
            0x0ce33220      0b00           rts 
            0x0ce33222      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33224:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce34094)
            0x0ce33224      e62f           mov.l r14,@-r15
            0x0ce33226      224f           sts.l pr,@-r15
            0x0ce33228      f47f           add 0xF4,r15
/ (fcn) fcn.0ce3322a 54
|   fcn.0ce3322a ();
|           ; CALL XREF from aav.0x0ce32456 (+0x1a)
|           0x0ce3322a      29c7           mova @(0xA4,PC),r0
|           0x0ce3322c      25d3           mov.l @(0x94,PC),r3
|           0x0ce3322e      08f3           fmov @r0,fr3
|           0x0ce33230      23c7           mova @(0x8C,PC),r0
|           0x0ce33232      436e           mov r4,r14
|           0x0ce33234      f365           mov r15,r5
|           0x0ce33236      3aff           fmov fr3,@r15
|           0x0ce33238      08f3           fmov @r0,fr3
|           0x0ce3323a      04e0           mov 0x04,r0
|           0x0ce3323c      37ff           fmov fr3,@(r0,r15)
|           0x0ce3323e      0b43           jsr @r3
|           0x0ce33240      e364           mov r14,r4
|           0x0ce33242      3a90           mov.w @(0x74,PC),r0
|           0x0ce33244      0ae2           mov 0x0A,r2
|           0x0ce33246      20d3           mov.l @(0x80,PC),r3
|           0x0ce33248      240e           mov.b r2,@(r0,r14)
|           0x0ce3324a      0b43           jsr @r3
|           0x0ce3324c      e364           mov r14,r4
|           0x0ce3324e      1fd2           mov.l @(0x7C,PC),r2
|           0x0ce33250      0fe5           mov 0x0F,r5
|           0x0ce33252      03e6           mov 0x03,r6
|           0x0ce33254      0b42           jsr @r2
|           0x0ce33256      e364           mov r14,r4
|           0x0ce33258      0c7f           add 0x0C,r15
|           0x0ce3325a      264f           lds.l @r15+,pr
|           0x0ce3325c      0b00           rts 
\           0x0ce3325e      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33260:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce34098)
            0x0ce33260      e62f           mov.l r14,@-r15
            0x0ce33262      224f           sts.l pr,@-r15
            0x0ce33264      f47f           add 0xF4,r15
            0x0ce33266      1bc7           mova @(0x6C,PC),r0
            0x0ce33268      16d3           mov.l @(0x58,PC),r3
            0x0ce3326a      08f3           fmov @r0,fr3
            0x0ce3326c      1ac7           mova @(0x68,PC),r0
            0x0ce3326e      436e           mov r4,r14
            0x0ce33270      f365           mov r15,r5
            0x0ce33272      3aff           fmov fr3,@r15
            0x0ce33274      08f3           fmov @r0,fr3
            0x0ce33276      04e0           mov 0x04,r0
            0x0ce33278      37ff           fmov fr3,@(r0,r15)
            0x0ce3327a      0b43           jsr @r3
            0x0ce3327c      e364           mov r14,r4
            0x0ce3327e      1c90           mov.w @(0x38,PC),r0
            0x0ce33280      0ae2           mov 0x0A,r2
            0x0ce33282      8df4           fldi0 fr4
            0x0ce33284      240e           mov.b r2,@(r0,r14)
            0x0ce33286      5ce0           mov 0x5C,r0
            0x0ce33288      47fe           fmov fr4,@(r0,r14)
            0x0ce3328a      68e0           mov 0x68,r0
            0x0ce3328c      9df3           fldi1 fr3
            0x0ce3328e      30f3           fadd fr3,fr3
            0x0ce33290      47fe           fmov fr4,@(r0,r14)
            0x0ce33292      60e0           mov 0x60,r0
            0x0ce33294      e6f2           fmov @(r0,r14),fr2
            0x0ce33296      0cd3           mov.l @(0x30,PC),r3
            0x0ce33298      33f2           fdiv fr3,fr2
            0x0ce3329a      27fe           fmov fr2,@(r0,r14)
            0x0ce3329c      0fc7           mova @(0x3C,PC),r0
            0x0ce3329e      08f2           fmov @r0,fr2
            0x0ce332a0      6ce0           mov 0x6C,r0
            0x0ce332a2      27fe           fmov fr2,@(r0,r14)
            0x0ce332a4      0b43           jsr @r3
            0x0ce332a6      e364           mov r14,r4
            0x0ce332a8      08d2           mov.l @(0x20,PC),r2
            0x0ce332aa      0fe5           mov 0x0F,r5
            0x0ce332ac      06e6           mov 0x06,r6
            0x0ce332ae      0b42           jsr @r2
            0x0ce332b0      e364           mov r14,r4
            0x0ce332b2      0c7f           add 0x0C,r15
            0x0ce332b4      264f           lds.l @r15+,pr
            0x0ce332b6      0b00           rts 
            0x0ce332b8      f66e           mov.l @r15+,r14
            0x0ce332ba      a001           .word 0x01A0
            0x0ce332bc      5555           mov.l @(0x14,r5),r5
            0x0ce332be      5542           .word 0x4255
            0x0ce332c0      b66d           mov.l @r11+,r13
            0x0ce332c2      2b43           jmp @r3
            0x0ce332c4      6036           cmp/eq r6,r6
            0x0ce332c6      108c           .word 0x8C10
            0x0ce332c8      2a6f           negc r2,r15
            0x0ce332ca      058c           .word 0x8C05
            0x0ce332cc      8c4e           shad r8,r14
            0x0ce332ce      038c           .word 0x8C03
            0x0ce332d0      5555           mov.l @(0x14,r5),r5
            0x0ce332d2      55c2           mov.l r0,@(0x154,gbr)
            0x0ce332d4      5555           mov.l @(0x14,r5),r5
            0x0ce332d6      d5c1           mov.w r0,@(0x1AA,gbr)
            0x0ce332d8      dbb6           bsr fcn.0ce34092
            0x0ce332da      cd42           shld r12,r2
            0x0ce332dc      dbb6           bsr fcn.0ce34096            ; fcn.0ce34092+0x4
            0x0ce332de      4dbf           bsr fcn.0ce3317c
            ;-- aav.0x0ce332e0:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce3409c)
            0x0ce332e0      e62f           mov.l r14,@-r15
            0x0ce332e2      224f           sts.l pr,@-r15
            0x0ce332e4      f47f           add 0xF4,r15
            0x0ce332e6      36c7           mova @(0xD8,PC),r0
            0x0ce332e8      37d3           mov.l @(0xDC,PC),r3
            0x0ce332ea      08f3           fmov @r0,fr3
            0x0ce332ec      35c7           mova @(0xD4,PC),r0
            0x0ce332ee      436e           mov r4,r14
            0x0ce332f0      f365           mov r15,r5
            0x0ce332f2      3aff           fmov fr3,@r15
            0x0ce332f4      08f3           fmov @r0,fr3
            0x0ce332f6      04e0           mov 0x04,r0
            0x0ce332f8      37ff           fmov fr3,@(r0,r15)
            0x0ce332fa      0b43           jsr @r3
            0x0ce332fc      e364           mov r14,r4
            0x0ce332fe      5990           mov.w @(0xB2,PC),r0
/ (fcn) fcn.0ce33300 28
|   fcn.0ce33300 ();
|           ; CALL XREF from aav.0x0ce3338e (+0x5c)
|           0x0ce33300      0ae2           mov 0x0A,r2
|           0x0ce33302      32d3           mov.l @(0xC8,PC),r3
|           0x0ce33304      240e           mov.b r2,@(r0,r14)
|           0x0ce33306      0b43           jsr @r3
|           0x0ce33308      e364           mov r14,r4
|           0x0ce3330a      31d2           mov.l @(0xC4,PC),r2
|           0x0ce3330c      0fe5           mov 0x0F,r5
|           0x0ce3330e      08e6           mov 0x08,r6
|           0x0ce33310      0b42           jsr @r2
|           0x0ce33312      e364           mov r14,r4
|           0x0ce33314      0c7f           add 0x0C,r15
|           0x0ce33316      264f           lds.l @r15+,pr
|           0x0ce33318      0b00           rts 
\           0x0ce3331a      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3331c:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x2c)
            0x0ce3331c      4b90           mov.w @(0x96,PC),r0
            0x0ce3331e      01e3           mov 0x01,r3
            0x0ce33320      e62f           mov.l r14,@-r15
            0x0ce33322      436e           mov r4,r14
            0x0ce33324      340e           mov.b r3,@(r0,r14)
            0x0ce33326      0d70           add 0x0D,r0
            0x0ce33328      ec00           mov.b @(r0,r14),r0
            0x0ce3332a      e364           mov r14,r4
            0x0ce3332c      29d1           mov.l @(0xA4,PC),r1
            0x0ce3332e      0c60           extu.b r0,r0
            0x0ce33330      3fc9           and 0x3F,r0
            0x0ce33332      0840           shll2 r0
            0x0ce33334      1e03           mov.l @(r0,r1),r3
            0x0ce33336      2b43           jmp @r3
            0x0ce33338      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3333a:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340a0)
            0x0ce3333a      4363           mov r4,r3
            0x0ce3333c      26d1           mov.l @(0x98,PC),r1
            0x0ce3333e      462f           mov.l r4,@-r15
            0x0ce33340      3684           mov.b @(0x6,r3),r0
            0x0ce33342      0c60           extu.b r0,r0
            0x0ce33344      0840           shll2 r0
            0x0ce33346      1e03           mov.l @(r0,r1),r3
            0x0ce33348      2b43           jmp @r3
            0x0ce3334a      047f           add 0x04,r15
            ;-- aav.0x0ce3334c:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340b8)
            0x0ce3334c      4684           mov.b @(0x6,r4),r0
            0x0ce3334e      0170           add 0x01,r0
            0x0ce33350      4680           mov.b r0,@(0x6,r4)
            0x0ce33352      00e0           mov 0x00,r0
            0x0ce33354      4e81           mov.w r0,@(0x1C,r4)
            0x0ce33356      21c7           mova @(0x84,PC),r0
            0x0ce33358      08f3           fmov @r0,fr3
            0x0ce3335a      5ce0           mov 0x5C,r0
            0x0ce3335c      37f4           fmov fr3,@(r0,r4)
            0x0ce3335e      20c7           mova @(0x80,PC),r0
            0x0ce33360      08f3           fmov @r0,fr3
            0x0ce33362      68e0           mov 0x68,r0
            0x0ce33364      37f4           fmov fr3,@(r0,r4)
            0x0ce33366      1fc7           mova @(0x7C,PC),r0
            0x0ce33368      08f3           fmov @r0,fr3
            0x0ce3336a      60e0           mov 0x60,r0
            0x0ce3336c      37f4           fmov fr3,@(r0,r4)
            0x0ce3336e      1ec7           mova @(0x78,PC),r0
            0x0ce33370      08f3           fmov @r0,fr3
            0x0ce33372      6ce0           mov 0x6C,r0
            0x0ce33374      37f4           fmov fr3,@(r0,r4)
            0x0ce33376      1f90           mov.w @(0x3E,PC),r0
            0x0ce33378      4c03           mov.b @(r0,r4),r3
            0x0ce3337a      3823           tst r3,r3
            0x0ce3337c      078b           bf aav.0x0ce3338e
            0x0ce3337e      5ce0           mov 0x5C,r0
            0x0ce33380      46f3           fmov @(r0,r4),fr3
            0x0ce33382      4df3           fneg fr3
            0x0ce33384      37f4           fmov fr3,@(r0,r4)
            0x0ce33386      68e0           mov 0x68,r0
            0x0ce33388      46f3           fmov @(r0,r4),fr3
            0x0ce3338a      4df3           fneg fr3
            0x0ce3338c      37f4           fmov fr3,@(r0,r4)
            ;-- aav.0x0ce3338e:
            ; CODE XREF from aav.0x0ce3334c (+0x30)
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340bc)
            0x0ce3338e      e62f           mov.l r14,@-r15
            0x0ce33390      224f           sts.l pr,@-r15
            0x0ce33392      16d3           mov.l @(0x58,PC),r3
            0x0ce33394      0b43           jsr @r3
            0x0ce33396      436e           mov r4,r14
            0x0ce33398      0f90           mov.w @(0x1E,PC),r0
            0x0ce3339a      ec00           mov.b @(r0,r14),r0
            0x0ce3339c      1888           cmp/eq 0x18,r0
            0x0ce3339e      278b           bf 0x0ce333f0
            0x0ce333a0      e684           mov.b @(0x6,r14),r0
            0x0ce333a2      0170           add 0x01,r0
            0x0ce333a4      e680           mov.b r0,@(0x6,r14)
            0x0ce333a6      0990           mov.w @(0x12,PC),r0
            0x0ce333a8      e6f3           fmov @(r0,r14),fr3
            0x0ce333aa      38e0           mov 0x38,r0
            0x0ce333ac      37fe           fmov fr3,@(r0,r14)
            0x0ce333ae      264f           lds.l @r15+,pr
            0x0ce333b0      0b00           rts 
            0x0ce333b2      f66e           mov.l @r15+,r14
            0x0ce333b4      a001           .word 0x01A0
            0x0ce333b6      ea01           .word 0x01EA
            0x0ce333b8      d201           stc r5_bank,r1
            0x0ce333ba      4101           .word 0x0141
            0x0ce333bc      1c04           mov.b @(r0,r1),r4
            0x0ce333be      0000           .word 0x0000
            0x0ce333c0      5555           mov.l @(0x14,r5),r5
            0x0ce333c2      55c2           mov.l r0,@(0x154,gbr)
            0x0ce333c4      b66d           mov.l @r11+,r13
            0x0ce333c6      2b43           jmp @r3
            0x0ce333c8      6036           cmp/eq r6,r6
            0x0ce333ca      108c           .word 0x8C10
            0x0ce333cc      2a6f           negc r2,r15
            0x0ce333ce      058c           .word 0x8C05
            0x0ce333d0      8c4e           shad r8,r14
            0x0ce333d2      038c           .word 0x8C03
            0x0ce333d4      .dword 0x0ce340a0 ; aav.0x0ce340a0
            0x0ce333d8      .dword 0x0ce340b8 ; aav.0x0ce340b8
            0x0ce333dc      5555           mov.l @(0x14,r5),r5
            0x0ce333de      8541           .word 0x4185
            0x0ce333e0      5555           mov.l @(0x14,r5),r5
            0x0ce333e2      d5be           bsr fcn.0ce33190
            0x0ce333e4      dbb6           bsr 0x0ce3419e
            0x0ce333e6      4d41           shld r4,r1
            0x0ce333e8      9224           mov.l r9,@r4
            0x0ce333ea      89bf           bsr fcn.0ce33300
            0x0ce333ec      ee4d           ldc r13,r6_bank
            0x0ce333ee      038c           .word 0x8C03
            ; CODE XREF from aav.0x0ce3338e (+0x10)
            0x0ce333f0      ee85           mov.w @(0x1C,r14),r0
            0x0ce333f2      0ce3           mov 0x0C,r3
            0x0ce333f4      3730           cmp/gt r3,r0
            0x0ce333f6      1b8b           bf 0x0ce33430
            0x0ce333f8      5ce1           mov 0x5C,r1
            0x0ce333fa      ec31           add r14,r1
            0x0ce333fc      34e0           mov 0x34,r0
            0x0ce333fe      18f3           fmov @r1,fr3
            0x0ce33400      e6f2           fmov @(r0,r14),fr2
            0x0ce33402      68e1           mov 0x68,r1
            0x0ce33404      ec31           add r14,r1
            0x0ce33406      30f2           fadd fr3,fr2
            0x0ce33408      27fe           fmov fr2,@(r0,r14)
            0x0ce3340a      5ce0           mov 0x5C,r0
            0x0ce3340c      e6f2           fmov @(r0,r14),fr2
            0x0ce3340e      18f3           fmov @r1,fr3
            0x0ce33410      60e1           mov 0x60,r1
            0x0ce33412      ec31           add r14,r1
            0x0ce33414      30f2           fadd fr3,fr2
            0x0ce33416      27fe           fmov fr2,@(r0,r14)
            0x0ce33418      38e0           mov 0x38,r0
            0x0ce3341a      e6f2           fmov @(r0,r14),fr2
            0x0ce3341c      18f3           fmov @r1,fr3
            0x0ce3341e      6ce1           mov 0x6C,r1
            0x0ce33420      ec31           add r14,r1
            0x0ce33422      30f2           fadd fr3,fr2
            0x0ce33424      27fe           fmov fr2,@(r0,r14)
            0x0ce33426      60e0           mov 0x60,r0
            0x0ce33428      e6f2           fmov @(r0,r14),fr2
            0x0ce3342a      18f3           fmov @r1,fr3
            0x0ce3342c      30f2           fadd fr3,fr2
            0x0ce3342e      27fe           fmov fr2,@(r0,r14)
            ; CODE XREF from aav.0x0ce3338e (+0x68)
            0x0ce33430      8690           mov.w @(0x10C,PC),r0
            0x0ce33432      ec03           mov.b @(r0,r14),r3
            0x0ce33434      3823           tst r3,r3
            0x0ce33436      2d89           bt 0x0ce33494
            0x0ce33438      ec00           mov.b @(r0,r14),r0
            0x0ce3343a      00e3           mov 0x00,r3
            0x0ce3343c      42d4           mov.l @(0x108,PC),r4
            0x0ce3343e      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33440      7e90           mov.w @(0xFC,PC),r0
            0x0ce33442      340e           mov.b r3,@(r0,r14)
            0x0ce33444      ee85           mov.w @(0x1C,r14),r0
            0x0ce33446      0733           cmp/gt r0,r3
            0x0ce33448      3e30           addc r3,r0
            0x0ce3344a      2140           shar r0
            0x0ce3344c      0040           shll r0
            0x0ce3344e      4d02           mov.w @(r0,r4),r2
            0x0ce33450      3ec7           mova @(0xF8,PC),r0
            0x0ce33452      08f2           fmov @r0,fr2
            0x0ce33454      5a42           lds r2,fpul
            0x0ce33456      7490           mov.w @(0xE8,PC),r0
            0x0ce33458      2df3           float fpul,fr3
            0x0ce3345a      ec03           mov.b @(r0,r14),r3
            0x0ce3345c      3823           tst r3,r3
            0x0ce3345e      3cf4           fmov fr3,fr4
            0x0ce33460      018f           bf.s 0x0ce33466
            0x0ce33462      22f4           fmul fr2,fr4
            0x0ce33464      4df4           fneg fr4
            ; CODE XREF from aav.0x0ce3338e (+0xd2)
            0x0ce33466      34e0           mov 0x34,r0
            0x0ce33468      e6f3           fmov @(r0,r14),fr3
            0x0ce3346a      00e3           mov 0x00,r3
            0x0ce3346c      40f3           fadd fr4,fr3
            0x0ce3346e      37fe           fmov fr3,@(r0,r14)
            0x0ce33470      ee85           mov.w @(0x1C,r14),r0
            0x0ce33472      0733           cmp/gt r0,r3
            0x0ce33474      3e30           addc r3,r0
            0x0ce33476      2140           shar r0
            0x0ce33478      0040           shll r0
            0x0ce3347a      0c34           add r0,r4
            0x0ce3347c      4185           mov.w @(0x2,r4),r0
            0x0ce3347e      0363           mov r0,r3
            0x0ce33480      5a43           lds r3,fpul
            0x0ce33482      33c7           mova @(0xCC,PC),r0
            0x0ce33484      08f2           fmov @r0,fr2
            0x0ce33486      38e0           mov 0x38,r0
            0x0ce33488      2df3           float fpul,fr3
            0x0ce3348a      3cf4           fmov fr3,fr4
            0x0ce3348c      22f4           fmul fr2,fr4
            0x0ce3348e      e6f3           fmov @(r0,r14),fr3
            0x0ce33490      41f3           fsub fr4,fr3
            0x0ce33492      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce3338e (+0xa8)
            0x0ce33494      264f           lds.l @r15+,pr
            0x0ce33496      0b00           rts 
            0x0ce33498      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3349a:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340c0)
            0x0ce3349a      5190           mov.w @(0xA2,PC),r0
            0x0ce3349c      e62f           mov.l r14,@-r15
            0x0ce3349e      436e           mov r4,r14
            0x0ce334a0      224f           sts.l pr,@-r15
            0x0ce334a2      ec03           mov.b @(r0,r14),r3
            0x0ce334a4      3823           tst r3,r3
            0x0ce334a6      1e89           bt 0x0ce334e6
            0x0ce334a8      00e5           mov 0x00,r5
            0x0ce334aa      4a91           mov.w @(0x94,PC),r1
            0x0ce334ac      540e           mov.b r5,@(r0,r14)
            0x0ce334ae      02e3           mov 0x02,r3
            0x0ce334b0      4890           mov.w @(0x90,PC),r0
            0x0ce334b2      20e2           mov 0x20,r2
            0x0ce334b4      ee04           mov.l @(r0,r14),r4
            0x0ce334b6      ec70           add 0xEC,r0
            0x0ce334b8      e604           mov.l r14,@(r0,r4)
            0x0ce334ba      4270           add 0x42,r0
            0x0ce334bc      3404           mov.b r3,@(r0,r4)
            0x0ce334be      ab70           add 0xAB,r0
            0x0ce334c0      2404           mov.b r2,@(r0,r4)
            0x0ce334c2      5870           add 0x58,r0
            0x0ce334c4      03e3           mov 0x03,r3
            0x0ce334c6      340e           mov.b r3,@(r0,r14)
            0x0ce334c8      ed70           add 0xED,r0
            0x0ce334ca      550e           mov.w r5,@(r0,r14)
            0x0ce334cc      4c31           add r4,r1
            0x0ce334ce      3a90           mov.w @(0x74,PC),r0
            0x0ce334d0      20d3           mov.l @(0x80,PC),r3
            0x0ce334d2      ec00           mov.b @(r0,r14),r0
            0x0ce334d4      01ca           xor 0x01,r0
            0x0ce334d6      0021           mov.b r0,@r1
            0x0ce334d8      0c60           extu.b r0,r0
            0x0ce334da      3491           mov.w @(0x68,PC),r1
            0x0ce334dc      4c31           add r4,r1
            0x0ce334de      0121           mov.w r0,@r1
            0x0ce334e0      264f           lds.l @r15+,pr
            0x0ce334e2      2b43           jmp @r3
            0x0ce334e4      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3349a (+0xc)
            0x0ce334e6      1cd3           mov.l @(0x70,PC),r3
            0x0ce334e8      0b43           jsr @r3
            0x0ce334ea      e364           mov r14,r4
            0x0ce334ec      0e60           exts.b r0,r0
            0x0ce334ee      1140           cmp/pz r0
            0x0ce334f0      1289           bt 0x0ce33518
            0x0ce334f2      e684           mov.b @(0x6,r14),r0
            0x0ce334f4      e364           mov r14,r4
            0x0ce334f6      8df4           fldi0 fr4
            0x0ce334f8      00e6           mov 0x00,r6
            0x0ce334fa      0170           add 0x01,r0
            0x0ce334fc      17d3           mov.l @(0x5C,PC),r3
            0x0ce334fe      e680           mov.b r0,@(0x6,r14)
            0x0ce33500      5ce0           mov 0x5C,r0
            0x0ce33502      47fe           fmov fr4,@(r0,r14)
            0x0ce33504      60e0           mov 0x60,r0
            0x0ce33506      47fe           fmov fr4,@(r0,r14)
            0x0ce33508      68e0           mov 0x68,r0
            0x0ce3350a      47fe           fmov fr4,@(r0,r14)
            0x0ce3350c      6ce0           mov 0x6C,r0
            0x0ce3350e      47fe           fmov fr4,@(r0,r14)
            0x0ce33510      11e5           mov 0x11,r5
            0x0ce33512      264f           lds.l @r15+,pr
            0x0ce33514      2b43           jmp @r3
            0x0ce33516      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3349a (+0x56)
            0x0ce33518      264f           lds.l @r15+,pr
            0x0ce3351a      0b00           rts 
            0x0ce3351c      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3351e:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340c4)
            0x0ce3351e      224f           sts.l pr,@-r15
            0x0ce33520      fc7f           add 0xFC,r15
            0x0ce33522      0dd3           mov.l @(0x34,PC),r3
            0x0ce33524      0b43           jsr @r3
            0x0ce33526      422f           mov.l r4,@r15
            0x0ce33528      0e60           exts.b r0,r0
            0x0ce3352a      1140           cmp/pz r0
            0x0ce3352c      0489           bt 0x0ce33538
            0x0ce3352e      f264           mov.l @r15,r4
            0x0ce33530      047f           add 0x04,r15
            0x0ce33532      0bd3           mov.l @(0x2C,PC),r3
            0x0ce33534      2b43           jmp @r3
            0x0ce33536      264f           lds.l @r15+,pr
            ; CODE XREF from aav.0x0ce3351e (+0xe)
            0x0ce33538      047f           add 0x04,r15
            0x0ce3353a      264f           lds.l @r15+,pr
            0x0ce3353c      0b00           rts 
            0x0ce3353e      0900           nop 
            0x0ce33540      4101           .word 0x0141
            0x0ce33542      d201           stc r5_bank,r1
            0x0ce33544      c801           .word 0x01C8
            0x0ce33546      3001           .word 0x0130
            0x0ce33548      .dword 0x0ce340c8 ; aav.0x0ce340c8
            0x0ce3354c      5555           mov.l @(0x14,r5),r5
            0x0ce3354e      d53f           dmulu.l r13,r15
            0x0ce33550      9224           mov.l r9,@r4
            0x0ce33552      0940           shlr2 r0
            0x0ce33554      fc23           cmp/str r15,r3
            0x0ce33556      048c           .word 0x8C04
            0x0ce33558      ee4d           ldc r13,r6_bank
            0x0ce3355a      038c           .word 0x8C03
            0x0ce3355c      8c4e           shad r8,r14
            0x0ce3355e      038c           .word 0x8C03
            0x0ce33560      4816           mov.l r4,@(0x20,r6)
            0x0ce33562      058c           .word 0x8C05
            ;-- aav.0x0ce33564:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340a4)
            0x0ce33564      e62f           mov.l r14,@-r15
            0x0ce33566      224f           sts.l pr,@-r15
            0x0ce33568      4bd3           mov.l @(0x12C,PC),r3
            0x0ce3356a      0b43           jsr @r3
            0x0ce3356c      436e           mov r4,r14
            0x0ce3356e      0e60           exts.b r0,r0
            0x0ce33570      1140           cmp/pz r0
            0x0ce33572      0489           bt 0x0ce3357e
            0x0ce33574      264f           lds.l @r15+,pr
            0x0ce33576      49d3           mov.l @(0x124,PC),r3
            0x0ce33578      e364           mov r14,r4
            0x0ce3357a      2b43           jmp @r3
            0x0ce3357c      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33564 (+0xe)
            0x0ce3357e      8290           mov.w @(0x104,PC),r0
            0x0ce33580      ec00           mov.b @(r0,r14),r0
            0x0ce33582      0288           cmp/eq 0x02,r0
            0x0ce33584      0f8b           bf 0x0ce335a6
            0x0ce33586      7e90           mov.w @(0xFC,PC),r0
            0x0ce33588      00e2           mov 0x00,r2
            0x0ce3358a      01e3           mov 0x01,r3
            0x0ce3358c      240e           mov.b r2,@(r0,r14)
            0x0ce3358e      7b90           mov.w @(0xF6,PC),r0
            0x0ce33590      ee04           mov.l @(r0,r14),r4
            0x0ce33592      ec70           add 0xEC,r0
            0x0ce33594      e604           mov.l r14,@(r0,r4)
            0x0ce33596      4270           add 0x42,r0
            0x0ce33598      3404           mov.b r3,@(r0,r4)
            0x0ce3359a      dc70           add 0xDC,r0
            0x0ce3359c      ec02           mov.b @(r0,r14),r2
            0x0ce3359e      21e3           mov 0x21,r3
            0x0ce335a0      2404           mov.b r2,@(r0,r4)
            0x0ce335a2      cf70           add 0xCF,r0
            0x0ce335a4      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce33564 (+0x20)
            0x0ce335a6      264f           lds.l @r15+,pr
            0x0ce335a8      0b00           rts 
            0x0ce335aa      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce335ac:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340a8)
            0x0ce335ac      6b90           mov.w @(0xD6,PC),r0
            0x0ce335ae      e62f           mov.l r14,@-r15
            0x0ce335b0      436e           mov r4,r14
            0x0ce335b2      224f           sts.l pr,@-r15
            0x0ce335b4      ec03           mov.b @(r0,r14),r3
            0x0ce335b6      1143           cmp/pz r3
            0x0ce335b8      0f8d           bt.s 0x0ce335da
            0x0ce335ba      00e4           mov 0x00,r4
            0x0ce335bc      440e           mov.b r4,@(r0,r14)
            0x0ce335be      22e0           mov 0x22,r0
            0x0ce335c0      ec00           mov.b @(r0,r14),r0
            0x0ce335c2      0c60           extu.b r0,r0
            0x0ce335c4      02c8           tst 0x02,r0
            0x0ce335c6      0889           bt 0x0ce335da
            0x0ce335c8      5f90           mov.w @(0xBE,PC),r0
            0x0ce335ca      01e3           mov 0x01,r3
            0x0ce335cc      ec02           mov.b @(r0,r14),r2
            0x0ce335ce      3a22           xor r3,r2
            0x0ce335d0      240e           mov.b r2,@(r0,r14)
            0x0ce335d2      ec01           mov.b @(r0,r14),r1
            0x0ce335d4      5a90           mov.w @(0xB4,PC),r0
            0x0ce335d6      1c61           extu.b r1,r1
            0x0ce335d8      150e           mov.w r1,@(r0,r14)
            ; CODE XREFS from aav.0x0ce335ac (+0xc, +0x1a)
            0x0ce335da      5490           mov.w @(0xA8,PC),r0
            0x0ce335dc      ec00           mov.b @(r0,r14),r0
            0x0ce335de      0188           cmp/eq 0x01,r0
            0x0ce335e0      118b           bf 0x0ce33606
            0x0ce335e2      5090           mov.w @(0xA0,PC),r0
            0x0ce335e4      22e2           mov 0x22,r2
            0x0ce335e6      440e           mov.b r4,@(r0,r14)
            0x0ce335e8      4e90           mov.w @(0x9C,PC),r0
            0x0ce335ea      ee04           mov.l @(r0,r14),r4
            0x0ce335ec      ec70           add 0xEC,r0
            0x0ce335ee      e604           mov.l r14,@(r0,r4)
            0x0ce335f0      1e70           add 0x1E,r0
            0x0ce335f2      ec03           mov.b @(r0,r14),r3
            0x0ce335f4      3404           mov.b r3,@(r0,r4)
            0x0ce335f6      cf70           add 0xCF,r0
            0x0ce335f8      2404           mov.b r2,@(r0,r4)
            0x0ce335fa      5570           add 0x55,r0
            0x0ce335fc      0be3           mov 0x0B,r3
            0x0ce335fe      3404           mov.b r3,@(r0,r4)
            0x0ce33600      27d3           mov.l @(0x9C,PC),r3
            0x0ce33602      0b43           jsr @r3
            0x0ce33604      0900           nop 
            ; CODE XREF from aav.0x0ce335ac (+0x34)
            0x0ce33606      24d2           mov.l @(0x90,PC),r2
            0x0ce33608      0b42           jsr @r2
            0x0ce3360a      e364           mov r14,r4
            0x0ce3360c      0e60           exts.b r0,r0
            0x0ce3360e      1140           cmp/pz r0
            0x0ce33610      0489           bt 0x0ce3361c
            0x0ce33612      264f           lds.l @r15+,pr
            0x0ce33614      21d2           mov.l @(0x84,PC),r2
            0x0ce33616      e364           mov r14,r4
            0x0ce33618      2b42           jmp @r2
            0x0ce3361a      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce335ac (+0x64)
            0x0ce3361c      264f           lds.l @r15+,pr
            0x0ce3361e      0b00           rts 
            0x0ce33620      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33622:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340ac)
            0x0ce33622      e62f           mov.l r14,@-r15
            0x0ce33624      436e           mov r4,r14
            0x0ce33626      d62f           mov.l r13,@-r15
            0x0ce33628      c62f           mov.l r12,@-r15
            0x0ce3362a      b62f           mov.l r11,@-r15
            0x0ce3362c      a62f           mov.l r10,@-r15
            0x0ce3362e      01ea           mov 0x01,r10
            0x0ce33630      fbff           fmov fr15,@-r15
            0x0ce33632      2c9d           mov.w @(0x58,PC),r13
            0x0ce33634      224f           sts.l pr,@-r15
            0x0ce33636      e684           mov.b @(0x6,r14),r0
            0x0ce33638      ec3d           add r14,r13
            0x0ce3363a      8dff           fldi0 fr15
            0x0ce3363c      0820           tst r0,r0
            0x0ce3363e      028d           bt.s 0x0ce33646
            0x0ce33640      00ec           mov 0x00,r12
            0x0ce33642      97a0           bra 0x0ce33774
            0x0ce33644      0900           nop 
            ; CODE XREF from aav.0x0ce33622 (+0x1c)
            0x0ce33646      14d3           mov.l @(0x50,PC),r3
            0x0ce33648      0b43           jsr @r3
            0x0ce3364a      e364           mov r14,r4
            0x0ce3364c      0e60           exts.b r0,r0
            0x0ce3364e      1140           cmp/pz r0
            0x0ce33650      438b           bf 0x0ce336da
            0x0ce33652      1890           mov.w @(0x30,PC),r0
            0x0ce33654      ec00           mov.b @(r0,r14),r0
            0x0ce33656      0288           cmp/eq 0x02,r0
            0x0ce33658      0189           bt 0x0ce3365e
            0x0ce3365a      f2a0           bra 0x0ce33842
            0x0ce3365c      0900           nop 
            ; CODE XREF from aav.0x0ce33622 (+0x36)
            0x0ce3365e      1290           mov.w @(0x24,PC),r0
            0x0ce33660      a40e           mov.b r10,@(r0,r14)
            0x0ce33662      1590           mov.w @(0x2A,PC),r0
            0x0ce33664      ed05           mov.w @(r0,r14),r5
            0x0ce33666      1490           mov.w @(0x28,PC),r0
            0x0ce33668      ec03           mov.b @(r0,r14),r3
            0x0ce3366a      3823           tst r3,r3
            0x0ce3366c      1d8b           bf 0x0ce336aa
            0x0ce3366e      1193           mov.w @(0x22,PC),r3
            0x0ce33670      5d64           extu.w r5,r4
            0x0ce33672      04e7           mov 0x04,r7
            0x0ce33674      4823           tst r4,r3
            0x0ce33676      158d           bt.s 0x0ce336a4
            0x0ce33678      0ee6           mov 0x0E,r6
            0x0ce3367a      22e0           mov 0x22,r0
            0x0ce3367c      602d           mov.b r6,@r13
            0x0ce3367e      1ce3           mov 0x1C,r3
            0x0ce33680      340e           mov.b r3,@(r0,r14)
            0x0ce33682      16a0           bra 0x0ce336b2
            0x0ce33684      7360           mov r7,r0
            0x0ce33686      4101           .word 0x0141
            0x0ce33688      c801           .word 0x01C8
            0x0ce3368a      d201           stc r5_bank,r1
            0x0ce3368c      3001           .word 0x0130
            0x0ce3368e      a402           mov.b r10,@(r0,r2)
            0x0ce33690      4a03           .word 0x034A
            0x0ce33692      2505           mov.w r2,@(r0,r5)
            0x0ce33694      0008           .word 0x0800
            0x0ce33696      0000           .word 0x0000
            0x0ce33698      ee4d           ldc r13,r6_bank
            0x0ce3369a      038c           .word 0x8C03
            0x0ce3369c      4816           mov.l r4,@(0x20,r6)
            0x0ce3369e      058c           .word 0x8C05
            0x0ce336a0      fc23           cmp/str r15,r3
            0x0ce336a2      048c           .word 0x8C04
            ; CODE XREF from aav.0x0ce33622 (+0x54)
            0x0ce336a4      5592           mov.w @(0xAA,PC),r2
            0x0ce336a6      2824           tst r2,r4
            0x0ce336a8      058b           bf 0x0ce336b6
            ; CODE XREF from aav.0x0ce33622 (+0x4a)
            0x0ce336aa      22e0           mov 0x22,r0
            0x0ce336ac      c02d           mov.b r12,@r13
            0x0ce336ae      c40e           mov.b r12,@(r0,r14)
            0x0ce336b0      05e0           mov 0x05,r0
            ; CODE XREF from aav.0x0ce33622 (+0x60)
            0x0ce336b2      c6a0           bra 0x0ce33842
            0x0ce336b4      ee81           mov.w r0,@(0x1C,r14)
            ; CODE XREF from aav.0x0ce33622 (+0x86)
            0x0ce336b6      22e0           mov 0x22,r0
            0x0ce336b8      602d           mov.b r6,@r13
            0x0ce336ba      1ce1           mov 0x1C,r1
            0x0ce336bc      140e           mov.b r1,@(r0,r14)
            0x0ce336be      7360           mov r7,r0
            0x0ce336c0      0900           nop 
            0x0ce336c2      ee81           mov.w r0,@(0x1C,r14)
            0x0ce336c4      4690           mov.w @(0x8C,PC),r0
            0x0ce336c6      4591           mov.w @(0x8A,PC),r1
            0x0ce336c8      ec00           mov.b @(r0,r14),r0
            0x0ce336ca      ec31           add r14,r1
            0x0ce336cc      01ca           xor 0x01,r0
            0x0ce336ce      0021           mov.b r0,@r1
            0x0ce336d0      0c60           extu.b r0,r0
            0x0ce336d2      4091           mov.w @(0x80,PC),r1
            0x0ce336d4      ec31           add r14,r1
            0x0ce336d6      b4a0           bra 0x0ce33842
            0x0ce336d8      0121           mov.w r0,@r1
            ; CODE XREF from aav.0x0ce33622 (+0x2e)
            0x0ce336da      e684           mov.b @(0x6,r14),r0
            0x0ce336dc      0fe5           mov 0x0F,r5
            0x0ce336de      1fd3           mov.l @(0x7C,PC),r3
            0x0ce336e0      0170           add 0x01,r0
            0x0ce336e2      e680           mov.b r0,@(0x6,r14)
            0x0ce336e4      ee85           mov.w @(0x1C,r14),r0
            0x0ce336e6      0366           mov r0,r6
            0x0ce336e8      0b43           jsr @r3
            0x0ce336ea      e364           mov r14,r4
            0x0ce336ec      40e0           mov 0x40,r0
            0x0ce336ee      d180           mov.b r0,@(0x1,r13)
            0x0ce336f0      0de0           mov 0x0D,r0
            0x0ce336f2      d181           mov.w r0,@(0x2,r13)
            0x0ce336f4      3090           mov.w @(0x60,PC),r0
            0x0ce336f6      d480           mov.b r0,@(0x4,r13)
            0x0ce336f8      1ee0           mov 0x1E,r0
            0x0ce336fa      ee81           mov.w r0,@(0x1C,r14)
            0x0ce336fc      a360           mov r10,r0
            0x0ce336fe      0900           nop 
            0x0ce33700      17d3           mov.l @(0x5C,PC),r3
            0x0ce33702      01e5           mov 0x01,r5
            0x0ce33704      02e6           mov 0x02,r6
            0x0ce33706      ef81           mov.w r0,@(0x1E,r14)
            0x0ce33708      00e7           mov 0x00,r7
            0x0ce3370a      0b43           jsr @r3
            0x0ce3370c      e364           mov r14,r4
            0x0ce3370e      2490           mov.w @(0x48,PC),r0
            0x0ce33710      e362           mov r14,r2
            0x0ce33712      14d3           mov.l @(0x50,PC),r3
            0x0ce33714      3472           add 0x34,r2
            0x0ce33716      ee04           mov.l @(r0,r14),r4
            0x0ce33718      4361           mov r4,r1
            0x0ce3371a      3471           add 0x34,r1
            0x0ce3371c      0b43           jsr @r3
            0x0ce3371e      0ce0           mov 0x0C,r0
            0x0ce33720      22e0           mov 0x22,r0
            0x0ce33722      ec02           mov.b @(r0,r14),r2
            0x0ce33724      2822           tst r2,r2
            0x0ce33726      088d           bt.s 0x0ce3373a
            0x0ce33728      fcf4           fmov fr15,fr4
            0x0ce3372a      0fc7           mova @(0x3C,PC),r0
            0x0ce3372c      08f4           fmov @r0,fr4
            0x0ce3372e      1190           mov.w @(0x22,PC),r0
            0x0ce33730      ec03           mov.b @(r0,r14),r3
            0x0ce33732      3823           tst r3,r3
            0x0ce33734      0189           bt 0x0ce3373a
            0x0ce33736      0dc7           mova @(0x34,PC),r0
            0x0ce33738      08f4           fmov @r0,fr4
            ; CODE XREFS from aav.0x0ce33622 (+0x104, +0x112)
            0x0ce3373a      34e0           mov 0x34,r0
            0x0ce3373c      0cd1           mov.l @(0x30,PC),r1
            0x0ce3373e      46f3           fmov @(r0,r4),fr3
            0x0ce33740      5a41           lds r1,fpul
            0x0ce33742      40f3           fadd fr4,fr3
            0x0ce33744      37f4           fmov fr3,@(r0,r4)
            0x0ce33746      38e0           mov 0x38,r0
            0x0ce33748      46f2           fmov @(r0,r4),fr2
            0x0ce3374a      0df3           fsts fpul,fr3
            0x0ce3374c      30f2           fadd fr3,fr2
            0x0ce3374e      78a0           bra 0x0ce33842
            0x0ce33750      27f4           fmov fr2,@(r0,r4)
            0x0ce33752      0004           .word 0x0400
            0x0ce33754      d201           stc r5_bank,r1
            0x0ce33756      3001           .word 0x0130
            0x0ce33758      ff00           mac.l @r15+,@r0+
            0x0ce3375a      c801           .word 0x01C8
            0x0ce3375c      8c4e           shad r8,r14
            0x0ce3375e      038c           .word 0x8C03
            0x0ce33760      e48e           .word 0x8EE4
            0x0ce33762      068c           .word 0x8C06
            0x0ce33764      c894           mov.w @(0x190,PC),r4
            0x0ce33766      128c           .word 0x8C12
            0x0ce33768      0000           .word 0x0000
            0x0ce3376a      20c3           trapa 0x20
            0x0ce3376c      0000           .word 0x0000
            0x0ce3376e      2043           shal r3
            0x0ce33770      dbb6           bsr 0x0ce3452a
            0x0ce33772      4d43           shld r4,r3
            ; CODE XREF from aav.0x0ce33622 (+0x20)
            0x0ce33774      7690           mov.w @(0xEC,PC),r0
            0x0ce33776      d480           mov.b r0,@(0x4,r13)
            0x0ce33778      7590           mov.w @(0xEA,PC),r0
            0x0ce3377a      ee0b           mov.l @(r0,r14),r11
            0x0ce3377c      3570           add 0x35,r0
            0x0ce3377e      bc03           mov.b @(r0,r11),r3
            0x0ce33780      3823           tst r3,r3
            0x0ce33782      0289           bt 0x0ce3378a
            0x0ce33784      c360           mov r12,r0
            0x0ce33786      0900           nop 
            0x0ce33788      d181           mov.w r0,@(0x2,r13)
            ; CODE XREF from aav.0x0ce33622 (+0x160)
            0x0ce3378a      ee85           mov.w @(0x1C,r14),r0
            0x0ce3378c      ff70           add 0xFF,r0
            0x0ce3378e      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33790      0f60           exts.w r0,r0
            0x0ce33792      1140           cmp/pz r0
            0x0ce33794      2c8b           bf 0x0ce337f0
            0x0ce33796      36d2           mov.l @(0xD8,PC),r2
            0x0ce33798      d365           mov r13,r5
            0x0ce3379a      0b42           jsr @r2
            0x0ce3379c      e364           mov r14,r4
            0x0ce3379e      35d3           mov.l @(0xD4,PC),r3
            0x0ce337a0      0b43           jsr @r3
            0x0ce337a2      e364           mov r14,r4
            0x0ce337a4      d185           mov.w @(0x2,r13),r0
            0x0ce337a6      0820           tst r0,r0
            0x0ce337a8      4b89           bt 0x0ce33842
            0x0ce337aa      ef85           mov.w @(0x1E,r14),r0
            0x0ce337ac      ff70           add 0xFF,r0
            0x0ce337ae      ef81           mov.w r0,@(0x1E,r14)
            0x0ce337b0      0f60           exts.w r0,r0
            0x0ce337b2      0820           tst r0,r0
            0x0ce337b4      458b           bf 0x0ce33842
            0x0ce337b6      a360           mov r10,r0
            0x0ce337b8      0900           nop 
            0x0ce337ba      ef81           mov.w r0,@(0x1E,r14)
            0x0ce337bc      2ec7           mova @(0xB8,PC),r0
            0x0ce337be      08f5           fmov @r0,fr5
            0x0ce337c0      22e0           mov 0x22,r0
            0x0ce337c2      ec03           mov.b @(r0,r14),r3
            0x0ce337c4      3823           tst r3,r3
            0x0ce337c6      0a8d           bt.s 0x0ce337de
            0x0ce337c8      fcf4           fmov fr15,fr4
            0x0ce337ca      2cc7           mova @(0xB0,PC),r0
            0x0ce337cc      08f4           fmov @r0,fr4
            0x0ce337ce      2cc7           mova @(0xB0,PC),r0
            0x0ce337d0      08f5           fmov @r0,fr5
            0x0ce337d2      4990           mov.w @(0x92,PC),r0
            0x0ce337d4      ec03           mov.b @(r0,r14),r3
            0x0ce337d6      3823           tst r3,r3
            0x0ce337d8      0189           bt 0x0ce337de
            0x0ce337da      2ac7           mova @(0xA8,PC),r0
            0x0ce337dc      08f4           fmov @r0,fr4
            ; CODE XREFS from aav.0x0ce33622 (+0x1a4, +0x1b6)
            0x0ce337de      34e0           mov 0x34,r0
            0x0ce337e0      b6f3           fmov @(r0,r11),fr3
            0x0ce337e2      40f3           fadd fr4,fr3
            0x0ce337e4      37fb           fmov fr3,@(r0,r11)
            0x0ce337e6      38e0           mov 0x38,r0
            0x0ce337e8      b6f2           fmov @(r0,r11),fr2
            0x0ce337ea      50f2           fadd fr5,fr2
            0x0ce337ec      29a0           bra 0x0ce33842
            0x0ce337ee      27fb           fmov fr2,@(r0,r11)
            ; CODE XREF from aav.0x0ce33622 (+0x172)
            0x0ce337f0      c360           mov r12,r0
            0x0ce337f2      0900           nop 
            0x0ce337f4      d181           mov.w r0,@(0x2,r13)
            0x0ce337f6      d480           mov.b r0,@(0x4,r13)
            0x0ce337f8      3790           mov.w @(0x6E,PC),r0
            0x0ce337fa      3793           mov.w @(0x6E,PC),r3
            0x0ce337fc      e60b           mov.l r14,@(r0,r11)
            0x0ce337fe      4270           add 0x42,r0
            0x0ce33800      a40b           mov.b r10,@(r0,r11)
            0x0ce33802      ab70           add 0xAB,r0
            0x0ce33804      340b           mov.b r3,@(r0,r11)
            0x0ce33806      3170           add 0x31,r0
            0x0ce33808      ec02           mov.b @(r0,r14),r2
            0x0ce3380a      2822           tst r2,r2
            0x0ce3380c      088d           bt.s 0x0ce33820
            0x0ce3380e      00e5           mov 0x00,r5
            0x0ce33810      22e0           mov 0x22,r0
            0x0ce33812      ec00           mov.b @(r0,r14),r0
            0x0ce33814      22e1           mov 0x22,r1
            0x0ce33816      ec31           add r14,r1
            0x0ce33818      0b60           neg r0,r0
            0x0ce3381a      2070           add 0x20,r0
            0x0ce3381c      1fc9           and 0x1F,r0
            0x0ce3381e      0021           mov.b r0,@r1
            ; CODE XREF from aav.0x0ce33622 (+0x1ea)
            0x0ce33820      19d3           mov.l @(0x64,PC),r3
            0x0ce33822      0b43           jsr @r3
            0x0ce33824      e364           mov r14,r4
            0x0ce33826      19d2           mov.l @(0x64,PC),r2
            0x0ce33828      2be5           mov 0x2B,r5
            0x0ce3382a      0b42           jsr @r2
            0x0ce3382c      e364           mov r14,r4
            0x0ce3382e      264f           lds.l @r15+,pr
            0x0ce33830      17d3           mov.l @(0x5C,PC),r3
            0x0ce33832      e364           mov r14,r4
            0x0ce33834      f9ff           fmov @r15+,fr15
            0x0ce33836      f66a           mov.l @r15+,r10
            0x0ce33838      f66b           mov.l @r15+,r11
            0x0ce3383a      f66c           mov.l @r15+,r12
            0x0ce3383c      f66d           mov.l @r15+,r13
            0x0ce3383e      2b43           jmp @r3
            0x0ce33840      f66e           mov.l @r15+,r14
            ; XREFS: CODE 0x0ce3365a  CODE 0x0ce336b2  CODE 0x0ce336d6  
            ; XREFS: CODE 0x0ce3374e  CODE 0x0ce337a8  CODE 0x0ce337b4  
            ; XREFS: CODE 0x0ce337ec  
            0x0ce33842      264f           lds.l @r15+,pr
            0x0ce33844      f9ff           fmov @r15+,fr15
            0x0ce33846      f66a           mov.l @r15+,r10
            0x0ce33848      f66b           mov.l @r15+,r11
            0x0ce3384a      f66c           mov.l @r15+,r12
            0x0ce3384c      f66d           mov.l @r15+,r13
            0x0ce3384e      0b00           rts 
            0x0ce33850      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33852:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340b0)
            0x0ce33852      4363           mov r4,r3
            0x0ce33854      0fd1           mov.l @(0x3C,PC),r1
            0x0ce33856      462f           mov.l r4,@-r15
            0x0ce33858      3684           mov.b @(0x6,r3),r0
            0x0ce3385a      0c60           extu.b r0,r0
            0x0ce3385c      0840           shll2 r0
            0x0ce3385e      1e03           mov.l @(r0,r1),r3
            0x0ce33860      2b43           jmp @r3
            0x0ce33862      047f           add 0x04,r15
            0x0ce33864      ff00           mac.l @r15+,@r0+
            0x0ce33866      c801           .word 0x01C8
/ (fcn) fcn.0ce33868 162
|   fcn.0ce33868 (int arg_6h);
|           ; arg int arg_6h @ r14+0x6
|           ; CALL XREF from fcn.0ce339a8 (+0x22)
|           0x0ce33868      d201           stc r5_bank,r1
|           0x0ce3386a      b401           mov.b r11,@(r0,r1)
|           0x0ce3386c      a300           ocbp @r0
|           0x0ce3386e      0000           .word 0x0000
|           0x0ce33870      .dword 0x0ce31ca0 ; aav.0x0ce31ca0
|           0x0ce33874      ee4d           ldc r13,r6_bank
|           0x0ce33876      038c           .word 0x8C03
|           0x0ce33878      2449           rotcl r9
|           0x0ce3387a      9a41           .word 0x419A
|           0x0ce3387c      0000           .word 0x0000
|           0x0ce3387e      20c1           mov.w r0,@(0x40,gbr)
|           0x0ce33880      dbb6           bsr 0x0ce3463a
|           0x0ce33882      4d41           shld r4,r1
|           0x0ce33884      0000           .word 0x0000
|           0x0ce33886      2041           shal r1
|           0x0ce33888      6251           mov.l @(0x8,r6),r1
|           0x0ce3388a      038c           .word 0x8C03
|           0x0ce3388c      0820           tst r0,r0
|           0x0ce3388e      048c           .word 0x8C04
|           0x0ce33890      4816           mov.l r4,@(0x20,r6)
|           0x0ce33892      058c           .word 0x8C05
|           0x0ce33894      .dword 0x0ce340e0 ; aav.0x0ce340e0
|           ;-- aav.0x0ce33898:
|           ; UNKNOWN XREF from fcn.0ce34092 (0xce340e0)
|           0x0ce33898      e62f           mov.l r14,@-r15
|           0x0ce3389a      5ce1           mov 0x5C,r1
|           0x0ce3389c      436e           mov r4,r14
|           0x0ce3389e      ec31           add r14,r1
|           0x0ce338a0      34e0           mov 0x34,r0
|           0x0ce338a2      47d3           mov.l @(0x11C,PC),r3
|           0x0ce338a4      224f           sts.l pr,@-r15
|           0x0ce338a6      e6f2           fmov @(r0,r14),fr2
|           0x0ce338a8      18f3           fmov @r1,fr3
|           0x0ce338aa      68e1           mov 0x68,r1
|           0x0ce338ac      ec31           add r14,r1
|           0x0ce338ae      30f2           fadd fr3,fr2
|           0x0ce338b0      27fe           fmov fr2,@(r0,r14)
|           0x0ce338b2      5ce0           mov 0x5C,r0
|           0x0ce338b4      18f3           fmov @r1,fr3
|           0x0ce338b6      60e1           mov 0x60,r1
|           0x0ce338b8      e6f2           fmov @(r0,r14),fr2
|           0x0ce338ba      ec31           add r14,r1
|           0x0ce338bc      30f2           fadd fr3,fr2
|           0x0ce338be      27fe           fmov fr2,@(r0,r14)
|           0x0ce338c0      38e0           mov 0x38,r0
|           0x0ce338c2      e6f2           fmov @(r0,r14),fr2
|           0x0ce338c4      18f3           fmov @r1,fr3
|           0x0ce338c6      6ce1           mov 0x6C,r1
|           0x0ce338c8      ec31           add r14,r1
|           0x0ce338ca      30f2           fadd fr3,fr2
|           0x0ce338cc      27fe           fmov fr2,@(r0,r14)
|           0x0ce338ce      60e0           mov 0x60,r0
|           0x0ce338d0      e6f2           fmov @(r0,r14),fr2
|           0x0ce338d2      18f3           fmov @r1,fr3
|           0x0ce338d4      30f2           fadd fr3,fr2
|           0x0ce338d6      27fe           fmov fr2,@(r0,r14)
|           0x0ce338d8      0b43           jsr @r3
|           0x0ce338da      e364           mov r14,r4
|           0x0ce338dc      6b90           mov.w @(0xD6,PC),r0
|           0x0ce338de      ec00           mov.b @(r0,r14),r0
|           0x0ce338e0      0288           cmp/eq 0x02,r0
|           0x0ce338e2      0f8b           bf 0x0ce33904
|           0x0ce338e4      e684           mov.b @(0x6,r14),r0
|           0x0ce338e6      8df4           fldi0 fr4
|           0x0ce338e8      0170           add 0x01,r0
|           0x0ce338ea      e680           mov.b r0,@(0x6,r14)
|           0x0ce338ec      5ce0           mov 0x5C,r0
|           0x0ce338ee      47fe           fmov fr4,@(r0,r14)
|           0x0ce338f0      68e0           mov 0x68,r0
|           0x0ce338f2      47fe           fmov fr4,@(r0,r14)
|           0x0ce338f4      33c7           mova @(0xCC,PC),r0
|           0x0ce338f6      08f3           fmov @r0,fr3
|           0x0ce338f8      60e0           mov 0x60,r0
|           0x0ce338fa      37fe           fmov fr3,@(r0,r14)
|           0x0ce338fc      32c7           mova @(0xC8,PC),r0
|           0x0ce338fe      08f3           fmov @r0,fr3
|           0x0ce33900      6ce0           mov 0x6C,r0
|           0x0ce33902      37fe           fmov fr3,@(r0,r14)
|           ; CODE XREF from fcn.0ce33868 (0xce338e2)
|           0x0ce33904      264f           lds.l @r15+,pr
|           0x0ce33906      0b00           rts 
\           0x0ce33908      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce3390a:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340e4)
            0x0ce3390a      e62f           mov.l r14,@-r15
            0x0ce3390c      5ce1           mov 0x5C,r1
            0x0ce3390e      436e           mov r4,r14
            0x0ce33910      ec31           add r14,r1
            0x0ce33912      34e0           mov 0x34,r0
            0x0ce33914      224f           sts.l pr,@-r15
            0x0ce33916      e6f2           fmov @(r0,r14),fr2
            0x0ce33918      18f3           fmov @r1,fr3
            0x0ce3391a      68e1           mov 0x68,r1
            0x0ce3391c      ec31           add r14,r1
            0x0ce3391e      30f2           fadd fr3,fr2
            0x0ce33920      27fe           fmov fr2,@(r0,r14)
            0x0ce33922      5ce0           mov 0x5C,r0
            0x0ce33924      18f3           fmov @r1,fr3
            0x0ce33926      60e1           mov 0x60,r1
            0x0ce33928      e6f2           fmov @(r0,r14),fr2
            0x0ce3392a      ec31           add r14,r1
            0x0ce3392c      30f2           fadd fr3,fr2
            0x0ce3392e      27fe           fmov fr2,@(r0,r14)
            0x0ce33930      38e0           mov 0x38,r0
            0x0ce33932      e6f2           fmov @(r0,r14),fr2
            0x0ce33934      18f3           fmov @r1,fr3
            0x0ce33936      6ce1           mov 0x6C,r1
            0x0ce33938      ec31           add r14,r1
            0x0ce3393a      30f2           fadd fr3,fr2
            0x0ce3393c      27fe           fmov fr2,@(r0,r14)
            0x0ce3393e      60e0           mov 0x60,r0
            0x0ce33940      e6f2           fmov @(r0,r14),fr2
            0x0ce33942      18f3           fmov @r1,fr3
            0x0ce33944      30f2           fadd fr3,fr2
            0x0ce33946      27fe           fmov fr2,@(r0,r14)
            0x0ce33948      20c7           mova @(0x80,PC),r0
            0x0ce3394a      08f3           fmov @r0,fr3
            0x0ce3394c      3490           mov.w @(0x68,PC),r0
            0x0ce3394e      e6f2           fmov @(r0,r14),fr2
            0x0ce33950      38e0           mov 0x38,r0
            0x0ce33952      e6f1           fmov @(r0,r14),fr1
            0x0ce33954      30f2           fadd fr3,fr2
            0x0ce33956      15f2           fcmp/gt fr1,fr2
            0x0ce33958      2a8b           bf 0x0ce339b0
            0x0ce3395a      e684           mov.b @(0x6,r14),r0
            0x0ce3395c      18d3           mov.l @(0x60,PC),r3
            0x0ce3395e      0170           add 0x01,r0
            0x0ce33960      e680           mov.b r0,@(0x6,r14)
            0x0ce33962      0ae0           mov 0x0A,r0
            0x0ce33964      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33966      1ac7           mova @(0x68,PC),r0
            0x0ce33968      08f2           fmov @r0,fr2
            0x0ce3396a      6ce0           mov 0x6C,r0
            0x0ce3396c      27fe           fmov fr2,@(r0,r14)
            0x0ce3396e      0b43           jsr @r3
            0x0ce33970      e364           mov r14,r4
            0x0ce33972      2290           mov.w @(0x44,PC),r0
            0x0ce33974      01e3           mov 0x01,r3
            0x0ce33976      00e7           mov 0x00,r7
            0x0ce33978      ee04           mov.l @(r0,r14),r4
            0x0ce3397a      ec70           add 0xEC,r0
            0x0ce3397c      7366           mov r7,r6
            0x0ce3397e      01e5           mov 0x01,r5
            0x0ce33980      e604           mov.l r14,@(r0,r4)
            0x0ce33982      4270           add 0x42,r0
            0x0ce33984      3404           mov.b r3,@(r0,r4)
            0x0ce33986      dc70           add 0xDC,r0
            0x0ce33988      ec02           mov.b @(r0,r14),r2
            0x0ce3398a      24e3           mov 0x24,r3
            0x0ce3398c      2404           mov.b r2,@(r0,r4)
            0x0ce3398e      cf70           add 0xCF,r0
            0x0ce33990      3404           mov.b r3,@(r0,r4)
            0x0ce33992      40e0           mov 0x40,r0
            0x0ce33994      1294           mov.w @(0x24,PC),r4
            0x0ce33996      08e3           mov 0x08,r3
            0x0ce33998      ec34           add r14,r4
            0x0ce3399a      3024           mov.b r3,@r4
            0x0ce3399c      4180           mov.b r0,@(0x1,r4)
            0x0ce3399e      05e0           mov 0x05,r0
            0x0ce339a0      4181           mov.w r0,@(0x2,r4)
            0x0ce339a2      0c90           mov.w @(0x18,PC),r0
            0x0ce339a4      0bd3           mov.l @(0x2C,PC),r3
            0x0ce339a6      4480           mov.b r0,@(0x4,r4)
/ (fcn) fcn.0ce339a8 8
|   fcn.0ce339a8 ();
|           ; CALL XREF from aav.0x0ce33adc (+0x2e)
|           0x0ce339a8      e364           mov r14,r4
|           0x0ce339aa      264f           lds.l @r15+,pr
|           0x0ce339ac      2b43           jmp @r3
\           0x0ce339ae      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce3390a (+0x4e)
            0x0ce339b0      264f           lds.l @r15+,pr
            0x0ce339b2      0b00           rts 
            0x0ce339b4      f66e           mov.l @r15+,r14
            0x0ce339b6      4101           .word 0x0141
            0x0ce339b8      1c04           mov.b @(r0,r1),r4
            0x0ce339ba      c801           .word 0x01C8
            0x0ce339bc      a402           mov.b r10,@(r0,r2)
            0x0ce339be      ff00           mac.l @r15+,@r0+
            0x0ce339c0      ee4d           ldc r13,r6_bank
            0x0ce339c2      038c           .word 0x8C03
            0x0ce339c4      dbb6           bsr 0x0ce3477e
            0x0ce339c6      cdc0           mov.b r0,@(0xCD,gbr)
            0x0ce339c8      dbb6           bsr 0x0ce34782
            0x0ce339ca      4dbf           bsr fcn.0ce33868
            0x0ce339cc      9224           mov.l r9,@r4
            0x0ce339ce      8943           .word 0x4389
            0x0ce339d0      9224           mov.l r9,@r4
            0x0ce339d2      093f           .word 0x3F09
            0x0ce339d4      e48e           .word 0x8EE4
            0x0ce339d6      068c           .word 0x8C06
            ;-- aav.0x0ce339d8:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340e8)
            0x0ce339d8      e62f           mov.l r14,@-r15
            0x0ce339da      436e           mov r4,r14
            0x0ce339dc      d62f           mov.l r13,@-r15
            0x0ce339de      5ce1           mov 0x5C,r1
            0x0ce339e0      859d           mov.w @(0x10A,PC),r13
            0x0ce339e2      ec31           add r14,r1
            0x0ce339e4      8490           mov.w @(0x108,PC),r0
            0x0ce339e6      ec3d           add r14,r13
            0x0ce339e8      224f           sts.l pr,@-r15
            0x0ce339ea      d480           mov.b r0,@(0x4,r13)
            0x0ce339ec      34e0           mov 0x34,r0
            0x0ce339ee      e6f2           fmov @(r0,r14),fr2
            0x0ce339f0      18f3           fmov @r1,fr3
            0x0ce339f2      68e1           mov 0x68,r1
            0x0ce339f4      ec31           add r14,r1
            0x0ce339f6      30f2           fadd fr3,fr2
            0x0ce339f8      27fe           fmov fr2,@(r0,r14)
            0x0ce339fa      5ce0           mov 0x5C,r0
            0x0ce339fc      e6f2           fmov @(r0,r14),fr2
            0x0ce339fe      18f3           fmov @r1,fr3
            0x0ce33a00      60e1           mov 0x60,r1
            0x0ce33a02      ec31           add r14,r1
            0x0ce33a04      30f2           fadd fr3,fr2
            0x0ce33a06      27fe           fmov fr2,@(r0,r14)
            0x0ce33a08      38e0           mov 0x38,r0
            0x0ce33a0a      e6f2           fmov @(r0,r14),fr2
            0x0ce33a0c      18f3           fmov @r1,fr3
            0x0ce33a0e      6ce1           mov 0x6C,r1
            0x0ce33a10      ec31           add r14,r1
            0x0ce33a12      30f2           fadd fr3,fr2
            0x0ce33a14      27fe           fmov fr2,@(r0,r14)
            0x0ce33a16      60e0           mov 0x60,r0
            0x0ce33a18      e6f2           fmov @(r0,r14),fr2
            0x0ce33a1a      18f3           fmov @r1,fr3
            0x0ce33a1c      30f2           fadd fr3,fr2
            0x0ce33a1e      27fe           fmov fr2,@(r0,r14)
            0x0ce33a20      6790           mov.w @(0xCE,PC),r0
            0x0ce33a22      e6f3           fmov @(r0,r14),fr3
            0x0ce33a24      38e0           mov 0x38,r0
            0x0ce33a26      e6f2           fmov @(r0,r14),fr2
            0x0ce33a28      25f3           fcmp/gt fr2,fr3
            0x0ce33a2a      078b           bf 0x0ce33a3c
            0x0ce33a2c      32c7           mova @(0xC8,PC),r0
            0x0ce33a2e      08f3           fmov @r0,fr3
            0x0ce33a30      5f90           mov.w @(0xBE,PC),r0
            0x0ce33a32      e6f2           fmov @(r0,r14),fr2
            0x0ce33a34      38e0           mov 0x38,r0
            0x0ce33a36      30f2           fadd fr3,fr2
            0x0ce33a38      0aa0           bra 0x0ce33a50
            0x0ce33a3a      27fe           fmov fr2,@(r0,r14)
            ; CODE XREF from aav.0x0ce339d8 (+0x52)
            0x0ce33a3c      2fd2           mov.l @(0xBC,PC),r2
            0x0ce33a3e      d365           mov r13,r5
            0x0ce33a40      0b42           jsr @r2
            0x0ce33a42      e364           mov r14,r4
            0x0ce33a44      ee85           mov.w @(0x1C,r14),r0
            0x0ce33a46      ff70           add 0xFF,r0
            0x0ce33a48      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33a4a      0f60           exts.w r0,r0
            0x0ce33a4c      1140           cmp/pz r0
            0x0ce33a4e      2789           bt 0x0ce33aa0
            ; CODE XREF from aav.0x0ce339d8 (+0x60)
            0x0ce33a50      e684           mov.b @(0x6,r14),r0
            0x0ce33a52      0170           add 0x01,r0
            0x0ce33a54      e680           mov.b r0,@(0x6,r14)
            0x0ce33a56      00e0           mov 0x00,r0
            0x0ce33a58      d480           mov.b r0,@(0x4,r13)
            0x0ce33a5a      29c7           mova @(0xA4,PC),r0
            0x0ce33a5c      08f3           fmov @r0,fr3
            0x0ce33a5e      5ce0           mov 0x5C,r0
            0x0ce33a60      37fe           fmov fr3,@(r0,r14)
            0x0ce33a62      4790           mov.w @(0x8E,PC),r0
            0x0ce33a64      ed03           mov.w @(r0,r14),r3
            0x0ce33a66      3823           tst r3,r3
            0x0ce33a68      0389           bt 0x0ce33a72
            0x0ce33a6a      5ce0           mov 0x5C,r0
            0x0ce33a6c      e6f3           fmov @(r0,r14),fr3
            0x0ce33a6e      4df3           fneg fr3
            0x0ce33a70      37fe           fmov fr3,@(r0,r14)
            ; CODE XREF from aav.0x0ce339d8 (+0x90)
            0x0ce33a72      68e0           mov 0x68,r0
            0x0ce33a74      8df3           fldi0 fr3
            0x0ce33a76      37fe           fmov fr3,@(r0,r14)
            0x0ce33a78      22c7           mova @(0x88,PC),r0
            0x0ce33a7a      08f3           fmov @r0,fr3
            0x0ce33a7c      60e0           mov 0x60,r0
            0x0ce33a7e      23d3           mov.l @(0x8C,PC),r3
            0x0ce33a80      00e5           mov 0x00,r5
            0x0ce33a82      37fe           fmov fr3,@(r0,r14)
            0x0ce33a84      20c7           mova @(0x80,PC),r0
            0x0ce33a86      08f3           fmov @r0,fr3
            0x0ce33a88      6ce0           mov 0x6C,r0
            0x0ce33a8a      37fe           fmov fr3,@(r0,r14)
            0x0ce33a8c      0b43           jsr @r3
            0x0ce33a8e      e364           mov r14,r4
            0x0ce33a90      264f           lds.l @r15+,pr
            0x0ce33a92      1fd2           mov.l @(0x7C,PC),r2
            0x0ce33a94      07e6           mov 0x07,r6
            0x0ce33a96      0fe5           mov 0x0F,r5
            0x0ce33a98      e364           mov r14,r4
            0x0ce33a9a      f66d           mov.l @r15+,r13
            0x0ce33a9c      2b42           jmp @r2
            0x0ce33a9e      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce339d8 (+0x76)
            0x0ce33aa0      264f           lds.l @r15+,pr
            0x0ce33aa2      f66d           mov.l @r15+,r13
            0x0ce33aa4      0b00           rts 
            0x0ce33aa6      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33aa8:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340ec)
            0x0ce33aa8      e62f           mov.l r14,@-r15
            0x0ce33aaa      224f           sts.l pr,@-r15
            0x0ce33aac      19d3           mov.l @(0x64,PC),r3
            0x0ce33aae      0b43           jsr @r3
            0x0ce33ab0      436e           mov r4,r14
            0x0ce33ab2      19d2           mov.l @(0x64,PC),r2
            0x0ce33ab4      0b42           jsr @r2
            0x0ce33ab6      e364           mov r14,r4
            0x0ce33ab8      18d3           mov.l @(0x60,PC),r3
            0x0ce33aba      0b43           jsr @r3
            0x0ce33abc      e364           mov r14,r4
            0x0ce33abe      0c60           extu.b r0,r0
            0x0ce33ac0      0820           tst r0,r0
            0x0ce33ac2      0889           bt 0x0ce33ad6
            0x0ce33ac4      16d3           mov.l @(0x58,PC),r3
            0x0ce33ac6      2be5           mov 0x2B,r5
            0x0ce33ac8      0b43           jsr @r3
            0x0ce33aca      e364           mov r14,r4
            0x0ce33acc      264f           lds.l @r15+,pr
            0x0ce33ace      15d2           mov.l @(0x54,PC),r2
            0x0ce33ad0      e364           mov r14,r4
            0x0ce33ad2      2b42           jmp @r2
            0x0ce33ad4      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33aa8 (+0x1a)
            0x0ce33ad6      264f           lds.l @r15+,pr
            0x0ce33ad8      0b00           rts 
            0x0ce33ada      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33adc:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340b4)
            0x0ce33adc      4363           mov r4,r3
            0x0ce33ade      12d1           mov.l @(0x48,PC),r1
            0x0ce33ae0      462f           mov.l r4,@-r15
            0x0ce33ae2      3684           mov.b @(0x6,r3),r0
            0x0ce33ae4      0c60           extu.b r0,r0
            0x0ce33ae6      0840           shll2 r0
            0x0ce33ae8      1e03           mov.l @(r0,r1),r3
            0x0ce33aea      2b43           jmp @r3
            0x0ce33aec      047f           add 0x04,r15
            0x0ce33aee      a402           mov.b r10,@(r0,r2)
            0x0ce33af0      ff00           mac.l @r15+,@r0+
            0x0ce33af2      1c04           mov.b @(r0,r1),r4
            0x0ce33af4      3001           .word 0x0130
            0x0ce33af6      0000           .word 0x0000
            0x0ce33af8      9224           mov.l r9,@r4
            0x0ce33afa      09c0           mov.b r0,@(0x9,gbr)
            0x0ce33afc      .dword 0x0ce31ca0 ; aav.0x0ce31ca0
            0x0ce33b00      5555           mov.l @(0x14,r5),r5
            0x0ce33b02      5540           .word 0x4055
            0x0ce33b04      b66d           mov.l @r11+,r13
            0x0ce33b06      ab41           .word 0x41AB
            0x0ce33b08      dbb6           bsr 0x0ce348c2
            0x0ce33b0a      4dbf           bsr fcn.0ce339a8
            0x0ce33b0c      6251           mov.l @(0x8,r6),r1
            0x0ce33b0e      038c           .word 0x8C03
            0x0ce33b10      8c4e           shad r8,r14
            0x0ce33b12      038c           .word 0x8C03
            0x0ce33b14      ee4d           ldc r13,r6_bank
            0x0ce33b16      038c           .word 0x8C03
            0x0ce33b18      a8fe           fmov @r10,fr14
            0x0ce33b1a      048c           .word 0x8C04
            0x0ce33b1c      e22c           mov.l r14,@r12
            0x0ce33b1e      058c           .word 0x8C05
            0x0ce33b20      0820           tst r0,r0
            0x0ce33b22      048c           .word 0x8C04
            0x0ce33b24      ac2d           cmp/str r10,r13
            0x0ce33b26      058c           .word 0x8C05
            0x0ce33b28      .dword 0x0ce340f0 ; aav.0x0ce340f0
            ;-- aav.0x0ce33b2c:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340f0)
            0x0ce33b2c      e62f           mov.l r14,@-r15
            0x0ce33b2e      d62f           mov.l r13,@-r15
            0x0ce33b30      224f           sts.l pr,@-r15
            0x0ce33b32      52d3           mov.l @(0x148,PC),r3
            0x0ce33b34      0b43           jsr @r3
            0x0ce33b36      436e           mov r4,r14
            0x0ce33b38      9990           mov.w @(0x132,PC),r0
            0x0ce33b3a      ec02           mov.b @(r0,r14),r2
            0x0ce33b3c      2822           tst r2,r2
            0x0ce33b3e      1689           bt 0x0ce33b6e
            0x0ce33b40      e684           mov.b @(0x6,r14),r0
            0x0ce33b42      0ce3           mov 0x0C,r3
            0x0ce33b44      949d           mov.w @(0x128,PC),r13
            0x0ce33b46      02e6           mov 0x02,r6
            0x0ce33b48      0170           add 0x01,r0
            0x0ce33b4a      4dd2           mov.l @(0x134,PC),r2
            0x0ce33b4c      e680           mov.b r0,@(0x6,r14)
            0x0ce33b4e      40e0           mov 0x40,r0
            0x0ce33b50      ec3d           add r14,r13
            0x0ce33b52      d180           mov.b r0,@(0x1,r13)
            0x0ce33b54      00e0           mov 0x00,r0
            0x0ce33b56      d181           mov.w r0,@(0x2,r13)
            0x0ce33b58      01e5           mov 0x01,r5
            0x0ce33b5a      8a90           mov.w @(0x114,PC),r0
            0x0ce33b5c      00e7           mov 0x00,r7
            0x0ce33b5e      d480           mov.b r0,@(0x4,r13)
            0x0ce33b60      302d           mov.b r3,@r13
            0x0ce33b62      0b42           jsr @r2
            0x0ce33b64      e364           mov r14,r4
            0x0ce33b66      20e0           mov 0x20,r0
            0x0ce33b68      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33b6a      00e0           mov 0x00,r0
            0x0ce33b6c      d680           mov.b r0,@(0x6,r13)
            ; CODE XREF from aav.0x0ce33b2c (+0x12)
            0x0ce33b6e      264f           lds.l @r15+,pr
            0x0ce33b70      f66d           mov.l @r15+,r13
            0x0ce33b72      0b00           rts 
            0x0ce33b74      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33b76:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340f4)
            0x0ce33b76      7b95           mov.w @(0xF6,PC),r5
            0x0ce33b78      e62f           mov.l r14,@-r15
            0x0ce33b7a      436e           mov r4,r14
            0x0ce33b7c      7990           mov.w @(0xF2,PC),r0
            0x0ce33b7e      ec35           add r14,r5
            0x0ce33b80      224f           sts.l pr,@-r15
            0x0ce33b82      40d3           mov.l @(0x100,PC),r3
            0x0ce33b84      5480           mov.b r0,@(0x4,r5)
            0x0ce33b86      0b43           jsr @r3
            0x0ce33b88      e364           mov r14,r4
            0x0ce33b8a      3cd2           mov.l @(0xF0,PC),r2
            0x0ce33b8c      0b42           jsr @r2
            0x0ce33b8e      e364           mov r14,r4
            0x0ce33b90      ee85           mov.w @(0x1C,r14),r0
            0x0ce33b92      ff70           add 0xFF,r0
            0x0ce33b94      ee81           mov.w r0,@(0x1C,r14)
            0x0ce33b96      0f60           exts.w r0,r0
            0x0ce33b98      1140           cmp/pz r0
            0x0ce33b9a      0989           bt 0x0ce33bb0
            0x0ce33b9c      e684           mov.b @(0x6,r14),r0
            0x0ce33b9e      e364           mov r14,r4
            0x0ce33ba0      39d3           mov.l @(0xE4,PC),r3
            0x0ce33ba2      09e6           mov 0x09,r6
            0x0ce33ba4      0170           add 0x01,r0
            0x0ce33ba6      e680           mov.b r0,@(0x6,r14)
            0x0ce33ba8      0fe5           mov 0x0F,r5
            0x0ce33baa      264f           lds.l @r15+,pr
            0x0ce33bac      2b43           jmp @r3
            0x0ce33bae      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33b76 (+0x24)
            0x0ce33bb0      264f           lds.l @r15+,pr
            0x0ce33bb2      0b00           rts 
            0x0ce33bb4      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33bb6:
            ; UNKNOWN XREF from fcn.0ce34092 (0xce340f8)
            0x0ce33bb6      e62f           mov.l r14,@-r15
            0x0ce33bb8      436e           mov r4,r14
            0x0ce33bba      d62f           mov.l r13,@-r15
            0x0ce33bbc      589d           mov.w @(0xB0,PC),r13
            0x0ce33bbe      5890           mov.w @(0xB0,PC),r0
            0x0ce33bc0      ec3d           add r14,r13
            0x0ce33bc2      224f           sts.l pr,@-r15
            0x0ce33bc4      d480           mov.b r0,@(0x4,r13)
            0x0ce33bc6      e784           mov.b @(0x7,r14),r0
            0x0ce33bc8      0820           tst r0,r0
            0x0ce33bca      038b           bf 0x0ce33bd4
            0x0ce33bcc      2dd3           mov.l @(0xB4,PC),r3
            0x0ce33bce      d365           mov r13,r5
            0x0ce33bd0      0b43           jsr @r3
            0x0ce33bd2      e364           mov r14,r4
            ; CODE XREF from aav.0x0ce33bb6 (+0x14)
            0x0ce33bd4      29d2           mov.l @(0xA4,PC),r2
            0x0ce33bd6      0b42           jsr @r2
            0x0ce33bd8      e364           mov r14,r4
            0x0ce33bda      0e60           exts.b r0,r0
            0x0ce33bdc      1140           cmp/pz r0
            0x0ce33bde      218b           bf 0x0ce33c24
            0x0ce33be0      4590           mov.w @(0x8A,PC),r0
            0x0ce33be2      ec00           mov.b @(r0,r14),r0
            0x0ce33be4      0288           cmp/eq 0x02,r0
            0x0ce33be6      2b89           bt 0x0ce33c40
            0x0ce33be8      4190           mov.w @(0x82,PC),r0
            0x0ce33bea      00e4           mov 0x00,r4
            0x0ce33bec      440e           mov.b r4,@(r0,r14)
            0x0ce33bee      4360           mov r4,r0
            0x0ce33bf0      0900           nop 
            0x0ce33bf2      d480           mov.b r0,@(0x4,r13)
            0x0ce33bf4      4365           mov r4,r5
            0x0ce33bf6      e784           mov.b @(0x7,r14),r0
            0x0ce33bf8      24d3           mov.l @(0x90,PC),r3
            0x0ce33bfa      0170           add 0x01,r0
            0x0ce33bfc      e780           mov.b r0,@(0x7,r14)
            0x0ce33bfe      0b43           jsr @r3
            0x0ce33c00      e364           mov r14,r4
            0x0ce33c02      3790           mov.w @(0x6E,PC),r0
            0x0ce33c04      01e3           mov 0x01,r3
            0x0ce33c06      3691           mov.w @(0x6C,PC),r1
            0x0ce33c08      ee04           mov.l @(r0,r14),r4
            0x0ce33c0a      ec70           add 0xEC,r0
            0x0ce33c0c      e604           mov.l r14,@(r0,r4)
            0x0ce33c0e      4270           add 0x42,r0
            0x0ce33c10      3404           mov.b r3,@(r0,r4)
            0x0ce33c12      dc70           add 0xDC,r0
            0x0ce33c14      ec00           mov.b @(r0,r14),r0
            0x0ce33c16      4c31           add r4,r1
            0x0ce33c18      25e3           mov 0x25,r3
            0x0ce33c1a      01ca           xor 0x01,r0
            0x0ce33c1c      0021           mov.b r0,@r1
            0x0ce33c1e      2b90           mov.w @(0x56,PC),r0
            0x0ce33c20      0ea0           bra 0x0ce33c40
            0x0ce33c22      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce33bb6 (+0x28)
            0x0ce33c24      19d3           mov.l @(0x64,PC),r3
            0x0ce33c26      00e5           mov 0x00,r5
            0x0ce33c28      0b43           jsr @r3
            0x0ce33c2a      e364           mov r14,r4
            0x0ce33c2c      18d2           mov.l @(0x60,PC),r2
            0x0ce33c2e      2be5           mov 0x2B,r5
            0x0ce33c30      0b42           jsr @r2
            0x0ce33c32      e364           mov r14,r4
            0x0ce33c34      264f           lds.l @r15+,pr
            0x0ce33c36      17d3           mov.l @(0x5C,PC),r3
            0x0ce33c38      e364           mov r14,r4
            0x0ce33c3a      f66d           mov.l @r15+,r13
            0x0ce33c3c      2b43           jmp @r3
            0x0ce33c3e      f66e           mov.l @r15+,r14
            ; CODE XREFS from aav.0x0ce33bb6 (+0x30, +0x6a)
            0x0ce33c40      264f           lds.l @r15+,pr
            0x0ce33c42      f66d           mov.l @r15+,r13
            0x0ce33c44      0b00           rts 
            0x0ce33c46      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33c48:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x30)
            0x0ce33c48      462f           mov.l r4,@-r15
            0x0ce33c4a      4360           mov r4,r0
            0x0ce33c4c      0900           nop 
            0x0ce33c4e      1491           mov.w @(0x28,PC),r1
            0x0ce33c50      11d2           mov.l @(0x44,PC),r2
            0x0ce33c52      1c00           mov.b @(r0,r1),r0
            0x0ce33c54      0c60           extu.b r0,r0
            0x0ce33c56      3fc9           and 0x3F,r0
            0x0ce33c58      0840           shll2 r0
            0x0ce33c5a      2e03           mov.l @(r0,r2),r3
            0x0ce33c5c      2b43           jmp @r3
            0x0ce33c5e      047f           add 0x04,r15
            ;-- aav.0x0ce33c60:
            ; UNKNOWN XREFS from fcn.0ce34092 (0xce340fc, 0xce34104)
            0x0ce33c60      0890           mov.w @(0x10,PC),r0
            0x0ce33c62      4365           mov r4,r5
            0x0ce33c64      462f           mov.l r4,@-r15
            0x0ce33c66      0dd3           mov.l @(0x34,PC),r3
            0x0ce33c68      4e04           mov.l @(r0,r4),r4
            0x0ce33c6a      2b43           jmp @r3
            0x0ce33c6c      047f           add 0x04,r15
            0x0ce33c6e      4101           .word 0x0141
            0x0ce33c70      a402           mov.b r10,@(r0,r2)
            0x0ce33c72      ff00           mac.l @r15+,@r0+
            0x0ce33c74      c801           .word 0x01C8
            0x0ce33c76      d201           stc r5_bank,r1
            0x0ce33c78      a101           .word 0x01A1
            0x0ce33c7a      f701           mul.l r15,r1
            0x0ce33c7c      ee4d           ldc r13,r6_bank
            0x0ce33c7e      038c           .word 0x8C03
            0x0ce33c80      e48e           .word 0x8EE4
            0x0ce33c82      068c           .word 0x8C06
            0x0ce33c84      .dword 0x0ce31ca0 ; aav.0x0ce31ca0
            0x0ce33c88      8c4e           shad r8,r14
            0x0ce33c8a      038c           .word 0x8C03
            0x0ce33c8c      6251           mov.l @(0x8,r6),r1
            0x0ce33c8e      038c           .word 0x8C03
            0x0ce33c90      0820           tst r0,r0
            0x0ce33c92      048c           .word 0x8C04
            0x0ce33c94      4816           mov.l r4,@(0x20,r6)
            0x0ce33c96      058c           .word 0x8C05
            0x0ce33c98      .dword 0x0ce340fc ; aav.0x0ce340fc
            0x0ce33c9c      1ccc           tst.b 0x1C,@(r0,gbr)
            0x0ce33c9e      048c           .word 0x8C04
            ;-- aav.0x0ce33ca0:
            ; UNKNOWN XREFS from fcn.0ce34092 (0xce34100, 0xce34108, 0xce3410c, 0xce34110)
            0x0ce33ca0      6d90           mov.w @(0xDA,PC),r0
            0x0ce33ca2      e62f           mov.l r14,@-r15
            0x0ce33ca4      436e           mov r4,r14
            0x0ce33ca6      ee03           mov.l @(r0,r14),r3
            0x0ce33ca8      6a90           mov.w @(0xD4,PC),r0
            0x0ce33caa      3c02           mov.b @(r0,r3),r2
            0x0ce33cac      2822           tst r2,r2
            0x0ce33cae      0589           bt 0x0ce33cbc
            0x0ce33cb0      6590           mov.w @(0xCA,PC),r0
            0x0ce33cb2      e365           mov r14,r5
            0x0ce33cb4      34d3           mov.l @(0xD0,PC),r3
            0x0ce33cb6      ee04           mov.l @(r0,r14),r4
            0x0ce33cb8      2b43           jmp @r3
            0x0ce33cba      f66e           mov.l @r15+,r14
            ; CODE XREF from aav.0x0ce33ca0 (+0xe)
            0x0ce33cbc      0b00           rts 
            0x0ce33cbe      f66e           mov.l @r15+,r14
            ;-- aav.0x0ce33cc0:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x40)
            0x0ce33cc0      00e0           mov 0x00,r0
/ (fcn) fcn.0ce33cc2 26
|   fcn.0ce33cc2 ();
|           ; CALL XREF from aav.0x0ce32e5a (+0xae)
|           0x0ce33cc2      4580           mov.b r0,@(0x5,r4)
|           0x0ce33cc4      4780           mov.b r0,@(0x7,r4)
|           0x0ce33cc6      4680           mov.b r0,@(0x6,r4)
|           0x0ce33cc8      5b90           mov.w @(0xB6,PC),r0
|           0x0ce33cca      4c00           mov.b @(r0,r4),r0
|           0x0ce33ccc      0088           cmp/eq 0x00,r0
|           0x0ce33cce      048d           bt.s 0x0ce33cda
|           0x0ce33cd0      02e5           mov 0x02,r5
            0x0ce33cd2      0188           cmp/eq 0x01,r0
            0x0ce33cd4      0189           bt 0x0ce33cda               ; fcn.0ce33cc2+0x18
            0x0ce33cd6      0288           cmp/eq 0x02,r0
            0x0ce33cd8      018b           bf 0x0ce33cde               ; fcn.0ce33cc2+0x1c
|           ; CODE XREF from fcn.0ce33cc2 (0xce33cce)
|           ; CODE XREF from fcn.0ce33cc2 (+0x12)
|           0x0ce33cda      5390           mov.w @(0xA6,PC),r0
|           0x0ce33cdc      5404           mov.b r5,@(r0,r4)
|           ; CODE XREF from fcn.0ce33cc2 (+0x16)
|           0x0ce33cde      2bd2           mov.l @(0xAC,PC),r2
|           0x0ce33ce0      2b42           jmp @r2
\           0x0ce33ce2      1de5           mov 0x1D,r5
            ;-- aav.0x0ce33ce4:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x44)
            0x0ce33ce4      00e0           mov 0x00,r0
            0x0ce33ce6      4580           mov.b r0,@(0x5,r4)
            0x0ce33ce8      4780           mov.b r0,@(0x7,r4)
            0x0ce33cea      4680           mov.b r0,@(0x6,r4)
            0x0ce33cec      4990           mov.w @(0x92,PC),r0
            0x0ce33cee      4c00           mov.b @(r0,r4),r0
            0x0ce33cf0      0088           cmp/eq 0x00,r0
            0x0ce33cf2      048d           bt.s 0x0ce33cfe
            0x0ce33cf4      02e5           mov 0x02,r5
            0x0ce33cf6      0188           cmp/eq 0x01,r0
            0x0ce33cf8      0189           bt 0x0ce33cfe
            0x0ce33cfa      0288           cmp/eq 0x02,r0
            0x0ce33cfc      018b           bf 0x0ce33d02
            ; CODE XREFS from aav.0x0ce33ce4 (+0xe, +0x14)
            0x0ce33cfe      4190           mov.w @(0x82,PC),r0
            0x0ce33d00      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce33ce4 (+0x18)
            0x0ce33d02      22d2           mov.l @(0x88,PC),r2
            0x0ce33d04      2b42           jmp @r2
            0x0ce33d06      1de5           mov 0x1D,r5
            ;-- aav.0x0ce33d08:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x48)
            0x0ce33d08      00e5           mov 0x00,r5
            0x0ce33d0a      5360           mov r5,r0
            0x0ce33d0c      0900           nop 
            0x0ce33d0e      4580           mov.b r0,@(0x5,r4)
            0x0ce33d10      4780           mov.b r0,@(0x7,r4)
            0x0ce33d12      4680           mov.b r0,@(0x6,r4)
            0x0ce33d14      3590           mov.w @(0x6A,PC),r0
            0x0ce33d16      4c00           mov.b @(r0,r4),r0
            0x0ce33d18      0088           cmp/eq 0x00,r0
            0x0ce33d1a      0589           bt 0x0ce33d28
            0x0ce33d1c      0188           cmp/eq 0x01,r0
            0x0ce33d1e      0889           bt 0x0ce33d32
            0x0ce33d20      0288           cmp/eq 0x02,r0
            0x0ce33d22      0a89           bt 0x0ce33d3a
            0x0ce33d24      0fa0           bra 0x0ce33d46
            0x0ce33d26      0900           nop 
            ; CODE XREF from aav.0x0ce33d08 (+0x12)
            0x0ce33d28      2c90           mov.w @(0x58,PC),r0
            0x0ce33d2a      5404           mov.b r5,@(r0,r4)
            0x0ce33d2c      ba70           add 0xBA,r0
            0x0ce33d2e      0aa0           bra 0x0ce33d46
            0x0ce33d30      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce33d08 (+0x16)
            0x0ce33d32      2790           mov.w @(0x4E,PC),r0
            0x0ce33d34      03e2           mov 0x03,r2
            0x0ce33d36      03a0           bra 0x0ce33d40
            0x0ce33d38      2404           mov.b r2,@(r0,r4)
            ; CODE XREF from aav.0x0ce33d08 (+0x1a)
            0x0ce33d3a      2390           mov.w @(0x46,PC),r0
            0x0ce33d3c      07e3           mov 0x07,r3
            0x0ce33d3e      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce33d08 (+0x2e)
            0x0ce33d40      2190           mov.w @(0x42,PC),r0
            0x0ce33d42      01e2           mov 0x01,r2
            0x0ce33d44      2404           mov.b r2,@(r0,r4)
            ; CODE XREFS from aav.0x0ce33d08 (+0x1c, +0x26)
            0x0ce33d46      11d2           mov.l @(0x44,PC),r2
            0x0ce33d48      2b42           jmp @r2
            0x0ce33d4a      15e5           mov 0x15,r5
            ;-- aav.0x0ce33d4c:
            ; UNKNOWN XREF from aav.0x0ce33e9c (+0x4c)
            0x0ce33d4c      00e5           mov 0x00,r5
            0x0ce33d4e      5360           mov r5,r0
            0x0ce33d50      0900           nop 
            0x0ce33d52      4580           mov.b r0,@(0x5,r4)
            0x0ce33d54      4780           mov.b r0,@(0x7,r4)
            0x0ce33d56      4680           mov.b r0,@(0x6,r4)
            0x0ce33d58      1390           mov.w @(0x26,PC),r0
            0x0ce33d5a      4c00           mov.b @(r0,r4),r0
            0x0ce33d5c      0088           cmp/eq 0x00,r0
            0x0ce33d5e      0589           bt 0x0ce33d6c
            0x0ce33d60      0188           cmp/eq 0x01,r0
            0x0ce33d62      0889           bt 0x0ce33d76
            0x0ce33d64      0288           cmp/eq 0x02,r0
            0x0ce33d66      1389           bt 0x0ce33d90
            0x0ce33d68      18a0           bra 0x0ce33d9c
            0x0ce33d6a      0900           nop 
            ; CODE XREF from aav.0x0ce33d4c (+0x12)
            0x0ce33d6c      0a90           mov.w @(0x14,PC),r0
            0x0ce33d6e      5404           mov.b r5,@(r0,r4)
            0x0ce33d70      ba70           add 0xBA,r0
            0x0ce33d72      13a0           bra 0x0ce33d9c
            0x0ce33d74      5404           mov.b r5,@(r0,r4)
            ; CODE XREF from aav.0x0ce33d4c (+0x16)
            0x0ce33d76      0590           mov.w @(0xA,PC),r0
            0x0ce33d78      03e2           mov 0x03,r2
            0x0ce33d7a      0ca0           bra 0x0ce33d96
            0x0ce33d7c      2404           mov.b r2,@(r0,r4)
            0x0ce33d7e      c801           .word 0x01C8
            0x0ce33d80      4101           .word 0x0141
            0x0ce33d82      c904           .word 0x04C9
            0x0ce33d84      e901           .word 0x01E9
            0x0ce33d86      a301           ocbp @r1
            0x0ce33d88      1ccc           tst.b 0x1C,@(r0,gbr)
            0x0ce33d8a      048c           .word 0x8C04
            0x0ce33d8c      d830           sub r13,r0
            0x0ce33d8e      058c           .word 0x8C05
            ; CODE XREF from aav.0x0ce33d4c (+0x1a)
            0x0ce33d90      0f90           mov.w @(0x1E,PC),r0
            0x0ce33d92      07e3           mov 0x07,r3
            0x0ce33d94      3404           mov.b r3,@(r0,r4)
            ; CODE XREF from aav.0x0ce33d4c (+0x2e)
            0x0ce33d96      0d90           mov.w @(0x1A,PC),r0
            0x0ce33d98      01e2           mov 0x01,r2
            0x0ce33d9a      2404           mov.b r2,@(r0,r4)
            ; CODE XREFS from aav.0x0ce33d4c (+0x1c, +0x26)
            0x0ce33d9c      07d2           mov.l @(0x1C,PC),r2
            0x0ce33d9e      2b42           jmp @r2
            0x0ce33da0      15e5           mov 0x15,r5
            0x0ce33da2      0993           mov.w @(0x12,PC),r3
            0x0ce33da4      00e5           mov 0x00,r5
            0x0ce33da6      06d2           mov.l @(0x18,PC),r2
            0x0ce33da8      462f           mov.l r4,@-r15
            0x0ce33daa      3c34           add r3,r4
            0x0ce33dac      0396           mov.w @(0x6,PC),r6
            0x0ce33dae      2b42           jmp @r2
            0x0ce33db0      047f           add 0x04,r15
            0x0ce33db2      e901           .word 0x01E9
            0x0ce33db4      a301           ocbp @r1
            0x0ce33db6      8000           .word 0x0080
            0x0ce33db8      a402           mov.b r10,@(r0,r2)
            0x0ce33dba      0000           .word 0x0000
            0x0ce33dbc      d830           sub r13,r0
            0x0ce33dbe      058c           .word 0x8C05
            0x0ce33dc0      2897           mov.w @(0x50,PC),r7
            0x0ce33dc2      128c           .word 0x8C12
            ;-- aav.0x0ce33dc4:
            ; UNKNOWN XREFS from aav.0x0ce305a8 (+0x108, +0x220)
            0x0ce33dc4      0102           .word 0x0201
            0x0ce33dc6      0002           .word 0x0200
            ;-- aav.0x0ce33dc8:
            ; UNKNOWN XREFS from aav.0x0ce305a8 (+0x10c, +0x224)
            0x0ce33dc8      ff02           mac.l @r15+,@r2+
            0x0ce33dca      0102           .word 0x0201
            ;-- aav.0x0ce33dcc:
            ; UNKNOWN XREFS from aav.0x0ce305a8 (+0x110, +0x228)
            0x0ce33dcc      ffff           .word 0xFFFF
            0x0ce33dce      ffff           .word 0xFFFF
            ;-- aav.0x0ce33dd0:
            ; UNKNOWN XREF from aav.0x0ce305a8 (+0x234)
            ; UNKNOWN XREF from aav.0x0ce308ce (+0x46)
            0x0ce33dd0      0102           .word 0x0201
            0x0ce33dd2      0102           .word 0x0201
            ;-- aav.0x0ce33dd4:
            ; UNKNOWN XREF from aav.0x0ce305a8 (+0x238)
            ; UNKNOWN XREF from aav.0x0ce308ce (+0x4a)
            0x0ce33dd4      ff02           mac.l @r15+,@r2+
            0x0ce33dd6      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce33dd8:
            ; UNKNOWN XREF from aav.0x0ce308ce (+0x36)
            0x0ce33dd8      ffff           .word 0xFFFF
            0x0ce33dda      ffff           .word 0xFFFF
            ;-- aav.0x0ce33ddc:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0xf0)
            0x0ce33ddc      0102           .word 0x0201
            0x0ce33dde      0102           .word 0x0201
            ;-- aav.0x0ce33de0:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0xf8)
            0x0ce33de0      ff02           mac.l @r15+,@r2+
            0x0ce33de2      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce33de4:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x100)
            0x0ce33de4      ffff           .word 0xFFFF
            0x0ce33de6      ffff           .word 0xFFFF
            ;-- aav.0x0ce33de8:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x220)
            0x0ce33de8      0102           .word 0x0201
            0x0ce33dea      0102           .word 0x0201
            ;-- aav.0x0ce33dec:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x228)
            0x0ce33dec      ff02           mac.l @r15+,@r2+
            0x0ce33dee      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce33df0:
            ; UNKNOWN XREF from aav.0x0ce30bf6 (+0x96)
            0x0ce33df0      ffff           .word 0xFFFF
            0x0ce33df2      ffff           .word 0xFFFF
            ;-- aav.0x0ce33df4:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0xf4)
            0x0ce33df4      0102           .word 0x0201
            0x0ce33df6      0002           .word 0x0200
            ;-- aav.0x0ce33df8:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0xfc)
            0x0ce33df8      ff02           mac.l @r15+,@r2+
            0x0ce33dfa      0102           .word 0x0201
            ;-- aav.0x0ce33dfc:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x210)
            0x0ce33dfc      ffff           .word 0xFFFF
            0x0ce33dfe      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce33e00:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x224)
            0x0ce33e00      0102           .word 0x0201
            0x0ce33e02      0102           .word 0x0201
            ;-- aav.0x0ce33e04:
            ; UNKNOWN XREF from aav.0x0ce3091c (+0x22c)
            0x0ce33e04      ff02           mac.l @r15+,@r2+
            0x0ce33e06      ff02           mac.l @r15+,@r2+
            ;-- aav.0x0ce33e08:
            ; UNKNOWN XREF from aav.0x0ce30bf6 (+0x9a)
            0x0ce33e08      ffff           .word 0xFFFF
            0x0ce33e0a      ffff           .word 0xFFFF
            ;-- aav.0x0ce33e0c:
            ; UNKNOWN XREF from fcn.0ce30152 (+0x76)
            ; UNKNOWN XREF from aav.0x0ce30568 (+0x30)
            0x0ce33e0c      0300           bsrf r0
            0x0ce33e0e      0081           mov.w r0,@(0x0,r0)
            0x0ce33e10      0200           stc sr,r0
            0x0ce33e12      0000           .word 0x0000
            0x0ce33e14      0010           mov.l r0,@(0x0,r0)
            0x0ce33e16      0018           mov.l r0,@(0x0,r8)
            0x0ce33e18      0008           .word 0x0800
            0x0ce33e1a      0003           .word 0x0300
            ;-- aav.0x0ce33e1c:
            ; UNKNOWN XREF from fcn.0ce30152 (+0x82)
            ; UNKNOWN XREF from aav.0x0ce30568 (+0x38)
            0x0ce33e1c      0300           bsrf r0
            0x0ce33e1e      0081           mov.w r0,@(0x0,r0)
            0x0ce33e20      0100           .word 0x0001
            0x0ce33e22      0000           .word 0x0000
            0x0ce33e24      0010           mov.l r0,@(0x0,r0)
            0x0ce33e26      0018           mov.l r0,@(0x0,r8)
            0x0ce33e28      0008           .word 0x0800
            0x0ce33e2a      6000           .word 0x0060
            ;-- aav.0x0ce33e2c:
            ; UNKNOWN XREF from fcn.0ce302c6 (+0x32)
            0x0ce33e2c      0300           bsrf r0
            0x0ce33e2e      0000           .word 0x0000
            0x0ce33e30      0000           .word 0x0000
            0x0ce33e32      0000           .word 0x0000
            0x0ce33e34      0010           mov.l r0,@(0x0,r0)
            0x0ce33e36      0018           mov.l r0,@(0x0,r8)
            0x0ce33e38      0008           .word 0x0800
            0x0ce33e3a      0003           .word 0x0300
            ;-- aav.0x0ce33e3c:
            ; UNKNOWN XREF from fcn.0ce3040c (+0x58)
            0x0ce33e3c      0300           bsrf r0
            0x0ce33e3e      0010           mov.l r0,@(0x0,r0)
            0x0ce33e40      0800           clrt 
            0x0ce33e42      0000           .word 0x0000
            0x0ce33e44      0008           .word 0x0800
            0x0ce33e46      0018           mov.l r0,@(0x0,r8)
            0x0ce33e48      0010           mov.l r0,@(0x0,r0)
            0x0ce33e4a      0003           .word 0x0300
            ;-- aav.0x0ce33e4c:
            ; UNKNOWN XREF from fcn.0ce3040c (+0x64)
            0x0ce33e4c      0300           bsrf r0
            0x0ce33e4e      0010           mov.l r0,@(0x0,r0)
            0x0ce33e50      0700           mul.l r0,r0
            0x0ce33e52      0000           .word 0x0000
            0x0ce33e54      0010           mov.l r0,@(0x0,r0)
            0x0ce33e56      0014           mov.l r0,@(0x0,r4)
            0x0ce33e58      0004           .word 0x0400
            0x0ce33e5a      6000           .word 0x0060
            ;-- aav.0x0ce33e5c:
            ; UNKNOWN XREF from fcn.0ce302c6 (+0x42)
            0x0ce33e5c      0300           bsrf r0
            0x0ce33e5e      0010           mov.l r0,@(0x0,r0)
            0x0ce33e60      0300           bsrf r0
            0x0ce33e62      0000           .word 0x0000
            0x0ce33e64      0008           .word 0x0800
            0x0ce33e66      0010           mov.l r0,@(0x0,r0)
            0x0ce33e68      0018           mov.l r0,@(0x0,r8)
            0x0ce33e6a      0003           .word 0x0300
            ;-- aav.0x0ce33e6c:
            ; UNKNOWN XREF from fcn.0ce302c6 (+0x52)
            0x0ce33e6c      3200           stc ssr,r0
            0x0ce33e6e      0010           mov.l r0,@(0x0,r0)
            0x0ce33e70      0400           mov.b r0,@(r0,r0)
            0x0ce33e72      0000           .word 0x0000
            0x0ce33e74      0004           .word 0x0400
            0x0ce33e76      0008           .word 0x0800
            0x0ce33e78      6000           .word 0x0060
            ;-- aav.0x0ce33e7a:
            ; UNKNOWN XREF from fcn.0ce3040c (+0x50)
            0x0ce33e7a      3c00           mov.b @(r0,r3),r0
            0x0ce33e7c      0010           mov.l r0,@(0x0,r0)
            0x0ce33e7e      0900           nop 
            0x0ce33e80      0000           .word 0x0000
            0x0ce33e82      0004           .word 0x0400
            0x0ce33e84      0008           .word 0x0800
            0x0ce33e86      0003           .word 0x0300
            ;-- aav.0x0ce33e88:
            ; UNKNOWN XREF from fcn.0ce302c6 (+0x46)
            0x0ce33e88      0500           mov.w r0,@(r0,r0)
            0x0ce33e8a      0010           mov.l r0,@(0x0,r0)
            0x0ce33e8c      0d00           mov.w @(r0,r0),r0
            0x0ce33e8e      0000           .word 0x0000
            0x0ce33e90      0008           .word 0x0800
            0x0ce33e92      0018           mov.l r0,@(0x0,r8)
            0x0ce33e94      0010           mov.l r0,@(0x0,r0)
            0x0ce33e96      0014           mov.l r0,@(0x0,r4)
            0x0ce33e98      0004           .word 0x0400
            0x0ce33e9a      0003           .word 0x0300
            ;-- aav.0x0ce33e9c:
            ; UNKNOWN XREF from aav.0x0ce3001c (+0xb4)
            0x0ce33e9c      .dword 0x0ce30550 ; aav.0x0ce30550
            0x0ce33ea0      .dword 0x0ce3001c ; aav.0x0ce3001c
            0x0ce33ea4      .dword 0x0ce30568 ; aav.0x0ce30568
            0x0ce33ea8      .dword 0x0ce30bd4 ; aav.0x0ce30bd4
            0x0ce33eac      .dword 0x0ce30fe4 ; aav.0x0ce30fe4
            0x0ce33eb0      .dword 0x0ce31146 ; aav.0x0ce31146
            0x0ce33eb4      .dword 0x0ce31220 ; aav.0x0ce31220
            0x0ce33eb8      .dword 0x0ce313a8 ; aav.0x0ce313a8
            0x0ce33ebc      .dword 0x0ce31522 ; aav.0x0ce31522
            0x0ce33ec0      .dword 0x0ce32fbe ; aav.0x0ce32fbe
            0x0ce33ec4      .dword 0x0ce3313c ; aav.0x0ce3313c
            0x0ce33ec8      .dword 0x0ce3331c ; aav.0x0ce3331c
            0x0ce33ecc      .dword 0x0ce33c48 ; aav.0x0ce33c48
            0x0ce33ed0      .dword 0x0ce304b2 ; aav.0x0ce304b2
            0x0ce33ed4      .dword 0x0ce32e48 ; aav.0x0ce32e48
            0x0ce33ed8      .dword 0x0ce30ef8 ; aav.0x0ce30ef8
            0x0ce33edc      .dword 0x0ce33cc0 ; aav.0x0ce33cc0
            0x0ce33ee0      .dword 0x0ce33ce4 ; aav.0x0ce33ce4
            0x0ce33ee4      .dword 0x0ce33d08 ; aav.0x0ce33d08
            0x0ce33ee8      .dword 0x0ce33d4c ; aav.0x0ce33d4c
            0x0ce33eec      0000           .word 0x0000
            0x0ce33eee      0000           .word 0x0000
            0x0ce33ef0      0000           .word 0x0000
            0x0ce33ef2      0000           .word 0x0000
            0x0ce33ef4      0000           .word 0x0000
            0x0ce33ef6      0000           .word 0x0000
            0x0ce33ef8      0000           .word 0x0000
            0x0ce33efa      0000           .word 0x0000
            0x0ce33efc      0000           .word 0x0000
            0x0ce33efe      0000           .word 0x0000
            0x0ce33f00      0000           .word 0x0000
            0x0ce33f02      0000           .word 0x0000
            0x0ce33f04      0000           .word 0x0000
            0x0ce33f06      0000           .word 0x0000
            0x0ce33f08      0000           .word 0x0000
            0x0ce33f0a      0000           .word 0x0000

;Normals
            ;-- aav.0x0ce33f0c:
            ; UNKNOWN XREF from aav.0x0ce30568 (+0x3c)
            0x0ce33f0c      .dword 0x0ce305a8 ; aav.0x0ce305a8
            0x0ce33f10      .dword 0x0ce308ce ; aav.0x0ce308ce
            0x0ce33f14      .dword 0x0ce3091c ; aav.0x0ce3091c
            0x0ce33f18      .dword 0x0ce305a8 ; aav.0x0ce305a8


            ;-- aav.0x0ce33f1c:
            ; UNKNOWN XREF from aav.0x0ce30bf6 (+0xa6)
            0x0ce33f1c      .dword 0x0ce30bf6 ; aav.0x0ce30bf6
            0x0ce33f20      .dword 0x0ce30e34 ; aav.0x0ce30e34
            0x0ce33f24      .dword 0x0ce30e1e ; aav.0x0ce30e1e
            0x0ce33f28      .dword 0x0ce30be8 ; aav.0x0ce30be8


            ;-- aav.0x0ce33f2c:
            ; UNKNOWN XREF from aav.0x0ce30fe4 (+0x40)
            0x0ce33f2c      .dword 0x0ce31028 ; aav.0x0ce31028
            0x0ce33f30      .dword 0x0ce3106e ; aav.0x0ce3106e
            0x0ce33f34      .dword 0x0ce310ec ; aav.0x0ce310ec


            ;-- aav.0x0ce33f38:
            ; UNKNOWN XREF from aav.0x0ce31146 (+0x2e)
            0x0ce33f38      .dword 0x0ce31178 ; aav.0x0ce31178
            0x0ce33f3c      .dword 0x0ce311a6 ; aav.0x0ce311a6
            0x0ce33f40      .dword 0x0ce311fe ; aav.0x0ce311fe


            ;-- aav.0x0ce33f44:
            ; UNKNOWN XREF from aav.0x0ce31288 (+0x4c)
            0x0ce33f44      .dword 0x0ce31232 ; aav.0x0ce31232
            0x0ce33f48      .dword 0x0ce3125a ; aav.0x0ce3125a
            0x0ce33f4c      .dword 0x0ce31288 ; aav.0x0ce31288
            0x0ce33f50      .dword 0x0ce312e0 ; aav.0x0ce312e0
            0x0ce33f54      .dword 0x0ce31314 ; aav.0x0ce31314
            ;-- aav.0x0ce33f58:
            ; UNKNOWN XREF from aav.0x0ce313ee (+0x46)
            0x0ce33f58      .dword 0x0ce313dc ; aav.0x0ce313dc
            0x0ce33f5c      .dword 0x0ce314d4 ; aav.0x0ce314d4
            0x0ce33f60      .dword 0x0ce314ee ; aav.0x0ce314ee
            0x0ce33f64      .dword 0x0ce314d4 ; aav.0x0ce314d4
            0x0ce33f68      .dword 0x0ce31508 ; aav.0x0ce31508
            ;-- aav.0x0ce33f6c:
            ; UNKNOWN XREF from aav.0x0ce313ee (+0x4a)
            0x0ce33f6c      .dword 0x0ce313ee ; aav.0x0ce313ee
            0x0ce33f70      .dword 0x0ce3145a ; aav.0x0ce3145a
            0x0ce33f74      .dword 0x0ce314a0 ; aav.0x0ce314a0
            0x0ce33f78      .dword 0x0ce314ac ; aav.0x0ce314ac
            ;-- aav.0x0ce33f7c:
            ; UNKNOWN XREF from aav.0x0ce31522 (+0x32)
            0x0ce33f7c      .dword 0x0ce31558 ; aav.0x0ce31558
            0x0ce33f80      .dword 0x0ce3183e ; aav.0x0ce3183e
            0x0ce33f84      .dword 0x0ce31d28 ; aav.0x0ce31d28
            0x0ce33f88      .dword 0x0ce3205a ; aav.0x0ce3205a
            0x0ce33f8c      .dword 0x0ce32456 ; aav.0x0ce32456
            0x0ce33f90      .dword 0x0ce31558 ; aav.0x0ce31558
            0x0ce33f94      .dword 0x0ce31558 ; aav.0x0ce31558
            0x0ce33f98      .dword 0x0ce3257c ; aav.0x0ce3257c
            0x0ce33f9c      .dword 0x0ce3275a ; aav.0x0ce3275a
            0x0ce33fa0      .dword 0x0ce32908 ; aav.0x0ce32908
            0x0ce33fa4      .dword 0x0ce31558 ; aav.0x0ce31558
            0x0ce33fa8      .dword 0x0ce32de6 ; aav.0x0ce32de6
            0x0ce33fac      .dword 0x0ce32ce6 ; aav.0x0ce32ce6
            0x0ce33fb0      .dword 0x0ce31558 ; aav.0x0ce31558
            ;-- aav.0x0ce33fb4:
            ; UNKNOWN XREF from aav.0x0ce31598 (+0x118)
            0x0ce33fb4      .dword 0x0ce31598 ; aav.0x0ce31598
            0x0ce33fb8      .dword 0x0ce316f0 ; aav.0x0ce316f0
            0x0ce33fbc      .dword 0x0ce3172c ; aav.0x0ce3172c
            0x0ce33fc0      .dword 0x0ce31768 ; aav.0x0ce31768
            0x0ce33fc4      .dword 0x0ce317da ; aav.0x0ce317da
            ;-- aav.0x0ce33fc8:
            ; UNKNOWN XREF from aav.0x0ce3194e (+0x3e)
            0x0ce33fc8      .dword 0x0ce3187e ; aav.0x0ce3187e
            0x0ce33fcc      .dword 0x0ce3194e ; aav.0x0ce3194e
            0x0ce33fd0      .dword 0x0ce31b1c ; aav.0x0ce31b1c
            0x0ce33fd4      .dword 0x0ce31b8c ; aav.0x0ce31b8c
            0x0ce33fd8      .dword 0x0ce31c04 ; aav.0x0ce31c04
            ;-- aav.0x0ce33fdc:
            ; UNKNOWN XREF from aav.0x0ce31d28 (+0x54)
            0x0ce33fdc      ff04           mac.l @r15+,@r4+
            0x0ce33fde      0cff           fmov fr0,fr15
            0x0ce33fe0      0806           .word 0x0608
            0x0ce33fe2      0aff           fmov fr0,@r15
            0x0ce33fe4      0002           .word 0x0200
            0x0ce33fe6      0eff           fmac fr0,fr0,fr15
            0x0ce33fe8      ffff           .word 0xFFFF
            0x0ce33fea      ffff           .word 0xFFFF
            ;-- aav.0x0ce33fec:
            ; UNKNOWN XREF from aav.0x0ce31d28 (+0x5c)
            0x0ce33fec      .dword 0x0ce31d88 ; aav.0x0ce31d88
            0x0ce33ff0      .dword 0x0ce31e54 ; aav.0x0ce31e54
            0x0ce33ff4      .dword 0x0ce31f70 ; aav.0x0ce31f70
            0x0ce33ff8      .dword 0x0ce32026 ; aav.0x0ce32026
            ;-- aav.0x0ce33ffc:
            ; UNKNOWN XREF from fcn.0ce32070 (0xce32098)
            0x0ce33ffc      .dword 0x0ce3209c ; aav.0x0ce3209c
            0x0ce34000      .dword 0x0ce321d0 ; aav.0x0ce321d0
            0x0ce34004      .dword 0x0ce32330 ; aav.0x0ce32330
            0x0ce34008      .dword 0x0ce323ae ; aav.0x0ce323ae
            0x0ce3400c      .dword 0x0ce32434 ; aav.0x0ce32434
            ;-- aav.0x0ce34010:
            ; UNKNOWN XREF from fcn.0ce320fe (+0xbe)
            0x0ce34010      5555           mov.l @(0x14,r5),r5
            0x0ce34012      d540           .word 0x40D5
            0x0ce34014      0000           .word 0x0000
            0x0ce34016      7041           .word 0x4170
            0x0ce34018      0000           .word 0x0000
            0x0ce3401a      a041           .word 0x41A0
            0x0ce3401c      2449           rotcl r9
            0x0ce3401e      9a41           .word 0x419A
            ;-- aav.0x0ce34020:
            ; UNKNOWN XREF from aav.0x0ce32456 (+0x2e)
            0x0ce34020      .dword 0x0ce32488 ; aav.0x0ce32488
            0x0ce34024      .dword 0x0ce324e8 ; aav.0x0ce324e8
            0x0ce34028      .dword 0x0ce324fe ; aav.0x0ce324fe
            ;-- aav.0x0ce3402c:
            ; UNKNOWN XREF from aav.0x0ce3257c (+0x40)
            0x0ce3402c      .dword 0x0ce325c0 ; aav.0x0ce325c0
            0x0ce34030      .dword 0x0ce3265c ; aav.0x0ce3265c
            0x0ce34034      .dword 0x0ce32728 ; aav.0x0ce32728
            ;-- aav.0x0ce34038:
            ; UNKNOWN XREF from aav.0x0ce3281c (+0x50)
            0x0ce34038      .dword 0x0ce32770 ; aav.0x0ce32770
            0x0ce3403c      .dword 0x0ce327d2 ; aav.0x0ce327d2
            0x0ce34040      .dword 0x0ce3281c ; aav.0x0ce3281c
            0x0ce34044      .dword 0x0ce3288c ; aav.0x0ce3288c
            0x0ce34048      .dword 0x0ce328da ; aav.0x0ce328da
            ;-- aav.0x0ce3404c:
            ; UNKNOWN XREF from aav.0x0ce3297c (+0x8c)
            0x0ce3404c      .dword 0x0ce3297c ; aav.0x0ce3297c
            0x0ce34050      .dword 0x0ce32a24 ; aav.0x0ce32a24
            0x0ce34054      .dword 0x0ce32b0c ; aav.0x0ce32b0c
            0x0ce34058      .dword 0x0ce32bda ; aav.0x0ce32bda
            0x0ce3405c      .dword 0x0ce32c8c ; aav.0x0ce32c8c
            0x0ce34060      .dword 0x0ce32cc4 ; aav.0x0ce32cc4
            ;-- aav.0x0ce34064:
            ; UNKNOWN XREF from aav.0x0ce32cf8 (+0x94)
            0x0ce34064      .dword 0x0ce32cf8 ; aav.0x0ce32cf8
            0x0ce34068      .dword 0x0ce32d9c ; aav.0x0ce32d9c
            ;-- aav.0x0ce3406c:
            ; UNKNOWN XREF from aav.0x0ce32e5a (+0xa2)
            0x0ce3406c      .dword 0x0ce32e5a ; aav.0x0ce32e5a
            0x0ce34070      .dword 0x0ce32f10 ; aav.0x0ce32f10
            0x0ce34074      .dword 0x0ce32f7e ; aav.0x0ce32f7e
            ;-- aav.0x0ce34078:
            ; UNKNOWN XREF from aav.0x0ce32fd6 (+0x6a)
            0x0ce34078      .dword 0x0ce32fd6 ; aav.0x0ce32fd6
            0x0ce3407c      .dword 0x0ce33080 ; aav.0x0ce33080
            0x0ce34080      .dword 0x0ce330d6 ; aav.0x0ce330d6
            0x0ce34084      .dword 0x0ce32fd6 ; aav.0x0ce32fd6
            ;-- aav.0x0ce34088:
            ; UNKNOWN XREF from aav.0x0ce3313c (+0x30)
            0x0ce34088      .dword 0x0ce33170 ; aav.0x0ce33170
            0x0ce3408c      .dword 0x0ce331ac ; aav.0x0ce331ac
            0x0ce34090      .dword 0x0ce331e8 ; aav.0x0ce331e8
            0x0ce34094      .dword 0x0ce33224 ; aav.0x0ce33224
            ;-- fcn.0ce34096:
            ; CALL XREF from aav.0x0ce33260 (+0x7c)
            0x0ce34096      e30c           .word 0x0CE3
            0x0ce34098      .dword 0x0ce33260 ; aav.0x0ce33260
            0x0ce3409c      .dword 0x0ce332e0 ; aav.0x0ce332e0
            ;-- aav.0x0ce340a0:
            ; UNKNOWN XREF from aav.0x0ce3338e (+0x46)
            0x0ce340a0      .dword 0x0ce3333a ; aav.0x0ce3333a
            0x0ce340a4      .dword 0x0ce33564 ; aav.0x0ce33564
            0x0ce340a8      .dword 0x0ce335ac ; aav.0x0ce335ac
            0x0ce340ac      .dword 0x0ce33622 ; aav.0x0ce33622
            0x0ce340b0      .dword 0x0ce33852 ; aav.0x0ce33852
            0x0ce340b4      .dword 0x0ce33adc ; aav.0x0ce33adc
            ;-- aav.0x0ce340b8:
            ; UNKNOWN XREF from aav.0x0ce3338e (+0x4a)
            0x0ce340b8      .dword 0x0ce3334c ; aav.0x0ce3334c
            0x0ce340bc      .dword 0x0ce3338e ; aav.0x0ce3338e
            0x0ce340c0      .dword 0x0ce3349a ; aav.0x0ce3349a
            0x0ce340c4      .dword 0x0ce3351e ; aav.0x0ce3351e
            ;-- aav.0x0ce340c8:
            ; UNKNOWN XREF from aav.0x0ce3351e (+0x2a)
            0x0ce340c8      0000           .word 0x0000
            0x0ce340ca      0000           .word 0x0000
            0x0ce340cc      2000           .word 0x0020
            0x0ce340ce      0000           .word 0x0000
            0x0ce340d0      3000           .word 0x0030
            0x0ce340d2      d0ff           fadd fr13,fr15
            0x0ce340d4      c0ff           fadd fr12,fr15
            0x0ce340d6      e0ff           fadd fr14,fr15
            0x0ce340d8      0000           .word 0x0000
            0x0ce340da      0000           .word 0x0000
            0x0ce340dc      0000           .word 0x0000
            0x0ce340de      0000           .word 0x0000
            ;-- aav.0x0ce340e0:
            ; UNKNOWN XREF from fcn.0ce33868 (0xce33894)
            0x0ce340e0      .dword 0x0ce33898 ; aav.0x0ce33898
            0x0ce340e4      .dword 0x0ce3390a ; aav.0x0ce3390a
            0x0ce340e8      .dword 0x0ce339d8 ; aav.0x0ce339d8
            0x0ce340ec      .dword 0x0ce33aa8 ; aav.0x0ce33aa8
            ;-- aav.0x0ce340f0:
            ; UNKNOWN XREF from aav.0x0ce33adc (+0x4c)
            0x0ce340f0      .dword 0x0ce33b2c ; aav.0x0ce33b2c
            0x0ce340f4      .dword 0x0ce33b76 ; aav.0x0ce33b76
            0x0ce340f8      .dword 0x0ce33bb6 ; aav.0x0ce33bb6
            ;-- aav.0x0ce340fc:
            ; UNKNOWN XREF from aav.0x0ce33c60 (+0x38)
            0x0ce340fc      .dword 0x0ce33c60 ; aav.0x0ce33c60
            0x0ce34100      .dword 0x0ce33ca0 ; aav.0x0ce33ca0
            0x0ce34104      .dword 0x0ce33c60 ; aav.0x0ce33c60
            0x0ce34108      .dword 0x0ce33ca0 ; aav.0x0ce33ca0
            0x0ce3410c      .dword 0x0ce33ca0 ; aav.0x0ce33ca0
            0x0ce34110      .dword 0x0ce33ca0 ; aav.0x0ce33ca0

