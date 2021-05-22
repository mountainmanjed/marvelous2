loc_8C120220:
	frchg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fmov @r4+,fr3
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr7
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4+,fr10
	fmov @r4+,fr11
	fmov @r4+,fr12
	fmov @r4+,fr13
	fmov @r4+,fr14
	fmov @r4+,fr15
	rts 
	frchg 

	nop

;unused
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C120250:
	tst r4,r4
	bf loc_8c120258
	mov.l @(0x4,PC),r4
	mov.l @(0x8,r4),r4

loc_8C120258:
	bra loc_8c120260
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12025c:
	#data 0x8C2D68E8

;==============================================
loc_8C120260:
#data 0xF149F3Fd
#data 0xF549F349
#data 0xF949F749
#data 0xFD49FB49
#data 0xF3FDFF49
#data 0x0009000b

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120280:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	tst r4,r4
	mov r5,r13
	bf.s loc_8c1202a4
	mov.l r4,@(0x8,r15)
	mov.l @(0x23C,PC),r2
	jsr @r2
	mov 0x00,r4
	mov r0,r4

loc_8C1202A4:
	fldi0 fr6
	mov 0x00,r14
	mov 0x04,r6
	fmov fr6,fr15
	fldi1 fr7
	bra loc_8c120306
	mov r14,r7

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1202C0:
#data 0x6C036073
#data 0x65E34C08
#data 0xF46C0D04
#data 0x4C08A00b

#align4
loc_8C1202D0:
#data 0x60436353
#data 0x30CC4308
#data 0xF35DF336
#data 0xF545F53c
#data 0x75018F01
#data 0xF45c

loc_8C1202E6:
#data 0x3563
#data 0xF38D8BF2
#data 0x8B01F434
#data 0x0009A076

#align4
loc_8C1202F4:
#data 0xF343F37c
#data 0x637362F3
#data 0x720C4308
#data 0x7701332c
#data 0xF33a

loc_8C120306:
#data 0x3763
#data 0xF69D8BDa
#data 0xFF7C63D3
#data 0x67E37304
#data 0xA05BF64d
#data 0x00091F31
	nop
	nop

#align4
loc_8C120320:
#data 0x3E636E73
#data 0xF56C6C73
#data 0x4C088D18

#align4
loc_8C12032C:
#data 0x0BDC60E3
#data 0x62F36343
#data 0x400860B3
#data 0x303C4008
#data 0x720C63B3
#data 0x4308F3C6
#data 0xF35D332c
#data 0xF43CF238
#data 0xF455F422
#data 0x65E38B01
#data 0xF54c

loc_8C120356:
#data 0x7E01
#data 0x8BE73E63

#align4
loc_8C12035C:
#data 0x35706A53
#data 0x8D063ADc
#data 0x6B736EA0
#data 0x62B03BDc
#data 0x2A20FF4d
#data 0x2BE0

loc_8C120372:
#data 0x69E3
#data 0x60434908
#data 0x309C4908
#data 0xF4C6F38d
#data 0x8D2DF434
#data 0x6B73FF42
#data 0x68B37B01
#data 0x38DCA01c

#align4
loc_8C120390:
#data 0x60436E84
#data 0x356365B3
#data 0x4E084E08
#data 0xF5C630Ec
#data 0x8D11F543
#data 0xFC57

loc_8C1203A6:
#data 0x6A53
#data 0xF25C4A08
#data 0x2F026043
#data 0x63F230Ec
#data 0x35637501
#data 0x33AC339c
#data 0xF232F338
#data 0xF321F3A6
#data 0xFA378FEf

#align4
loc_8C1203C8:
#data 0x382252F1
#data 0x77018BE0

#align4
loc_8C1203D0:
#data 0x8BA53763
#data 0x233853F2
#data 0xD3418B02
#data 0x0009430b

#align4
loc_8C1203E0:
#data 0x7F1CF0Fc
#data 0xFFF94F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
#data 0xFFFB2FE6
#data 0x7FC04F22
#data 0x6E43E00c
#data 0xE010F5E6
#data 0xF440F49d
#data 0xF352F35c
#data 0x64F3FF9d
#data 0xF34DF342
#data 0xFF3AF3F0
#data 0xE014F5E6
#data 0xF352F35c
#data 0xF34DF342
#data 0xFF37F3F0
#data 0xF5E6E014
#data 0xF35CE028
#data 0xF342F352
#data 0xF3F0F34d
#data 0xE010FF37
#data 0xE00CF3E6
#data 0xE010F2E6
#data 0xF242F232
#data 0xF427F24d
#data 0xF427E004
#data 0xF3E6E014
#data 0xF2E6E00c
#data 0x64F3E020
#data 0xF242F232
#data 0xF427F24d
#data 0xF427E008
#data 0xF3E6E014
#data 0xF2E6E010
#data 0x64F3E024
#data 0xF242F232
#data 0xF427F24d
#data 0xD31665E3
#data 0x750CE018
#data 0x430BF427
#data 0xF40C64E3
#data 0xE00CF440
#data 0xE030F3E6
#data 0xF232F24c
#data 0xE010FF27
#data 0xE034F3E6
#data 0xF232F24c
#data 0xE014FF27
#data 0xE038F3E6
#data 0xFF47F432
#data 0xF48DE00c
#data 0xE01CFF47
#data 0xE02CFF47
#data 0xE03CFF47
#data 0xB037FFF7
#data 0x7F4064F3
#data 0xFFF94F26
#data 0x6EF6000b

;==============================================

#align4
loc_8C1204DC:
#data bank11.loc_8c11FA80

loc_8C1204E0:
#data bank11.loc_8c1201E0

loc_8C1204E4:
#data loc_8c1211C0
	nop
	nop
	nop
	nop


loc_8C1204F0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C120580,pc),r3 ; r3 set to 0x8C11FA80
mov.l r4,@-r15
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C120588,pc),r4 ; r4 set to 0x8C2D68E4
mov.l @(loc_8C120584,pc),r5 ; r5 set to 0x8C2D68E8
mov.b @r4,r1
mov r5,r2 ; r2 set to 0x8C2D68E8
mov r5,r14 ; r14 set to 0x8C2D68E8
mov r1,r3 ; r3 ??? bc r1 is ???
shll r1
add r3,r1
mov.l @(loc_8C12058C,pc),r3 ; r3 set to 0x8C1294C8
shll2 r1
add r5,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @r15,r2 ; r2 ??? bc r15 is ???
mov r14,r1 ; r1 set to 0x8C2D68E8
mov.b r2,@r4 ; r4 ??? bc r2 is ???
mov.b @r4,r2
mov r2,r3 ; r3 ??? bc r2 is ???
shll r2
add r3,r2
mov.l @(loc_8C12058C,pc),r3 ; r3 set to 0x8C1294C8
shll2 r2
add r5,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x08,r14),r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C120590,pc),r2 ; r2 set to 0x8C1201E0
jmp @r2
mov.l @r15+,r14
	nop
	nop
	nop


loc_8C120540:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	flds fr12,fpul
	fmov.s @r4+,fr0
	fmov.s @r4+,fr1
	fmov.s @r4+,fr2
	fmov.s @r4+,fr3
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	ftrv xmtrx,fv0
	fmov.s @r4+,fr7
	fmov.s @r4+,fr8
	fmov.s @r4+,fr9
	fmov.s @r4+,fr10
	ftrv xmtrx,fv4
	fmov.s @r4+,fr11
	fmov.s @r4+,fr12
	fmov.s @r4+,fr13
	fmov.s @r4+,fr14
	ftrv xmtrx,fv8
	fmov.s @r4+,fr15
	ftrv xmtrx,fv12
	frchg
	fsts fpul,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	rts
	fmov.s @r15+,fr15

;==============================================
loc_8C12057C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C120580:
	#data bank11.loc_8c11FA80
loc_8C120584:
	#data 0x8C2D68E8
loc_8C120588:
	#data 0x8C2D68E4
loc_8C12058C:
	#data loc_8c1294C8
loc_8C120590:
	#data bank11.loc_8c1201E0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1205A0:
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
fschg
fmov.s @r4+,fr0
fmov.s @r4+,fr2
fmov.s @r4+,fr4
fmov.s @r4+,fr6
ftrv xmtrx,fv0
fmov.s @r4+,fr8
fmov.s @r4+,fr10
ftrv xmtrx,fv4
fmov.s @r4+,fr12
fmov.s @r4+,fr14
ftrv xmtrx,fv8
ftrv xmtrx,fv12
fschg
frchg
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
nop
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1205E0:
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
fschg
fmov.s @r4+,fr0
fmov.s @r4+,fr2
fmov.s @r4+,fr4
fmov.s @r4+,fr6
fmov.s @r4+,fr8
fmov.s @r4+,fr10
fmov.s @r4+,fr12
fmov.s @r4+,fr14
frchg
fschg
ftrv xmtrx,fv0
ftrv xmtrx,fv4
ftrv xmtrx,fv8
ftrv xmtrx,fv12
frchg
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C120620:
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
fmov.s @r4+,fr0
fmov.s @r4+,fr1
fmov.s @r4+,fr2
fmov.s @r4+,fr3
fmov.s @r4+,fr4
fmov.s @r4+,fr5
fmov.s @r4+,fr6
fmov.s @r4+,fr7
fmov.s @r4+,fr8
fmov.s @r4+,fr9
fmov.s @r4+,fr10
fmov.s @r4+,fr11
fmov.s @r4+,fr12
fmov.s @r4+,fr13
fmov.s @r4+,fr14
fmov.s @r4+,fr15
frchg
ftrv xmtrx,fv0
ftrv xmtrx,fv4
ftrv xmtrx,fv8
ftrv xmtrx,fv12
frchg
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
rts
nop
;==============================================

loc_8C120660:
mov.l @(loc_8C1208A8,pc),r4 ; r4 set to 0x8C2D68E8
mov.l @(loc_8C1208AC,pc),r3 ; r3 set to 0x8C1205A0
mov.l @(0x08,r4),r4 ; r4 ??
jmp @r3
add 0xC0,r4
	nop
	nop
	nop
#data 0xD48FD390
#data 0x5442432b
	nop
	nop
	nop
	nop
#data 0xD38D4F22
#data 0x430BD48a
#data 0xAFE95442
#data 0x00094F26
#data 0xD487D389
#data 0x5442432b
	nop
	nop
	nop
	nop
#data 0xFFFB2FE6
#data 0x7FC04F22
#data 0x6E43E00c
#data 0xE010F4E6
#data 0x64F3FF9d
#data 0xF342F34c
#data 0xF3F0F34d
#data 0xF4E6FF3a
#data 0xF34CE014
#data 0xF34DF342
#data 0xFF37F3F0
#data 0xF4E6E014
#data 0xF34CE028
#data 0xF34DF342
#data 0xFF37F3F0
#data 0xF3E6E010
#data 0xF2E6E00c
#data 0xF24DF232
#data 0x65E3E010
#data 0xE004F427
#data 0xE014F427
#data 0xE00CF3E6
#data 0xE020F2E6
#data 0xD36F64F3
#data 0x750CF232
#data 0xF427F24d
#data 0xF427E008
#data 0xF3E6E014
#data 0xF2E6E010
#data 0x64F3E024
#data 0xF24DF232
#data 0xE018F427
#data 0x430BF427
#data 0xE00C64E3
#data 0xF3E6F20c
#data 0xF40CE030
#data 0xD363F232
#data 0xE010FF27
#data 0xE034F3E6
#data 0xF232F24c
#data 0xE014FF27
#data 0xE038F3E6
#data 0xFF47F432
#data 0xF48DE00c
#data 0xE01CFF47
#data 0xE02CFF47
#data 0xE03CFF47
#data 0x430BFFF7
#data 0x7F4064F3
#data 0xFFF94F26
#data 0x6EF6000b
;==============================================
	nop
	nop
#data 0x2FD62FE6
#data 0xFFFB2FC6
#data 0x4F22FFEb
#data 0x6C537FB4
#data 0xF268F3C8
#data 0xE0046EF3
#data 0xF2316D43
#data 0xFE2AFE9d
#data 0xF3C6F266
#data 0xFE27F231
#data 0xF266E008
#data 0xF231F3C6
#data 0xE00CFE27
#data 0xE004F4D6
#data 0xE010F0E6
#data 0xE008F3D6
#data 0xF302F5E8
#data 0xF34EF05c
#data 0xE014F0E6
#data 0xF32EF2D6
#data 0xE00CFFEc
#data 0xF4F2FF33
#data 0xF54DF542
#data 0xFF57F5E0
#data 0xF3E6E004
#data 0xF342E010
#data 0xFF37F34d
#data 0xF3E6E008
#data 0xF342E014
#data 0xFF37F34d
#data 0xF4D6E010
#data 0xF3E8E01c
#data 0xF342F4F2
#data 0xFF37F34d
#data 0xF3E6E004
#data 0xF34DF342
#data 0xE020F3E0
#data 0xFF3765D3
#data 0xF3E6E008
#data 0xF342E024
#data 0xFF37F34d
#data 0xF4D6E014
#data 0xF3E8E02c
#data 0xF342F4F2
#data 0xFF37F34d
#data 0xF3E6E004
#data 0xF342E030
#data 0xFF37F34d
#data 0xF3E6E008
#data 0xF342E034
#data 0xF3E0F34d
#data 0xD31FFF37
#data 0x430B750c
#data 0xF40C64D3
#data 0xF3E8F4F2
#data 0xD31CE03c
#data 0xF34264F3
#data 0xE004FF37
#data 0xE040F3E6
#data 0xFF37F342
#data 0xF3E6E008
#data 0xF342E044
#data 0xFF37F48d
#data 0xFF47E018
#data 0xFF47E028
#data 0xFF47E038
#data 0xFFE7E048
#data 0x740C430b
#data 0x420BD210
#data 0x7F4C64C3
#data 0xFEF94F26
#data 0x6CF6FFF9
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop


loc_8C1208A0:
mov.l @(loc_8C1208A8,pc),r5 ; r5 set to 0x8C2D68E8
bra loc_8C1208D0
nop
#data 0x0000

#align4
loc_8C1208A8:
#data 0x8C2D68E8

#align4
loc_8C1208AC:
#data loc_8c1205A0
#data 0x8C2D6900

#align4
loc_8C1208B4:
#data loc_8c120620

loc_8C1208B8:
#data loc_8c120950

loc_8C1208BC:
#data loc_8c1211C0

loc_8C1208C0:
#data loc_8c120540

loc_8C1208C4:
#data loc_8c1210E0
	nop
	nop
	nop
	nop

#align4
loc_8c1208d0:
cmp/pl r4
mov.w @r5+,r6
bt loc_8c1208d8
mov 0x01,r4

loc_8c1208d8:
mov.w @r5,r2
add 0xFE,r5
cmp/ge r4,r6
sub r4,r6
bt loc_8c1208e4
mov 0x00,r6

loc_8c1208e4:
movt r0
mov.l @(0x04,r5),r7
mov r6,r4
shll8 r4
cmp/ge r2,r6
shlr2 r4
mov.w r6,@r5
add r4,r7
bt loc_8c1208f8
mov.l r7,@(0x08,r5)

loc_8c1208f8:
rts
nop
;==============================================
	nop
	nop

loc_8c120900:
#data 0xD30F
#data 0x4415
#data 0x8900
#data 0xE401

loc_8c120908:
#data 0x6635
#data 0xF3FD
#data 0x6231
#data 0x73FE
#data 0x3643
#data 0x3648
#data 0x8900
#data 0xE600

loc_8c120918:
#data 0x0029
#data 0x5731
#data 0x6463
#data 0x4418
#data 0x3623
#data 0x4409
#data 0x2361
#data 0x374C
#data 0x8900
#data 0x1372

loc_8c12092c:
#data 0xF179
#data 0xF379
#data 0xF579
#data 0xF779
#data 0xF979
#data 0xFB79
#data 0xFD79
#data 0xFF79
#data 0x000B
#data 0xF3FD
;==============================================
#data 0x68E8
#data 0x8C2D
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop

loc_8c120950:
#data 0xD30E
#data 0xFBFD
#data 0xF3FD
#data 0x5132
#data 0x6232
#data 0x6713
#data 0x7140
#data 0xF1EB
#data 0x662F
#data 0xF1CB
#data 0x6229
#data 0xF1AB
#data 0x622F
#data 0xF18B
#data 0x3267
#data 0xF16B
#data 0x0029
#data 0xF14B
#data 0x7601
#data 0xF12B
#data 0x7740
#data 0xF10B
#data 0x8F00
#data 0x1372

loc_8c120980:
#data 0x2448
#data 0x8F05
#data 0x2361
#data 0xF3FD
#data 0x000B
#data 0xFBFD
;==============================================
#data 0x68E8
#data 0x8C2D

loc_8c120990:
#data 0xE104
#data 0x0483
#data 0x2418
#data 0x8912
#data 0xF3FD
#data 0xF049
#data 0xF149
#data 0xF249
#data 0xF349
#data 0xF449
#data 0xF549
#data 0xF649
#data 0xF749
#data 0xF849
#data 0xF949
#data 0xFA49
#data 0xFB49
#data 0xFC49
#data 0xFD49
#data 0xFE49
#data 0xFF49
#data 0x000B
#data 0xFBFD
;==============================================

loc_8c1209be:
#data 0xF049
#data 0xF249
#data 0xF449
#data 0xF649
#data 0xF849
#data 0xFA49
#data 0xFC49
#data 0xFE49
#data 0xF3FD
#data 0x000B
#data 0xFBFD
;==============================================
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
#data 0x4F22
#data 0x7FFC
#data 0xD305
#data 0x430B
#data 0xE400
#data 0xD305
#data 0x430B
#data 0x2F02
#data 0x60F2
#data 0x7F04
#data 0x4F26
#data 0x000B
	nop
;==============================================
#data 0x0000

loc_8c1209fc:
#data 0x0950
#data 0x8C12

loc_8c120a00:
#data 0x1100
#data 0x8C12
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xFBFD
#data 0xF38D
#data 0xFBB1
#data 0xF78D
#data 0xFF9D
#data 0xF11D
#data 0xF3ED
#data 0xF14C
#data 0xF7ED
#data 0xF40D
#data 0xFBED
#data 0xFC8D
#data 0xFEE1
#data 0xFC31
#data 0xFD8D
#data 0xFD71
#data 0xF21D
#data 0xFEB1
#data 0xF28C
#data 0xF331
#data 0xF80D
#data 0xF771
#data 0xF61D
#data 0xFBB1
#data 0xF69C
#data 0xF90D
#data 0xFBFD
	nop
#data 0x000B
	nop
;==============================================
	nop
	nop
#data 0xFBFD
#data 0xF44D
#data 0xF54D
#data 0xF64D
#data 0xF74D
#data 0xF84D
#data 0xF94D
#data 0xFA4D
#data 0xFB4D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
#data 0xFBFD
#data 0xF84D
#data 0xF94D
#data 0xFA4D
#data 0xFB4D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
#data 0xFBFD
#data 0xF04D
#data 0xF14D
#data 0xF24D
#data 0xF34D
#data 0xF84D
#data 0xF94D
#data 0xFA4D
#data 0xFB4D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
#data 0xFBFD
#data 0xF04D
#data 0xF14D
#data 0xF24D
#data 0xF34D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
#data 0xFBFD
#data 0xF04D
#data 0xF14D
#data 0xF24D
#data 0xF34D
#data 0xF44D
#data 0xF54D
#data 0xF64D
#data 0xF74D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
#data 0xFBFD
#data 0xF44D
#data 0xF54D
#data 0xF64D
#data 0xF74D
#data 0xFBFD
#data 0x000B
	nop
;==============================================
#data 0x4F22
#data 0x7FF0
#data 0xE004
#data 0xD30C
#data 0x2F52
#data 0xF348
#data 0xFF37
#data 0xE004
#data 0xF346
#data 0xE008
#data 0xFF37
#data 0xE008
#data 0xF346
#data 0xE00C
#data 0x64F3
#data 0xFF37
#data 0x430B
#data 0x7404
#data 0xD305
#data 0x64F3
#data 0x65F2
#data 0x430B
#data 0x7404
#data 0x7F10
#data 0x4F26
#data 0x000B
	nop
;==============================================
#data 0x0000

loc_8c120b18:
#data 0x1490
#data 0x8C12

loc_8c120b1c:
#data 0x0B80
#data 0x8C12

loc_8C120B20:
lds r4,fpul
fsca fpul,fr4
fldi0 fr0
fldi0 fr3
fldi0 fr7
fmov fr5,fr1
fmov fr4,fr2
fmov fr2,fr5
fneg fr5
fmov fr1,fr6
ftrv xmtrx,fv0
fldi0 fr4
ftrv xmtrx,fv4
fschg
fmov fr0,fr5
fmov fr2,fr7
fmov fr4,fr9
fmov fr6,fr11
fschg
nop
rts
nop
nop
nop
;==============================================

loc_8C120B50:
fmov fr5,fr1
fmov fr4,fr2
fldi0 fr0
fldi0 fr3
fmov fr5,fr6
fmov fr4,fr5
fneg fr5
ftrv xmtrx,fv0
fldi0 fr4
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr5
fmov fr2,fr7
fmov fr4,fr9
fmov fr6,fr11
fschg
nop
rts
nop
nop
nop
nop
nop
;==============================================

loc_8C120B80:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C120C58,pc),r3 ; r3 set to 0x8C11E2E0
mov.l r4,@(0x04,r15)
mov.l r5,@r15
jsr @r3
mov r5,r4
mov.l @(loc_8C120C5C,pc),r3 ; r3 set to 0x8C11E860
fmov.s fr0,@-r15
jsr @r3
mov.l @(0x04,r15),r4
mov.l @(0x08,r15),r4
fmov.s @r15+,fr5
fmov fr0,fr4
add 0x08,r15
lds.l @r15+,pr

loc_8C120BA0:
fmov.s fr15,@-r15
fmov.s fr13,@-r15
sts.l pr,@-r15
add 0xC0,r15
fldi1 fr9
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov fr9,fr10
fsub fr5,fr10
fmov.s @r4,fr8
fmov fr4,fr1
fmov.s @(r0,r4),fr7
fmul fr8,fr1
fmov fr10,fr15
fmul fr8,fr15
fmul fr8,fr8
fmov fr9,fr3 ; r3 ??? bc r9 is ???
fmul fr7,fr10
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @(r0,r4),fr6
fmov fr15,fr11
fmul fr7,fr11
fsub fr8,fr3
fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
fmov fr10,fr13
fmul fr6,fr13
fmov fr15,fr10
fmul fr6,fr10
fmov fr8,fr2
fmov fr4,fr15
fmac fr0,fr3,fr2
fmul fr7,fr15
fmul fr6,fr4
fmul fr7,fr7
fmul fr6,fr6
fmov.s fr2,@r15
fmov fr4,fr3
fadd fr11,fr3
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fsub fr4,fr11
fmov fr7,fr2
fmov.s fr3,@(r0,r15)
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov fr10,fr3
fsub fr15,fr3
fadd fr10,fr15
fmov.s fr3,@(r0,r15)
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
fmov fr9,fr3
fsub fr7,fr3
fmov.s fr11,@(r0,r15)
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
fmac fr0,fr3,fr2
fmov fr1,fr3
fadd fr13,fr3
fsub fr1,fr13
fmov.s fr2,@(r0,r15)
mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
fmov.s fr3,@(r0,r15)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov fr9,fr3
fsub fr6,fr3
fmov fr6,fr2
fmov.s fr15,@(r0,r15)
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
fmov.s fr13,@(r0,r15)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r15)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fldi0 fr3
mov r15,r4
fmov.s fr3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C120C60,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
fmov.s fr3,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
fmov.s fr3,@(r0,r4)
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
fmov.s fr3,@(r0,r4)
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov.s fr3,@(r0,r4)
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov.s fr9,@(r0,r15)
jsr @r3
mov r15,r4
add 0x40,r15
lds.l @r15+,pr
fmov.s @r15+,fr13
rts
fmov.s @r15+,fr15
;==============================================

#align4
loc_8C120C58:
#data bank11.loc_8c11E2E0

loc_8C120C5C:
#data bank11.loc_8c11E860

loc_8C120C60:
#data loc_8c120540
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF4FD445a
#data 0xF38DF08d
#data 0xF15CF78d
#data 0xF25CF54c
#data 0xF61CF24d
#data 0xF48DF1Fd
#data 0xF3FDF5Fd
#data 0xF72CF50c
#data 0xFB6CF94c
#data 0x0009F3Fd
#data 0x0009000b
;==============================================
	nop
	nop


loc_8C120CA0:
fmov fr5,fr1
fmov fr4,fr2
fldi0 fr0
fldi0 fr3
fmov fr5,fr6
fmov fr4,fr5
ftrv xmtrx,fv0
fldi0 fr4
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr5
fmov fr2,fr7
fmov fr4,fr9
fmov fr6,fr11
fschg
rts
nop
nop
nop
nop
nop
nop
nop
;==============================================

#align4_nop
loc_8C120CD0:
lds r4,fpul
fsca fpul,fr4
fldi0 fr1
fldi0 fr3
fldi0 fr7
fmov fr5,fr0
fmov fr4,fr2
fneg fr2
fmov fr0,fr6
ftrv xmtrx,fv0
fldi0 fr5
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr9
fmov fr6,fr11
fschg
rts
nop
nop
nop
nop
nop
#align4_nop
;==============================================

loc_8C120D00:
fmov fr5,fr0
fmov fr4,fr2
fneg fr2
fmov fr0,fr6
fldi0 fr1
fldi0 fr3
ftrv xmtrx,fv0
fldi0 fr5
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr9
fmov fr6,fr11
fschg
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF4FD445a
#data 0xF38DF18d
#data 0xF05CF78d
#data 0xF44DF24c
#data 0xF1FDF60c
#data 0xF5FDF58d
#data 0xF10CF3Fd
#data 0xF94CF32c
#data 0xF3FDFB6c
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C120D60:
fmov fr5,fr0
fmov fr4,fr2
fneg fr4
fmov fr0,fr6
fldi0 fr1
fldi0 fr3
ftrv xmtrx,fv0
fldi0 fr5
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr9
fmov fr6,fr11
fschg
rts
nop
;==============================================
nop
nop
nop
nop
nop
nop

#align4_nop
loc_8C120D90:
lds r4,fpul
fsca fpul,fr4
fldi0 fr2
fldi0 fr3
fldi0 fr6
fmov fr5,fr0
fmov fr4,fr1
fneg fr4
ftrv xmtrx,fv0
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr5
fmov fr6,fr7
fschg
nop
rts
nop
;==============================================
nop
nop
nop
nop


loc_8C120DC0:
fmov fr4,fr1
fneg fr4
fmov fr5,fr0
fldi0 fr2
fldi0 fr3
ftrv xmtrx,fv0
fldi0 fr6
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr5
fmov fr6,fr7
fschg
nop
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF4FD445a
#data 0xF38DF28d
#data 0xF05CF68d
#data 0xF14DF14c
#data 0xF78DF1Fd
#data 0xF3FDF5Fd
#data 0xF32CF10c
#data 0xF76CF54c
#data 0x0009F3Fd
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C120E20:
fmov fr4,fr1
fneg fr1
fmov fr5,fr0
fldi0 fr2
fldi0 fr3
ftrv xmtrx,fv0
fldi0 fr6
fldi0 fr7
ftrv xmtrx,fv4
fschg
fmov fr0,fr1
fmov fr2,fr3
fmov fr4,fr5
fmov fr6,fr7
fschg
nop
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F22FFFb
#data 0x430BD34b
#data 0xD24BFF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D349
#data 0x432BF40c
#data 0x0009FFF9
#data 0x4F22FFFb
#data 0x430BD343
#data 0xD243FF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D342
#data 0x432BF40c
#data 0x0009FFF9
#data 0x4F22FFFb
#data 0x430BD33b
#data 0xD23BFF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D33b
#data 0x432BF40c
#data 0x0009FFF9
#data 0x4F22FFFb
#data 0x430BD333
#data 0xD233FF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D334
#data 0x432BF40c
#data 0x0009FFF9
#data 0x4F22FFFb
#data 0x430BD32b
#data 0xD22BFF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D32d
#data 0x432BF40c
#data 0x0009FFF9
#data 0x4F22FFFb
#data 0x430BD323
#data 0xD223FF4c
#data 0x420BFF0b
#data 0xF5F9F4Fc
#data 0x4F26D326
#data 0x432BF40c
#data 0x0009FFF9
#data 0xFFFB2FE6
#data 0x7FF04F22
#data 0xD32266F3
#data 0x76046E43
#data 0x430B2F52
#data 0xD22064E3
#data 0x420B64F3
#data 0xD31F7404
#data 0xFF0C65F2
#data 0x64E3430b
#data 0xFF34F38d
#data 0xF50C8D08
#data 0x64F3D21b
#data 0x420BF4Fc
#data 0xA0157404
	nop
	nop
#data 0x8B11F355
#data 0xF59DE004
#data 0xE004F3E6
#data 0x64F3D314
#data 0xE008FF37
#data 0xE008F3E6
#data 0xFF37F48d
#data 0xF3E8E00c
#data 0xFF37F54d
#data 0x7404430b
#data 0x4F267F10
#data 0x000BFFF9
#data 0x00006EF6

#align4
loc_8C120F84:
#data bank11.loc_8c11E330

loc_8C120F88:
#data bank11.loc_8c11E960

loc_8C120F8C:
#data loc_8c120B50

loc_8C120F90:
#data loc_8c120CA0

loc_8C120F94:
#data loc_8c120D00

loc_8C120F98:
#data loc_8c120D60

loc_8C120F9C:
#data loc_8c120DC0

loc_8C120FA0:
#data loc_8c120E20

loc_8C120FA4:
#data loc_8c121200

loc_8C120FA8:
#data loc_8c121490

loc_8C120FAC:
#data loc_8c1211C0

loc_8C120FB0:
#data loc_8c120BA0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C120FC0:
fmov.s fr6,@-r15
fmov.s fr5,@-r15
fmov.s fr4,@-r15
frchg
flds fr15,fpul
fmov.s @r15+,fr15
fmul fr15,fr0
fmul fr15,fr1
fmul fr15,fr2
fmul fr15,fr3
fmov.s @r15+,fr15
fmul fr15,fr4
fmul fr15,fr5
fmul fr15,fr6
fmul fr15,fr7
fmov.s @r15+,fr15
fmul fr15,fr8
fmul fr15,fr9
fmul fr15,fr10
fmul fr15,fr11
fsts fpul,fr15
frchg
rts
nop
;==============================================

loc_8C120FF0:
frchg
flds fr15,fpul
fmov.s @r4+,fr15
fmul fr15,fr0
fmul fr15,fr1
fmul fr15,fr2
fmul fr15,fr3
fmov.s @r4+,fr15
fmul fr15,fr4
fmul fr15,fr5
fmul fr15,fr6
fmul fr15,fr7
fmov.s @r4+,fr15
fmul fr15,fr8
fmul fr15,fr9
fmul fr15,fr10
fmul fr15,fr11
fsts fpul,fr15
frchg
nop
rts
nop
;==============================================
	nop
	nop
#data 0xFC49FBFd
#data 0xFE49FD49
#data 0x0009FBFd
#data 0x0009000b
;==============================================
#data 0xFF1DFBFd
#data 0xF0F1FF49
#data 0xF1F1FF49
#data 0xF2F1FF49
#data 0xF3F1FF49
#data 0xF4F1FF49
#data 0xF5F1FF49
#data 0xF6F1FF49
#data 0xF7F1FF49
#data 0xF8F1FF49
#data 0xF9F1FF49
#data 0xFAF1FF49
#data 0xFBF1FF49
#data 0xFCF1FF49
#data 0xFDF1FF49
#data 0xFEF1FF49
#data 0xF01DFF0d
#data 0xFF01F049
#data 0xFBFDF00d
#data 0x0009000b
;==============================================

loc_8C121080:
frchg
flds fr1,fpul
fmov fr4,fr1
fsts fpul,fr4
flds fr2,fpul
fmov fr8,fr2
fsts fpul,fr8
flds fr3,fpul
fmov fr12,fr3
fsts fpul,fr12
flds fr6,fpul
fmov fr9,fr6
fsts fpul,fr9
flds fr7,fpul
fmov fr13,fr7
fsts fpul,fr13
flds fr11,fpul
fmov fr14,fr11
fsts fpul,fr14
frchg
rts
nop
;==============================================
	nop
	nop


loc_8C1210B0:
fldi1 fr7
ftrv xmtrx,fv4
fschg
fmov fr4,fr13
fmov fr6,fr15
fschg
rts
nop
;==============================================

loc_8C1210C0:
mov.l r14,@-r15
mov 0x08,r0 ; r0 set to 0x08
mov r4,r14
fmov.s @(r0,r14),fr6
mov 0x04,r0 ; r0 set to 0x04
fmov.s @r14,fr4
fmov.s @(r0,r14),fr5
mov.l @(loc_8C1210F4,pc),r3 ; r3 set to 0x8C1210B0
fneg fr4
fneg fr6
fneg fr5
jmp @r3
mov.l @r15+,r14
	nop
	nop
	nop


loc_8C1210E0:
mov.l r14,@-r15
mov 0x08,r0 ; r0 set to 0x08
mov r4,r14
fmov.s @(r0,r14),fr6
mov 0x04,r0 ; r0 set to 0x04
mov.l @(loc_8C1210F4,pc),r3 ; r3 set to 0x8C1210B0
fmov.s @r14,fr4
fmov.s @(r0,r14),fr5
jmp @r3
mov.l @r15+,r14

#align4
loc_8C1210F4:
#data loc_8c1210B0
	nop
	nop
	nop
	nop


loc_8C121100:
fschg
fldi0 fr0
fldi0 fr1
fldi0 fr2
fldi1 fr3
fmov fr0,fr3
fmov fr0,fr7
fmov fr0,fr9
fmov fr0,fr13
fldi1 fr0
fmov fr0,fr1
fmov fr0,fr11
fmov fr2,fr5
fmov fr2,fr15
fschg
nop
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF09DFBFd
#data 0xF28DF18d
#data 0xF59DF48d
#data 0xF88DF68d
#data 0xFA9DF98d
#data 0x0009FBFd
#data 0x0009000b
;==============================================
#data 0x00000000
#data 0xE0F8F049
#data 0xF149F459
#data 0xF040F559
#data 0xF658F248
#data 0xF407F150
#data 0xF260E0Fc
#data 0xF42AF417
#data 0x0009000b
;==============================================
#data 0xF469F059
#data 0xF569F159
#data 0xF258F040
#data 0xF150F668
#data 0x7404F40a
#data 0xF41AF260
#data 0xF42A7404
#data 0x0009000b
;==============================================
#data 0xF149F05c
#data 0xF249E0Fc
#data 0xF142F348
#data 0xF242F559
#data 0xF342F659
#data 0xF15EF758
#data 0xF26E7604
#data 0xF37EF617
#data 0x7604F62a
#data 0x0009F63a
#data 0x0009000b
;==============================================
	nop
	nop


loc_8C1211C0:
fmov.s @r4+,fr0
fmov.s @r4+,fr1
fmov.s @r4+,fr2
fldi0 fr3
fmov.s @r5+,fr4
fmov.s @r5+,fr5
fmov.s @r5+,fr6
fldi0 fr7

#data 0xf4ed
;fipr fv0,fv4

fmov fr7,fr0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
#data 0xF459F049
#data 0xF559F149
#data 0xF248F041
#data 0xF151F658
#data 0xF261F38d
#data 0xF03CF0Ed
#data 0x0009F06d
#data 0x0009000b
;==============================================

loc_8C121200:
fmov.s @r4+,fr0
fmov.s @r4+,fr5
fmov.s @r4,fr6
fmov.s @r5+,fr8
fmov.s @r5+,fr9
fmov.s @r5,fr10
add 0x0C,r6
fmov fr5,fr3
fmul fr8,fr3
fmov fr0,fr2
fmul fr10,fr2
fmov fr6,fr1
fmul fr9,fr1
fneg fr3
fmac fr0,fr9,fr3
fneg fr2
fmov fr6,fr0
fmac fr0,fr8,fr2
fneg fr1
fmov.s fr3,@-r6
fmov fr5,fr0
fmac fr0,fr10,fr1
fmov.s fr2,@-r6
fmov.s fr1,@-r6
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF549F049
#data 0xF859F648
#data 0xFA58F959
#data 0xF382F35c
#data 0xF2A2F20c
#data 0xF192F16c
#data 0xF39EF34d
#data 0xF06CF24d
#data 0xF14DF28e
#data 0xF1AEF05c
#data 0xF0EDF08d
#data 0xF06DF03c
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C121280:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C1212BC,pc),r3 ; r3 set to 0x8C1212E0
mov r4,r13
fmov.s fr4,@r15
mov r5,r14
jsr @r3
mov r14,r4
fmov.s @r15,fr4
mov 0x04,r0 ; r0 set to 0x04
fmov fr0,fr5
fdiv fr5,fr4
fmov.s @r14,fr3 ; r3 ??? bc r14 is ???
fmov fr5,fr0 ; r0 ??? bc r5 is ???
fmul fr4,fr3
fmov.s fr3,@r13
fmov.s @(r0,r14),fr2
fmul fr4,fr2
fmov.s fr2,@(r0,r13)
mov 0x08,r0 ; r0 set to 0x08
fmov.s @(r0,r14),fr3
fmul fr4,fr3
fmov.s fr3,@(r0,r13)
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8C1212BC:
#data loc_8c1212E0
#data 0xE0FCF059
#data 0x7404F159
#data 0xF042F258
#data 0xF242F142
#data 0xF41AF407
#data 0xF42A7404
#data 0x0009000b
;==============================================
	nop
	nop


loc_8C1212E0:
fmov.s @r4+,fr0
fmov.s @r4+,fr1
fmov.s @r4+,fr2
fldi0 fr3
fipr fv0,fv0
fmov fr3,fr0
fsqrt fr0
nop
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF149F049
#data 0xF38DF249
#data 0xF03CF0Ed
#data 0x0009000b
;==============================================
#data 0xE0F8F049
#data 0xF149F459
#data 0xF041F559
#data 0xF658F248
#data 0xF407F151
#data 0xF261E0Fc
#data 0xF42AF417
#data 0x0009000b
;==============================================

loc_8C121330:
fmov.s @r5+,fr0
fmov.s @r6+,fr4
fmov.s @r5+,fr1
fmov.s @r6+,fr5
fsub fr4,fr0
fmov.s @r5,fr2
fmov.s @r6,fr6
fsub fr5,fr1
fmov.s fr0,@r4
add 0x04,r4
fsub fr6,fr2
fmov.s fr1,@r4
add 0x04,r4
fmov.s fr2,@r4
rts
nop
;==============================================
#data 0x4F222FE6
#data 0xF2587FE8
#data 0xF348E00c
#data 0xF2316E73
#data 0xE004FF27
#data 0xF346F256
#data 0xF231E010
#data 0xE008FF27
#data 0xF346F256
#data 0xF231E014
#data 0xE004FF27
#data 0xF358F268
#data 0xFF2AF231
#data 0xF356F266
#data 0xF231E004
#data 0xE008FF27
#data 0xF356F266
#data 0xD341F231
#data 0x64F3E008
#data 0xFF2765F3
#data 0x430B66E3
#data 0xD23E740c
#data 0x420B65E3
#data 0xF38D64E3
#data 0xF434F40c
#data 0xE0008B04
#data 0x4F267F18
#data 0x6EF6000b
;==============================================
#data 0x420BD238
#data 0xE0040009
#data 0xF3E8F40c
#data 0xFE3AF342
#data 0xF242F2E6
#data 0xE008FE27
#data 0xF342F3E6
#data 0xE001FE37
#data 0x4F267F18
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
#data 0x4F222FE6
#data 0xF2587FE8
#data 0xF348E00c
#data 0xF2316E73
#data 0xE004FF27
#data 0xF346F256
#data 0xF231E010
#data 0xE008FF27
#data 0xF346F256
#data 0xF231E014
#data 0xE004FF27
#data 0xF358F268
#data 0xFF2AF231
#data 0xF356F266
#data 0xF231E004
#data 0xE008FF27
#data 0xF356F266
#data 0x65F3F231
#data 0xE008D318
#data 0x750C66E3
#data 0x430BFF27
#data 0xD21664F3
#data 0x420B65E3
#data 0xF38D64E3
#data 0xF434F40c
#data 0xE0008B04
#data 0x4F267F18
#data 0x6EF6000b
;==============================================
#data 0x420BD210
#data 0xE0040009
#data 0xF3E8F40c
#data 0xFE3AF342
#data 0xF242F2E6
#data 0xE008FE27
#data 0xF342F3E6
#data 0xE001FE37
#data 0x4F267F18
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C121490:
add 0xFC,r15
mov r4,r5
mov.l r4,@r15
bra loc_8C1214B0
nop
#data 0x0000

#align4
loc_8C12149C:
#data loc_8c121200

loc_8C1214A0:
#data loc_8c1211C0

loc_8C1214A4:
#data bank11.loc_8c11E510
	nop
	nop
	nop
	nop

#align4
loc_8C1214B0:
fmov.s @r4+,fr4
fmov.s @r4+,fr5
fmov.s @r4+,fr6
fldi0 fr7
add 0x0C,r5
fipr fv4,fv4
fmov fr7,fr0
fsqrt fr0
fsrra fr7
fmul fr7,fr6
fmul fr7,fr5
fmul fr7,fr4
fmov.s fr6,@-r5
fmov.s fr5,@-r5
fmov.s fr4,@-r5
nop
rts
add 0x04,r15
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF549F449
#data 0xF78DF649
#data 0xF5ED750c
#data 0xF06DF07c
#data 0xF672F77d
#data 0xF472F572
#data 0xF55BF56b
#data 0x0009F54b
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF549F449
#data 0xF78DF649
#data 0xF77DF5Ed
#data 0xF572F672
#data 0xF46BF472
#data 0xF44BF45b
#data 0x0009000b
;==============================================
#data 0x00000000
#data 0x7FC04F22
#data 0xF220F29d
#data 0xE004F18c
#data 0xF061F07c
#data 0xFB41FB5c
#data 0xFA8DF122
#data 0xF670F450
#data 0xF103F31c
#data 0xF3B3F4B3
#data 0xFFA7FF3a
#data 0xFFA7E008
#data 0xFFA7E00c
#data 0xFFA7E010
#data 0xFF17E014
#data 0xFFA7E018
#data 0xFFA7E01c
#data 0xFF47E020
#data 0xF603F48c
#data 0xE024F44d
#data 0xF581F59c
#data 0xF391F34c
#data 0xF353D491
#data 0xE028FF67
#data 0xE02CFF37
#data 0xF34DF39d
#data 0xE030FF37
#data 0xF392F38c
#data 0xE034FFA7
#data 0xE038FFA7
#data 0xF34DF322
#data 0xFF37F353
#data 0xFFA7E03c
#data 0xF487E01c
#data 0xF583F59d
#data 0xD386E020
#data 0xE024F497
#data 0xD483F457
#data 0xE00CF487
#data 0xE028F447
#data 0xE020F497
#data 0x430BF457
#data 0xD28064F3
#data 0x0009420b
#data 0x4F267F40
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x7FC04F22
#data 0xF220F29d
#data 0xE004F18c
#data 0xF061F07c
#data 0xFB41FB5c
#data 0xFA8DF122
#data 0xF670F450
#data 0xF103F31c
#data 0xF3B3F4B3
#data 0xFFA7FF3a
#data 0xFFA7E008
#data 0xFFA7E00c
#data 0xFFA7E010
#data 0xFF17E014
#data 0xFFA7E018
#data 0xFFA7E01c
#data 0xFF47E020
#data 0xE024F603
#data 0xF481F49c
#data 0xD463F59d
#data 0xE028FF67
#data 0xF64DF68c
#data 0xF391F36c
#data 0xFF37F343
#data 0xF38CE02c
#data 0xFF57F392
#data 0xFFA7E030
#data 0xFFA7E034
#data 0xF322E038
#data 0xFF37F343
#data 0xFFA7E03c
#data 0xF487E01c
#data 0xF497E020
#data 0xF483F45c
#data 0xD356E024
#data 0xD454F447
#data 0xE00CF487
#data 0xE028F467
#data 0xE020F497
#data 0x430BF447
#data 0xD25164F3
#data 0x0009420b
#data 0x4F267F40
#data 0x0009000b
;==============================================
#data 0xD34F4F22
#data 0x430BD44d
#data 0xD24E5442
#data 0x0009420b
#data 0xD44DD34e
#data 0x0009430b
#data 0xE401D24d
#data 0x4F26422b


loc_8C1216C0:
sts.l pr,@-r15
mov.l @(loc_8C1217E0,pc),r3 ; r3 set to 0x8C120950
mov.l @(loc_8C1217DC,pc),r4 ; r4 set to 0x8C2D690c
jsr @r3
mov.l @(0x08,r4),r4 ; r4 ??
mov.l @(loc_8C1217D4,pc),r3 ; r3 set to 0x8C120540
mov.l @(loc_8C1217F4,pc),r4 ; r4 set to 0x8C2D6900
jsr @r3
mov.l @(0x08,r4),r4 ; r4 ??
mov.l @(loc_8C1217E4,pc),r2 ; r2 set to 0x8C120660
jsr @r2
nop
mov.l @(loc_8C1217EC,pc),r3 ; r3 set to 0x8C11FB70
mov.l @(loc_8C1217E8,pc),r4 ; r4 set to 0x8C2D6AD8
jsr @r3
nop
mov.l @(loc_8C1217F0,pc),r2 ; r2 set to 0x8C120900
mov 0x01,r4 ; r4 set to 0x01
jmp @r2
lds.l @r15+,pr
	nop
	nop
	nop
	nop
#data 0xD33B4F22
#data 0x430BD43f
#data 0xD23A5442
#data 0x0009420b
#data 0xD43DD33e
#data 0x0009430b
#data 0xE401D239
#data 0x4F26422b


loc_8C121710:
fmov fr5,fr2
mov.l @(loc_8C121804,pc),r2 ; r2 set to 0x8C16BD84
mov.l @(loc_8C121800,pc),r3 ; r3 set to 0x8C16BD80
fmov fr4,fr3 ; r3 ??? bc r4 is ???
mov.l @(loc_8C121808,pc),r1 ; r1 set to 0x8C1210B0
fabs fr2
fabs fr3
fmov.s fr3,@r3
fmov.s fr2,@r2 ; r2 ??
jmp @r1
fldi0 fr6
	nop
	nop
	nop
	nop
	nop


loc_8C121730:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xA8,r15
mov.l @(loc_8C12180C,pc),r11 ; r11 set to 0x8C11EB20
mov 0x08,r0 ; r0 set to 0x08
fldi1 fr14
mov.l r4,@(0x04,r15)
fmov.s fr4,@(r0,r15)
mov.l @(0x04,r15),r13
fmov fr6,fr12
shar r13
fmov fr5,fr13
jsr @r11
mov r13,r4
fmov fr14,fr3
fdiv fr0,fr3
mov 0x08,r0 ; r0 set to 0x08
mov.l @(loc_8C121800,pc),r10 ; r10 set to 0x8C16BD80
mov.l @(loc_8C121810,pc),r12 ; r12 set to 0x8C11E170
mov.l @(loc_8C121814,pc),r14 ; r14 set to 0x8C11E2E0
fmov.s fr3,@r15
fmov.s @(r0,r15),fr15
fmov.s @r10,fr2
fdiv fr3,fr15
fldi0 fr3
fcmp/eq fr3,fr2
bt loc_8C1217A0
jsr @r12
fmov fr15,fr4
mov.l r0,@(0x04,r15)
jsr @r11
mov r0,r4 ; r4 set to 0x08
fmov.s @r10,fr3
fmov fr0,fr4 ; r4 ??
fadd fr14,fr3
jsr @r12
fmul fr3,fr4
jsr @r14
mov r0,r4 ; r4 set to 0x08
fmov fr14,fr2
fdiv fr0,fr2
mov 0x14,r0 ; r0 set to 0x14
bra loc_8C1217B0
fmov.s fr2,@(r0,r15)
	nop
	nop
	nop


loc_8C1217A0:
jsr @r12
fmov fr15,fr4
jsr @r14
mov r0,r4
fmov fr14,fr3
fdiv fr0,fr3
mov 0x14,r0 ; r0 set to 0x14
fmov.s fr3,@(r0,r15)

loc_8C1217B0:
mov.l @(loc_8C121804,pc),r9 ; r9 set to 0x8C16BD84, r9 set to 0x8C16BD84
fldi0 fr3
fmov.s @r9,fr2
fcmp/eq fr3,fr2
bt loc_8C121820
jsr @r11
mov r13,r4
fmov.s @r9,fr3
fmov fr0,fr4
fadd fr14,fr3
jsr @r12
fmul fr3,fr4
bra loc_8C121822
mov r0,r4
#data 0x8C32B420
#data 0x8C2DEE20

#align4
loc_8C1217D4:
#data loc_8c120540

loc_8C1217D8:
#data loc_8c122780

loc_8C1217DC:
#data 0x8C2D690c

#align4
loc_8C1217E0:
#data loc_8c120950

loc_8C1217E4:
#data loc_8c120660

loc_8C1217E8:
#data 0x8C2D6AD8

#align4
loc_8C1217EC:
#data bank11.loc_8c11FB70

loc_8C1217F0:
#data loc_8c120900

loc_8C1217F4:
#data 0x8C2D6900
#data 0x8C2D6A98

#align4
loc_8C1217FC:
#data bank11.loc_8c11FA80

loc_8C121800:
#data bank16.loc_8c16BD80

loc_8C121804:
#data bank16.loc_8c16BD84

loc_8C121808:
#data loc_8c1210B0

loc_8C12180C:
#data bank11.loc_8c11EB20

loc_8C121810:
#data bank11.loc_8c11E170

loc_8C121814:
#data bank11.loc_8c11E2E0
	nop
	nop
	nop
	nop


loc_8C121820:
mov r13,r4

loc_8C121822:
jsr @r14
nop
mova @(loc_8C121AAC,pc),r0  ; r0 init to 0x8C121AAC, r0 init to 0x8C121AAc
fmov fr14,fr4
fdiv fr0,fr4
mov.l @(loc_8C121AB4,pc),r6 ; r6 set to 0x8C16BD54, r6 set to 0x8C16BD54
mov.l @(loc_8C121AB0,pc),r4 ; r4 set to 0x8C16BD50, r4 set to 0x8C16BD50
mov.l @(loc_8C121ABC,pc),r3 ; r3 set to 0x8C16BD88, r3 set to 0x8C16BD88
mov.l @(loc_8C121AB8,pc),r5 ; r5 set to 0x8C2D6B98, r5 set to 0x8C2D6B98
fldi0 fr15
fmov.s fr15,@r10
fmov.s fr15,@r9
fmov.s @r0,fr5 ; r5 ??, r5 ??
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @r15,fr2
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
fdiv fr3,fr2
fmov.s fr2,@(r0,r15)
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
fmov.s @(r0,r15),fr1
fmov fr2,fr0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
fmul fr1,fr0
fmul fr5,fr0
fmov.s fr0,@r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???
fmov.s @r15,fr3
fmul fr4,fr3
fmul fr5,fr3
fmov.s fr3,@r6 ; r6 ??? bc r3 is ???, r6 ??? bc r3 is ???
fmov.s @r4,fr3
fmov.s @r3,fr2
mov.l @(loc_8C121AC0,pc),r4 ; r4 set to 0x8C2D6B9C, r4 set to 0x8C2D6B9c
fmul fr3,fr2
fmov.s fr2,@r5
mov.l @(loc_8C121AC4,pc),r2 ; r2 set to 0x8C16BD8C, r2 set to 0x8C16BD8c
fmov.s @r6,fr3
fmov.s @r2,fr2 ; r2 ??, r2 ??
mov.l @(loc_8C121AC8,pc),r6 ; r6 set to 0x8C16BD58, r6 set to 0x8C16BD58
fmul fr3,fr2
fmov fr2,fr4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
fmov.s fr2,@r4
fmov.s @r5,fr5
fcmp/gt fr4,fr5
bf/s loc_8C121880
mov r13,r4
bra loc_8C121882
fmov.s fr5,@r6

loc_8C121880:
fmov.s fr4,@r6

loc_8C121882:
jsr @r11
nop
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov fr0,fr4
fmov.s @(r0,r15),fr3
jsr @r12
fmul fr3,fr4
lds r0,fpul
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov.l @(loc_8C121ACC,pc),r4 ; r4 set to 0x8C2D6B58, r4 set to 0x8C2D6B58
float fpul,fr3
mov r4,r10 ; r10 set to 0x8C2D6B58, r10 set to 0x8C2D6B58
add 0x10,r10 ; r10 set to 0x8C2D6B68, r10 set to 0x8C2D6B68
mov r4,r11 ; r11 set to 0x8C2D6B58, r11 set to 0x8C2D6B58
mov r11,r12 ; r12 set to 0x8C2D6B58, r12 set to 0x8C2D6B58
mov r11,r9 ; r9 set to 0x8C2D6B58, r9 set to 0x8C2D6B58
add 0x20,r12 ; r12 set to 0x8C2D6B78, r12 set to 0x8C2D6B78
add 0x30,r9 ; r9 set to 0x8C2D6B88, r9 set to 0x8C2D6B88
fmov.s fr3,@(r0,r15)
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr15,@(r0,r10)  ; r10 ??? bc r15 is ???, r10 ??? bc r15 is ???
fmov.s fr15,@(r0,r11)  ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov.s fr15,@r9 ; r9 ??? bc r15 is ???, r9 ??? bc r15 is ???
fmov.s fr15,@r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
fmov.s @(r0,r15),fr3
ftrc fr3,fpul
sts fpul,r4
jsr @r14
mov.l r4,@(0x04,r15)
fmov fr0,fr3
mov.l @(loc_8C121AD0,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
fneg fr3
fmov.s fr0,@r11
fmov.s fr3,@r10
jsr @r3
mov.l @(0x04,r15),r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s fr0,@(r0,r10)
fmov.s fr0,@(r0,r11)
jsr @r14
mov r13,r4
fmov fr0,fr3 ; r3 ??, r3 ??
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fneg fr3
mov.l @(loc_8C121AD0,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
fmov.s fr0,@(r0,r12)
fmov.s fr3,@(r0,r9)
jsr @r3
mov r13,r4
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s fr0,@(r0,r9)
fmov.s fr0,@(r0,r12)
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov.s fr15,@(r0,r10)
fmov.s fr15,@(r0,r11)
fmov.s fr15,@(r0,r9)
fmov.s fr15,@(r0,r12)
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
fmov.s fr3,@(r0,r15)
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov.s fr15,@(r0,r15)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr15,@(r0,r15)
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
fmov.s fr15,@(r0,r15)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
fmov.s fr15,@(r0,r15)
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
fmov.s @r15,fr3
fmov.s fr3,@(r0,r15)
mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
fmov.s fr15,@(r0,r15)
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s fr15,@(r0,r15)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr15,@(r0,r15)
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov fr13,fr3
fmov.s fr15,@(r0,r15)
fmov fr13,fr4
fsub fr12,fr4
fadd fr12,fr3
mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
fldi1 fr2
fadd fr2,fr2
mov.l @(loc_8C121AD4,pc),r4 ; r4 set to 0x8C32B420, r4 set to 0x8C32B420
fdiv fr4,fr3
fmov.s fr3,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
fldi1 fr3
fneg fr3
fmov.s fr3,@(r0,r15)
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
fmov fr13,fr3
fmul fr12,fr3
fmov.s fr15,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4c
fmov.s fr15,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmul fr2,fr3
fdiv fr4,fr3
fmov fr14,fr4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
fdiv fr13,fr4
fmov.s fr3,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr15,@(r0,r15)
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov.s fr13,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr12,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
fmov.s fr4,@(r0,r4)
mov.l @(loc_8C121AD8,pc),r4 ; r4 set to 0x8C2DEE20, r4 set to 0x8C2DEE20
mov.l @(loc_8C121ADC,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
fmov.s fr13,@(r0,r4)  ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fneg fr13
fmov.s fr13,@(r0,r4)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
fmov.s fr12,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr4,@(r0,r4)
mov r15,r4
jsr @r3
add 0x18,r4
mov.l @(loc_8C121AE0,pc),r2 ; r2 set to 0x8C122780, r2 set to 0x8C122780
jsr @r2
nop
add 0x58,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1219B0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xA8,r15
mov.l @(loc_8C121AE4,pc),r11 ; r11 set to 0x8C11EB20
mov 0x0C,r0 ; r0 set to 0x0c
fldi1 fr14
mov.l r4,@(0x04,r15)
fmov.s fr4,@(r0,r15)
fmov.s fr6,@r15
mov.l @(0x04,r15),r13
fmov fr5,fr13
shar r13
jsr @r11
mov r13,r4
fmov fr14,fr3
fdiv fr0,fr3
mov.l @(loc_8C121AE8,pc),r9 ; r9 set to 0x8C16BD80
mov 0x08,r0 ; r0 set to 0x08
fldi0 fr2
mov.l @(loc_8C121AF0,pc),r14 ; r14 set to 0x8C11E2E0
mov.l @(loc_8C121AEC,pc),r12 ; r12 set to 0x8C11E170
fmov.s fr3,@(r0,r15)
fmov.s @r9,fr1
fcmp/eq fr2,fr1
bt loc_8C121A10
jsr @r11
mov r13,r4
fmov.s @r9,fr3
fmov fr0,fr4
fadd fr14,fr3
jsr @r12
fmul fr3,fr4
jsr @r14
mov r0,r4 ; r4 set to 0x08
fmov fr14,fr2
fdiv fr0,fr2
mov 0x14,r0 ; r0 set to 0x14
bra loc_8C121A1c
fmov.s fr2,@(r0,r15)

loc_8C121A10:
jsr @r14
mov r13,r4
fmov fr14,fr3
fdiv fr0,fr3
mov 0x14,r0 ; r0 set to 0x14
fmov.s fr3,@(r0,r15)

loc_8C121A1C:
mov.l @(loc_8C121AF4,pc),r10 ; r10 set to 0x8C16BD84, r10 set to 0x8C16BD84
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fldi0 fr2
fmov.s @r10,fr1
fmov.s @(r0,r15),fr3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fcmp/eq fr2,fr1
fmov.s @(r0,r15),fr12
bt/s loc_8C121A50
fmul fr3,fr12
fmov fr14,fr4
jsr @r12
fdiv fr12,fr4
mov.l r0,@(0x04,r15)
jsr @r11
mov r0,r4 ; r4 set to 0x0C, r4 set to 0x0c
fmov.s @r10,fr3
fmov fr0,fr4 ; r4 ??, r4 ??
fadd fr14,fr3
bra loc_8C121A54
fmul fr3,fr4
	nop
	nop
	nop
	nop
	nop


loc_8C121A50:
fmov fr14,fr4
fdiv fr12,fr4

loc_8C121A54:
jsr @r12
nop
jsr @r14
mov r0,r4
fmov fr14,fr4
fdiv fr0,fr4
mova @(loc_8C121AAC,pc),r0  ; r0 init to 0x8C121AAC, r0 init to 0x8C121AAc
mov.l @(loc_8C121AB4,pc),r6 ; r6 set to 0x8C16BD54, r6 set to 0x8C16BD54
mov.l @(loc_8C121AB0,pc),r5 ; r5 set to 0x8C16BD50, r5 set to 0x8C16BD50
mov.l @(loc_8C121ABC,pc),r3 ; r3 set to 0x8C16BD88, r3 set to 0x8C16BD88
mov.l @(loc_8C121AB8,pc),r4 ; r4 set to 0x8C2D6B98, r4 set to 0x8C2D6B98
mov.l @(loc_8C121AC4,pc),r2 ; r2 set to 0x8C16BD8C, r2 set to 0x8C16BD8c
fldi0 fr15
fmov.s fr15,@r9
fmov.s fr15,@r10
fmov.s @r0,fr5 ; r5 ??, r5 ??
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @(r0,r15),fr2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
fmul fr3,fr2
fmov fr12,fr3
fmul fr4,fr3
fmul fr5,fr2
fmul fr5,fr3
fmov.s fr2,@r5
fmov.s fr3,@r6 ; r6 ??? bc r3 is ???, r6 ??? bc r3 is ???
fmov.s @r3,fr2
fmov.s @r5,fr3
mov.l @(loc_8C121AC0,pc),r5 ; r5 set to 0x8C2D6B9C, r5 set to 0x8C2D6B9c
fmul fr3,fr2
fmov.s fr2,@r4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
fmov.s @r6,fr3
fmov.s @r2,fr2
fmul fr3,fr2
fmov.s fr2,@r5 ; r5 ??? bc r2 is ???, r5 ??? bc r2 is ???
fmov.s @r4,fr5
fmov fr2,fr4
fcmp/gt fr4,fr5
mov.l @(loc_8C121AC8,pc),r6 ; r6 set to 0x8C16BD58, r6 set to 0x8C16BD58
bf/s loc_8C121B00
mov r13,r4
bra loc_8C121B02
fmov.s fr5,@r6

#align4
loc_8C121AAC:
#data 0x3F000000

#align4
loc_8C121AB0:
#data bank16.loc_8c16BD50

loc_8C121AB4:
#data bank16.loc_8c16BD54

loc_8C121AB8:
#data 0x8C2D6B98

#align4
loc_8C121ABC:
#data bank16.loc_8c16BD88

loc_8C121AC0:
#data 0x8C2D6B9c

#align4
loc_8C121AC4:
#data bank16.loc_8c16BD8c

loc_8C121AC8:
#data bank16.loc_8c16BD58

loc_8C121ACC:
#data 0x8C2D6B58

#align4
loc_8C121AD0:
#data bank11.loc_8c11E860

loc_8C121AD4:
#data 0x8C32B420

#align4
loc_8C121AD8:
#data 0x8C2DEE20

#align4
loc_8C121ADC:
#data loc_8c120540

loc_8C121AE0:
#data loc_8c122780

loc_8C121AE4:
#data bank11.loc_8c11EB20

loc_8C121AE8:
#data bank16.loc_8c16BD80

loc_8C121AEC:
#data bank11.loc_8c11E170

loc_8C121AF0:
#data bank11.loc_8c11E2E0

loc_8C121AF4:
#data bank16.loc_8c16BD84
	nop
	nop
	nop
	nop


loc_8C121B00:
fmov.s fr4,@r6

loc_8C121B02:
jsr @r11
nop
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov fr0,fr4
fmov.s @(r0,r15),fr3
jsr @r12
fdiv fr3,fr4
lds r0,fpul
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
mov.l @(loc_8C121DD8,pc),r4 ; r4 set to 0x8C2D6B58, r4 set to 0x8C2D6B58
float fpul,fr3
mov r4,r11 ; r11 set to 0x8C2D6B58, r11 set to 0x8C2D6B58
mov r11,r12 ; r12 set to 0x8C2D6B58, r12 set to 0x8C2D6B58
mov r11,r9 ; r9 set to 0x8C2D6B58, r9 set to 0x8C2D6B58
mov r4,r10 ; r10 set to 0x8C2D6B58, r10 set to 0x8C2D6B58
add 0x20,r12 ; r12 set to 0x8C2D6B78, r12 set to 0x8C2D6B78
add 0x30,r9 ; r9 set to 0x8C2D6B88, r9 set to 0x8C2D6B88
add 0x10,r10 ; r10 set to 0x8C2D6B68, r10 set to 0x8C2D6B68
fmov.s fr3,@(r0,r15)
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr15,@(r0,r10)  ; r10 ??? bc r15 is ???, r10 ??? bc r15 is ???
fmov.s fr15,@(r0,r11)  ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
fmov.s fr15,@r9 ; r9 ??? bc r15 is ???, r9 ??? bc r15 is ???
fmov.s fr15,@r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
jsr @r14
mov r13,r4 ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
fmov fr0,fr3
mov.l @(loc_8C121DDC,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
fneg fr3
fmov.s fr0,@r11
fmov.s fr3,@r10
jsr @r3
mov r13,r4
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s fr0,@(r0,r10)
fmov.s fr0,@(r0,r11)
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
ftrc fr3,fpul
sts fpul,r4
jsr @r14
mov.l r4,@(0x04,r15)
fmov fr0,fr3
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fneg fr3
mov.l @(loc_8C121DDC,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
fmov.s fr0,@(r0,r12)
fmov.s fr3,@(r0,r9)
jsr @r3
mov.l @(0x04,r15),r4
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov fr13,fr2
fmov.s fr0,@(r0,r9)
fmov.s fr0,@(r0,r12)
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov.s fr15,@(r0,r10)
fmov.s fr15,@(r0,r11)
fmov.s fr15,@(r0,r9)
fmov.s fr15,@(r0,r12)
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
fmov.s fr3,@(r0,r15)
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov.s fr15,@(r0,r15)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr15,@(r0,r15)
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
fmov.s fr15,@(r0,r15)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
fmov.s fr15,@(r0,r15)
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
fmov.s fr12,@(r0,r15)
mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
fmov.s fr15,@(r0,r15)
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s fr15,@(r0,r15)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr15,@(r0,r15)
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov.s fr15,@(r0,r15)
fmov.s @r15,fr3
fmov fr13,fr4
fsub fr3,fr4
fadd fr3,fr2
mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
fldi1 fr3
fneg fr3
fldi1 fr1
fadd fr1,fr1
fdiv fr4,fr2
mov.l @(loc_8C121DE0,pc),r4 ; r4 set to 0x8C32B420, r4 set to 0x8C32B420
fmov.s fr2,@(r0,r15)
mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
fmov.s fr3,@(r0,r15)
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
fmov fr13,fr2
fmov.s fr15,@(r0,r15)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4c
fmov.s fr15,@(r0,r15)
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s @r15,fr3
fmul fr3,fr2
fmul fr1,fr2
fdiv fr4,fr2
fmov fr14,fr4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
fmov.s fr2,@(r0,r15)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr15,@(r0,r15)
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov.s fr13,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s @r15,fr3
fmov.s fr3,@(r0,r4)
fdiv fr13,fr4
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l @(loc_8C121DE8,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
fmov.s fr4,@(r0,r4)
mov.l @(loc_8C121DE4,pc),r4 ; r4 set to 0x8C2DEE20, r4 set to 0x8C2DEE20
fmov.s fr13,@(r0,r4)  ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fneg fr13
fmov.s fr13,@(r0,r4)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
fmov.s @r15,fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
fmov.s fr3,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr4,@(r0,r4)
mov r15,r4
jsr @r3
add 0x18,r4
mov.l @(loc_8C121DEC,pc),r2 ; r2 set to 0x8C122780, r2 set to 0x8C122780
jsr @r2
nop
add 0x58,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x7FB04F22
#data 0xE008DC69
#data 0x2F42FF9d
#data 0x6BF2FF47
#data 0x4B21FC6c
#data 0x4C0BFE5c
#data 0xFDFC64B3
#data 0xE008FD03
#data 0xF3F6D963
#data 0xF28DE004
#data 0xDE63DD62
#data 0xFF37F3D3
#data 0xF124F198
#data 0x4E0B8912
#data 0x2F02F43c
#data 0x64034C0b
#data 0xF40CF398
#data 0x4E0BF3F0
#data 0x4D0BF432
#data 0xF2FC6403
#data 0xE00CF203
#data 0xFF27A00a
	nop
	nop
#data 0xF43C4E0b
#data 0x64034D0b
#data 0xF303F3Fc
#data 0xFF37E00c
#data 0xF38DDA53
#data 0xF234F2A8
#data 0x4C0B890a
#data 0xF3A864B3
#data 0xF3F0F40c
#data 0xF4324E0b
#data 0x6403A003
	nop
	nop
#data 0x4D0B64B3
#data 0xC74C0009
#data 0xF503F5Fc
#data 0xD54BF7Dc
#data 0xD34CD448
#data 0xF48DD64a
#data 0xF94AD24c
#data 0xF608FA4a
#data 0xF3F6E008
#data 0xF2F6E00c
#data 0xF3DCF733
#data 0xF362F352
#data 0xF122F17c
#data 0xF41AF162
#data 0xF348F53a
#data 0xD442F238
#data 0xF62AF232
#data 0xF228F358
#data 0xF232D541
#data 0xF42AF52c
#data 0xF655F668
#data 0xA0048B04
#data 0x0009F56a
	nop
	nop
#data 0xE010F55a
#data 0xFF77F5Ec
#data 0xF3ECE014
#data 0xFF47F3C0
#data 0xF5C1E018
#data 0xE01CFF47
#data 0xE020FF47
#data 0xE024FF47
#data 0xFFD7F353
#data 0xFF47E028
#data 0xFF47E02c
#data 0xFF47E030
#data 0xFF47E034
#data 0xFF37E038
#data 0xFFF7E03c
#data 0xFF47E040
#data 0xF29DE044
#data 0xF3ECF220
#data 0xFF47F3C2
#data 0xD418E048
#data 0xF322D319
#data 0xF353F34d
#data 0xE04CFF37
#data 0xE01CFF47
#data 0xF4E3F4Fc
#data 0xE020F4E7
#data 0xE024F4C7
#data 0xD411F447
#data 0xE00CF4E7
#data 0xF4E7FE4d
#data 0xF4C7E028
#data 0xF447E020
#data 0x430B64F3
#data 0xD20D7410
#data 0x0009420b
#data 0x4F267F50
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8C121DD8:
#data 0x8C2D6B58

#align4
loc_8C121DDC:
#data bank11.loc_8c11E860

loc_8C121DE0:
#data 0x8C32B420

#align4
loc_8C121DE4:
#data 0x8C2DEE20

#align4
loc_8C121DE8:
#data loc_8c120540

loc_8C121DEC:
#data loc_8c122780

loc_8C121DF0:
#data bank11.loc_8c11EB20

loc_8C121DF4:
#data bank16.loc_8c16BD80

loc_8C121DF8:
#data bank11.loc_8c11E2E0

loc_8C121DFC:
#data bank11.loc_8c11E170

loc_8C121E00:
#data bank16.loc_8c16BD84

loc_8C121E04:
#data bank16.loc_8c16BD50
#data 0x3F000000

#align4
loc_8C121E0C:
#data bank16.loc_8c16BD54
#data 0x8C2D6B98

#align4
loc_8C121E14:
#data bank16.loc_8c16BD88
#data 0x8C2D6B9c

#align4
loc_8C121E1C:
#data bank16.loc_8c16BD8c

loc_8C121E20:
#data bank16.loc_8c16BD58
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFFB2FA6
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xDCA97FB0
#data 0xFF9DE008
#data 0xFF471F41
#data 0xFC6C5BF1
#data 0xFE5C4B21
#data 0x64B34C0b
#data 0xF303F3Fc
#data 0xF28DDAA3
#data 0xDEA4DDA3
#data 0xF1A8FF3a
#data 0x890FF124
#data 0x64B34C0b
#data 0xF40CF3A8
#data 0x4E0BF3F0
#data 0x4D0BF432
#data 0xF2FC6403
#data 0xE00CF203
#data 0xFF27A008
	nop
	nop
#data 0x64B34D0b
#data 0xF303F3Fc
#data 0xFF37E00c
#data 0xE008DB97
#data 0xF1B8F28d
#data 0xF124F3F8
#data 0x8D11FDF6
#data 0xF4FCFD32
#data 0xF4D34E0b
#data 0x4C0B1F01
#data 0xF3B86403
#data 0xF3F0F40c
#data 0xF432A008
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xF4D3F4Fc
#data 0x00094E0b
#data 0x64034D0b
#data 0xF503F5Fc
#data 0xD689C788
#data 0xD38AD586
#data 0xD28BD488
#data 0xF48DD789
#data 0xFB4AFA4a
#data 0xE00CF608
#data 0xF2F8F3F6
#data 0xF3DCF232
#data 0xF262F352
#data 0xF52AF362
#data 0xF238F63a
#data 0xD583F358
#data 0xF42AF232
#data 0xF228F368
#data 0xF72AF232
#data 0xF52CF648
#data 0x8B05F655
#data 0xF56AA005
	nop
	nop
	nop
	nop
#data 0xF3F8F55a
#data 0xF5ECE010
#data 0xFF37F5C1
#data 0xF3ECE014
#data 0xFF47F3C0
#data 0xFF47E018
#data 0xFF47E01c
#data 0xF353E020
#data 0xE024FF47
#data 0xE028FFD7
#data 0xE02CFF47
#data 0xE030FF47
#data 0xE034FF47
#data 0xE038FF47
#data 0xE03CFF37
#data 0xE040FFF7
#data 0xF3ECFF47
#data 0xF29DF3C2
#data 0xE044F220
#data 0xFF47D468
#data 0xF322E048
#data 0xF353F34d
#data 0xE04CFF37
#data 0xE01CFF47
#data 0xF4E3F4Fc
#data 0xE020F4E7
#data 0xE024F4C7
#data 0xD461F447
#data 0xE00CF4E7
#data 0xF4E7FE4d
#data 0xF4C7E028
#data 0xF447E020
#data 0xD35D64F3
#data 0x7410430b
#data 0x420BD25c
#data 0x7F500009
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x6AF6FFF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop


loc_8C121FE0:
sts.l pr,@-r15
add 0xE8,r15
mov.l r4,@(0x04,r15)
mov.l @(loc_8C122134,pc),r3 ; r3 set to 0x8C120950
mov.l @(loc_8C122130,pc),r4 ; r4 set to 0x8C2D6AD8
jsr @r3
mov.l r5,@r15
mov.l @(loc_8C122138,pc),r3 ; r3 set to 0x8C11F870
mov r15,r5
add 0x08,r5
jsr @r3
mov.l @(0x04,r15),r4 ; r4 ??? bc r15 is ???
mov 0x14,r0 ; r0 set to 0x14
fldi1 fr4
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
mov 0x08,r0 ; r0 set to 0x08
fmov fr4,fr5
fdiv fr3,fr5
fmov.s @(r0,r15),fr3
mov 0x08,r0 ; r0 set to 0x08
mov.l @(loc_8C122110,pc),r2 ; r2 set to 0x8C16BD88
mov.l @(loc_8C12213C,pc),r3 ; r3 set to 0x8C16BD94
fmul fr5,fr3 ; r3 ??? bc r5 is ???
fmov.s fr3,@(r0,r15)
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r15),fr3
mov 0x0C,r0 ; r0 set to 0x0c
fmul fr5,fr3
fmov.s fr3,@(r0,r15)
mova @(loc_8C122104,pc),r0  ; r0 set to 0x8C122104
fmov.s @r0,fr5
mov 0x08,r0 ; r0 set to 0x08
fmov.s @(r0,r15),fr3
fmov.s @r2,fr0 ; r0 ??
fadd fr4,fr3
fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
mov.l @r15,r1
fmul fr0,fr3
fmov fr5,fr0
fmac fr0,fr3,fr2
fmov.s fr2,@r1
mov r15,r1
mov.l @r15,r0
add 0x0C,r1
fmov.s @r1,fr3
mov 0x04,r2 ; r2 set to 0x04
mov.l @(loc_8C122118,pc),r1 ; r1 set to 0x8C16BD8c
fneg fr3
fadd fr4,fr3
fmov.s @r1,fr0
mov.l @(loc_8C122140,pc),r3 ; r3 set to 0x8C16BD90
fmul fr0,fr3 ; r3 ??? bc r0 is ???
fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
fmov fr5,fr0
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r2)
mov.l @(loc_8C122144,pc),r2 ; r2 set to 0x8C120900
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
add 0x18,r15
lds.l @r15+,pr
rts
nop
;==============================================
	nop
#data 0x7FF84F22
#data 0xD3332F42
#data 0x430BD437
#data 0xD3371F51
#data 0x430B55F1
#data 0xE40164F2
#data 0xD2327F08
#data 0x4F26422b

#align4
loc_8C122080:
#data 0xC720D523
#data 0xE004F508
#data 0xD623F358
#data 0xF48DF352
#data 0xF447F43a
#data 0xF447E008
#data 0xF447E00c
#data 0xF447E010
#data 0xF368E014
#data 0xF34DF352
#data 0xE018F437
#data 0xE01CF447
#data 0xE020F447
#data 0xE024F447
#data 0xC725F447
#data 0xE028F308
#data 0xF437D31f
#data 0xF05CE02c
#data 0xE030F447
#data 0xF258F338
#data 0xF32ED21a
#data 0xE034F437
#data 0xF328F268
#data 0xF437F32e
#data 0xF407E038
#data 0xF39DE03c
#data 0xF437000b
;==============================================

#align4
loc_8C1220EC:
#data bank11.loc_8c11EB20

loc_8C1220F0:
#data bank16.loc_8c16BD80

loc_8C1220F4:
#data bank11.loc_8c11E2E0

loc_8C1220F8:
#data bank11.loc_8c11E170

loc_8C1220FC:
#data bank16.loc_8c16BD84

loc_8C122100:
#data bank16.loc_8c16BD50

loc_8C122104:
#data 0x3F000000

#align4
loc_8C122108:
#data bank16.loc_8c16BD54
#data 0x8C2D6B98

#align4
loc_8C122110:
#data bank16.loc_8c16BD88
#data 0x8C2D6B9c

#align4
loc_8C122118:
#data bank16.loc_8c16BD8c

loc_8C12211C:
#data bank16.loc_8c16BD58
#data 0x8C32B420
#data 0x8C2DEE20

#align4
loc_8C122128:
#data loc_8c120540

loc_8C12212C:
#data loc_8c122780

loc_8C122130:
#data 0x8C2D6AD8

#align4
loc_8C122134:
#data loc_8c120950

loc_8C122138:
#data bank11.loc_8c11F870

loc_8C12213C:
#data bank16.loc_8c16BD94

loc_8C122140:
#data bank16.loc_8c16BD90

loc_8C122144:
#data loc_8c120900
#data 0x8C2D6A98

#align4
loc_8C12214C:
#data bank11.loc_8c11F8B0
#data 0xBF000000
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122160:
#data 0xFFEBFFFb
#data 0xFFDBD431
#data 0xFE6CFFCb
#data 0x85454F22
#data 0xF65CFF4c
#data 0xFD5C2008
#data 0xFC7CF49d
#data 0x8D07F57c
#data 0x8543F440
#data 0x40009350
#data 0x89013037
#data 0xF642F542

#align4
loc_8C122190:
#data 0xD327D228
#data 0xF3FAD128
#data 0xD229F2Da
#data 0xD629D327
#data 0xD729D52a
#data 0xF3CAF1Ea
#data 0xF65AF26a
#data 0x20088545
#data 0xF3FC8906
#data 0xF2ECF342
#data 0xF73AF242
#data 0xF52AA002

#align4
loc_8C1221C0:
#data 0xF5EAF7Fa

#align4
loc_8C1221C4:
#data 0xF258D323
#data 0xD421F338
#data 0xD223F232
#data 0xF42AD521
#data 0xF328F268
#data 0xF232D621
#data 0xF52AF42c
#data 0xF545F548
#data 0xA0048B04
#data 0x0009F65a
	nop
	nop

loc_8C1221F0:
#data 0xF64a

loc_8C1221F2:
#data 0xD41c
#data 0x0009BF44
#data 0xF7CC4F26
#data 0xFCF9F5Dc
#data 0xFDF9F6Ec
#data 0xFEF9F4Fc
#data 0xFFF9A062
	nop
	nop

#align4
loc_8C122210:
#data 0xE301D215
#data 0x2232D115
#data 0xD315D216
#data 0xD116F14a
#data 0xF26AF35a
#data 0xF17A000b
;==============================================
#data 0x000001E0
#data 0x8C2DEE5c
#data 0x8C2D6BA8
#data 0x8C2D6BAc
#data 0x8C2D6BA0
#data 0x8C2D6BA4

#align4
loc_8C122240:
#data bank16.loc_8c16BD94

loc_8C122244:
#data bank16.loc_8c16BD8c

loc_8C122248:
#data bank16.loc_8c16BD90

loc_8C12224C:
#data bank16.loc_8c16BD88
#data 0x8C2D6B98

#align4
loc_8C122254:
#data bank16.loc_8c16BD50
#data 0x8C2D6B9c

#align4
loc_8C12225C:
#data bank16.loc_8c16BD54

loc_8C122260:
#data bank16.loc_8c16BD58
#data 0x8C2D6B18

#align4
loc_8C122268:
#data bank16.loc_8c16BD98
#data 0x8C2D6BB0
#data 0x8C2D6BB4
#data 0x8C2D6BB8
#data 0x8C2D6BBc
	nop
	nop

#align4
loc_8C122280:
#data 0x4F22D25c
#data 0x23386322
#data 0xD35B8914
#data 0xF338D15b
#data 0xF33DF218
#data 0xD35BD25a
#data 0xF338F128
#data 0xF23D075a
#data 0x065AD259
#data 0x055AF13d
#data 0x420BF33d
#data 0xD251045a
#data 0x2232E300

#align4
loc_8C1222B4:
#data 0x000B4F26
	nop
	nop
	nop
	nop
#data 0xE100D04c
#data 0x2012000b
;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C1222D0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFEBFFFb
#data 0x4F22FFDb
#data 0xF43D7FF8
#data 0xF360F34c
#data 0xF270F25c
#data 0xEC00D946
#data 0xF53D0E5a
#data 0x4E118592
#data 0xF33D0B5a
#data 0xF23D0D5a
#data 0x8D030A5a
#data 0xA0046403
#data 0x00096EC3

#align4
loc_8C122310:
#data 0x8B003E43
#data 0x6E43

loc_8C122316:
#data 0x4D11
#data 0xA0048902
#data 0x00096DC3

#align4
loc_8C122320:
#data 0x8B003D43
#data 0x6D43

loc_8C122326:
#data 0x8593
#data 0x8D094B11
#data 0xA00A6403
#data 0x00096BC3
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122340:
#data 0x8B003B43
#data 0x6B43

loc_8C122346:
#data 0x4A11
#data 0xA0048902
#data 0x00096AC3

#align4
loc_8C122350:
#data 0x8B003A43
#data 0x6A43

loc_8C122356:
#data 0x4A5a
#data 0xFF9DD32d
#data 0x4D5AF32d
#data 0xF22D6032
#data 0x88014B5a
#data 0xF32DFD3c
#data 0xF62C4E5a
#data 0xFE3CF22d
#data 0xF42C8F5c
#data 0x6012D126
#data 0x890F8800
#data 0x89158801
#data 0x891B8802
#data 0x89218803
#data 0x89278804
#data 0x0009A028
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1223A0:
#data 0xA01FC71d
#data 0x0009FF08
	nop
	nop
	nop
	nop

#align4
loc_8C1223B0:
#data 0xA017C71a
#data 0x0009FF08
	nop
	nop
	nop
	nop

#align4
loc_8C1223C0:
#data 0xA00FC717
#data 0x0009FF08
	nop
	nop
	nop
	nop

#align4
loc_8C1223D0:
#data 0xA007C714
#data 0x0009FF08
	nop
	nop
	nop
	nop

#align4
loc_8C1223E0:
#data 0xFF08C711

#align4
loc_8C1223E4:
#data 0xF7F2F7Dc
#data 0xBF11F5Ec
#data 0xA022F5F2
#data 0x00000009

#align4
loc_8C1223F4:
#data bank16.loc_8c16BD98
#data 0x8C2D6BBc
#data 0x8C2D6BB8
#data 0x8C2D6BB4
#data 0x8C2D6BB0

#align4
loc_8C122408:
#data bank17.loc_8c17E3C0
#data 0x8C2DEE5c
#data 0x8C2AA51c

#align4
loc_8C122414:
#data bank16.loc_8c16BBF0
#data 0x3F843958
#data 0x3F8872B0
#data 0x3F8CCCCd
#data 0x3F910625
#data 0x3F953F7d
	nop
	nop

#align4
loc_8C122430:
#data 0xBEEDF7Dc
#data 0xF5Ec

loc_8C122436:
#data 0x8593
#data 0x6403D63d
#data 0x20088595
#data 0xD13C8B26
#data 0x67B3E3Fb
#data 0x4D3C4E3c
#data 0x1FD12FE2
#data 0x6212473c
#data 0x222865A3
#data 0x453C8F0f
#data 0x63439266
#data 0x33274300
#data 0x67C38D04
#data 0x750F6543
#data 0xE3FCA003

#align4
loc_8C122470:
#data 0xE3FB6543
#data 0x751f

loc_8C122476:
#data 0x453c
#data 0x75Ff

loc_8C12247A:
#data 0xD12f
#data 0x262262F2
#data 0x213253F1
#data 0x0009A01e
	nop
	nop
	nop
	nop

#align4
loc_8C122490:
#data 0x924BE3Fc
#data 0x4E3C4D3c
#data 0x43006343
#data 0x33271FE1
#data 0x8D052FD2
#data 0x654367C3
#data 0xA004750f
#data 0x0009E3Fc

#align4
loc_8C1224B0:
#data 0xE3FB6543
#data 0x751f

loc_8C1224B6:
#data 0x453c
#data 0x52F1D11f
#data 0x262275Ff
#data 0x213263F2

#align4
loc_8C1224C4:
#data 0xD01FD21d
#data 0xD31D2272
#data 0x62622352
#data 0x31206102
#data 0xD2188B11
#data 0x6322D11b
#data 0x32306212
#data 0xD1168B0b
#data 0x6212D319
#data 0x31206132
#data 0xD1148B05
#data 0x6312D217
#data 0x31306122
#data 0x890a

loc_8C1224FA:
#data 0xD316
#data 0xA009E001
#data 0x00092302
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122510:
#data 0x21C2D110

#align4
loc_8C122514:
#data 0x4F267F08
#data 0xFEF9FDF9
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x000001E0

#align4
loc_8C122530:
#data bank16.loc_8c16BD5c
#data 0x8C2AA518

#align4
loc_8C122538:
#data bank16.loc_8c16BD60

loc_8C12253C:
#data bank16.loc_8c16BD64

loc_8C122540:
#data bank16.loc_8c16BD68

loc_8C122544:
#data bank16.loc_8c16BD6c

loc_8C122548:
#data bank16.loc_8c16BD70

loc_8C12254C:
#data bank16.loc_8c16BD74

loc_8C122550:
#data bank16.loc_8c16BD78

loc_8C122554:
#data bank16.loc_8c16BD7c
	nop
	nop
	nop
	nop


loc_8C122560:
sts.l pr,@-r15
add 0xCC,r15
mov 0x14,r0 ; r0 set to 0x14
mov.l @(loc_8C122650,pc),r3 ; r3 set to 0x8C120950
fmov.s fr4,@(r0,r15)
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr5,@(r0,r15)
mov 0x10,r0 ; r0 set to 0x10
fmov.s fr6,@(r0,r15)
mov.l r4,@(0x0C,r15)
mov.l @(loc_8C12264C,pc),r4 ; r4 set to 0x8C2D6B18
mov.l r5,@(0x04,r15)
jsr @r3
mov.l r6,@r15
mov.l @(loc_8C122658,pc),r2 ; r2 set to 0x8C120540
mov.l @(loc_8C122654,pc),r4 ; r4 set to 0x8C2D6AD8
jsr @r2
nop
mov 0x14,r0 ; r0 set to 0x14
mov r15,r5
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
mov 0x28,r0 ; r0 set to 0x28
mov.l @(loc_8C12265C,pc),r3 ; r3 set to 0x8C11F870
mov r15,r4 ; r4 ??? bc r15 is ???
fmov.s fr3,@(r0,r15)
mov 0x08,r0 ; r0 set to 0x08
fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
mov 0x2C,r0 ; r0 set to 0x2c
add 0x18,r5
fmov.s fr3,@(r0,r15)
mov 0x10,r0 ; r0 set to 0x10
fmov.s @(r0,r15),fr3
mov 0x30,r0 ; r0 set to 0x30
fmov.s fr3,@(r0,r15)
jsr @r3
add 0x28,r4
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr4
fmov.s @(r0,r15),fr3
mov 0x18,r0 ; r0 set to 0x18
mov.l @(0x0C,r15),r3
fdiv fr3,fr4
fmov.s @(r0,r15),fr3
mov 0x1C,r0 ; r0 set to 0x1c
fmul fr4,fr3
fmov.s fr3,@r3
fmov.s @(r0,r15),fr3
mov.l @(0x04,r15),r3
fmul fr4,fr3
fmov.s fr3,@r3
mov.l @r15,r3
fmov.s fr4,@r3
mov.l @(loc_8C122660,pc),r3 ; r3 set to 0x8C120900
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
add 0x34,r15
lds.l @r15+,pr
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0xD3204F22
#data 0x430BD419
#data 0xD21B0009
#data 0x422BD419
#data 0x00094F26
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F222FE6
#data 0xD3157FF0
#data 0x430B6E53
#data 0xE00C65F3
#data 0xF3F6F49d
#data 0xF433E004
#data 0xF342F3F8
#data 0xF3F6FE3a
#data 0xF342E004
#data 0xE008FE37
#data 0x7F10FE47
#data 0x000B4F26
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD502D409
#data 0xA0135442
#data 0x00000009

#align4
loc_8C12264C:
#data 0x8C2D6B18

#align4
loc_8C122650:
#data loc_8c120950

loc_8C122654:
#data 0x8C2D6AD8

#align4
loc_8C122658:
#data loc_8c120540

loc_8C12265C:
#data bank11.loc_8c11F870

loc_8C122660:
#data loc_8c120900

loc_8C122664:
#data bank11.loc_8c1201E0
#data 0x8C2D690c
	nop
	nop
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0xF049F3Fd
#data 0xF449F249
#data 0xF849F649
#data 0xFC49FA49
#data 0xF3FDFE49
#data 0x6453FBFd
#data 0xF1FD0483
#data 0xF5FD7420
#data 0xFDFDF9Fd
#data 0xFBFD0483
#data 0xF159F059
#data 0xF359F259
#data 0xF559F459
#data 0xF759F659
#data 0xF959F859
#data 0xFB59FA59
#data 0xFD59FC59
#data 0xFF59FE59
#data 0xF1FDFBFd
#data 0xF9FDF5Fd
#data 0xFBFDFDFd
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
#data 0xD30E4F22
#data 0x430BD40c
#data 0xD30E0009
#data 0x430BD40c
#data 0xD30C5442
#data 0x430BD40c
#data 0xD20C5442
#data 0x0009420b
#data 0xE401D30b
#data 0x4F26432b
	nop
	nop
	nop
	nop


loc_8C122710:
mov.l @(loc_8C122734,pc),r3 ; r3 set to 0x8C32B448
rts
fmov.s fr4,@r3
;==============================================
#data 0x0000
#data 0x8C2D6B18

#align4
loc_8C12271C:
#data loc_8c120950
#data 0x8C2D690c

#align4
loc_8C122724:
#data loc_8c120540
#data 0x8C2D6900

#align4
loc_8C12272C:
#data loc_8c120660

loc_8C122730:
#data loc_8c1208A0

loc_8C122734:
#data 0x8C32B448
	nop
	nop
	nop
	nop


loc_8C122740:
frchg
fmov.s @r4+,fr1
fmov.s @r4,fr2
add 0x08,r4
fmov.s @r4,fr3
fmov.s @r4+,fr0
fneg fr3
fmov.s @r4+,fr5
fmov.s @r4,fr6
add 0x08,r4
fmov.s @r4,fr7
fmov.s @r4+,fr4
fneg fr7
fmov.s @r4+,fr9
fmov.s @r4,fr10
add 0x08,r4
fmov.s @r4,fr11
fmov.s @r4+,fr8
fneg fr11
fmov.s @r4+,fr13
fmov.s @r4,fr14
add 0x08,r4
fmov.s @r4,fr15
fmov.s @r4+,fr12
fneg fr15
frchg
rts
nop
;==============================================
	nop
	nop
	nop
	nop


loc_8C122780:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C1227B8,pc),r13 ; r13 set to 0x8C11FB70
mov.l @(loc_8C1227B4,pc),r14 ; r14 set to 0x8C2D6C40
jsr @r13
mov r14,r4 ; r4 set to 0x8C2D6C40
mov.l @(loc_8C1227C0,pc),r3 ; r3 set to 0x8C122740
mov.l @(loc_8C1227BC,pc),r4 ; r4 set to 0x8C2D6B18
jsr @r3
nop
mov.l @(loc_8C1227C4,pc),r2 ; r2 set to 0x8C1205A0
jsr @r2
mov r14,r4 ; r4 set to 0x8C2D6C40
mov.l @(loc_8C1227C8,pc),r4 ; r4 set to 0x8C2D6BC0
jsr @r13
nop
mov.l @(loc_8C1227CC,pc),r4 ; r4 set to 0x8C2D6C00
jsr @r13
nop
lds.l @r15+,pr
mov.l @(loc_8C1227D0,pc),r3 ; r3 set to 0x8C120250
mov r14,r4 ; r4 set to 0x8C2D6C40
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

#align4
loc_8C1227B4:
#data 0x8C2D6C40

#align4
loc_8C1227B8:
#data bank11.loc_8c11FB70

loc_8C1227BC:
#data 0x8C2D6B18

#align4
loc_8C1227C0:
#data loc_8c122740

loc_8C1227C4:
#data loc_8c1205A0

loc_8C1227C8:
#data 0x8C2D6BC0

#align4
loc_8C1227CC:
#data 0x8C2D6C00

#align4
loc_8C1227D0:
#data loc_8c120250
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C1227E0:
#data 0xE3002FE6
#data 0xD236DE37
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C1227F6:
#data 0x4F26
#data 0x000BE000
#data 0x00096EF6

#align4
loc_8C122800:
#data 0xE3012FE6
#data 0xD22EDE30
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C122816:
#data 0x4F26
#data 0x000BE000
#data 0x00096EF6

#align4
loc_8C122820:
#data 0xE3022FE6
#data 0xD226DE29
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C122836:
#data 0x4F26
#data 0x000BE000
#data 0x00096EF6

#align4
loc_8C122840:
#data 0xE3032FE6
#data 0xD21EDE22
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C122856:
#data 0xD31f
#data 0x23229231
#data 0xE0004F26
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122870:
#data 0xE3052FE6
#data 0xD212DE18
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C122886:
#data 0xD315
#data 0x2322E203
#data 0xE0004F26
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1228A0:
#data 0xE3042FE6
#data 0xD206DE0e
#data 0x22324F22
#data 0x2EE86EE2
#data 0x4E0B8901
	nop

loc_8C1228B6:
#data 0x4F26
#data 0x000BE000
#data 0x40006EF6
#data 0x8C2D6CE8
#data 0x8C2D6C80
#data 0x8C2D6C84
#data 0x8C2D6C88
#data 0x8C2D6C8c
#data 0xA05F6900
#data 0x8C2D6C90
#data 0xA05F705c
#data 0x8C2D6CB0
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c1228f0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
stc sr, r3
mov.l @(loc_8C122A00,pc),r2
mov.l r4,@r15
mov.l r3,@(0x04,r15)
or r2,r3
ldc r3, sr
mov 0x00,r14
mov.l @(loc_8C122A08,pc),r12
mov.l @(bank12.loc_8c122a04,pc),r7
mov r14,r0
mov 0xFF,r6
mov 0x34,r5

loc_8c122916:
mov.l r14,@(r0,r7)
mov.l r6,@(r0,r12)
add 0x04,r0
cmp/hs r5,r0
bf loc_8c122916
mov.l @(bank12.loc_8c122a0c,pc),r13
mov r14,r11
mov 0x0C,r10

loc_8c122926:
mov.w @(0x02,r13),r0
mov r0,r5
bsr bank12.loc_8c122be0
mov.w @r13,r4
add 0x01,r11
cmp/ge r10,r11
bf/s loc_8c122926
add 0x04,r13
mov r14,r13
mov 0x0D,r11

loc_8c12293a:
mov 0x00,r5
bsr bank12.loc_8c122aa0
mov r13,r4
add 0x01,r13
cmp/ge r11,r13
bf loc_8c12293a
bsr bank12.loc_8c122c80
mov 0x00,r4
mov.l @(bank12.loc_8c122a14,pc),r2
mov.l @(bank12.loc_8c122a10,pc),r4
jsr @r2
mov 0x00,r5
mov.l @(bank12.loc_8c122a1c,pc),r5
mov 0x00,r7
mov.w @(loc_8C1229F8,pc),r4
mov.l @(bank12.loc_8c122a18,pc),r14
jsr @r14
mov 0x58,r6
mov.l @(bank12.loc_8c122a20,pc),r5
mov 0x00,r7
mov.w @(loc_8C1229FA,pc),r4
mov.l r0,@(0x04,r12)
jsr @r14
mov r7,r6
mov.l r0,@(0x08,r12)
mov.l @r15,r3
tst r3,r3
bt loc_8c12298a
mov.w @(loc_8C1229FC,pc),r4
mov 0x00,r7
mov.l @(bank12.loc_8c122a24,pc),r5
jsr @r14
mov r7,r6
mov.l @(bank12.loc_8c122a28,pc),r5
mov 0x00,r7
mov.w @(loc_8C1229FE,pc),r4
mov.l r0,@(0x0C,r12)
jsr @r14
mov r7,r6
mov.l r0,@(0x10,r12)

loc_8c12298a:
mov.l @(bank12.loc_8c122a30,pc),r3
mov.l @(bank12.loc_8c122a2c,pc),r4
jsr @r3
mov 0x00,r5
bsr bank12.loc_8c122cb0
mov 0x00,r4
mov.l @(0x04,r15),r3
ldc r3, sr
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
#data 0xAF9E
#data 0xE401
	nop
	nop
	nop
	nop
	nop
	nop

loc_8C1229C0:
bra loc_8C1228F0
mov 0x00,r4
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1229D0:
mov.l @(loc_8C122A04,pc),r3 ; r3 set to 0x8C2D6C80
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C1229E0:
mov.l @(loc_8C122A34,pc),r3 ; r3 set to 0x8C2D6C84
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C1229F0:
mov.l @(loc_8C122A38,pc),r3 ; r3 set to 0x8C2D6C88
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
loc_8c1229f8:
#data 0x0900
loc_8c1229fa:
#data 0x0920
loc_8c1229fc:
#data 0x0A40
loc_8c1229fe:
#data 0x0B00
loc_8c122a00:
#data 0x10000000

#align4
loc_8C122A04:
#data 0x8C2D6C80
loc_8c122a08:
#data 0x8C2D6CB4

#align4
loc_8C122A0C:
#data bank13.loc_8c13f4C2

loc_8C122A10:
#data loc_8c1227E0

loc_8C122A14:
#data bank17.loc_8c17AE00

loc_8C122A18:
#data bank18.loc_8c1844D4

loc_8C122A1C:
#data loc_8c122800

loc_8C122A20:
#data loc_8c122820

loc_8C122A24:
#data loc_8c122840

loc_8C122A28:
#data loc_8c122870

loc_8C122A2C:
#data loc_8c1228A0

loc_8C122A30:
#data bank17.loc_8c17AF80

loc_8C122A34:
#data 0x8C2D6C84

#align4
loc_8C122A38:
#data 0x8C2D6C88
	nop
	nop


loc_8C122A40:
mov.l @(loc_8C122B80,pc),r3 ; r3 set to 0x8C2D6C8c
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C122A50:
mov.l @(loc_8C122B84,pc),r3 ; r3 set to 0x8C2D6C90
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C122A60:
mov.l @(loc_8C122B88,pc),r0 ; r0 set to 0x8C13F4B4
add 0xFB,r4
shll r4
mov.w @(loc_8C122B78,pc),r1 ; r1 set to 0x1C0
stc vbr, r2
mov.w @(r0,r4),r4
shlr2 r4
add r1,r2
shlr r4
add r2,r4
mov.l r5,@r4
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop


loc_8C122A80:
mov.l @(loc_8C122B8C,pc),r3 ; r3 set to 0x8C2D6CB0
mov.l r5,@r3 ; r3 ??? bc r5 is ???
rts
mov 0x01,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C122A90:
rts
mov 0x00,r0
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C122AA0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8C122B7A,pc),r3 ; r3 set to 0xFF0f
mov r4,r14
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.l r0,@r15
stc sr, r0
and r3,r0
or 0xE0,r0
ldc r0, sr
mov 0x0D,r2 ; r2 set to 0x0d
cmp/ge r2,r14
bt loc_8C122AE0
mov.l @(loc_8C122B90,pc),r0 ; r0 set to 0x8C16BD9c
mov r14,r1
shll2 r1
mov.l @(r0,r1),r3 ; r3 ??? bc r1 is ???
jsr @r3
mov r14,r4
bra loc_8C122AE4
nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C122AE0:
bsr loc_8C122A90
mov r14,r4

loc_8C122AE4:
mov r0,r4
mov.l @r15,r0
stc sr, r2
mov.w @(loc_8C122B7A,pc),r3 ; r3 set to 0xFF0F, r3 set to 0xFF0f
and 0x0F,r0
shll2 r0
and r3,r2
shll2 r0
or r2,r0
ldc r0, sr
mov r4,r0
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x3433E30d
#data 0xD01F890c
#data 0x014E4408
#data 0xA00A2512
#data 0x0009E401
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x6463E600
#data 0x000B2562
#data 0x00096043
	nop
	nop
#data 0x000BD315
#data 0x00096032
	nop
	nop
	nop
	nop


loc_8C122B50:
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C122B60:
mov.l @(loc_8C122B9C,pc),r1 ; r1 set to 0xA05F6900
mov.w @(loc_8C122B7C,pc),r2 ; r2 set to 0x4000
rts
mov.l r2,@r1
;==============================================
	nop
	nop
	nop
	nop


loc_8C122B70:
mov.l @(loc_8C122BA0,pc),r0 ; r0 set to 0xA05F705c
mov 0x03,r3 ; r3 set to 0x03
rts
mov.l r3,@r0
;==============================================

loc_8C122B78:
#data 0x01C0

loc_8C122B7A:
#data 0xFF0f

loc_8C122B7C:
#data 0x4000
#data 0x0000

#align4
loc_8C122B80:
#data 0x8C2D6C8c

#align4
loc_8C122B84:
#data 0x8C2D6C90

#align4
loc_8C122B88:
#data bank13.loc_8c13f4B4

loc_8C122B8C:
#data 0x8C2D6CB0

#align4
loc_8C122B90:
#data bank16.loc_8c16BD9c
#data 0x8C2D6C80
#data 0x8C2D6CE8

#align4
loc_8C122B9C:
#data 0xA05F6900

#align4
loc_8C122BA0:
#data 0xA05F705c
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE3062FE6
#data 0x3E336E43
#data 0xD044890a
#data 0x410861E3
#data 0x021E64E3
#data 0x6EF6422b
	nop
	nop
	nop
	nop
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122BE0:
#data 0xE30C7FFc
#data 0x89043437
#data 0x8B024511
#data 0x3527E20f
#data 0x8B06

loc_8C122BF2:
#data 0xE000
#data 0x7F04000b
;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C122C00:
#data 0xD2330702
#data 0x420E227b
#data 0x6643D332
#data 0xD4324608
#data 0x8561363c
#data 0x2F026260
#data 0x342C6007
#data 0x20296241
#data 0x84616203
#data 0x225B450c
#data 0x61412421
#data 0xE001470e
#data 0x7F04000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x3437E30c
#data 0x000B8B04
#data 0x0009E000
	nop
	nop
#data 0x6643D320
#data 0xD4204608
#data 0x6260363c
#data 0x6041342c
#data 0x8461620d
#data 0x600BE10f
#data 0x2219420d
#data 0x2522E001
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122C80:
#data 0x7FFC4F22
#data 0xD2120302
#data 0x232B2F32
#data 0xD313430e
#data 0xE500430b
#data 0x420E62F2
#data 0x4F267F04
#data 0xE000000b
;==============================================
#data 0x0009AFFe
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C122CB0:
#data 0x432BD30b
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C122CC0:
mov.l @(loc_8C122CE8,pc),r2 ; r2 set to 0x8C1C44D4
mov.l @(loc_8C122CE4,pc),r3 ; r3 set to 0x80000000
mov.l @(loc_8C122CEC,pc),r1 ; r1 set to 0x8C1C9584
mov.l r3,@r2 ; r2 ??
rts
mov.l r4,@r1
;==============================================

#align4
loc_8C122CCC:
#data bank16.loc_8c16BDD0
#data 0x10000000

#align4
loc_8C122CD4:
#data bank16.loc_8c16BDE8
#data 0xFFD00004

#align4
loc_8C122CDC:
#data bank17.loc_8c17B000

loc_8C122CE0:
#data bank17.loc_8c17AB8c

loc_8C122CE4:
#data 0x80000000

#align4
loc_8C122CE8:
#data bank1c.loc_8c1c44D4

loc_8C122CEC:
#data bank1c.loc_8c1c9584


loc_8C122CF0:
mov.l @(loc_8C122F04,pc),r3 ; r3 set to 0x8C2DEE54
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C122F08,pc),r2 ; r2 set to 0x8C2D6CEc
mov.l r4,@r3 ; r3 ??
rts
mov.l r4,@r2
;==============================================
	nop
	nop

#align4
loc_8c122d00:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
sts.l macl,@-r15
add 0xF0,r15
mov 0x00,r9
mov r7,r8
tst r6,r6
mov.l r5,@(0x08,r15)
mov.l r9,@(0x04,r15)
mov.l r9,@(0x0C,r15)
bf/s loc_8c122d50
mov.l r9,@r8
mov.l @r4,r2
cmp/pz r2
bf loc_8c122d30
mov.l @(0x18,r4),r1
tst r1,r1
bf loc_8c122d40

loc_8c122d30:
bra loc_8c122f9e
mov 0x00,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c122d40:
mov r4,r12
bra loc_8c122d52
add 0x18,r12
	nop
	nop
	nop
	nop
	nop


loc_8c122d50:
mov r6,r12

loc_8c122d52:
mov r12,r14
mov.l @(0x20,r14),r10
mov r10,r13
cmp/pz r13
bf/s loc_8c122df2
add 0x50,r12
mov.l @(0x34,r15),r0
cmp/eq 0x01,r0
bf loc_8c122d70
mov r13,r2
mov.l @(0x08,r15),r3
shll2 r2
shll2 r2
add r3,r2
mov.l @(0x0C,r2),r13

loc_8c122d70:
mov.l @(bank12.loc_8c122f04,pc),r1
mov.l @(loc_8C122F0C,pc),r11
mov.l @r1,r3
add r3,r13
shll2 r13
shll r13
mov r13,r0
mov.l r13,@r15
mov.l @r11,r2
add r2,r0
mov.l @r0,r2
tst r2,r2
bf loc_8c122d9e
mov.l @r15,r2
mov 0x04,r1
mov.l @r11,r3
add r3,r2
mov.l @(bank12.loc_8c122f10,pc),r3
add r2,r1
jsr @r3
mov.l r1,@-r15
mov.l @r15+,r3
mov.l r0,@r3

loc_8c122d9e:
mov.l @r15,r2
mov.l @r11,r3
add r3,r2
mov.l @r2,r1
add 0x01,r1
mov.l r1,@r2
mov.l @r11,r3
mov 0x3C,r11
mov.l @r15,r13
mov.l @(loc_8C122F14,pc),r2
add r3,r13
mov.l @(0x04,r13),r13
mov.l @r2,r3
mul.l r11,r13
sts macl,r11
add r3,r11
mov.l @(0x2C,r11),r1
tst r1,r1
bf loc_8c122dec
mov r10,r1
mov.l @(0x08,r15),r3
shll2 r1
mov r13,r5
shll2 r1
add r3,r1
mov.l @(bank12.loc_8c122f18,pc),r3
mov.l r1,@(0x04,r15)
mov.l @(0x08,r1),r6
jsr @r3
mov r1,r4
mov.l @(0x0C,r15),r2
mov.l @(bank12.loc_8c122f1c,pc),r3
or r0,r2
mov.l r2,@(0x0C,r15)
jsr @r3
mov r13,r4
mov 0x01,r2
mov.l r13,@(0x38,r11)
mov.l r2,@(0x04,r15)

loc_8c122dec:
mov.l @(0x2C,r11),r3
add 0x01,r3
mov.l r3,@(0x2C,r11)

loc_8c122df2:
cmp/pz r10
bt loc_8c122e04
mov.l @(loc_8C122F20,pc),r3
mov.l @r14,r0
or 0x01,r0
mov.l r0,@r14
mov.l @(0x04,r14),r2
or r3,r2
mov.l r2,@(0x04,r14)

loc_8c122e04:
mov.l @(bank12.loc_8c122f28,pc),r0
cmp/pz r13
mov.l @r14,r1
mov.l @(loc_8C122F24,pc),r3
mov.l @r0,r2
and r3,r1
mov.l @(loc_8C122F2C,pc),r3
shll16 r2
or r3,r2
or r2,r1
bf/s loc_8c122e30
mov.l r1,@r14
mov.l @(bank12.loc_8c122f30,pc),r1
mov r13,r5
jsr @r1
mov r14,r4
bra loc_8c122e36
nop
	nop
	nop
	nop
	nop


loc_8c122e30:
mov.l @(bank12.loc_8c122f34,pc),r2
jsr @r2
mov r14,r4

loc_8c122e36:
mov.l @(bank12.loc_8c122f38,pc),r2
mov.l @r2,r3
tst r3,r3
bt/s loc_8c122e44
mov 0x07,r4
bra loc_8c122f50
nop

loc_8c122e44:
mov.l @(0x0C,r14),r3
mov 0xE5,r1
shld r1, r3
and r3,r4
mov.l @(bank12.loc_8c122f08,pc),r3
mov.l @r3,r5
tst r5,r5
bf loc_8c122e58
bra loc_8c122f74
nop

loc_8c122e58:
mov r4,r0
cmp/eq 0x05,r0
bt loc_8c122e68
mov r4,r0
cmp/eq 0x06,r0
bt loc_8c122e68
bra loc_8c122f74
nop

loc_8c122e68:
mov.l @(loc_8C122F3C,pc),r6
mov.l @(0x3C,r14),r4
mov.w @(0x04,r6),r0
cmp/ge r0,r4
bf loc_8c122e76
bra loc_8c122f74
nop

loc_8c122e76:
mov r4,r2
shll2 r2
mov.l @(0x18,r6),r13
mov r4,r10
mov r4,r3
shll r10
shll r2
add r2,r13
mov.w @(0x04,r13),r0
add r3,r10
shll2 r10
tst r0,r0
bt/s loc_8c122ea0
add r5,r10
mov.w @(0x04,r13),r0
add 0x01,r0
mov.w r0,@(0x04,r13)
bra loc_8c122ef2
mov.w @r13,r11
	nop
	nop


loc_8c122ea0:
mov.b @(0x02,r10),r0
mov 0xFC,r3
mov.b r0,@(0x02,r13)
mov.l @(0x08,r10),r0
add 0x0F,r0
shad r3, r0
mov.b r0,@(0x03,r13)
mov 0x01,r0
mov.w r0,@(0x04,r13)
mov r4,r0
mov.w r0,@(0x06,r13)
mov.l @(0x08,r10),r3
mov r3,r5
mov.l r3,@r15
mov.l @(bank12.loc_8c122f40,pc),r3
mov.w @(0x02,r10),r0
jsr @r3
mov r0,r4
mov r0,r11
cmp/pz r11
bf loc_8c122ef0
mov.l @(bank12.loc_8c122f44,pc),r3
mov.w r11,@r13
mov.l @r15,r5
jsr @r3
mov r11,r4
mov r11,r4
mov.l @(bank12.loc_8c122f48,pc),r3
mov.l @r15,r6
shll2 r4
mov.l @(0x04,r10),r5
jsr @r3
shll2 r4
bra loc_8c122ef2
nop
	nop
	nop
	nop
	nop
	nop


loc_8c122ef0:
mov r9,r11

loc_8c122ef2:
mov.l @(0x0C,r14),r2
mov 0x15,r1
mov.l @(loc_8C122F4C,pc),r3
shad r1, r11
and r3,r2
or r11,r2
bra loc_8c122f74
mov.l r2,@(0x0C,r14)
#data 0x0000

#align4
loc_8c122f04:
#data 0x8C2DEE54

#align4
loc_8c122f08:
#data 0x8C2D6CEC

#align4
loc_8C122F0C:
#data 0x8C2AA26C

#align4
loc_8c122f10:
#data bank11.loc_8c11b980

loc_8C122F14:
#data 0x8C2DE690

#align4
loc_8c122f18:
#data bank11.loc_8c11b640

loc_8c122f1c:
#data bank11.loc_8c11bc40

loc_8C122F20:
#data 0x00400000

#align4
loc_8C122F24:
#data 0xFFFCFFFF

#align4
loc_8c122f28:
#data bank16.loc_8c16bbf4

loc_8C122F2C:
#data 0x008C0000

#align4
loc_8c122f30:
#data bank11.loc_8c11bb70

loc_8c122f34:
#data bank11.loc_8c11bd20

loc_8c122f38:
#data bank16.loc_8c16bbec

loc_8C122F3C:
#data 0x8C32B420

#align4
loc_8c122f40:
#data bank11.loc_8c11be90

loc_8c122f44:
#data bank11.loc_8c11bf50

loc_8c122f48:
#data bank11.loc_8c11f7f0

loc_8C122F4C:
#data 0xF81FFFFF


loc_8c122f50:
mov.l @(0x0C,r14),r1
mov 0xE5,r3
shld r3, r1
and r1,r4
mov r4,r0
cmp/eq 0x05,r0
bt loc_8c122f64
mov r4,r0
cmp/eq 0x06,r0
bf loc_8c122f74

loc_8c122f64:
mov.l @(0x0C,r14),r2
mov 0x15,r1
mov.l @(loc_8C12317C,pc),r3
mov.l @(0x3C,r14),r4
and r3,r2
shad r1, r4
or r4,r2
mov.l r2,@(0x0C,r14)

loc_8c122f74:
mov.l @(bank12.loc_8c123180,pc),r3
jsr @r3
mov r14,r4
mov 0x4C,r0
mov.l @(r0,r14),r2
add r2,r12
mov.l @r12,r4
tst r4,r4
bf loc_8c122f90
bra loc_8c122f9c
mov.l r9,@r8
	nop
	nop
	nop


loc_8c122f90:
mov.l @(0x04,r15),r2
tst r2,r2
bf loc_8c122f9a
bra loc_8c122d52
nop

loc_8c122f9a:
mov.l r12,@r8

loc_8c122f9c:
mov.l @(0x0C,r15),r0

loc_8c122f9e:
add 0x10,r15
lds.l @r15+,macl
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F22
#data 0xE300
#data 0xBE9C
#data 0x2F36
#data 0x7F04
#data 0x4F26
#data 0x000B
	nop

loc_8C122FD0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r4,@(0x08,r15)
mov r14,r13 ; r13 set to 0x00
mov.l r5,@(0x04,r15)
mov.l r14,@r15

loc_8C122FE2:
mov.l r14,@-r15
mov.l @(0x04,r15),r6
mov r15,r7
mov.l @(0x08,r15),r5
add 0x04,r7
bsr loc_8C122D00
mov.l @(0x0C,r15),r4
add 0x04,r15
mov.l @r15,r2
or r0,r13 ; r13 ??? bc r0 is ???
tst r2,r2
bf loc_8C122FE2
mov r13,r0
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0xE3014F22
#data 0x2F36BE74
#data 0x4F267F04
#data 0x0009000b
;==============================================
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0xE4001F41
#data 0xED016E43
#data 0x2F421F52
#data 0x56F12FD6
#data 0x55F367F3
#data 0xBE5F7704
#data 0x7F0454F2
#data 0x2E0B62F2
#data 0x8BF32228
#data 0x7F0C60E3
#data 0x6DF64F26
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x68537FF4
#data 0x63422F62
#data 0x8F034311
#data 0x5146EC00
#data 0x8B052118
#data 0xE000A04a
	nop
	nop
	nop
	nop
#data 0xDA3C2888
#data 0x6D430029
#data 0x1F01CA01
#data 0xE9017D18
#data 0x6ED3EBFf
#data 0x451155E8
#data 0x7D508F1b
#data 0x233863F2
#data 0x53F18907
#data 0x89042338
#data 0x43086353
#data 0x338C4308
#data 0xD1315533
#data 0x6212D031
#data 0x352C6302
#data 0x44086453
#data 0x343C4400
#data 0x22286242
#data 0x6C938B02
#data 0x65B3A001
#data 0x52E35541
#data 0x22A94511
#data 0x1F228F0a
#data 0x420BD228
#data 0xA00864E3
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x420BD224
#data 0xE04C64E3
#data 0x52E353F2
#data 0x1E23223b
#data 0x3D1C01Ee
#data 0x244864D2
#data 0x60C38BC3
#data 0x4F267F0c
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0xAF95E600
#data 0x00096563
	nop
	nop
	nop
	nop
#data 0xE601AF8e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x7FEC4F12
#data 0x1F51E300
#data 0x1F341F62
#data 0x42116242
#data 0x51468B02
#data 0x8B132118
#data 0xE000A083
loc_8c12317c:
#data 0xF81FFFFf

#align4
loc_8C123180:
#data loc_8c129CB0
#data 0x07E00000
#data 0x8C2DEE54
#data 0x8C2AA26c

#align4
loc_8C123190:
#data bank11.loc_8c11BB70

loc_8C123194:
#data bank11.loc_8c11BD20
	nop
	nop
	nop
	nop
#data 0x6A4350F1
#data 0xE8FFDE62
#data 0xDD602008
#data 0xCA010029
#data 0x7A181F03
#data 0x54C86CA3
#data 0x8F454411
#data 0x53F27A50
#data 0x89082338
#data 0x233853F3
#data 0x63438905
#data 0x430852F1
#data 0x332C4308
#data 0xD1575433
#data 0x621263E2
#data 0x6B43342c
#data 0x4B004B08
#data 0x603233Bc
#data 0x3026E200
#data 0x63E28B2c
#data 0x603233Bc
#data 0x230270Ff
#data 0x33BC63E2
#data 0x20086032
#data 0x60E28B22
#data 0x530130Bc
#data 0xE33C2F32
#data 0x61D260F2
#data 0x091A0037
#data 0x501A319c
#data 0x8B082008
#data 0x64D2D146
#data 0x349C410b
#data 0x24486403
#data 0xE2018901
#data 0x63D21F24
#data 0x339CE200
#data 0x63D2132b
#data 0x138E339c
#data 0x430BD33f
#data 0x62E264F2
#data 0x128132Bc
#data 0x6322D23d
#data 0x8B112338
#data 0xE3E550C3
#data 0x403DE407
#data 0x6132D33a
#data 0x8D092118
#data 0x60432409
#data 0x89028805
#data 0x88066043
#data 0xD3368B02
#data 0x54CF430b
#data 0x02CEE04c
#data 0x64A23A2c
#data 0x8B992448
#data 0x7F1450F4
#data 0x4F264F16
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
#data 0xAF55E600
#data 0x00096563
	nop
	nop
	nop
	nop
#data 0xE601AF4e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x000BD320
#data 0x00092342
	nop
	nop
	nop
	nop
#data 0x2FE6D21b
#data 0x60222FD6
#data 0x8B238801
#data 0x41116142
#data 0x50468B20
#data 0x891D2008
#data 0x6643DE18
#data 0x7618ED07
#data 0x57436463
#data 0x473DE3E5
#data 0x607327D9
#data 0x8D038805
#data 0x60737650
#data 0x8B078806
#data 0xE315574f
#data 0x375C5243
#data 0x22E9473c
#data 0x1423227b
#data 0x014EE04c
#data 0x6462361c
#data 0x8BE52448
#data 0x000B6DF6
#data 0x00006EF6
#data 0x8C2DE690
#data 0x8C2AA26c
#data 0x8C2DEE54

#align4
loc_8C123338:
#data bank17.loc_8c17C960

loc_8C12333C:
#data bank11.loc_8c11BA00

loc_8C123340:
#data bank16.loc_8c16BBEc
#data 0x8C2D6CEc

#align4
loc_8C123348:
#data bank11.loc_8c11BDC0
#data 0xF81FFFFf


loc_8C123350:
sts.l pr,@-r15
mov.l @(loc_8C123498,pc),r3 ; r3 set to 0x8C17E240
jsr @r3
nop
bsr loc_8C123380
mov 0x01,r4 ; r4 set to 0x01
mov 0x01,r4 ; r4 set to 0x01
bra loc_8C1233B0
lds.l @r15+,pr
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C123370:
mov.l @(loc_8C123498,pc),r3 ; r3 set to 0x8C17E240
jmp @r3
nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c123380:
mov r4,r0
cmp/eq 0x02,r0
bt loc_8c123388
mov 0x01,r4

loc_8c123388:
mov.l @(loc_8C12349C,pc),r2
mov 0x1D,r3
shad r3, r4
rts
mov.l r4,@r2
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD13E
#data 0xE3E3
#data 0x6012
#data 0x000B
#data 0x403C
;==============================================
	nop
	nop
	nop

loc_8c1233b0:
#data 0x6043
#data 0x88FF
#data 0x8900
#data 0xE401

loc_8c1233b8:
#data 0xD239
#data 0x000B
#data 0x2242
;==============================================
	nop
#data 0xD337
#data 0x000B
#data 0x6032
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0x4F22
#data 0xD334
#data 0x430B
#data 0x2F46
#data 0x64F2
#data 0xE500
#data 0x7F04
#data 0xA02F
#data 0x4F26
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F22
#data 0xD32C
#data 0x430B
#data 0x2F46
#data 0x64F2
#data 0xE5FF
#data 0x7F04
#data 0xA01F
#data 0x4F26
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8C123410:
sts.l pr,@-r15
mov.l @(loc_8C1234A8,pc),r3 ; r3 set to 0x8C123D10
jsr @r3
mov.l r4,@-r15
mov.l @r15,r4
mov 0x00,r5 ; r5 set to 0x00
add 0x04,r15
bra loc_8C123440
lds.l @r15+,pr
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD31D4F22
#data 0x2F46430b
#data 0xE5FF64F2
#data 0x4F267F04

#align4
loc_8c123440:
sts.l pr,@-r15
mov.l r5,@-r15
mov.l @r4,r3
cmp/pz r3
bf/s loc_8c12348e
mov.l @(0x18,r4),r5
tst r5,r5
bt loc_8c12348e
mov.l @(loc_8C1234AC,pc),r1
mov.l @(loc_8C1234B0,pc),r0
mov.l @r1,r2
mov.l @(loc_8C1234B4,pc),r3
mov.l @(0x04,r2),r6
mov.l @(loc_8C1234B8,pc),r2
shlr16 r6
shlr8 r6
mov.l r6,@r0
mov.l @(loc_8C1234BC,pc),r0
mov.l r6,@r3
mov.l @r0,r1
mov.l @(loc_8C1234C0,pc),r3
or r1,r5
mov.l @(loc_8C1234C4,pc),r1
and r3,r5
mov.l @(loc_8C1234C8,pc),r3
or r1,r5
mov.l @(loc_8C12349C,pc),r0
mov.l r5,@r2
mov 0x00,r2
mov.l r2,@r3
mov.l @r0,r2
mov.l @(loc_8C1234CC,pc),r1
mov.l @(loc_8C1234A0,pc),r3
mov.l r2,@r1
mov.l @(bank12.loc_8c1234d0,pc),r2
mov.l @(loc_8C1234B8,pc),r5
mov.l @r3,r7
jsr @r2
mov.l @r15,r6

loc_8c12348e:
mov 0x01,r4
add 0x04,r15
mov.l @(bank12.loc_8c1234d4,pc),r3
jmp @r3
lds.l @r15+,pr

loc_8c123498:
#data bank17.loc_8c17E240

#align4
loc_8C12349C:
#data 0x8C2D6CF0

#align4
loc_8C1234A0:
#data 0x8C2D6CF4

loc_8c1234a4:
#data 0x3D00
#data 0x8C12

loc_8c1234a8:
#data 0x3D10
#data 0x8C12

#align4
loc_8C1234AC:
#data 0x8C2AA508

#align4
loc_8C1234B0:
#data 0xFF000038

#align4
loc_8C1234B4:
#data 0xFF00003C

#align4
loc_8C1234B8:
#data 0x8C2DEE20

#align4
loc_8C1234BC:
#data 0x8C2DEE8C

#align4
loc_8C1234C0:
#data 0x00030000

#align4
loc_8C1234C4:
#data 0x818C0000

#align4
loc_8C1234C8:
#data 0x8C2DEE24

#align4
loc_8C1234CC:
#data 0x8C2DEE28

#align4
loc_8c1234d0:
#data bank12.loc_8c12d7c0

loc_8c1234d4:
#data bank12.loc_8c120900
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0xD090
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
	nop

loc_8C1234F0:
mova @(loc_8C123738,pc),r0  ; r0 init to 0x8C123738
mov.l r12,@-r15
mov.l @(loc_8C123728,pc),r3 ; r3 set to 0x8C16BE18
mov 0x00,r6 ; r6 set to 0x00
mov.l r11,@-r15
mov r6,r4 ; r4 set to 0x00
mov.l r10,@-r15
mov 0x20,r10 ; r10 set to 0x20
mov.l @(loc_8C12372C,pc),r2 ; r2 set to 0x8C2DEE3c
mov r10,r12 ; r12 set to 0x20
mov.l r9,@-r15
add 0x60,r12 ; r12 set to 0x80
fmov.s @r3,fr3 ; r3 ??
mov 0x02,r11 ; r11 set to 0x02
mov.l @(loc_8C123730,pc),r1 ; r1 set to 0x8C2D6CEc
mov.l @(loc_8C123734,pc),r9 ; r9 set to 0x8C2D6CF8
fldi1 fr5
fldi0 fr7
fmov.s fr3,@r2 ; r2 ??? bc r3 is ???
mov.l r6,@r1 ; r1 ??
fmov.s @r0,fr10 ; r10 ??
mova @(loc_8C12373C,pc),r0  ; r0 set to 0x8C12373c
fmov.s @r0,fr9 ; r9 ??
mova @(loc_8C123740,pc),r0  ; r0 set to 0x8C123740
fmov.s @r0,fr8

loc_8C123522:
mov r4,r1 ; r1 set to 0x00
shll8 r1 ; r1 set to 0x00
shll r1 ; r1 set to 0x00
mov r6,r5 ; r5 set to 0x00
add r9,r1 ; r1 ??? bc r9 is ???

loc_8C12352C:
lds r5,fpul
mov r5,r0 ; r0 set to 0x00
shll2 r0 ; r0 set to 0x00
cmp/ge r11,r4
fmov fr5,fr6 ; r6 ??
float fpul,fr3
fmov.s fr7,@(r0,r1)
fmul fr10,fr3
fdiv fr8,fr3
fmov fr3,fr4 ; r4 ??? bc r3 is ???
fadd fr9,fr4
fmul fr4,fr4
fadd fr4,fr4
fsub fr5,fr4
bt/s loc_8C123550
fmul fr4,fr4
bra loc_8C123560
fmov.s fr4,@(r0,r1)

#align4
loc_8c123550:
cmp/pl r4
bf/s loc_8c12355e
mov r6,r7

loc_8c123556:
add 0x01,r7
cmp/ge r4,r7
bf/s loc_8c123556
fmul fr4,fr6

loc_8c12355e:
fmov.s fr6,@(r0,r1)

loc_8C123560:
add 0x01,r5
cmp/ge r12,r5
bf loc_8C12352c
add 0x01,r4
cmp/ge r10,r4
bf loc_8C123522
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
rts
mov.l @r15+,r12
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0x4F222FE6
#data 0xDE6FD370
#data 0x64E3430b
#data 0xD46FD270
#data 0x0009420b
#data 0xD46FD36c
#data 0x0009430b
#data 0xD26E4F26
#data 0x422B64E3
#data 0x00096EF6
	nop
	nop
	nop
	nop

#align4
loc_8C1235B0:
#data 0x63434F22
#data 0x2F46E202
#data 0x24285431
#data 0xD1678B02
#data 0x0009410b

#align4
loc_8C1235C4:
#data 0x430BD366
#data 0xD261E400
#data 0x420BD461
#data 0x64F20009
#data 0xD3637F04
#data 0x4F26432b
	nop
	nop

#align4
loc_8C1235E0:
#data 0x4F226343
#data 0x50312F46
#data 0x8B02C802
#data 0x410BD15e
	nop

loc_8C1235F2:
#data 0xD35e
#data 0x0009430b
#data 0x7F0464F2
#data 0x432BD359
#data 0x00094F26
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C123610:
#data 0x7FF84F22
#data 0x2F42E004
#data 0x63F2FF47
#data 0xC8025031
#data 0xD14E8B02
#data 0x0009410b

#align4
loc_8C123628:
#data 0x430BD34d
#data 0xD248E400
#data 0x420BD448
#data 0xE0040009
#data 0xF4F664F2
#data 0xD34C7F08
#data 0x4F26432b
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C123650:
#data 0x7FF84F22
#data 0x2F42E004
#data 0x63F2FF47
#data 0xC8025031
#data 0xD1418B02
#data 0x0009410b

#align4
loc_8C123668:
#data 0x430BD340
#data 0xE0040009
#data 0xF4F664F2
#data 0xD33E7F08
#data 0x4F26432b
	nop
	nop


loc_8C123680:
mov.l @(loc_8C123728,pc),r3 ; r3 set to 0x8C16BE18
mov.l @(loc_8C12372C,pc),r2 ; r2 set to 0x8C2DEE3c
fmov.s fr4,@r3 ; r3 ??? bc r4 is ???
rts
fmov.s fr4,@r2
;==============================================
	nop
	nop
	nop
#data 0xE004D538
#data 0xF358D438
#data 0xF43AF340
#data 0xF250F256
#data 0xE008F427
#data 0xF360F356
#data 0xE004F437
#data 0xF44AD433
#data 0xE008F457
#data 0xF467000b
;==============================================
	nop
	nop
	nop
	nop
#data 0xE0082FE6
#data 0xF6E66E43
#data 0xF4E8E004
#data 0xAFDFF5E6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1236E0:
mov.l r14,@-r15
mov 0x08,r0 ; r0 set to 0x08
mov r4,r14
fmov.s @(r0,r14),fr6
mov 0x04,r0 ; r0 set to 0x04
fmov.s @r14,fr4
fmov.s @(r0,r14),fr5
mov.l @r15+,r14
mov.l @(loc_8C123774,pc),r4 ; r4 set to 0x8C16BE20
mov 0x04,r0 ; r0 set to 0x04
fmov fr6,fr8
fldi1 fr7
fadd fr7,fr8
fmov.s fr4,@r4 ; r4 ??
fmov.s fr5,@(r0,r4)
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr6,@(r0,r4)
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s fr8,@(r0,r4)
mov 0x04,r0 ; r0 set to 0x04
mov.l @(loc_8C123778,pc),r4 ; r4 set to 0x8C16BE30
fmov.s fr4,@r4 ; r4 ??
fmov.s fr5,@(r0,r4)
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr8,@(r0,r4)
mov 0x04,r0 ; r0 set to 0x04
mov.l @(loc_8C12377C,pc),r4 ; r4 set to 0x8C16BE40
fldi0 fr4
fmov.s fr4,@r4 ; r4 ??
fmov.s fr4,@(r0,r4)
mov 0x08,r0 ; r0 set to 0x08
rts
fmov.s fr7,@(r0,r4)
;==============================================
#data 0x0000

#align4
loc_8C123724:
#data 0x8c1437B6

loc_8C123728:
#data bank16.loc_8c16BE18

loc_8C12372C:
#data 0x8C2DEE3c

#align4
loc_8C123730:
#data 0x8C2D6CEc

#align4
loc_8C123734:
#data 0x8C2D6CF8

#align4
loc_8C123738:
#data 0x3E95F612

#align4
loc_8C12373C:
#data 0x3F3504F7

#align4
loc_8C123740:
#data 0x42FE0000
#data 0x8C2DACF8

#align4
loc_8C123748:
#data bank11.loc_8c11FB70
#data 0x8C2D6C00

#align4
loc_8C123750:
#data loc_8c1205E0
#data 0x8C2D6BC0

#align4
loc_8C123758:
#data loc_8c120250

loc_8C12375C:
#data loc_8c123B00

loc_8C123760:
#data loc_8c120950

loc_8C123764:
#data loc_8c123C20

loc_8C123768:
#data loc_8c123B40

loc_8C12376C:
#data loc_8c123D10

loc_8C123770:
#data loc_8c123C90

loc_8C123774:
#data bank16.loc_8c16BE20

loc_8C123778:
#data bank16.loc_8c16BE30

loc_8C12377C:
#data bank16.loc_8c16BE40


loc_8C123780:
mov.l @(loc_8C1237DC,pc),r4 ; r4 set to 0x8C16BE50
mov 0x04,r0 ; r0 set to 0x04
sts.l pr,@-r15
mov.l @(loc_8C1237E0,pc),r1 ; r1 set to 0x8C16BE60
mov r4,r2 ; r2 set to 0x8C16BE50
mov.l @(loc_8C1237E4,pc),r3 ; r3 set to 0x8C1294C8
fmov.s fr4,@r4 ; r4 ??
fmov.s fr5,@(r0,r4)
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr6,@(r0,r4)
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr
rts
nop
;==============================================
	nop
#data 0xE004D40e
#data 0xF457F44a
#data 0x000BE008
#data 0x0009F467
#data 0xE004D40b
#data 0xF457F44a
#data 0x000BE008
#data 0x0009F467
#data 0xD3096447
#data 0x2469E607
#data 0x44086557
#data 0x44082569
#data 0x44004508
#data 0x000B345c
#data 0x00002342

#align4
loc_8C1237DC:
#data bank16.loc_8c16BE50

loc_8C1237E0:
#data bank16.loc_8c16BE60

loc_8C1237E4:
#data loc_8c1294C8
#data 0x8C2AA4C4
	nop
	nop
#data 0xF44DD112
#data 0xF157E000
#data 0xF147E004
#data 0xF505F08d
#data 0x8B03F44d
#data 0x8901F045
#data 0x0009A00d
#data 0xD10ED00c
#data 0x2012D20e
#data 0x20227004
#data 0xD10ED00a
#data 0x2012D20e
#data 0x000B7004
#data 0xD0062022
#data 0x2012D109
#data 0x20127004
#data 0xD10AD004
#data 0x70042012
#data 0x2012000b
;==============================================

#align4
loc_8C12383C:
#data bank16.loc_8c16BE70

loc_8C123840:
#data loc_8c123C78

loc_8C123844:
#data loc_8c123CE8

loc_8C123848:
#data loc_8c129CC0

loc_8C12384C:
#data loc_8c129CC0

loc_8C123850:
#data loc_8c12ADE0

loc_8C123854:
#data loc_8c129CC2

loc_8C123858:
#data loc_8c129CC2

loc_8C12385C:
#data loc_8c12ADE2
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2448D587
#data 0xE2008B04
#data 0x2522A00e
	nop
	nop
#data 0x88016043
#data 0xD3838B04
#data 0x2532A006
	nop
	nop
#data 0x8B018802
#data 0x2522D280
#data 0x0009000b
;==============================================
	nop
	nop
#data 0xD47FD57e
#data 0x62326352
#data 0x63522422
#data 0x14215231
#data 0x52326352
#data 0x63521422
#data 0x000B5233
#data 0x00091423
#data 0x2FD6D076
#data 0xDD766302
#data 0x62D26132
#data 0x24123128
#data 0x52D16302
#data 0x31285131
#data 0x63022512
#data 0x513252D2
#data 0x26123128
#data 0x52D36302
#data 0x31285133
#data 0x000B2712
#data 0x00096DF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F22FFFb
#data 0xD2677FF0
#data 0x73146343
#data 0xFF382F42
#data 0xD365F328
#data 0x430BFF32
#data 0xD265E400
#data 0x420BD463
#data 0x64F20009
#data 0xD36365F3
#data 0x430B7504
#data 0xD2627408
#data 0xE401420b
#data 0xD361E004
#data 0xF238F4F6
#data 0xF3F0F34c
#data 0x8932F235
#data 0xE008D35e
#data 0xF338D45e
#data 0xE008F2F6
#data 0xF231F342
#data 0xF648FF27
#data 0xF36CF6F2
#data 0xF235F34d
#data 0xD3598B23
#data 0xF3F6E004
#data 0xF238E00c
#data 0xF3F6F232
#data 0xF321E00c
#data 0xE00CFF37
#data 0xF2F6F448
#data 0xF34CF4F2
#data 0xF235F34d
#data 0xD3518B11
#data 0xF5F6E004
#data 0xF338E008
#data 0xF63EF05c
#data 0xF635F3F6
#data 0xD34D8B07
#data 0xF05CE00c
#data 0xF43EF338
#data 0xF435F3F6
#data 0xE000890a
#data 0x4F267F10
#data 0xFFF9000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x7F10E001
#data 0x000B4F26
#data 0x0009FFF9
	nop
	nop
#data 0x4F22FFEb
#data 0xD2337FF0
#data 0x73146343
#data 0xFE382F42
#data 0xD331F328
#data 0x430BFE32
#data 0xD231E400
#data 0x420BD42f
#data 0x64F20009
#data 0xD32F65F3
#data 0x430B7504
#data 0xD22E7408
#data 0xE401420b
#data 0xD433E004
#data 0xE024F4F6
#data 0xF34CF246
#data 0xF235F3E0
#data 0xF34C8922
#data 0xE028F3E1
#data 0xF325F246
#data 0xD228891c
#data 0xF6F6E008
#data 0xF1E2F128
#data 0xF34DF31c
#data 0x8B13F635
#data 0xF31CE00c
#data 0xF34DF5F6
#data 0x8B0DF535
#data 0xF04CD322
#data 0xF31CF238
#data 0xF365F32e
#data 0xD3208B06
#data 0xF238F04c
#data 0xF32EF31c
#data 0x8909F355
#data 0x7F10E000
#data 0x000B4F26
#data 0x0009FEF9
	nop
	nop
	nop
	nop
#data 0x7F10E001
#data 0x000B4F26
#data 0x0009FEF9
	nop
	nop
#data 0x43116342
#data 0x51468B02
#data 0x8B292118
#data 0xE000000b
;==============================================

#align4
loc_8C123A90:
#data bank16.loc_8c16BE78

loc_8C123A94:
#data loc_8c12BF8a

loc_8C123A98:
#data loc_8c12CB6a
#data 0x8C2AA508
#data 0x8C2AA544
#data 0x8C32B448

#align4
loc_8C123AA8:
#data loc_8c120950
#data 0x8C2D6BC0

#align4
loc_8C123AB0:
#data loc_8c1205E0

loc_8C123AB4:
#data bank11.loc_8c11F8B0

loc_8C123AB8:
#data loc_8c120900
#data 0x8C2DEE44

#align4
loc_8C123AC0:
#data bank16.loc_8c16BD90
#data 0x8C2D6B98

#align4
loc_8C123AC8:
#data bank16.loc_8c16BD94

loc_8C123ACC:
#data bank16.loc_8c16BD88

loc_8C123AD0:
#data bank16.loc_8c16BD8c
#data 0x8C2DEE20
	nop
	nop
	nop
	nop
#data 0xE04C7418
#data 0x025E6543
#data 0x342C7450
#data 0x25586542
#data 0x50418BF7
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C123B00:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C123BBC,pc),r3 ; r3 set to 0x8C121080
jsr @r3
nop
mov.l @(loc_8C123BC0,pc),r14 ; r14 set to 0x8C2DEE20
mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
mov.l @(loc_8C123BC8,pc),r2 ; r2 set to 0x8C11F910
mov r14,r5 ; r5 set to 0x8C2DEE20
jsr @r2
add 0x10,r5 ; r5 set to 0x8C2DEE30
mov.l @(loc_8C123BC8,pc),r3 ; r3 set to 0x8C11F910
mov.l @(loc_8C123BCC,pc),r4 ; r4 set to 0x8C16BE30
jsr @r3
mov r14,r5 ; r5 set to 0x8C2DEE20
mova @(loc_8C123BD0,pc),r0  ; r0 init to 0x8C123BD0
mov.l @(loc_8C123BD4,pc),r3 ; r3 set to 0x8C121280
fmov.s @r0,fr4 ; r4 ??
mov r14,r5 ; r5 set to 0x8C2DEE20
jsr @r3
mov r14,r4 ; r4 set to 0x8C2DEE20
lds.l @r15+,pr
mov.l @(loc_8C123BBC,pc),r2 ; r2 set to 0x8C121080
jmp @r2
mov.l @r15+,r14
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C123B40:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(loc_8C123BD8,pc),r3 ; r3 set to 0x8C1204F0
jsr @r3
mov 0x02,r4 ; r4 set to 0x02
mov.l @(loc_8C123BBC,pc),r13 ; r13 set to 0x8C121080
jsr @r13
nop
mov.l @(loc_8C123BDC,pc),r4 ; r4 set to 0x8C16BE40
mov.l @(loc_8C123BC0,pc),r14 ; r14 set to 0x8C2DEE20
mov.l @(loc_8C123BC8,pc),r12 ; r12 set to 0x8C11F910
jsr @r12
mov r14,r5 ; r5 set to 0x8C2DEE20
jsr @r13
nop
mov.l @(loc_8C123BD8,pc),r2 ; r2 set to 0x8C1204F0
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
jsr @r13
nop
mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
mov r14,r5 ; r5 set to 0x8C2DEE20
jsr @r12
add 0x10,r5 ; r5 set to 0x8C2DEE30
mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
mov 0x04,r0 ; r0 set to 0x04
fmov.s @r14,fr2 ; r2 ??
mov r0,r1 ; r1 set to 0x04
fmov.s @r4,fr3 ; r3 ??
add r4,r1 ; r1 set to 0x8C16BE24
mov r14,r5 ; r5 set to 0x8C2DEE20
fadd fr3,fr2
fmov.s fr2,@r14 ; r14 ??? bc r2 is ???
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x08,r0 ; r0 set to 0x08
mov r0,r1 ; r1 set to 0x08
add r4,r1 ; r1 set to 0x8C16BE28
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r12
mov r14,r4 ; r4 ??? bc r14 is ???
mova @(loc_8C123BD0,pc),r0  ; r0 set to 0x8C123BD0
mov.l @(loc_8C123BD4,pc),r3 ; r3 set to 0x8C121280
fmov.s @r0,fr4
mov r14,r5 ; r5 ??? bc r14 is ???
jsr @r3
mov r14,r4
jsr @r13
nop
lds.l @r15+,pr
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;==============================================
#data 0x0000

#align4
loc_8C123BBC:
#data loc_8c121080

loc_8C123BC0:
#data 0x8C2DEE20

#align4
loc_8C123BC4:
#data bank16.loc_8c16BE20

loc_8C123BC8:
#data bank11.loc_8c11F910

loc_8C123BCC:
#data bank16.loc_8c16BE30

loc_8C123BD0:
#data 0x43DA4000

#align4
loc_8C123BD4:
#data loc_8c121280

loc_8C123BD8:
#data loc_8c1204F0

loc_8C123BDC:
#data bank16.loc_8c16BE40
#data 0xF149FBFd
#data 0x7408F248
#data 0xF049F348
#data 0xF549F34d
#data 0x7408F648
#data 0xF449F748
#data 0xF949F74d
#data 0x7408FA48
#data 0xF849FB48
#data 0xFD49FB4d
#data 0x7408FE48
#data 0xFC49FF48
#data 0xFBFDFF4d
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C123C20:
mova @(loc_8C123C60,pc),r0  ; r0 init to 0x8C123C60
mov.l r14,@-r15
mov r0,r14 ; r14 set to 0x8C123C60
mov.l @r4,r0 ; r0 ??? bc r4 is ???
sts.l pr,@-r15
cmp/eq 0x00,r0
mov.l @(0x14,r14),r5
bf/s loc_8C123C42
cmp/eq 0x01,r0
mov.l @(0x18,r14),r3
jsr @r3
mov.l @(0x20,r14),r14 ; r14 ??
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8C123C42:
bf loc_8C123C54
mov.l @(0x1C,r14),r3
jsr @r3
mov.l @(0x20,r14),r14
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8C123C54:
mov.l @(0x20,r14),r14
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8C123C60:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x8C2DEE20

#align4
loc_8C123C78:
#data loc_8c129CC0

loc_8C123C7C:
#data loc_8c129CC0

loc_8C123C80:
#data loc_8c120900
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C123C90:
mova @(loc_8C123CD0,pc),r0  ; r0 init to 0x8C123CD0
mov.l r14,@-r15
sts.l pr,@-r15
mov r0,r14 ; r14 set to 0x8C123CD0
mov.l @r4,r0 ; r0 ??? bc r4 is ???
cmp/eq 0x00,r0
mov.l @(0x14,r14),r5
bf/s loc_8C123CB2
cmp/eq 0x01,r0
mov.l @(0x18,r14),r3
jsr @r3
mov.l @(0x20,r14),r14 ; r14 ??
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8C123CB2:
bf loc_8C123CC4
mov.l @(0x1C,r14),r3
jsr @r3
mov.l @(0x20,r14),r14
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_8C123CC4:
mov.l @(0x20,r14),r14
jsr @r14
mov 0x01,r4 ; r4 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8C123CD0:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x8C2DEE20

#align4
loc_8C123CE8:
#data loc_8c129CC2

loc_8C123CEC:
#data loc_8c129CC2

loc_8C123CF0:
#data loc_8c120900
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C123D00:
sts.l pr,@-r15
mov.l @(loc_8C123D28,pc),r3 ; r3 set to 0x8C120950
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C123D30,pc),r2 ; r2 set to 0x8C1205E0
mov.l @(loc_8C123D2C,pc),r4 ; r4 set to 0x8C2D6BC0
jmp @r2
lds.l @r15+,pr

loc_8C123D10:
sts.l pr,@-r15
mov.l @(loc_8C123D28,pc),r3 ; r3 set to 0x8C120950
mov.l @(loc_8C123D2C,pc),r4 ; r4 set to 0x8C2D6BC0
jsr @r3
nop
mov.l @(loc_8C123D38,pc),r3 ; r3 set to 0x8C120540
mov.l @(loc_8C123D34,pc),r4 ; r4 set to 0x8C2D6900
jsr @r3
mov.l @(0x08,r4),r4 ; r4 ??
mov.l @(loc_8C123D3C,pc),r2 ; r2 set to 0x8C120660
jmp @r2
lds.l @r15+,pr

#align4
loc_8C123D28:
#data loc_8c120950

loc_8C123D2C:
#data 0x8C2D6BC0

#align4
loc_8C123D30:
#data loc_8c1205E0

loc_8C123D34:
#data 0x8C2D6900

#align4
loc_8C123D38:
#data loc_8c120540

loc_8C123D3C:
#data loc_8c120660
#data 0x000BD08c
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C123D50:
#data 0x2FD62FE6
#data 0x2FA62FB6
#data 0x7FF84F22
#data 0xC787D386
#data 0x1F41EDFf
#data 0x2F526E63
#data 0xF50823D2
#data 0xB387C784
#data 0xDB85F408
#data 0xDA8564E3
#data 0xD7854400
#data 0xD381E5Fc
#data 0x23E2E620
#data 0x2B2262F2
#data 0x2A2252F1
#data 0x342C52F1
#data 0x7403D280
#data 0x27422459
#data 0x711F61F2
#data 0x6063420b
#data 0xD17D4008
#data 0x4E15304c
#data 0x64037003
#data 0xE5002459
#data 0x61532142
#data 0x64538F06

#align4
loc_8C123DB8:
#data 0x710160A2
#data 0x04D531E3
#data 0x74028FFa

#align4
loc_8C123DC4:
#data 0x6453A009
	nop
	nop
	nop
	nop

#align4
loc_8C123DD0:
#data 0x60436372
#data 0x74014008
#data 0x0356

loc_8C123DDA:
#data 0x61B2
#data 0x711FD36d
#data 0x6063430b
#data 0x8BF33403
#data 0x4F267F08
#data 0x6BF66AF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop

#align4
loc_8c123e00:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
sts.l macl,@-r15
add 0xFC,r15
mov r6,r11
shll2 r11
mov r7,r0
mov 0x00,r8
cmp/eq 0x01,r0
shll2 r11
mov.l r5,@r15
mov r6,r9
bf/s loc_8c123e2a
add r4,r11
mov.l @(0x0C,r11),r6

loc_8c123e2a:
mov.l @(loc_8C123F9C,pc),r3
mov.l @(loc_8C123FA0,pc),r14
mov.l @r3,r2
mov.l @r14,r1
add r2,r6
mov r6,r13
shll2 r13
shll r13
add r13,r1
mov.l @r1,r0
tst r0,r0
bf/s loc_8c123e56
mov r6,r10
mov.l @r14,r2
mov 0x04,r3
mov.l @(bank12.loc_8c123fa4,pc),r1
add r13,r2
add r2,r3
jsr @r1
mov.l r3,@-r15
mov.l @r15+,r1
mov.l r0,@r1

loc_8c123e56:
mov.l @r14,r3
mov 0x3C,r12
mov.l @(loc_8C123F8C,pc),r0
mov r10,r4
add r13,r3
mov.l @r3,r2
shll r4
add 0x01,r2
mov.l r2,@r3
mov.l @r14,r3
mov.l @r0,r1
add r13,r3
mov.l @(loc_8C123FA8,pc),r2
mov.l @(0x04,r3),r13
add r1,r4
mov.w @r4,r0
mul.l r12,r13
mov.l @r2,r3
cmp/eq 0xFF,r0
sts macl,r12
add r3,r12
bf loc_8c123eb0
bsr bank12.loc_8c124cb0
nop
cmp/eq 0xFF,r0
bt/s loc_8c123ea0
mov r0,r14
mov.l @(loc_8C123F8C,pc),r2
shll r10
mov.l @r2,r0
bra loc_8c123eb2
mov.w r14,@(r0,r10)
	nop
	nop
	nop
	nop
	nop


loc_8c123ea0:
mov.l @(loc_8C123F78,pc),r3
mov 0x03,r2
mov.l r2,@r3
bra loc_8c12405e
mov 0x02,r0
	nop
	nop
	nop


loc_8c123eb0:
mov.w @r4,r14

loc_8c123eb2:
mov.l @(0x2C,r12),r3
tst r3,r3
bf loc_8c123ecc
mov.l @(bank12.loc_8c123fac,pc),r3
mov r13,r5
mov.l @(0x08,r11),r6
jsr @r3
mov r11,r4
mov.l @(bank12.loc_8c123fb0,pc),r2
or r0,r8
jsr @r2
mov r13,r4
mov.l r13,@(0x38,r12)

loc_8c123ecc:
mov.l @(0x2C,r12),r2
mov r14,r4
shll2 r4
mov r13,r5
add 0x01,r2
mov.l r2,@(0x2C,r12)
shll2 r4
mov.l @(loc_8C123F98,pc),r2
shll r4
mov.l @r2,r3
bsr bank12.loc_8c124c40
add r3,r4
mov.l @r15,r3
tst r3,r3
bf loc_8c123eee
bra loc_8c12405c
nop

loc_8c123eee:
mov r14,r13
mov.l @(loc_8C123F98,pc),r2
shll2 r13
mov r9,r12
shll2 r13
mov.l @r2,r3
mov.l @r15,r0
shll2 r12
shll r13
mov.l @(bank12.loc_8c123fb8,pc),r1
add r3,r13
mov.l @(r0,r12),r12
mov.l @(0x0C,r13),r0
mov 0xE5,r3
mov 0x07,r4
shld r3, r0
and r0,r4
mov.l @(loc_8C123FB4,pc),r0
mov.w r0,@(0x16,r13)
mov.l @r1,r3
tst r3,r3
bt loc_8c123f1e
bra loc_8c124040
nop

loc_8c123f1e:
mov.l @(loc_8C123FBC,pc),r5
mov.l @r5,r3
tst r3,r3
bf loc_8c123f2a
bra loc_8c12405c
nop

loc_8c123f2a:
mov r4,r0
cmp/eq 0x05,r0
bt loc_8c123f3a
mov r4,r0
cmp/eq 0x06,r0
bt loc_8c123f3a
bra loc_8c12405c
nop

loc_8c123f3a:
mov.l @(loc_8C123FC0,pc),r2
mov.w @r2,r3
cmp/ge r3,r12
bf loc_8c123f46
bra loc_8c12405c
nop

loc_8c123f46:
mov r12,r0
mov r0,r11
mov r0,r2
shll r11
add r2,r11
mov.l @(loc_8C123FC4,pc),r3
mov r0,r2
shll2 r2
shll r2
mov.w r0,@(0x16,r13)
mov.l @r3,r14
shll2 r11
mov.l @r5,r1
add r2,r14
mov.w @(0x04,r14),r0
tst r0,r0
bt/s loc_8c123fd0
add r1,r11
mov.w @(0x04,r14),r0
add 0x01,r0
mov.w r0,@(0x04,r14)
bra loc_8c124022
mov.w @r14,r12

loc_8c123f74:
#data 0x3801
#data 0x8C14

#align4
loc_8C123F78:
#data 0x8C2DAD38
#data 0x0000
#data 0x43F0
#data 0x0000
#data 0x4420
#data 0xAD40
#data 0x8C2D
#data 0xAD44
#data 0x8C2D

#align4
loc_8C123F8C:
#data 0x8C2DAD3C
#data 0xAD48
#data 0x8C2D

loc_8c123f94:
#data 0x9128
#data 0x8C12

#align4
loc_8C123F98:
#data 0x8C2DAD4C

#align4
loc_8C123F9C:
#data 0x8C2DEE54

#align4
loc_8C123FA0:
#data 0x8C2AA26C

#align4
loc_8c123fa4:
#data bank11.loc_8c11b980

loc_8C123FA8:
#data 0x8C2DE690

#align4
loc_8c123fac:
#data bank11.loc_8c11b640

loc_8c123fb0:
#data bank11.loc_8c11bc40

loc_8C123FB4:
#data 0x0000FFFF

#align4
loc_8c123fb8:
#data bank16.loc_8c16bbec

loc_8C123FBC:
#data 0x8C2D6CEC

#align4
loc_8C123FC0:
#data 0x8C32B424

#align4
loc_8C123FC4:
#data 0x8C32B438
	nop
	nop
	nop
	nop


loc_8c123fd0:
mov.b @(0x02,r11),r0
mov 0xFC,r2
mov.b r0,@(0x02,r14)
mov.l @(0x08,r11),r0
add 0x0F,r0
shad r2, r0
mov.l @(bank12.loc_8c124264,pc),r2
mov.b r0,@(0x03,r14)
mov 0x01,r0
mov.w r0,@(0x04,r14)
mov r12,r0
mov.w r0,@(0x06,r14)
mov.l @(0x08,r11),r10
mov.w @(0x02,r11),r0
mov r10,r5
jsr @r2
mov r0,r4
mov r0,r12
cmp/pz r12
bf loc_8c124020
mov.l @(bank12.loc_8c124268,pc),r2
mov r10,r5
mov.w r12,@r14
jsr @r2
mov r12,r4
mov r12,r4
mov.l @(bank12.loc_8c12426c,pc),r3
mov.l @(0x04,r11),r5
mov r10,r6
shll2 r4
jsr @r3
shll2 r4
bra loc_8c124022
nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124020:
mov 0x00,r12

loc_8c124022:
mov.l @(0x0C,r13),r2
mov 0x15,r1
mov.l @(loc_8C124270,pc),r3
shad r1, r12
and r3,r2
or r12,r2
bra loc_8c12405c
mov.l r2,@(0x0C,r13)
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124040:
mov r4,r0
cmp/eq 0x05,r0
bt loc_8c12404c
mov r4,r0
cmp/eq 0x06,r0
bf loc_8c12405c

loc_8c12404c:
mov.l @(0x0C,r13),r2
mov r12,r0
mov.l @(loc_8C124270,pc),r3
mov 0x15,r1
shad r1, r0
and r3,r2
or r0,r2
mov.l r2,@(0x0C,r13)

loc_8c12405c:
mov r8,r0

loc_8c12405e:
add 0x04,r15
lds.l @r15+,macl
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

loc_8C124080:
bra loc_8C123E00
mov 0x00,r7
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE701AEB6
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1240A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r11
mov 0x00,r4 ; r4 set to 0x00
mov r4,r14 ; r14 set to 0x00
mov r4,r12 ; r12 set to 0x00
mov.l r5,@r15
bra loc_8C1240D0
mov r11,r13
	nop
	nop
	nop


loc_8C1240C0:
mov.l @r15,r5
mov r14,r6
mov 0x00,r7 ; r7 set to 0x00
bsr loc_8C123E00
mov r11,r4
add 0x01,r14
add 0x10,r13
or r0,r12

loc_8C1240D0:
mov.l @(0x04,r13),r0
cmp/eq 0xFF,r0
bf loc_8C1240C0
mov r12,r0
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FFC4F22
#data 0xE4006B43
#data 0x6C436E43
#data 0xA00B2F52
#data 0x00096DB3
	nop
	nop
#data 0x66E365F2
#data 0xBE73E701
#data 0x7E0164B3
#data 0x2C0B7D10
#data 0x88FF50D1
#data 0x60C38BF4
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
#data 0x4F222FE6
#data 0x60637FF4
#data 0x8F018801
#data 0x55F3EE00
#data 0xD049D348
#data 0x61026232
#data 0x6453352c
#data 0x44004408
#data 0x6342341c
#data 0x8F032338
#data 0xA01E6653
#data 0x0009EEFf
#data 0x5541D342
#data 0x60326463
#data 0xD1414400
#data 0xD341044d
#data 0x44084408
#data 0x1F414400
#data 0x342C6212
#data 0x52431F42
#data 0xD33D2239
#data 0x430B2F22
#data 0xD23954F2
#data 0x602253F1
#data 0x330C61F2
#data 0x201B5033
#data 0x60E31303
#data 0x4F267F0c
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F226B43
#data 0x6E43E400
#data 0xA00C6C43
#data 0x00096DB3
	nop
	nop
	nop
	nop
#data 0xE60065E3
#data 0x64B3BFAc
#data 0x7D107E01
#data 0x50D12C0b
#data 0x8BF588Ff
#data 0x60C34F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F226B43
#data 0x6E43E400
#data 0xA00C6C43
#data 0x00096DB3
	nop
	nop
	nop
	nop
#data 0xE60165E3
#data 0x64B3BF84
#data 0x7D107E01
#data 0x50D12C0b
#data 0x8BF588Ff
#data 0x60C34F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE600AF6e

#align4
loc_8C124264:
#data bank11.loc_8c11BE90

loc_8C124268:
#data bank11.loc_8c11BF50

loc_8C12426C:
#data bank11.loc_8c11F7F0
loc_8c124270:
#data 0xF81FFFFf
#data 0x8C2DEE54
#data 0x8C2AA26c
#data 0x8C2DAD3c
#data 0x8C2DAD4c
#data 0x07E00000

#align4
loc_8C124288:
#data bank11.loc_8c11BB70
	nop
	nop
#data 0xE601AF56
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c1242a0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
sts.l macl,@-r15
add 0xF8,r15
mov r6,r5
mov r7,r0
shll2 r5
cmp/eq 0x01,r0
shll2 r5
bf/s loc_8c1242c2
add r5,r4
mov.l @(0x0C,r4),r6

loc_8c1242c2:
mov.l @(loc_8C1244DC,pc),r3
mov.l @(loc_8C1244E0,pc),r13
mov.l @r3,r2
add r2,r6
mov r6,r14
shll2 r14
shll r14
mov.l r6,@r15
mov.l @r13,r1
mov 0x00,r2
add r14,r1
mov.l @r1,r0
cmp/hi r2,r0
bf loc_8c1243aa
mov.l @r13,r1
add r14,r1
mov.l @r1,r0
add 0xFF,r0
mov.l r0,@r1
mov.l @r13,r1
add r14,r1
mov.l @r1,r0
tst r0,r0
bf loc_8c1243aa
mov.l @r13,r10
mov 0x3C,r12
mov.l @(loc_8C1244E4,pc),r11
add r14,r10
mov.l @(0x04,r10),r10
mov.l @r11,r1
mul.l r12,r10
sts macl,r12
add r12,r1
mov.l @(0x28,r1),r0
tst r0,r0
bf loc_8c124330
mov.l @(bank12.loc_8c1244e8,pc),r1
mov.l @r11,r4
jsr @r1
add r12,r4
mov r0,r4
tst r4,r4
bt loc_8c124330
mov.l @(loc_8C1244EC,pc),r3
mov 0x02,r2
mov.l r2,@r3
bra loc_8c1243ac
mov r4,r0
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124330:
mov.l @r11,r2
mov 0x00,r3
mov 0xFF,r9
add r12,r2
mov.l r3,@(0x2C,r2)
mov.l @r11,r2
mov.l @(loc_8C1244F0,pc),r3
add r12,r2
mov.l r9,@(0x38,r2)
mov.l @r15,r12
mov.l @(bank12.loc_8c1244f4,pc),r2
shll r12
mov.l r12,@(0x04,r15)
mov.l @r3,r0
mov.w @(r0,r12),r12
jsr @r2
mov r10,r4
bsr bank12.loc_8c124d60
mov r12,r4
mov.l @r13,r2
mov.l @(bank12.loc_8c1244f8,pc),r1
add r14,r2
mov.l r9,@(0x04,r2)
mov.l @(loc_8C1244F0,pc),r2
mov.l @(0x04,r15),r0
mov.l @r2,r3
mov.w r9,@(r0,r3)
mov.l @r1,r3
tst r3,r3
bf loc_8c1243aa
mov.l @(loc_8C1244FC,pc),r0
mov r12,r4
shll2 r4
mov.l @(loc_8C124500,pc),r2
mov.l @r0,r3
shll2 r4
shll r4
add r3,r4
mov.l @(0x0C,r4),r0
mov 0xE5,r3
mov 0x07,r5
shld r3, r0
mov.l @r2,r3
and r0,r5
mov.w @(0x16,r4),r0
tst r3,r3
bt/s loc_8c1243aa
extu.w r0,r4
mov r5,r0
cmp/eq 0x05,r0
bt loc_8c12439c
mov r5,r0
cmp/eq 0x06,r0
bf loc_8c1243aa

loc_8c12439c:
mov.l @(loc_8C124504,pc),r2
mov.w @r2,r3
cmp/ge r3,r4
bt loc_8c1243aa
mov.l @(bank12.loc_8c124508,pc),r2
jsr @r2
nop

loc_8c1243aa:
mov 0x00,r0

loc_8c1243ac:
add 0x08,r15
lds.l @r15+,macl
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14

loc_8C1243C0:
bra loc_8C1242A0
mov 0x00,r7
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE701AF66
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1243E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r11
mov 0x00,r4 ; r4 set to 0x00
mov r4,r14 ; r14 set to 0x00
mov r4,r12 ; r12 set to 0x00
mov.l r5,@r15
bra loc_8C124410
mov r11,r13
	nop
	nop
	nop


loc_8C124400:
mov.l @r15,r5
mov r14,r6
mov 0x00,r7 ; r7 set to 0x00
bsr loc_8C1242A0
mov r11,r4
add 0x01,r14
add 0x10,r13
or r0,r12

loc_8C124410:
mov.l @(0x04,r13),r0
cmp/eq 0xFF,r0
bf loc_8C124400
mov r12,r0
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FFC4F22
#data 0xE4006B43
#data 0x6C436E43
#data 0xA00B2F52
#data 0x00096DB3
	nop
	nop
#data 0x66E365F2
#data 0xBF23E701
#data 0x7E0164B3
#data 0x2C0B7D10
#data 0x88FF50D1
#data 0x60C38BF4
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop


loc_8C124480:
fldi1 fr6
mov 0x04,r0 ; r0 set to 0x04
fmov fr6,fr3
fdiv fr5,fr6
fdiv fr4,fr3
mov.l @(loc_8C12450C,pc),r4 ; r4 set to 0x8C2DAD50
fmov.s fr3,@r4 ; r4 ??? bc r3 is ???
fmov.s fr6,@(r0,r4)
mov.l @(loc_8C124510,pc),r4 ; r4 set to 0x8C2DAD58
fmov.s fr4,@r4 ; r4 ??
rts
fmov.s fr5,@(r0,r4)
;==============================================
	nop
	nop
	nop
	nop
#data 0xE004D61b
#data 0xF43AF368
#data 0x000BF266
#data 0x0009F52a


loc_8C1244B0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xC4,r15
mov.l @(loc_8C124514,pc),r1 ; r1 set to 0x8C2DAD40
mov r4,r13
mov.l @r13,r2
mov.l @r1,r3
cmp/ge r3,r2
bf/s loc_8C124520
fldi1 fr15
bra loc_8C1248Ec
mov 0xFF,r0
loc_8c1244dc:
#data 0x8C2DEE54
loc_8c1244e0:
#data 0x8C2AA26c
loc_8c1244e4:
#data 0x8C2DE690

#align4
loc_8C1244E8:
#data bank17.loc_8c17C960
loc_8c1244ec:
#data 0x8C2DAD38
loc_8c1244f0:
#data 0x8C2DAD3c

#align4
loc_8C1244F4:
#data bank11.loc_8c11BA00

loc_8C1244F8:
#data bank16.loc_8c16BBEc
loc_8c1244fc:
#data 0x8C2DAD4c
loc_8c124500:
#data 0x8C2D6CEc
loc_8c124504:
#data 0x8C32B424

#align4
loc_8C124508:
#data bank11.loc_8c11BDC0

loc_8C12450C:
#data 0x8C2DAD50

#align4
loc_8C124510:
#data 0x8C2DAD58

#align4
loc_8C124514:
#data 0x8C2DAD40
	nop
	nop
	nop
	nop


loc_8C124520:
mov.l @(loc_8C1245F8,pc),r3 ; r3 set to 0x8C2DAD3c
mov.l @r13,r8
mov.l @r3,r0
shll r8
mov.w @(r0,r8),r8
mov r8,r0
cmp/eq 0xFF,r0
bf loc_8C124534
bra loc_8C1248Ea
nop

loc_8C124534:
mov.l @(loc_8C1245FC,pc),r2 ; r2 set to 0x8C2DAD4c
mov r8,r12
shll2 r12
mov.l @(0x30,r13),r0
mov.l @r2,r3
shll2 r12
shll r12
cmp/eq 0x00,r0
add r3,r12
bt/s loc_8C124570
mov 0x00,r4 ; r4 set to 0x00
cmp/eq 0x02,r0
bt loc_8C124580
cmp/eq 0x04,r0
bt loc_8C124580
mov 0x2C,r0 ; r0 set to 0x2c
fmov.s @(r0,r13),fr14
fcmp/gt fr14,fr15
bt/s loc_8C124584
mov r4,r14 ; r14 set to 0x00
mov.w @(0x14,r12),r0
tst r0,r0
bt loc_8C124586
bra loc_8C124584
nop
	nop
	nop
	nop
	nop
	nop


loc_8C124570:
bra loc_8C124586
mov r4,r14
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c124580:
mov 0x2C,r0
fmov.s @(r0,r13),fr14

loc_8c124584:
mov 0x01,r14

loc_8C124586:
mova @(loc_8C124600,pc),r0  ; r0 init to 0x8C124600
fmov fr15,fr13
fmov.s @r0,fr4
mov 0x10,r0 ; r0 set to 0x10
fmov.s @(r0,r13),fr3
mov 0x18,r0 ; r0 set to 0x18
fmov.s @(r0,r12),fr2
mov 0x14,r0 ; r0 set to 0x14
mov.l @(loc_8C124604,pc),r3 ; r3 set to 0x8C11E860
fmul fr3,fr2
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
mov 0x1C,r0 ; r0 set to 0x1c
fmov fr2,fr12
fmul fr4,fr12
fmov.s @(r0,r12),fr2
mov 0x04,r0 ; r0 set to 0x04
fmul fr3,fr2
fmul fr4,fr2
fmov.s fr2,@(r0,r15)
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r13),fr3
fdiv fr3,fr13
jsr @r3
mov.l @(0x28,r13),r4
mov.l @(loc_8C124608,pc),r3 ; r3 set to 0x8C11E2E0
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr0,@(r0,r15)
jsr @r3
mov.l @(0x28,r13),r4
mov 0x08,r0 ; r0 set to 0x08
mov r15,r10
fmov.s @(r0,r15),fr6
mov 0x04,r0 ; r0 set to 0x04
mov r15,r11
add 0x1C,r10
fmov.s @(r0,r15),fr5
add 0x2C,r11
mov r10,r6
mov r11,r5
fmov fr0,fr7
fmov fr12,fr4
bsr loc_8C124AB0
mov r13,r4
mov.l @(loc_8C124614,pc),r2 ; r2 set to 0x8C16BD8c
mov 0x04,r0 ; r0 set to 0x04
mov.l @(loc_8C124610,pc),r3 ; r3 set to 0x8C16BD88
mov.l @(loc_8C12460C,pc),r4 ; r4 set to 0x8C2DAD50
fmov.s @r2,fr2 ; r2 ??
fmov.s @(r0,r4),fr5
fmov.s @r3,fr3 ; r3 ??
fmov.s @r4,fr4 ; r4 ??
fmul fr2,fr5
mov 0x00,r4 ; r4 set to 0x00
fmul fr3,fr4 ; r4 ??? bc r3 is ???
bra loc_8C124630
mov 0x10,r9
#data 0x0000

#align4
loc_8C1245F8:
#data 0x8C2DAD3c

#align4
loc_8C1245FC:
#data 0x8C2DAD4c

#align4
loc_8C124600:
#data 0x3F000000

#align4
loc_8C124604:
#data bank11.loc_8c11E860

loc_8C124608:
#data bank11.loc_8c11E2E0

loc_8C12460C:
#data 0x8C2DAD50

#align4
loc_8C124610:
#data bank16.loc_8c16BD88

loc_8C124614:
#data bank16.loc_8c16BD8c
	nop
	nop
	nop
	nop

#align4
loc_8C124620:
#data 0xF3B66043
#data 0xF3427404
#data 0xF2A6FB37
#data 0xFA27F252

#align4
loc_8c124630:
cmp/hs r9,r4
bf bank12.loc_8c124620
mov.l @r12,r2
mov.l @(loc_8C1246FC,pc),r3
and r3,r2
mov.w @(loc_8C1246F4,pc),r3
mov.l r2,@r12
mov.l @(0x04,r12),r1
mov.l @(loc_8C124700,pc),r2
and r2,r1
mov.l r1,@(0x04,r12)
mov.l @(0x08,r12),r0
mov.l @(loc_8C124704,pc),r1
and r1,r0
mov.l r0,@(0x08,r12)
mov.l @(0x34,r13),r0
tst r3,r0
bf loc_8c12465c
mov.l @(0x08,r12),r0
mov.l @(loc_8C124708,pc),r2
or r2,r0
mov.l r0,@(0x08,r12)

loc_8c12465c:
mov.l @(0x34,r13),r3
mov.w @(loc_8C1246F6,pc),r4
mov.w @(loc_8C1246F8,pc),r5
tst r4,r3
bt loc_8c12466c
mov.l @(0x08,r12),r1
or r5,r1
mov.l r1,@(0x08,r12)

loc_8c12466c:
mov.l @(0x34,r13),r2
mov.l @(loc_8C12470C,pc),r3
tst r3,r2
bt loc_8c12467a
mov.l @(0x08,r12),r0
or r4,r0
mov.l r0,@(0x08,r12)

loc_8c12467a:
mov.l @(0x34,r13),r0
mov 0xF8,r3
mov 0x07,r4
shad r3, r0
and r0,r4
tst r4,r4
bf/s loc_8c12468c
mov 0x1D,r3
mov 0x04,r4

loc_8c12468c:
mov.l @(0x04,r12),r2
shad r3, r4
tst r14,r14
or r4,r2
bt/s loc_8c1246d0
mov.l r2,@(0x04,r12)
mov.l @(0x30,r13),r0
cmp/eq 0x04,r0
bf loc_8c1246b0
mov.l @(0x08,r12),r1
mov.l @(loc_8C124710,pc),r2
or r2,r1
mov.l r1,@(0x08,r12)
mov.l @r12,r0
mov.l @(loc_8C124714,pc),r1
bra loc_8c1246ca
or r1,r0
	nop


loc_8c1246b0:
mov.l @(loc_8C124718,pc),r2
mov.l @(loc_8C12471C,pc),r1
mov.l @r2,r0
mov.l @(0x08,r12),r3
xor 0xFC,r0
shll16 r0
shll8 r0
or r1,r0
or r0,r3
mov.l r3,@(0x08,r12)
mov.l @r12,r0
mov.l @(loc_8C124720,pc),r3
or r3,r0

loc_8c1246ca:
bra loc_8c1246da
mov.l r0,@r12
	nop


loc_8c1246d0:
mov.l @(0x08,r12),r1
mov.l @(loc_8C124724,pc),r2
fmov fr15,fr14
or r2,r1
mov.l r1,@(0x08,r12)

loc_8c1246da:
mov.l @(0x34,r13),r3
tst r3,r5
bt loc_8c124740
mov.l @(bank12.loc_8c12472c,pc),r3
mov.l @(bank12.loc_8c124730,pc),r2
mov.l @(bank12.loc_8c124728,pc),r1
fmov.s @r2,fr5
fmov.s @r1,fr7
fmov.s @r3,fr6
bsr bank12.loc_8c124b40
fmov fr14,fr4
bra loc_8c12476c
mov.l r0,@(0x10,r12)

loc_8C1246F4:
#data 0x0800

loc_8C1246F6:
#data 0x1000

loc_8C1246F8:
#data 0x2000
#data 0x0000

#align4
loc_8C1246FC:
#data 0xF8FCFFFF

#align4
loc_8C124700:
#data 0x1FFFFFFF

#align4
loc_8C124704:
#data 0x03278FFF

#align4
loc_8C124708:
#data 0x00800000

#align4
loc_8C12470C:
#data 0x00010000

#align4
loc_8C124710:
#data 0x94100000

#align4
loc_8C124714:
#data 0x04000000

#align4
loc_8C124718:
#data 0x8C2AA4C4

#align4
loc_8C12471C:
#data 0x00100000

#align4
loc_8C124720:
#data 0x02000000

#align4
loc_8C124724:
#data 0x20080000

#align4
loc_8c124728:
#data bank16.loc_8c16be58

loc_8c12472c:
#data bank16.loc_8c16be54

loc_8c124730:
#data bank16.loc_8c16be50
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124740:
mov.l @(0x34,r13),r2
mov.l @(loc_8C12497C,pc),r3
tst r3,r2
bt loc_8c124760
bsr bank12.loc_8c124d80
fmov fr14,fr4
mov.l @(0x38,r13),r3
shll16 r0
shll8 r0
bra loc_8c12476a
or r3,r0
	nop
	nop
	nop
	nop
	nop


loc_8c124760:
fmov fr15,fr5
fmov fr15,fr6
fmov fr15,fr7
bsr bank12.loc_8c124b40
fmov fr14,fr4

loc_8c12476a:
mov.l r0,@(0x10,r12)

loc_8c12476c:
mov.l @(0x34,r13),r0
and 0x30,r0
mov r0,r4
mov 0x18,r0
fmov.s @(r0,r13),fr7
tst r4,r9
mov 0x20,r0
bt/s loc_8c12478a
fmov.s @(r0,r13),fr4
fmov fr7,fr3
fmov fr15,fr7
fsub fr3,fr7
fmov fr4,fr3
fmov fr15,fr4
fsub fr3,fr4

loc_8c12478a:
mov 0x1C,r0
mov 0x20,r3
fmov.s @(r0,r13),fr5
tst r3,r4
mov 0x24,r0
bf/s loc_8c1247a4
fmov.s @(r0,r13),fr6
fmov fr5,fr3
fmov fr15,fr5
fsub fr3,fr5
fmov fr6,fr3
fmov fr15,fr6
fsub fr3,fr6

loc_8c1247a4:
mov.l @(0x34,r13),r0
mov.l @(loc_8C124980,pc),r3
mov.l @(loc_8C124984,pc),r1
and r3,r0
cmp/eq r1,r0
bt loc_8c1247c0
mov.l @(loc_8C124980,pc),r1
cmp/eq r1,r0
bt loc_8c1247d0
bra loc_8c1247d8
nop
	nop
	nop
	nop


loc_8c1247c0:
mov.l @r12,r1
mov.l @(loc_8C12497C,pc),r2
or r2,r1
bra loc_8c1247d8
mov.l r1,@r12
	nop
	nop
	nop


loc_8c1247d0:
mov.l @r12,r0
mov.l @(loc_8C124988,pc),r2
or r2,r0
mov.l r0,@r12

loc_8c1247d8:
mov r15,r4
add 0x18,r4
mov.l @(loc_8C12498C,pc),r5
fmov.s fr7,@r4
mov.l @r4,r3
and r5,r3
mov.l r3,@(0x14,r15)
fmov.s fr4,@r4
mov.l @r4,r3
and r3,r5
mov.l r5,@r15
fmov.s fr5,@r4
mov.l @r4,r9
fmov.s fr6,@r4
mov.l @r4,r2
shlr16 r9
shlr16 r2
mov.l r2,@(0x0C,r15)
mov.l @(0x30,r13),r0
cmp/eq 0xFF,r0
bf/s loc_8c124812
mov r0,r4
tst r14,r14
bt loc_8c124810
bra loc_8c124812
mov 0x02,r4
	nop
	nop


loc_8c124810:
mov 0x00,r4

loc_8c124812:
mov.l @(loc_8C124990,pc),r3
shll2 r4
mov.l r4,@(0x10,r15)
mov.l @r3,r0
mov.l @(loc_8C124998,pc),r3
mov.l @(r0,r4),r4
mov.l @(loc_8C12499C,pc),r14
mov r4,r2
shlr16 r2
shlr8 r2
mov.l @(loc_8C124994,pc),r1
and r4,r14
mov.l @(loc_8C1249A4,pc),r4
mov.l r2,@r1
mov.l r2,@r3
mov.l @(loc_8C12497C,pc),r3
mov.l @(0x34,r13),r0
mov.l @(loc_8C1249A0,pc),r2
tst r3,r0
bt/s loc_8c124850
or r2,r14
mov.l @r12,r0
mov.l @r4,r1
or r1,r0
bra loc_8c124856
or 0x04,r0
	nop
	nop
	nop
	nop
	nop


loc_8c124850:
mov.l @r12,r0
mov.l @r4,r1
or r1,r0

loc_8c124856:
mov.l r0,@r14
mov.l @(0x04,r12),r3
mov.l r3,@(0x04,r14)
mov.l @(0x08,r12),r2
mov.l @(0x04,r4),r3
or r3,r2
mov.l r2,@(0x08,r14)
mov.l @(0x0C,r12),r3
mov.l r3,@(0x0C,r14)
mov.l @(0x10,r12),r2
mov.l r2,@(0x10,r14)
bsr bank12.loc_8c124d80
fmov fr14,fr4
mov.l @(0x3C,r13),r2
shll16 r0
shll8 r0
or r2,r0
mov.l r0,@(0x14,r14)
pref @r14
mov.l @(loc_8C1249A8,pc),r3
add 0x20,r14
mov r10,r4
mov r11,r5
mov.l r3,@r14
mov 0x0C,r0
mov.l @r5,r2
mov.l r2,@(0x04,r14)
mov.l @r4,r3
mov.l r3,@(0x08,r14)
fmov.s fr13,@(r0,r14)
mov 0x18,r0
mov.l @(0x04,r5),r3
mov.l r3,@(0x10,r14)
mov.l @(0x04,r4),r2
mov.l r2,@(0x14,r14)
fmov.s fr13,@(r0,r14)
mov 0x24,r0
mov.l @(0x08,r5),r3
mov.l r3,@(0x1C,r14)
mov.l @(0x08,r4),r2
mov.l r2,@(0x20,r14)
fmov.s fr13,@(r0,r14)
mov.l @(0x0C,r5),r3
mov.l r3,@(0x28,r14)
mov.l @(0x0C,r4),r2
mov.l @(loc_8C1249AC,pc),r3
mov.l r2,@(0x2C,r14)
or r3,r8
mov.l r8,@(0x30,r14)
mov.l @(0x14,r15),r2
or r9,r2
mov.l r2,@(0x34,r14)
mov.l @r15,r1
or r1,r9
mov.l r9,@(0x38,r14)
mov.l @(0x0C,r15),r2
mov.l @r15,r1
or r2,r1
mov.l r1,@(0x3C,r14)
pref @r14
add 0x20,r14
pref @r14
mov.l @(loc_8C124990,pc),r1
add 0x20,r14
mov.l @(0x10,r15),r4
mov.l @r1,r2
mov.l @(loc_8C1249B0,pc),r3
add r2,r4
mov.l @(loc_8C12499C,pc),r2
mov.l @r4,r0
and r2,r14
and r3,r0
or r14,r0
mov.l r0,@r4

loc_8C1248EA:
mov 0x00,r0 ; r0 set to 0x00

loc_8C1248EC:
add 0x3C,r15
lds.l @r15+,pr
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop


loc_8C124910:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C1249B4,pc),r2 ; r2 set to 0x8C2DEE54
mov.l @(loc_8C1249B8,pc),r1 ; r1 set to 0x8C2DAD3c
mov.l r5,@r15
mov.l @r2,r3
mov.l @r1,r0
add r3,r4
mov.l @(loc_8C1249BC,pc),r2 ; r2 set to 0x8C2DAD4c
shll r4
mov.w @(r0,r4),r14
mov 0x07,r4 ; r4 set to 0x07
mov.l @r2,r3
shll2 r14
shll2 r14
shll r14
add r3,r14
mov.l @(0x0C,r14),r0
mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
shld r3, r0
mov.l @(loc_8C1249C0,pc),r3 ; r3 set to 0x8C16BBEc
mov.l @r3,r1 ; r1 ??
tst r1,r1
bt/s loc_8C1249D0
and r0,r4 ; r4 ??? bc r0 is ???
mov r4,r0
cmp/eq 0x05,r0
bt loc_8C12495e
mov r4,r0
cmp/eq 0x06,r0
bt loc_8C12495e
bra loc_8C124A90
nop

loc_8C12495E:
mov.l @(0x0C,r14),r4
mov 0xEB,r3 ; r3 set to 0xFFFFFFEb
mov.l @(loc_8C1249C4,pc),r2 ; r2 set to 0xF81FFFFf
mov 0x3F,r10 ; r10 set to 0x3f
mov r4,r0
mov.l @r15,r1
shld r3, r0
mov 0x15,r3 ; r3 set to 0x15
and r2,r4
shad r3, r1
or r1,r4
and r0,r10 ; r10 ??? bc r0 is ???
bra loc_8C124A90
mov.l r4,@(0x0C,r14)
#data 0x0000
loc_8c12497c:
#data 0x00020000
loc_8c124980:
#data 0x0000C000
loc_8c124984:
#data 0x00008000
loc_8c124988:
#data 0x00030000
loc_8c12498c:
#data 0xFFFF0000
loc_8c124990:
#data 0x8C2AA508
loc_8c124994:
#data 0xFF000038
loc_8c124998:
#data 0xFF00003c
loc_8c12499c:
#data 0x03FFFFFf
loc_8c1249a0:
#data 0xE0000000
loc_8c1249a4:
#data 0x8C2DEE8c
loc_8c1249a8:
#data 0xF0000000
loc_8c1249ac:
#data 0x53500000
loc_8c1249b0:
#data 0xFC000000

#align4
loc_8C1249B4:
#data 0x8C2DEE54

#align4
loc_8C1249B8:
#data 0x8C2DAD3c

#align4
loc_8C1249BC:
#data 0x8C2DAD4c

#align4
loc_8C1249C0:
#data bank16.loc_8c16BBEc

loc_8C1249C4:
#data 0xF81FFFFf
	nop
	nop
	nop
	nop

#align4
loc_8c1249d0:
mov.l @(loc_8C124BC8,pc),r3
mov.l @r3,r2
tst r2,r2
bt loc_8c124a90
mov r4,r0
cmp/eq 0x05,r0
bt loc_8c1249e4
mov r4,r0
cmp/eq 0x06,r0
bf loc_8c124a90

loc_8c1249e4:
mov.w @(0x16,r14),r0
mov.l @(bank12.loc_8c124bcc,pc),r3
extu.w r0,r4
jsr @r3
mov r4,r10
mov.l @(loc_8C124BD0,pc),r0
mov.l @(loc_8C124BD4,pc),r5
mov.w r0,@(0x16,r14)
mov.w @(0x04,r5),r0
mov.l @r15,r4
cmp/ge r0,r4
bt loc_8c124a90
mov r4,r0
mov r0,r11
mov r0,r3
shll r11
add r3,r11
mov r0,r3
shll2 r3
mov.w r0,@(0x16,r14)
mov.l @(0x18,r5),r13
shll r3
mov.l @(loc_8C124BC8,pc),r1
shll2 r11
add r3,r13
mov.w @(0x04,r13),r0
mov.l @r1,r2
tst r0,r0
bt/s loc_8c124a30
add r2,r11
mov.w @(0x04,r13),r0
add 0x01,r0
mov.w r0,@(0x04,r13)
bra loc_8c124a82
mov.w @r13,r12
	nop
	nop
	nop


loc_8c124a30:
mov.b @(0x02,r11),r0
mov 0xFC,r3
mov.b r0,@(0x02,r13)
mov.l @(0x08,r11),r0
add 0x0F,r0
shad r3, r0
mov.l @(bank12.loc_8c124bd8,pc),r3
mov.b r0,@(0x03,r13)
mov 0x01,r0
mov.w r0,@(0x04,r13)
mov r4,r0
mov.w r0,@(0x06,r13)
mov.l @(0x08,r11),r9
mov.w @(0x02,r11),r0
mov r9,r5
jsr @r3
mov r0,r4
mov r0,r12
cmp/pz r12
bf loc_8c124a80
mov.l @(bank12.loc_8c124bdc,pc),r3
mov r9,r5
mov.w r12,@r13
jsr @r3
mov r12,r4
mov r12,r4
mov.l @(bank12.loc_8c124be0,pc),r2
mov.l @(0x04,r11),r5
mov r9,r6
shll2 r4
jsr @r2
shll2 r4
bra loc_8c124a82
nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124a80:
mov 0x00,r12

loc_8c124a82:
mov.l @(0x0C,r14),r2
mov 0x15,r1
mov.l @(loc_8C124BE4,pc),r3
shad r1, r12
and r3,r2
or r12,r2
mov.l r2,@(0x0C,r14)

loc_8C124A90:
mov r10,r0
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C124AB0:
fmov.s fr14,@-r15
sts.l pr,@-r15
add 0xDC,r15
fmov fr5,fr9
fmul fr7,fr5
fmov fr4,fr8
fmul fr6,fr4
fmul fr7,fr8
mov r15,r1
fmul fr6,fr9
mov.l @(loc_8C124BE8,pc),r2 ; r2 set to 0x8C13F548
mov r15,r7
mov.l @(loc_8C124BEC,pc),r3 ; r3 set to 0x8C1294Bc
add 0x04,r7
add 0x04,r1
jsr @r3
mov 0x20,r0 ; r0 set to 0x20
mov.l @(0x34,r4),r0 ; r0 ??? bc r4 is ???
tst 0x0F,r0
bf loc_8C124AE0
fldi1 fr10
fmov fr10,fr6
bra loc_8C124AF8
fmov fr10,fr7

#align4
loc_8c124ae0:
mov.l r0,@r15
and 0x03,r0
lds r0,fpul
mov.l @r15,r0
shar r0
float fpul,fr3
shar r0
and 0x03,r0
lds r0,fpul
fmov fr3,fr6
float fpul,fr3
fmov fr3,fr7

loc_8c124af8:
mov 0x04,r1

loc_8c124afa:
fmov.s @r7+,fr11
mov 0x04,r0
fldi0 fr3
fsub fr6,fr11
fmov.s @r7+,fr10
fmov.s @(r0,r4),fr1
mov 0x08,r0
fsub fr7,fr10
fcmp/eq fr3,fr11
bt/s loc_8c124b1c
fmov.s @(r0,r4),fr14
fmov fr4,fr2
fmul fr11,fr2
fmov fr11,fr0
fmac fr0,fr8,fr1
fneg fr2
fadd fr2,fr14

loc_8c124b1c:
fldi0 fr3
fcmp/eq fr3,fr10
bt loc_8c124b28
fmov fr10,fr0
fmac fr0,fr5,fr14
fmac fr0,fr9,fr1

loc_8c124b28:
add 0xFF,r1
fmov.s fr1,@r5
fmov.s fr14,@r6
tst r1,r1
add 0x04,r6
bf/s loc_8c124afa
add 0x04,r5
add 0x24,r15
lds.l @r15+,pr
rts
fmov.s @r15+,fr14
;==============================================
	nop

loc_8c124b40:
#data 0xC72B
#data 0xF808
#data 0xC72B
#data 0xF908
#data 0xF482
#data 0xF582
#data 0xF682
#data 0xF782
#data 0xF495
#data 0x8F0D
#data 0xF84C
#data 0xC728
#data 0xF28C
#data 0xF308
#data 0xF230
#data 0xA008
#data 0xF32C
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c124b70:
#data 0xF38C

loc_8c124b72:
#data 0xF33D
#data 0xF595
#data 0x045A
#data 0x8F0A
#data 0xF45C
#data 0xC71E
#data 0xF24C
#data 0xF308
#data 0xF230
#data 0xA005
#data 0xF32C
	nop
	nop
	nop
	nop

loc_8c124b90:
#data 0xF34C

loc_8c124b92:
#data 0xF33D
#data 0xF695
#data 0x055A
#data 0x8F0A
#data 0xF46C
#data 0xC716
#data 0xF24C
#data 0xF308
#data 0xF230
#data 0xA005
#data 0xF32C
	nop
	nop
	nop
	nop

loc_8c124bb0:
#data 0xF34C

loc_8c124bb2:
#data 0xF33D
#data 0xF795
#data 0x065A
#data 0x8F22
#data 0xF47C
#data 0xC70E
#data 0xF24C
#data 0xF308
#data 0xF230
#data 0xA01D
#data 0xF32C
loc_8c124bc8:
#data 0x6CEC
#data 0x8C2D

loc_8c124bcc:
#data 0xBDC0
#data 0x8C11
loc_8c124bd0:
#data 0xFFFF
#data 0x0000
loc_8c124bd4:
#data 0xB420
#data 0x8C32

loc_8c124bd8:
#data 0xBE90
#data 0x8C11

loc_8c124bdc:
#data 0xBF50
#data 0x8C11

loc_8c124be0:
#data 0xF7F0
#data 0x8C11
loc_8c124be4:
#data 0xFFFF
#data 0xF81F

loc_8c124be8:
#data 0xF548
#data 0x8C13

loc_8c124bec:
#data 0x94BC
#data 0x8C12
#data 0x0000
#data 0x437F
#data 0x0000
#data 0x4F00
#data 0x0000
#data 0xCF80
	nop
	nop

loc_8c124c00:
#data 0xF34C

loc_8c124c02:
#data 0xF33D
#data 0x907B
#data 0x3406
#data 0x075A
#data 0x8F01
#data 0xE100
#data 0x6403

loc_8c124c10:
#data 0x3506
#data 0x8B00
#data 0x6503

loc_8c124c16:
#data 0x3606
#data 0x8B00
#data 0x6603

loc_8c124c1c:
#data 0x3706
#data 0x8F01
#data 0x4418
#data 0x6703

loc_8c124c24:
#data 0x245B
#data 0x4418
#data 0x246B
#data 0x4418
#data 0x247B
#data 0x000B
#data 0x6043
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c124c40:
#data 0xD330
#data 0x2FE6
#data 0x6E43
#data 0x2FD6
#data 0xED00
#data 0x9259
#data 0x4F22
#data 0x2E32
#data 0xD32D
#data 0x1ED1
#data 0x1E22
#data 0x1ED3
#data 0x430B
#data 0x64E3
#data 0x55E3
#data 0xE3E5
#data 0x60D3
#data 0xE407
#data 0x453D
#data 0x81EA
#data 0x2549
#data 0x6053
#data 0x8800
#data 0x8907
#data 0x8802
#data 0x8905
#data 0x8805
#data 0x8903
#data 0x8806
#data 0x8901
#data 0xA002
	nop

loc_8c124c80:
#data 0xE001
#data 0x81EA

loc_8c124c84:
#data 0x50E2
#data 0xD521
#data 0x4009
#data 0x4001
#data 0x2049
#data 0x4008
#data 0xF356
#data 0xE018
#data 0xFE37
#data 0x50E2
#data 0x2049
#data 0x4008
#data 0xF356
#data 0xE01C
#data 0xFE37
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
	nop
	nop
	nop

loc_8c124cb0:
#data 0x2FE6
#data 0x2FD6
#data 0x2FB6
#data 0xEB00
#data 0x2FA6
#data 0xEA01
#data 0x2F96
#data 0xE920
#data 0x2F86
#data 0x4F22
#data 0xD713
#data 0xD812
#data 0xA033
#data 0x65B3
	nop
	nop

loc_8c124cd0:
#data 0x6072
#data 0x6E53
#data 0x4E08
#data 0x00EE
#data 0x88FF
#data 0x8D29
#data 0x6D03
#data 0x6153
#data 0x4108
#data 0x4108
#data 0x66B3
#data 0x4100
#data 0x64A3

loc_8c124cea:
#data 0x62D3
#data 0x2248
#data 0x8B17
#data 0x6072
#data 0x02EE
#data 0x224B
#data 0x0E26
#data 0x6013
#data 0xA022
#data 0x306C
#data 0x00FF
#data 0x04C0
#data 0x0000
	nop
#data 0xA000

loc_8c124d08:
#data 0xBB70
#data 0x8C11

loc_8c124d0c:
#data 0xF528
#data 0x8C13
#data 0xAD44
#data 0x8C2D
#data 0xAD48
#data 0x8C2D
	nop
	nop
	nop
	nop

loc_8c124d20:
#data 0x4400
#data 0xAFE2
#data 0x7601
	nop
	nop
	nop
	nop
	nop

loc_8c124d30:
#data 0x7501

loc_8c124d32:
#data 0x6182
#data 0xD31F
#data 0x711F
#data 0x430B
#data 0x6093
#data 0x3503
#data 0x8BC7
#data 0xE0FF

loc_8c124d42:
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c124d60:
#data 0xE31F
#data 0xD215
#data 0xE501
#data 0x2349
#data 0x6022
#data 0x453C
#data 0xE3FB
#data 0x443C
#data 0x6343
#data 0x4308
#data 0x013E
#data 0x6557
#data 0x2159
#data 0x000B
#data 0x0316
;==============================================
	nop

loc_8c124d80:
#data 0xC70E
#data 0xF308
#data 0xC70E
#data 0xF108
#data 0xF432
#data 0xF415
#data 0x8F08
#data 0xF54C
#data 0xC70C
#data 0xF05C
#data 0xF208
#data 0xF020
#data 0xA003
#data 0xF20C
	nop
	nop

loc_8c124da0:
#data 0xF25C

loc_8c124da2:
#data 0xF23D
#data 0x9505
#data 0x045A
#data 0x3456
#data 0x8B00
#data 0x6453

loc_8c124dae:
#data 0x000B
#data 0x6043
;==============================================
#data 0x00FF

loc_8c124db4:
#data 0x9128
#data 0x8C12
#data 0xAD48
#data 0x8C2D
#data 0x0000
#data 0x437F
#data 0x0000
#data 0x4F00
#data 0x0000
#data 0xCF80
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8C124DD0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8C124EA0,pc),r7 ; r7 set to 0x5F800000
sts.l pr,@-r15
mov.l @(loc_8C124EA4,pc),r3 ; r3 set to 0xA0800090
add r7,r4
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8C124EA8,pc),r2 ; r2 set to 0xA0800094
add r7,r5
mov.l r5,@r2 ; r2 ??? bc r5 is ???
mov.l @(loc_8C124EAC,pc),r4 ; r4 set to 0xA0800098
mov.l r6,@r4 ; r4 ??? bc r6 is ???
mov.l @(loc_8C124EB0,pc),r14 ; r14 set to 0x400000
mov 0x00,r6 ; r6 set to 0x00
mov r6,r5 ; r5 set to 0x00

loc_8C124DF0:
mov.l @r4,r3
tst r3,r3
bf loc_8C124E00
add 0x01,r5 ; r5 set to 0x01
cmp/ge r14,r5
bf loc_8C124DF0
bra loc_8C124E14
nop

loc_8C124E00:
mov.l @(loc_8C124EB4,pc),r12 ; r12 set to 0x2000A0
mov r6,r13

loc_8C124E04:
mov.l @(loc_8C124EB8,pc),r2 ; r2 set to 0x8C125B70, r2 set to 0x8C125B70
jsr @r2
mov r12,r4 ; r4 set to 0x2000A0
tst r0,r0
bt loc_8C124E20
add 0x01,r13
cmp/ge r14,r13
bf loc_8C124E04

loc_8C124E14:
mov.w @(loc_8C124E9C,pc),r0 ; r0 set to 0xFF00, r0 set to 0xFF00, r0 set to 0xFF00
bra loc_8C124E22
nop
	nop
	nop
	nop


loc_8C124E20:
mov 0x00,r0 ; r0 set to 0x00

loc_8C124E22:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop


loc_8C124E30:
mov.l @(loc_8C124EAC,pc),r2 ; r2 set to 0xA0800098
mov.l @r2,r3
tst r3,r3
bt loc_8C124E40
rts
mov 0x01,r0
;==============================================
	nop
	nop


loc_8C124E40:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c124e50:
cmp/pz r5
bf loc_8c124e5a
mov 0x08,r2
cmp/ge r2,r5
bf loc_8c124e60

loc_8c124e5a:
rts
mov 0xFF,r0
;==============================================
	nop


loc_8c124e60:
mov.l @(bank12.loc_8c124ebc,pc),r0
mov 0x04,r7
mov 0x00,r6
mov r4,r1

loc_8c124e68:
mov.b @r0+,r2
mov.b @r1+,r3
cmp/eq r2,r3
bt loc_8c124e80
rts
mov 0xFE,r0
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124e80:
add 0x01,r6
cmp/ge r7,r6
bf loc_8c124e68
mov r5,r0
shll r0
mov r5,r3
mov.l @(loc_8C124EC0,pc),r1
add r3,r0
shll2 r0
mov.l @(r0,r1),r0
cmp/eq 0xFF,r0
bt loc_8c124ed0
rts
mov 0xFD,r0
;==============================================

loc_8c124e9c:
#data 0xFF00
#data 0x0000

loc_8c124ea0:
#data 0x0000
#data 0x5F80

loc_8c124ea4:
#data 0x0090
#data 0xA080

loc_8c124ea8:
#data 0x0094
#data 0xA080

loc_8c124eac:
#data 0x0098
#data 0xA080

loc_8c124eb0:
#data 0x0000
#data 0x0040

loc_8c124eb4:
#data 0x00A0
#data 0x0020

loc_8c124eb8:
#data 0x5B70
#data 0x8C12

#align4
loc_8c124ebc:
#data bank13.loc_8c13f57c

loc_8C124EC0:
#data 0x8C2DAE60
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124ed0:
mov.l @(loc_8C12509C,pc),r2
mov.l @(0x08,r4),r4
mov.l @r2,r5
mov.l @(bank12.loc_8c1250a0,pc),r1
mov.l @r1,r3
add r3,r4
cmp/gt r5,r4
bf loc_8c124ef0
rts
mov 0xFC,r0
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c124ef0:
mov.l @(loc_8C1250A4,pc),r2
mov.l @r2,r3
tst r3,r3
bt loc_8c124f00
rts
mov 0xFB,r0
;==============================================
	nop
	nop


loc_8c124f00:
mov 0x00,r0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop

loc_8C124F10:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
add 0xF8,r15
mov.l @(loc_8C1250A0,pc),r3 ; r3 set to 0x8C2DAD78
mov r4,r1
mov.l @(loc_8C1250A8,pc),r10 ; r10 set to 0x8C2DAE60
mov.l @r3,r2
add r6,r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
mov r4,r3
shll r3
mov.l @(loc_8C1250AC,pc),r2 ; r2 set to 0xA0800060
add r1,r3
shll2 r3
mov.l r3,@(0x04,r15)
add r10,r3
mov.l r3,@r15
mov.l r5,@r3
mov.l @r15,r3
mov.l r6,@(0x08,r3)
mov r4,r3
shll2 r3
add r2,r3
mov.l r5,@r3
mov r4,r5
add 0xFF,r5
mov r5,r14
mov r5,r3
shll r14
mov r10,r1 ; r1 set to 0x8C2DAE60
add r3,r14
shll2 r14
add r10,r14
mov r14,r5
mov 0x00,r11 ; r11 set to 0x00
cmp/hs r1,r5
mov r11,r13 ; r13 set to 0x00
bf/s loc_8C124F78
mov.l r14,@r15

loc_8C124F62:
mov.l @r5,r0
cmp/eq 0xFF,r0
bt loc_8C124F70
mov.l @(0x04,r14),r13 ; r13 ??? bc r14 is ???
mov.l @(0x08,r14),r3
bra loc_8C124F78
add r3,r13

#align4
loc_8c124f70:
add 0xF4,r5
cmp/hs r1,r5
bt/s bank12.loc_8c124f62
add 0xF4,r14

loc_8c124f78:
tst r13,r13
bf loc_8c124f80
mov.l @(loc_8C1250B0,pc),r3
mov.l @r3,r13

loc_8c124f80:
add 0x01,r4
mov.l @(0x04,r15),r2
mov r4,r5
mov r4,r3
shll r5
add r3,r5
shll2 r5
add r10,r5
mov r5,r4
add r1,r2
mov.l r13,@(0x04,r2)
mov.l r10,@r15
mov.l r5,@(0x04,r15)
mov.l @r15,r14
add 0x60,r14
cmp/hs r14,r4
bt loc_8c124fba

loc_8c124fa2:
mov.l @r4,r0
cmp/eq 0xFF,r0
bt loc_8c124fb2
mov.l @(0x04,r5),r2
mov.l @(0x08,r5),r3
add r6,r2
mov.l r2,@(0x04,r5)
add r3,r11

loc_8c124fb2:
add 0x0C,r4
cmp/hs r14,r4
bf/s loc_8c124fa2
add 0x0C,r5

loc_8c124fba:
mov r13,r0
mov.l r11,@r7
add 0x08,r15
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop

loc_8c124fd0:
#data 0x4411
#data 0x8B02
#data 0xE208
#data 0x3423
#data 0x8B02

loc_8c124fda:
#data 0x000B
#data 0xE0FF
;==============================================
	nop

loc_8c124fe0:
#data 0x6043
#data 0x4000
#data 0x6343
#data 0xD130
#data 0x303C
#data 0x4008
#data 0x001E
#data 0x88FF
#data 0x8B06
#data 0x000B
#data 0xE0FE
;==============================================
	nop
	nop
	nop
	nop
	nop

loc_8c125000:
#data 0xD328
#data 0x6232
#data 0x2228
#data 0x8903
#data 0x000B
#data 0xE0FD
;==============================================
	nop
	nop

loc_8c125010:
#data 0xE000
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
	nop

loc_8c125020:
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x7FFC
#data 0xD71D
#data 0x6243
#data 0x4200
#data 0x6372
#data 0xE1FF
#data 0x3358
#data 0x2732
#data 0x6343
#data 0x323C
#data 0xD71B
#data 0x4208
#data 0x6343
#data 0x327C
#data 0x2212
#data 0x4308
#data 0xD219
#data 0x332C
#data 0x2312
#data 0x7401
#data 0x2F72
#data 0x6B43
#data 0x4B00
#data 0x6343
#data 0x3B3C
#data 0x4B08
#data 0x3B7C
#data 0x61B3
#data 0x64B3
#data 0x67B3
#data 0x6BF2
#data 0xEC00
#data 0x7B60
#data 0x34B2
#data 0x8D10
#data 0x6DC3

loc_8c12506e:
#data 0x6042
#data 0x88FF
#data 0x8907
#data 0x2DD8
#data 0x8F01
#data 0x5272
#data 0x5D11

loc_8c12507c:
#data 0x5371
#data 0x3C2C
#data 0x3358
#data 0x1731

loc_8c125084:
#data 0x740C
#data 0x34B2
#data 0x770C
#data 0x8FF0
#data 0x710C

loc_8c12508e:
#data 0x60D3
#data 0x26C2
#data 0x7F04
#data 0x6BF6
#data 0x6CF6
#data 0x000B
#data 0x6DF6
;==============================================
loc_8c12509c:
#data 0x0088
#data 0xA080

loc_8c1250a0:
#data 0xAD78
#data 0x8C2D
loc_8c1250a4:
#data 0xAD80
#data 0x8C2D

loc_8c1250a8:
#data 0xAE60
#data 0x8C2D

loc_8c1250ac:
#data 0x0060
#data 0xA080

#align4
loc_8C1250B0:
#data 0x8C2DAD6C
	nop
	nop
	nop
	nop
	nop
	nop

loc_8C1250C0:
mov.w @(loc_8C125196,pc),r0 ; r0 set to 0xC4
mov.l r14,@-r15
mov.l r12,@-r15
mov.w @(loc_8C125198,pc),r2 ; r2 set to 0x6E0
mov.l @(loc_8C1251A0,pc),r6 ; r6 set to 0x8C2DAD9c
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(r0,r4),r3
mov r3,r1
cmp/hs r2,r1
mov.l r3,@r6 ; r6 ??? bc r3 is ???
bt loc_8C1250E0
bra loc_8C12523c
mov 0xFF,r0
	nop


loc_8C1250E0:
mov.l @(loc_8C1251A4,pc),r6 ; r6 set to 0x8C2DAD74
tst r5,r5
bf loc_8C1250F0
mov.l @(loc_8C1251A8,pc),r3 ; r3 set to 0x200000
bra loc_8C125110
mov.l r3,@r6
	nop
	nop


loc_8C1250F0:
mov.w @(loc_8C12519A,pc),r1 ; r1 set to 0x200
cmp/eq r1,r5
bf loc_8C125100
mov.l @(loc_8C1251AC,pc),r2 ; r2 set to 0x800000
bra loc_8C125110
mov.l r2,@r6
	nop
	nop


loc_8C125100:
bra loc_8C12523c
mov 0xFE,r0
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c125110:
mov.l @(loc_8C1251B0,pc),r10
mov.l @r10,r6
mov.l @(loc_8C1251B4,pc),r9
mov 0x01,r7
and r9,r6
or r7,r6
mov.l r6,@r10
mov.l @(loc_8C1251B8,pc),r2
mov.l r5,@r2
mov.l @r10,r6
and r9,r6
or r7,r6
mov.l r6,@r10
mov.l @(loc_8C1251BC,pc),r11
mov r4,r0
add 0x54,r0
mov r4,r14
mov r11,r7
mov.l @r0,r0
mov 0x00,r12
mov r12,r1
shlr2 r0
cmp/hs r0,r1
bt/s loc_8c12514e
mov r12,r6

loc_8c125142:
mov.l @r14+,r3
mov.l r3,@r7
add 0x01,r6
cmp/hs r0,r6
bf/s loc_8c125142
add 0x04,r7

loc_8c12514e:
mov.l @(loc_8C1251C0,pc),r3
mov.l r5,@r3
mov.l @(loc_8C1251C4,pc),r6
mov 0xFF,r14
bra loc_8c125166
mov 0x08,r5
	nop
	nop
	nop


loc_8c125160:
mov.l r14,@r6
add 0xFF,r5
add 0x04,r6

loc_8c125166:
tst r5,r5
bf loc_8c125160
mov.l @r10,r5
and r9,r5
mov.l r5,@r10
mov.l @(loc_8C1251C8,pc),r7
mov r7,r6
mov r7,r5
bra loc_8c125188
add 0x60,r6
	nop
	nop
	nop


loc_8c125180:
mov.l r14,@r5
mov.l r12,@(0x04,r5)
mov.l r12,@(0x08,r5)
add 0x0C,r5

loc_8c125188:
cmp/hs r6,r5
bf loc_8c125180
mov.l @(loc_8C1251CC,pc),r7
mov.w @(loc_8C12519C,pc),r6
mov r7,r5
bra loc_8c1251e0
add r7,r6

loc_8c125196:
#data 0x00C4

loc_8c125198:
#data 0x06E0

loc_8c12519a:
#data 0x0200

loc_8C12519C:
#data 0x00C0
#data 0x0000

loc_8c1251a0:
#data 0xAD9C
#data 0x8C2D

loc_8c1251a4:
#data 0xAD74
#data 0x8C2D

loc_8c1251a8:
#data 0x0000
#data 0x0020

loc_8c1251ac:
#data 0x0000
#data 0x0080

#align4
loc_8C1251B0:
#data 0xA0702C00

#align4
loc_8C1251B4:
#data 0x0000FFFE

#align4
loc_8C1251B8:
#data 0xA0702800

#align4
loc_8C1251BC:
#data 0xA0800000

#align4
loc_8C1251C0:
#data 0xA0800050

#align4
loc_8C1251C4:
#data 0xA0800060

#align4
loc_8C1251C8:
#data 0x8C2DAE60

#align4
loc_8C1251CC:
#data 0x8C2DADA0


loc_8c1251d0:
mov r5,r7
mov r12,r0
add 0x04,r7
mov.b r14,@r5
mov.b r0,@(0x01,r5)
add 0x18,r5
mov.l r14,@(0x04,r7)
mov.l r14,@r7

loc_8c1251e0:
cmp/hs r6,r5
bf loc_8c1251d0
mov.w @(loc_8C1252B4,pc),r0
mov.l @(loc_8C1252BC,pc),r3
mov.l @(r0,r4),r2
add 0xFC,r0
add r11,r2
mov.l r2,@r3
mov.l @(r0,r4),r1
add 0x48,r0
mov.l @(loc_8C1252C0,pc),r3
mov.l @(loc_8C1252C4,pc),r2
add r3,r1
mov.l r1,@r2
mov.l @(r0,r4),r3
mov.l @(loc_8C1252D0,pc),r1
add r3,r11
mov.l @(loc_8C1252CC,pc),r3
mov.l @(loc_8C1252C8,pc),r2
mov.l r11,@r2
mov.l r3,@r1
mov.l @(loc_8C1252D8,pc),r3
mov.l @(loc_8C1252D4,pc),r2
mov.l @(loc_8C1252DC,pc),r1
mov.l r12,@r2
mov.l r12,@r3
mov.l r12,@r1
mov.l @(bank12.loc_8c1252e4,pc),r5
mov r12,r4
mov.l @(loc_8C1252E0,pc),r6

loc_8c12521c:
mov.l @r6,r3
tst r3,r3
bf loc_8c125230
add 0x01,r4
cmp/hs r5,r4
bf loc_8c12521c
mov.w @(loc_8C1252B6,pc),r0
bra loc_8c12523c
nop
	nop


loc_8c125230:
mov.w @(loc_8C1252B8,pc),r2
mov.l @(loc_8C1252E8,pc),r3
mov.l @r3,r1
and r2,r1
mov.l r1,@r3
mov 0x00,r0

loc_8C12523C:
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop


loc_8C125250:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l r5,@(0x04,r15)
mov r4,r12
bsr loc_8C124E50
mov r12,r4
tst r0,r0
bf/s loc_8C125306
mov r0,r4
mov.l @(0x08,r12),r9
mov r15,r7
mov.l @(0x04,r12),r5
mov r9,r6
bsr loc_8C124F10
mov.l @(0x04,r15),r4
mov.l @(loc_8C1252E4,pc),r8 ; r8 set to 0x400000
mov r0,r11
mov.w @(loc_8C1252BA,pc),r13 ; r13 set to 0x18A0
mov 0x00,r14 ; r14 set to 0x00

loc_8C125284:
bsr loc_8C125B70
mov r13,r4 ; r4 set to 0x18A0
tst r0,r0
bt loc_8C1252A0
add 0x01,r14 ; r14 set to 0x01
cmp/ge r8,r14
bf loc_8C125284
bra loc_8C125364
nop
	nop
	nop
	nop
	nop
	nop


loc_8C1252A0:
mov.l @(loc_8C1252EC,pc),r10 ; r10 set to 0xA08000B4
mov 0x00,r4 ; r4 set to 0x00

loc_8C1252A4:
mov.l @r10,r3
tst r3,r3
bf loc_8C1252F0
add 0x01,r4 ; r4 set to 0x01
cmp/ge r8,r4
bf loc_8C1252A4
bra loc_8C125364
nop
loc_8c1252b4:
#data 0x0084
loc_8c1252b6:
#data 0xFF00
loc_8c1252b8:
#data 0x07F7

loc_8C1252BA:
#data 0x18A0
loc_8c1252bc:
#data 0x8C2DAD6c
loc_8c1252c0:
#data 0xA0800010
loc_8c1252c4:
#data 0x8C2DAD70
loc_8c1252c8:
#data 0x8C2DAD68
loc_8c1252cc:
#data 0xA0800400
loc_8c1252d0:
#data 0x8C2DAD64
loc_8c1252d4:
#data 0x8C2DAD78
loc_8c1252d8:
#data 0x8C2DAD80
loc_8c1252dc:
#data 0x8C2DAD60
loc_8c1252e0:
#data 0xA080005c

#align4
loc_8C1252E4:
#data 0x00400000
loc_8c1252e8:
#data 0xA070289c

#align4
loc_8C1252EC:
#data 0xA08000B4

#align4
loc_8c1252f0:
mov.l @r15,r3
tst r3,r3
bt bank12.loc_8c125330
mov r11,r5
mov.l @r15,r6
add r9,r5
bsr bank12.loc_8c124dd0
mov r11,r4
tst r0,r0
bt/s bank12.loc_8c125310
mov r0,r4

loc_8C125306:
bra loc_8C125376
mov r4,r0
	nop
	nop
	nop

#align4
loc_8C125310:
#data 0xEE00DD27

#align4
loc_8C125314:
#data 0x0009BD8c
#data 0x89092008
#data 0x3ED37E01
#data 0xA01F8BF8
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C125330:
#data 0xE5006793
#data 0x47096253
#data 0x64C33272
#data 0x66B38D06

#align4
loc_8C125340:
#data 0x26326346
#data 0x35727501
#data 0x76048FFa

#align4
loc_8C12534C:
#data 0xE601D519
#data 0x26682562
#data 0xE4008D06

#align4
loc_8C125358:
#data 0x222862A2
#data 0x74018908
#data 0x8BF93483


loc_8C125364:
mov.w @(loc_8C1253AE,pc),r0 ; r0 set to 0xFF00
bra loc_8C125376
nop
	nop
	nop
	nop

#align4
loc_8C125370:
#data 0x2532E300
#data 0xE000


loc_8C125376:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop


loc_8C125390:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l r5,@(0x04,r15)
mov r4,r14
mov.l r6,@(0x08,r15)
mov.l @(0x04,r15),r5
bsr loc_8C124E50
mov r14,r4
tst r0,r0
bt/s loc_8C1253C0
mov r0,r4
bra loc_8C1253Ec
mov r4,r0

loc_8C1253AE:
#data 0xFF00
#data 0x01000000
#data 0xA08000B0
	nop
	nop
	nop
	nop


loc_8C1253C0:
mov.l @(0x08,r14),r13
mov r15,r7
mov.l @(0x04,r14),r5
mov r13,r6
bsr loc_8C124F10
mov.l @(0x04,r15),r4
mov.l @(loc_8C1254B8,pc),r2 ; r2 set to 0x8C2DAD94
mov.l @(loc_8C1254C0,pc),r1 ; r1 set to 0x8C2DAD80
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8C1254BC,pc),r3 ; r3 set to 0x8C2DAD90
mov.l r14,@r3 ; r3 ??? bc r14 is ???
mov.l r2,@r1 ; r1 ??
mov.l @(loc_8C1254C4,pc),r2 ; r2 set to 0x8C2DAD84
mov.l @(0x08,r15),r0
mov.l @(loc_8C1254C8,pc),r3 ; r3 set to 0x8C2DAD88
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8C1254CC,pc),r0 ; r0 set to 0x8C2DAD8c
mov.l r13,@r3 ; r3 ??? bc r13 is ???
mov.l @r15,r1
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov 0x00,r0 ; r0 set to 0x00

loc_8C1253EC:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6D431F51
#data 0x55F11F62
#data 0x64D3BD1e
#data 0x8D032008
#data 0xA0156403
#data 0x00096043
#data 0x67F35ED2
#data 0x66E355D1
#data 0x54F1BD72
#data 0xD1249341
#data 0x2202D221
#data 0xD3232132
#data 0xD02452F2
#data 0xD2222322
#data 0x61F222E2
#data 0xE0002012
#data 0x4F267F0c
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x9327D517
#data 0x2FC62FE6
#data 0x32306252
#data 0xA03C8908
#data 0x0009E0Ff
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xDE136C43
#data 0xE101D610
#data 0xD40BD00e
#data 0xE700A029
#data 0x72046242
#data 0x72FC2422
#data 0x223263C6
#data 0x72FC6262
#data 0x8F1D2228
#data 0x2E122622
#data 0x72016252
#data 0xA01C2522
#data 0x1001E000
#data 0x00001004

#align4
loc_8C1254B8:
#data 0x8C2DAD94

#align4
loc_8C1254BC:
#data 0x8C2DAD90

#align4
loc_8C1254C0:
#data 0x8C2DAD80

#align4
loc_8C1254C4:
#data 0x8C2DAD84

#align4
loc_8C1254C8:
#data 0x8C2DAD88

#align4
loc_8C1254CC:
#data 0x8C2DAD8c
#data 0xA08000B0
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x63027701
#data 0x8BD33733
#data 0x6CF6E001
#data 0x6EF6000b
;==============================================

loc_8C1254F0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(loc_8C12559C,pc),r14 ; r14 set to 0x8C2DAD80
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov 0x00,r10 ; r10 set to 0x00
mov.l @(loc_8C125590,pc),r4 ; r4 set to 0xA08000B4
sts.l pr,@-r15
mov.l @r14,r0
mov r4,r11 ; r11 set to 0xA08000B4
mov.l @(loc_8C125598,pc),r13 ; r13 set to 0x8C2DAD94
extu.b r0,r0
mov.l @(loc_8C125594,pc),r12 ; r12 set to 0x8C2DAD88
cmp/eq 0x00,r0
bt/s loc_8C125530
add 0xFC,r11 ; r11 set to 0xA08000B0
cmp/eq 0x01,r0
bt loc_8C125540
cmp/eq 0x02,r0
bt loc_8C125570
cmp/eq 0x03,r0
bt loc_8C1255B0
cmp/eq 0x04,r0
bt loc_8C1255Be
cmp/eq 0x05,r0
bf loc_8C12552a
bra loc_8C125620
nop

loc_8C12552A:
bra loc_8C125636
nop
	nop


loc_8C125530:
bra loc_8C125636
mov 0xFF,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C125540:
mov.l @(loc_8C1255A0,pc),r12 ; r12 set to 0x400000
mov r10,r13
mov.w @(loc_8C12558C,pc),r11 ; r11 set to 0x18A0

loc_8C125546:
bsr loc_8C125B70
mov r11,r4 ; r4 set to 0x18A0
tst r0,r0
bt loc_8C125560
add 0x01,r13
cmp/ge r12,r13
bf loc_8C125546
bra loc_8C125626
nop
	nop
	nop
	nop
	nop


loc_8C125560:
mov.l @r14,r2
add 0x01,r2
bra loc_8C125626
mov.l r2,@r14
	nop
	nop
	nop
	nop


loc_8C125570:
mov.l @r4,r3
tst r3,r3
bt loc_8C125626
mov.l @(loc_8C1255A4,pc),r2 ; r2 set to 0x8C2DAD8c
mov.l @r2,r6
tst r6,r6
bt loc_8C1255F2
mov.l @r13,r5
mov.l @r12,r3
add r3,r5
bsr loc_8C124DD0
mov.l @r13,r4
bra loc_8C1255F2
nop

loc_8C12558C:
#data 0x18A0
#data 0x0000

#align4
loc_8C125590:
#data 0xA08000B4

#align4
loc_8C125594:
#data 0x8C2DAD88

#align4
loc_8C125598:
#data 0x8C2DAD94

#align4
loc_8C12559C:
#data 0x8C2DAD80

#align4
loc_8C1255A0:
#data 0x00400000

#align4
loc_8C1255A4:
#data 0x8C2DAD8c
	nop
	nop
	nop
	nop


loc_8C1255B0:
bsr loc_8C124E30
nop
tst r0,r0
bf loc_8C125626
mov.l @r14,r2
add 0x01,r2
mov.l r2,@r14

loc_8C1255BE:
mov.l @r14,r5
mov.l @(loc_8C125648,pc),r3 ; r3 set to 0xFF00, r3 set to 0xFF00
and r3,r5
tst r5,r5
bf/s loc_8C125610
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
bra loc_8C125602
mov r10,r5
	nop

#align4
loc_8c1255d0:
mov.l @(loc_8C12564C,pc),r6
mov.l @r13,r3
add 0x04,r3
mov.l r3,@r13
add 0xFC,r3
mov.l @r6,r2
add 0x04,r2
mov.l r2,@r6
add 0xFC,r2
mov.l @r2,r1
mov.l r1,@r3
mov.l @r12,r3
add 0xFC,r3
tst r3,r3
bf/s bank12.loc_8c125600
mov.l r3,@r12
mov.l r4,@r11

loc_8C1255F2:
mov.l @r14,r3
add 0x01,r3
bra loc_8C125626
mov.l r3,@r14
	nop
	nop
	nop

loc_8C125600:
#data 0x7501


loc_8C125602:
mov.l @(loc_8C125650,pc),r6 ; r6 set to 0x8C2DAD84
mov.l @r6,r3
cmp/ge r3,r5
bf loc_8C1255D0
bra loc_8C125626
nop
	nop


loc_8C125610:
mov.w @(loc_8C125644,pc),r2 ; r2 set to 0x100
cmp/eq r2,r5
bf loc_8C125634
mov.l r4,@r11
mov.l @r14,r0
add 0x01,r0
bra loc_8C125626
mov.l r0,@r14

#align4
loc_8c125620:
mov.l @r4,r2
tst r2,r2
bt bank12.loc_8c125630

loc_8C125626:
bra loc_8C125636
mov 0x01,r0
	nop
	nop
	nop

#align4
loc_8C125630:
#data 0x2EA22BA2

loc_8c125634:
mov 0x00,r0

loc_8C125636:
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8C125644:
#data 0x0100
#data 0x0000

#align4
loc_8C125648:
#data 0x0000FF00
loc_8c12564c:
#data 0x8C2DAD90

#align4
loc_8C125650:
#data 0x8C2DAD84
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C125660:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8C124FD0
mov r4,r14
tst r0,r0
bf/s loc_8C1256E4
mov r0,r4
mov r14,r9
shll r9
mov r14,r3
mov.l @(loc_8C125708,pc),r0 ; r0 set to 0x8C2DAE68
add r3,r9
mov r15,r6
shll2 r9
mov.l @(r0,r9),r9
mov r9,r5
bsr loc_8C125020
mov r14,r4
mov.w @(loc_8C125706,pc),r10 ; r10 set to 0x18A0
mov 0x00,r12 ; r12 set to 0x00
mov.l @(loc_8C12570C,pc),r14 ; r14 set to 0x400000
mov r0,r11 ; r11 set to 0x8C2DAE68
mov r12,r13 ; r13 set to 0x00

loc_8C12569A:
bsr loc_8C125B70
mov r10,r4 ; r4 set to 0x18A0
tst r0,r0
bt loc_8C1256B0
add 0x01,r13 ; r13 set to 0x01
cmp/ge r14,r13
bf loc_8C12569a
bra loc_8C125738
nop
	nop
	nop


loc_8C1256B0:
mov.l @(loc_8C125710,pc),r13 ; r13 set to 0xA08000B4
mov r12,r4

loc_8C1256B4:
mov.l @r13,r3
tst r3,r3
bf loc_8C1256D0
add 0x01,r4
cmp/ge r14,r4
bf loc_8C1256B4
bra loc_8C125738
nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c1256d0:
tst r11,r11
bt bank12.loc_8c125720
mov r11,r5
mov.l @r15,r6
sub r9,r5
bsr bank12.loc_8c124dd0
mov r11,r4
tst r0,r0
bt/s bank12.loc_8c1256f0
mov r0,r4

loc_8C1256E4:
bra loc_8C125744
mov r4,r0
	nop
	nop
	nop
	nop

#align4
loc_8C1256F0:
#data 0x6BC3DA08

#align4
loc_8C1256F4:
#data 0x0009BB9c
#data 0x89112008
#data 0x3BA37B01
#data 0xA0198BF8
	nop

loc_8C125706:
#data 0x18A0

#align4
loc_8C125708:
#data 0x8C2DAE68

#align4
loc_8C12570C:
#data 0x00400000

#align4
loc_8C125710:
#data 0xA08000B4
#data 0x01000000
	nop
	nop
	nop
	nop

#align4
loc_8C125720:
#data 0xE501D626
#data 0x25582652
#data 0x64C38D06

#align4
loc_8C12572C:
#data 0x233863D2
#data 0x74018906
#data 0x8BF934E3


loc_8C125738:
mov.w @(loc_8C1257B8,pc),r0 ; r0 set to 0xFF00
bra loc_8C125744
nop
	nop

#align4
loc_8C125740:
#data 0x60C326C2


loc_8C125744:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C125760:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8C124FD0
mov r4,r14
tst r0,r0
bt/s loc_8C125780
mov r0,r4
bra loc_8C1257Ae
mov r4,r0
	nop
	nop
	nop
	nop
	nop


loc_8C125780:
mov r14,r13
shll r13
mov r14,r3
mov.l @(loc_8C1257C0,pc),r0 ; r0 set to 0x8C2DAE68
add r3,r13
mov r15,r6
shll2 r13
mov.l @(r0,r13),r13
mov r13,r5
bsr loc_8C125020
mov r14,r4
mov.l @(loc_8C1257C4,pc),r2 ; r2 set to 0x8C2DAD94
neg r13,r13
mov.l @(loc_8C1257C8,pc),r1 ; r1 set to 0x8C2DAD80
mov.w @(loc_8C1257BA,pc),r3 ; r3 set to 0x101
mov.l r0,@r2 ; r2 ??
mov.l @(loc_8C1257D0,pc),r0 ; r0 set to 0x8C2DAD8c
mov.l r3,@r1 ; r1 ??
mov.l @(loc_8C1257CC,pc),r3 ; r3 set to 0x8C2DAD88
mov.l r13,@r3 ; r3 ??? bc r13 is ???
mov.l @r15,r2
mov.l r2,@r0 ; r0 ??? bc r2 is ???
mov 0x00,r0 ; r0 set to 0x00

loc_8C1257AE:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8C1257B8:
#data 0xFF00

loc_8C1257BA:
#data 0x0101
#data 0xA08000B0

#align4
loc_8C1257C0:
#data 0x8C2DAE68

#align4
loc_8C1257C4:
#data 0x8C2DAD94

#align4
loc_8C1257C8:
#data 0x8C2DAD80

#align4
loc_8C1257CC:
#data 0x8C2DAD88

#align4
loc_8C1257D0:
#data 0x8C2DAD8c
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1257E0:
mov.l r14,@-r15
extu.w r4,r14
mov 0x0F,r7 ; r7 set to 0x0f
mov.l @(loc_8C1258C4,pc),r3 ; r3 set to 0xFF00
and r7,r14
shll16 r14
tst r5,r3
shll8 r14
bt/s loc_8C1258A0
add r5,r14
mov.w @(loc_8C1258A6,pc),r1 ; r1 set to 0x1A0
mov r5,r0
cmp/eq r1,r0
bt/s loc_8C125862
mov 0x7F,r4 ; r4 set to 0x7f
mov.w @(loc_8C1258A8,pc),r1 ; r1 set to 0x4A0
cmp/eq r1,r0
bt loc_8C125862
mov.w @(loc_8C1258AA,pc),r1 ; r1 set to 0x9A0
cmp/eq r1,r0
bt loc_8C125862
mov.w @(loc_8C1258AC,pc),r1 ; r1 set to 0xAA0
cmp/eq r1,r0
bt loc_8C125862
mov.w @(loc_8C1258AE,pc),r1 ; r1 set to 0x10A0
cmp/eq r1,r0
bt loc_8C125862
mov.w @(loc_8C1258B0,pc),r1 ; r1 set to 0x5A0
cmp/eq r1,r0
bt loc_8C125860
mov.w @(loc_8C1258B2,pc),r1 ; r1 set to 0x6A0
cmp/eq r1,r0
bt loc_8C125860
mov.w @(loc_8C1258B4,pc),r1 ; r1 set to 0x7A0
cmp/eq r1,r0
bt loc_8C125860
mov.w @(loc_8C1258B6,pc),r1 ; r1 set to 0x11A0
cmp/eq r1,r0
bt loc_8C125860
mov.w @(loc_8C1258B8,pc),r1 ; r1 set to 0x1BA0
cmp/eq r1,r0
bt loc_8C125870
mov.w @(loc_8C1258BA,pc),r1 ; r1 set to 0x30A0
cmp/eq r1,r0
bt loc_8C125880
mov.w @(loc_8C1258BC,pc),r1 ; r1 set to 0x28A0
cmp/eq r1,r0
bt loc_8C125880
mov.w @(loc_8C1258BE,pc),r1 ; r1 set to 0x29A0
cmp/eq r1,r0
bt loc_8C125880
mov.w @(loc_8C1258C0,pc),r1 ; r1 set to 0x2A0
cmp/eq r1,r0
bt loc_8C1258A0
mov.w @(loc_8C1258C2,pc),r1 ; r1 set to 0x3A0
cmp/eq r1,r0
bt loc_8C1258A0
bra loc_8C125890
nop
	nop
	nop
	nop
	nop
	nop

loc_8c125860:
add 0x40,r6

loc_8C125862:
bra loc_8C125884
and r4,r6
	nop
	nop
	nop
	nop
	nop


loc_8C125870:
bra loc_8C125884
and r7,r6
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c125880:
add 0xFF,r6
and r7,r6

loc_8C125884:
shll16 r6
bra loc_8C1258A0
add r6,r14
	nop
	nop
	nop


loc_8C125890:
mov 0xFE,r0 ; r0 set to 0xFFFFFFFe
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C1258A0:
mov r14,r4
bra loc_8C125B70
mov.l @r15+,r14

loc_8C1258A6:
#data 0x01A0

loc_8C1258A8:
#data 0x04A0

loc_8C1258AA:
#data 0x09A0

loc_8C1258AC:
#data 0x0AA0

loc_8C1258AE:
#data 0x10A0

loc_8C1258B0:
#data 0x05A0

loc_8C1258B2:
#data 0x06A0

loc_8C1258B4:
#data 0x07A0

loc_8C1258B6:
#data 0x11A0

loc_8C1258B8:
#data 0x1BA0

loc_8C1258BA:
#data 0x30A0

loc_8C1258BC:
#data 0x28A0

loc_8C1258BE:
#data 0x29A0

loc_8C1258C0:
#data 0x02A0

loc_8C1258C2:
#data 0x03A0

#align4
loc_8C1258C4:
#data 0x0000FF00
	nop
	nop
	nop
	nop
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1258E0:
mov.l r14,@-r15
mov 0x0F,r14 ; r14 set to 0x0f
mov r5,r0
and r4,r14 ; r14 ??? bc r4 is ???
add 0xFF,r0
mov.w @(loc_8C125954,pc),r1 ; r1 set to 0x1B0
shll16 r14
and 0x0F,r0
shll8 r14
add r0,r14
mov r6,r0
cmp/eq r1,r0
add r6,r14
bt/s loc_8C125922
mov 0x7F,r4 ; r4 set to 0x7f
mov.w @(loc_8C125956,pc),r1 ; r1 set to 0x2B0
cmp/eq r1,r0
bt loc_8C125922
mov.w @(loc_8C125958,pc),r1 ; r1 set to 0x7B0
cmp/eq r1,r0
bt loc_8C125922
mov.w @(loc_8C12595A,pc),r1 ; r1 set to 0x27B0
cmp/eq r1,r0
bt loc_8C125922
mov.w @(loc_8C12595C,pc),r1 ; r1 set to 0xAB0
cmp/eq r1,r0
bt loc_8C125920
mov.w @(loc_8C12595E,pc),r1 ; r1 set to 0x2AB0
cmp/eq r1,r0
bt loc_8C125920
bra loc_8C125930
nop

loc_8c125920:
add 0x40,r7

loc_8C125922:
and r4,r7
shll16 r7
bra loc_8C125940
add r7,r14
	nop
	nop
	nop


loc_8C125930:
mov 0xFE,r0 ; r0 set to 0xFFFFFFFe
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C125940:
mov r14,r4
bra loc_8C125B70
mov.l @r15+,r14
	nop
	nop
	nop
	nop
	nop
#data 0x6EF6000b
;==============================================

loc_8C125954:
#data 0x01B0

loc_8C125956:
#data 0x02B0

loc_8C125958:
#data 0x07B0

loc_8C12595A:
#data 0x27B0

loc_8C12595C:
#data 0x0AB0

loc_8C12595E:
#data 0x2AB0
#data 0xE70F2FE6
#data 0x6D432FD6
#data 0x2D792FC6
#data 0x4D18915a
#data 0x6C634F22
#data 0x6ED36053
#data 0x3010E47f
#data 0x3E5C2C49
#data 0x4C288D1e
#data 0x3010914f
#data 0x914D8948
#data 0x892F3010
#data 0x3010914b
#data 0x9149892c
#data 0x89293010
#data 0x30109147
#data 0x91458926
#data 0x89233010
#data 0x30109143
#data 0x91418928
#data 0x892D3010
#data 0x0009A034
	nop
	nop
	nop
	nop
#data 0x93399439
#data 0x44182469
#data 0xB0D134Dc
#data 0x2008343c
#data 0x65038D06
#data 0x6053A03c
	nop
	nop
	nop
	nop
#data 0x6ED39320
#data 0xA02B3ECc
#data 0x00093E3c
	nop
	nop
#data 0xA0067640
#data 0x00092649
	nop
	nop
	nop
	nop
#data 0x46282679
#data 0x3E6CA01c
	nop
	nop
	nop
	nop
#data 0x26299213
#data 0x46084608
#data 0x3C6C4600
#data 0x3ECCA010
#data 0xE0FEA016
#data 0x10A500A5
#data 0x30A520A5
#data 0x00A740A5
#data 0x50A510A7
#data 0x7F0000A6
#data 0x008070A5
	nop
	nop
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A092
	nop
	nop
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
#data 0x6E432FE6
#data 0x6D632FD6
#data 0xE60F914e
#data 0x60534F22
#data 0x30102E69
#data 0x8D0B4E18
#data 0x91463E5c
#data 0x891F3010
#data 0x30109144
#data 0xA02B8924
	nop
	nop
	nop
	nop
#data 0x933D943d
#data 0x441824D9
#data 0x343CB06a
#data 0x8D072008
#data 0xA02D6503
#data 0x00096053
	nop
	nop
	nop
	nop
#data 0x9329EE7f
#data 0x4E282ED9
#data 0x3E3CA01a
	nop
	nop
#data 0x4D282D69
#data 0x3EDCA014
	nop
	nop
	nop
	nop
#data 0x704060D3
#data 0x4028C97f
#data 0x3E0CA00a
	nop
	nop
#data 0xE0FEA00e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x64E34F26
#data 0xA03B6DF6
#data 0x00096EF6
	nop
	nop
#data 0x6DF64F26
#data 0x6EF6000b
;==============================================
#data 0x10A400A4
#data 0x7F0020A4
#data 0x000970A4
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x60432FE6
#data 0x4F229162
#data 0x8F193010
#data 0xE30F6E43
#data 0x45282539
#data 0xB01B3E5c
#data 0x200864E3
#data 0x64038D08
#data 0x60434F26
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
#data 0x4F26924d
#data 0x64E33E2c
#data 0x6EF6A00a
	nop
	nop
#data 0x4F26E0Fe
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C125B70:
mov.l @(loc_8C125BF8,pc),r2 ; r2 set to 0x8C2DAD60
mov 0x00,r7 ; r7 set to 0x00
mov.l @r2,r3
tst r3,r3
bt/s loc_8C125B80
mov r7,r6 ; r6 set to 0x00
rts
mov 0xFD,r0
;==============================================

loc_8C125B80:
mov.l @(loc_8C125BF8,pc),r2 ; r2 set to 0x8C2DAD60
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.l r3,@r2 ; r2 ??
mov.w @(loc_8C125BF0,pc),r1 ; r1 set to 0x80
tst r4,r1
bf loc_8C125B90
bra loc_8C125BB6
mov 0xFE,r6

loc_8C125B90:
mov.l @(loc_8C125BFC,pc),r5 ; r5 set to 0x8C2DAD64
mov.l @r5,r2
mov.l @r2,r3
tst r3,r3
bt loc_8C125BA0
bra loc_8C125BB6
mov 0xFF,r6
	nop

#align4
loc_8c125ba0:
mov.l @r5,r2
add 0x04,r2
mov.l r2,@r5
add 0xFC,r2
mov.l r4,@r2
mov.l @r5,r2
mov.l @(loc_8C125C00,pc),r3
cmp/eq r3,r2
bf loc_8c125bb6
mov.l @(loc_8C125C04,pc),r0
mov.l r0,@r5

loc_8C125BB6:
mov.l @(loc_8C125BF8,pc),r3 ; r3 set to 0x8C2DAD60
mov.l r7,@r3 ; r3 ??? bc r7 is ???
mov r6,r0
rts
nop
;==============================================
#data 0x3432E308
#data 0xD3108934
#data 0x6632D210
#data 0x44086662
#data 0x4400910f
#data 0x74056053
#data 0x362C3010
#data 0x8D174408
#data 0x9107364c
#data 0x891B3010
#data 0x0009A022
#data 0x010000A3

loc_8C125BF0:
#data 0x0080
#data 0x04A0
#data 0x000010A0

#align4
loc_8C125BF8:
#data 0x8C2DAD60

#align4
loc_8C125BFC:
#data 0x8C2DAD64
loc_8c125c00:
#data 0xA0800500
loc_8c125c04:
#data 0xA0800400
#data 0x8C2DAD68
#data 0xA0800000
#data 0x000B6062
#data 0x0009C97f
	nop
	nop
	nop
	nop
#data 0x60629378
#data 0x2039E2F8
#data 0x402C000b
;==============================================
	nop
	nop
#data 0x000BE080
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE3087FFc
#data 0x8B013432
#data 0x0009A07a
#data 0x451175Ff
#data 0xA0758901
#data 0xE2100009
#data 0x8B013523
#data 0x0009A070
#data 0xD231D330
#data 0x2F726732
#data 0x44085771
#data 0x345C4408
#data 0x372C4408
#data 0x6572374c
#data 0x655C914d
#data 0x8B073510
#data 0x000B904a
#data 0x00097F04
	nop
	nop
	nop
	nop
#data 0x64F2D325
#data 0xE23F5442
#data 0x2529913f
#data 0x45086063
#data 0x45083010
#data 0x343C4508
#data 0x6543345c
#data 0x67437514
#data 0x77088D0e
#data 0x30109132
#data 0x91308912
#data 0x89173010
#data 0x3010912e
#data 0xA03B891c
	nop
	nop
	nop
	nop
#data 0xC97F6052
#data 0x7F04000b
;==============================================
	nop
	nop
	nop
	nop
#data 0x60529318
#data 0x2039E2F8
#data 0x000B402c
#data 0x00097F04
#data 0x6072D30e
#data 0x40292039
#data 0x000B600f
#data 0x00097F04
#data 0x6472D30b
#data 0xD00B2439
#data 0x44194429
#data 0x004C644e
#data 0x7F04000b
;==============================================
#data 0x00FF7F00
#data 0x01B0FF7f
#data 0x27B002B0
#data 0x00002AB0
#data 0x8C2DAD68
#data 0xA0800000
#data 0x007F0000
#data 0x1F000000

#align4
loc_8C125D34:
#data bank13.loc_8c13f5C1
	nop
	nop
	nop
	nop
#data 0x000BE080
#data 0x00097F04
	nop
	nop
	nop
	nop
#data 0x6432D33b
#data 0x65427410
#data 0x8D022558
#data 0xE1006053
#data 0x000B2412
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD3332FD6
#data 0x2FB62FC6
#data 0x2FA6D232
#data 0x65322F96
#data 0x995B5553
#data 0x9D5A352c
#data 0x6B93E010
#data 0xE700DC2e
#data 0x7BFFEA01
#data 0x666C6652
#data 0x23D86363
#data 0x61528910
#data 0x412921C9
#data 0x3140611f
#data 0x26A88B0a
#data 0x64B38D01
#data 0xA00A6493
#data 0x00096043
	nop
	nop
	nop
	nop
#data 0x37037701
#data 0x75308FE6
#data 0x69F6E000
#data 0x6BF66AF6
#data 0x000B6CF6
#data 0x00096DF6
	nop
	nop
	nop
	nop
#data 0x000BD31a
#data 0x00096032
	nop
	nop
	nop
	nop
#data 0x000BD217
#data 0x00096022
	nop
	nop
	nop
	nop


loc_8C125E00:
mov.l @(loc_8C125E54,pc),r1 ; r1 set to 0x8C2DAD78
mov.l @(loc_8C125E58,pc),r2 ; r2 set to 0xA0800088
mov.l @r1,r3
mov.l @r2,r0
rts
sub r3,r0
;==============================================
	nop
	nop


loc_8C125E10:
mov.l @(loc_8C125E5C,pc),r0 ; r0 set to 0x8C13F568
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C125E20:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
exts.w r6,r6
tst r6,r6
bt loc_8C125E60
bra loc_8C12602c
mov 0xFE,r0
#data 0x00800101
#data 0x8C2DAD68
#data 0xA0800000
#data 0x00FF0000
#data 0xA08000Ec
#data 0xA08000E8

#align4
loc_8C125E54:
#data 0x8C2DAD78

#align4
loc_8C125E58:
#data 0xA0800088

#align4
loc_8C125E5C:
#data bank13.loc_8c13f568


loc_8C125E60:
mov r5,r7
shll r7
add r4,r7
exts.w r7,r3
mov 0x08,r11 ; r11 set to 0x08
cmp/gt r11,r3
bf loc_8C125E80
bra loc_8C12602c
mov 0xFF,r0
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C125E80:
mov.l @(loc_8C125F0C,pc),r9 ; r9 set to 0x8C2DADA0
mov 0x00,r6 ; r6 set to 0x00
mov 0x00,r13 ; r13 set to 0x00
add r9,r6 ; r6 set to 0x8C2DADA0
mov r13,r14 ; r14 set to 0x00

loc_8C125E8A:
mov.b @r6,r0
cmp/eq 0x01,r0
bf loc_8C125EA0
bra loc_8C12602c
mov 0xFD,r0
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c125ea0:
add 0x01,r14
exts.w r14,r2
cmp/ge r11,r2
bf/s bank12.loc_8c125e8a
add 0x18,r6
mov.l @(loc_8C125F10,pc),r3
exts.w r4,r2
mov.l r2,@r3
mov.l @(loc_8C125F14,pc),r2
exts.w r5,r1
mov.l r1,@r2
mov.l @(loc_8C125F18,pc),r1
mov.l @r1,r0
mov.l r0,@r15
exts.w r7,r0
mov.l @(loc_8C125F1C,pc),r6
tst r0,r0
bt loc_8c125f40
exts.w r7,r3
mov.l @r15,r1
shll2 r3
shll2 r3
shll2 r3
sub r3,r1
mov.l @(bank12.loc_8c125f20,pc),r3
jsr @r3
exts.w r7,r0
mov.l @(loc_8C125F24,pc),r1
mov.w @(loc_8C125F08,pc),r3
and r1,r0
cmp/gt r3,r0
bf/s loc_8c125ee4
mov.l r0,@r6
mov.l r3,@r6

loc_8c125ee4:
mov.l @(loc_8C125F28,pc),r3
mov.l @r6,r10
mov.l @r3,r6
mov.l @r6,r6
mov 0x1F,r2
tst r6,r2
bt/s loc_8c125efc
add 0x40,r10
mov 0xE0,r0
and r6,r0
mov r0,r6
add 0x20,r6

loc_8c125efc:
mov.l @(loc_8C125F2C,pc),r3
mov.l @(loc_8C125F30,pc),r14
mov.l @r3,r7
sub r10,r7
bra loc_8c125f44
sub r6,r7

loc_8C125F08:
#data 0x4000
#data 0x0000

loc_8c125f0c:
#data 0xADA0
#data 0x8C2D

#align4
loc_8C125F10:
#data 0xA08000A0

#align4
loc_8C125F14:
#data 0xA08000A4

#align4
loc_8C125F18:
#data 0xA080008C

#align4
loc_8C125F1C:
#data 0x8C2DAD7C

#align4
loc_8c125f20:
#data bank12.loc_8c1291dc

loc_8C125F24:
#data 0x7FFFFFE0

#align4
loc_8C125F28:
#data 0x8C2DAD70

#align4
loc_8C125F2C:
#data 0x8C2DAD74

#align4
loc_8C125F30:
#data 0xA0800100
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c125f40:
mov.l r13,@r6
mov r13,r10

loc_8c125f44:
mov.l @(loc_8C126050,pc),r3
mov.l r10,@r3
exts.w r4,r4
mov.l @(loc_8C126054,pc),r12
mov r4,r2
cmp/pl r2
mov r13,r6
bf/s loc_8c125f92
mov.l r4,@(0x04,r15)

loc_8c125f56:
exts.w r6,r4
mov r13,r0
mov r4,r3
shll r4
add r3,r4
mov r7,r3
shll2 r4
shll r4
add r12,r3
add r9,r4
mov.b r0,@(0x01,r4)
mov.b r0,@r4
mov.l r3,@(0x04,r4)
mov.l r7,@(0x0C,r14)
mov 0x00,r2
mov.l r2,@(0x08,r4)
sub r10,r7
mov.l r2,@(0x10,r14)
mov r14,r3
add 0x04,r3
mov r14,r2
add 0x14,r2
add 0x01,r6
mov.l r2,@(0x10,r4)
mov.l r3,@(0x14,r4)
exts.w r6,r2
mov.l @(0x04,r15),r3
cmp/ge r3,r2
bf/s loc_8c125f56
add 0x60,r14

loc_8c125f92:
mov r14,r1
add 0x04,r1
exts.w r5,r5
mov.l r1,@(0x08,r15)
mov r14,r3
add 0x14,r3
exts.w r6,r1
mov.l r3,@r15
mov.l @(0x04,r15),r2
mov r14,r8
add r2,r5
cmp/ge r5,r1
bt/s loc_8c125ff6
add 0x0C,r8

loc_8c125fae:
exts.w r6,r4
mov r13,r0
mov r4,r3
shll r4
add r3,r4
mov r7,r3
shll2 r4
shll r4
add r12,r3
add r9,r4
mov.b r0,@(0x01,r4)
mov.b r0,@r4
mov.l r3,@(0x08,r4)
mov.l r7,@(0x10,r14)
sub r10,r7
mov r7,r2
add r12,r2
mov.l r2,@(0x04,r4)
mov.l r7,@r8
mov.l @r15,r3
add 0x01,r6
exts.w r6,r1
mov.l r3,@(0x10,r4)
sub r10,r7
mov.l @(0x08,r15),r2
cmp/ge r5,r1
add 0x60,r14
mov.l r2,@(0x14,r4)
mov.l @(0x08,r15),r3
add 0x60,r3
mov.l r3,@(0x08,r15)
mov.l @r15,r2
add 0x60,r2
mov.l r2,@r15
bf/s loc_8c125fae
add 0x60,r8

loc_8c125ff6:
exts.w r6,r4
mov r4,r3
shll r4
add r3,r4
shll2 r4
exts.w r6,r2
shll r4
cmp/ge r11,r2
add r9,r4
bt/s loc_8c126024
mov 0xFF,r5

loc_8c12600c:
mov r4,r7
add 0x01,r6
exts.w r6,r3
mov r13,r0
add 0x04,r7
mov.b r5,@r4
cmp/ge r11,r3
mov.b r0,@(0x01,r4)
mov.l r5,@(0x04,r7)
mov.l r5,@r7
bf/s loc_8c12600c
add 0x18,r4

loc_8c126024:
mov.w @(loc_8C12604E,pc),r4
bsr bank12.loc_8c125b70
nop
mov 0x00,r0

loc_8C12602C:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8C126040:
mov.b @(0x07,r4),r0
extu.b r0,r0
shll2 r0
shll2 r0
mov.l r0,@r5
rts
mov r4,r0
;==============================================
loc_8c12604e:
#data 0x00A1
loc_8c126050:
#data 0xA08000A8
loc_8c126054:
#data 0xA0800000
	nop
	nop
	nop
	nop


loc_8C126060:
exts.w r4,r6
mov.l r12,@-r15
mov r6,r3
shll r6
add r3,r6
mov.l @(loc_8C126298,pc),r12 ; r12 set to 0x8C2DADA0
shll2 r6
shll r6
add r12,r6
mov.b @r6,r0
cmp/eq 0x01,r0
bf loc_8C126114
mov.b @(0x01,r6),r0
tst r0,r0
bf loc_8C126114
exts.w r4,r0
mov.l @(loc_8C12629C,pc),r2 ; r2 set to 0xA0800100
mov r0,r3
shll r0
add r3,r0
mov r5,r1
shll2 r0
shll2 r0
shll r0
add r2,r0
mov 0x10,r7 ; r7 set to 0x10
mov 0x00,r6 ; r6 set to 0x00
add 0x20,r0

loc_8C126098:
mov.l @r1+,r2 ; r2 ??? bc r1 is ???
mov.l r2,@r0
add 0x01,r6 ; r6 set to 0x01
exts.w r6,r3
cmp/hs r7,r3
bf/s loc_8C126098
add 0x04,r0
exts.w r4,r3
mov r3,r2
shll r3
mov 0x2A,r0 ; r0 set to 0x2A, r0 set to 0x2a
add r2,r3
mov.w @(r0,r5),r1
shll2 r3
shll r3
extu.w r1,r1
add r12,r3
mov.l r1,@(0x0C,r3)
mov.b @(0x08,r5),r0
exts.w r4,r5
mov r5,r3
shll r5
add r3,r5
extu.b r0,r6 ; r6 set to 0x2A, r6 set to 0x2a
exts.w r6,r0 ; r0 ??, r0 ??
shll2 r5
shll r5
cmp/eq 0x00,r0
bt/s loc_8C1260F0
add r12,r5
cmp/eq 0x01,r0
bt loc_8C126100
cmp/eq 0x02,r0
bt loc_8C126110
cmp/eq 0x03,r0
bt loc_8C126110
rts
mov.l @r15+,r12
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1260F0:
bra loc_8C126112
mov r7,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126100:
bra loc_8C126112
mov 0x08,r0
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c126110:
mov 0x04,r0

loc_8c126112:
mov.w r0,@(0x02,r5)

loc_8C126114:
rts
mov.l @r15+,r12
;==============================================
	nop
	nop
	nop
	nop


loc_8C126120:
exts.w r4,r7
mov.l @(loc_8C126298,pc),r0 ; r0 set to 0x8C2DADA0
mov r7,r3
shll r7
add r3,r7
shll2 r7
shll r7
mov.b @(r0,r7),r0 ; r0 ??? bc r7 is ???
cmp/eq 0x01,r0
bt loc_8C126140
rts
mov 0x00,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C126140:
mov.l @(loc_8C1262A0,pc),r3 ; r3 set to 0x8C2DAD7c
exts.w r5,r0
shll2 r0
mov.l @r3,r2
mov.l r2,@r6
mov.l @(loc_8C1262A4,pc),r2 ; r2 set to 0x8C2DADA4
add r7,r2 ; r2 ??? bc r7 is ???
mov.l @(r0,r2),r0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126160:
exts.w r4,r5
mov.l @(loc_8C126298,pc),r2 ; r2 set to 0x8C2DADA0
mov r5,r3
shll r5
add r3,r5
shll2 r5
shll r5
add r2,r5
mov.b @r5,r0
cmp/eq 0x01,r0
bt loc_8C126180
rts
mov 0x00,r0
;==============================================
	nop
	nop
	nop


loc_8C126180:
mov.l @(0x0C,r5),r0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126190:
exts.w r4,r5
mov.l @(loc_8C126298,pc),r2 ; r2 set to 0x8C2DADA0
mov r5,r3
shll r5
add r3,r5
shll2 r5
shll r5
add r2,r5
mov.b @r5,r0
cmp/eq 0x01,r0
bt loc_8C1261B0
rts
mov 0x00,r0
;==============================================
	nop
	nop
	nop


loc_8C1261B0:
mov.w @(0x02,r5),r0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1261C0:
#data 0xD235654f
#data 0x45006353
#data 0x4508353c
#data 0x352C4500
#data 0x88016050
#data 0x84518B02
#data 0x8B012008

#align4
loc_8C1261DC:
#data 0xE000000b
;==============================================

#align4
loc_8C1261E0:
#data 0x60425454
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C1261F0:
#data 0xE1002FE6
#data 0x6D4F2FD6
#data 0xD72760D3
#data 0x6E138801
#data 0x8F15E501
#data 0x6413E608

#align4
loc_8C126208:
#data 0x63D36D4f
#data 0x3D3C4D00
#data 0x4D004D08
#data 0x62D03D7c
#data 0x8B022228
#data 0x211851D2
#data 0x8916

loc_8C126222:
#data 0x7401
#data 0x3263624f
#data 0xA01D8BEe
	nop
	nop

#align4
loc_8C126230:
#data 0x8B1C8802
#data 0x6413

loc_8C126236:
#data 0x6D4f
#data 0x4D0063D3
#data 0x4D083D3c
#data 0x3D7C4D00
#data 0x222862D0
#data 0x51D28B0a
#data 0x89072118

#align4
loc_8C126250:
#data 0x6E53A00a
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C126260:
#data 0x624F7401
#data 0x8BE63263

#align4
loc_8C126268:
#data 0x2EE86EEf
#data 0x8B08

loc_8C12626E:
#data 0xA010
#data 0x0009E0Ff
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C126280:
#data 0x6043634f
#data 0x43006233
#data 0x4308332c
#data 0x337C4300
#data 0x2350

loc_8C126292:
#data 0x6DF6
#data 0x6EF6000b
;==============================================

#align4
loc_8C126298:
#data 0x8C2DADA0

#align4
loc_8C12629C:
#data 0xA0800100

#align4
loc_8C1262A0:
#data 0x8C2DAD7c

#align4
loc_8C1262A4:
#data 0x8C2DADA4
	nop
	nop
	nop
	nop

#align4
loc_8C1262B0:
#data 0xD23A654f
#data 0x45006353
#data 0x4508353c
#data 0x352C4500
#data 0x88016050
#data 0x84518B04
#data 0x8B012008
#data 0x2530E300

#align4
loc_8C1262D0:
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1262E0:
#data 0x6E4F2FE6
#data 0x4E0063E3
#data 0x2FD63E3c
#data 0xDD2B4E08
#data 0x60E34E00
#data 0x00DC4F22
#data 0x8B0E8801
#data 0x32DC62E3
#data 0x20088421
#data 0x644F8B09
#data 0x44189345
#data 0x44084408
#data 0x343CBC2e
#data 0x3EDCE001
#data 0x80E1

loc_8C12631A:
#data 0x4F26
#data 0x000B6DF6
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126330:
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xFC,r15
exts.w r4,r12
mov.l @(loc_8C12639C,pc),r11 ; r11 set to 0x8C2DADA0
mov r12,r3
shll r12
add r3,r12
shll2 r12
shll r12
mov r12,r0
mov.b @(r0,r11),r0
cmp/eq 0x01,r0
bf loc_8C12640e
mov r12,r2
add r11,r2
mov.b @(0x01,r2),r0
tst r0,r0
bt loc_8C12640e
exts.w r4,r3
mov r12,r6
mov r3,r2
shll r3
add r2,r3
mov.l @(loc_8C1263A0,pc),r1 ; r1 set to 0xA0800128
exts.w r4,r4
mov.w @(loc_8C126398,pc),r2 ; r2 set to 0x2A1
shll2 r3
mov.l @(loc_8C1263A4,pc),r7 ; r7 set to 0x40000
shll2 r3
shll8 r4
shll r3
add r11,r6
shll2 r4
mov 0x00,r10 ; r10 set to 0x00
shll2 r4
mov r10,r5 ; r5 set to 0x00
add r1,r3
add r2,r4
mov.l r3,@r15
mov.l @(0x14,r6),r6

loc_8C126386:
mov.l @r6,r3
tst r3,r3
bf loc_8C1263B0
add 0x01,r5 ; r5 set to 0x01
cmp/hs r7,r5
bf loc_8C126386
bra loc_8C126404
nop
#data 0x01A1

loc_8C126398:
#data 0x02A1
#data 0x0000

#align4
loc_8C12639C:
#data 0x8C2DADA0

#align4
loc_8C1263A0:
#data 0xA0800128

#align4
loc_8C1263A4:
#data 0x00040000
	nop
	nop
	nop
	nop


loc_8C1263B0:
mov.l @r6,r6
mov.l @(loc_8C1264C4,pc),r2 ; r2 set to 0xA0000000
or r2,r6
mov.l @r6,r5
mov.w @(loc_8C1264BC,pc),r3 ; r3 set to 0x7Ff
and r3,r5
mov.l r5,@r6
mov.w @(loc_8C1264BE,pc),r0 ; r0 set to 0x300
mov.l @r15,r1
mov.l @r1,r1
mov.w @(loc_8C1264C0,pc),r2 ; r2 set to 0x100
and r0,r1
cmp/eq r2,r1
bf loc_8C1263Fe
mov r12,r0 ; r0 ??? bc r12 is ???
add r11,r0
mov.l @(0x14,r0),r0
mov r10,r1
add 0x04,r0

loc_8C1263D6:
mov.l @r0,r3 ; r3 ??? bc r0 is ???
tst r3,r3
bf loc_8C1263F0
add 0x01,r1
cmp/hs r7,r1
bf loc_8C1263D6
bra loc_8C126404
nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c1263f0:
mov.l @r0,r7
mov.l @(bank12.loc_8c1264c4,pc),r2
or r2,r7
mov.l @r7,r1
mov.w @(bank12.loc_8c1264bc,pc),r3
and r3,r1
mov.l r1,@r7

loc_8c1263fe:
mov.l @(loc_8C1264C8,pc),r2
or r2,r5
mov.l r5,@r6

loc_8c126404:
bsr bank12.loc_8c125b70
nop
mov r10,r0
add r11,r12
mov.b r0,@(0x01,r12)

loc_8C12640E:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
rts
mov.l @r15+,r12
;==============================================
	nop
	nop
	nop
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126440:
mov r4,r6
mov.l @(loc_8C1264CC,pc),r5 ; r5 set to 0x8C13F581
mov 0x40,r4 ; r4 set to 0x40

loc_8C126446:
mov.b @r5+,r2
add 0xFF,r4 ; r4 set to 0x3f
tst r4,r4
mov.b r2,@r6
bf/s loc_8C126446
add 0x01,r6
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126460:
exts.w r5,r5
shll8 r5
shll2 r5
shll r5
or r6,r5
add 0x22,r4
rts
mov.w r5,@r4
;==============================================

loc_8C126470:
exts.w r5,r0
cmp/eq 0x01,r0
bt/s loc_8C126490
add 0x09,r4
cmp/eq 0x02,r0
bt loc_8C1264A0
cmp/eq 0x04,r0
bt loc_8C1264B0
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126490:
mov.b @r4,r0
bra loc_8C1264B6
and 0x80,r0
	nop
	nop
	nop
	nop
	nop


loc_8C1264A0:
mov.b @r4,r0
and 0x80,r0
bra loc_8C1264B6
or 0x01,r0
	nop
	nop
	nop
	nop

#align4
loc_8c1264b0:
mov.b @r4,r0
and 0x80,r0
or 0x02,r0

loc_8C1264B6:
mov.b r0,@r4
rts
nop
;==============================================

loc_8C1264BC:
#data 0x07Ff

loc_8C1264BE:
#data 0x0300

loc_8C1264C0:
#data 0x0100
#data 0x0000

#align4
loc_8C1264C4:
#data 0xA0000000
loc_8c1264c8:
#data 0x00008000

#align4
loc_8C1264CC:
#data bank13.loc_8c13f581


loc_8C1264D0:
exts.w r5,r5
shll2 r5
add r4,r5
add 0x31,r5
rts
mov.b r6,@r5
;==============================================
	nop
	nop


loc_8C1264E0:
exts.w r5,r5
shll2 r5
add r4,r5
add 0x32,r5
rts
mov.b r6,@r5
;==============================================
	nop
	nop


loc_8C1264F0:
exts.w r5,r0
mov r4,r6
cmp/eq 0x04,r0
bt/s loc_8C126510
add 0x08,r4
cmp/eq 0x08,r0
bt loc_8C126520
cmp/eq 0x10,r0
bt loc_8C126530
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126510:
mov 0x03,r3 ; r3 set to 0x03
rts
mov.b r3,@r4
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126520:
mov 0x01,r1 ; r1 set to 0x01
rts
mov.b r1,@r4
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126530:
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r4
rts
nop
;==============================================
	nop
	nop
	nop
	nop


loc_8C126540:
exts.w r5,r7
shll2 r7
exts.w r6,r6
shll2 r7
mov 0x04,r5 ; r5 set to 0x04
or r6,r7
add 0x33,r4

loc_8C12654E:
dt r5
mov.b r7,@r4
bf/s loc_8C12654e
add 0x04,r4
rts
nop
;==============================================
	nop
	nop
	nop


loc_8C126560:
mov r4,r6
mov 0x04,r4 ; r4 set to 0x04
add 0x30,r6

loc_8C126566:
dt r4
mov.b r5,@r6
bf/s loc_8C126566
add 0x04,r6
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126580:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(0x09,r4),r0
and 0x03,r0
cmp/eq 0x00,r0
bt/s loc_8C1265A0
mov.l @(0x0C,r4),r13
cmp/eq 0x01,r0
bt loc_8C1265B0
cmp/eq 0x02,r0
bt loc_8C1265C0
bra loc_8C1265C2
nop
	nop


loc_8C1265A0:
bra loc_8C1265C2
mov 0x01,r14
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1265B0:
bra loc_8C1265C2
mov 0x02,r14
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c1265c0:
mov 0x04,r14

loc_8C1265C2:
mov.b @(0x08,r4),r0
cmp/eq 0x00,r0
bt loc_8C1265E0
cmp/eq 0x01,r0
bt loc_8C1265F0
cmp/eq 0x02,r0
bt loc_8C126600
cmp/eq 0x03,r0
bt loc_8C126600
bra loc_8C126602
nop
	nop
	nop
	nop
	nop


loc_8C1265E0:
bra loc_8C126602
mov 0x10,r7
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1265F0:
bra loc_8C126602
mov 0x08,r7
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c126600:
mov 0x04,r7

loc_8C126602:
exts.w r6,r2
mov r5,r0
shll2 r2
cmp/eq 0x00,r0
add r4,r2
mov r4,r11
bt/s loc_8C126650
add 0x33,r11
cmp/eq 0x01,r0
bt loc_8C126660
cmp/eq 0x02,r0
bt loc_8C126670
cmp/eq 0x03,r0
bf loc_8C126622
bra loc_8C126710
nop

loc_8C126622:
cmp/eq 0x04,r0
bt loc_8C126690
cmp/eq 0x05,r0
bt loc_8C1266A0
cmp/eq 0x06,r0
bt loc_8C1266B0
cmp/eq 0x07,r0
bt loc_8C1266C0
cmp/eq 0x08,r0
bt loc_8C1266D0
cmp/eq 0x09,r0
bt loc_8C1266E0
cmp/eq 0x0A,r0
bf loc_8C126642
bra loc_8C126720
nop

loc_8C126642:
bra loc_8C126730
nop
	nop
	nop
	nop
	nop
	nop


loc_8C126650:
mov r4,r0
add 0x2A,r0
mov.w @r0,r0
bra loc_8C126732
extu.w r0,r0
	nop
	nop
	nop


loc_8C126660:
bra loc_8C126732
mov r7,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126670:
mov r13,r1
mov.l @(loc_8C1266C8,pc),r3 ; r3 set to 0x8C129128
shll2 r1
shll r1
jsr @r3
mov r7,r0
mov.l @(loc_8C1266C8,pc),r2 ; r2 set to 0x8C129128
mov r0,r1
jsr @r2
mov r14,r0
bra loc_8C126732
nop
	nop
	nop
	nop
	nop


loc_8C126690:
bra loc_8C126732
mov r14,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1266A0:
mov r2,r0
bra loc_8C126724
add 0x31,r0
	nop
	nop
	nop
	nop
	nop


loc_8C1266B0:
mov r2,r0
bra loc_8C126724
add 0x32,r0
	nop
	nop
	nop
	nop
	nop


loc_8C1266C0:
mov.b @r11,r0
extu.b r0,r0
bra loc_8C126732
and 0x0F,r0

#align4
loc_8C1266C8:
#data loc_8c129128
	nop
	nop


loc_8C1266D0:
mov.b @r11,r0
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
extu.b r0,r0
and 0xF0,r0
bra loc_8C126732
shad r3, r0
	nop
	nop


loc_8C1266E0:
mov 0x1F,r0 ; r0 set to 0x1f
mov.b @(r0,r4),r2
extu.b r2,r2
tst r2,r2
bt loc_8C1266F0
bra loc_8C126732
mov 0x00,r0
	nop


loc_8C1266F0:
mov.w @(0x16,r4),r0
extu.w r0,r0
mov r0,r13
shlr2 r13
shlr2 r13
shlr2 r13
tst r13,r13
bf loc_8C126710
bra loc_8C126732
mov 0x01,r0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126710:
bra loc_8C126732
mov r13,r0
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c126720:
mov r4,r0
add 0x1E,r0

loc_8C126724:
mov.b @r0,r0
bra loc_8C126732
extu.b r0,r0
	nop
	nop
	nop

loc_8c126730:
mov 0xFF,r0

loc_8C126732:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop


loc_8C126740:
exts.w r4,r0
mov.l @(loc_8C1267C8,pc),r1 ; r1 set to 0x8C2DADA0
mov r0,r3
shll r0
add r3,r0
shll2 r0
shll r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C126780
exts.w r4,r0
shll8 r0
exts.w r6,r6
shll2 r0
exts.w r5,r5
shll16 r6
shll2 r0
shll8 r5
or r6,r0
shll2 r5
or 0xA2,r0
mov r0,r4
shll r5
bra loc_8C125B70
add r5,r4
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126780:
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD10D604f
#data 0x40006303
#data 0x4008303c
#data 0x001C4000
#data 0x8B0D8801
#data 0x4418644f
#data 0x4408655f
#data 0x44087540
#data 0x254B4528
#data 0xA9DB9406
#data 0x0009245b
	nop
	nop
#data 0x0009000b
;==============================================
#data 0x00000CA1

#align4
loc_8C1267C8:
#data 0x8C2DADA0
	nop
	nop


loc_8C1267D0:
exts.w r4,r0
mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
mov r0,r3
shll r0
add r3,r0
shll2 r0
shll r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C126810
exts.w r4,r4
mov.w @(loc_8C126894,pc),r2 ; r2 set to 0x1A2
shll8 r4
exts.w r6,r6
exts.w r5,r5
shll2 r4
shll8 r5
shll16 r6
shll2 r4
shll2 r5
or r6,r4
shll r5
or r2,r4
bra loc_8C125B70
add r5,r4
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126810:
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126820:
exts.w r4,r0
mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
mov r0,r3
shll r0
add r3,r0
shll2 r0
shll r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C126850
exts.w r4,r4
shll8 r4
exts.w r5,r5
shll2 r4
add 0x40,r5
shll2 r4
shll16 r5
or r4,r5
mov.w @(loc_8C126896,pc),r4 ; r4 set to 0x8A1
bra loc_8C125B70
or r5,r4
	nop
	nop
	nop


loc_8C126850:
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126860:
exts.w r4,r0
mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
mov r0,r3
shll r0
add r3,r0
shll2 r0
shll r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C126890
exts.w r4,r4
shll8 r4
exts.w r5,r5
shll2 r4
add 0x40,r5
shll2 r4
shll16 r5
or r4,r5
mov.w @(loc_8C126898,pc),r4 ; r4 set to 0x9A1
bra loc_8C125B70
or r5,r4
	nop
	nop
	nop


loc_8C126890:
rts
nop
;==============================================

loc_8C126894:
#data 0x01A2

loc_8C126896:
#data 0x08A1

loc_8C126898:
#data 0x09A1
#data 0x0000

#align4
loc_8C12689C:
#data 0x8C2DADA0


loc_8C1268A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF8,r15
exts.w r4,r12
mov.l @(loc_8C1269C0,pc),r0 ; r0 set to 0x8C2DADA0
mov r12,r3
shll r12
add r3,r12
mov.w r5,@r15
shll2 r12
shll r12
mov.b @(r0,r12),r0 ; r0 ??? bc r12 is ???
cmp/eq 0x01,r0
bf loc_8C126910
exts.w r4,r14
mov.w @(loc_8C1269B6,pc),r3 ; r3 set to 0x2A2
shll8 r14
shll2 r14
exts.w r6,r6
shll2 r14
shll16 r6
mov.l r14,@(0x04,r15)
or r6,r14
or r3,r14
bsr loc_8C125B70
mov r14,r4
mov.w @r15,r13
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
mov.w @(loc_8C1269B8,pc),r2 ; r2 set to 0x3A2
shll16 r13
or r3,r13
or r2,r13
bsr loc_8C125B70
mov r13,r4
mov.l @(loc_8C1269C4,pc),r0 ; r0 set to 0x8C2DADA8
mov.l @(r0,r12),r3
tst r3,r3
bt loc_8C126910
mov.w @(loc_8C1269BA,pc),r3 ; r3 set to 0x800
add r3,r14
bsr loc_8C125B70
mov r14,r4
mov.w @(loc_8C1269BA,pc),r3 ; r3 set to 0x800
add r3,r13
mov r13,r4
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C125B70
mov.l @r15+,r14
	nop
	nop
	nop


loc_8C126910:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop


loc_8C126920:
sts.l pr,@-r15
add 0xF8,r15
exts.w r4,r0
mov.l @(loc_8C1269C0,pc),r1 ; r1 set to 0x8C2DADA0
mov r0,r3
shll r0
add r3,r0
mov.w r6,@r15
shll2 r0
shll r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C126970
exts.w r4,r4
mov.w @(loc_8C1269BC,pc),r3 ; r3 set to 0xAA1
shll8 r4
shll2 r4
exts.w r5,r5
shll2 r4
shll16 r5
mov.l r4,@(0x04,r15)
or r5,r4
bsr loc_8C125B70
or r3,r4
mov.w @r15,r4
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
mov.w @(loc_8C1269BE,pc),r2 ; r2 set to 0xBA1
shll16 r4
or r3,r4
or r2,r4
add 0x08,r15
bra loc_8C125B70
lds.l @r15+,pr
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126970:
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================
	nop
	nop
	nop
	nop
#data 0xE410D511
#data 0x4410E600
#data 0x8FFC2562
#data 0xD20F7510
#data 0x2262000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x8B012448
#data 0x2142D109
#data 0x0009000b
;==============================================
	nop
	nop
#data 0x000BD306
#data 0x6032
;==============================================

loc_8C1269B6:
#data 0x02A2

loc_8C1269B8:
#data 0x03A2

loc_8C1269BA:
#data 0x0800

loc_8C1269BC:
#data 0x0AA1

loc_8C1269BE:
#data 0x0BA1

#align4
loc_8C1269C0:
#data 0x8C2DADA0

#align4
loc_8C1269C4:
#data 0x8C2DADA8
#data 0x8C2DAEC0
#data 0x8C2DAD98


loc_8C1269D0:
mov.l @(loc_8C126ABC,pc),r5 ; r5 set to 0x8C2DAEC0
mov 0x01,r6 ; r6 set to 0x01
mov 0x10,r7 ; r7 set to 0x10
mov 0x00,r4 ; r4 set to 0x00

loc_8C1269D8:
mov.l @r5,r3
tst r3,r3
bf loc_8C1269F0
mov.l r6,@r5 ; r5 ??
rts
mov r5,r0
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1269F0:
add 0x01,r4
cmp/ge r7,r4
bf/s loc_8C1269D8
add 0x10,r5
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;==============================================
	nop


loc_8C126A00:
mov.l @r4,r0
cmp/eq 0x01,r0
bf loc_8C126A10
mov 0x00,r5 ; r5 set to 0x00
mov.l r5,@r4
rts
mov r5,r0
;==============================================
	nop


loc_8C126A10:
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126A20:
mov.l @r4,r0
cmp/eq 0x01,r0
bt loc_8C126A30
rts
mov 0xFF,r0
;==============================================
	nop
	nop
	nop


loc_8C126A30:
mov r5,r2
mov 0x1F,r4 ; r4 set to 0x1f
tst r4,r2
bt loc_8C126A40
rts
mov 0xFE,r0
;==============================================
	nop
	nop


loc_8C126A40:
mov r6,r2
tst r4,r2
bt loc_8C126A50
rts
mov 0xFD,r0
;==============================================
	nop
	nop
	nop


loc_8C126A50:
tst r7,r4
bt loc_8C126A60
rts
mov 0xFC,r0
;==============================================
	nop
	nop
	nop
	nop


loc_8C126A60:
mov.l @(loc_8C126AC0,pc),r3 ; r3 set to 0x8C2DAD98
mov.l @r3,r4
tst r4,r4
bf loc_8C126A90
mov r6,r4
mov 0x00,r6 ; r6 set to 0x00
mov r6,r2 ; r2 set to 0x00
shlr2 r7
cmp/hs r7,r2
bt loc_8C126AA0

loc_8C126A74:
mov.l @r5+,r2 ; r2 ??? bc r5 is ???
mov.l r2,@r4
add 0x01,r6 ; r6 set to 0x01
cmp/hs r7,r6
bf/s loc_8C126A74
add 0x04,r4
bra loc_8C126AA0
nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126A90:
mov r4,r0
cmp/eq 0x01,r0
bt loc_8C126AA0
rts
mov 0xFB,r0
;==============================================
	nop
	nop
	nop


loc_8C126AA0:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8C126AB0:
mov.l @r4,r0
cmp/eq 0x01,r0
bt loc_8C126AD0
rts
mov 0xFF,r0
;==============================================
#data 0x0000

#align4
loc_8C126ABC:
#data 0x8C2DAEC0

#align4
loc_8C126AC0:
#data 0x8C2DAD98
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126AD0:
mov.l @(loc_8C126AF8,pc),r2 ; r2 set to 0x8C2DAD98
mov.l @r2,r4
tst r4,r4
bf loc_8C126AE0
mov.w @(loc_8C126AF6,pc),r0 ; r0 set to 0x100
rts
nop
;==============================================
	nop


loc_8C126AE0:
mov r4,r0
cmp/eq 0x01,r0
bt loc_8C126AF0
rts
mov 0xFB,r0
;==============================================
	nop
	nop
	nop


loc_8C126AF0:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;==============================================

loc_8C126AF6:
#data 0x0100

#align4
loc_8C126AF8:
#data 0x8C2DAD98
#data 0x00000000
#data 0xE700A08e
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C126B10:
bra loc_8C126C20
mov 0x02,r7
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE701A07e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE703A076
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE500A126
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE502A11e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE501A116
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xE503A10e
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x000BD36a
#data 0x0009F34a
	nop
	nop
	nop
	nop


loc_8C126B90:
mov.l @(loc_8C126D30,pc),r2 ; r2 set to 0x8C16BE84
rts
fmov.s fr4,@r2
;==============================================
	nop
	nop
	nop
	nop
	nop
#data 0xD365E607
#data 0x24692569
#data 0x4528D662
#data 0x45186262
#data 0x22394508
#data 0x61622622
#data 0x2129D260
#data 0xE11D2612
#data 0x441D6362
#data 0x6033234b
#data 0x000B205b
#data 0x00092602
#data 0x60432FE6
#data 0x8801DE5c
#data 0xD55AD659
#data 0x62E28B08
#data 0x2E222259
#data 0x23595362
#data 0x000B1632
#data 0x00096EF6
#data 0x74086463
#data 0x215961E2
#data 0x63422E12
#data 0xD5532359
#data 0x62E22432
#data 0x2E22225b
#data 0x235B6342
#data 0x000B2432
#data 0x00096EF6
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c126c20:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xD0,r15
mov r7,r14
mov.l r6,@(0x2C,r15)
mov.l r4,@r15
mov.l r5,@(0x04,r15)
bsr loc_8c126ec0
mov r7,r4
mov.l @(bank12.loc_8c126d54,pc),r3
mov.l @(bank12.loc_8c126d50,pc),r4
jsr @r3
mov.l r0,@(0x08,r15)
mov.l @(bank12.loc_8c126d5c,pc),r3
mov.l @(loc_8C126D58,pc),r4
jsr @r3
mov.l @(0x08,r4),r4
mov 0x02,r2
tst r14,r2
bt loc_8c126c50
mov.l @(bank12.loc_8c126d5c,pc),r3
mov.l @(loc_8C126D60,pc),r4
jsr @r3
mov.l @(0x08,r4),r4

loc_8c126c50:
mov.l @(bank12.loc_8c126d64,pc),r2
jsr @r2
nop
mov.l @(bank12.loc_8c126d68,pc),r3
mov r15,r5
add 0x1C,r5
jsr @r3
mov.l @r15,r4
mov.l @(bank12.loc_8c126d68,pc),r3
mov r15,r5
add 0x0C,r5
jsr @r3
mov.l @(0x04,r15),r4
mov.l @(bank12.loc_8c126d6c,pc),r2
jsr @r2
mov 0x01,r4
mov r15,r5
mov r15,r4
add 0x0C,r5
bsr loc_8c127290
add 0x1C,r4
tst r0,r0
bt loc_8c126c8c
mov r15,r5
mov r15,r4
add 0x0C,r5
bsr loc_8c127190
add 0x1C,r4
tst r0,r0
bf loc_8c126ca0

loc_8c126c8c:
mov 0x00,r0
add 0x30,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c126ca0:
mov 0x24,r0
fldi1 fr5
fmov.s @(r0,r15),fr3
mov 0x1C,r0
fmov fr5,fr4
fdiv fr3,fr4
mov.l @(loc_8C126D70,pc),r4
fmov.s @(r0,r15),fr2
mov 0x1C,r0
fmov.s @r4,fr3
mov.l @(loc_8C126D74,pc),r5
fmov fr4,fr0
fmac fr0,fr2,fr3
fmov fr5,fr4
fmov.s fr3,@(r0,r15)
mov 0x20,r0
fmov.s @(r0,r15),fr2
mov 0x20,r0
fmov.s @r5,fr3
fmac fr0,fr2,fr3
fmov.s fr3,@(r0,r15)
mov 0x14,r0
fmov.s @(r0,r15),fr3
mov 0x0C,r0
fmov.s @(r0,r15),fr2
mov 0x0C,r0
fdiv fr3,fr4
fmov.s @r4,fr3
fmov fr4,fr0
fmac fr0,fr2,fr3
fmov.s fr3,@(r0,r15)
fmov.s @r5,fr3
mov 0x10,r0
mov r15,r6
fmov.s @(r0,r15),fr2
mov r15,r5
mov r15,r7
mov 0x10,r0
fmac fr0,fr2,fr3
add 0x1C,r5
add 0x0C,r6
add 0x2C,r7
fmov.s fr3,@(r0,r15)
bsr loc_8c127600
mov.l @(0x08,r15),r4
mov 0x01,r3
mov.l @(loc_8C126D78,pc),r2
tst r3,r14
mov r0,r6
bt/s loc_8c126d10
mov.l @r2,r5
mov r5,r4
bra loc_8c126d12
add 0x08,r4
	nop
	nop


loc_8c126d10:
mov r5,r4

loc_8c126d12:
mov.l @(loc_8C126D80,pc),r1
mov 0x01,r0
mov.l @r4,r2
mov.l @(loc_8C126D7C,pc),r3
and r1,r6
and r3,r2
or r6,r2
mov.l r2,@r4
add 0x30,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
#data 0x0000

loc_8c126d2c:
#data bank16.loc_8c16BE80

loc_8c126d30:
#data bank16.loc_8c16BE84

loc_8c126d34:
#data bank16.loc_8c16BFBC
#data 0xFFFF
#data 0x1FFF
#data 0xFFFF
#data 0xE3FF

loc_8c126d40:
#data bank16.loc_8c16BFB4
#data 0xFFFF
#data 0xFF3F

loc_8c126d48:
#data bank16.loc_8c16BF9C
#data 0x0000
#data 0x0080

#align4
loc_8c126d50:
#data bank16.loc_8c16be98

loc_8c126d54:
#data bank12.loc_8c120950

loc_8C126D58:
#data 0x8C2D690C

#align4
loc_8c126d5c:
#data bank12.loc_8c1205a0

loc_8C126D60:
#data 0x8C2D6900

#align4
loc_8c126d64:
#data bank12.loc_8c120660

loc_8c126d68:
#data bank11.loc_8c11f870

loc_8c126d6c:
#data bank12.loc_8c120900

loc_8C126D70:
#data 0x8C2DAFC0

#align4
loc_8C126D74:
#data 0x8C2DAFC4

#align4
loc_8C126D78:
#data 0x8C2AA508

#align4
loc_8C126D7C:
#data 0xFC000000

#align4
loc_8C126D80:
#data 0x03FFFFFF
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x4F22
#data 0x7FDC
#data 0x6953
#data 0x6E43
#data 0xB08C
#data 0x6453
#data 0xD28E
#data 0xD48D
#data 0x420B
#data 0x6D03
#data 0xD38E
#data 0xD48D
#data 0x430B
#data 0x5442
#data 0xE202
#data 0x2298
#data 0x8903
#data 0xD38B
#data 0xD48B
#data 0x430B
#data 0x5442
#data 0xD28B
#data 0x420B
	nop
#data 0xA051
	nop
#data 0x6AE6
#data 0xE400
#data 0x63E6
#data 0x2F32
#data 0xA048
#data 0x6B43
	nop
	nop
#data 0x65F3
#data 0xDC85
#data 0x7514
#data 0x4C0B
#data 0x64E3
#data 0x65F3
#data 0x64E3
#data 0x7504
#data 0x4C0B
#data 0x740C
#data 0x65F3
#data 0x64F3
#data 0x7504
#data 0xB249
#data 0x7414
#data 0x2008
#data 0x8932
#data 0x65F3
#data 0x64F3
#data 0x7504
#data 0xB1C2
#data 0x7414
#data 0x2008
#data 0x892B
#data 0xE01C
#data 0xF49D
#data 0xF3F6
#data 0xE014
#data 0xF54C
#data 0xF533
#data 0xD477
#data 0xF2F6
#data 0xE014
#data 0xF348
#data 0xD576
#data 0xF05C
#data 0xF32E
#data 0xFF37
#data 0xE018
#data 0xF2F6
#data 0xE018
#data 0xF358
#data 0xF32E
#data 0xFF37
#data 0xE00C
#data 0xF3F6
#data 0xE004
#data 0xF2F6
#data 0xE004
#data 0xF433
#data 0xF348
#data 0xF04C
#data 0xF32E
#data 0xFF37
#data 0xE008
#data 0xF358
#data 0xF2F6
#data 0x65F3
#data 0x66F3
#data 0xE008
#data 0xF32E
#data 0x7514
#data 0x7604
#data 0x67F3
#data 0xFF37
#data 0xB3CD
#data 0x64D3
#data 0x6D03
#data 0x7B01
#data 0x7E0C
#data 0x3BA2
#data 0x8BB7
#data 0x7E0C
#data 0x63E2
#data 0x2338
#data 0x8BAB
#data 0xD362
#data 0x430B
#data 0xE401
#data 0xE301
#data 0xD261
#data 0x2938
#data 0x8D04
#data 0x6522
#data 0x6453
#data 0xA002
#data 0x7408
	nop
#data 0x6453
#data 0xD15F
#data 0xE001
#data 0x6242
#data 0xD35C
#data 0x2D19
#data 0x2239
#data 0x22DB
#data 0x2422
#data 0x7F24
#data 0x4F26
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c126ec0:
mov.l @(bank12.loc_8c127018,pc),r3
mova @(loc_8C127014,pc),r0
mov.l @(loc_8C126FFC,pc),r5
mov.l @(bank12.loc_8c12701c,pc),r2
mov.l @(loc_8C127000,pc),r6
mov.l @(loc_8C127020,pc),r1
mov.l r14,@-r15
mov.l @(bank12.loc_8c126fe0,pc),r7
sts.l pr,@-r15
fmov.s @r0,fr4
mov 0x14,r0
fmov.s @r3,fr3
mov.l @(loc_8C127024,pc),r3
fmul fr4,fr3
fmov.s fr3,@r5
fmov.s @r2,fr3
fmul fr4,fr3
fldi1 fr4
fneg fr4
fmov fr4,fr2
fmov.s fr3,@r6
fmov.s @r5,fr3
fsub fr3,fr2
fmov.s fr2,@r1
fmov.s @r6,fr3
fsub fr3,fr4
fmov.s fr4,@r3
fmov.s @r5,fr3
fmov.s fr3,@r7
fmov.s @r6,fr2
fneg fr2
fmov.s fr2,@(r0,r7)
mov 0x01,r1
mov.l @(loc_8C127008,pc),r2
tst r1,r4
bt/s loc_8c126f10
mov.l @r2,r6
mov.l @(bank12.loc_8c127028,pc),r5
bra loc_8c126f14
mov.l @(0x08,r6),r4

loc_8c126f10:
mov.l @r6,r4
mov.l @(bank12.loc_8c12702c,pc),r5

loc_8c126f14:
mov.l @r5,r2
mov.l @(loc_8C127030,pc),r3
mov.l @(bank12.loc_8c127034,pc),r0
and r3,r2
mov.l @(loc_8C127010,pc),r14
mov.l r2,@r5
mov.l @r0,r1
and r4,r14
mov.l @(loc_8C127038,pc),r2
mov.l @r5,r3
shll16 r1
or r2,r1
mov.l @(loc_8C127040,pc),r2
or r1,r3
mov r4,r1
mov.l r3,@r5
shlr16 r1
mov.l @(loc_8C12703C,pc),r3
shlr8 r1
mov.l r1,@r3
mov.l r1,@r2
mov.l @(loc_8C127044,pc),r1
or r1,r14
mov r14,r6
add 0x20,r6
mov r14,r4

loc_8c126f48:
mov.l @r5+,r3
mov.l r3,@r4
add 0x04,r4
cmp/hs r6,r4
bf loc_8c126f48
mov.l @(bank12.loc_8c127048,pc),r3
jsr @r3
mov r14,r4
lds.l @r15+,pr
add 0x20,r14
mov r14,r0
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c126f70:
mov.l @(loc_8C12704C,pc),r3
mov 0x08,r0
fmov.s @(r0,r4),fr4
fmov.s @r3,fr5
fmov.s @(r0,r5),fr2
fmov fr5,fr3
fsub fr4,fr3
fsub fr4,fr2
fmov.s fr5,@(r0,r6)
fmov.s @r4,fr5
mov 0x04,r0
fmov fr3,fr4
fdiv fr2,fr4
fmov.s @r5,fr3
fmov fr5,fr2
fsub fr5,fr3
fmov fr4,fr0
fmac fr0,fr3,fr2
fmov.s fr2,@r6
fmov.s @(r0,r5),fr3
fmov.s @(r0,r4),fr5
fsub fr5,fr3
fmov fr5,fr2
fmac fr0,fr3,fr2
rts
fmov.s fr2,@(r0,r6)
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c126fb0:
mov 0x04,r0
mov.l @(loc_8C126FFC,pc),r3
fmov.s @(r0,r4),fr4
mov 0x08,r0
fmov.s @r3,fr8
mov 0x00,r5
fmov.s @(r0,r4),fr9
mov.l @(loc_8C127000,pc),r2
mov.l @(loc_8C127020,pc),r1
fmul fr9,fr8
fmov.s @r2,fr6
fmov.s @r1,fr7
fmov.s @r4,fr5
fmul fr9,fr6
mov.l @(loc_8C127024,pc),r3
fmul fr9,fr7
fcmp/gt fr8,fr5
fmov fr9,fr3
fmov.s @r3,fr9
bf/s loc_8c127050
fmul fr3,fr9
bra loc_8c127056
mov 0x02,r5
#data 0x0000

#align4
loc_8c126fe0:
#data bank16.loc_8c16be98

loc_8c126fe4:
#data 0x0950
#data 0x8C12
#data 0x690C
#data 0x8C2D

loc_8c126fec:
#data 0x05A0
#data 0x8C12
#data 0x6900
#data 0x8C2D

loc_8c126ff4:
#data 0x0660
#data 0x8C12

loc_8c126ff8:
#data 0xF870
#data 0x8C11

#align4
loc_8C126FFC:
#data 0x8C2DAFC0

#align4
loc_8C127000:
#data 0x8C2DAFC4

loc_8c127004:
#data 0x0900
#data 0x8C12

#align4
loc_8C127008:
#data 0x8C2AA508
#data 0x0000
#data 0xFC00

#align4
loc_8C127010:
#data 0x03FFFFFF

#align4
loc_8C127014:
#data 0x3F000000

#align4
loc_8c127018:
#data bank16.loc_8c16bd88

loc_8c12701c:
#data bank16.loc_8c16bd8c

loc_8C127020:
#data 0x8C2DAFC8

#align4
loc_8C127024:
#data 0x8C2DAFCC

#align4
loc_8c127028:
#data bank16.loc_8c16bfb4

loc_8c12702c:
#data bank16.loc_8c16bf94

loc_8C127030:
#data 0xFFFCFFFF

#align4
loc_8c127034:
#data bank16.loc_8c16bbf4

loc_8C127038:
#data 0x008C0000

#align4
loc_8C12703C:
#data 0xFF000038

#align4
loc_8C127040:
#data 0xFF00003C

#align4
loc_8C127044:
#data 0xE0000000

#align4
loc_8c127048:
#data bank12.loc_8c129c6a

loc_8C12704C:
#data 0x8C32B43C


loc_8c127050:
fcmp/gt fr5,fr7
bf loc_8c127056
mov 0x01,r5

loc_8c127056:
fcmp/gt fr6,fr4
bf loc_8c127060
mov 0x08,r2
bra loc_8c127068
or r2,r5

loc_8c127060:
fcmp/gt fr4,fr9
bf loc_8c127068
mov 0x04,r3
or r3,r5

loc_8c127068:
rts
mov r5,r0
;==============================================
	nop
	nop


loc_8c127070:
add 0xF4,r15
mov 0x04,r0
fmov.s @r4,fr5
fmov.s @(r0,r4),fr6
mov 0x08,r0
fmov.s @(r0,r4),fr7
mov 0x04,r0
fmov.s @(r0,r5),fr9
mov 0x08,r0
fmov.s @(r0,r5),fr10
fmov.s @r5,fr8
fsub fr6,fr9
fsub fr7,fr10
fldi0 fr3
fsub fr5,fr8
fcmp/eq fr3,fr10
bf/s loc_8c1270c0
mov r15,r4
fmov fr7,fr2
fcmp/eq fr3,fr8
fmul fr2,fr4
fmov.s fr7,@(r0,r4)
bf/s loc_8c1270b0
fmov.s fr4,@r4
mov 0x04,r0
fmov.s @(r0,r6),fr3
bra loc_8c1270e6
fmov.s fr3,@(r0,r4)
	nop
	nop
	nop
	nop


loc_8c1270b0:
fmov.s @r4,fr3
mov 0x04,r0
fsub fr5,fr3
fmul fr3,fr9
fdiv fr8,fr9
fadd fr6,fr9
bra loc_8c1270e6
fmov.s fr9,@(r0,r4)

loc_8c1270c0:
fmov fr8,fr1
fmul fr7,fr1
fmov fr4,fr0
fmul fr10,fr0
fmov fr10,fr2
fmul fr5,fr2
fsub fr8,fr0
fsub fr1,fr2
fdiv fr0,fr2
fmul fr2,fr4
fmov.s fr2,@(r0,r4)
fmov.s fr4,@r4
fmov.s @(r0,r4),fr2
mov 0x04,r0
fsub fr7,fr2
fmul fr2,fr9
fdiv fr10,fr9
fadd fr6,fr9
fmov.s fr9,@(r0,r4)

loc_8c1270e6:
mov 0x04,r0
fmov.s @r4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r4),fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r6)
rts
add 0x0C,r15
;==============================================
	nop
	nop
	nop


loc_8c127100:
add 0xF4,r15
mov 0x04,r0
fmov.s @r4,fr5
fmov.s @(r0,r4),fr6
mov 0x08,r0
fmov.s @(r0,r4),fr7
mov 0x04,r0
fmov.s @(r0,r5),fr8
mov 0x08,r0
fmov.s @(r0,r5),fr10
fmov.s @r5,fr9
fsub fr6,fr8
fsub fr7,fr10
fldi0 fr3
fsub fr5,fr9
fcmp/eq fr3,fr10
bf/s loc_8c127150
mov r15,r4
fmov fr7,fr2
fcmp/eq fr3,fr8
fmul fr2,fr4
fmov.s fr7,@(r0,r4)
mov 0x04,r0
bf/s loc_8c127140
fmov.s fr4,@(r0,r4)
fmov.s @r6,fr3
bra loc_8c127178
fmov.s fr3,@r4
	nop
	nop
	nop
	nop


loc_8c127140:
fmov.s @(r0,r4),fr3
fsub fr6,fr3
fmul fr3,fr9
fdiv fr8,fr9
fadd fr5,fr9
bra loc_8c127178
fmov.s fr9,@r4
	nop


loc_8c127150:
fmov fr8,fr1
fmul fr7,fr1
fmov fr4,fr0
fmul fr10,fr0
fmov fr10,fr2
fmul fr6,fr2
fsub fr8,fr0
fsub fr1,fr2
fdiv fr0,fr2
fmul fr2,fr4
fmov.s fr2,@(r0,r4)
mov 0x04,r0
fmov.s fr4,@(r0,r4)
mov 0x08,r0
fmov.s @(r0,r4),fr2
fsub fr7,fr2
fmul fr2,fr9
fdiv fr10,fr9
fadd fr5,fr9
fmov.s fr9,@r4

loc_8c127178:
mov 0x04,r0
fmov.s @r4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r4),fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r6)
rts
add 0x0C,r15
;==============================================
	nop
	nop


loc_8c127190:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov 0x01,r11
mov.l r10,@-r15
mov 0x02,r10
mov.l r9,@-r15
mov 0x04,r9
mov.l r8,@-r15
mov 0x08,r8
sts.l pr,@-r15

loc_8c1271ac:
bsr loc_8c126fb0
mov r13,r4
mov r0,r14
bsr loc_8c126fb0
mov r12,r4
mov r14,r2
mov r0,r4
tst r4,r2
bt loc_8c1271d0
bra loc_8c127262
mov 0x00,r0
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c1271d0:
tst r14,r14
bf loc_8c1271d8
tst r4,r4
bt loc_8c127260

loc_8c1271d8:
tst r14,r14
bt loc_8c1271de
mov r14,r4

loc_8c1271de:
tst r14,r14
bf loc_8c1271f0
bra loc_8c1271f2
mov r12,r6
	nop
	nop
	nop
	nop
	nop


loc_8c1271f0:
mov r13,r6

loc_8c1271f2:
mov r4,r2
tst r11,r2
bt loc_8c127200
mov.l @(loc_8C127274,pc),r1
bra loc_8c127208
nop
	nop


loc_8c127200:
mov r4,r3
tst r10,r3
bt loc_8c127220
mov.l @(loc_8C127278,pc),r1

loc_8c127208:
fmov.s @r1,fr4
mov r12,r5
bsr loc_8c127070
mov r13,r4
bra loc_8c1271ac
nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127220:
tst r9,r3
bt loc_8c127230
mov.l @(loc_8C12727C,pc),r1
bra loc_8c127238
nop
	nop
	nop
	nop


loc_8c127230:
mov r4,r3
tst r8,r3
bt loc_8c127250
mov.l @(loc_8C127280,pc),r1

loc_8c127238:
fmov.s @r1,fr4
mov r12,r5
bsr loc_8c127100
mov r13,r4
bra loc_8c1271ac
nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127250:
bra loc_8c1271ac
cmp/eq r14,r4
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127260:
mov 0x01,r0

loc_8c127262:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8C127274:
#data 0x8C2DAFC8

#align4
loc_8C127278:
#data 0x8C2DAFC0

#align4
loc_8C12727C:
#data 0x8C2DAFCC

#align4
loc_8C127280:
#data 0x8C2DAFC4
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127290:
mov.l r14,@-r15
mov 0x08,r0
mov.l @(loc_8C127570,pc),r3
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
fmov.s @(r0,r13),fr3
fmov.s @r3,fr4
fcmp/gt fr3,fr4
bf/s loc_8c1272c0
mov r5,r14
fmov.s @(r0,r14),fr3
fcmp/gt fr3,fr4
bf loc_8c1272b0
bra loc_8c1272d0
mov 0x00,r0

loc_8c1272b0:
mov r14,r5
mov r13,r6
bsr loc_8c126f70
mov r13,r4
bra loc_8c1272ce
nop
	nop
	nop


loc_8c1272c0:
fmov.s @(r0,r14),fr3
fcmp/gt fr3,fr4
bf loc_8c1272ce
mov r14,r5
mov r14,r6
bsr loc_8c126f70
mov r13,r4

loc_8c1272ce:
mov 0x01,r0

loc_8c1272d0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop


loc_8c1272e0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov r13,r11
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov 0x04,r8
sts.l pr,@-r15
mov.l @r6,r10
mov.l @(loc_8C127574,pc),r9

loc_8c1272fe:
mov r11,r0
cmp/eq 0x03,r0
bf loc_8c127310
mov.l @(loc_8C127578,pc),r3
bra loc_8c127312
mov.l r3,@r14
	nop
	nop
	nop


loc_8c127310:
mov.l r9,@r14

loc_8c127312:
mov.l @r12+,r2
add 0x04,r14
mov.l r2,@r14
add 0x04,r14
mov.l @r12+,r2
mov.l r2,@r14
add 0x04,r14
mov.l @r12+,r2
mov.l r2,@r14
add 0x04,r14
mov.l r10,@r14
add 0x04,r14
mov.l r13,@r14
add 0x04,r14
mov.l r10,@r14
add 0x04,r14
mov.l @(bank12.loc_8c12757c,pc),r2
mov.l r13,@r14
jsr @r2
mov r14,r4
add 0x01,r11
cmp/ge r8,r11
bf/s loc_8c1272fe
add 0x04,r14
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127360:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x04,r0
mov r15,r14
mov.l r7,@r15
add 0x04,r14
fmov.s @r5,fr3
mov r14,r7
fadd fr5,fr3
fadd fr4,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fadd fr5,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r5,fr3
add 0x0C,r7
fsub fr5,fr3
fadd fr4,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fadd fr5,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
mov r14,r5
add 0x18,r5
fmov.s fr3,@(r0,r7)
fmov.s @r6,fr3
mov 0x04,r0
fadd fr5,fr3
fsub fr4,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fsub fr4,fr2
fsub fr5,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov 0x04,r0
fmov.s @r6,fr3
mov r14,r5
add 0x24,r5
fsub fr5,fr3
fsub fr4,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fadd fr4,fr2
fsub fr5,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov.l @r15,r6
bsr loc_8c1272e0
mov r14,r5
add 0x34,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c1273f0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x04,r0
mov r15,r14
mov.l r7,@r15
add 0x04,r14
fmov.s @r5,fr3
mov r14,r7
fadd fr5,fr3
fadd fr4,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fadd fr5,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r5,fr3
add 0x0C,r7
fsub fr5,fr3
fadd fr4,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fadd fr5,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
mov r14,r5
add 0x18,r5
fmov.s fr3,@(r0,r7)
fmov.s @r6,fr3
mov 0x04,r0
fadd fr5,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov 0x04,r0
fmov.s @r6,fr3
mov r14,r5
add 0x24,r5
fsub fr5,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov.l @r15,r6
bsr loc_8c1272e0
mov r14,r5
add 0x34,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop


loc_8c127470:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x04,r0
mov r15,r14
add 0x04,r14
mov.l r7,@r15
fmov.s @r5,fr3
mov r14,r7
fadd fr5,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r5,fr3
add 0x0C,r7
fsub fr5,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
mov r14,r5
add 0x18,r5
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r6,fr3
fadd fr5,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov 0x04,r0
fmov.s @r6,fr3
mov r14,r5
add 0x24,r5
fsub fr5,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov.l @r15,r6
bsr loc_8c1272e0
mov r14,r5
add 0x34,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c1274f0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x04,r0
mov r15,r14
add 0x04,r14
mov.l r7,@r15
fmov.s @r5,fr3
mov r14,r7
fadd fr5,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r5,fr3
add 0x0C,r7
fsub fr5,fr3
fmov.s fr3,@r7
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r7)
mov 0x08,r0
fmov.s @(r0,r5),fr3
mov r14,r5
add 0x18,r5
fmov.s fr3,@(r0,r7)
mov 0x04,r0
fmov.s @r6,fr3
fadd fr5,fr3
fsub fr4,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fsub fr4,fr2
fsub fr5,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov 0x04,r0
fmov.s @r6,fr3
mov r14,r5
add 0x24,r5
fsub fr5,fr3
fsub fr4,fr3
fmov.s fr3,@r5
fmov.s @(r0,r6),fr2
fadd fr4,fr2
fsub fr5,fr2
fmov.s fr2,@(r0,r5)
mov 0x08,r0
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5)
mov.l @r15,r6
bsr loc_8c1272e0
mov r14,r5
add 0x34,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
#data 0x0000

#align4
loc_8C127570:
#data 0x8C32B43C

#align4
loc_8C127574:
#data 0xE0000000

#align4
loc_8C127578:
#data 0xF0000000

#align4
loc_8c12757c:
#data bank12.loc_8c129c6a


loc_8c127580:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov 0x04,r0
mov r15,r14
add 0x04,r14
mov.l r6,@r15
fmov.s @r5,fr3
mov r14,r6
fsub fr4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r6)
mov 0x04,r0
fmov.s @r5,fr3
add 0x0C,r6
fadd fr4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r5),fr2
fsub fr4,fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r6)
mov 0x04,r0
fmov.s @r5,fr3
mov r14,r6
add 0x18,r6
fsub fr4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r6)
mov 0x04,r0
fmov.s @r5,fr3
mov r14,r6
add 0x24,r6
fadd fr4,fr3
fmov.s fr3,@r6
fmov.s @(r0,r5),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r6)
mov 0x08,r0
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r6)
mov.l @r15,r6
bsr loc_8c1272e0
mov r14,r5
add 0x34,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c127600:
mov.l r14,@-r15
mov 0x04,r0
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov r6,r12
mov.l r11,@-r15
mov r7,r11
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s fr15,@-r15
fldi0 fr2
fmov.s fr14,@-r15
mov.l @(bank12.loc_8c1276b8,pc),r3
sts.l pr,@-r15
fmov.s @r5,fr5
fmov.s @r12,fr3
fmov.s @(r0,r5),fr6
fsub fr3,fr5
fmov.s @(r0,r12),fr3
mova @(loc_8C1276B4,pc),r0
mov.w @(loc_8C1276B2,pc),r10
fsub fr3,fr6
fmov.s @r3,fr15
fmov fr5,fr0
fmov fr6,fr3
fmul fr6,fr3
fmac fr0,fr5,fr3
fmov fr3,fr7
fcmp/eq fr2,fr7
fmov.s @r0,fr3
bf/s loc_8c127670
fmul fr3,fr15
mov 0x08,r0
fmov.s @(r0,r5),fr0
fmov.s @(r0,r12),fr1
fcmp/gt fr1,fr0
bt/s loc_8c127660
mov r13,r4
fmov fr15,fr4
bra loc_8c127666
mov r11,r6
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127660:
mov r12,r5
mov r11,r6
fmov fr15,fr4

loc_8c127666:
bsr loc_8c127580
nop
bra loc_8c12780e
add r10,r13
	nop


loc_8c127670:
fsqrt fr7
fldi1 fr4
fmov fr4,fr1
mov.l @(bank12.loc_8c1276bc,pc),r3
fmov fr6,fr14
fmov.s @r3,fr3
fdiv fr7,fr1
fmov fr1,fr7
fmul fr15,fr7
fmov fr5,fr15
fmul fr7,fr15
fmul fr7,fr14
fmov fr4,fr7
fdiv fr3,fr7
fmov fr7,fr2
fmul fr5,fr2
fmov fr7,fr1
fmul fr6,fr1
ftrc fr2,fpul
sts fpul,r4
ftrc fr1,fpul
cmp/pz r4
bt/s loc_8c1276a2
sts fpul,r6
neg r4,r4

loc_8c1276a2:
cmp/pz r6
bt loc_8c1276a8
neg r6,r6

loc_8c1276a8:
cmp/ge r6,r4
bt/s loc_8c1276c0
mov 0x08,r0
bra loc_8c1276c2
mov r4,r9

loc_8C1276B2:
#data 0x0080

#align4
loc_8C1276B4:
#data 0x3F000000

#align4
loc_8c1276b8:
#data bank16.loc_8c16be84

loc_8c1276bc:
#data bank16.loc_8c16be80


loc_8c1276c0:
mov r6,r9

loc_8c1276c2:
fmov.s @(r0,r5),fr3
mov 0x01,r3
fmov fr4,fr2
cmp/gt r3,r9
fdiv fr3,fr2
fmov.s fr2,@(r0,r5)
fmov.s @(r0,r12),fr3
fmov fr4,fr2
fdiv fr3,fr2
bt/s loc_8c1276dc
fmov.s fr2,@(r0,r12)
bra loc_8c127800
nop

loc_8c1276dc:
lds r9,fpul
mov 0x04,r0
mov.l @(loc_8C127824,pc),r14
mov.l @(loc_8C127828,pc),r2
float fpul,fr3
mov.l @(loc_8C12782C,pc),r3
mov r2,r1
fdiv fr3,fr4
fmov fr4,fr3
fmul fr6,fr3
fmov fr4,fr2
fmul fr5,fr2
fmov.s fr2,@r14
fmov.s fr3,@(r0,r14)
mov 0x08,r0
fmov.s @(r0,r5),fr2
fmov.s @(r0,r12),fr3
fsub fr3,fr2
fmul fr4,fr2
fmov.s fr2,@(r0,r14)
mov 0x04,r0
fmov.s @r12,fr3
fmov.s fr3,@r2
fmov.s @r1,fr2
fmov.s @r14,fr3
mov.l @(loc_8C127830,pc),r2
fadd fr3,fr2
fmov.s fr2,@r3
mov r2,r3
fmov.s @(r0,r12),fr3
fmov.s fr3,@r2
fmov.s @(r0,r14),fr3
fmov.s @r3+,fr2
mov 0x08,r0
mov.l @(loc_8C127838,pc),r2
mov r11,r7
fadd fr3,fr2
mov.l @(loc_8C127834,pc),r1
mov.l @(loc_8C127828,pc),r6
mov.l @(loc_8C12782C,pc),r5
fmov fr14,fr5
fmov.s fr2,@r1
add 0x04,r1
fmov.s @(r0,r12),fr3
fmov fr15,fr4
fmov.s fr3,@r2
fmov.s @r3,fr2
fmov.s @(r0,r14),fr3
fadd fr3,fr2
fmov.s fr2,@r1
bsr loc_8c1274f0
mov r13,r4
add 0xFF,r9
mov 0x01,r12
cmp/ge r9,r12
bt/s loc_8c1277a4
add r10,r13

loc_8c12774e:
mov.l @(loc_8C127828,pc),r2
mov 0x04,r0
fmov.s @r14,fr3
fmov.s @r2,fr2
mov.l @(loc_8C12782C,pc),r3
fadd fr3,fr2
fmov.s fr2,@r2
fmov.s @r3,fr2
fmov.s @r14,fr3
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127830,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127834,pc),r3
fmov.s @(r0,r14),fr3
mov 0x08,r0
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127838,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C12783C,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C12782C,pc),r5
mov r2,r6
mov r11,r7
fmov fr14,fr5
fmov fr15,fr4
bsr loc_8c127470
mov r13,r4
add 0x01,r12
cmp/ge r9,r12
bf/s loc_8c12774e
add r10,r13

loc_8c1277a4:
mov.l @(loc_8C127828,pc),r3
mov 0x04,r0
fmov.s @r14,fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C12782C,pc),r3
fmov.s @r14,fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127830,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127834,pc),r3
fmov.s @(r0,r14),fr3
mov 0x08,r0
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127838,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C12783C,pc),r3
fmov.s @(r0,r14),fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.l @(loc_8C127828,pc),r6
mov r11,r7
mov.l @(loc_8C12782C,pc),r5
fmov fr14,fr5
fmov fr15,fr4
bsr loc_8c1273f0
mov r13,r4
bra loc_8c12780c
nop
	nop
	nop
	nop
	nop
	nop


loc_8c127800:
mov r11,r7
mov r12,r6
fmov fr14,fr5
fmov fr15,fr4
bsr loc_8c127360
mov r13,r4

loc_8c12780c:
add r10,r13

loc_8c12780e:
lds.l @r15+,pr
mov r13,r0
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8C127824:
#data 0x8C2DAFD0

#align4
loc_8C127828:
#data 0x8C2DAFDC

#align4
loc_8C12782C:
#data 0x8C2DAFE8

#align4
loc_8C127830:
#data 0x8C2DAFE0

#align4
loc_8C127834:
#data 0x8C2DAFEC

#align4
loc_8C127838:
#data 0x8C2DAFE4

#align4
loc_8C12783C:
#data 0x8C2DAFF0

loc_8C127840:
mov.l @(loc_8C127A9C,pc),r3 ; r3 set to 0x8C2DAFF4
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C127AA0,pc),r2 ; r2 set to 0x8C2DAFFc
mov.l r4,@r3 ; r3 ??
rts
mov.l r4,@r2
;==============================================
	nop
	nop


loc_8C127850:
mov.l @(loc_8C127AA0,pc),r3 ; r3 set to 0x8C2DAFFc
rts
mov.l r4,@r3
;==============================================
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C127860:
#data 0x2FD62FE6
#data 0x4F222F86
#data 0x7FFC4F12
#data 0x6E43DD8d
#data 0x2F524E08
#data 0x4E0063D2
#data 0x623233Ec
#data 0x8B062228
#data 0xD38962D2
#data 0x682332Ec
#data 0x7804430b
#data 0x2802

loc_8C12788E:
#data 0x63D2
#data 0x623233Ec
#data 0x23227201
#data 0xED3C63D2
#data 0x33ECD283
#data 0x63225E31
#data 0x0D1A0ED7
#data 0x51DB3D3c
#data 0x8B132118
#data 0x65E366F2
#data 0x5662D37e
#data 0x64F2430b
#data 0x24486403
#data 0xD3768906
#data 0x2342E401
#data 0x6043A00a
	nop
	nop

#align4
loc_8C1278D0:
#data 0x420BD278
#data 0x1DEE64E3

#align4
loc_8C1278D8:
#data 0xE00052Db
#data 0x1D2B7201

#align4
loc_8C1278E0:
#data 0x4F167F04
#data 0x68F64F26
#data 0x000B6DF6
#data 0x00096EF6
#data 0xE2002FE6
#data 0x6D432FD6
#data 0x4D08DE6a
#data 0x4D002FC6
#data 0x4F222FB6
#data 0x63E24F12
#data 0x613233Dc
#data 0x8B323126
#data 0x30DC60E2
#data 0x73FF6302
#data 0x61E22032
#data 0x631231Dc
#data 0x8B282338
#data 0xEC3C6BE2
#data 0x3BDCD160
#data 0x63125BB1
#data 0x0C1A0BC7
#data 0x52CA3C3c
#data 0x8B112228
#data 0x430BD35e
#data 0x640364C3
#data 0x890B2448
#data 0xE302D254
#data 0xAFFE2232
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xD256E3Ff
#data 0x1C1BE100
#data 0x420B1C3e
#data 0x63E264B3
#data 0x33DCE2Ff
#data 0x4F161321
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FD62FE6
#data 0x2FC6D24a
#data 0x6B432FB6
#data 0x63224F22
#data 0x8F342338
#data 0xD4476E53
#data 0x3B038542
#data 0x6DB38938
#data 0x4D085346
#data 0x3D3C4D00
#data 0x200885D2
#data 0x85D28908
#data 0xA0247001
#data 0x000981D2
	nop
	nop
	nop
	nop
#data 0x85E1D33d
#data 0x430B55E2
#data 0x6C036403
#data 0x8B1F4C11
#data 0xE3FC84E2
#data 0x50E280D2
#data 0x403C700f
#data 0x80D3D337
#data 0x81D2E001
#data 0x81D360B3
#data 0x55E22DC1
#data 0x64C3430b
#data 0xD23364C3
#data 0x440856E2
#data 0x420B55E1
#data 0xA0084408
#data 0x0009E000
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4F26E001
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x6322D223
#data 0x8B062338
#data 0x6321D226
#data 0x89023433
#data 0x432BD325
#data 0x000B0009
	nop
	nop
	nop
	nop
#data 0x000BD322
#data 0x00092342
	nop
	nop
	nop
	nop
#data 0x7FF84F22
#data 0xD41E2F42
#data 0x1F51B0Ca
#data 0xE50064F2
#data 0x7F0856F1
#data 0x4F26A1B4
	nop
	nop
	nop
	nop
#data 0x7FF44F22
#data 0xD4172F42
#data 0xB0B91F51
#data 0x64F21F62
#data 0x56F255F1
#data 0xA1A37F0c
#data 0x00004F26

#align4
loc_8C127A9C:
#data 0x8C2DAFF4

#align4
loc_8C127AA0:
#data 0x8C2DAFFc
#data 0x8C2AA26c

#align4
loc_8C127AA8:
#data bank11.loc_8c11B980
#data 0x8C2DE690

#align4
loc_8C127AB0:
#data bank11.loc_8c11B640

loc_8C127AB4:
#data bank11.loc_8c11BC40

loc_8C127AB8:
#data bank17.loc_8c17C960

loc_8C127ABC:
#data bank11.loc_8c11BA00

loc_8C127AC0:
#data bank16.loc_8c16BBEc
#data 0x8C32B420

#align4
loc_8C127AC8:
#data bank11.loc_8c11BE90

loc_8C127ACC:
#data bank11.loc_8c11BF50

loc_8C127AD0:
#data bank11.loc_8c11F7F0
#data 0x8C32B424

#align4
loc_8C127AD8:
#data bank11.loc_8c11BDC0
#data 0x8C2DAFF8

#align4
loc_8C127AE0:
#data bank16.loc_8c16BED8

loc_8C127AE4:
#data bank16.loc_8c16BEEc
	nop
	nop
	nop
	nop


loc_8C127AF0:
sts.l pr,@-r15
add 0xF8,r15
mov.l r4,@r15
mov.l @(loc_8C127BE8,pc),r4 ; r4 set to 0x8C16BF00
bsr loc_8C127C00
mov.l r5,@(0x04,r15)
mov.l @r15,r4 ; r4 ??? bc r15 is ???
mov 0x00,r5 ; r5 set to 0x00
mov.l @(0x04,r15),r6
add 0x08,r15
bra loc_8C127DE0
lds.l @r15+,pr
	nop
	nop
	nop
	nop
#data 0x7FF44F22
#data 0xD4352F42
#data 0xB0711F51
#data 0x64F21F62
#data 0x56F255F1
#data 0xA15B7F0c
#data 0x00094F26
	nop
	nop
#data 0x7FF44F22
#data 0xD42E2F42
#data 0x1F621F51
#data 0x6563B0A0
#data 0x24486403
#data 0x64F28B04
#data 0x7F0C55F1
#data 0x4F26A200
#data 0x4F267F0c
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop


loc_8C127B60:
sts.l pr,@-r15
add 0xF4,r15
mov.l r4,@r15
mov.l @(loc_8C127BF4,pc),r4 ; r4 set to 0x8C16BF3c
mov.l r5,@(0x04,r15)
mov.l r6,@(0x08,r15)
bsr loc_8C127C80
mov r6,r5
mov r0,r4 ; r4 ??? bc r0 is ???
tst r4,r4
bf loc_8C127B80
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x0C,r15
bra loc_8C127F50
lds.l @r15+,pr

loc_8C127B80:
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;==============================================
	nop
	nop
	nop
	nop
#data 0x7FF44F22
#data 0xD4182F42
#data 0x1F621F51
#data 0x6563B070
#data 0x24486403
#data 0x64F28B04
#data 0x7F0C55F1
#data 0x4F26A260
#data 0x4F267F0c
#data 0x0009000b
;==============================================
	nop
	nop
	nop
	nop
#data 0x7FF44F22
#data 0xD40D2F42
#data 0x1F621F51
#data 0x6563B058
#data 0x24486403
#data 0x64F28B04
#data 0x7F0C55F1
#data 0x4F26A248
#data 0x4F267F0c
#data 0x0009000b
;==============================================

#align4
loc_8C127BE8:
#data bank16.loc_8c16BF00

loc_8C127BEC:
#data bank16.loc_8c16BF14

loc_8C127BF0:
#data bank16.loc_8c16BF28

loc_8C127BF4:
#data bank16.loc_8c16BF3c

loc_8C127BF8:
#data bank16.loc_8c16BF50

loc_8C127BFC:
#data bank16.loc_8c16BF64


loc_8C127C00:
mov.l r14,@-r15
mov 0x44,r0 ; r0 set to 0x44
mov.l @(loc_8C127D24,pc),r14 ; r14 set to 0x8C2DEC98
mov.l @(loc_8C127D28,pc),r2 ; r2 set to 0x600608
sts.l pr,@-r15
mov.l @r14,r3
mov.l r2,@r3
mov.l @r4+,r2 ; r2 ??? bc r4 is ???
mov.l @r14,r3
mov.l r2,@(0x08,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(0x0C,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(0x20,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(r0,r3)
mov 0x40,r0 ; r0 set to 0x40
mov.l @r4,r2
mov.l @r14,r3
mov.l r2,@(r0,r3)
mov.l @(loc_8C127D2C,pc),r3 ; r3 set to 0x8C17BF80
jsr @r3
mov.l @r14,r4
mov.w @(loc_8C127D20,pc),r0 ; r0 set to 0x90
mov.l @r14,r3 ; r3 ??
mov.l @(loc_8C127D30,pc),r2 ; r2 set to 0xFFFCFF3f
mov.l @(r0,r3),r1
mov.l @(loc_8C127D34,pc),r4 ; r4 set to 0x8C2DEE8c
and r2,r1
mov.l r1,@(r0,r3)
mov.l @r14,r3
mov.l @r4,r1
mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
or r1,r2
mov.l r2,@(r0,r3)
add 0x08,r0 ; r0 set to 0x98
mov.l @r14,r3
mov.l @(loc_8C127D38,pc),r2 ; r2 set to 0x31FF0Ff
mov.l @(r0,r3),r1
and r2,r1
mov.l r1,@(r0,r3)
mov.l @r14,r3
mov.l @(loc_8C127D3C,pc),r1 ; r1 set to 0x8C2AA4C4
add r0,r3
mov.l @(0x04,r4),r2 ; r2 ??
mov.l @r1,r0 ; r0 ??
mov.l @(loc_8C127D40,pc),r4 ; r4 set to 0x8C2DB048
xor 0xFC,r0
shll16 r0
shll8 r0
or r2,r0
mov.l @r3,r2
or r0,r2
mov.l r2,@r3
mov.l @r14,r5
lds.l @r15+,pr
mov.l @(loc_8C127D44,pc),r3 ; r3 set to 0x8C17C6C0
jmp @r3
mov.l @r15+,r14
	nop
	nop


loc_8C127C80:
mov.l @(loc_8C127D48,pc),r2 ; r2 set to 0x8C2AA26c
mov r5,r6
mov.l r14,@-r15
shll2 r6
sts.l pr,@-r15
shll r6
sts.l macl,@-r15
mov.l @r2,r3
add r3,r6
mov.l @r6,r1
tst r1,r1
bf loc_8C127CA0
bra loc_8C127DCa
mov 0x01,r0
	nop
	nop


loc_8C127CA0:
mov.l @(0x04,r6),r5
mov 0x3C,r6 ; r6 set to 0x3c
mov.l @(loc_8C127D4C,pc),r7 ; r7 set to 0x8C2DE690
mov 0x6C,r0 ; r0 set to 0x6c
mul.l r6,r5
mov.l @(loc_8C127D24,pc),r14 ; r14 set to 0x8C2DEC98
mov.l @r7,r2
mov.l @r14,r3
sts macl,r6
add r6,r2
mov.l r2,@(r0,r3)
mov 0x44,r0 ; r0 set to 0x44
mov.l @(loc_8C127D28,pc),r2 ; r2 set to 0x600608
mov.l @r14,r3
mov.l r2,@r3
mov.l @r4+,r2 ; r2 ??? bc r4 is ???
mov.l @r14,r3
mov.l r2,@(0x08,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(0x0C,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(0x20,r3)
mov.l @r4+,r2
mov.l @r14,r3
mov.l r2,@(r0,r3)
mov 0x40,r0 ; r0 set to 0x40
mov.l @r4,r2
mov.l @r14,r3
mov.l r2,@(r0,r3)
mov.l @r7,r0 ; r0 ??
add r6,r0
mov.l @(0x34,r0),r0
mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
shad r3, r0
and 0x07,r0
cmp/eq 0x05,r0
bt loc_8C127D00
cmp/eq 0x06,r0
bt loc_8C127D00
bra loc_8C127D7e
nop
	nop
	nop
	nop
	nop
	nop


loc_8C127D00:
mov.l @r14,r3
mov.l @(loc_8C127D50,pc),r2 ; r2 set to 0x80000
mov.l @r3,r1
mov.l @(loc_8C127D58,pc),r0 ; r0 set to 0x8C16BBEc
or r2,r1
mov.l r1,@r3
mov.l @r0,r1
mov.l @(loc_8C127D54,pc),r3 ; r3 set to 0x8C2DAFF8
tst r1,r1
bt/s loc_8C127D60
mov.l @r3,r4
mov.l @r14,r2 ; r2 ??? bc r14 is ???
mov 0x68,r0 ; r0 set to 0x68
mov.l r4,@(r0,r2)
bra loc_8C127D7e
nop

loc_8C127D20:
#data 0x0090
#data 0x0000

#align4
loc_8C127D24:
#data 0x8C2DEC98

#align4
loc_8C127D28:
#data 0x00600608

#align4
loc_8C127D2C:
#data bank17.loc_8c17BF80

loc_8C127D30:
#data 0xFFFCFF3f

#align4
loc_8C127D34:
#data 0x8C2DEE8c

#align4
loc_8C127D38:
#data 0x031FF0Ff

#align4
loc_8C127D3C:
#data 0x8C2AA4C4

#align4
loc_8C127D40:
#data 0x8C2DB048

#align4
loc_8C127D44:
#data bank17.loc_8c17C6C0

loc_8C127D48:
#data 0x8C2AA26c

#align4
loc_8C127D4C:
#data 0x8C2DE690

#align4
loc_8C127D50:
#data 0x00080000

#align4
loc_8C127D54:
#data 0x8C2DAFF8

#align4
loc_8C127D58:
#data bank16.loc_8c16BBEc
	nop
	nop

#align4
loc_8c127d60:
mov.l @(loc_8C127E84,pc),r5
mov.w @(0x04,r5),r0
cmp/ge r0,r4
bt loc_8c127d7e
mov.l @(0x18,r5),r1
shll2 r4
shll r4
add r1,r4
mov.w @(0x04,r4),r0
tst r0,r0
bt loc_8c127d7e
mov.w @r4,r2
mov 0x68,r0
mov.l @r14,r1
mov.l r2,@(r0,r1)

loc_8C127D7E:
mov.l @(loc_8C127E88,pc),r2 ; r2 set to 0x8C17BF80
jsr @r2
mov.l @r14,r4
mov.w @(loc_8C127E82,pc),r0 ; r0 set to 0x90
mov.l @r14,r3
mov.l @(loc_8C127E8C,pc),r2 ; r2 set to 0xFFFCFF3f
mov.l @(r0,r3),r1
mov.l @(loc_8C127E90,pc),r4 ; r4 set to 0x8C2DEE8c
and r2,r1
mov.l r1,@(r0,r3)
mov.l @r14,r3
mov.l @r4,r1
mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
or r1,r2
mov.l r2,@(r0,r3)
add 0x08,r0 ; r0 set to 0x98
mov.l @r14,r3
mov.l @(loc_8C127E94,pc),r2 ; r2 set to 0x31FF0Ff
mov.l @(r0,r3),r1
and r2,r1
mov.l r1,@(r0,r3)
mov.l @r14,r3
mov.l @(loc_8C127E98,pc),r1 ; r1 set to 0x8C2AA4C4
add r0,r3
mov.l @(0x04,r4),r2 ; r2 ??
mov.l @r1,r0 ; r0 ??
mov.l @(loc_8C127E9C,pc),r4 ; r4 set to 0x8C2DB048
xor 0xFC,r0
shll16 r0
shll8 r0
or r2,r0
mov.l @r3,r2
or r0,r2
mov.l r2,@r3
mov.l @(loc_8C127EA0,pc),r3 ; r3 set to 0x8C17C6C0
jsr @r3
mov.l @r14,r5
mov 0x00,r0 ; r0 set to 0x00

loc_8C127DCA:
lds.l @r15+,macl
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c127de0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xD4,r15
shll2 r5
mov.l @(bank12.loc_8c127ea4,pc),r3
shll r5
mov.l @(bank12.loc_8c127e9c,pc),r14
add r5,r3
mov r4,r12
mov.l @(loc_8C127EA8,pc),r8
mov r6,r13
mov.l r3,@(0x08,r15)
mov.l @(0x08,r14),r5
mov r8,r1
mov.l @(loc_8C127EAC,pc),r9
add 0x04,r1
mov.l @r5,r4
mov.l @(loc_8C127EB0,pc),r10
shll2 r4
mov.l r4,@(0x04,r15)
mov.l @r14,r0
mov.l @(0x04,r5),r11
mov.l @(r0,r4),r4
mov r11,r6
mov r4,r3
shlr16 r3
shlr8 r3
and r9,r4
mov.l r3,@r1
mov.l r3,@r8
or r10,r4
mov.l @(bank12.loc_8c127eb4,pc),r3
mov.l r4,@r15
jsr @r3
mov.l @(0x04,r14),r5
mov.l @r15,r2
pref @r2
mov r11,r0
cmp/eq 0x40,r0
bf loc_8c127e44
mov.l @r15,r2
add 0x20,r2
pref @r2

loc_8c127e44:
mov.l @r14,r0
shlr2 r11
mov.l @(0x04,r15),r3
shll2 r11
cmp/pl r12
mov.l @(r0,r3),r1
add r11,r1
mov.l r1,@(r0,r3)
mov.l r10,@(0x0C,r15)
mov.l @(0x08,r15),r3
add 0x04,r3
bf/s loc_8c127f38
mov.l r3,@(0x04,r15)
fldi1 fr15

loc_8c127e60:
mov r12,r0
cmp/eq 0x01,r0
bf loc_8c127e6a
mov.l @(loc_8C127EB8,pc),r2
mov.l r2,@(0x0C,r15)

loc_8c127e6a:
mov.l @(loc_8C127EBC,pc),r1
mov.l @r1,r3
tst r3,r3
bt loc_8c127ed0
mov.l @(bank12.loc_8c127ec0,pc),r3
mov r15,r5
add 0x10,r5
jsr @r3
mov r13,r4
mov 0x18,r0
bra loc_8c127ee2
fmov.s @(r0,r15),fr3

loc_8c127e82:
#data 0x0090
loc_8c127e84:
#data 0xB420
#data 0x8C32

loc_8c127e88:
#data bank17.loc_8c17BF80

loc_8c127e8c:
#data 0xFF3F
#data 0xFFFC

loc_8c127e90:
#data 0xEE8C
#data 0x8C2D

loc_8c127e94:
#data 0xF0FF
#data 0x031F

loc_8c127e98:
#data 0xA4C4
#data 0x8C2A

#align4
loc_8c127e9c:
#data 0x8C2DB048

loc_8c127ea0:
#data bank17.loc_8c17C6C0

#align4
loc_8c127ea4:
#data bank13.loc_8c13f614

loc_8C127EA8:
#data 0xFF000038

#align4
loc_8C127EAC:
#data 0x03FFFFFF

#align4
loc_8C127EB0:
#data 0xE0000000

#align4
loc_8c127eb4:
#data bank17.loc_8c17a6e0

loc_8C127EB8:
#data 0xF0000000

#align4
loc_8C127EBC:
#data 0x8C2DAFFC

#align4
loc_8c127ec0:
#data bank11.loc_8c11f8b0
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c127ed0:
fmov.s @r13,fr3
mov 0x10,r0
fmov.s fr3,@(r0,r15)
mov 0x04,r0
fmov.s @(r0,r13),fr3
mov 0x14,r0
fmov.s fr3,@(r0,r15)
mov 0x08,r0
fmov.s @(r0,r13),fr3

loc_8c127ee2:
fmov fr15,fr2
fdiv fr3,fr2
mov 0x18,r0
mov.l @(loc_8C128104,pc),r1
mov r15,r5
add 0x0C,r5
mov 0x20,r6
fmov.s fr2,@(r0,r15)
mov.l @(0x04,r15),r0
mov.l @r0,r0
shll2 r0
mov.l @(r0,r13),r3
mov.l r3,@(0x24,r15)
mov.l @(0x08,r14),r4
mov.l @r4,r4
shll2 r4
mov.l r4,@r15
mov.l @r14,r0
mov.l @(r0,r4),r4
mov r4,r3
shlr16 r3
shlr8 r3
mov r4,r11
mov.l r3,@r1
and r9,r11
mov.l r3,@r8
or r10,r11
mov.l @(bank12.loc_8c128108,pc),r3
jsr @r3
mov r11,r4
pref @r11
mov.l @r14,r0
add 0xFF,r12
mov.l @r15,r3
cmp/pl r12
mov.l @(r0,r3),r2
add 0x20,r2
mov.l r2,@(r0,r3)
mov.l @(0x08,r15),r3
mov.l @r3,r2
shll2 r2
bt/s loc_8c127e60
add r2,r13

loc_8c127f38:
add 0x2C,r15
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop

loc_8c127f50:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0xFFFB
#data 0x4F22
#data 0x7FD8
#data 0xDD69
#data 0x6E53
#data 0x6C43
#data 0xD169
#data 0x55D2
#data 0xD865
#data 0x6452
#data 0xD968
#data 0x4408
#data 0xDA68
#data 0x1F41
#data 0x60D2
#data 0x5B51
#data 0x044E
#data 0x66B3
#data 0x6343
#data 0x4329
#data 0x4319
#data 0x2499
#data 0x2832
#data 0x2132
#data 0x24AB
#data 0xD35D
#data 0x2F42
#data 0x430B
#data 0x55D1
#data 0x62F2
#data 0x0283
#data 0x60B3
#data 0x8840
#data 0x8B02
#data 0x62F2
#data 0x7220
#data 0x0283

loc_8c127fa8:
#data 0x60D2
#data 0x4B09
#data 0x53F1
#data 0x4B08
#data 0x4C15
#data 0x013E
#data 0x31BC
#data 0x0316
#data 0x8F48
#data 0x1FA2
#data 0xFF9D

loc_8c127fbe:
#data 0x60C3
#data 0x8801
#data 0x8B01
#data 0xD355
#data 0x1F32

loc_8c127fc8:
#data 0xD155
#data 0x6212
#data 0x2228
#data 0x8907
#data 0xD354
#data 0x65F3
#data 0x750C
#data 0x430B
#data 0x64E3
#data 0xE014
#data 0xA009
#data 0xF3F6

loc_8c127fe0:
#data 0xF3E8
#data 0xE00C
#data 0xFF37
#data 0xE004
#data 0xF3E6
#data 0xE010
#data 0xFF37
#data 0xE008
#data 0xF3E6

loc_8c127ff2:
#data 0xF2FC
#data 0xF233
#data 0xE014
#data 0xD145
#data 0x65F3
#data 0x7508
#data 0xE620
#data 0xFF27
#data 0xE00C
#data 0xF3E6
#data 0xE018
#data 0xFF37
#data 0xE010
#data 0xF3E6
#data 0xE01C
#data 0xFF37
#data 0x53E5
#data 0x1F38
#data 0x54D2
#data 0x6442
#data 0x4408
#data 0x2F42
#data 0x60D2
#data 0x044E
#data 0x6343
#data 0x6B43
#data 0x4329
#data 0x2B99
#data 0x4319
#data 0x2832
#data 0x2BAB
#data 0x2132
#data 0xD335
#data 0x430B
#data 0x64B3
#data 0x0B83
#data 0x60D2
#data 0x7CFF
#data 0x63F2
#data 0x4C15
#data 0x023E
#data 0x7220
#data 0x0326
#data 0x8DB9
#data 0x7E1C

loc_8c12804c:
#data 0x7F28
#data 0x4F26
#data 0xFFF9
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0xFFFB
#data 0x4F22
#data 0x7FD8
#data 0xDD21
#data 0x6E53
#data 0x6C43
#data 0xD821
#data 0x55D2
#data 0x6183
#data 0xD920
#data 0x6452
#data 0x7104
#data 0xDA20
#data 0x4408
#data 0x1F41
#data 0x60D2
#data 0x5B51
#data 0x044E
#data 0x66B3
#data 0x6343
#data 0x4329
#data 0x4319
#data 0x2499
#data 0x2132
#data 0x2832
#data 0x24AB
#data 0xD315
#data 0x2F42
#data 0x430B
#data 0x55D1
#data 0x62F2
#data 0x0283
#data 0x60B3
#data 0x8840
#data 0x8B02
#data 0x62F2
#data 0x7220
#data 0x0283
#data 0x60D2
#data 0x4B09
#data 0x53F1
#data 0x4B08
#data 0x4C15
#data 0x013E
#data 0x31BC
#data 0x0316
#data 0x8F61
#data 0x1FA2
#data 0xFF9D
#data 0x60C3
#data 0x8801
#data 0x8B01
#data 0xD30D
#data 0x1F32
#data 0xD10D
#data 0x6212
#data 0x2228
#data 0x891E
#data 0xD30C
#data 0x65F3
#data 0x750C
#data 0x430B
#data 0x64E3
#data 0xE014
#data 0xA020
#data 0xF3F6
#data 0x0000

#align4
loc_8C128104:
#data 0xFF00003C

#align4
loc_8c128108:
#data bank17.loc_8c17a6e0
#data 0xB048
#data 0x8C2D
#data 0x0038
#data 0xFF00
#data 0xFFFF
#data 0x03FF
#data 0x0000
#data 0xE000
#data 0x0000
#data 0xF000
#data 0xAFFC
#data 0x8C2D

loc_8c128124:
#data 0xF8B0
#data 0x8C11
	nop
	nop
	nop
	nop
#data 0xF3E8
#data 0xE00C
#data 0xFF37
#data 0xE004
#data 0xF3E6
#data 0xE010
#data 0xFF37
#data 0xE008
#data 0xF3E6
#data 0xF2FC
#data 0xF233
#data 0xE014
#data 0xD11B
#data 0xE620
#data 0xFF27
#data 0xE00C
#data 0xF3E6
#data 0xE018
#data 0xFF37
#data 0xE010
#data 0xF3E6
#data 0xE01C
#data 0xFF37
#data 0x53E5
#data 0x1F38
#data 0x52E6
#data 0x1F29
#data 0x54D2
#data 0x6442
#data 0x4408
#data 0x2F42
#data 0x60D2
#data 0x044E
#data 0x6343
#data 0x6B43
#data 0x4329
#data 0x2B99
#data 0x4319
#data 0x2BAB
#data 0x2132
#data 0x2832
#data 0xD30E
#data 0x65F3
#data 0x7508
#data 0x430B
#data 0x64B3
#data 0x0B83
#data 0x60D2
#data 0x7CFF
#data 0x63F2
#data 0x4C15
#data 0x023E
#data 0x7220
#data 0x0326
#data 0x8DA0
#data 0x7E1C
#data 0x7F28
#data 0x4F26
#data 0xFFF9
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x0000
#data 0x003C
#data 0xFF00

loc_8c1281bc:
#data bank17.loc_8c17A6E0

loc_8c1281c0:
#data 0x2FE6
#data 0x4F22
#data 0xDE3E

loc_8c1281c6:
#data 0x4E0B
	nop
#data 0x8801
#data 0x8D03
#data 0x6403
#data 0x6043
#data 0x8803
#data 0x8BF7

loc_8c1281d6:
#data 0x4F26
#data 0x6043
#data 0x000B
#data 0x6EF6
;==============================================

loc_8c1281de:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x6B43
#data 0x2FA6
#data 0x4F22
#data 0x9E63

loc_8c1281ee:
#data 0x9C63
#data 0x65E3
#data 0xED3C
#data 0xDA33
#data 0x35CC
#data 0x05D7
#data 0x051A
#data 0x35BC
#data 0x4A0B
#data 0x64E3
#data 0x6403
#data 0x2448
#data 0x8B04
#data 0xBFDA
	nop
#data 0x8801
#data 0x8D02
#data 0x6403

loc_8c128212:
#data 0xA005
#data 0x6043

loc_8c128216:
#data 0x9450
#data 0x7E01
#data 0x3E47
#data 0x8BE7
#data 0xE000

loc_8c128220:
#data 0x4F26
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x6843
#data 0x4F22
#data 0xD321
#data 0x943B
#data 0x430B
	nop
#data 0x6903
#data 0x2998
#data 0x8929
#data 0xBFC6
#data 0x6493
#data 0xEA00
#data 0x9D2F
#data 0xEB00
#data 0x3B9C
#data 0xEC00
#data 0x3A8C
#data 0xE63C
#data 0xD31A
#data 0x6563
#data 0x0C57
#data 0x051A
#data 0x358C
#data 0x430B
#data 0x64B3
#data 0x2008
#data 0x890B
#data 0xDE17
#data 0x65A3
#data 0x4E0B
#data 0x64D3
#data 0x6E03
#data 0x2EE8
#data 0x8B0E
#data 0xBF9E
	nop
#data 0x8801
#data 0x8F0A
#data 0x6E03
#data 0xE40C
#data 0x7C01
#data 0x3C43
#data 0x7D01
#data 0x7A3C
#data 0x8FE3
#data 0x7B3C
#data 0xD30E
#data 0x430B
#data 0x6493
#data 0xA001
#data 0x60E3
#data 0xE0FE
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6
;==============================================
#data 0x00C0
#data 0xFF40
#data 0x00CB
#data 0x02D0
#data 0x0000

loc_8c1282c0:
#data bank18.loc_8c18B714

loc_8c1282c4:
#data bank18.loc_8c18B698

loc_8c1282c8:
#data bank17.loc_8c177CF4

loc_8c1282cc:
#data 0x8C12F098

loc_8c1282d0:
#data bank18.loc_8c18B6D4

loc_8c1282d4:
#data bank17.loc_8c177DC2

loc_8c1282d8:
#data 0xD32F
#data 0x6532
#data 0x2558
#data 0x8916
#data 0xD62E
#data 0x2448
#data 0x8902
#data 0x6043
#data 0x8801
#data 0x8B04

loc_8c1282ec:
#data 0x5351
#data 0x3360
#data 0x8907
#data 0xA008
	nop

loc_8c1282f6:
#data 0x8802
#data 0x8B07
#data 0x904A
#data 0x035E
#data 0x3360
#data 0x8B01

loc_8c128302:
#data 0x000B
#data 0xE000
;==============================================

loc_8c128306:
#data 0x000B
#data 0xE0FD
;==============================================

loc_8c12830a:
#data 0x000B
#data 0xE0FE
;==============================================

loc_8c12830e:
#data 0xE0FF
#data 0x000B
	nop
;==============================================

loc_8c128314:
#data 0x4F22
#data 0x7FFC
#data 0xD321
#data 0x6543
#data 0x2F42
#data 0x430B
#data 0xE402
#data 0x88F8
#data 0x8F04
#data 0x6403
#data 0xD31E
#data 0x430B
#data 0xE400
#data 0x6403

loc_8c128330:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x6043

loc_8C128338:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C128398,pc),r14 ; r14 set to 0x8C16BF7c
mov.l r4,@r15
mov.l @r14,r3
tst r3,r3
bf loc_8C1283D6
mov.l @(loc_8C1283AC,pc),r13 ; r13 set to 0x8C16BF78
tst r5,r5
mov.l @(loc_8C1283A8,pc),r12 ; r12 set to 0x8C16BF80
bf loc_8C128368
mov.l @(loc_8C1283B0,pc),r2 ; r2 set to 0x8C177CF4
mov.w @(loc_8C128394,pc),r4 ; r4 set to 0x4000
jsr @r2
nop
mov r0,r3
tst r3,r3
bt/s loc_8C12838e
mov.l r0,@r13 ; r13 ??? bc r0 is ???
bra loc_8C128370
nop

loc_8C128368:
mov.l r5,@r13
mov.l @r12,r0
or 0x01,r0
mov.l r0,@r12

loc_8C128370:
bsr loc_8C128314
mov.l @r13,r4
tst r0,r0
bf loc_8C1283D2
mov.l @r15,r2
tst r2,r2
bf loc_8C1283B4
mov.l @(loc_8C1283B0,pc),r3 ; r3 set to 0x8C177CF4
mov.w @(loc_8C128396,pc),r4 ; r4 set to 0x2D0
jsr @r3
nop
mov r0,r2
tst r2,r2
bf/s loc_8C1283Be
mov.l r0,@r14

loc_8C12838E:
bra loc_8C1283D8
mov 0xFE,r0
#data 0x0168

loc_8C128394:
#data 0x4000

loc_8C128396:
#data 0x02D0

#align4
loc_8C128398:
#data bank16.loc_8c16BF7c
#data 0x41474553

#align4
loc_8C1283A0:
#data bank18.loc_8c18B508

loc_8C1283A4:
#data bank18.loc_8c18B60c

loc_8C1283A8:
#data bank16.loc_8c16BF80

loc_8C1283AC:
#data bank16.loc_8c16BF78

loc_8C1283B0:
#data bank17.loc_8c177CF4

loc_8c1283b4:
mov.l @r15,r2
mov.l r2,@r14
mov.l @r12,r0
or 0x02,r0
mov.l r0,@r12

loc_8c1283be:
mov.l @(bank12.loc_8c1284bc,pc),r3
mov 0x00,r5
mov.w @(loc_8C1284B8,pc),r6
jsr @r3
mov.l @r14,r4
bsr bank12.loc_8c1281de
mov.l @r14,r4
mov r0,r4
tst r4,r4
bt bank12.loc_8c1283d6

loc_8C1283D2:
bra loc_8C1283D8
mov 0xFF,r0

loc_8C1283D6:
mov 0x00,r0 ; r0 set to 0x00

loc_8C1283D8:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

#align4
loc_8c1283e4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(bank12.loc_8c1284c4,pc),r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @r13,r3
mov.l @(bank12.loc_8c1284c0,pc),r12
tst r3,r3
bt/s loc_8c12840c
mov 0x00,r14
mov.l @(bank12.loc_8c1284c8,pc),r3
jsr @r3
nop
mov.l @r12,r0
tst 0x01,r0
bf loc_8c12840a
mov.l @(bank12.loc_8c1284cc,pc),r3
jsr @r3
mov.l @r13,r4

loc_8c12840a:
mov.l r14,@r13

loc_8c12840c:
mov.l @(bank12.loc_8c1284d0,pc),r2
mov.l @r2,r4
tst r4,r4
bt loc_8c128424
mov.l @r12,r0
tst 0x02,r0
bf loc_8c128420
mov.l @(bank12.loc_8c1284cc,pc),r3
jsr @r3
nop

loc_8c128420:
mov.l @(bank12.loc_8c1284d0,pc),r2
mov.l r14,@r2

loc_8c128424:
mov.l r14,@r12
mov 0x00,r0
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14

loc_8C128432:
sts.l pr,@-r15
add 0xFC,r15
mov 0x00,r5 ; r5 set to 0x00
bsr loc_8C128338
mov r5,r4 ; r4 set to 0x00
bsr loc_8C1282D8
mov 0x00,r4 ; r4 set to 0x00
bsr loc_8C1283E4
mov.l r0,@r15
mov.l @r15,r0
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x4F22
#data 0x2F427FFc
#data 0xE400BF40
#data 0x24486403
#data 0xD11C8B03
#data 0x621263F2
#data 0x7F042322
#data 0x000B4F26
#data 0x2FE66043
#data 0x7FFC4F22
#data 0xBF2F2F52
#data 0x65036E43
#data 0x8B162558
#data 0x2EE8D313
#data 0x64328F06
#data 0xC8016042
#data 0xA0018901
#data 0xEE01EE02
#data 0x880160E3
#data 0x62438B05
#data 0x720463F2
#data 0xA0042322
#data 0x93080009
#data 0x334C61F2
#data 0x60532132
#data 0x4F267F04
#data 0x6EF6000b
;==============================================
loc_8c1284b8:
#data 0x016802D0

#align4
loc_8C1284BC:
#data loc_8c129728

loc_8C1284C0:
#data bank16.loc_8c16BF80

loc_8C1284C4:
#data bank16.loc_8c16BF78

loc_8C1284C8:
#data bank18.loc_8c18B7A8

loc_8C1284CC:
#data bank17.loc_8c177DC2

loc_8C1284D0:
#data bank16.loc_8c16BF7c
#data 0x7FFC4F22
#data 0xBEFD2F42
#data 0x6403E400
#data 0x8B042448
#data 0x63F2D138
#data 0x60226212
#data 0x7F042302
#data 0x000B4F26
#data 0x2FE66043
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0xBEE92F52
#data 0x6C036E43
#data 0x8B162CC8
#data 0x2EE8D32e
#data 0x6D328F06
#data 0xC80160D2
#data 0xA0018901
#data 0xEE01EE02
#data 0x880160E3
#data 0x65D38B03
#data 0xA003E61c
#data 0x95487508
#data 0x35DCE61c
#data 0x430BD325
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BEC0
#data 0x2CC86C03
#data 0xD31A8B16
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B038801
#data 0xE61065D3
#data 0x7524A003
#data 0xE6109520
#data 0xD31135Dc
#data 0x64F2430b
#data 0x7F0460C3
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0xBE972F52
#data 0x6C036E43
#data 0x8B1D2CC8
#data 0x2EE8D305
#data 0x6D328F0d
#data 0xC80160D2
#data 0xA0088908
#data 0x016CEE02
#data 0x00000188

#align4
loc_8C1285C8:
#data bank16.loc_8c16BF7c

loc_8C1285CC:
#data loc_8c1297D4
#data 0x60E3EE01
#data 0x8B038801
#data 0xE67865D3
#data 0x7534A003
#data 0xE678956d
#data 0xD33935Dc
#data 0x64F2430b
#data 0x7F0460C3
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x7FF84F22
#data 0x1F612F52
#data 0x6E43BE64
#data 0x2AA86A03
#data 0xDB2E8B22
#data 0x8F062EE8
#data 0x60D26DB2
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8801DC27
#data 0x95458B09
#data 0x35DCE604
#data 0x64F24C0b
#data 0x65B29341
#data 0xA009353c
#data 0x953DE604
#data 0x35DCE604
#data 0x64F24C0b
#data 0xE6049339
#data 0x353C65B2
#data 0x54F14C0b
#data 0x7F0860A3
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0xBE2D2F52
#data 0x6C036E43
#data 0x8B152CC8
#data 0x2EE8D312
#data 0x6D328F06
#data 0xC80160D2
#data 0xA0018901
#data 0xEE01EE02
#data 0x880160E3
#data 0x95138B02
#data 0xE630A002
#data 0xE6309511
#data 0x35DCD30a
#data 0x64F2430b
#data 0x7F0460C3
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01986EF6
#data 0x00B000Ac
#data 0x02140210
#data 0x021800B4

#align4
loc_8C1286CC:
#data loc_8c129668

loc_8C1286D0:
#data bank16.loc_8c16BF7c

loc_8C1286D4:
#data loc_8c1297D4
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BDF8
#data 0x2CC86C03
#data 0xD3398B15
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B028801
#data 0xA002955e
#data 0x955CE620
#data 0xD331E620
#data 0x430B35Dc
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BDD0
#data 0x2CC86C03
#data 0xD3258B15
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B028801
#data 0xA0029538
#data 0x9536E620
#data 0xD31DE620
#data 0x430B35Dc
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BDA8
#data 0x2CC86C03
#data 0xD3118B15
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B028801
#data 0xA0029512
#data 0x9510E610
#data 0xD309E610
#data 0x430B35Dc
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x024800E4
#data 0x02680104
#data 0x02880124

#align4
loc_8C1287D4:
#data bank16.loc_8c16BF7c

loc_8C1287D8:
#data loc_8c1297D4
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BD76
#data 0x2CC86C03
#data 0xD3388B15
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B028801
#data 0xA002955b
#data 0x9559E610
#data 0xD330E610
#data 0x430B35Dc
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FFc
#data 0x6E43BD4e
#data 0x2CC86C03
#data 0xD3248B15
#data 0x8F062EE8
#data 0x60D26D32
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B028801
#data 0xA0029535
#data 0x9533E620
#data 0xD31CE620
#data 0x430B35Dc
#data 0x60C364F2
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x4F222FE6
#data 0x2F527FFc
#data 0x6E43BD28
#data 0x25586503
#data 0xD3118B16
#data 0x8F062EE8
#data 0x60426432
#data 0x8901C801
#data 0xEE02A001
#data 0x60E3EE01
#data 0x8B058801
#data 0x63F29011
#data 0x2321024d
#data 0x0009A004
#data 0x61F2900c
#data 0x2131034d
#data 0x7F046053
#data 0x000B4F26
#data 0x01346EF6
#data 0x01440298
#data 0x016402A8
#data 0x000002C8

#align4
loc_8C1288D4:
#data bank16.loc_8c16BF7c

loc_8C1288D8:
#data loc_8c1297D4
#data 0xD42C4F22
#data 0x0009B30e
#data 0xE200D32a
#data 0x2320E00c
#data 0xD3296233
#data 0x430B3F08
#data 0xB1EB61F3
#data 0x7F0C0009
#data 0x000B4F26
#data 0x4F220009
#data 0xB2FBD422
#data 0xD3210009
#data 0xE00CE201
#data 0x62332320
#data 0x3F08D31f
#data 0x61F3430b
#data 0x0009B1D8
#data 0x4F267F0c
#data 0x0009000b
;==============================================
#data 0xD21BD11c
#data 0x63226012
#data 0x3038000b
;==============================================
#data 0x000BD318
#data 0xD11A6032
#data 0x6012D218
#data 0x000B6322
#data 0xD3163038
#data 0x6032000b
;==============================================
#data 0x00027FFc
#data 0x4009931d
#data 0xC90F4009
#data 0x00022F01
#data 0xCBF02039
#data 0xD310400e
#data 0xD111D012
#data 0x2242D20f
#data 0xE3002362
#data 0x910C2152
#data 0x2272D209
#data 0x60F12030
#data 0xC90F0302
#data 0x23194008
#data 0x203B4008
#data 0x000B400e
#data 0xFF0F7F04
#data 0x8C2DB004

#align4
loc_8C128994:
#data loc_8c129620
#data 0x8C2DF104
#data 0x8C2DF0E4
#data 0x8C2DF0F4
#data 0x8C2DF0E0
#data 0x8C2DF0E8
#data 0x8C2DF0F8
#data 0x8C2DB02c
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDB437FFc
#data 0x880160B0
#data 0x00028976
#data 0x4009937e
#data 0xC90F4009
#data 0x00022F01
#data 0xCBF02039
#data 0xD13D400e
#data 0xD33EEE00
#data 0xD03C6212
#data 0x2022D546
#data 0xD33C2322
#data 0x6132D23c
#data 0x2212D33d
#data 0xD23DD13b
#data 0xD13E6012
#data 0x22022302
#data 0xD23B60E3
#data 0x6322DA3c
#data 0xD33C2132
#data 0x23E22AE2
#data 0x805125E0
#data 0xD53B8151
#data 0xDC3B2500
#data 0xDD3BE201
#data 0x2C028051
#data 0x1C021C01
#data 0x1C041C03
#data 0x2D20E002
#data 0xE00380D1
#data 0x60E380D2
#data 0xE03380D3
#data 0x80D6D234
#data 0xD13460E3
#data 0x80D880D7
#data 0x80DA80D9
#data 0x1C2580Db
#data 0x2C42410b
#data 0xD3311C06
#data 0x430BDC2f
#data 0x62030009
#data 0x2C02D429
#data 0x430B6322
#data 0x20080009
#data 0x2BE08902
#data 0xE4FFA015
#data 0xD42084A3
#data 0x80A3CB01
#data 0x532262C2
#data 0x0009430b
#data 0xD326E201
#data 0x2AE2E00c
#data 0x3F082B20
#data 0x430B62D3
#data 0xB11961F3
#data 0x7F0C0009
#data 0x60F1E401
#data 0x92110302
#data 0x4008C90f
#data 0x40082329
#data 0x400E203b
#data 0x0009A001
#data 0x6043E4Ff
#data 0x4F267F04
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;==============================================
#data 0x0000FF0f
#data 0x8C2DB02c
#data 0x8C2DF0F8
#data 0x8C2DF100
#data 0x8C2DF0Fc
#data 0x8C2DF0E4
#data 0x8C2DF104
#data 0x8C2DF0E8
#data 0x8C2DF0F0
#data 0x8C2DF0Ec
#data 0x8C2DF0E0
#data 0x8C2DF0F4
#data 0x8C2DF110
#data 0x8C2DF114
#data 0x8C2DF108
#data 0x8C2DF10c
#data 0x8C2DB010
#data 0x8C2DB004

#align4
loc_8C128B14:
#data bank13.loc_8c13f6Dc

loc_8C128B18:
#data loc_8c12E584
#data 0x8C2DB000

#align4
loc_8C128B20:
#data bank18.loc_8c18BD54

loc_8C128B24:
#data loc_8c129620
#data 0x2FC62FE6
#data 0x7FF84F22
#data 0x2F62D23a
#data 0x23386320
#data 0x6E638D4c
#data 0x936C0002
#data 0x40094009
#data 0x81F2C90f
#data 0x20390002
#data 0x400ECBF0
#data 0xD436D635
#data 0xD033DC32
#data 0x0009A012
#data 0x72016242
#data 0x72FF2422
#data 0x25106120
#data 0x63627501
#data 0x26327301
#data 0x620267C2
#data 0x327C6342
#data 0x8F013322
#data 0x24727EFf
#data 0xE1006202
#data 0x32386362
#data 0x8B013216
#data 0x89E54E15
#data 0x6000D027
#data 0x0029C840
#data 0x600B70Ff
#data 0x8B178801
#data 0xD125D224
#data 0xD4256020
#data 0x2200CB40
#data 0x50326312
#data 0x0009400b
#data 0xE300D221
#data 0x85F22232
#data 0x922C0302
#data 0x4008C90f
#data 0x40082329
#data 0x400E203b
#data 0x0009A004
#data 0x0009AFFe
#data 0xE000A002
#data 0x30E860F2
#data 0x4F267F08
#data 0x000B6CF6
#data 0x2FE66EF6
#data 0x4F222FC6
#data 0xD20B7FF8
#data 0x63202F62
#data 0x8D622338
#data 0x00026E63
#data 0x4009930d
#data 0xC90F4009
#data 0x000281F2
#data 0xCBF02039
#data 0xD60E400e
#data 0xDC0BD40e
#data 0xA02BD00b
#data 0xFF0F0009
#data 0x8C2DB02c
#data 0x8C2DF0F8
#data 0x8C2DF0E4
#data 0x8C2DF104
#data 0x8C2DF0Fc
#data 0x8C2DF117
#data 0x8C2DF113
#data 0x8C2DB000
#data 0x8C2DF110
#data 0x8C2DF0E0
#data 0x8C2DF0E8
#data 0x8C2DF0F4
#data 0x8C2DF0F0
#data 0x73016342
#data 0x62542432
#data 0x63622324
#data 0x263273Ff
#data 0x670262C2
#data 0x327C6342
#data 0x8F013322
#data 0x24727EFf
#data 0x43156362
#data 0x4E158B01
#data 0xD04589Ea
#data 0xC8806000
#data 0x70FF0029
#data 0x8801600b
#data 0xD2428B17
#data 0x6020D142
#data 0xCB80D442
#data 0x63122200
#data 0x400B5032
#data 0xD23F0009
#data 0x2232E300
#data 0x030285F2
#data 0xC90F9270
#data 0x23294008
#data 0x203B4008
#data 0xA004400e
#data 0xAFFE0009
#data 0xA0020009
#data 0x60F2E000
#data 0x7F0830E8
#data 0x6CF64F26
#data 0x6EF6000b
;==============================================
#data 0x7FFC4F22
#data 0x6320D232
#data 0x89652338
#data 0x93550002
#data 0x40094009
#data 0x2F01C90f
#data 0x20390002
#data 0x400ECBF0
#data 0x65F3D42c
#data 0x60407508
#data 0xC9FE6150
#data 0x2400201b
#data 0xC9FD6040
#data 0x84516303
#data 0x2400203b
#data 0x004CE001
#data 0x6303C9Fc
#data 0x203B8452
#data 0xE0018041
#data 0xC9FB004c
#data 0x84546303
#data 0x8041203b
#data 0x004CE001
#data 0x6303C9C7
#data 0x203B8453
#data 0xE0018041
#data 0xC9BF004c
#data 0x84556303
#data 0x8041203b
#data 0x81418456
#data 0x6000D011
#data 0x0029C820
#data 0x600B70Ff
#data 0x8B178801
#data 0xD410D10e
#data 0xCB206010
#data 0xD00D2100
#data 0x52326302
#data 0x0009420b
#data 0xE300D20b
#data 0x60F12232
#data 0x92090302
#data 0x4008C90f
#data 0x40082329
#data 0x400E203b
#data 0x0009A010
#data 0x0009AFFe
#data 0x0000FF0f
#data 0x8C2DF117
#data 0x8C2DF113
#data 0x8C2DB000
#data 0x8C2DF110
#data 0x8C2DB02c
#data 0x8C2DF108
#data 0x4F267F04
#data 0x0009000b
;==============================================
#data 0x7FFC4F22
#data 0x6100D04b
#data 0x89572118
#data 0x93900002
#data 0x40094009
#data 0x2F01C90f
#data 0x20390002
#data 0x400ECBF0
#data 0x65F3D445
#data 0x60407508
#data 0xC9FE6250
#data 0x2400202b
#data 0xC9FD6040
#data 0x84516303
#data 0x2400203b
#data 0x004CE001
#data 0x6303C9Fc
#data 0x203B8452
#data 0xE0018041
#data 0xC9FB004c
#data 0x84546303
#data 0x8041203b
#data 0x004CE001
#data 0x6303C9C7
#data 0x203B8453
#data 0xE0018041
#data 0xC9BF004c
#data 0x84556303
#data 0x8041203b
#data 0x81418456
#data 0x6000D030
#data 0x0029C820
#data 0x600B70Ff
#data 0x8B178801
#data 0xD12ED22d
#data 0xD42E6020
#data 0x2200CB20
#data 0x50326312
#data 0x0009400b
#data 0xE300D22a
#data 0x60F12232
#data 0x92440302
#data 0x4008C90f
#data 0x40082329
#data 0x400E203b
#data 0x0009A002
#data 0x0009AFFe
#data 0x4F267F04
#data 0x0009000b
;==============================================
#data 0xE3F9D41c
#data 0xC9016040
#data 0x60402500
#data 0x8051C902
#data 0x004CE001
#data 0x8052C903
#data 0x004CE001
#data 0x8053C938
#data 0x004CE001
#data 0x8054C904
#data 0x004CE001
#data 0x8055C940
#data 0xD4158442
#data 0x60408056
#data 0xC980600c
#data 0x805A403c
#data 0xE3FA6040
#data 0xC940600c
#data 0x8059403c
#data 0x6040E3Fb
#data 0xC920600c
#data 0x8058403c
#data 0x6040E3Fc
#data 0xC910600c
#data 0x8057403c
#data 0x004CE001
#data 0x000BC901
#data 0xFF0F805b
#data 0x8C2DB02c
#data 0x8C2DF108
#data 0x8C2DF117
#data 0x8C2DF113
#data 0x8C2DB000
#data 0x8C2DF110
#data 0x8C2DF10c
#data 0xE3F9D53b
#data 0xC9016050
#data 0x60502400
#data 0x8041C902
#data 0x005CE001
#data 0x8042C903
#data 0x005CE001
#data 0x8043C938
#data 0x005CE001
#data 0x8044C904
#data 0x005CE001
#data 0x8045C940
#data 0xD5308452
#data 0x60508046
#data 0xC980600c
#data 0x804A403c
#data 0xE3FA6050
#data 0xC940600c
#data 0x8049403c
#data 0x6050E3Fb
#data 0xC920600c
#data 0x8048403c
#data 0x6050E3Fc
#data 0xC910600c
#data 0x8047403c
#data 0x005CE001
#data 0x000BC901
#data 0x4F22804b
#data 0xD2217FFc
#data 0x23386320
#data 0x00028935
#data 0x40099337
#data 0xC90F4009
#data 0x00022F01
#data 0xCBF02039
#data 0xD01B400e
#data 0x6102D21c
#data 0xD31AD01e
#data 0x22122312
#data 0xD11BD21a
#data 0x21326322
#data 0xC8046000
#data 0x70FF0029
#data 0x8801600b
#data 0xD2188B17
#data 0x6020D419
#data 0x2200CB04
#data 0x6302D016
#data 0x410B5132
#data 0xD2150009
#data 0x2232E300
#data 0x030260F1
#data 0xC90F920d
#data 0x23294008
#data 0x203B4008
#data 0xA002400e
#data 0xAFFE0009
#data 0x7F040009
#data 0x000B4F26
#data 0xFF0F0009
#data 0x8C2DF108
#data 0x8C2DF10c
#data 0x8C2DB02c
#data 0x8C2DF0E8
#data 0x8C2DF0F0
#data 0x8C2DF0Ec
#data 0x8C2DF0E0
#data 0x8C2DF0F4
#data 0x8C2DF117
#data 0x8C2DF113
#data 0x8C2DB000
#data 0x8C2DF110
#data 0x7FFC4F22
#data 0x6100D035
#data 0x89352118
#data 0x93640002
#data 0x40094009
#data 0x2F01C90f
#data 0x20390002
#data 0x400ECBF0
#data 0xD030D12f
#data 0xD3306212
#data 0xD0322022
#data 0xD32F2322
#data 0x6132D22f
#data 0x60002212
#data 0x0029C802
#data 0x600B70Ff
#data 0x8B178801
#data 0xD42ED12c
#data 0xCB026010
#data 0xD02B2100
#data 0x52326302
#data 0x0009420b
#data 0xE300D229
#data 0x60F12232
#data 0x923A0302
#data 0x4008C90f
#data 0x40082329
#data 0x400E203b
#data 0x0009A002
#data 0x0009AFFe
#data 0x4F267F04
#data 0x0009000b
;==============================================

#align4
loc_8C1290A0:
#data 0x7FF84F22
#data 0x6100D015
#data 0x89202118
#data 0x93240002
#data 0x40094009
#data 0x2F01C90f
#data 0x20390002
#data 0x400ECBF0
#data 0xE201D116
#data 0x64F31F21
#data 0x52316312
#data 0x7404420b
#data 0x430BD314
#data 0xD3090009
#data 0x910EE200
#data 0x60F12320
#data 0xC90F0202
#data 0x22194008
#data 0x202B4008
#data 0x400e

loc_8C1290EE:
#data 0x7F08
#data 0x000B4F26
	nop
;==============================================

loc_8C1290F6:
rts
nop
;==============================================
#data 0xFF0f
#data 0x8C2DB02c
#data 0x8C2DF0F8
#data 0x8C2DF100
#data 0x8C2DF0Fc
#data 0x8C2DF0E4
#data 0x8C2DF104
#data 0x8C2DF117
#data 0x8C2DF113
#data 0x8C2DB000
#data 0x8C2DF110

#align4
loc_8C129124:
#data loc_8c12E5A0


loc_8C129128:
tst r0,r0
mov.l r2,@-r15
bt loc_8C1291C6
mov.l r3,@-r15
mov 0x00,r2 ; r2 set to 0x00
div0s r2,r1
subc r3,r3
subc r2,r1
div0s r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
div1 r0,r3
rotcl r1
addc r2,r1
mov r1,r0
mov.l @r15+,r3
rts
mov.l @r15+,r2
;==============================================

loc_8C1291C6:
mov.l @(loc_8C1291D4,pc),r1 ; r1 set to 0x8C2DF14c
mov.l @(loc_8C1291D8,pc),r2 ; r2 set to 0x44e
mov 0x00,r0 ; r0 set to 0x00
mov.l r2,@r1 ; r1 ??
rts
mov.l @r15+,r2
;==============================================
	nop

#align4
loc_8C1291D4:
#data 0x8C2DF14c

#align4
loc_8C1291D8:
#data 0x0000044e


loc_8C1291DC:
tst r0,r0
mov.l r2,@-r15
bt loc_8C12926e
mov 0x00,r2 ; r2 set to 0x00
div0u
rotcl r1
div1 r0,r2 ; r2 ??? bc r0 is ???
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
div1 r0,r2
rotcl r1
mov r1,r0
rts
mov.l @r15+,r2
;==============================================

loc_8C12926E:
mov.l @(loc_8C12927C,pc),r2 ; r2 set to 0x8C2DF14c
mov.l @(loc_8C129280,pc),r1 ; r1 set to 0x44e
mov 0x00,r0 ; r0 set to 0x00
mov.l r1,@r2 ; r2 ??
rts
mov.l @r15+,r2
;==============================================
	nop

#align4
loc_8C12927C:
#data 0x8C2DF14c

#align4
loc_8C129280:
#data 0x0000044e


loc_8C129284:
exts.w r0,r0
tst r0,r0
bt/s loc_8C1292C2
mov.l r2,@-r15
exts.w r1,r1
mov 0x00,r2 ; r2 set to 0x00
div0s r2,r1
subc r2,r1
shll16 r0
div0s r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
div1 r0,r1
exts.w r1,r0
rotcl r0
addc r2,r0
rts
mov.l @r15+,r2
;==============================================

loc_8C1292C2:
mov.l @(loc_8C1292CC,pc),r2 ; r2 set to 0x8C2DF14c
mov.l @(loc_8C1292D0,pc),r1 ; r1 set to 0x44e
mov.l r1,@r2 ; r2 ??
rts
mov.l @r15+,r2
;==============================================

#align4
loc_8C1292CC:
#data 0x8C2DF14c

#align4
loc_8C1292D0:
#data 0x0000044e

#align4
loc_8C1292D4:
#data 0x2F262008
#data 0x2F368955
#data 0x2F46E200
#data 0x04292127
#data 0x312A333a
#data 0x41242307
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x41243304
#data 0x23273304
#data 0x224A0229
#data 0x8B024225
#data 0x43212307
#data 0x3304

loc_8C12937A:
#data 0x334c
#data 0x64F66033
#data 0x000B63F6
#data 0x62F6
;==============================================

loc_8C129386:
#data 0xD103
#data 0xE000D203
#data 0x000B2122
#data 0x000962F6
#data 0x8C2DF14c
#data 0x0000044e


loc_8C12939C:
tst r0,r0
bt loc_8C12943c
mov.l r3,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov.l r4,@-r15
mov r0,r4
div0u
rotcl r1
div1 r4,r3 ; r3 ??? bc r4 is ???
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
rotcl r1
div1 r4,r3
bf loc_8C129434
mov r3,r0
mov.l @r15+,r4
rts
mov.l @r15+,r3
;==============================================

loc_8C129434:
add r3,r0
mov.l @r15+,r4
rts
mov.l @r15+,r3
;==============================================

loc_8C12943C:
mov.l r2,@-r15
mov.l @(loc_8C12944C,pc),r1 ; r1 set to 0x8C2DF14c
mov.l @(loc_8C129450,pc),r2 ; r2 set to 0x44e
mov 0x00,r0 ; r0 set to 0x00
mov.l r2,@r1 ; r1 ??
rts
mov.l @r15+,r2
;==============================================
	nop

#align4
loc_8C12944C:
#data 0x8C2DF14c

#align4
loc_8C129450:
#data 0x0000044e

#align4
loc_8C129454:
#data 0x2008600f
#data 0x2F268D26
#data 0x2F36611f
#data 0x4028E200
#data 0x03292127
#data 0x2107312a
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x31043104
#data 0x02292127
#data 0x4225223a
#data 0x21078B02
#data 0x31044121

#align4
loc_8C12949C:
#data 0x313C4129
#data 0x63F6601f
#data 0x62F6000b
;==============================================

#align4
loc_8C1294A8:
#data 0xD203D102
#data 0x000B2122
#data 0x000962F6
#data 0x8C2DF14c
#data 0x0000044e


loc_8C1294BC:
mov.l r3,@-r15
mov.l @(loc_8C1294D4,pc),r3 ; r3 set to 0x8C12951c
mov.l @(r0,r3),r3 ; r3 ??
add 0xFC,r0
jmp @r3
mov.l @(r0,r2),r0

loc_8C1294C8:
mov.l r3,@-r15
mov.l @(loc_8C1294D4,pc),r3 ; r3 set to 0x8C12951c
mov.l @(r0,r3),r3 ; r3 ??
add 0xFC,r0
jmp @r3
mov.l @(r0,r2),r3

#align4
loc_8C1294D4:
#data loc_8c12951c
	nop

loc_8C1294DA:
#data 0x532e
#data 0x110f

loc_8C1294DE:
#data 0x502d
#data 0x113e

loc_8C1294E2:
#data 0x532c
#data 0x110d

loc_8C1294E6:
#data 0x502b
#data 0x113c

loc_8C1294EA:
#data 0x532a
#data 0x110b

loc_8C1294EE:
#data 0x5029
#data 0x113a

loc_8C1294F2:
#data 0x5328
#data 0x1109

loc_8C1294F6:
#data 0x5027
#data 0x1138

loc_8C1294FA:
#data 0x5326
#data 0x1107

loc_8C1294FE:
#data 0x5025
#data 0x1136

loc_8C129502:
#data 0x5324
#data 0x1105

loc_8C129506:
#data 0x5023
#data 0x1134

loc_8C12950A:
#data 0x5322
#data 0x1103

loc_8C12950E:
#data 0x5021
#data 0x1132

loc_8C129512:
#data 0x6322
#data 0x1101

loc_8C129516:
#data 0x2132


loc_8C129518:
rts
mov.l @r15+,r3
;==============================================

#align4
loc_8C12951C:
#data loc_8c129518

loc_8C129520:
#data loc_8c129516

loc_8C129524:
#data loc_8c129512

loc_8C129528:
#data loc_8c12950e

loc_8C12952C:
#data loc_8c12950a

loc_8C129530:
#data loc_8c129506

loc_8C129534:
#data loc_8c129502

loc_8C129538:
#data loc_8c1294Fe

loc_8C12953C:
#data loc_8c1294Fa

loc_8C129540:
#data loc_8c1294F6

loc_8C129544:
#data loc_8c1294F2

loc_8C129548:
#data loc_8c1294Ee

loc_8C12954C:
#data loc_8c1294Ea

loc_8C129550:
#data loc_8c1294E6

loc_8C129554:
#data loc_8c1294E2

loc_8C129558:
#data loc_8c1294De

loc_8C12955C:
#data loc_8c1294Da


loc_8C129560:
mov.l r3,@-r15
mov 0x40,r3 ; r3 set to 0x40
cmp/hs r0,r3
bf loc_8C129600
mov.l @(loc_8C129570,pc),r3 ; r3 set to 0x8C1295Bc
mov.l @(r0,r3),r3 ; r3 ??
jmp @r3
nop

#align4
loc_8C129570:
#data loc_8c1295Bc
	nop

loc_8C129576:
#data 0x502f
#data 0x110f

loc_8C12957A:
#data 0x502e
#data 0x110e

loc_8C12957E:
#data 0x502d
#data 0x110d

loc_8C129582:
#data 0x502c
#data 0x110c

loc_8C129586:
#data 0x502b
#data 0x110b

loc_8C12958A:
#data 0x502a
#data 0x110a

loc_8C12958E:
#data 0x5029
#data 0x1109

loc_8C129592:
#data 0x5028
#data 0x1108

loc_8C129596:
#data 0x5027
#data 0x1107

loc_8C12959A:
#data 0x5026
#data 0x1106

loc_8C12959E:
#data 0x5025
#data 0x1105

loc_8C1295A2:
#data 0x5024
#data 0x1104

loc_8C1295A6:
#data 0x5023
#data 0x1103

loc_8C1295AA:
#data 0x5022
#data 0x1102

loc_8C1295AE:
#data 0x5021
#data 0x1101

loc_8C1295B2:
#data 0x6022
#data 0x2102


loc_8C1295B6:
rts
mov.l @r15+,r3
;==============================================
	nop

#align4
loc_8C1295BC:
#data loc_8c1295B6

loc_8C1295C0:
#data loc_8c1295B2

loc_8C1295C4:
#data loc_8c1295Ae

loc_8C1295C8:
#data loc_8c1295Aa

loc_8C1295CC:
#data loc_8c1295A6

loc_8C1295D0:
#data loc_8c1295A2

loc_8C1295D4:
#data loc_8c12959e

loc_8C1295D8:
#data loc_8c12959a

loc_8C1295DC:
#data loc_8c129596

loc_8C1295E0:
#data loc_8c129592

loc_8C1295E4:
#data loc_8c12958e

loc_8C1295E8:
#data loc_8c12958a

loc_8C1295EC:
#data loc_8c129586

loc_8C1295F0:
#data loc_8c129582

loc_8C1295F4:
#data loc_8c12957e

loc_8C1295F8:
#data loc_8c12957a

loc_8C1295FC:
#data loc_8c129576


loc_8C129600:
mov.l r2,@-r15
mov r2,r3
add r0,r3

loc_8C129606:
mov.l @r2+,r0
cmp/hs r2,r3
bf loc_8C12961a
mov.l r0,@r1
mov.l @r2+,r0
cmp/hs r2,r3
bf loc_8C12961a
mov.l r0,@(0x04,r1)
bra loc_8C129606
add 0x08,r1

loc_8C12961A:
mov.l @r15+,r2
rts
mov.l @r15+,r3
;==============================================

#align4
loc_8C129620:
#data 0x2F362F26
#data 0x88002F46
#data 0x64238912
#data 0x340c

loc_8C12962E:
#data 0x6024
#data 0x34262100
#data 0x60248B0c
#data 0x34268011
#data 0x60248B08
#data 0x34268012
#data 0x60248B04
#data 0x34268013
#data 0x89EE7104

#align4
loc_8C129650:
#data 0x63F664F6
#data 0x62F6000b
;==============================================

loc_8C129658:
cmp/pl r4
bf loc_8C129660
rts
mov r4,r0
;==============================================

loc_8C129660:
neg r4,r0
rts
nop
;==============================================
#data 0x0000


loc_8C129668:
mov.l r13,@-r15
cmp/eq r5,r4
mov.l r12,@-r15
mov.l r11,@-r15
bt loc_8C12971c
mov 0x00,r2 ; r2 set to 0x00
cmp/hi r2,r6
bf loc_8C12971c
mov r4,r7
mov r6,r11
or r5,r7
mov r6,r12
shlr r11
cmp/hs r5,r4
or r6,r7
bt/s loc_8C1296D2
shlr2 r12
mov 0x01,r3 ; r3 set to 0x01
tst r7,r3
bf loc_8C1296Be
mov 0x03,r1 ; r1 set to 0x03
tst r1,r7
bf loc_8C1296Aa
mov r12,r6
mov r4,r7

loc_8C12969A:
mov.l @r5+,r3 ; r3 ??? bc r5 is ???
add 0xFF,r6
tst r6,r6
mov.l r3,@r7
bf/s loc_8C12969a
add 0x04,r7
bra loc_8C12971c
nop

loc_8C1296AA:
mov r11,r6
mov r4,r7

loc_8C1296AE:
mov.w @r5+,r3
add 0xFF,r6
tst r6,r6
mov.w r3,@r7
bf/s loc_8C1296Ae
add 0x02,r7
bra loc_8C12971c
nop

loc_8C1296BE:
mov r5,r0
mov r4,r7

loc_8C1296C2:
mov.b @r0+,r3
add 0xFF,r6
tst r6,r6
mov.b r3,@r7
bf/s loc_8C1296C2
add 0x01,r7
bra loc_8C12971c
nop

loc_8C1296D2:
mov 0x01,r2 ; r2 set to 0x01
mov r4,r0
tst r7,r2
mov r5,r13
add r6,r0
bf/s loc_8C12970e
add r6,r13
mov 0x03,r1 ; r1 set to 0x03
tst r1,r7
bf loc_8C1296Fa
mov r12,r6
mov r13,r7
mov r0,r5

loc_8C1296EC:
add 0xFC,r7
mov.l @r7,r3
dt r6
bf/s loc_8C1296Ec
mov.l r3,@-r5
bra loc_8C12971c
nop

loc_8C1296FA:
mov r11,r6
mov r13,r5
mov r0,r7

loc_8C129700:
add 0xFE,r5
mov.w @r5,r3
dt r6
bf/s loc_8C129700
mov.w r3,@-r7
bra loc_8C12971c
nop

loc_8c12970e:
mov r13,r7
mov r0,r5

loc_8c129712:
add 0xFF,r7
mov.b @r7,r3
dt r6
bf/s loc_8c129712
mov.b r3,@-r5

loc_8C12971C:
mov.l @r15+,r11
mov r4,r0
mov.l @r15+,r12
rts
mov.l @r15+,r13
;==============================================
#data 0x0000

#align4
loc_8C129728:
#data 0x6373E700
#data 0x8D053362
#data 0x6043

loc_8C129732:
#data 0x7701
#data 0x37622050
#data 0x70018FFb

#align4
loc_8C12973C:
#data 0x6043000b
;==============================================

loc_8C129740:
sts.l pr,@-r15
add 0xFC,r15
mov r15,r0
add 0x08,r0
mov.l r4,@r15
mov 0x03,r4 ; r4 set to 0x03
add 0x04,r0
tst r0,r4
bt loc_8C12975a
mov r15,r4 ; r4 ??? bc r15 is ???
add 0x08,r4
bra loc_8C129760
add 0x08,r4

loc_8C12975A:
mov r15,r4
add 0x08,r4
add 0x04,r4

loc_8C129760:
mov.l r4,@-r15
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l @(loc_8C129778,pc),r3 ; r3 set to 0x8C12E6CC, r3 set to 0x8C12E6Cc
mov.l @(0x04,r15),r6
mov.l @(0x0C,r15),r7
jsr @r3
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
add 0x08,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x0000

#align4
loc_8C129778:
#data loc_8c12E6Cc


loc_8C12977C:
mov r4,r6
bra loc_8C129784
mov r5,r7

loc_8C129782:
#data 0x7601

#align4
loc_8c129784:
mov.b @r6,r2
tst r2,r2
; FIXME TODO check in another disassembler
#data 0x8bfb ; bf 0xFFFFFFFA

loc_8c12978a:
mov.b @r7+,r2
mov.b r2,@r6
extu.b r2,r2
tst r2,r2
bf/s loc_8c12978a
add 0x01,r6
rts
mov r4,r0
;==============================================
#data 0x0000

loc_8C12979C:
sts.l pr,@-r15
mov.l @(loc_8C1297AC,pc),r3 ; r3 set to 0x8C12E624
jsr @r3
nop
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x0000

#align4
loc_8C1297AC:
#data loc_8c12E624


loc_8C1297B0:
sts.l pr,@-r15
mov.l @(loc_8C1297C0,pc),r3 ; r3 set to 0x8C12E5D4
mov r5,r1
jsr @r3
mov r4,r0
lds.l @r15+,pr
rts
nop
;==============================================

#align4
loc_8C1297C0:
#data loc_8c12E5D4


loc_8C1297C4:
bra loc_8C1297Ca
mov 0x00,r5

loc_8C1297C8:
add 0x01,r5

loc_8C1297CA:
mov.b @r4+,r3
tst r3,r3
bf loc_8C1297C8
rts
mov r5,r0
;==============================================

loc_8C1297D4:
mov 0x00,r1 ; r1 set to 0x00
mov r5,r0
mov r4,r7
bra loc_8C1297E6
mov r1,r5

loc_8C1297DE:
#data 0x6304
#data 0x27307501
#data 0x7701

loc_8c1297e6:
cmp/hs r6,r5
bt loc_8c1297fe
mov.b @r0,r3
tst r3,r3
bf bank12.loc_8c1297de
cmp/hs r6,r5
bt loc_8c1297fe

loc_8c1297f4:
add 0x01,r5
mov.b r1,@r7
cmp/hs r6,r5
bf/s loc_8c1297f4
add 0x01,r7

loc_8c1297fe:
rts
mov r4,r0
;==============================================
#data 0x0000

loc_8C129804:
sts.l pr,@-r15
add 0xF4,r15
mov.l r4,@r15
mov r6,r3
mov.l r5,@(0x04,r15)
mov 0x00,r5 ; r5 set to 0x00
mov.l r6,@(0x08,r15)
mov.l r6,@-r15
mov.l @(loc_8C129828,pc),r3 ; r3 set to 0x8C12E6Cc
mov.l @(0x04,r15),r6
mov.l @(0x08,r15),r7
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
add 0x10,r15
lds.l @r15+,pr
rts
nop
;==============================================
#data 0x0000

#align4
loc_8C129828:
#data loc_8c12E6Cc
#data 0x00000000


loc_8C129830:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @r14,r0
extu.w r0,r0
cmp/eq 0x03,r0
bf/s loc_8C129860
mov r5,r13
mov.l @(0x0C,r14),r6
mov r13,r5
mov.l @(0x18,r14),r7
bsr loc_8C1298C0
mov.l @(0x1C,r14),r4
bra loc_8C1298Ac
nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C129860:
mov.l @(loc_8C1298F8,pc),r2 ; r2 set to 0x4000000
mov.l @(0x18,r14),r4
tst r4,r2
bf loc_8C1298A0
mov.l @(loc_8C1298FC,pc),r1 ; r1 set to 0x80000000
tst r4,r1
bt loc_8C1298A0
mov.l @(loc_8C129900,pc),r2 ; r2 set to 0x40000000
tst r4,r2
bf loc_8C1298A0
mov.l @(loc_8C129904,pc),r1 ; r1 set to 0x8000
tst r4,r1
bf loc_8C1298A0
mov.l @(0x0C,r14),r5
mov.l @(loc_8C129908,pc),r3 ; r3 set to 0x8C1941D2
mov.l r5,@r15
jsr @r3
mov r5,r4
mov r0,r6
mov.l r0,@r15
mov.l @(loc_8C12990C,pc),r0 ; r0 set to 0x8C1C5B9c
shll2 r6
mov.l @(0x1C,r14),r4
mov r13,r5
mov.l @(r0,r6),r6
mov 0x00,r7 ; r7 set to 0x00
add 0x04,r6
bra loc_8C1298A8
add 0x04,r4
	nop
	nop
	nop


loc_8C1298A0:
mov.l @(0x1C,r14),r4
mov 0x00,r7 ; r7 set to 0x00
mov.l @(0x14,r14),r6
mov r13,r5

loc_8C1298A8:
bsr loc_8C12994e
nop

loc_8C1298AC:
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
	nop
	nop
	nop
	nop


loc_8C1298C0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r5,r13
mov.l @(loc_8C129908,pc),r3 ; r3 set to 0x8C1941D2
mov r4,r14
mov.l r6,@r15
mov.l r7,@(0x04,r15)
mov.l @r15,r5
jsr @r3
mov r5,r4
mov.l @(loc_8C1298FC,pc),r3 ; r3 set to 0x80000000
mov r0,r4
mov.l @(0x04,r15),r2
mov r0,r11
tst r3,r2
bt/s loc_8C129920
shll2 r11
mov.l @(loc_8C129910,pc),r0 ; r0 set to 0x8C1C5B80
mov.l @(r0,r11),r12
mov.l @(loc_8C129914,pc),r0 ; r0 set to 0x8C1C5BF4
mov.l @(r0,r11),r10
bra loc_8C129928
add 0x0A,r10

#align4
loc_8C1298F8:
#data 0x04000000

#align4
loc_8C1298FC:
#data 0x80000000

#align4
loc_8C129900:
#data 0x40000000

#align4
loc_8C129904:
#data 0x00008000

#align4
loc_8C129908:
#data bank19.loc_8c1941D2

loc_8C12990C:
#data bank1c.loc_8c1c5B9c

loc_8C129910:
#data bank1c.loc_8c1c5B80

loc_8C129914:
#data bank1c.loc_8c1c5BF4
	nop
	nop
	nop
	nop

#align4
loc_8c129920:
mov.l @(bank12.loc_8c129a1c,pc),r0
mov.l @(r0,r11),r12
mov.l @(bank12.loc_8c129a20,pc),r0
mov.l @(r0,r11),r10

loc_8c129928:
mov r13,r5
mov r12,r6
mov 0x00,r7
bsr loc_8c12994e
mov r14,r4
mov.w @(loc_8C129A18,pc),r2
add r12,r13
mov r13,r5
mov 0x00,r7
add r2,r14
mov r10,r6
mov r14,r4
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C12994E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov r6,r9
mov.l r8,@-r15
tst r9,r9
sts.l pr,@-r15
bf/s loc_8C129970
mov r7,r12
mov.l @(loc_8C129A24,pc),r0 ; r0 set to 0xEEEe
bra loc_8C129B06
nop

loc_8C129970:
stc sr, r0
mov.l @(loc_8C129A2C,pc),r2 ; r2 set to 0x8C2DB030
mov 0xE0,r11 ; r11 set to 0xFFFFFFE0
mov.l @(loc_8C129A28,pc),r8 ; r8 set to 0xA4000000
shlr2 r0
shlr2 r0
and 0x0F,r0
mov r0,r10
mov.l @r2,r0
cmp/eq 0x01,r0
bf/s loc_8C1299D0
and r9,r11 ; r11 ??? bc r9 is ???
mov 0x1F,r1 ; r1 set to 0x1f
tst r14,r1
bf loc_8C1299B0
mov 0x1F,r0 ; r0 set to 0x1f
tst r13,r0
bf loc_8C1299B0
tst r10,r10
bf loc_8C1299B0
mov.l @(loc_8C129A30,pc),r2 ; r2 set to 0x8C2DB034
mov r14,r5
add r8,r5
mov r11,r6
mov.l @r2,r3
mov 0x00,r7 ; r7 set to 0x00
jsr @r3
mov r13,r4
bra loc_8C129B04
nop
	nop
	nop


loc_8C1299B0:
mov.l @(loc_8C129A34,pc),r3 ; r3 set to 0x8C2DB038
mov r14,r5
add r8,r5
mov r11,r6
mov.l @r3,r2
jsr @r2
mov r13,r4
bra loc_8C129B04
nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C1299D0:
mov 0x1F,r2 ; r2 set to 0x1f
tst r14,r2
bt loc_8C1299Da
bra loc_8C129AF0
nop

loc_8C1299DA:
mov 0x1F,r1 ; r1 set to 0x1f
tst r13,r1
bt loc_8C1299E4
bra loc_8C129AF0
nop

loc_8C1299E4:
tst r10,r10
bt loc_8C1299Ec
bra loc_8C129AF0
nop

loc_8C1299EC:
mov.l @(loc_8C129A38,pc),r3 ; r3 set to 0x8C18F380
jsr @r3
nop
tst r0,r0
bf loc_8C1299Fa
bra loc_8C129AF0
nop

loc_8C1299FA:
tst r11,r11
bt loc_8C129AA4
mov.l @(loc_8C129A3C,pc),r2 ; r2 set to 0x8C18DFA0
jsr @r2
nop
tst r0,r0
bf loc_8C129A50

loc_8C129A08:
mov.l @(loc_8C129A40,pc),r3 ; r3 set to 0x8C18DA80, r3 set to 0x8C18DA80
jsr @r3
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
tst r0,r0
bt/s loc_8C129A08
mov r0,r10
bra loc_8C129A80
nop
loc_8c129a18:
#data 0x00000800

#align4
loc_8C129A1C:
#data bank1c.loc_8c1c5B64

loc_8C129A20:
#data bank1c.loc_8c1c5BC8

loc_8C129A24:
#data 0x0000EEEe

#align4
loc_8C129A28:
#data 0xA4000000

#align4
loc_8C129A2C:
#data 0x8C2DB030

#align4
loc_8C129A30:
#data 0x8C2DB034

#align4
loc_8C129A34:
#data 0x8C2DB038

#align4
loc_8C129A38:
#data bank18.loc_8c18F380

loc_8C129A3C:
#data bank18.loc_8c18DFA0

loc_8C129A40:
#data bank18.loc_8c18DA80
	nop
	nop
	nop
	nop
	nop
	nop


loc_8C129A50:
mov.l @(loc_8C129B1C,pc),r2 ; r2 set to 0x8C18DA80
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
tst r0,r0
bf/s loc_8C129A80
mov r0,r10
mov.l @(loc_8C129B20,pc),r2 ; r2 set to 0x8C17A6E0
mov r14,r4 ; r4 ??? bc r14 is ???
mov r9,r6
mov r13,r5
jsr @r2
add r8,r4
tst r12,r12
bt loc_8C129B04
jsr @r12
mov 0x00,r4 ; r4 set to 0x00
bra loc_8C129B04
nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c129a80:
mov.l @(bank12.loc_8c129b24,pc),r3
mov r14,r5
mov r11,r7
mov r13,r6
jsr @r3
mov r10,r4
tst r12,r12
bt loc_8c129a98
mov.l @(bank12.loc_8c129b28,pc),r3
mov r12,r5
jsr @r3
mov r10,r4

loc_8c129a98:
mov.l @(bank12.loc_8c129b2c,pc),r2
jsr @r2
mov r10,r4
mov.l @(loc_8C129B30,pc),r3
mov r0,r10
mov.l r0,@r3

loc_8c129aa4:
mov 0x1F,r6
and r9,r6
tst r6,r6
bt loc_8c129aba
mov r14,r4
mov.l @(bank12.loc_8c129b20,pc),r3
mov r13,r5
add r11,r4
add r11,r5
jsr @r3
add r8,r4

loc_8c129aba:
tst r12,r12
bf loc_8c129b04
mov.l @(bank12.loc_8c129b34,pc),r3
jsr @r3
nop
tst r0,r0
bf loc_8c129b04
mov.l @(bank12.loc_8c129b38,pc),r3
jsr @r3
nop
tst r0,r0
bf loc_8c129b04
mov.w @(loc_8C129B18,pc),r14
mov.l @(bank12.loc_8c129b3c,pc),r13

loc_8c129ad6:
jsr @r13
mov r10,r4
cmp/eq r14,r0
bf loc_8c129ad6
bra loc_8c129b04
nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c129af0:
#data 0xD20B
#data 0x64E3
#data 0x6693
#data 0x65D3
#data 0x420B
#data 0x348C
#data 0x2CC8
#data 0x8901
#data 0x4C0B
#data 0xE400

loc_8C129B04:
mov 0x00,r0 ; r0 set to 0x00

loc_8C129B06:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================
loc_8c129b18:
#data 0x00000101

#align4
loc_8C129B1C:
#data bank18.loc_8c18DA80

loc_8C129B20:
#data bank17.loc_8c17A6E0

loc_8C129B24:
#data bank18.loc_8c18FEE0

loc_8C129B28:
#data bank18.loc_8c18FD60

loc_8C129B2C:
#data bank18.loc_8c18FC20
loc_8c129b30:
#data 0x8C343B18

#align4
loc_8C129B34:
#data bank18.loc_8c18DFA0

loc_8C129B38:
#data bank18.loc_8c18F380

loc_8C129B3C:
#data bank18.loc_8c18F3C0
#data 0x4428D52f
#data 0x6252D32f
#data 0x61232239
#data 0x000B214b
#data 0x00092512
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x4408D527
#data 0x4408934a
#data 0x44086252
#data 0x61232239
#data 0x000B214b
#data 0x00092512
	nop
	nop
	nop
	nop
#data 0xD321D51f
#data 0x22395251
#data 0xE2161521
#data 0x442C5151
#data 0x000B214b
#data 0x00091511
	nop
	nop
	nop
	nop
#data 0xD31AD517
#data 0x22395251
#data 0xE2151521
#data 0x442C5151
#data 0x000B214b
#data 0x00091511
	nop
	nop
	nop
	nop
#data 0x4418D50f
#data 0x5251931b
#data 0x61232239
#data 0x000B214b
#data 0x00091511
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x2448D507
#data 0x62528B04
#data 0x2239D309
#data 0x2522A004
#data 0xD3086152
#data 0x2512213b
#data 0x0009000b
;==============================================
#data 0xF0FFFF3f
#data 0x8C2DEE8c
#data 0xFFFCFFFf
#data 0xFF3FFFFf
#data 0xFFDFFFFf
#data 0x7FFFFFFf
#data 0x80000000
#data 0x00000000
#data 0x00000000
#data 0x60432668
#data 0x206B205b
#data 0x8B24C81f
#data 0x6043F3Fd
#data 0x40194029
#data 0x2102D11d
#data 0xD11B1101
#data 0xD1192419
#data 0x4609241b
#data 0x46014609
#data 0xF259F059
#data 0xF659F459
#data 0xF40A4610
#data 0xF42A7408
#data 0xF44A7408
#data 0xF46A7408
#data 0x8FF10483
#data 0x000B7408
#data 0xF3Fd
;==============================================

loc_8C129C6A:
rts
pref @r4

;==============================================
#data 0x2668
#data 0x205B6043
#data 0x890B206b
#data 0x8B0BC807
#data 0x4609F3Fd
#data 0xF0594601
#data 0xF40A4610
#data 0x74088FFb
#data 0xF3FD000b
;==============================================
#data 0x0009000b
;==============================================
#data 0x60564609
#data 0x24024610
#data 0x74048FFb
#data 0x0009000b
;==============================================
#data 0xE0000000
#data 0xE3FFFFFf
#data 0xFF000038


loc_8C129CB0:
rts
nop
;==============================================
#data 0x00000000
#data 0x00000000
#data 0x00000000

loc_8C129CC0:
#data 0xF49d

loc_8C129CC2:
#data 0x7418
#data 0xF19DD7E6
#data 0xF078FFFb
#data 0xFFDBFFEb
#data 0xFFCBF103
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xE0002F86
#data 0x7FC04F22
#data 0xFF47F79d
#data 0xF05DE004
#data 0xD0DEFF07
#data 0x6102F77a
#data 0x1F12D2De
#data 0xD0DE6122
#data 0x1F14D2Db
#data 0x61026322
#data 0xFA591F33
#data 0xF8591F15
#data 0x6C56F959
#data 0xFFA7E038
#data 0xFF87E030
#data 0xFF97E034
#data 0xFC59FE59
#data 0xFC12FD59
#data 0xFD126056
#data 0x67561F09
#data 0x1F7FFE12
#data 0x6106D0Cb
#data 0x63066206
#data 0x1F271F16
#data 0xD0D31F38
#data 0x1F5A6506
#data 0x1F6B6606
#data 0x63F3DAC2
#data 0x73046846
#data 0xEBFF6AA2
#data 0x285BFB4c
#data 0xF249F7B5
#data 0x216B6146
#data 0xF3498F21
#data 0x0009890c

#align4
loc_8C129D6C:
#data 0x50FB53Fa
#data 0x63F3283b
#data 0x210BFB39
#data 0xF7B5F79d
#data 0x70306043
#data 0x00838F13

#align4
loc_8C129D84:
#data 0x6013E202
#data 0x42184228
#data 0x282BD9Bf
#data 0x6009CBC0
#data 0xCB106992
#data 0xCBFC6008
#data 0x6008209a
#data 0x322C6009
#data 0x62276103
#data 0x2829

loc_8C129DAA:
#data 0x6083
#data 0x4029F449
#data 0x4019F549
#data 0xC907F649
#data 0x4008E204
#data 0xF139F5Fd
#data 0xF0494218
#data 0x6B033B00
#data 0xF012E6E0
#data 0x8D094228
#data 0xE0FF05Ae
#data 0x40184028
#data 0x6953CB38
#data 0x49194929
#data 0x10912092

#align4
loc_8C129DE4:
#data 0x4C5A72Ff
#data 0xF700E0Fe
#data 0xF10D2259
#data 0xF7154618
#data 0x262B4628
#data 0x2C09F701
#data 0x8F43D997
#data 0xF715F701
#data 0x7C018F40

#align4
loc_8C129E08:
#data 0x742C6243
#data 0x26826046
#data 0x340C6183
#data 0x28886846
#data 0xA0FD8B02
	nop
	nop

#align4
loc_8C129E20:
#data 0x791869F3
#data 0xF699F599
#data 0xF799720c
#data 0xC8106013
#data 0xC8208F25
#data 0xF0298923
#data 0xF229F129
#data 0xF0B2F329
#data 0xFB09D089
#data 0xF429F152
#data 0xF5B2F529
#data 0xF262FB09
#data 0xF6B2F629
#data 0xF372FB09
#data 0xF3FDF729
#data 0xE000F7B2
#data 0x16021601
#data 0x06831603
#data 0xF66B7640
#data 0x60B3F64b
#data 0x7540F62b
#data 0xF3FDF60b
#data 0x76200683
#data 0x0A56

loc_8C129E7E:
#data 0xF249
#data 0xAF736146
#data 0x0009F349

#align4
loc_8C129E88:
#data 0xD07DF139
#data 0xF7087910
#data 0xF04DF742
#data 0xF93BF102
#data 0xF339F571
#data 0xD0776243
#data 0xF708F515
#data 0x8FAFF302
#data 0x2916F742
#data 0xF039F671
#data 0xF739F635
#data 0x8FA7F042
#data 0xF505F011
#data 0xF742F539
#data 0xF92B8DA2
#data 0x2986F731
#data 0xF675E108
#data 0x899BF639
#data 0xC8106083
#data 0x72088424
#data 0x6803F739
#data 0x8F1BFF29
#data 0xF0297430
#data 0xF229F129
#data 0xF0B2F329
#data 0xFB09D05e
#data 0xF429F152
#data 0xF5B2F529
#data 0xF262FB09
#data 0xF6B2F629
#data 0xF372FB09
#data 0x7640F729
#data 0xF3FDF7B2
#data 0xF64BF66b
#data 0xF60BF62b
#data 0x76E0F3Fd

#align4
loc_8C129F18:
#data 0x891D4811
#data 0x88FF6083
#data 0x88FE8D18
#data 0xD0578B08
#data 0x57FF400b
#data 0xF2498974
#data 0xAF1B6146
#data 0x0009F349

#align4
loc_8C129F38:
#data 0x88FD57Ff
#data 0xD152E024
#data 0xF1F68B08
#data 0xFF12410b
#data 0xF2498966
#data 0xAF0D6146
#data 0x0009F349

#align4
loc_8C129F54:
#data 0xFF9DA00f

#align4
loc_8C129F58:
#data 0xE0384815
#data 0xFAF68B08
#data 0xF8F6E030
#data 0xF9F6E034
#data 0x480DE009
#data 0x380CD049

#align4
loc_8C129F70:
#data 0xF1F6E024
#data 0xFF12

loc_8C129F76:
#data 0x6046

#align4
loc_8C129F78:
#data 0xD9384015
#data 0x40118D08
#data 0x60B36803
#data 0x89470A56
#data 0x6146F249
#data 0xF349AEEe

#align4
loc_8C129F90:
#data 0xE2FB6103
#data 0xC9406396
#data 0xE2FD402d
#data 0x203B2329
#data 0x7420C810
#data 0x405A8F03
#data 0x6293CB10
#data 0x2206

loc_8C129FAE:
#data 0x52Fa
#data 0x60130329
#data 0xE21B4211
#data 0xC9038D01
#data 0xCA01

loc_8C129FBE:
#data 0x402d
#data 0xE3034315
#data 0x432DF3Fd
#data 0x63370483
#data 0x22396296
#data 0x220BF00d
#data 0x74E0425a
#data 0x7610F10d
#data 0xF62BF299
#data 0xF60B7520
#data 0x0683F3Fd
#data 0x76208F03
#data 0x76200683
#data 0x7520

loc_8C129FF2:
#data 0x4C25
#data 0x8D1F6013
#data 0xC8084C00
#data 0xB04F8B08
#data 0xAFB90009
#data 0x00096046
#data 0xAFB50009
#data 0x00096046

#align4
loc_8C12A010:
#data 0x0009B546
#data 0x6046AFB0

#align4
loc_8C12A018:
#data 0x4F267F40
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0xFCF96EF6
#data 0xFEF9FDF9
#data 0x000BFFF9
	nop
	nop

#align4
loc_8C12A038:
#data 0xC840E100
#data 0x57FF3C1e
#data 0x8D05C810
#data 0xB1DBC808
#data 0xAF95C820
#data 0x00096046

#align4
loc_8C12A050:
#data 0xC820B426
#data 0x6046AF90
#data 0x8C2AA508
#data 0x8C2DEEA0
#data 0x8C32B448

#align4
loc_8C12A064:
#data bank16.loc_8c16BE50

loc_8C12A068:
#data bank16.loc_8c16BE60
#data 0x8C2D6B98
#data 0x8C2D6B9c

#align4
loc_8C12A074:
#data bank16.loc_8c16BD88

loc_8C12A078:
#data bank16.loc_8c16BD8c

loc_8C12A07C:
#data bank16.loc_8c16BD94

loc_8C12A080:
#data bank16.loc_8c16BD90

loc_8C12A084:
#data loc_8c12F0E0

loc_8C12A088:
#data loc_8c12FB60
#data 0x8C2AA4C4
#data 0x8C2DEE8c
#data 0x8C2D6824
	nop
	nop
	nop
	nop

#align4
loc_8C12A0A0:
#data 0x60832888
#data 0xA0948B00

#align4
loc_8C12A0A8:
#data 0x8B01C801
#data 0x0009A13b

#align4
loc_8C12A0B0:
#data 0xF29D6346
#data 0xF38DF3Fd
#data 0x7620F62b
#data 0x6042F62a
#data 0xC8016E43
#data 0x8B027420
#data 0x74E85EE1
#data 0x3E4c

loc_8C12A0CE:
#data 0xF4E9
#data 0x7E10F6E8
#data 0xF0E8F79d
#data 0xF5Fd

loc_8C12A0DA:
#data 0xF79d
#data 0x4310F743
#data 0x8D536046
#data 0xC8016E46
#data 0x8D036263
#data 0x6E433E4c
#data 0x7EF87418

#align4
loc_8C12A0F4:
#data 0x7420F8E9
#data 0xFAE80483
#data 0xFB9D7E10
#data 0xF60BF672
#data 0xF66BF572
#data 0xF64BF9Fd
#data 0x262274E0
#data 0x4310F0E8
#data 0x76380683
#data 0xFB9D6263
#data 0x6046FB83
#data 0x6E468D1a
#data 0x8D03C801
#data 0x6E433E4c
#data 0x7EF87418

#align4
loc_8C12A130:
#data 0xF4E97420
#data 0xF6E80483
#data 0xF79D7E10
#data 0x74E0FAB2
#data 0xF60BF9B2
#data 0xF5FDF6Ab
#data 0x7540F68b
#data 0xF0E82622
#data 0xAFC20683
#data 0x00097638

#align4
loc_8C12A158:
#data 0x62464015
#data 0xC8808B0e
#data 0x890B63E3
#data 0x62636023
#data 0x6E464221
#data 0x8DDFC801
#data 0x6E433E4c
#data 0xAFDB7418
#data 0x00097EF8

#align4
loc_8C12A17C:
#data 0x0483742c
#data 0xF48C74D0
#data 0xA0167520
#data 0x0009F6Ac

#align4
loc_8C12A18C:
#data 0x62464015
#data 0xC8808B0e
#data 0x890B63E3
#data 0x62636023
#data 0x6E464221
#data 0x8DA7C801
#data 0x6E433E4c
#data 0xAFA37418
#data 0x00097EF8

#align4
loc_8C12A1B0:
#data 0x0483742c
#data 0x74D0

loc_8C12A1B6:
#data 0xF672
#data 0x42216263
#data 0xF60BF572
#data 0xF66B74F8
#data 0xF64B7520
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12A1D2:
#data 0x6346
#data 0xF3FD7620
#data 0x6E436042
#data 0xC801F28d
#data 0x8B027420
#data 0x74E85EE1
#data 0x3E4c

loc_8C12A1EA:
#data 0xF4E9
#data 0xF6E96263
#data 0xF79DF270
#data 0xF0E9F38d
#data 0xF5Fd

loc_8C12A1FA:
#data 0x6046
#data 0xFF1D4310
#data 0xF743F79d
#data 0x8D656146
#data 0xC801F3Ed
#data 0x8D03314c
#data 0x6143F20d
#data 0x71F87418

#align4
loc_8C12A218:
#data 0xF305F08d
#data 0x7420F0E8
#data 0x8B00F819
#data 0xF230

loc_8C12A226:
#data 0xF38d
#data 0xF62B4310
#data 0x0483F221
#data 0xFA1974E0
#data 0xF60BF672
#data 0xFB9DF2B0
#data 0xF019F572
#data 0xF66B7520
#data 0xF64BF9Fd
#data 0x62632622
#data 0x76400683
#data 0x6E466046
#data 0xF3EDFF1d
#data 0x8D23FB9d
#data 0xC801FB83
#data 0x8D033E4c
#data 0x6E43F20d
#data 0x7EF87418

#align4
loc_8C12A26C:
#data 0xF305F08d
#data 0x7420F018
#data 0x8B00F4E9
#data 0xF230

loc_8C12A27A:
#data 0xF38d
#data 0xF221F62b
#data 0x74E00483
#data 0xFAB2F6E9
#data 0xF270F60b
#data 0xF9B2F79d
#data 0x7520F0E9
#data 0xF5FDF6Ab
#data 0x2622F68b
#data 0x06836263
#data 0x7640AFAb

#align4
loc_8C12A2A4:
#data 0xF20D4015
#data 0x8F0D6263
#data 0xC8804221
#data 0x890963E3
#data 0xC8016046
#data 0x8DD76E46
#data 0x6E433E4c
#data 0xAFD37418
#data 0x00097EF8

#align4
loc_8C12A2C8:
#data 0x04837430
#data 0xF48C74D0
#data 0xF6ACA016

#align4
loc_8C12A2D4:
#data 0xF20D4015
#data 0x8F0D6263
#data 0xC8804221
#data 0x89096313
#data 0xC8016046
#data 0x8D956146
#data 0x6143314c
#data 0xAF917418
#data 0x000971F8

#align4
loc_8C12A2F8:
#data 0x61E37430
#data 0x74D00483

#align4
loc_8C12A300:
#data 0xF305F08d
#data 0x8B00FA18
#data 0xF230

loc_8C12A30A:
#data 0xF38d
#data 0xF62BF672
#data 0xF6ABF572
#data 0xF66B74F8
#data 0xF64B7520
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12A326:
#data 0xE27f
#data 0x76E06346
#data 0x727F6042
#data 0x7237F3Fd
#data 0x6E43C801
#data 0x74208F03
#data 0x74E85EE1
#data 0x3E4c

loc_8C12A342:
#data 0xF4E9

#align4
loc_8C12A344:
#data 0x6763F6E9
#data 0xF270F28d
#data 0x7640F79d
#data 0x7520F38d
#data 0xF5FDF0E9
#data 0x4310FB8d
#data 0x8D3D6046
#data 0xF3ED61E3
#data 0x6E46C801
#data 0xF79D8F10
#data 0x0483F743

#align4
loc_8C12A370:
#data 0x3E4CF3B5
#data 0xF8EDFF1d
#data 0x8F1D0E83
#data 0xF230F20d
#data 0xA010F38d
#data 0x0009FB3d

#align4
loc_8C12A388:
#data 0xF79D74E4

loc_8C12A38C:
#data 0xF743

loc_8C12A38E:
#data 0x7418
#data 0xFF1DF3B5
#data 0x6E43F8Ed
#data 0x04837EE0
#data 0xF20D8F0c
#data 0xFB3DF230
#data 0xF38d

loc_8C12A3A6:
#data 0x005a
#data 0x40083027
#data 0xF3FD8B05
#data 0xA002F386
#data 0x0009F3Fd

loc_8C12A3B8:
#data 0xF38d

loc_8C12A3BA:
#data 0xF018
#data 0xF62BF672
#data 0xF60BF572
#data 0xF66B2338
#data 0x8D02F64b
#data 0xF4E92672
#data 0xAFB8

loc_8C12A3D2:
#data 0x0683
#data 0x000B7620
#data 0x0009F3Fd

#align4
loc_8C12A3DC:
#data 0x47216763
#data 0x8FD14015
#data 0xC880F3Ed
#data 0x89CDF79d
#data 0x60466346
#data 0xC8016E46
#data 0x8BCAF743
#data 0x0483AFBa
	nop
	nop

#align4
loc_8C12A400:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12A408:
#data 0xB139EB00
#data 0x8D10E900
#data 0xB1854924
#data 0xB1337B01
#data 0x8D440009
#data 0xB17F4924
#data 0x7B01

loc_8C12A422:
#data 0xB12d
#data 0x8D7E0009
#data 0xB1794924
#data 0x8BF87B01
#data 0x892b

loc_8C12A432:
#data 0x4310
#data 0xB1237B01
#data 0x8F4F4310
#data 0x60424924
#data 0xC8016E43
#data 0x8F037420
#data 0x74E8F79d
#data 0x3E4C5EE1

#align4
loc_8C12A450:
#data 0xF5E9F4E9

#align4
loc_8C12A454:
#data 0xE120F6E9
#data 0x74206042
#data 0xF5FD0483
#data 0x74E0C801
#data 0x6E438F04
#data 0x5EE1E108
#data 0x3E4C7E08

#align4
loc_8C12A470:
#data 0x005AF71d
#data 0x7B013C06
#data 0x49248F4e
#data 0xF79D4310
#data 0x341C8903
#data 0xAFE5F4E9
#data 0xF5E9

loc_8C12A48A:
#data 0x6046
#data 0x8F034015
#data 0x8FB9C880
#data 0x74FC6346

#align4
loc_8C12A498:
#data 0xE0014F26
#data 0x74FC6BF6
#data 0x000B6AF6
#data 0x2C0b
;==============================================

loc_8C12A4A6:
#data 0xB15b
#data 0x74F84310
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12A4B4:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12A4BE:
#data 0xB0Df
#data 0xB14D0009
#data 0xEB01EB00
#data 0xB1990008
#data 0x6042E000
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12A4D8:
#data 0x0009A04c

#align4
loc_8C12A4DC:
#data 0xEB01B140
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12A4EA:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12A4F4:
#data 0x0009B0C4
#data 0xEB00B132
#data 0x0008EB01
#data 0xE000B17e
#data 0xB15B0008
#data 0x6042E001
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12A514:
#data 0x0009A02e

#align4
loc_8C12A518:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12A522:
#data 0xB0Ad
	nop

loc_8C12A526:
#data 0xB11b
#data 0x74F80009
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12A534:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12A53E:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12A548:
#data 0x0009B09a
#data 0x7BFEB108
#data 0x0009B096
#data 0x7B01B104
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12A562:
#data 0x7B01
#data 0xC80160C3
#data 0x60938D0f
#data 0x0009B108
#data 0x6093A00b

#align4
loc_8C12A574:
#data 0x7B01B084
#data 0x4924B0F2
#data 0xC80160C3
#data 0x60938D03
#data 0x0009B0Fc
#data 0x6093

loc_8C12A58A:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1230008
#data 0x60B370Fe
#data 0xB0FF0008
#data 0x60B370Ff
#data 0xB11B4310
#data 0x8BD370Ff
#data 0x0009AF5d
#data 0xB0F50008
#data 0x60B360B3
#data 0xB1110008
#data 0x431070Ff
#data 0x60B3B0Ee
#data 0xAF508BC6
#data 0x60B30009
#data 0xB1070018
#data 0x431070Fe
#data 0xAF22890f
#data 0x60B30009
#data 0xB0FF0008
#data 0x60B370Fe
#data 0xB0DB0008
#data 0x431070Ff
#data 0x60B3B0D8
#data 0xAF068901
#data 0xAF387B01
#data 0x60B30009
#data 0xB0EF4310
#data 0x8BA770Ff
#data 0x0009AF31
#data 0xC80160B3
#data 0x60B3890d
#data 0xB0E50008
#data 0x60B370Ff
#data 0xB0E10008
#data 0x60B370Fe
#data 0xB0DD0008
#data 0xA00870Ff
#data 0x60B30009
#data 0xB0D70008
#data 0x60B370Fe
#data 0xB0D30008
#data 0x431070Ff
#data 0x60B3B0B0
#data 0xAF128B88
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12A680:
#data 0xC8016042
#data 0xF4498F0e
#data 0x304C6046
#data 0xF509F409
#data 0xF79DF609
#data 0xF009F209
#data 0xF109F5Fd
#data 0x7420F38d
#data 0x6203A00a

#align4
loc_8C12A6A4:
#data 0xF649F549
#data 0xF249F79d
#data 0xF5FDF049
#data 0xF38DF149
#data 0x74286243

#align4
loc_8C12A6B8:
#data 0xF3EDFB8d
#data 0x74E00483
#data 0x005AF71d
#data 0xF743F79d
#data 0xF3B5F40d
#data 0xF2FCF8Ed
#data 0xF2308B1a
#data 0xF38D2888
#data 0xE1018D18
#data 0x8F0E2818
#data 0xE17FFB3d
#data 0x005A717f
#data 0x30177137
#data 0x8B0B4008
#data 0x405A008e
#data 0xF41DF30d
#data 0x000B005a
#data 0x3C06
;==============================================

loc_8C12A6FE:
#data 0xF29d
#data 0x005AF41d
#data 0x3C06000b
;==============================================

#align4
loc_8C12A708:
#data 0x005AF41d

#align4
loc_8C12A70C:
#data 0x000BF38d
#data 0x00093C06
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12A720:
#data 0x7620F3Fd
#data 0xF672F028
#data 0xF572F62b
#data 0x6263F60b
#data 0x4310F66b
#data 0x8D05F64b
#data 0x2662F3Fd
#data 0x06837520
#data 0x7620000b
;==============================================

#align4
loc_8C12A744:
#data 0x26224221
#data 0x00187520
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12A760:
#data 0x60B3EA05
#data 0xF3FDC903
#data 0xDA4940Ad
#data 0x3A0CF028
#data 0xFA0BFA2b
#data 0xFA4BFA6b
#data 0xF3FD000b
;==============================================
	nop
	nop

#align4
loc_8C12A780:
#data 0xDA43E105
#data 0xC90360B3
#data 0x401D62A3
#data 0x3A0CF3Fd
#data 0x60B37AF8
#data 0x70FFF2A8
#data 0xC9036A23
#data 0x320C401d
#data 0xF22B60B3
#data 0xC90370Fe
#data 0x3A0C401d
#data 0x000BFA2b
#data 0x0009F3Fd
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12A7C0:
#data 0xE205C903
#data 0x402DDA31
#data 0x3A0CF3Fd
#data 0xF2A9F0A9
#data 0xF4A97620
#data 0xF6A9F232
#data 0xF66BF132
#data 0xF64B6263
#data 0xF62B7520
#data 0xF60B8F02
#data 0x00184221

#align4
loc_8C12A7EC:
#data 0xF3FD2622
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop

#align4
loc_8C12A800:
#data 0x4008C903
#data 0x4008DA21
#data 0x62A3300c
#data 0x60B33A0c
#data 0xF2A8C903
#data 0x40084008
#data 0x320C300c
#data 0x4C5AF128
#data 0xF021F00d
#data 0xF1217A18
#data 0xF0137218
#data 0xF10D475a
#data 0xF428F3Fd
#data 0xF2A872F8
#data 0xF4217AF8
#data 0x7620F531
#data 0xF35EF24e
#data 0xF428F62b
#data 0xF2A872F8
#data 0xF4217AF8
#data 0xF24EF531
#data 0xF62BF35e
#data 0xF61BF3Fd
#data 0x72FCF528
#data 0x7AFCF3A8
#data 0xF2A8F428
#data 0xF421F531
#data 0xF35EE2F0
#data 0xF24E4228
#data 0xF3124218
#data 0xF2127520
#data 0xF62BF63b
#data 0x62638900

#align4
loc_8C12A884:
#data 0x06832626
#data 0x7620000b
;==============================================
#data 0x8C2DEEE0
#data 0x8C2DEF00
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12A8A0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12A8A8:
#data 0xE900B0Aa
#data 0x88006093
#data 0x8807892d
#data 0xBEE3893a
#data 0xBF51EB00
#data 0xBEDF0009
#data 0xBF4DEB01
#data 0xBEDB0009
#data 0xBF49EB02
#data 0x60C30009
#data 0x8D02C801
#data 0xBF534908
	nop

loc_8C12A8DA:
#data 0x0923
	nop
	nop
#data 0xA0340009
#data 0xA0410009
#data 0xA04F0009
#data 0xA05A0009
#data 0xA0680009
#data 0xA0730009
	nop
	nop
	nop

loc_8C12A8FE:
#data 0x4310
#data 0xE0018BD2
#data 0x2C0B4F26
#data 0x000B6BF6
#data 0x6AF6
;==============================================

loc_8C12A90E:
#data 0x6933
#data 0xE303BEB6
#data 0x0009BF04
#data 0x0009BEB2
#data 0x0009BF00
#data 0x0009BEAe
#data 0x0009BEFc
#data 0x6393AFE9

#align4
loc_8C12A92C:
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12A936:
#data 0x6042
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12A940:
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12A94A:
#data 0xAFD8
#data 0x00080009
#data 0xE000BF36
#data 0xBF330008
#data 0x0008E001
#data 0xBF4FEB02
#data 0x0018E000
#data 0xE001BF4c
#data 0x0009AFC9
#data 0xBF270008
#data 0x0008E000
#data 0xBF43EB01
#data 0x0008E000
#data 0xBF1FEB02
#data 0x0018E002
#data 0xE001BF3c
#data 0x0009AFB9
#data 0xBF170008
#data 0x0008E000
#data 0xBF33EB01
#data 0x0018E000
#data 0xBF2FEB02
#data 0xAFACE000
#data 0x00080009
#data 0xBF29EB01
#data 0x0008E000
#data 0xE001BF06
#data 0xEB020008
#data 0xE000BF22
#data 0xBEFF0018
#data 0xAF9CE002
#data 0x00080009
#data 0xBF19EB01
#data 0x0008E000
#data 0xE001BEF6
#data 0xEB020018
#data 0xE001BF12
#data 0x0009AF8f
#data 0xEB020008
#data 0xE000BF0c
#data 0xBF090008
#data 0x0018E001
#data 0xE002BEE6
#data 0x0009AF83
	nop
	nop
	nop
	nop

#align4
loc_8C12AA00:
#data 0x60426143
#data 0x8F07C801
#data 0x6046F449
#data 0xF409304c
#data 0xF609F509
#data 0xF79DA004

#align4
loc_8C12AA18:
#data 0xF648F549
#data 0x7418F79d

#align4
loc_8C12AA20:
#data 0x74200483
#data 0x74E00483
#data 0x6042F5Fd
#data 0x8F07C801
#data 0x6046F049
#data 0xF009304c
#data 0xF209F109
#data 0xF39DA004

#align4
loc_8C12AA40:
#data 0xF248F149
#data 0x7418F39d

#align4
loc_8C12AA48:
#data 0x04837420
#data 0xF1FD74E0
#data 0xC8016042
#data 0x8F07F71d
#data 0x6046F449
#data 0xF409304c
#data 0xF609F509
#data 0xF79DA003

#align4
loc_8C12AA68:
#data 0xF648F549
#data 0xF79d

loc_8C12AA6E:
#data 0x6413
#data 0xF5FD005a
#data 0xF31D3C06
#data 0x005A4924
#data 0xF71D3C06
#data 0x005A4924
#data 0x000B3C06
#data 0x00094924
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12AAA0:
#data 0x60832888
#data 0xA0868B00

#align4
loc_8C12AAA8:
#data 0x8B01C801
#data 0x0009A125

#align4
loc_8C12AAB0:
#data 0xF29D6946
#data 0xF38DF3Fd
#data 0xF62BE303
#data 0xF62A7620
#data 0x6E436042
#data 0x7420C801
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8C12AAD0:
#data 0xF6E8F4E9
#data 0xF79D7E10
#data 0xF5FDF0E8

#align4
loc_8C12AADC:
#data 0xF743F79d
#data 0x60464310
#data 0x6E468D4c
#data 0x6263C801
#data 0x3E4C8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12AAF6:
#data 0xF8E9
#data 0x04837420
#data 0x7E10FAE8
#data 0xF672FB9d
#data 0xF572F60b
#data 0xF9FDF66b
#data 0x74E0F64b
#data 0xF0E82622
#data 0x06834310
#data 0x62637638
#data 0xFB83FB9d
#data 0x8D196046
#data 0xC8016E46
#data 0x3E4C8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12AB32:
#data 0x7420
#data 0x0483F4E9
#data 0x7E10F6E8
#data 0xFAB2F79d
#data 0xF9B274E0
#data 0xF6ABF60b
#data 0xF68BF5Fd
#data 0x26227540
#data 0x0683F0E8
#data 0x7638AFC2

#align4
loc_8C12AB58:
#data 0x62634910
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DE5
#data 0x74186E43
#data 0x7EF8AFE1

#align4
loc_8C12AB70:
#data 0x04837430
#data 0xF48C74D0
#data 0xA0107520
#data 0x0009F6Ac

#align4
loc_8C12AB80:
#data 0x62634910
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DB3
#data 0x74186E43
#data 0x7EF8AFAf

#align4
loc_8C12AB98:
#data 0x04837430
#data 0x74D0

loc_8C12AB9E:
#data 0xF672
#data 0xF572F60b
#data 0x7520F66b
#data 0x74F8F64b
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12ABB6:
#data 0x6946
#data 0xF3FD7620
#data 0x6042E303
#data 0xF28D6E43
#data 0x7420C801
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8C12ABD0:
#data 0x6263F4E9
#data 0xF270F6E9
#data 0xF38DF79d
#data 0xF5FDF0E9

#align4
loc_8C12ABE0:
#data 0x43106046
#data 0xF79DFF1d
#data 0x6146F743
#data 0xF3ED8D60
#data 0x314CC801
#data 0xF20D8D03
#data 0x74186143
#data 0x71F8

loc_8C12ABFE:
#data 0xF08d
#data 0xF0E8F305
#data 0xF8197420
#data 0xF2308B00

#align4
loc_8C12AC0C:
#data 0x4310F38d
#data 0xF221F62b
#data 0x74E00483
#data 0xF672FA19
#data 0xF2B0F60b
#data 0xF572FB9d
#data 0x7520F019
#data 0xF9FDF66b
#data 0x2622F64b
#data 0x06836263
#data 0x60467640
#data 0xFF1D6E46
#data 0xFB9DF3Ed
#data 0xFB838D23
#data 0x3E4CC801
#data 0xF20D8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12AC52:
#data 0xF08d
#data 0xF018F305
#data 0xF4E97420
#data 0xF2308B00

#align4
loc_8C12AC60:
#data 0xF62BF38d
#data 0x0483F221
#data 0xF6E974E0
#data 0xF60BFAB2
#data 0xF79DF270
#data 0xF0E9F9B2
#data 0xF6AB7520
#data 0xF68BF5Fd
#data 0x62632622
#data 0xAFAB0683
#data 0x7640

loc_8C12AC8A:
#data 0x4910
#data 0x6263F20d
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DDb
#data 0x74186E43
#data 0x7EF8AFD7

#align4
loc_8C12ACA4:
#data 0x04837430
#data 0xF48C74D0
#data 0xF6ACA012

#align4
loc_8C12ACB0:
#data 0xF20D4910
#data 0x8D096263
#data 0xC8014221
#data 0x8D9EE303
#data 0x6143314c
#data 0xAF9A7418
#data 0x000971F8

#align4
loc_8C12ACCC:
#data 0x61E37430
#data 0x74D00483

#align4
loc_8C12ACD4:
#data 0xF305F08d
#data 0x8B00FA18
#data 0xF230

loc_8C12ACDE:
#data 0xF38d
#data 0xF62BF672
#data 0xF6ABF572
#data 0xF66B7520
#data 0xF64B74F8
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12ACFA:
#data 0xE27f
#data 0x6946E303
#data 0x604276E0
#data 0xF3FD727f
#data 0xC8017237
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

loc_8C12AD18:
#data 0xF4E9

loc_8C12AD1A:
#data 0xF6E9
#data 0xF28D6763
#data 0xF79DF270
#data 0xF38D7640
#data 0xF0E97520
#data 0xFB8DF5Fd
#data 0x60464310
#data 0x61E38D3c
#data 0xC801F3Ed
#data 0x8F0F6E46
#data 0xF743F79d
#data 0x0483

loc_8C12AD46:
#data 0xF3B5
#data 0xFF1D3E4c
#data 0x0E83F8Ed
#data 0xF20D8F1c
#data 0xF38DF230
#data 0xFB3DA00f

#align4
loc_8C12AD5C:
#data 0xF79D74E4

loc_8C12AD60:
#data 0xF743

loc_8C12AD62:
#data 0x7418
#data 0xFF1DF3B5
#data 0x6E43F8Ed
#data 0x04837EE0
#data 0xF20D8F0c
#data 0xFB3DF230
#data 0xF38d

loc_8C12AD7A:
#data 0x005a
#data 0x40083027
#data 0xF3FD8B05
#data 0xA002F386
#data 0x0009F3Fd

loc_8C12AD8C:
#data 0xF38d

loc_8C12AD8E:
#data 0xF018
#data 0xF62BF672
#data 0xF60BF572
#data 0xF66B2338
#data 0x8D02F64b
#data 0xF4E92672
#data 0xAFB9

loc_8C12ADA6:
#data 0x0683
#data 0x000B7620
#data 0x0009F3Fd

#align4
loc_8C12ADB0:
#data 0x47216763
#data 0x8DD14910
#data 0x6E46F3Ed
#data 0xD303C801
#data 0x8FCEF79d
#data 0xAFBEF743
#data 0x00000483
#data 0x00000003
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

loc_8C12ADE0:
#data 0xF49d

loc_8C12ADE2:
#data 0x7418
#data 0xF19DD7E4
#data 0xF078FFFb
#data 0xFFDBFFEb
#data 0xFFCBF103
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xE0002F86
#data 0x7FC04F22
#data 0xFF47F79d
#data 0xF05DE004
#data 0xD0DDFF07
#data 0x6102F77a
#data 0x1F12D2Dd
#data 0xD0DD6122
#data 0x1F14D2Da
#data 0x61026322
#data 0xFA591F33
#data 0xF8591F15
#data 0x6C56F959
#data 0xFFA7E038
#data 0xFF87E030
#data 0xFF97E034
#data 0xFC59FE59
#data 0xFC12FD59
#data 0xFD126056
#data 0x67561F09
#data 0x1F7FFE12
#data 0x6106D0C9
#data 0x63066206
#data 0x1F271F16
#data 0xD0D21F38
#data 0x1F5A6506
#data 0x1F6B6606
#data 0x63F3DAC0
#data 0x73046846
#data 0xEBFF6AA2
#data 0x285BFB4c
#data 0xF249F7B5
#data 0x216B6146
#data 0xF3498F21
#data 0x0009890c

#align4
loc_8C12AE8C:
#data 0x50FB53Fa
#data 0x63F3283b
#data 0x210BFB39
#data 0xF7B5F79d
#data 0x70306043
#data 0x00838F13

#align4
loc_8C12AEA4:
#data 0x6013E202
#data 0x42184228
#data 0x282BD9Be
#data 0x6009CBC0
#data 0xCB106992
#data 0xCBFC6008
#data 0x6008209a
#data 0x322C6009
#data 0x62276103
#data 0x2829

loc_8C12AECA:
#data 0x6083
#data 0x4029F449
#data 0x4019F549
#data 0xC907F649
#data 0x4008E204
#data 0xF139F5Fd
#data 0xF0494218
#data 0x6B033B00
#data 0xF012E6E0
#data 0x8D094228
#data 0xE0FF05Ae
#data 0x40184028
#data 0x6953CB38
#data 0x49194929
#data 0x10912092

#align4
loc_8C12AF04:
#data 0x4C5A72Ff
#data 0xF700E0Fe
#data 0xF10D2259
#data 0xF7154618
#data 0x262B4628
#data 0x2C09F701
#data 0x8F43D995
#data 0xF715F701
#data 0x7C018F40

#align4
loc_8C12AF28:
#data 0x742C6243
#data 0x26826046
#data 0x340C6183
#data 0x28886846
#data 0xA0F98B02
	nop
	nop

#align4
loc_8C12AF40:
#data 0x791869F3
#data 0xF699F599
#data 0xF799720c
#data 0xC8106013
#data 0xC8208F25
#data 0xF0298923
#data 0xF229F129
#data 0xF0B2F329
#data 0xFB09D087
#data 0xF429F152
#data 0xF5B2F529
#data 0xF262FB09
#data 0xF6B2F629
#data 0xF372FB09
#data 0xF3FDF729
#data 0xE000F7B2
#data 0x16021601
#data 0x06831603
#data 0xF66B7640
#data 0x60B3F64b
#data 0x7540F62b
#data 0xF3FDF60b
#data 0x76200683
#data 0x0A56

loc_8C12AF9E:
#data 0xF249
#data 0xAF736146
#data 0x0009F349

#align4
loc_8C12AFA8:
#data 0xD07CF139
#data 0xF7087910
#data 0xF04DF742
#data 0xF93BF102
#data 0xF339F571
#data 0xD0766243
#data 0xF708F515
#data 0x8FAFF302
#data 0x2916F742
#data 0xF039F671
#data 0xF739F635
#data 0x8FA7F042
#data 0xF505F011
#data 0xF742F539
#data 0xF92B8DA2
#data 0x2986F731
#data 0xF675E108
#data 0x899BF639
#data 0xC8106083
#data 0x72088424
#data 0x6803F739
#data 0x8F1BFF29
#data 0xF0297430
#data 0xF229F129
#data 0xF0B2F329
#data 0xFB09D05c
#data 0xF429F152
#data 0xF5B2F529
#data 0xF262FB09
#data 0xF6B2F629
#data 0xF372FB09
#data 0x7640F729
#data 0xF3FDF7B2
#data 0xF64BF66b
#data 0xF60BF62b
#data 0x76E0F3Fd

#align4
loc_8C12B038:
#data 0x891D4811
#data 0x88FF6083
#data 0x88FE8D18
#data 0xD0568B08
#data 0x57FF400b
#data 0xF2498970
#data 0xAF1B6146
#data 0x0009F349

#align4
loc_8C12B058:
#data 0x88FD57Ff
#data 0xD151E024
#data 0xF1F68B08
#data 0xFF12410b
#data 0xF2498962
#data 0xAF0D6146
#data 0x0009F349

#align4
loc_8C12B074:
#data 0xFF9DA00f

#align4
loc_8C12B078:
#data 0xE0384815
#data 0xFAF68B08
#data 0xF8F6E030
#data 0xF9F6E034
#data 0x480DE009
#data 0x380CD048

#align4
loc_8C12B090:
#data 0xF1F6E024
#data 0xFF12

loc_8C12B096:
#data 0x6046

#align4
loc_8C12B098:
#data 0xD9364015
#data 0x40118D08
#data 0x60B36803
#data 0x89430A56
#data 0x6146F249
#data 0xF349AEEe

#align4
loc_8C12B0B0:
#data 0xE2FB6103
#data 0xC9406396
#data 0xE2FD402d
#data 0x203B2329
#data 0x7420C810
#data 0x405A8F03
#data 0x6293CB10
#data 0x2206

loc_8C12B0CE:
#data 0x52Fa
#data 0x60130329
#data 0xE21B4211
#data 0xC9038D01
#data 0xCA01

loc_8C12B0DE:
#data 0x402d
#data 0xE3034315
#data 0x432DF3Fd
#data 0x63370483
#data 0x22396296
#data 0x220BF00d
#data 0x74E0425a
#data 0x7610F10d
#data 0xF62BF299
#data 0xF60B7520
#data 0x0683F3Fd
#data 0x76208F03
#data 0x76200683
#data 0x7520

loc_8C12B112:
#data 0x4C25
#data 0x8D1B6013
#data 0xC8084C00
#data 0x8B03DD19
#data 0x0009B04e
#data 0x6046AFB8

#align4
loc_8C12B128:
#data 0x0009B57a
#data 0x6046AFB4

#align4
loc_8C12B130:
#data 0x4F267F40
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0xFCF96EF6
#data 0xFEF9FDF9
#data 0x000BFFF9
	nop
	nop

#align4
loc_8C12B150:
#data 0xC840E100
#data 0x57FF3C1e
#data 0xDD0AC810
#data 0xC8088D04
#data 0xC820B1Fe
#data 0x6046AF98

#align4
loc_8C12B168:
#data 0xC820B45a
#data 0x6046AF94
#data 0x8C2AA508
#data 0x8C2DEEA0
#data 0x8C32B448

#align4
loc_8C12B17C:
#data bank16.loc_8c16BE50

loc_8C12B180:
#data bank16.loc_8c16BE60

loc_8C12B184:
#data bank16.loc_8c16BE70
#data 0x8C2D6B98
#data 0x8C2D6B9c

#align4
loc_8C12B190:
#data bank16.loc_8c16BD88

loc_8C12B194:
#data bank16.loc_8c16BD8c

loc_8C12B198:
#data bank16.loc_8c16BD94

loc_8C12B19C:
#data bank16.loc_8c16BD90

loc_8C12B1A0:
#data loc_8c12F0E0

loc_8C12B1A4:
#data loc_8c12FB60
#data 0x8C2AA4C4
#data 0x8C2DEE8c
#data 0x8C2D6824
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12B1C0:
#data 0x60832888
#data 0xA0948B00

#align4
loc_8C12B1C8:
#data 0x8B01C801
#data 0x0009A14e

#align4
loc_8C12B1D0:
#data 0xF29D6346
#data 0xF38DF3Fd
#data 0x7620F62b
#data 0x6042F62a
#data 0xC8016E43
#data 0x8B027420
#data 0x74E85EE1
#data 0x3E4c

loc_8C12B1EE:
#data 0xF4E9
#data 0x7E10F6E8
#data 0xF0E8F79d
#data 0xF5Fd

loc_8C12B1FA:
#data 0xF79d
#data 0x4310F743
#data 0x8D536046
#data 0xC8016E46
#data 0x8D036263
#data 0x6E433E4c
#data 0x7EF87418

#align4
loc_8C12B214:
#data 0x7420F8E9
#data 0xFAE80483
#data 0xFB9D7E10
#data 0xF60BF672
#data 0xF66BF572
#data 0xF64BF9Fd
#data 0x262274E0
#data 0x4310F0E8
#data 0x76380683
#data 0xFB9D6263
#data 0x6046FB83
#data 0x6E468D1a
#data 0x8D03C801
#data 0x6E433E4c
#data 0x7EF87418

#align4
loc_8C12B250:
#data 0xF4E97420
#data 0xF6E80483
#data 0xF79D7E10
#data 0x74E0FAB2
#data 0xF60BF9B2
#data 0xF5FDF6Ab
#data 0x7540F68b
#data 0xF0E82622
#data 0xAFC20683
#data 0x00097638

#align4
loc_8C12B278:
#data 0x62464015
#data 0xC8808B0e
#data 0x890B63E3
#data 0x62636023
#data 0x6E464221
#data 0x8DDFC801
#data 0x6E433E4c
#data 0xAFDB7418
#data 0x00097EF8

#align4
loc_8C12B29C:
#data 0x0483742c
#data 0xF48C74D0
#data 0xA0167520
#data 0x0009F6Ac

#align4
loc_8C12B2AC:
#data 0x62464015
#data 0xC8808B0e
#data 0x890B63E3
#data 0x62636023
#data 0x6E464221
#data 0x8DA7C801
#data 0x6E433E4c
#data 0xAFA37418
#data 0x00097EF8

#align4
loc_8C12B2D0:
#data 0x0483742c
#data 0x74D0

loc_8C12B2D6:
#data 0xF672
#data 0x42216263
#data 0xF60BF572
#data 0xF66B74F8
#data 0xF64B7520
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12B2F2:
#data 0x6346
#data 0xF3FD7620
#data 0x6E436042
#data 0xC801F28d
#data 0x8B027420
#data 0x74E85EE1
#data 0x3E4c

loc_8C12B30A:
#data 0xF4E9
#data 0xF6E96263
#data 0xF79DF270
#data 0xF0E9F38d
#data 0xF5Fd

loc_8C12B31A:
#data 0x6046
#data 0x4310FF1d
#data 0xF3ED6146
#data 0x8D71F79d
#data 0xC801F743
#data 0x8D03314c
#data 0x6143F20d
#data 0x71F87418

#align4
loc_8C12B338:
#data 0xF3A5FA8d
#data 0x7420F819
#data 0x8B00F0D8
#data 0xF230

loc_8C12B346:
#data 0x0483
#data 0xF1204811
#data 0x8B00F38d
#data 0xF31e

loc_8C12B352:
#data 0xF0E8
#data 0x74E0FA19
#data 0xF221F62b
#data 0xF672F60b
#data 0xF2B0F019
#data 0xF572FB9d
#data 0xF66B7520
#data 0xF64B4310
#data 0x2622F9Fd
#data 0x6046F331
#data 0x06836263
#data 0x6E467640
#data 0xF3EDFF1d
#data 0x8D29FB9d
#data 0xC801FB83
#data 0x8D033E4c
#data 0x6E43F20d
#data 0x7EF87418

#align4
loc_8C12B398:
#data 0xF305F08d
#data 0x7420F4E9
#data 0x8B00F0D8
#data 0xF230

loc_8C12B3A6:
#data 0x0483
#data 0xF1204811
#data 0x8B00F38d
#data 0xF31e

loc_8C12B3B2:
#data 0xF018
#data 0x74E0F6E9
#data 0xF221F62b
#data 0xFAB2F60b
#data 0xF270F0E9
#data 0xF9B2F79d
#data 0xF6AB7520
#data 0xF68BF331
#data 0x2622F5Fd
#data 0x06836263
#data 0x7640AF9f

#align4
loc_8C12B3DC:
#data 0xF20D4015
#data 0xC8808B0e
#data 0x890B63E3
#data 0x62636046
#data 0xC8014221
#data 0x8DD16E46
#data 0x6E433E4c
#data 0xAFCD7418
#data 0x00097EF8

#align4
loc_8C12B400:
#data 0x04837430
#data 0xF48C74D0
#data 0xF6ACA016

#align4
loc_8C12B40C:
#data 0xF20D4015
#data 0xC8808B0e
#data 0x890B6313
#data 0x62636046
#data 0xC8014221
#data 0x8D896146
#data 0x6143314c
#data 0xAF857418
#data 0x000971F8

#align4
loc_8C12B430:
#data 0x61E37430
#data 0x74D00483

#align4
loc_8C12B438:
#data 0xF305F08d
#data 0x8B00F0D8
#data 0xF230

loc_8C12B442:
#data 0x4811
#data 0xF120FA18
#data 0x8B00F38d
#data 0xF31e

loc_8C12B44E:
#data 0xF672
#data 0xF572F62b
#data 0x6263F6Ab
#data 0xF66B4221
#data 0xF64B7520
#data 0x262274F8
#data 0x0683F3Fd
#data 0x7620000b
;==============================================

#align4
loc_8C12B46C:
#data 0x6346E27f
#data 0x604276E0
#data 0xF3FD727f
#data 0xC8017237
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

loc_8C12B488:
#data 0xF4E9

loc_8C12B48A:
#data 0xF6E9
#data 0xF28D6763
#data 0xF79DF270
#data 0xF38D7640
#data 0xF0E97520
#data 0xFB8DF5Fd
#data 0x60464310
#data 0x61E38D44
#data 0xC801F3Ed
#data 0x8F116E46
#data 0xF743F79d
#data 0x0483

loc_8C12B4B6:
#data 0xF3B5
#data 0xFF1D3E4c
#data 0xF0D8F8Ed
#data 0x8F210E83
#data 0xF230F20d
#data 0xA011F38d
#data 0x0009FB3d

#align4
loc_8C12B4D0:
#data 0xF79D74E4

loc_8C12B4D4:
#data 0xF743

loc_8C12B4D6:
#data 0x7418
#data 0xFF1DF3B5
#data 0x6E43F8Ed
#data 0x7EE0F0D8
#data 0x8F0F0483
#data 0xF230F20d
#data 0xF38DFB3d

#align4
loc_8C12B4F0:
#data 0xF120005a
#data 0x40083027
#data 0xF1358B08
#data 0xF386F3Fd
#data 0xF3FD8F05
#data 0xF31EA003

#align4
loc_8C12B508:
#data 0xF38DF120

loc_8C12B50C:
#data 0xF31e

loc_8C12B50E:
#data 0xF018
#data 0xF62BF672
#data 0xF60BF572
#data 0xF66B2338
#data 0x8D02F64b
#data 0xF4E92672
#data 0xAFB1

loc_8C12B526:
#data 0x0683
#data 0x000B7620
#data 0x0009F3Fd

#align4
loc_8C12B530:
#data 0x47216763
#data 0x8FCB4015
#data 0xC880F3Ed
#data 0x89C7F79d
#data 0x60466346
#data 0xC8016E46
#data 0x8BC4F743
#data 0x0483AFB3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12B560:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12B568:
#data 0xB139EB00
#data 0x8D10E900
#data 0xB1954924
#data 0xB1337B01
#data 0x8D440009
#data 0xB18F4924
#data 0x7B01

loc_8C12B582:
#data 0xB12d
#data 0x8D7E0009
#data 0xB1894924
#data 0x8BF87B01
#data 0x892b

loc_8C12B592:
#data 0x4310
#data 0xB1237B01
#data 0x8F4F4310
#data 0x60424924
#data 0xC8016E43
#data 0x8F037420
#data 0x74E8F79d
#data 0x3E4C5EE1

#align4
loc_8C12B5B0:
#data 0xF5E9F4E9

#align4
loc_8C12B5B4:
#data 0xE120F6E9
#data 0x74206042
#data 0xF5FD0483
#data 0x74E0C801
#data 0x6E438F04
#data 0x5EE1E108
#data 0x3E4C7E08

#align4
loc_8C12B5D0:
#data 0x005AF71d
#data 0x7B013C06
#data 0x49248F4e
#data 0xF79D4310
#data 0x341C8903
#data 0xAFE5F4E9
#data 0xF5E9

loc_8C12B5EA:
#data 0x6046
#data 0x8F034015
#data 0x8FB9C880
#data 0x74FC6346

#align4
loc_8C12B5F8:
#data 0xE0014F26
#data 0x74FC6BF6
#data 0x000B6AF6
#data 0x2C0b
;==============================================

loc_8C12B606:
#data 0xB16b
#data 0x74F84310
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12B614:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12B61E:
#data 0xB0Df
#data 0xB15D0009
#data 0xEB01EB00
#data 0xB1A90008
#data 0x6042E000
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12B638:
#data 0x0009A04c

#align4
loc_8C12B63C:
#data 0xEB01B150
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12B64A:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12B654:
#data 0x0009B0C4
#data 0xEB00B142
#data 0x0008EB01
#data 0xE000B18e
#data 0xB16B0008
#data 0x6042E001
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12B674:
#data 0x0009A02e

#align4
loc_8C12B678:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12B682:
#data 0xB0Ad
	nop

loc_8C12B686:
#data 0xB12b
#data 0x74F80009
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12B694:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C12B69E:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C12B6A8:
#data 0x0009B09a
#data 0x7BFEB118
#data 0x0009B096
#data 0x7B01B114
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12B6C2:
#data 0x7B01
#data 0xC80160C3
#data 0x60938D0f
#data 0x0009B118
#data 0x6093A00b

#align4
loc_8C12B6D4:
#data 0x7B01B084
#data 0x4924B102
#data 0xC80160C3
#data 0x60938D03
#data 0x0009B10c
#data 0x6093

loc_8C12B6EA:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1330008
#data 0x60B370Fe
#data 0xB10F0008
#data 0x60B370Ff
#data 0xB12B4310
#data 0x8BD370Ff
#data 0x0009AF5d
#data 0xB1050008
#data 0x60B360B3
#data 0xB1210008
#data 0x431070Ff
#data 0x60B3B0Fe
#data 0xAF508BC6
#data 0x60B30009
#data 0xB1170018
#data 0x431070Fe
#data 0xAF22890f
#data 0x60B30009
#data 0xB10F0008
#data 0x60B370Fe
#data 0xB0EB0008
#data 0x431070Ff
#data 0x60B3B0E8
#data 0xAF068901
#data 0xAF387B01
#data 0x60B30009
#data 0xB0FF4310
#data 0x8BA770Ff
#data 0x0009AF31
#data 0xC80160B3
#data 0x60B3890d
#data 0xB0F50008
#data 0x60B370Ff
#data 0xB0F10008
#data 0x60B370Fe
#data 0xB0ED0008
#data 0xA00870Ff
#data 0x60B30009
#data 0xB0E70008
#data 0x60B370Fe
#data 0xB0E30008
#data 0x431070Ff
#data 0x60B3B0C0
#data 0xAF128B88
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12B7E0:
#data 0xC8016042
#data 0xF4498F0e
#data 0x304C6046
#data 0xF509F409
#data 0xF79DF609
#data 0xF009F209
#data 0xF109F5Fd
#data 0x7420F38d
#data 0x6203A00a

#align4
loc_8C12B804:
#data 0xF649F549
#data 0xF249F79d
#data 0xF5FDF049
#data 0xF38DF149
#data 0x74286243

#align4
loc_8C12B818:
#data 0xF3EDFB8d
#data 0x74E00483
#data 0x005AF71d
#data 0xF743F79d
#data 0xF3B5F40d
#data 0xF2FCF8Ed
#data 0xF2308B22
#data 0xF01961D3
#data 0xF1192888
#data 0x8D29F38d
#data 0xE101F120
#data 0x8F122818
#data 0xE17FFB3d
#data 0x717FF38d
#data 0x7137005a
#data 0x40083017
#data 0x008E8B1a
#data 0x405AF135
#data 0xF30D8F01
#data 0xF31e

loc_8C12B866:
#data 0xF41d
#data 0x000B005a
#data 0x3C06
;==============================================

loc_8C12B86E:
#data 0xF29d
#data 0x005AF41d
#data 0x3C06000b
;==============================================

#align4
loc_8C12B878:
#data 0x481161D3
#data 0x8BF6F38d
#data 0xF41DF019
#data 0x3C06005a
#data 0xF120F119
#data 0xF31E000b
;==============================================

#align4
loc_8C12B890:
#data 0x005AF41d

#align4
loc_8C12B894:
#data 0x000B3C06
#data 0x0009F31e
	nop
	nop

#align4
loc_8C12B8A0:
#data 0x7620F3Fd
#data 0xF672F028
#data 0xF572F62b
#data 0x6263F60b
#data 0x4310F66b
#data 0x8D05F64b
#data 0x2662F3Fd
#data 0x06837520
#data 0x7620000b
;==============================================

#align4
loc_8C12B8C4:
#data 0x26224221
#data 0x00187520
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12B8E0:
#data 0x60B3EA05
#data 0xF3FDC903
#data 0xDA4940Ad
#data 0x3A0CF028
#data 0xFA0BFA2b
#data 0xFA4BFA6b
#data 0xF3FD000b
;==============================================
	nop
	nop

#align4
loc_8C12B900:
#data 0xDA43E105
#data 0xC90360B3
#data 0x401D62A3
#data 0x3A0CF3Fd
#data 0x60B37AF8
#data 0x70FFF2A8
#data 0xC9036A23
#data 0x320C401d
#data 0xF22B60B3
#data 0xC90370Fe
#data 0x3A0C401d
#data 0x000BFA2b
#data 0x0009F3Fd
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12B940:
#data 0xE205C903
#data 0x402DDA31
#data 0x3A0CF3Fd
#data 0xF2A9F0A9
#data 0xF4A97620
#data 0xF6A9F232
#data 0xF66BF132
#data 0xF64B6263
#data 0xF62B7520
#data 0xF60B8F02
#data 0x00184221

#align4
loc_8C12B96C:
#data 0xF3FD2622
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop

#align4
loc_8C12B980:
#data 0x4008C903
#data 0x4008DA21
#data 0x62A3300c
#data 0x60B33A0c
#data 0xF2A8C903
#data 0x40084008
#data 0x320C300c
#data 0x4C5AF128
#data 0xF021F00d
#data 0xF1217A18
#data 0xF0137218
#data 0xF10D475a
#data 0xF428F3Fd
#data 0xF2A872F8
#data 0xF4217AF8
#data 0x7620F531
#data 0xF35EF24e
#data 0xF428F62b
#data 0xF2A872F8
#data 0xF4217AF8
#data 0xF24EF531
#data 0xF62BF35e
#data 0xF61BF3Fd
#data 0x72FCF528
#data 0x7AFCF3A8
#data 0xF2A8F428
#data 0xF421F531
#data 0xF35EE2F0
#data 0xF24E4228
#data 0xF3124218
#data 0xF2127520
#data 0xF62BF63b
#data 0x62638900

#align4
loc_8C12BA04:
#data 0x06832626
#data 0x7620000b
;==============================================
#data 0x8C2DEFE0
#data 0x8C2DF000
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12BA20:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12BA28:
#data 0xE900B0Aa
#data 0x88006093
#data 0x8807892d
#data 0xBED3893a
#data 0xBF51EB00
#data 0xBECF0009
#data 0xBF4DEB01
#data 0xBECB0009
#data 0xBF49EB02
#data 0x60C30009
#data 0x8D02C801
#data 0xBF534908
	nop

loc_8C12BA5A:
#data 0x0923
	nop
	nop
#data 0xA0340009
#data 0xA0410009
#data 0xA04F0009
#data 0xA05A0009
#data 0xA0680009
#data 0xA0730009
	nop
	nop
	nop

loc_8C12BA7E:
#data 0x4310
#data 0xE0018BD2
#data 0x2C0B4F26
#data 0x000B6BF6
#data 0x6AF6
;==============================================

loc_8C12BA8E:
#data 0x6933
#data 0xE303BEA6
#data 0x0009BF04
#data 0x0009BEA2
#data 0x0009BF00
#data 0x0009BE9e
#data 0x0009BEFc
#data 0x6393AFE9

#align4
loc_8C12BAAC:
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12BAB6:
#data 0x6042
#data 0x7408C801
#data 0x74188900

#align4
loc_8C12BAC0:
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C12BACA:
#data 0xAFD8
#data 0x00080009
#data 0xE000BF36
#data 0xBF330008
#data 0x0008E001
#data 0xBF4FEB02
#data 0x0018E000
#data 0xE001BF4c
#data 0x0009AFC9
#data 0xBF270008
#data 0x0008E000
#data 0xBF43EB01
#data 0x0008E000
#data 0xBF1FEB02
#data 0x0018E002
#data 0xE001BF3c
#data 0x0009AFB9
#data 0xBF170008
#data 0x0008E000
#data 0xBF33EB01
#data 0x0018E000
#data 0xBF2FEB02
#data 0xAFACE000
#data 0x00080009
#data 0xBF29EB01
#data 0x0008E000
#data 0xE001BF06
#data 0xEB020008
#data 0xE000BF22
#data 0xBEFF0018
#data 0xAF9CE002
#data 0x00080009
#data 0xBF19EB01
#data 0x0008E000
#data 0xE001BEF6
#data 0xEB020018
#data 0xE001BF12
#data 0x0009AF8f
#data 0xEB020008
#data 0xE000BF0c
#data 0xBF090008
#data 0x0018E001
#data 0xE002BEE6
#data 0x0009AF83
	nop
	nop
	nop
	nop

#align4
loc_8C12BB80:
#data 0x60426143
#data 0x8F07C801
#data 0x6046F449
#data 0xF409304c
#data 0xF609F509
#data 0xF79DA004

#align4
loc_8C12BB98:
#data 0xF648F549
#data 0x7418F79d

#align4
loc_8C12BBA0:
#data 0x74200483
#data 0x74E00483
#data 0x6042F5Fd
#data 0x8F07C801
#data 0x6046F049
#data 0xF009304c
#data 0xF209F109
#data 0xF39DA004

#align4
loc_8C12BBC0:
#data 0xF248F149
#data 0x7418F39d

#align4
loc_8C12BBC8:
#data 0x04837420
#data 0xF1FD74E0
#data 0xC8016042
#data 0x8F07F71d
#data 0x6046F449
#data 0xF409304c
#data 0xF609F509
#data 0xF79DA003

#align4
loc_8C12BBE8:
#data 0xF648F549
#data 0xF79d

loc_8C12BBEE:
#data 0x6413
#data 0xF5FD005a
#data 0xF31D3C06
#data 0x005A4924
#data 0xF71D3C06
#data 0x005A4924
#data 0x000B3C06
#data 0x00094924
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12BC20:
#data 0x60832888
#data 0xA0868B00

#align4
loc_8C12BC28:
#data 0x8B01C801
#data 0x0009A136

#align4
loc_8C12BC30:
#data 0xF29D6946
#data 0xF38DF3Fd
#data 0xF62BE303
#data 0xF62A7620
#data 0x6E436042
#data 0x7420C801
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8C12BC50:
#data 0xF6E8F4E9
#data 0xF79D7E10
#data 0xF5FDF0E8

#align4
loc_8C12BC5C:
#data 0xF743F79d
#data 0x60464310
#data 0x6E468D4c
#data 0x6263C801
#data 0x3E4C8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12BC76:
#data 0xF8E9
#data 0x04837420
#data 0x7E10FAE8
#data 0xF672FB9d
#data 0xF572F60b
#data 0xF9FDF66b
#data 0x74E0F64b
#data 0xF0E82622
#data 0x06834310
#data 0x62637638
#data 0xFB83FB9d
#data 0x8D196046
#data 0xC8016E46
#data 0x3E4C8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12BCB2:
#data 0x7420
#data 0x0483F4E9
#data 0x7E10F6E8
#data 0xFAB2F79d
#data 0xF9B274E0
#data 0xF6ABF60b
#data 0xF68BF5Fd
#data 0x26227540
#data 0x0683F0E8
#data 0x7638AFC2

#align4
loc_8C12BCD8:
#data 0x62634910
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DE5
#data 0x74186E43
#data 0x7EF8AFE1

#align4
loc_8C12BCF0:
#data 0x04837430
#data 0xF48C74D0
#data 0xA0107520
#data 0x0009F6Ac

#align4
loc_8C12BD00:
#data 0x62634910
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DB3
#data 0x74186E43
#data 0x7EF8AFAf

#align4
loc_8C12BD18:
#data 0x04837430
#data 0x74D0

loc_8C12BD1E:
#data 0xF672
#data 0xF572F60b
#data 0x7520F66b
#data 0x74F8F64b
#data 0xF3FD2622
#data 0x000B0683
#data 0x7620
;==============================================

loc_8C12BD36:
#data 0x6946
#data 0xF3FD7620
#data 0x6042E303
#data 0xF28D6E43
#data 0x7420C801
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8C12BD50:
#data 0x6263F4E9
#data 0xF270F6E9
#data 0xF38DF79d
#data 0xF5FDF0E9

#align4
loc_8C12BD60:
#data 0xFF1D6046
#data 0x61464310
#data 0xF79DF3Ed
#data 0xF7438D6c
#data 0x314CC801
#data 0xF20D8D03
#data 0x74186143
#data 0x71F8

loc_8C12BD7E:
#data 0xFA8d
#data 0xF819F3A5
#data 0xF0D87420
#data 0xF2308B00

#align4
loc_8C12BD8C:
#data 0x48110483
#data 0xF38DF120
#data 0xF31E8B00

#align4
loc_8C12BD98:
#data 0xFA19F0E8
#data 0xF62B74E0
#data 0xF60BF221
#data 0xF019F672
#data 0xFB9DF2B0
#data 0x7520F572
#data 0x4310F66b
#data 0xF9FDF64b
#data 0xF3312622
#data 0x62636046
#data 0x76400683
#data 0xFF1D6E46
#data 0xFB9DF3Ed
#data 0xFB838D29
#data 0x3E4CC801
#data 0xF20D8D03
#data 0x74186E43
#data 0x7EF8

loc_8C12BDDE:
#data 0xF08d
#data 0xF4E9F305
#data 0xF0D87420
#data 0xF2308B00

#align4
loc_8C12BDEC:
#data 0x48110483
#data 0xF38DF120
#data 0xF31E8B00

#align4
loc_8C12BDF8:
#data 0xF6E9F018
#data 0xF62B74E0
#data 0xF60BF221
#data 0xF0E9FAB2
#data 0xF79DF270
#data 0x7520F9B2
#data 0xF331F6Ab
#data 0xF5FDF68b
#data 0x62632622
#data 0xAF9F0683
#data 0x7640

loc_8C12BE22:
#data 0x4910
#data 0x6263F20d
#data 0x42218D08
#data 0xE303C801
#data 0x3E4C8DD5
#data 0x74186E43
#data 0x7EF8AFD1

#align4
loc_8C12BE3C:
#data 0x04837430
#data 0xF48C74D0
#data 0xF6ACA012

#align4
loc_8C12BE48:
#data 0xF20D4910
#data 0x8D096263
#data 0xC8014221
#data 0x8D92E303
#data 0x6143314c
#data 0xAF8E7418
#data 0x000971F8

#align4
loc_8C12BE64:
#data 0x61E37430
#data 0x74D00483

#align4
loc_8C12BE6C:
#data 0xF305F08d
#data 0x8B00F0D8
#data 0xF230

loc_8C12BE76:
#data 0x4811
#data 0xF120FA18
#data 0x8B00F38d
#data 0xF31e

loc_8C12BE82:
#data 0xF672
#data 0xF572F62b
#data 0xF66BF6Ab
#data 0xF64B7520
#data 0x262274F8
#data 0x0683F3Fd
#data 0x7620000b
;==============================================

#align4
loc_8C12BE9C:
#data 0xE303E27f
#data 0x76E06946
#data 0x727F6042
#data 0x7237F3Fd
#data 0x6E43C801
#data 0x74208F03
#data 0x74E85EE1
#data 0x3E4c

loc_8C12BEBA:
#data 0xF4E9

#align4
loc_8C12BEBC:
#data 0x6763F6E9
#data 0xF270F28d
#data 0x7640F79d
#data 0x7520F38d
#data 0xF5FDF0E9
#data 0x4310FB8d
#data 0x8D436046
#data 0xF3ED61E3
#data 0x6E46C801
#data 0xF79D8F10
#data 0x0483F743

#align4
loc_8C12BEE8:
#data 0x3E4CF3B5
#data 0xF8EDFF1d
#data 0x0E83F0D8
#data 0xF20D8F20
#data 0xF38DF230
#data 0xFB3DA010

#align4
loc_8C12BF00:
#data 0xF79D74E4

loc_8C12BF04:
#data 0xF743

loc_8C12BF06:
#data 0x7418
#data 0xFF1DF3B5
#data 0x6E43F8Ed
#data 0x7EE0F0D8
#data 0x8F0F0483
#data 0xF230F20d
#data 0xF38DFB3d

#align4
loc_8C12BF20:
#data 0xF120005a
#data 0x40083027
#data 0xF1358B08
#data 0xF386F3Fd
#data 0xF3FD8F05
#data 0xF31EA003

#align4
loc_8C12BF38:
#data 0xF38DF120

loc_8C12BF3C:
#data 0xF31e

loc_8C12BF3E:
#data 0xF018
#data 0xF62BF672
#data 0xF60BF572
#data 0xF66B2338
#data 0x8D02F64b
#data 0xF4E92672
#data 0xAFB2

loc_8C12BF56:
#data 0x0683
#data 0x000B7620
#data 0x0009F3Fd

#align4
loc_8C12BF60:
#data 0x47216763
#data 0x8DCB4910
#data 0x6E46F3Ed
#data 0xD303C801
#data 0x8FC8F79d
#data 0xAFB7F743
#data 0x00000483
#data 0x00000003
#data 0xFFFB61F3
#data 0xFFDBFFEb
#data 0xFFCb


loc_8C12BF8A:
fmov.s fr11,@-r15
fmov.s fr10,@-r15
fmov.s fr9,@-r15
fmov.s fr8,@-r15
sts.l pr,@-r15
mov.l @(loc_8C12C160,pc),r0 ; r0 set to 0x8C2DEEA0
mov.l r0,@-r15
mov.l @r4+,r0 ; r0 ??? bc r4 is ???

loc_8C12BF9A:
cmp/pl r0
mov.l @r15,r9
bt/s loc_8C12BFC0
cmp/pz r0
mov r0,r8
mov r11,r0
mov.l r5,@(r0,r10)
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr8
fmov.s @r15+,fr9
fmov.s @r15+,fr10
fmov.s @r15+,fr11
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
rts
fmov.s @r15+,fr15
;==============================================
	nop

#align4
loc_8c12bfc0:
mov r0,r1
mov 0xFB,r2
mov.l @r9+,r3
and 0x40,r0
shld r2, r0
mov 0xFD,r2
and r2,r3
or r0,r3
add 0x20,r4
mov 0xCF,r2
and r2,r3
mov r1,r0
mov r15,r2
add 0x28,r2
lds r3,fpul
mov.l @(0x28,r2),r2
cmp/pz r2
mov 0x1B,r2
bt/s loc_8c12bfea
and 0x03,r0
xor 0x01,r0

loc_8c12bfea:
shld r2, r0
mov 0x03,r3
fsca fpul,fr3
shld r2, r3
pref @r4
not r3,r3
mov.l @r9+,r2
and r3,r2
fsts fpul,fr0
or r0,r2
lds r2,fpul
add 0xE0,r4
fsts fpul,fr1
add 0x10,r6
fmov.s @r9+,fr2
fmov.s fr2,@-r6
add 0x20,r5
fmov.s fr0,@-r6
fsca fpul,fr3
pref @r6
add 0x20,r6
rotcr r12
mov r1,r0
bt/s loc_8c12c030
shll r12
tst 0x08,r0
bt loc_8c12c028
bsr loc_8c12c2a0
nop
bra bank12.loc_8c12bf9a
mov.l @r4+,r0

loc_8c12c028:
bsr loc_8c12c180
nop
bra bank12.loc_8c12bf9a
mov.l @r4+,r0

loc_8c12c030:
mov 0x00,r1
tst 0x40,r0
addc r1,r12
tst 0x10,r0
bt/s loc_8c12c044
tst 0x08,r0
bsr loc_8c12c3a0
nop
bra bank12.loc_8c12bf9a
mov.l @r4+,r0

loc_8c12c044:
bt loc_8c12c050
bsr loc_8c12c960
nop
bra bank12.loc_8c12bf9a
mov.l @r4+,r0
	nop


loc_8c12c050:
bra loc_8c12c050
nop
#data 0x8080
#data 0x3B80
	nop
	nop
	nop
	nop

loc_8c12c060:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12c080:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12c160:
#data 0xEEA0
#data 0x8C2D
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c180:
mov.l @r4+,r3
add 0x20,r6
fsca fpul,fr3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12c196
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c196:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12c1a2:
fldi0 fr3
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12c250
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c1c0
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c1c0:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12c228
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12c200
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c200:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c1a2
add 0x40,r6
	nop


loc_8c12c228:
cmp/pl r0
mov r14,r3
bf loc_8c12c248
tst 0x80,r0
bt loc_8c12c248
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12c200
mov r4,r14
add 0x18,r4
bra loc_8c12c200
add 0xF8,r14

loc_8c12c248:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12c270
fmov fr10,fr6

loc_8c12c250:
cmp/pl r0
mov r14,r3
bf loc_8c12c270
tst 0x80,r0
bt loc_8c12c270
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12c1c0
mov r4,r14
add 0x18,r4
bra loc_8c12c1c0
add 0xF8,r14

loc_8c12c270:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c2a0:
mov.l @r4+,r9
add 0x20,r6
fsca fpul,fr3
mov 0x03,r3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12c2b8
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c2b8:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12c2c4:
fldi0 fr3
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12c368
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c2e2
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c2e2:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12c348
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12c322
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c322:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c2c4
add 0x40,r6

loc_8c12c348:
dt r9
mov r6,r2
bt/s loc_8c12c360
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12c322
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12c322
add 0xF8,r14

loc_8c12c360:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12c380
fmov fr10,fr6

loc_8c12c368:
dt r9
mov r6,r2
bt/s loc_8c12c380
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12c2e2
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12c2e2
add 0xF8,r14

loc_8c12c380:
fmul fr7,fr6
fmov.s fr0,@-r6
fmul fr7,fr5
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
add 0xF8,r4
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop


loc_8c12c3a0:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3
fsca fpul,fr3
fmov fr3,fr0
fmov fr7,fr12
fmov fr11,fr2
fmov fr15,fr14
fsca fpul,fr3
fmov fr1,fr12
fmov fr3,fr14

loc_8c12c3b8:
mov 0x00,r11
bsr loc_8c12c720
mov 0x00,r9
bf loc_8c12c3c2
bra loc_8c12c4fa

loc_8c12c3c2:
rotcl r9
bsr loc_8c12c760
add 0x01,r11
bsr loc_8c12c720
nop
bf loc_8c12c3d0
bra loc_8c12c552

loc_8c12c3d0:
rotcl r9
bsr loc_8c12c760
add 0x01,r11
add 0x20,r6
mov.l @r4,r0
fsca fpul,fr3
tst 0x01,r0
mov r4,r14
bf/s loc_8c12c3ea
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c3ea:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12c3f6:
fldi0 fr3
fmov.s fr2,@-r6
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12c4b8
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12c4d8
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c41e
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c41e:
add 0x40,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
add 0xC0,r4
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
fmov.s fr4,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
flds fr11,fpul
fldi1 fr11
fdiv fr8,fr11
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12c4ac
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12c4cc
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c46a
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c46a:
fmov.s @r14+,fr4
add 0x40,r4
fmov.s @r14+,fr6
pref @r4
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xC0,r4
fmov.s fr8,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c3f6
add 0x40,r6

loc_8c12c490:
mov.l @r4+,r0
cmp/pl r0
bf/s loc_8c12c49e
tst 0x80,r0
bf/s loc_8c12c3b8
mov.l @r4+,r3
add 0xFC,r4

loc_8c12c49e:
lds.l @r15+,pr
mov 0x01,r0
mov.l @r15+,r11
add 0xFC,r4
mov.l @r15+,r10
rts
or r0,r12
;==============================================

loc_8c12c4ac:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12c4be
fmov fr10,fr6

loc_8c12c4b8:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12c4be:
rotcl r9
fsca fpul,fr3
mov r14,r2
fsts fpul,fr4
bra loc_8c12c5d2
add 0xE8,r6
	nop


loc_8c12c4cc:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12c4de
fmov fr10,fr6

loc_8c12c4d8:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12c4de:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fsca fpul,fr3
pref @r6
bra loc_8c12c490
add 0x20,r6

loc_8c12c4fa:
dt r3
add 0x01,r11
bsr loc_8c12c720
dt r3
bf/s loc_8c12c588
rotcl r9
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf/s loc_8c12c518
fldi1 fr7
add 0xE8,r4
mov.l @(0x04,r14),r14
add r4,r14

loc_8c12c518:
fmov.s @r14+,fr4
fmov.s @r14+,fr5

loc_8c12c51c:
fmov.s @r14+,fr6
mov 0x20,r1
mov.l @r4,r0
add 0x20,r4
pref @r4
fipr fv12,fv4
tst 0x01,r0
add 0xE0,r4
bf/s loc_8c12c538
mov r4,r14
mov 0x08,r1
mov.l @(0x04,r14),r14
add 0x08,r14
add r4,r14

loc_8c12c538:
flds fr7,fpul
sts fpul,r0
cmp/hi r0,r12
add 0x01,r11
bf/s loc_8c12c5c4
rotcl r9
dt r3
fldi1 fr7
bt loc_8c12c490
add r1,r4
fmov.s @r14+,fr4
bra loc_8c12c51c
fmov.s @r14+,fr5

loc_8c12c552:
bsr loc_8c12c7a0
dt r3
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c560
add 0xE8,r4

loc_8c12c560:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c56a
add 0xE8,r4

loc_8c12c56a:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12c840
mov 0x00,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c584
add 0x18,r4

loc_8c12c584:
bra loc_8c12c620
nop

loc_8c12c588:
bsr loc_8c12c7a0
mov 0x01,r11
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c596
add 0xE8,r4

loc_8c12c596:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5a0
add 0xE8,r4

loc_8c12c5a0:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12c840
mov 0x00,r0
clrt
bsr loc_8c12c800
mov 0x01,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c5c0
add 0x18,r4

loc_8c12c5c0:
bra loc_8c12c620
nop

loc_8c12c5c4:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5ce
add 0xE8,r4

loc_8c12c5ce:
bsr loc_8c12c720
nop

loc_8c12c5d2:
bsr loc_8c12c7a0
nop
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5e0
add 0xE8,r4

loc_8c12c5e0:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5ea
add 0xE8,r4

loc_8c12c5ea:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5f4
add 0xE8,r4

loc_8c12c5f4:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
add 0xFE,r11
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
add 0x01,r11
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c60e
add 0x18,r4

loc_8c12c60e:
add 0x01,r11
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c636
mov r9,r0
bsr loc_8c12c7c0
nop
bra loc_8c12c636
mov r9,r0

loc_8c12c620:
bsr loc_8c12c720
add 0x01,r11
bsr loc_8c12c7a0
rotcl r9
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c636
mov r9,r0
bsr loc_8c12c7c0
nop
mov r9,r0

loc_8c12c636:
and 0x07,r0
shll2 r0
braf r0
nop
	nop
	nop
#data 0xA00C
	nop
#data 0xA019
	nop
#data 0xA024
	nop
#data 0xA02A
	nop
#data 0xA038
	nop
#data 0xA03D
	nop
	nop
	nop
#data 0x60B3
#data 0x0008
#data 0xB0ED
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0C9
#data 0x70FF
#data 0x60B3
#data 0x4310
#data 0xB0E5
#data 0x70FF
#data 0x8BD3
#data 0xAF0A
	nop
#data 0x0008
#data 0xB0BF
#data 0x60B3
#data 0x60B3
#data 0x0008
#data 0xB0DB
#data 0x70FF
#data 0x4310
#data 0xB0B8
#data 0x60B3
#data 0x8BC6
#data 0xAEFD
	nop
#data 0x60B3
#data 0x0018
#data 0xB0D1
#data 0x70FE
#data 0x4310
#data 0x890F
#data 0xAF30
	nop
#data 0x60B3
#data 0x0008
#data 0xB0C9
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A5
#data 0x70FF
#data 0x4310
#data 0xB0A2
#data 0x60B3
#data 0x8901
#data 0xAE8A
#data 0x7B01
#data 0xAEE5
	nop
#data 0x60B3
#data 0x4310
#data 0xB0B9
#data 0x70FF
#data 0x8BA7
#data 0xAEDE
	nop
#data 0x60B3
#data 0xC801
#data 0x890D
#data 0x60B3
#data 0x0008
#data 0xB0AF
#data 0x70FF
#data 0x60B3
#data 0x0008
#data 0xB0AB
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A7
#data 0x70FF
#data 0xA008
	nop
#data 0x60B3
#data 0x0008
#data 0xB0A1
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB09D
#data 0x70FF
#data 0x4310
#data 0xB07A
#data 0x60B3
#data 0x8B88
#data 0xAEBF
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c720:
mov.l @r4,r0
fsca fpul,fr3
tst 0x01,r0
mov r4,r14
bf/s loc_8c12c732
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c732:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fldi0 fr3
fsca fpul,fr5
add 0x40,r4
mov r14,r2
pref @r4
add 0xC0,r4
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
fsca fpul,fr3
fsts fpul,fr4
rts
cmp/hi r0,r12
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c12c760:
fsca fpul,fr3
add 0x20,r6
fmov.s @r2,fr0
fmul fr7,fr6
fmov.s fr2,@-r6
fmul fr7,fr5
add 0x20,r5
fmov.s fr0,@-r6
mov r6,r2
fmov.s fr6,@-r6
dt r3
fmov.s fr4,@-r6
bf loc_8c12c77e
shar r2
sett

loc_8c12c77e:
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c7a0:
mov 0x05,r10
mov r11,r0
and 0x03,r0
fsca fpul,fr3
shld r10, r0
mov.l @(bank12.loc_8c12c7bc,pc),r10
fmov.s @r2,fr0
add r0,r10
fmov.s fr2,@-r10
fmov.s fr0,@-r10
fmov.s fr6,@-r10
fmov.s fr4,@-r10
rts
fsca fpul,fr3
;==============================================

#align4
loc_8c12c7bc:
#data loc_8c12c080


loc_8c12c7c0:
mov 0x05,r1
mov.l @(bank12.loc_8c12c7f4,pc),r10
mov r11,r0
and 0x03,r0
mov r10,r2
shld r1, r0
fsca fpul,fr3
add r0,r10
add 0xF8,r10
mov r11,r0
fmov.s @r10,fr2
add 0xFF,r0
mov r2,r10
and 0x03,r0
shld r1, r0
add r0,r2
mov r11,r0
fmov.s fr2,@-r2
add 0xFE,r0
and 0x03,r0
shld r1, r0
add r0,r10
fmov.s fr2,@-r10
rts
fsca fpul,fr3
;==============================================
#data 0x0000

#align4
loc_8c12c7f4:
#data loc_8c12c080
	nop
	nop
	nop
	nop


loc_8c12c800:
and 0x03,r0
mov 0x05,r2
mov.l @(bank12.loc_8c12c838,pc),r10
shld r2, r0
fsca fpul,fr3
add r0,r10
fmov.s @r10+,fr0
fmov.s @r10+,fr2
add 0x20,r6
fmov.s @r10+,fr4
fmul fr3,fr2
fmov.s @r10+,fr6
fmul fr3,fr1
fmov.s fr6,@-r6
mov r6,r2
fmov.s fr4,@-r6
add 0x20,r5
fmov.s fr2,@-r6
bf/s loc_8c12c82c
fmov.s fr0,@-r6
shar r2
sett

loc_8c12c82c:
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

#align4
loc_8c12c838:
#data loc_8c12c060
	nop
	nop


loc_8c12c840:
and 0x03,r0
shll2 r0
mov.l @(bank12.loc_8c12c950,pc),r10
shll2 r0
add r0,r0
mov r10,r2
add r0,r10
mov r11,r0
and 0x03,r0
fmov.s @r10,fr2
shll2 r0
shll2 r0
add r0,r0
add r0,r2
fmov.s @r2,fr1
lds r12,fpul
fsts fpul,fr0
fsub fr2,fr0
add 0x18,r10
fsub fr2,fr1
add 0x18,r2
fdiv fr1,fr0
lds r7,fpul
fsts fpul,fr1
fsca fpul,fr3
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
flds fr4,fpul
sts fpul,r0
shlr16 r0
mov r0,r1
shlr8 r0
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr2,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr4,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr2,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr4,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr2,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
fldi0 fr3
add 0x20,r6
lds r8,fpul
fsts fpul,fr2
fmov.s fr2,@-r6
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
fsub fr2,fr4
fsub fr3,fr5
fmac fr0,fr4,fr2
fmac fr0,fr5,fr3
fmov.s fr2,@-r6
fsca fpul,fr3
fmov.s fr1,@-r6
fmov.s @r2,fr5
add 0xFC,r2
fmov.s @r10,fr3
add 0xFC,r10
fmov.s @r2,fr4
fmov.s @r10,fr2
fsub fr3,fr5
fsub fr2,fr4
mov 0xF0,r2
fmac fr0,fr5,fr3
shll16 r2
fmac fr0,fr4,fr2
shll8 r2
fmul fr1,fr3
add 0x20,r5
fmul fr1,fr2
fmov.s fr3,@-r6
fmov.s fr2,@-r6
bt loc_8c12c946
mov r6,r2

loc_8c12c946:
mov.l r2,@-r6
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

#align4
loc_8c12c950:
#data loc_8c12c060
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c960:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3

loc_8c12c968:
bsr loc_8c12cac0
mov 0x00,r9
mov r9,r0
cmp/eq 0x00,r0
bt loc_8c12c9ce
cmp/eq 0x07,r0
bt loc_8c12c9ec
bsr loc_8c12c720
mov 0x00,r11
bsr loc_8c12c7a0
nop
bsr loc_8c12c720
mov 0x01,r11
bsr loc_8c12c7a0
nop
bsr loc_8c12c720
mov 0x02,r11
bsr loc_8c12c7a0
nop
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c99a
shll2 r9
bsr loc_8c12c7c0
nop

loc_8c12c99a:
braf r9
nop
	nop
	nop
#data 0xA034
	nop
#data 0xA041
	nop
#data 0xA04F
	nop
#data 0xA05A
	nop
#data 0xA068
	nop
#data 0xA073
	nop
	nop
	nop


loc_8c12c9be:
dt r3
bf loc_8c12c968
mov 0x01,r0
lds.l @r15+,pr
or r0,r12
mov.l @r15+,r11
rts
mov.l @r15+,r10
;==============================================

loc_8c12c9ce:
mov r3,r9
bsr loc_8c12c720
mov 0x03,r3
bsr loc_8c12c760
nop
bsr loc_8c12c720
nop
bsr loc_8c12c760
nop
bsr loc_8c12c720
nop
bsr loc_8c12c760
nop
bra loc_8c12c9be
mov r9,r3

loc_8c12c9ec:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c9f6
add 0x18,r4

loc_8c12c9f6:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12ca00
add 0x18,r4

loc_8c12ca00:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12ca0a
add 0x18,r4

loc_8c12ca0a:
bra loc_8c12c9be
nop
#data 0x0008
#data 0xBEF6
#data 0xE000
#data 0x0008
#data 0xBEF3
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBF0F
#data 0xE000
#data 0x0018
#data 0xBF0C
#data 0xE001
#data 0xAFC9
	nop
#data 0x0008
#data 0xBEE7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBF03
#data 0xE000
#data 0x0008
#data 0xEB02
#data 0xBEDF
#data 0xE002
#data 0x0018
#data 0xBEFC
#data 0xE001
#data 0xAFB9
	nop
#data 0x0008
#data 0xBED7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEF3
#data 0xE000
#data 0x0018
#data 0xEB02
#data 0xBEEF
#data 0xE000
#data 0xAFAC
	nop
#data 0x0008
#data 0xEB01
#data 0xBEE9
#data 0xE000
#data 0x0008
#data 0xBEC6
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBEE2
#data 0xE000
#data 0x0018
#data 0xBEBF
#data 0xE002
#data 0xAF9C
	nop
#data 0x0008
#data 0xEB01
#data 0xBED9
#data 0xE000
#data 0x0008
#data 0xBEB6
#data 0xE001
#data 0x0018
#data 0xEB02
#data 0xBED2
#data 0xE001
#data 0xAF8F
	nop
#data 0x0008
#data 0xEB02
#data 0xBECC
#data 0xE000
#data 0x0008
#data 0xBEC9
#data 0xE001
#data 0x0018
#data 0xBEA6
#data 0xE002
#data 0xAF83
	nop
	nop
	nop
	nop
	nop


loc_8c12cac0:
mov r4,r1
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cad8
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12cae0
fldi1 fr7

loc_8c12cad8:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7
add 0x18,r4

loc_8c12cae0:
pref @r4
add 0x20,r4
pref @r4
add 0xE0,r4
fsca fpul,fr5
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cb00
fmov.s @r4+,fr0
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr0
fmov.s @r0+,fr1
fmov.s @r0+,fr2
bra loc_8c12cb08
fldi1 fr3

loc_8c12cb00:
fmov.s @r4+,fr1
fmov.s @r4,fr2
fldi1 fr3
add 0x18,r4

loc_8c12cb08:
add 0x20,r4
pref @r4
add 0xE0,r4
fsca fpul,fr1
flds fr7,fpul
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cb28
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12cb2e
fldi1 fr7

loc_8c12cb28:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7

loc_8c12cb2e:
mov r1,r4
sts fpul,r0
fsca fpul,fr5
cmp/hi r0,r12
flds fr3,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
flds fr7,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
rts
rotcl r9
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x61F3
#data 0xFFFB
#data 0xFFEB
#data 0xFFDB
#data 0xFFCB

loc_8C12CB6A:
fmov.s fr11,@-r15
fmov.s fr10,@-r15
fmov.s fr9,@-r15
fmov.s fr8,@-r15
sts.l pr,@-r15
mov.l @(loc_8C12CD40,pc),r0 ; r0 set to 0x8C2DEEA0
mov.l r0,@-r15
mov.l @r4+,r0 ; r0 ??? bc r4 is ???

loc_8C12CB7A:
cmp/pl r0
mov.l @r15,r9
bt/s loc_8C12CBA0
cmp/pz r0
mov r0,r8
mov r11,r0
mov.l r5,@(r0,r10)
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr8
fmov.s @r15+,fr9
fmov.s @r15+,fr10
fmov.s @r15+,fr11
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
rts
fmov.s @r15+,fr15
;==============================================
	nop

#align4
loc_8c12cba0:
mov r0,r1
mov 0xFB,r2
mov.l @r9+,r3
and 0x40,r0
shld r2, r0
mov 0xFD,r2
and r2,r3
or r0,r3
add 0x20,r4
mov 0xCF,r2
and r2,r3
mov r1,r0
mov r15,r2
add 0x28,r2
lds r3,fpul
mov.l @(0x28,r2),r2
cmp/pz r2
mov 0x1B,r2
bt/s loc_8c12cbca
and 0x03,r0
xor 0x01,r0

loc_8c12cbca:
shld r2, r0
mov 0x03,r3
fsca fpul,fr3
shld r2, r3
pref @r4
not r3,r3
mov.l @r9+,r2
and r3,r2
fsts fpul,fr0
or r0,r2
lds r2,fpul
add 0xE0,r4
fsts fpul,fr1
add 0x10,r6
fmov.s @r9+,fr2
fmov.s fr2,@-r6
add 0x20,r5
fmov.s fr0,@-r6
fsca fpul,fr3
pref @r6
add 0x20,r6
rotcr r12
mov r1,r0
bt/s loc_8c12cc10
shll r12
tst 0x08,r0
bt loc_8c12cc08
bsr loc_8c12ce80
nop
bra bank12.loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc08:
bsr loc_8c12cd60
nop
bra bank12.loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc10:
mov 0x00,r1
tst 0x40,r0
addc r1,r12
tst 0x10,r0
bt/s loc_8c12cc24
tst 0x08,r0
bsr loc_8c12cf80
nop
bra bank12.loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc24:
bt loc_8c12cc30
bsr loc_8c12d5c0
nop
bra bank12.loc_8c12cb7a
mov.l @r4+,r0
	nop


loc_8c12cc30:
bra loc_8c12cc30
nop
#data 0x8080
#data 0x3B80
	nop
	nop
	nop
	nop

loc_8c12cc40:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12cc60:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12cd40:
#data 0xEEA0
#data 0x8C2D
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12cd60:
mov.l @r4+,r3
add 0x20,r6
fsca fpul,fr3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12cd76
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12cd76:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12cd82:
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12ce2c
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cd9e
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cd9e:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12ce04
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12cddc
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cddc:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cd82
add 0x40,r6
	nop


loc_8c12ce04:
cmp/pl r0
mov r14,r3
bf loc_8c12ce24
tst 0x80,r0
bt loc_8c12ce24
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12cddc
mov r4,r14
add 0x18,r4
bra loc_8c12cddc
add 0xF8,r14

loc_8c12ce24:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12ce4c
fmov fr10,fr6

loc_8c12ce2c:
cmp/pl r0
mov r14,r3
bf loc_8c12ce4c
tst 0x80,r0
bt loc_8c12ce4c
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12cd9e
mov r4,r14
add 0x18,r4
bra loc_8c12cd9e
add 0xF8,r14

loc_8c12ce4c:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12ce80:
mov.l @r4+,r9
add 0x20,r6
fsca fpul,fr3
mov 0x03,r3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12ce98
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12ce98:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12cea4:
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12cf44
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cec0
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cec0:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12cf24
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12cefe
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cefe:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cea4
add 0x40,r6

loc_8c12cf24:
dt r9
mov r6,r2
bt/s loc_8c12cf3c
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12cefe
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12cefe
add 0xF8,r14

loc_8c12cf3c:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12cf5c
fmov fr10,fr6

loc_8c12cf44:
dt r9
mov r6,r2
bt/s loc_8c12cf5c
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12cec0
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12cec0
add 0xF8,r14

loc_8c12cf5c:
fmul fr7,fr6
fmov.s fr0,@-r6
fmul fr7,fr5
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
add 0xF8,r4
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12cf80:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3
fsca fpul,fr3
fmov fr3,fr0
fmov fr7,fr12
fmov fr11,fr2
fmov fr15,fr14
fsca fpul,fr3
fmov fr1,fr12
fmov fr3,fr14

loc_8c12cf98:
mov 0x00,r11
bsr loc_8c12d300
mov 0x00,r9
bf loc_8c12cfa2
bra loc_8c12d0d6

loc_8c12cfa2:
rotcl r9
bsr loc_8c12d340
add 0x01,r11
bsr loc_8c12d300
nop
bf loc_8c12cfb0
bra loc_8c12d12e

loc_8c12cfb0:
rotcl r9
bsr loc_8c12d340
add 0x01,r11
add 0x20,r6
mov.l @r4,r0
fsca fpul,fr3
tst 0x01,r0
mov r4,r14
bf/s loc_8c12cfca
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12cfca:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
fsca fpul,fr5

loc_8c12cfd6:
fmov.s fr2,@-r6
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12d094
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12d0b4
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cffc
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cffc:
add 0x40,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
add 0xC0,r4
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
fsca fpul,fr9
fmov.s fr6,@-r6
fmov.s fr4,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
flds fr11,fpul
fldi1 fr11
fdiv fr8,fr11
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12d088
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12d0a8
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12d046
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12d046:
fmov.s @r14+,fr4
add 0x40,r4
fmov.s @r14+,fr6
pref @r4
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
fsca fpul,fr5
fmov.s fr10,@-r6
add 0xC0,r4
fmov.s fr8,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cfd6
add 0x40,r6

loc_8c12d06c:
mov.l @r4+,r0
cmp/pl r0
bf/s loc_8c12d07a
tst 0x80,r0
bf/s loc_8c12cf98
mov.l @r4+,r3
add 0xFC,r4

loc_8c12d07a:
lds.l @r15+,pr
mov 0x01,r0
mov.l @r15+,r11
add 0xFC,r4
mov.l @r15+,r10
rts
or r0,r12
;==============================================

loc_8c12d088:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12d09a
fmov fr10,fr6

loc_8c12d094:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12d09a:
rotcl r9
fsca fpul,fr3
mov r14,r2
fsts fpul,fr4
bra loc_8c12d1ae
add 0xE8,r6
	nop


loc_8c12d0a8:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12d0ba
fmov fr10,fr6

loc_8c12d0b4:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12d0ba:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fsca fpul,fr3
pref @r6
bra loc_8c12d06c
add 0x20,r6

loc_8c12d0d6:
dt r3
add 0x01,r11
bsr loc_8c12d300
dt r3
bf/s loc_8c12d164
rotcl r9
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf/s loc_8c12d0f4
fldi1 fr7
add 0xE8,r4
mov.l @(0x04,r14),r14
add r4,r14

loc_8c12d0f4:
fmov.s @r14+,fr4
fmov.s @r14+,fr5

loc_8c12d0f8:
fmov.s @r14+,fr6
mov 0x20,r1
mov.l @r4,r0
add 0x20,r4
pref @r4
fipr fv12,fv4
tst 0x01,r0
add 0xE0,r4
bf/s loc_8c12d114
mov r4,r14
mov 0x08,r1
mov.l @(0x04,r14),r14
add 0x08,r14
add r4,r14

loc_8c12d114:
flds fr7,fpul
sts fpul,r0
cmp/hi r0,r12
add 0x01,r11
bf/s loc_8c12d1a0
rotcl r9
dt r3
fldi1 fr7
bt loc_8c12d06c
add r1,r4
fmov.s @r14+,fr4
bra loc_8c12d0f8
fmov.s @r14+,fr5

loc_8c12d12e:
bsr loc_8c12d380
dt r3
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d13c
add 0xE8,r4

loc_8c12d13c:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d146
add 0xE8,r4

loc_8c12d146:
bsr loc_8c12d300
nop
bsr loc_8c12d380
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12d420
mov 0x00,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d160
add 0x18,r4

loc_8c12d160:
bra loc_8c12d1fc
nop

loc_8c12d164:
bsr loc_8c12d380
mov 0x01,r11
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d172
add 0xE8,r4

loc_8c12d172:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d17c
add 0xE8,r4

loc_8c12d17c:
bsr loc_8c12d300
nop
bsr loc_8c12d380
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12d420
mov 0x00,r0
clrt
bsr loc_8c12d3e0
mov 0x01,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d19c
add 0x18,r4

loc_8c12d19c:
bra loc_8c12d1fc
nop

loc_8c12d1a0:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1aa
add 0xE8,r4

loc_8c12d1aa:
bsr loc_8c12d300
nop

loc_8c12d1ae:
bsr loc_8c12d380
nop
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1bc
add 0xE8,r4

loc_8c12d1bc:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1c6
add 0xE8,r4

loc_8c12d1c6:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1d0
add 0xE8,r4

loc_8c12d1d0:
bsr loc_8c12d300
nop
bsr loc_8c12d380
add 0xFE,r11
bsr loc_8c12d300
nop
bsr loc_8c12d380
add 0x01,r11
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d1ea
add 0x18,r4

loc_8c12d1ea:
add 0x01,r11
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d212
mov r9,r0
bsr loc_8c12d3a0
nop
bra loc_8c12d212
mov r9,r0

loc_8c12d1fc:
bsr loc_8c12d300
add 0x01,r11
bsr loc_8c12d380
rotcl r9
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d212
mov r9,r0
bsr loc_8c12d3a0
nop
mov r9,r0

loc_8c12d212:
and 0x07,r0
shll2 r0
braf r0
nop
	nop
	nop
#data 0xA00C
	nop
#data 0xA019
	nop
#data 0xA024
	nop
#data 0xA02A
	nop
#data 0xA038
	nop
#data 0xA03D
	nop
	nop
	nop
#data 0x60B3
#data 0x0008
#data 0xB0EF
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0CB
#data 0x70FF
#data 0x60B3
#data 0x4310
#data 0xB0E7
#data 0x70FF
#data 0x8BD3
#data 0xAF0A
	nop
#data 0x0008
#data 0xB0C1
#data 0x60B3
#data 0x60B3
#data 0x0008
#data 0xB0DD
#data 0x70FF
#data 0x4310
#data 0xB0BA
#data 0x60B3
#data 0x8BC6
#data 0xAEFD
	nop
#data 0x60B3
#data 0x0018
#data 0xB0D3
#data 0x70FE
#data 0x4310
#data 0x890F
#data 0xAF30
	nop
#data 0x60B3
#data 0x0008
#data 0xB0CB
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A7
#data 0x70FF
#data 0x4310
#data 0xB0A4
#data 0x60B3
#data 0x8901
#data 0xAE8C
#data 0x7B01
#data 0xAEE5
	nop
#data 0x60B3
#data 0x4310
#data 0xB0BB
#data 0x70FF
#data 0x8BA7
#data 0xAEDE
	nop
#data 0x60B3
#data 0xC801
#data 0x890D
#data 0x60B3
#data 0x0008
#data 0xB0B1
#data 0x70FF
#data 0x60B3
#data 0x0008
#data 0xB0AD
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A9
#data 0x70FF
#data 0xA008
	nop
#data 0x60B3
#data 0x0008
#data 0xB0A3
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB09F
#data 0x70FF
#data 0x4310
#data 0xB07C
#data 0x60B3
#data 0x8B88
#data 0xAEBF
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d300:
mov.l @r4,r0
fsca fpul,fr3
tst 0x01,r0
mov r4,r14
bf/s loc_8c12d312
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12d312:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fsca fpul,fr5
add 0x40,r4
mov r14,r2
pref @r4
add 0xC0,r4
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
fsca fpul,fr3
fsts fpul,fr4
rts
cmp/hi r0,r12
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d340:
fsca fpul,fr3
add 0x20,r6
fmov.s @r2,fr0
fmul fr7,fr6
fmov.s fr2,@-r6
fmul fr7,fr5
add 0x20,r5
fmov.s fr0,@-r6
mov r6,r2
fmov.s fr6,@-r6
dt r3
fmov.s fr4,@-r6
bf loc_8c12d35e
shar r2
sett

loc_8c12d35e:
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d380:
mov 0x05,r10
mov r11,r0
and 0x03,r0
fsca fpul,fr3
shld r10, r0
mov.l @(bank12.loc_8c12d39c,pc),r10
fmov.s @r2,fr0
add r0,r10
fmov.s fr2,@-r10
fmov.s fr0,@-r10
fmov.s fr6,@-r10
fmov.s fr4,@-r10
rts
fsca fpul,fr3
;==============================================

#align4
loc_8c12d39c:
#data loc_8c12cc60


loc_8c12d3a0:
mov 0x05,r1
mov.l @(bank12.loc_8c12d3d4,pc),r10
mov r11,r0
and 0x03,r0
mov r10,r2
shld r1, r0
fsca fpul,fr3
add r0,r10
add 0xF8,r10
mov r11,r0
fmov.s @r10,fr2
add 0xFF,r0
mov r2,r10
and 0x03,r0
shld r1, r0
add r0,r2
mov r11,r0
fmov.s fr2,@-r2
add 0xFE,r0
and 0x03,r0
shld r1, r0
add r0,r10
fmov.s fr2,@-r10
rts
fsca fpul,fr3
;==============================================
#data 0x0000

#align4
loc_8c12d3d4:
#data loc_8c12cc60
	nop
	nop
	nop
	nop


loc_8c12d3e0:
and 0x03,r0
mov 0x05,r2
mov.l @(bank12.loc_8c12d418,pc),r10
shld r2, r0
fsca fpul,fr3
add r0,r10
fmov.s @r10+,fr0
fmov.s @r10+,fr2
add 0x20,r6
fmov.s @r10+,fr4
fmul fr3,fr2
fmov.s @r10+,fr6
fmul fr3,fr1
fmov.s fr6,@-r6
mov r6,r2
fmov.s fr4,@-r6
add 0x20,r5
fmov.s fr2,@-r6
bf/s loc_8c12d40c
fmov.s fr0,@-r6
shar r2
sett

loc_8c12d40c:
mov.l r2,@r6
fsca fpul,fr3
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

#align4
loc_8c12d418:
#data loc_8c12cc40
	nop
	nop


loc_8c12d420:
and 0x03,r0
shll2 r0
mov.l @(bank12.loc_8c12d5b4,pc),r10
shll2 r0
add r0,r0
mov r10,r2
add r0,r10
mov r11,r0
and 0x03,r0
fmov.s @r10,fr2
shll2 r0
shll2 r0
add r0,r0
add r0,r2
fmov.s @r2,fr1
lds r12,fpul
fsts fpul,fr0
fsub fr2,fr0
add 0x18,r10
fsub fr2,fr1
add 0x18,r2
fdiv fr1,fr0
lds r7,fpul
fsts fpul,fr1
fsca fpul,fr3
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
flds fr4,fpul
sts fpul,r0
shlr16 r0
mov r0,r1
shlr8 r0
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr2,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr4,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr2,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr4,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr2,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
flds fr5,fpul
add 0x20,r6
sts fpul,r0
shlr16 r0
lds r8,fpul
mov r0,r1
shlr8 r0
fsts fpul,fr2
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr3,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr5,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr3,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr5,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr3,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
lds r8,fpul
fsts fpul,fr3
fmov.s fr2,@-r6
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
fsub fr2,fr4
fsub fr3,fr5
fmac fr0,fr4,fr2
fmac fr0,fr5,fr3
fmov.s fr2,@-r6
fsca fpul,fr3
fmov.s fr1,@-r6
fmov.s @r2,fr5
add 0xFC,r2
fmov.s @r10,fr3
add 0xFC,r10
fmov.s @r2,fr4
fmov.s @r10,fr2
fsub fr3,fr5
fsub fr2,fr4
mov 0xF0,r2
fmac fr0,fr5,fr3
shll16 r2
fmac fr0,fr4,fr2
shll8 r2
fmul fr1,fr3
add 0x20,r5
fmul fr1,fr2
fmov.s fr3,@-r6
fmov.s fr2,@-r6
bt loc_8c12d5ac
mov r6,r2

loc_8c12d5ac:
mov.l r2,@-r6
pref @r6
rts
add 0x20,r6
;==============================================

#align4
loc_8c12d5b4:
#data loc_8c12cc40
	nop
	nop
	nop
	nop


loc_8c12d5c0:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3

loc_8c12d5c8:
bsr loc_8c12d720
mov 0x00,r9
mov r9,r0
cmp/eq 0x00,r0
bt loc_8c12d62e
cmp/eq 0x07,r0
bt loc_8c12d64c
bsr loc_8c12d300
mov 0x00,r11
bsr loc_8c12d380
nop
bsr loc_8c12d300
mov 0x01,r11
bsr loc_8c12d380
nop
bsr loc_8c12d300
mov 0x02,r11
bsr loc_8c12d380
nop
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d5fa
shll2 r9
bsr loc_8c12d3a0
nop

loc_8c12d5fa:
braf r9
nop
	nop
	nop
#data 0xA034
	nop
#data 0xA041
	nop
#data 0xA04F
	nop
#data 0xA05A
	nop
#data 0xA068
	nop
#data 0xA073
	nop
	nop
	nop


loc_8c12d61e:
dt r3
bf loc_8c12d5c8
mov 0x01,r0
lds.l @r15+,pr
or r0,r12
mov.l @r15+,r11
rts
mov.l @r15+,r10
;==============================================

loc_8c12d62e:
mov r3,r9
bsr loc_8c12d300
mov 0x03,r3
bsr loc_8c12d340
nop
bsr loc_8c12d300
nop
bsr loc_8c12d340
nop
bsr loc_8c12d300
nop
bsr loc_8c12d340
nop
bra loc_8c12d61e
mov r9,r3

loc_8c12d64c:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d656
add 0x18,r4

loc_8c12d656:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d660
add 0x18,r4

loc_8c12d660:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d66a
add 0x18,r4

loc_8c12d66a:
bra loc_8c12d61e
nop
#data 0x0008
#data 0xBEB6
#data 0xE000
#data 0x0008
#data 0xBEB3
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBECF
#data 0xE000
#data 0x0018
#data 0xBECC
#data 0xE001
#data 0xAFC9
	nop
#data 0x0008
#data 0xBEA7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEC3
#data 0xE000
#data 0x0008
#data 0xEB02
#data 0xBE9F
#data 0xE002
#data 0x0018
#data 0xBEBC
#data 0xE001
#data 0xAFB9
	nop
#data 0x0008
#data 0xBE97
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEB3
#data 0xE000
#data 0x0018
#data 0xEB02
#data 0xBEAF
#data 0xE000
#data 0xAFAC
	nop
#data 0x0008
#data 0xEB01
#data 0xBEA9
#data 0xE000
#data 0x0008
#data 0xBE86
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBEA2
#data 0xE000
#data 0x0018
#data 0xBE7F
#data 0xE002
#data 0xAF9C
	nop
#data 0x0008
#data 0xEB01
#data 0xBE99
#data 0xE000
#data 0x0008
#data 0xBE76
#data 0xE001
#data 0x0018
#data 0xEB02
#data 0xBE92
#data 0xE001
#data 0xAF8F
	nop
#data 0x0008
#data 0xEB02
#data 0xBE8C
#data 0xE000
#data 0x0008
#data 0xBE89
#data 0xE001
#data 0x0018
#data 0xBE66
#data 0xE002
#data 0xAF83
	nop
	nop
	nop
	nop
	nop


loc_8c12d720:
mov r4,r1
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d738
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12d740
fldi1 fr7

loc_8c12d738:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7
add 0x18,r4

loc_8c12d740:
pref @r4
add 0x20,r4
pref @r4
add 0xE0,r4
fsca fpul,fr5
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d760
fmov.s @r4+,fr0
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr0
fmov.s @r0+,fr1
fmov.s @r0+,fr2
bra loc_8c12d768
fldi1 fr3

loc_8c12d760:
fmov.s @r4+,fr1
fmov.s @r4,fr2
fldi1 fr3
add 0x18,r4

loc_8c12d768:
add 0x20,r4
pref @r4
add 0xE0,r4
fsca fpul,fr1
flds fr7,fpul
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d788
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12d78e
fldi1 fr7

loc_8c12d788:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7

loc_8c12d78e:
mov r1,r4
sts fpul,r0
fsca fpul,fr5
cmp/hi r0,r12
flds fr3,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
flds fr7,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
rts
rotcl r9
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12d7c0:
#data 0x7418
#data 0xD178
#data 0xF19D
#data 0xFFFB
#data 0xF018
#data 0xFFEB
#data 0xFFDB
#data 0xF103
#data 0xFFCB
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x6D73
#data 0x4F22
#data 0x7FE0
#data 0xF79D
#data 0xE000
#data 0xF05D
#data 0xFF07
#data 0xD06E
#data 0xF17A
#data 0x6102
#data 0xD26E
#data 0x1F11
#data 0x6122
#data 0xD06E
#data 0xD26B
#data 0x1F13
#data 0x6322
#data 0x6102
#data 0x1F32
#data 0x6C56
#data 0x1F14
#data 0x1FC5
#data 0x6C56
#data 0x6156
#data 0x1FC6
#data 0x1F17
#data 0x6C52
#data 0x7514
#data 0xDA61
#data 0x6752
#data 0x6AA2
#data 0xE204
#data 0x4218
#data 0x55A1
#data 0x4228
#data 0x72FF
#data 0x2259
#data 0x6863
#data 0xE6E0
#data 0x4618
#data 0x4628
#data 0x262B
#data 0x7410
	nop

loc_8c12d838:
#data 0xF79D
#data 0x6043
#data 0x7030
#data 0x0083
#data 0x63F3
#data 0xF449
#data 0xF549
#data 0xF649
#data 0xF5FD
#data 0xF139
#data 0xF049
#data 0xF012
#data 0x4C5A
#data 0xE0FE
#data 0xF700
#data 0xF10D
#data 0xF715
#data 0xF701
#data 0x2C09
#data 0x8F0D
#data 0xF701
#data 0xF715
#data 0x8F0A
#data 0x7C01

loc_8c12d868:
#data 0x742C
#data 0x6046
#data 0x340C
#data 0x6042
#data 0x2008
#data 0x7410
#data 0x8BE0
#data 0xA073
	nop
	nop

loc_8c12d87c:
#data 0xF139
#data 0xD04F
#data 0xF708
#data 0xF742
#data 0xF04D
#data 0xF102
#data 0xF571
#data 0xF339
#data 0xD04A
#data 0xF515
#data 0xF708
#data 0xF302
#data 0x8FE8
#data 0xF742
#data 0xF671
#data 0xF039
#data 0xF635
#data 0xF739
#data 0xF042
#data 0x8FE1
#data 0xF011
#data 0xF505
#data 0xF742
#data 0x8DDD
#data 0xF731
#data 0xF675
#data 0x89DA
#data 0x7430
#data 0x6046
#data 0x6103
#data 0x2DD8
#data 0x891A
#data 0x6083
#data 0xD214
#data 0x88FF
#data 0x6222
#data 0x6013
#data 0x53F5
#data 0xC903
#data 0x8D02
#data 0x4211
#data 0xA002
#data 0xE000

loc_8c12d8d2:
#data 0x8900
#data 0xCA01

loc_8c12d8d6:
#data 0xE21B
#data 0x402D
#data 0x2632
#data 0x7520
#data 0x1601
#data 0x0683
#data 0x7620
#data 0x1F06
#data 0x7420
#data 0x0483
#data 0x74E0
#data 0x6B63
#data 0xE2FF
#data 0x7DFF

loc_8c12d8f2:
#data 0x4C25
#data 0x6013
#data 0x3CCC
#data 0x8F05
#data 0xC808
#data 0x8B01
#data 0xA16F
#data 0xC903

loc_8c12d902:
#data 0xA31D
#data 0xC903

loc_8c12d906:
#data 0x8B01
#data 0xA05A
#data 0xC903

loc_8c12d90c:
#data 0xA0E8
#data 0xC903
#data 0xEE8C
#data 0x8C2D

loc_8c12d914:
#data 0x2DD8
#data 0x8911

loc_8c12d918:
#data 0x0683
#data 0x7620
#data 0x50F5
#data 0x7540
#data 0x51F6
#data 0x52F7
#data 0x0683
#data 0x76A0
#data 0x2602
#data 0xCB40
#data 0x1611
#data 0x221B
#data 0x0683
#data 0x7620
#data 0x2602
#data 0x1621
#data 0x0683
#data 0x7660

loc_8c12d93c:
#data 0x6042
#data 0x2008
#data 0x7410
#data 0x890D
#data 0xAF78
	nop

loc_8c12d948:
#data 0x2DD8
#data 0x8D04
#data 0x6042
#data 0x3B60
#data 0x8BE2
#data 0x76E0
#data 0x75E0

loc_8c12d956:
#data 0x2008
#data 0x7410
#data 0x8901
#data 0xAF6C
	nop

loc_8c12d960:
#data 0x2DD8
#data 0x7D01
#data 0x8B03
#data 0x3B60
#data 0x74F0
#data 0x8BD5
#data 0x75E0

loc_8c12d96e:
#data 0x1A51
#data 0x7F20
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x6EF6
#data 0xFCF9
#data 0xFDF9
#data 0xFEF9
#data 0xFFF9
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xA508
#data 0x8C2A
#data 0xB448
#data 0x8C32
#data 0x6B98
#data 0x8C2D
#data 0x6B9C
#data 0x8C2D

loc_8c12d9b0:
#data bank16.loc_8c16BD88

loc_8c12d9b4:
#data bank16.loc_8c16BD8C

loc_8c12d9b8:
#data bank16.loc_8c16BD94

loc_8c12d9bc:
#data bank16.loc_8c16BD90

loc_8c12d9c0:
#data 0xE901
#data 0x6346
#data 0xF3FD
#data 0x495A

loc_8c12d9c8:
#data 0x73FE
#data 0x6903
#data 0x7901
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12d9de:
#data 0xF4E9
#data 0xF6E9
#data 0xF72D
#data 0xF5FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12d9f6:
#data 0xF79D
#data 0xF743
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8B00
#data 0xE010

loc_8c12da06:
#data 0x306C
#data 0xF672
#data 0xF572
#data 0xF06B
#data 0xF04B
#data 0xF8E9
#data 0xFAE9
#data 0xFB2D
#data 0xF9FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12da28:
#data 0xFB9D
#data 0xFB83
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE010
#data 0x8B00
#data 0xE028

loc_8c12da38:
#data 0x306C
#data 0xFAB2
#data 0xF9B2
#data 0xF0AB
#data 0xF08B
#data 0x6063
#data 0x4021
#data 0x2602

loc_8c12da48:
#data 0x7901
#data 0xFCE9
#data 0x4310
#data 0xFEE9
#data 0xFF2D
#data 0x6E43
#data 0x8D07
#data 0xFDFD
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12da66:
#data 0xFF9D
#data 0xFFC3
#data 0x7620
#data 0x0683
#data 0x76E0
#data 0x0E83
#data 0xF3FD
#data 0xE01C
#data 0xFEF2
#data 0x306C
#data 0xFDF2
#data 0xF0FB
#data 0xF0EB
#data 0xF0DB
#data 0x0083
#data 0x2338
#data 0x6042
#data 0x890C
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8900
#data 0xE010

loc_8c12da94:
#data 0x306C
#data 0xF0FB
#data 0x7640
#data 0xF0EB
#data 0x7540
#data 0xF0DB
#data 0xAFD2
#data 0xF3FD

loc_8c12daa4:
#data 0x4015
#data 0x7640
#data 0x8900
#data 0xAF33

loc_8c12daac:
#data 0x7540
#data 0xC880
#data 0x7404
#data 0x8D02
#data 0x6346
#data 0xAF87
#data 0xF3FD

loc_8c12daba:
#data 0xC810
#data 0xF3FD
#data 0x8B83
#data 0xA012
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c12dae0:
#data 0xE901
#data 0x6346
#data 0xF3FD
#data 0x495A

loc_8c12dae8:
#data 0x6903
#data 0x7901
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12dafc:
#data 0xF4E9
#data 0xF6E9
#data 0xF72D
#data 0xF5FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db14:
#data 0xF79D
#data 0xF743
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8B00
#data 0xE010

loc_8c12db24:
#data 0x306C
#data 0xF672
#data 0xF572
#data 0xF06B
#data 0xF04B
#data 0xF8E9
#data 0xFAE9
#data 0xFB2D
#data 0xF9FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db46:
#data 0xFB9D
#data 0xFB83
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE010
#data 0x8B00
#data 0xE028

loc_8c12db56:
#data 0x306C
#data 0xFAB2
#data 0xF9B2
#data 0xF0AB
#data 0xF08B
#data 0x6063
#data 0x4021
#data 0x2602
#data 0x7901
#data 0xFCE9
#data 0x4310
#data 0xFEE9
#data 0xFF2D
#data 0x6E43
#data 0x8D07
#data 0xFDFD
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db84:
#data 0xFF9D
#data 0xFFC3
#data 0x7620
#data 0x0683
#data 0x76E0
#data 0x0E83
#data 0xF3FD
#data 0xE01C
#data 0xFEF2
#data 0x306C
#data 0xF0FBFDF2
#data 0xF0DBF0EB
#data 0x23380083
#data 0x89046042
#data 0x75407640
#data 0xAFA57901
#data 0xF3FD

loc_8c12dbb2:
#data 0x4015
#data 0x89007640
#data 0xAEAC

loc_8c12dbba:
#data 0x7540
#data 0x7404C880
#data 0x63468D02
#data 0xF3FDAF90

#align4
loc_8c12dbc8:
#data 0xF3FDC810
#data 0xAEFB898C
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12dbe0:
#data 0xE9014C5A
#data 0xF3FD6346
#data 0x495AF10D

#align4
loc_8c12dbec:
#data 0x690373FE
#data 0x6E437901
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12dc02:
#data 0xF4E9
#data 0xF72DF6E9
#data 0x6E43F5FD
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12dc1a:
#data 0x0E83
#data 0xE001F71D
#data 0xF743F79D
#data 0x405AF40D
#data 0xFAE9F8E9
#data 0xF9FDFB2D
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12dc40:
#data 0xFB1D0E83
#data 0xFB9DE001
#data 0xF80DFB83
#data 0xF145405A
#data 0x60938B3B
#data 0xE028C801
#data 0xE0108B00

#align4
loc_8c12dc5c:
#data 0x306CFE6C
#data 0xFC4CFEF2
#data 0xF0EBFDF2
#data 0xF185F0CB
#data 0x60938B14
#data 0xE010C801
#data 0xE0288B00

#align4
loc_8c12dc78:
#data 0x306CFEAC
#data 0xFC8CFEF2
#data 0xF0EBFDF2
#data 0x6063F0CB
#data 0x26024021
#data 0x3800E0FF
#data 0x3200894E
#data 0x89748B4C

#align4
loc_8c12dc98:
#data 0x7901F3FD
#data 0xFD5CB2D8
#data 0x606379FF
#data 0xF3FD4021
#data 0xE0FF2602
#data 0x8B003800
#data 0xA08C

loc_8c12dcb2:
	nop
#data 0x89003200
#data 0xA088

loc_8c12dcba:
	nop
#data 0x085AFE1D
#data 0xE001FD1D
#data 0xA081025A
#data 0x405A

loc_8c12dcca:
#data 0xF185
#data 0x60938B22
#data 0xE010C801
#data 0xE0288B00

#align4
loc_8c12dcd8:
#data 0x306CFEAC
#data 0xFC8CFEF2
#data 0xF0EBFDF2
#data 0xF3FDF0CB
#data 0xFD5CB2B2
#data 0x40216063
#data 0xE0FF2602
#data 0x3800F3FD
#data 0xA0948B00

#align4
loc_8c12dcfc:
#data 0x30200009
#data 0xA0908900

#align4
loc_8c12dd04:
#data 0xFE1D0009
#data 0xFD1D085A
#data 0x025AE001
#data 0x405AA089

#align4
loc_8c12dd14:
#data 0x88FF6083
#data 0x40216063
#data 0xA0B48B00

#align4
loc_8c12dd20:
#data 0x60232602
#data 0x890088FF
#data 0xA0AF

loc_8c12dd2a:
	nop
#data 0x0009A0CB

#align4
loc_8c12dd30:
#data 0x7901B276
#data 0xB2A98B0B
#data 0x23387620
#data 0xA0E18B00

#align4
loc_8c12dd40:
#data 0xB2B30009
#data 0xB2BB6093
#data 0xAFF1F3FD
#data 0xFAEC

loc_8c12dd4e:
#data 0xB2BD
#data 0xB2ABF3FD
#data 0xB2D96093
#data 0x60837620
#data 0x890188FF
#data 0x6093B2F2

#align4
loc_8c12dd64:
#data 0x8B002338
#data 0xA0CC

loc_8c12dd6a:
	nop
#data 0x6093B29E
#data 0x88FF6083
#data 0xB2F58901
#data 0x6093

loc_8c12dd7a:
#data 0xB2A1
#data 0xA025F3FD
#data 0xFAEC

loc_8c12dd82:
#data 0xB24D
#data 0x8B0B7901
#data 0x7620B280
#data 0x8B002338
#data 0xA0B8

loc_8c12dd92:
	nop
#data 0x6093B28A
#data 0xF3FDB292
#data 0xFAECAFF1

#align4
loc_8c12dda0:
#data 0xF3FDB294
#data 0x6093B282
#data 0x7620B2B0
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x2338025A
#data 0x8B00405A
#data 0xA0A2

loc_8c12ddbe:
	nop
#data 0x6093B274
#data 0xF3FDB27C
#data 0xFAECA000

#align4
loc_8c12ddcc:
#data 0x7901B228
#data 0xB25B8B1B
#data 0xB2697620
#data 0xB2976093
#data 0x60837620
#data 0x890288FF
#data 0xB2AF6093
#data 0x7001

loc_8c12ddea:
#data 0x2338
#data 0xA0898B00

#align4
loc_8c12ddf0:
#data 0x60930009
#data 0x7001B25A
#data 0x88FF6083
#data 0xB2CF8901
#data 0x6093

loc_8c12de02:
#data 0xB25D
#data 0xA00EF3FD
#data 0xFAEC

loc_8c12de0a:
#data 0xB25F
#data 0x6083F3FD
#data 0x890288FF
#data 0xB2976093
#data 0x7001

loc_8c12de1a:
#data 0x2338
#data 0xB24F8972
#data 0xA032F3FD
#data 0xFAEC

loc_8c12de26:
#data 0xB1FB
#data 0x8B177901
#data 0xF3FDB24E
#data 0x88FF6083
#data 0xB2878901
#data 0x6093

loc_8c12de3a:
#data 0xB237
#data 0x60836093
#data 0x890188FF
#data 0x6093B28E

#align4
loc_8c12de48:
#data 0x7620B29A
#data 0x89592338
#data 0x6093B22C
#data 0xF3FDB234
#data 0xFAECAF6A

#align4
loc_8c12de5c:
#data 0xF4CCF6EC
#data 0xB253F3FD
#data 0x60837620
#data 0x890188FF
#data 0x6093B26C

#align4
loc_8c12de70:
#data 0x89472338
#data 0x6093B21A
#data 0x88FF6083
#data 0xB2718901
#data 0x6093

loc_8c12de82:
#data 0xB21D
#data 0xAFA1F3FD
#data 0xFAEC

loc_8c12de8a:
#data 0xB1C9
#data 0x89077901
#data 0xF48CF6AC
#data 0xF8CCFAEC
#data 0x8BF62338
#data 0xF3FDA032

#align4
loc_8c12dea0:
#data 0xF3FDB28C
#data 0xFD5CB1D4
#data 0x7620B26A
#data 0x88FF6083
#data 0xB2A18901
#data 0x7620

loc_8c12deb6:
#data 0x2338
#data 0xB1F78924
#data 0xB1FF6093
#data 0xAFB0F3FD
#data 0xFAEC

loc_8c12dec6:
#data 0xB1AB
#data 0x89077901
#data 0xF48CF6AC
#data 0xF8CCFAEC
#data 0x8BF62338
#data 0xF3FDA014

#align4
loc_8c12dedc:
#data 0xF3FDB26E
#data 0xFD5CB1B6
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x405A025A
#data 0x7620B246
#data 0x89052338
#data 0x6093B1D8
#data 0xF3FDB1E0
#data 0xFAECAF91

#align4
loc_8c12df04:
#data 0x40156042
#data 0xAD1D8900

#align4
loc_8c12df0c:
#data 0x7404C880
#data 0x63468D02
#data 0xF3FDAE6A

#align4
loc_8c12df18:
#data 0xF3FDC810
#data 0xAE658900

#align4
loc_8c12df20:
#data 0xA0130009
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12df40:
#data 0xE9014C5A
#data 0xF3FD6346
#data 0x495AF10D

#align4
loc_8c12df4c:
#data 0x79016903
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12df60:
#data 0xF6E9F4E9
#data 0xF5FDF72D
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12df78:
#data 0xF71D0E83
#data 0xF79DE001
#data 0xF40DF743
#data 0xF8E9405A
#data 0xFB2DFAE9
#data 0x6E43F9FD
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12df9e:
#data 0x0E83
#data 0xE001FB1D
#data 0xFB83FB9D
#data 0x405AF80D
#data 0x8B37F145
#data 0xC8016093
#data 0x8B00E028
#data 0xE010

loc_8c12dfba:
#data 0xFE6C
#data 0xFEF2306C
#data 0xFDF2FC4C
#data 0xF0CBF0EB
#data 0x8B14F185
#data 0xC8016093
#data 0x8B00E010
#data 0xE028

loc_8c12dfd6:
#data 0xFEAC
#data 0xFEF2306C
#data 0xFDF2FC8C
#data 0xF0CBF0EB
#data 0x40216063
#data 0xE0FF2602
#data 0x89443800
#data 0x8B423200
#data 0x895F

loc_8c12dff6:
#data 0xF3FD
#data 0xB1297901
#data 0x79FFFD5C
#data 0x40216063
#data 0x2602F3FD
#data 0x3800E0FF
#data 0x32008970
#data 0xFE1D8B6E
#data 0xFD1D085A
#data 0x025AE001
#data 0x405AA068

#align4
loc_8c12e020:
#data 0x8B1EF185
#data 0xC8016093
#data 0x8B00E010
#data 0xE028

loc_8c12e02e:
#data 0xFEAC
#data 0xFEF2306C
#data 0xFDF2FC8C
#data 0xF0CBF0EB
#data 0xB107F3FD
#data 0x6063FD5C
#data 0x26024021
#data 0xF3FDE0FF
#data 0x89703080
#data 0x8B6E3020
#data 0x085AFE1D
#data 0xE001FD1D
#data 0xA068025A
#data 0x405A

loc_8c12e062:
#data 0x6083
#data 0x8B0088FF
#data 0xA08A

loc_8c12e06a:
	nop
#data 0x88FF6023
#data 0xA0858900

#align4
loc_8c12e074:
#data 0xA09C0009
	nop

loc_8c12e07a:
#data 0xB0D1
#data 0x8B087901
#data 0x7620B104
#data 0x79012338
#data 0xA0AC8B00

#align4
loc_8c12e08c:
#data 0xAF670009
#data 0xF3FD

loc_8c12e092:
#data 0xB11B
#data 0xB109F3FD
#data 0xB1376093
#data 0x60837620
#data 0x890188FF
#data 0x6093B150

#align4
loc_8c12e0a8:
#data 0x79012338
#data 0xA09A8B00

#align4
loc_8c12e0b0:
#data 0xAF550009
#data 0xF3FD

loc_8c12e0b6:
#data 0xB0B3
#data 0x8B087901
#data 0x7620B0E6
#data 0x79012338
#data 0xA08E8B00

#align4
loc_8c12e0c8:
#data 0xAF490009
#data 0xF3FD

loc_8c12e0ce:
#data 0xB0FD
#data 0xB0EBF3FD
#data 0xB1196093
#data 0xFE1D7620
#data 0xFD1D085A
#data 0x025AE001
#data 0x2338405A
#data 0x897C7901
#data 0xF3FDAF38

#align4
loc_8c12e0f0:
#data 0x7901B096
#data 0xB0C98B10
#data 0xB0D77620
#data 0xB1056093
#data 0x60837620
#data 0x890288FF
#data 0xB11D6093
#data 0x7001

loc_8c12e10e:
#data 0x2338
#data 0x89687901
#data 0xF3FDAF24

#align4
loc_8c12e118:
#data 0xF3FDB0D8
#data 0x88FF6083
#data 0x60938902
#data 0x7001B110

#align4
loc_8c12e128:
#data 0x79012338
#data 0xAF17895B
#data 0xF3FD

loc_8c12e132:
#data 0xB075
#data 0x8B147901
#data 0xF3FDB0C8
#data 0x88FF6083
#data 0xB1018901
#data 0x6093

loc_8c12e146:
#data 0xB0B1
#data 0x60836093
#data 0x890188FF
#data 0x6093B108

#align4
loc_8c12e154:
#data 0x7620B114
#data 0x79012338
#data 0xAEFF8943
#data 0xF3FD

loc_8c12e162:
#data 0xF6EC
#data 0xF3FDF4CC
#data 0x7620B0D0
#data 0x88FF6083
#data 0xB0E98901
#data 0x6093

loc_8c12e176:
#data 0x2338
#data 0x89347901
#data 0xF3FDAEF0

#align4
loc_8c12e180:
#data 0x7901B04E
#data 0xF3FD8905
#data 0x79012338
#data 0xAEE7892B
#data 0xF3FD

loc_8c12e192:
#data 0xB113
#data 0xB05BF3FD
#data 0xB0F1FD5C
#data 0x60837620
#data 0x890188FF
#data 0x7620B128

#align4
loc_8c12e1a8:
#data 0x79012338
#data 0xAED7891B
#data 0xF3FD

loc_8c12e1b2:
#data 0xB035
#data 0x89057901
#data 0x2338F3FD
#data 0x89127901
#data 0xF3FDAECE

#align4
loc_8c12e1c4:
#data 0xF3FDB0FA
#data 0xFD5CB042
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x405A025A
#data 0x7620B0D2
#data 0x79012338
#data 0xAEBD8901
#data 0xF3FD

loc_8c12e1e6:
#data 0x6042
#data 0x89004015
#data 0xABAC

loc_8c12e1ee:
#data 0xC880
#data 0x8D027404
#data 0xAEA96346
#data 0xF3FD

loc_8c12e1fa:
#data 0xC810
#data 0x8B00F3FD
#data 0xAEA4

loc_8c12e202:
	nop
#data 0x0009ACF2
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12e220:
#data 0x4310FCE9
#data 0xFF2DFEE9
#data 0x8D076E43
#data 0x6042FDFD
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12e23c:
#data 0xF1F50E83
#data 0xE001FF1D
#data 0xFFC3FF9D
#data 0x000BFC0D
#data 0x0009405A

#align4
loc_8c12e250:
#data 0xFC81FC4C
#data 0xF081F01C
#data 0xF3A1F36C
#data 0xF291F25C
#data 0xF0C3FEAC
#data 0x475AFD9C
#data 0xE001FF0D
#data 0x6093405A
#data 0xE00CC801
#data 0xE0248900

#align4
loc_8c12e278:
#data 0xFD2EFE3E
#data 0xFDF2FEF2
#data 0x70FCF6F7
#data 0x70FCF6E7
#data 0xF6D7000B
;==============================================

#align4
loc_8c12e28c:
#data 0x60630683
#data 0xFEF2F6EC
#data 0xFDF2F4CC
#data 0xF3FD70FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e2ac:
#data 0xE024C801
#data 0xE00C8900

#align4
loc_8c12e2b4:
#data 0x70FCF6F7
#data 0x70FCF6E7
#data 0xF6D7000B
;==============================================

#align4
loc_8c12e2c0:
#data 0xFE6CFC4C
#data 0xF6ACF48C
#data 0xF8CC000B
;==============================================

#align4
loc_8c12e2cc:
#data 0x06837620
#data 0xF01CF4C1
#data 0xF36CF0C1
#data 0xF25CF3E1
#data 0xF043F2D1
#data 0xF6ECF7FC
#data 0xF4CCF5DC
#data 0xFF0D475A
#data 0x405AE001
#data 0xFD2EFE3E
#data 0xFEF26063
#data 0xFDF270FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e30c:
#data 0xFC4C0683
#data 0xF01CFC81
#data 0xF36CF081
#data 0xF25CF3A1
#data 0xFEACF291
#data 0xFD9CF0C3
#data 0xFF0D475A
#data 0x405AE001
#data 0xFD2EFE3E
#data 0xFEF26063
#data 0xFDF270FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e348:
#data 0xE010C801
#data 0xE0288900

#align4
loc_8c12e350:
#data 0x2076306C
#data 0x20867620
#data 0x06837540
#data 0x20267620
#data 0x0083000B
;==============================================

#align4
loc_8c12e364:
#data 0xE010C801
#data 0xE0288900

#align4
loc_8c12e36c:
#data 0x306CFFBC
#data 0xFEF2FEAC
#data 0xFDF2FD9C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e380:
#data 0x60630683
#data 0x70FCFF7C
#data 0xFEF2FE6C
#data 0xFDF2FD5C
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e3a0:
#data 0xE028C801
#data 0xE0108900

#align4
loc_8c12e3a8:
#data 0x306CFF7C
#data 0xFEF2FE6C
#data 0xFDF2FD5C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e3bc:
#data 0xF01CF4C1
#data 0xF36CF0C1
#data 0xF25CF3E1
#data 0xF043F2D1
#data 0xF6ECF7FC
#data 0xF4CCF5DC
#data 0xFF0D475A
#data 0x405AE001
#data 0xC8016093
#data 0x8900E028
#data 0xE010

loc_8c12e3e6:
#data 0xFE3E
#data 0xFEF2FD2E
#data 0xFDF2306C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e3f8:
#data 0x60630683
#data 0x207670FC
#data 0x20867620
#data 0x20267540
#data 0x0083000B

loc_8C12E40C:
mov.l r13,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8C12E522,pc),r3 ; r3 set to 0xFF0f
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8C12E528,pc),r6 ; r6 set to 0x8C2DF0F4
mov.l @(loc_8C12E52C,pc),r7 ; r7 set to 0x8C2DF0E0
mov.l @r6,r3 ; r3 ??
mov.l @r7,r0
mov.l @(0x04,r4),r1
sub r3,r0
mov.l @(loc_8C12E524,pc),r2 ; r2 set to 0x8C2DF0Ec
mov.l @r4,r13
cmp/hi r1,r0
bf/s loc_8C12E44e
mov.l @r2,r5
mov.l @(0x04,r4),r4
mov.l @(loc_8C12E530,pc),r1 ; r1 set to 0x8C2DF118
mov.l r4,@r1 ; r1 ??? bc r4 is ???
mov.l @r6,r3
mov.l @r7,r0
sub r3,r0
mov.l @(loc_8C12E534,pc),r3 ; r3 set to 0x8C2DF11c
sub r4,r0
bra loc_8C12E45a
mov.l r0,@r3

loc_8c12e44e:
mov.l @(bank12.loc_8c12e530,pc),r3
mov r0,r4
mov 0x00,r1
mov.l r0,@r3
mov.l @(bank12.loc_8c12e534,pc),r0
mov.l r1,@r0

loc_8c12e45a:
mov.l @r6,r3
cmp/pl r4
add r4,r3
mov.l r3,@r6
mov.l @(loc_8C12E538,pc),r6
bf loc_8c12e47e

loc_8c12e466:
mov.b @r5+,r2
mov.b r2,@r13
mov.l @r6,r3
mov.l @r7,r1
add r3,r1
cmp/eq r1,r5
bf/s loc_8c12e478
add 0x01,r13
mov.l @r6,r5

loc_8c12e478:
add 0xFF,r4
cmp/pl r4
bt loc_8c12e466

loc_8c12e47e:
stc sr, r2
mov.w @(bank12.loc_8c12e522,pc),r1
mov.l @(bank12.loc_8c12e524,pc),r3
and r1,r2
mov.l r5,@r3
mov.w @r15,r0
extu.w r0,r0
and 0x0F,r0
shll2 r0
shll2 r0
or r2,r0
ldc r0, sr
mov.l @(bank12.loc_8c12e530,pc),r0
add 0x04,r15
rts
mov.l @r15+,r13

loc_8C12E49E:
mov.l r14,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8C12E522,pc),r3 ; r3 set to 0xFF0f
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8C12E540,pc),r14 ; r14 set to 0x8C2DF104
mov.l @(loc_8C12E53C,pc),r2 ; r2 set to 0x8C2DF100
mov.l @(0x04,r4),r3 ; r3 ??? bc r4 is ???
mov.l @r14,r5
mov.l @r2,r6
cmp/hi r3,r5
bf/s loc_8C12E4D0
mov.l @r4,r7
mov.l @(loc_8C12E544,pc),r3 ; r3 set to 0x8C2DF120
mov.l @(0x04,r4),r5
mov.l r5,@r3 ; r3 ??? bc r5 is ???
bra loc_8C12E4D8
mov 0x00,r1

#align4
loc_8c12e4d0:
mov.l @(bank12.loc_8c12e544,pc),r3
mov.l r5,@r3
mov.l @(0x04,r4),r1
sub r5,r1

loc_8c12e4d8:
mov.l @(loc_8C12E548,pc),r0
cmp/pl r5
mov.l @(loc_8C12E550,pc),r4
mov.l r1,@r0
mov.l @r14,r3
sub r5,r3
mov.l r3,@r14
mov.l @(loc_8C12E54C,pc),r14
bf loc_8c12e502

loc_8c12e4ea:
mov.b @r7+,r2
mov.b r2,@r6
add 0x01,r6
mov.l @r4,r3
mov.l @r14,r1
add r3,r1
cmp/eq r1,r6
bf/s loc_8c12e4fe
add 0xFF,r5
mov.l @r4,r6

loc_8c12e4fe:
cmp/pl r5
bt loc_8c12e4ea

loc_8c12e502:
stc sr, r2
mov.w @(bank12.loc_8c12e522,pc),r1
mov.l @(bank12.loc_8c12e53c,pc),r3
and r1,r2
mov.l r6,@r3
mov.w @r15,r0
extu.w r0,r0
and 0x0F,r0
shll2 r0
shll2 r0
or r2,r0
ldc r0, sr
mov.l @(bank12.loc_8c12e544,pc),r0
add 0x04,r15
rts
mov.l @r15+,r14
;==============================================

loc_8c12e522:
#data 0xFF0F

loc_8c12e524:
#data 0xF0EC
#data 0x8C2D

loc_8c12e528:
#data 0xF0F4
#data 0x8C2D

loc_8c12e52c:
#data 0xF0E0
#data 0x8C2D

loc_8c12e530:
#data 0xF118
#data 0x8C2D

loc_8c12e534:
#data 0xF11C
#data 0x8C2D
loc_8c12e538:
#data 0xF0E8
#data 0x8C2D

#align4
loc_8c12e53c:
#data 0x8C2DF100

loc_8c12e540:
#data 0xF104
#data 0x8C2D

#align4
loc_8c12e544:
#data 0x8C2DF120

#align4
loc_8C12E548:
#data 0x8C2DF124

#align4
loc_8C12E54C:
#data 0x8C2DF0E4

#align4
loc_8C12E550:
#data 0x8C2DF0F8

loc_8C12E554:
sts.l pr,@-r15
mov.l @(loc_8C12E578,pc),r3 ; r3 set to 0x8C129620
mov r4,r2
mov.l @(loc_8C12E574,pc),r1 ; r1 set to 0x8C2DF10c
jsr @r3
mov 0x04,r0 ; r0 set to 0x04
lds.l @r15+,pr
rts
nop
;==============================================

loc_8C12E566:
mov.l @(loc_8C12E57C,pc),r0 ; r0 set to 0x8C2DF108
rts
nop
;==============================================

loc_8C12E56C:
mov.l @(loc_8C12E580,pc),r2 ; r2 set to 0x8C2DF114
mov.l @r4,r3
rts
mov.l r3,@r2
;==============================================

#align4
loc_8C12E574:
#data 0x8C2DF10c

#align4
loc_8C12E578:
#data loc_8c129620

loc_8C12E57C:
#data 0x8C2DF108

#align4
loc_8C12E580:
#data 0x8C2DF114


loc_8C12E584:
mov.l @(loc_8C12E5C0,pc),r2 ; r2 set to 0x8C12E5Aa
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C12E5BC,pc),r3 ; r3 set to 0x8C12E5A4
mov.l @(loc_8C12E5B8,pc),r4 ; r4 set to 0x8C2DF128
mov.l r3,@r4 ; r4 ??
mov.l @(loc_8C12E5C4,pc),r3 ; r3 set to 0x8C12E5Ae
mov.l r5,@(0x04,r4)
mov.l r2,@(0x08,r4)
mov.l @(loc_8C12E5C8,pc),r2 ; r2 set to 0x8C12E5B4
mov.l r3,@(0x0C,r4)
mov.l r5,@(0x10,r4)
mov.l r2,@(0x14,r4)
rts
mov r4,r0
;==============================================

loc_8C12E5A0:
rts
nop
;==============================================

loc_8C12E5A4:
mov.l @(loc_8C12E5CC,pc),r0 ; r0 set to 0x8C16BFD4
rts
nop
;==============================================

loc_8C12E5AA:
rts
nop
;==============================================

loc_8C12E5AE:
mov.l @(loc_8C12E5D0,pc),r0 ; r0 set to 0x8C172F80
rts
nop
;==============================================

loc_8C12E5B4:
rts
nop
;==============================================

#align4
loc_8C12E5B8:
#data 0x8C2DF128

#align4
loc_8C12E5BC:
#data loc_8c12E5A4

loc_8C12E5C0:
#data loc_8c12E5Aa

loc_8C12E5C4:
#data loc_8c12E5Ae

loc_8C12E5C8:
#data loc_8c12E5B4

loc_8C12E5CC:
#data bank16.loc_8c16BFD4

loc_8C12E5D0:
#data bank17.loc_8c172F80


loc_8C12E5D4:
mov.l r3,@-r15
mov.l r4,@-r15
mov 0x03,r3 ; r3 set to 0x03
mov r0,r4
and r3,r4
and r1,r3 ; r3 ??? bc r1 is ???
or r4,r3
tst r3,r3
bt loc_8C12E618
mov r0,r4
mov.b @r1+,r0
mov r4,r3

loc_8C12E5EC:
cmp/eq 0x00,r0
mov.b r0,@r3
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x01,r3)
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x02,r3)
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x03,r3)
bt loc_8C12E610
mov.b @r1+,r0
bra loc_8C12E5Ec
add 0x04,r3

loc_8C12E610:
mov r4,r0
mov.l @r15+,r4
rts
mov.l @r15+,r3
;==============================================

loc_8C12E618:
mov.l @(loc_8C12E620,pc),r3 ; r3 set to 0x8C1306B0
jmp @r3
nop
	nop

#align4
loc_8C12E620:
#data bank13.loc_8c1306B0

loc_8C12E624:
#data 0x205B6043
#data 0x8B35C803
#data 0xE2006356

#align4
loc_8C12E630:
#data 0x232C6046
#data 0x33008915
#data 0x8B116156
#data 0x212C6046
#data 0x3100890f
#data 0x8B0B6356
#data 0x232C6046
#data 0x33008909
#data 0x8B056156
#data 0x212C6046
#data 0x31008903
#data 0x89E76356

loc_8C12E660:
#data 0x75Fc

loc_8C12E662:
#data 0x75Fc
#data 0x74FC6154
#data 0x31206044
#data 0x3100890f
#data 0x61548B0d
#data 0x31206044
#data 0x31008909
#data 0x61548B07
#data 0x31206044
#data 0x31008903
#data 0x60448B01
#data 0x6154

loc_8C12E68E:
#data 0x000b
#data 0x000B3018
#data 0x00093038

#align4
loc_8C12E698:
#data 0x88006044
#data 0x89136354
#data 0x8B113300
#data 0x63546044
#data 0x890D8800
#data 0x8B0B3300
#data 0x63546044
#data 0x89078800
#data 0x8B053300
#data 0x63546044
#data 0x89018800
#data 0x89E73300

#align4
loc_8C12E6C8:
#data 0x3038000b
;==============================================

loc_8C12E6CC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.w @(loc_8C12E7AC,pc),r0 ; r0 set to 0xFF30
add r0,r15
mov.w @(loc_8C12E7B0,pc),r14 ; r14 set to 0x94
mov 0x00,r11 ; r11 set to 0x00
mov.w @(loc_8C12E7AE,pc),r10 ; r10 set to 0xC0
mov r11,r0 ; r0 set to 0x00
add r15,r14 ; r14 ??? bc r15 is ???
mov r7,r12
add r15,r10 ; r10 ??? bc r15 is ???
tst r4,r4
mov.l r11,@r10
mov.l r11,@(0x04,r10)
mov.l r11,@(0x08,r10)
mov.b r11,@r14
mov.b r0,@(0x01,r14)
mov.w r0,@(0x02,r14)
mov.l r0,@(0x04,r14)
mov.l r0,@(0x08,r14)
mov.l r0,@(0x10,r14)
mov.l r0,@(0x14,r14)
mov.l r0,@(0x18,r14)
mov.l r0,@(0x1C,r14)
mov.l r0,@(0x20,r14)
mov.l r0,@(0x24,r14)
bf/s loc_8C12E746
mov.l r0,@(0x28,r14)
tst r6,r6
bf loc_8C12E71c
mov.l @(loc_8C12E7BC,pc),r2 ; r2 set to 0x8C2DF14c
mov.w @(loc_8C12E7B2,pc),r3 ; r3 set to 0x452
bra loc_8C12E75a
mov.l r3,@r2

loc_8C12E71C:
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???
tst 0x07,r0
bf loc_8C12E72c
mov.l @(loc_8C12E7BC,pc),r3 ; r3 set to 0x8C2DF14c
mov.w @(loc_8C12E7B4,pc),r2 ; r2 set to 0x514
bra loc_8C12E75a
mov.l r2,@r3

loc_8C12E72C:
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r6),r7
mov 0x04,r3 ; r3 set to 0x04
tst r7,r3
bf loc_8C12E744
mov 0x01,r1 ; r1 set to 0x01
tst r7,r1
bt loc_8C12E744
mov.l @(loc_8C12E7BC,pc),r3 ; r3 set to 0x8C2DF14c
mov.w @(loc_8C12E7B6,pc),r2 ; r2 set to 0x516
bra loc_8C12E75a
mov.l r2,@r3

loc_8c12e744:
mov.l r5,@(0x0C,r10)

loc_8C12E746:
mov 0x30,r0 ; r0 set to 0x30
mov.l r4,@r10
mov.l r6,@(0x04,r10)
mov.l r11,@(0x08,r10)
mov.b r11,@r14
mov.b r0,@(0x08,r15)
bsr loc_8C12F07e
mov r10,r4
tst r0,r0
bt loc_8C12E75e

loc_8C12E75A:
bra loc_8C12EDF4
mov 0xFF,r0

loc_8C12E75E:
mov r15,r9
add 0x14,r9
mov.w @(loc_8C12E7B8,pc),r8 ; r8 set to 0x518
mov r9,r3
mov.l r3,@(0x10,r15)
bra loc_8C12EDD6
mov 0x03,r13

loc_8C12E76C:
mov.b @r12,r0
cmp/eq 0x25,r0
bt loc_8C12E776
bra loc_8C12EDB2
nop

loc_8C12E776:
mov.b r11,@r14
add 0x01,r12
mov.l r9,@(0x10,r14)
mov.l r9,@(0x14,r14)
mov.l r11,@(0x18,r14)
mov.l r11,@(0x1C,r14)
mov.l r11,@(0x20,r14)
mov.l r11,@(0x24,r14)
bra loc_8C12E7D6
mov.l r11,@(0x28,r14)

loc_8C12E78A:
#data 0x60C0
#data 0x8907882d
#data 0x8908882b
#data 0x89138820
#data 0x89188823
#data 0x0009A01a

#align4
loc_8C12E7A0:
#data 0xA01660E0
#data 0xCB02

loc_8C12E7A6:
#data 0x60E0
#data 0xCB08A013

loc_8C12E7AC:
#data 0xFF30

loc_8C12E7AE:
#data 0x00C0

loc_8C12E7B0:
#data 0x0094

loc_8C12E7B2:
#data 0x0452

loc_8C12E7B4:
#data 0x0514

loc_8C12E7B6:
#data 0x0516

loc_8C12E7B8:
#data 0x0518
#data 0x0000

#align4
loc_8C12E7BC:
#data 0x8C2DF14c

#align4
loc_8C12E7C0:
#data 0xC80860E0
#data 0x60E08B06
#data 0xA003CB10
#data 0x2E00

loc_8C12E7CE:
#data 0x60E0
#data 0xCB04

loc_8C12E7D2:
#data 0x2E00

loc_8C12E7D4:
#data 0x7C01

loc_8c12e7d6:
mov.b @r12,r0
cmp/eq 0x2D,r0
bt/s bank12.loc_8c12e78a
mov r0,r4
mov r4,r0
cmp/eq 0x2B,r0
bt bank12.loc_8c12e78a
mov r4,r0
cmp/eq 0x20,r0
bt bank12.loc_8c12e78a
mov r4,r0
cmp/eq 0x23,r0
bt bank12.loc_8c12e78a
mov 0x20,r0
mov.b r0,@(0x01,r14)
mov.b @r12,r0
cmp/eq 0x30,r0
bf loc_8c12e800
mov 0x30,r0
add 0x01,r12
mov.b r0,@(0x01,r14)

loc_8c12e800:
mov.l r11,@(0x04,r14)
mov.b @r12,r0
cmp/eq 0x2A,r0
bf loc_8c12e85e
mov.w @(loc_8C12E896,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12e81c
mov.w @(loc_8C12E896,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12e81e
add 0x08,r2

loc_8c12e81c:
mov r4,r2

loc_8c12e81e:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12E896,pc),r0
tst r13,r1
bt/s loc_8c12e832
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12e834
add 0xF8,r3

loc_8c12e832:
mov r5,r3

loc_8c12e834:
mov.l @r3,r1
mov r1,r3
cmp/pz r3
bt/s loc_8c12e84a
mov.l r1,@(0x04,r14)
mov.b @r14,r0
or 0x02,r0
mov.b r0,@r14
mov.l @(0x04,r14),r3
neg r3,r3
mov.l r3,@(0x04,r14)

loc_8c12e84a:
mov.l @(0x04,r14),r1
mov.w @(loc_8C12E898,pc),r2
cmp/gt r2,r1
bf/s loc_8c12e85e
add 0x01,r12
mov.b @r14,r0
mov.l @(loc_8C12E89C,pc),r1
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r1

loc_8c12e85e:
mov.b @r12,r0
mov.l @(bank12.loc_8c12e8a0,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c12e8c0
bra loc_8c12e8b2
mov.l r11,@(0x04,r14)

loc_8c12e870:
mov.b @r12,r4
mov.w @(loc_8C12E898,pc),r1
mov.l @(bank12.loc_8c12e8a4,pc),r3
add 0xD0,r4
sub r4,r1
jsr @r3
mov 0x0A,r0
mov.l @(0x04,r14),r2
cmp/ge r2,r0
bf/s loc_8c12e8a8
add 0x01,r12
mov.l @(0x04,r14),r1
mov r1,r3
shll2 r1
add r3,r1
shll r1
add r4,r1
bra loc_8c12e8b2
mov.l r1,@(0x04,r14)

loc_8C12E896:
#data 0x00F0

loc_8C12E898:
#data 0x0200
#data 0x0000

#align4
loc_8C12E89C:
#data 0x8C2DF14C

#align4
loc_8c12e8a0:
#data bank14.loc_8c143848

loc_8c12e8a4:
#data bank12.loc_8c129128


loc_8c12e8a8:
mov.b @r14,r0
mov.l @(loc_8C12E95C,pc),r3
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r3

loc_8c12e8b2:
mov.b @r12,r0
mov.l @(bank12.loc_8c12e960,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c12e870

loc_8c12e8c0:
mov 0xFF,r2
mov.l r2,@(0x08,r14)
mov.b @r12,r0
cmp/eq 0x2E,r0
bf loc_8c12e980
add 0x01,r12
mov.b @r12,r0
cmp/eq 0x2A,r0
bf loc_8c12e920
mov.w @(loc_8C12E958,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12e8e6
mov.w @(loc_8C12E958,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12e8e8
add 0x08,r2

loc_8c12e8e6:
mov r4,r2

loc_8c12e8e8:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12E958,pc),r0
tst r13,r1
bt/s loc_8c12e8fc
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12e8fe
add 0xF8,r3

loc_8c12e8fc:
mov r5,r3

loc_8c12e8fe:
mov.l @r3,r1
mov r1,r3
cmp/pz r3
bt/s loc_8c12e90c
mov.l r1,@(0x08,r14)
mov 0xFF,r1
mov.l r1,@(0x08,r14)

loc_8c12e90c:
mov.l @(0x08,r14),r2
mov.w @(loc_8C12E95A,pc),r3
cmp/gt r3,r2
bf/s loc_8c12e920
add 0x01,r12
mov.b @r14,r0
mov.l @(loc_8C12E95C,pc),r2
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r2

loc_8c12e920:
mov.b @r12,r0
mov.l @(bank12.loc_8c12e960,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c12e980
bra loc_8c12e972
mov.l r11,@(0x08,r14)

loc_8c12e932:
mov.b @r12,r4
mov.w @(loc_8C12E95A,pc),r1
mov.l @(bank12.loc_8c12e964,pc),r3
add 0xD0,r4
sub r4,r1
jsr @r3
mov 0x0A,r0
mov.l @(0x08,r14),r2
cmp/ge r2,r0
bf/s loc_8c12e968
add 0x01,r12
mov.l @(0x08,r14),r1
mov r1,r3
shll2 r1
add r3,r1
shll r1
add r4,r1
bra loc_8c12e972
mov.l r1,@(0x08,r14)

loc_8C12E958:
#data 0x00F0

loc_8C12E95A:
#data 0x0200

loc_8C12E95C:
#data 0xF14C
#data 0x8C2D

#align4
loc_8c12e960:
#data bank14.loc_8c143848

loc_8c12e964:
#data bank12.loc_8c129128


loc_8c12e968:
mov.b @r14,r0
mov.l @(loc_8C12EA3C,pc),r3
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r3

loc_8c12e972:
mov.b @r12,r0
mov.l @(bank12.loc_8c12ea40,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c12e932

loc_8c12e980:
mov 0x20,r2
mov.l r2,@(0x0C,r14)
mov.b @r12,r0
cmp/eq 0x68,r0
bt/s loc_8c12e998
mov r0,r4
mov r4,r0
cmp/eq 0x6C,r0
bt loc_8c12e998
mov r4,r0
cmp/eq 0x4C,r0
bf loc_8c12e99c

loc_8c12e998:
mov.b @r12+,r2
mov.l r2,@(0x0C,r14)

loc_8c12e99c:
mov.b @r12,r0
cmp/eq 0x64,r0
bt loc_8c12ea0a
cmp/eq 0x69,r0
bt loc_8c12ea0a
cmp/eq 0x6F,r0
bt loc_8c12ea0a
cmp/eq 0x75,r0
bt loc_8c12ea0a
cmp/eq 0x78,r0
bt loc_8c12ea0a
cmp/eq 0x58,r0
bt loc_8c12ea0a
cmp/eq 0x66,r0
bf loc_8c12e9be
bra loc_8c12eb48
nop

loc_8c12e9be:
cmp/eq 0x65,r0
bf loc_8c12e9c6
bra loc_8c12eb48
nop

loc_8c12e9c6:
cmp/eq 0x45,r0
bf loc_8c12e9ce
bra loc_8c12eb48
nop

loc_8c12e9ce:
cmp/eq 0x67,r0
bf loc_8c12e9d6
bra loc_8c12eb48
nop

loc_8c12e9d6:
cmp/eq 0x47,r0
bf loc_8c12e9de
bra loc_8c12eb48
nop

loc_8c12e9de:
cmp/eq 0x63,r0
bf loc_8c12e9e6
bra loc_8c12eb6a
nop

loc_8c12e9e6:
cmp/eq 0x73,r0
bf loc_8c12e9ee
bra loc_8c12eb9c
nop

loc_8c12e9ee:
cmp/eq 0x70,r0
bf loc_8c12e9f6
bra loc_8c12ebf4
nop

loc_8c12e9f6:
cmp/eq 0x6E,r0
bf loc_8c12e9fe
bra loc_8c12ec50
nop

loc_8c12e9fe:
cmp/eq 0x25,r0
bf loc_8c12ea06
bra loc_8c12ec84
nop

loc_8c12ea06:
bra loc_8c12ec9c
nop

loc_8c12ea0a:
mov.l @(0x0C,r14),r0
cmp/eq 0x6C,r0
bf loc_8c12ea44
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r6
add 0x04,r6
mov r6,r4
tst r13,r4
bt loc_8c12ea22
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12ea22:
mov.w @(loc_8C12EA3A,pc),r0
mov r4,r5
add 0xFC,r5
mov.l r4,@(r0,r15)
mov r5,r4
tst r13,r4
bt loc_8c12ea36
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12ea36:
bra loc_8c12eb2a
mov.l @r4,r4

loc_8C12EA3A:
#data 0x00F0

loc_8C12EA3C:
#data 0xF14C
#data 0x8C2D

#align4
loc_8c12ea40:
#data bank14.loc_8c143848


loc_8c12ea44:
cmp/eq 0x68,r0
bf loc_8c12eaba
mov.b @r12,r0
cmp/eq 0x75,r0
bt/s loc_8c12ea62
mov r0,r4
mov r4,r0
cmp/eq 0x58,r0
bt loc_8c12ea62
mov r4,r0
cmp/eq 0x78,r0
bt loc_8c12ea62
mov r4,r0
cmp/eq 0x6F,r0
bf loc_8c12ea8e

loc_8c12ea62:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12ea74
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12ea74:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12ea88
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12ea88:
mov.l @r4,r4
bra loc_8c12eb2a
extu.w r4,r4

loc_8c12ea8e:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eaa0
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eaa0:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eab4
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12eab4:
mov.l @r4,r4
bra loc_8c12eb2a
exts.w r4,r4

loc_8c12eaba:
mov.b @r12,r0
cmp/eq 0x75,r0
bt/s loc_8c12ead4
mov r0,r4
mov r4,r0
cmp/eq 0x58,r0
bt loc_8c12ead4
mov r4,r0
cmp/eq 0x78,r0
bt loc_8c12ead4
mov r4,r0
cmp/eq 0x6F,r0
bf loc_8c12eb02

loc_8c12ead4:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eae6
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eae6:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eb28
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
bra loc_8c12eb28
add 0xF8,r4
#data 0xA014
	nop

loc_8C12EB00:
#data 0x00F0


loc_8c12eb02:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eb14
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eb14:
mov.w @(loc_8C12EC08,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eb28
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12eb28:
mov.l @r4,r4

loc_8c12eb2a:
mov.l @(0x08,r14),r0
cmp/eq 0xFF,r0
bf/s loc_8c12eb36
mov r14,r7
mov 0x01,r3
mov.l r3,@(0x08,r14)

loc_8c12eb36:
mov.b @r12,r6
bsr bank12.loc_8c12ee0c
mov r9,r5
mov.l @(bank12.loc_8c12ec0c,pc),r3
mov.l r9,@(0x04,r15)
jsr @r3
mov r9,r4
bra loc_8c12ec4c
nop

loc_8c12eb48:
mov.w @(loc_8C12EC08,pc),r4
mov r14,r7
mov.b @r12,r6
mov r9,r5
mov.l @(bank12.loc_8c12ec10,pc),r2
jsr @r2
add r15,r4
sts fpscr,r4
mov.l @(loc_8C12EC14,pc),r3
mov.l @(bank12.loc_8c12ec0c,pc),r2
and r3,r4
mov.l r9,@(0x04,r15)
lds r4,fpscr
jsr @r2
mov r9,r4
bra loc_8c12ec4c
nop

loc_8c12eb6a:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(0x10,r15),r2
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12eb7e
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r3
add 0x08,r3

loc_8c12eb7e:
mov.w @(loc_8C12EC08,pc),r0
mov r3,r5
add 0xFC,r5
mov.l r3,@(r0,r15)
mov r5,r0
tst r13,r0
bt loc_8c12eb92
mov r3,r1
bra loc_8c12eb94
add 0xF8,r1

loc_8c12eb92:
mov r5,r1

loc_8c12eb94:
mov.l @r1,r0
mov.b r0,@r2
bra loc_8c12ec8a
nop

loc_8c12eb9c:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12ebb0
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r1
bra loc_8c12ebb2
add 0x08,r1

loc_8c12ebb0:
mov r4,r1

loc_8c12ebb2:
mov r1,r5
add 0xFC,r5
mov r5,r2
mov.w @(loc_8C12EC08,pc),r0
tst r13,r2
bt/s loc_8c12ebc6
mov.l r1,@(r0,r15)
mov r1,r3
bra loc_8c12ebc8
add 0xF8,r3

loc_8c12ebc6:
mov r5,r3

loc_8c12ebc8:
mov.l @r3,r1
mov.l @(bank12.loc_8c12ec0c,pc),r3
mov.l r1,@(0x04,r15)
jsr @r3
mov r1,r4
mov.l r0,@(0x0C,r15)
mov.l @(0x08,r14),r0
cmp/eq 0xFF,r0
bt/s loc_8c12ebe6
mov r0,r4
mov.l @(0x0C,r15),r2
cmp/ge r2,r4
bt loc_8c12ebe6
mov.l @(0x08,r14),r1
mov.l r1,@(0x0C,r15)

loc_8c12ebe6:
mov.l r9,@(0x14,r14)
mov.l r11,@(0x20,r14)
mov.l @(0x0C,r15),r3
mov.l @(0x04,r14),r2
sub r3,r2
bra loc_8c12eca6
mov.l r2,@(0x28,r14)

loc_8c12ebf4:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r3
tst r13,r3
bt loc_8c12ec18
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r1
bra loc_8c12ec1a
add 0x08,r1

loc_8C12EC08:
#data 0x00F0
#data 0x0000

#align4
loc_8c12ec0c:
#data bank12.loc_8c1297c4

loc_8c12ec10:
#data bank13.loc_8c130714

loc_8C12EC14:
#data 0xFFF7FFFF


loc_8c12ec18:
mov r5,r1

loc_8c12ec1a:
mov r1,r4
add 0xFC,r4
mov r4,r2
mov.w @(loc_8C12ED10,pc),r0
tst r13,r2
bt/s loc_8c12ec2e
mov.l r1,@(r0,r15)
mov r1,r3
bra loc_8c12ec30
add 0xF8,r3

loc_8c12ec2e:
mov r4,r3

loc_8c12ec30:
mov.l @(0x08,r14),r0
mov.l @r3,r4
cmp/eq 0xFF,r0
bf/s loc_8c12ec3e
mov r14,r7
mov 0x01,r2
mov.l r2,@(0x08,r14)

loc_8c12ec3e:
mov 0x78,r6
bsr bank12.loc_8c12ee0c
mov r9,r5
mov.l @(bank12.loc_8c12ed14,pc),r3
mov.l r9,@(0x04,r15)
jsr @r3
mov r9,r4

loc_8c12ec4c:
bra loc_8c12eca6
mov.l r0,@(0x0C,r15)

loc_8c12ec50:
mov.w @(loc_8C12ED10,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12ec64
mov.w @(loc_8C12ED10,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12ec66
add 0x08,r2

loc_8c12ec64:
mov r4,r2

loc_8c12ec66:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12ED10,pc),r0
tst r13,r1
bt/s loc_8c12ec7a
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12ec7c
add 0xF8,r3

loc_8c12ec7a:
mov r5,r3

loc_8c12ec7c:
mov.l @(0x08,r10),r1
mov.l @r3,r4
bra loc_8c12eca6
mov.l r1,@r4

loc_8c12ec84:
mov.l @(0x10,r15),r2
mov 0x25,r3
mov.b r3,@r2

loc_8c12ec8a:
mov 0x01,r3
mov.l r9,@(0x04,r15)
mov.l r3,@(0x0C,r15)
mov.l r9,@(0x14,r14)
mov.l r11,@(0x20,r14)
mov.l @(0x04,r14),r3
add 0xFF,r3
bra loc_8c12eca6
mov.l r3,@(0x28,r14)

loc_8c12ec9c:
mov.l @(loc_8C12ED18,pc),r1
mov.l r8,@r1
mov.b @r14,r0
or 0x01,r0
mov.b r0,@r14

loc_8c12eca6:
mov.b @r12,r0
cmp/eq 0x6E,r0
bf loc_8c12ecb0
bra loc_8c12edae
nop

loc_8c12ecb0:
mov.b @r14,r0
tst 0x01,r0
bf loc_8c12edae
mov.b @r14,r0
tst 0x02,r0
bf loc_8c12ecdc
mov.l @(0x28,r14),r2
cmp/pl r2
bf loc_8c12ecdc
bra loc_8c12ecd6
nop

loc_8c12ecc6:
mov r14,r4
mov 0x01,r5
mov r10,r6
bsr bank12.loc_8c12f016
add 0x01,r4
mov.l @(0x28,r14),r2
add 0xFF,r2
mov.l r2,@(0x28,r14)

loc_8c12ecd6:
mov.l @(0x28,r14),r3
cmp/pl r3
bt loc_8c12ecc6

loc_8c12ecdc:
mov.l @(0x1C,r14),r1
tst r1,r1
bf loc_8c12ecfa
mov.l @(0x20,r14),r2
tst r2,r2
bf loc_8c12ecfa
mov.l @(0x24,r14),r2
tst r2,r2
bf loc_8c12ecfa
mov.l @(0x0C,r15),r5
mov r10,r6
bsr bank12.loc_8c12f016
mov.l @(0x04,r15),r4
bra loc_8c12ed88
nop

loc_8c12ecfa:
mov.l @(0x10,r14),r5
mov.l @(0x04,r15),r3
sub r3,r5
cmp/pl r5
bf/s loc_8c12ed2c
mov.l r5,@r15
mov r10,r6
bsr bank12.loc_8c12f016
mov r3,r4
bra loc_8c12ed2c
nop

loc_8C12ED10:
#data 0x00F0
#data 0x0000

#align4
loc_8c12ed14:
#data bank12.loc_8c1297c4

loc_8C12ED18:
#data 0x8C2DF14C


loc_8c12ed1c:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr bank12.loc_8c12f016
add 0x08,r4
mov.l @(0x1C,r14),r2
add 0xFF,r2
mov.l r2,@(0x1C,r14)

loc_8c12ed2c:
mov.l @(0x1C,r14),r3
cmp/pl r3
bt loc_8c12ed1c
mov.l @(0x14,r14),r5
mov.l @(0x10,r14),r3
mov.l @r15,r2
sub r3,r5
cmp/pl r5
add r5,r2
bf/s loc_8c12ed5c
mov.l r2,@r15
mov r10,r6
bsr bank12.loc_8c12f016
mov.l @(0x10,r14),r4
bra loc_8c12ed5c
nop

loc_8c12ed4c:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr bank12.loc_8c12f016
add 0x08,r4
mov.l @(0x20,r14),r3
add 0xFF,r3
mov.l r3,@(0x20,r14)

loc_8c12ed5c:
mov.l @(0x20,r14),r2
cmp/pl r2
bt loc_8c12ed4c
mov.l @(0x0C,r15),r5
mov r10,r6
mov.l @r15,r3
sub r3,r5
bsr bank12.loc_8c12f016
mov.l @(0x14,r14),r4
bra loc_8c12ed82
nop

loc_8c12ed72:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr bank12.loc_8c12f016
add 0x08,r4
mov.l @(0x24,r14),r2
add 0xFF,r2
mov.l r2,@(0x24,r14)

loc_8c12ed82:
mov.l @(0x24,r14),r3
cmp/pl r3
bt loc_8c12ed72

loc_8c12ed88:
mov.b @r14,r0
tst 0x02,r0
bt loc_8c12edae
mov.l @(0x28,r14),r2
cmp/pl r2
bf loc_8c12edae
bra loc_8c12eda8
nop

loc_8c12ed98:
mov r14,r4
mov 0x01,r5
mov r10,r6
bsr bank12.loc_8c12f016
add 0x01,r4
mov.l @(0x28,r14),r2
add 0xFF,r2
mov.l r2,@(0x28,r14)

loc_8c12eda8:
mov.l @(0x28,r14),r3
cmp/pl r3
bt loc_8c12ed98

loc_8c12edae:
bra bank12.loc_8c12edd6
add 0x01,r12

loc_8C12EDB2:
bra loc_8C12EDBc
mov.l r12,@r15

loc_8C12EDB6:
#data 0x62F2
#data 0x2F227201

#align4
loc_8c12edbc:
mov.l @r15,r4
mov.b @r4,r4
tst r4,r4
bt loc_8c12edca
mov r4,r0
cmp/eq 0x25,r0
bf bank12.loc_8c12edb6

loc_8c12edca:
mov.l @r15,r5
mov r10,r6
sub r12,r5
bsr bank12.loc_8c12f016
mov r12,r4
mov.l @r15,r12

loc_8C12EDD6:
mov.b @r12,r3
tst r3,r3
bt loc_8C12EDEe
bsr loc_8C12F07e
mov r10,r4
tst r0,r0
bf loc_8C12EDEe
mov.b @r14,r0
tst 0x01,r0
bf loc_8C12EDEe
bra loc_8C12E76c
nop

loc_8C12EDEE:
bsr loc_8C12F06e
mov r10,r4
mov.l @(0x08,r10),r0

loc_8C12EDF4:
mov.w @(loc_8C12EE0A,pc),r1 ; r1 set to 0xD0, r1 set to 0xD0
add r1,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_8C12EE0A:
#data 0x00D0

#align4
loc_8C12EE0C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x60637FF0
#data 0x6A538864
#data 0x8D0CE900
#data 0x88692A90
#data 0x88758909
#data 0x886F8907
#data 0x88788907
#data 0x88588907
#data 0xA0058905
	nop

loc_8C12EE42:
#data 0xA003
#data 0xE80a

loc_8C12EE46:
#data 0xA001
#data 0xE808

loc_8C12EE4A:
#data 0xE810

#align4
loc_8C12EE4C:
#data 0x88646063
#data 0x60638902
#data 0x8B038869

#align4
loc_8C12EE58:
#data 0x89014411
#data 0x6C4BA001

loc_8C12EE60:
#data 0x6C43

loc_8C12EE62:
#data 0x6EF3
#data 0x6D932CC8
#data 0x8F076B93
#data 0x53727E04
#data 0x89032338
#data 0x2E30E330
#data 0xED01A02d

#align4
loc_8C12EE7C:
#data 0x3C36E300
#data 0x8B29

loc_8C12EE82:
#data 0x61D3
#data 0xD34631Ec
#data 0x2F126213
#data 0x430B61C3
#data 0x22006083
#data 0x623063F2
#data 0x3237E309
#data 0x60D38905
#data 0x723002Ec
#data 0xA00D0E24
	nop

loc_8C12EEAA:
#data 0x61D3
#data 0x31EC6063
#data 0x2F128878
#data 0x60108B03
#data 0xA0037057
#data 0x2100

loc_8C12EEBE:
#data 0x6210
#data 0x21207237

#align4
loc_8C12EEC4:
#data 0x61C3D337
#data 0x6083430b
#data 0x6C03E200
#data 0x8DD63C26
#data 0x7D01

loc_8C12EED6:
#data 0x6070
#data 0x8917C804
#data 0x886F6063
#data 0x88788905
#data 0x8858890a
#data 0xA00F8908
	nop

loc_8C12EEEE:
#data 0x2448
#data 0x60D3890c
#data 0x7D01E330
#data 0x0E34A008

#align4
loc_8C12EEFC:
#data 0x89052448
#data 0x2530E330
#data 0x25607501
#data 0x7501EB02

#align4
loc_8C12EF0C:
#data 0x88646063
#data 0x8D032FD2
#data 0x60633BDc
#data 0x8B188869

#align4
loc_8C12EF1C:
#data 0x23385372
#data 0x24488B01
#data 0x8913

loc_8C12EF26:
#data 0x4411
#data 0x60708B0d
#data 0x8903C808
#data 0x7B01E32b
#data 0x2530A00a

#align4
loc_8C12EF38:
#data 0x8908C810
#data 0x2530E320
#data 0xA0047B01
#data 0x7501

loc_8C12EF46:
#data 0xE22d
#data 0x7B012520

loc_8C12EF4C:
#data 0x7501

loc_8C12EF4E:
#data 0x60A0
#data 0x740164A3
#data 0x8D06882b
#data 0x60D36D03
#data 0x8902882d
#data 0x882060D3
#data 0x8B01

loc_8C12EF66:
#data 0xA013
#data 0x1745

loc_8C12EF6A:
#data 0x6070
#data 0x890EC804
#data 0x88586063
#data 0x88788905
#data 0x886F8903
#data 0xA0078905
	nop

loc_8C12EF82:
#data 0x62A3
#data 0xA0037202
#data 0x1725

loc_8C12EF8A:
#data 0xA001
#data 0x1745

loc_8C12EF8E:
#data 0x17A5

#align4
loc_8C12EF90:
#data 0x33B75372
#data 0x56728B08
#data 0x36B86463
#data 0x1768A006

#align4
loc_8C12EFA0:
#data loc_8c12939c

loc_8C12EFA4:
#data loc_8c1291Dc

loc_8C12EFA8:
#data 0x64B31798

#align4
loc_8C12EFAC:
#data 0x882B60A0
#data 0x66038D06
#data 0x882D6063
#data 0x60638902
#data 0x8B0C8820

#align4
loc_8C12EFC0:
#data 0x33475371
#data 0x84718B10
#data 0x8B068830
#data 0x53785271
#data 0x332C3248
#data 0xA0081738
#data 0x179a

loc_8C12EFDA:
#data 0x5371
#data 0x8B033347
#data 0x31485171
#data 0x171AA001

loc_8C12EFE8:
#data 0x179a

loc_8C12EFEA:
#data 0x64F2
#data 0x441174Ff
#data 0x8B06

loc_8C12EFF2:
#data 0x6043
#data 0x74FF03Ec
#data 0x25304411
#data 0x75018DF9

#align4
loc_8C12F000:
#data 0x7F102590
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8C12F016:
#data 0x2FE6
#data 0x2FD66E63
#data 0x2FB62FC6
#data 0x4F226B43
#data 0x880160E2
#data 0x6D538F0c
#data 0x65B3D219
#data 0x420B66D3
#data 0x53E154E1
#data 0x1E3133Dc
#data 0x32DC52E2
#data 0x1E22A00f

#align4
loc_8C12F044:
#data 0x8F0C4D15
#data 0xEC00

loc_8C12F04A:
#data 0x55E1
#data 0x400B50E3
#data 0x88FF64B4
#data 0x52E28905
#data 0x3CD37C01
#data 0x8FF47201
#data 0x1E22

loc_8C12F062:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c12f06e:
mov.l @r4,r0
cmp/eq 0x01,r0
bf loc_8c12f07a
mov.l @(0x04,r4),r2
mov 0x00,r3
mov.b r3,@r2

loc_8c12f07a:
rts
nop

loc_8C12F07E:
mov.l @r4,r0
cmp/eq 0x01,r0
bf loc_8C12F088
rts
mov 0x00,r0
;==============================================

loc_8C12F088:
mov.l @(0x04,r4),r0
mov 0x10,r1 ; r1 set to 0x10
mov.b @(r0,r1),r0
and 0x40,r0
rts
nop
;==============================================

#align4
loc_8C12F094:
#data loc_8c129668


loc_8C12F098:
tst r6,r6
bf/s loc_8C12F0A2
mov r5,r7
rts
mov 0x00,r0
;==============================================

loc_8c12f0a2:
mov 0x00,r5
mov r5,r2
cmp/hs r6,r2
bt loc_8c12f0b8

loc_8c12f0aa:
mov.b @r7+,r2
mov.b @r4+,r3
cmp/eq r2,r3
bf loc_8c12f0b8
add 0x01,r5
cmp/hs r6,r5
bf loc_8c12f0aa

loc_8c12f0b8:
mov r4,r0
add 0xFF,r7
add 0xFF,r0
mov.b @r7,r3
mov.b @r0,r0
extu.b r3,r3
extu.b r0,r0
sub r3,r0
rts
nop
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8C12F0E0:
mov 0x43,r0 ; r0 set to 0x43
shll8 r0 ; r0 set to 0x4300
or 0x7F,r0
shll16 r0 ; r0 set to 0x43000000
lds r0,fpul
fsts fpul,fr7
fmul fr7,fr0 ; r0 ??? bc r7 is ???
add 0xEC,r4
fmul fr7,fr1
fmov.s @r4+,fr4
fmul fr7,fr2
fmov.s @r4+,fr5
fmul fr7,fr3
fmov.s @r4+,fr6
ftrc fr0,fpul
sts fpul,r0
add 0x08,r4
fldi1 fr0
ftrc fr1,fpul
sts fpul,r1
ftrc fr2,fpul
sts fpul,r2
ftrc fr3,fpul
sts fpul,r8
fdiv fr6,fr0
shll8 r0
or r0,r1
shll16 r1
shll8 r2
or r2,r8
or r1,r8
fmov.s fr15,@-r15
fmov.s fr10,@-r15
fmov.s fr9,@-r15
fmul fr6,fr12
fmov.s fr8,@-r15
fmul fr6,fr13
mov.l r13,@-r15
mova @(loc_8C12F170,pc),r0  ; r0 set to 0x8C12F170
fmul fr6,fr14
sts.l pr,@-r15
fmov.s fr0,@r0 ; r0 ??
fmul fr7,fr5
fmul fr7,fr4
ftrc fr5,fpul
sts fpul,r0
ftrc fr4,fpul
shll16 r0
sts fpul,r13
shll8 r0
or r0,r13
mov.l @r4+,r0

loc_8C12F148:
cmp/pl r0
mov.l @(loc_8C12F300,pc),r9 ; r9 set to 0x8C2DEEA0
bt/s loc_8C12F174
cmp/pz r0
mov r0,r8
mov r11,r0
mov.l r5,@(r0,r10)
mova @(loc_8C12F170,pc),r0  ; r0 set to 0x8C12F170
lds.l @r15+,pr
fmov.s @r0,fr0 ; r0 ??
mov.l @r15+,r13
fmul fr0,fr12
fmov.s @r15+,fr8
fmul fr0,fr13
fmov.s @r15+,fr9 ; r9 ??? bc r15 is ???
fmul fr0,fr14
fmov.s @r15+,fr10
rts
fmov.s @r15+,fr15
;==============================================
	nop

#align4
loc_8C12F170:
#data 0x00000000

#align4
loc_8C12F174:
#data 0x63966103
#data 0xE2CF7420
#data 0x62F32329
#data 0x522A7218
#data 0x8D024211
#data 0xC903E21b
#data 0xCA01

loc_8C12F18E:
#data 0x435a
#data 0xE303402d
#data 0x432DF3Fd
#data 0x63370483
#data 0x22396296
#data 0x220BF00d
#data 0x74E0425a
#data 0x7610F10d
#data 0xF62BF299
#data 0xF60B7520
#data 0x0683F3Fd
#data 0x4C257620
#data 0x8D0B6013
#data 0xC8084C00
#data 0xB15B8903
#data 0xAFBD0009
#data 0x6046

loc_8C12F1CE:
#data 0xB0A7
#data 0xAFB90009
#data 0x00096046

#align4
loc_8C12F1D8:
#data 0xC840E100
#data 0xC8103C1e
#data 0xC8088D04
#data 0x0009B1Fc
#data 0x6046AFAe

#align4
loc_8C12F1EC:
#data 0xB3E78904
#data 0xAFA90009
#data 0x00096046

#align4
loc_8C12F1F8:
#data 0x0009AFFe
	nop
	nop

#align4
loc_8C12F200:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12F220:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12F300:
#data 0x8C2DEEA0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F320:
#data 0x76206346

#align4
loc_8C12F324:
#data 0xF549F449
#data 0xF79DF649
#data 0xF049F249
#data 0xF5FDF149
#data 0xFA49F38d
#data 0xF84960D3
#data 0xF9494029
#data 0xF249F3Ed
#data 0xF79DFFF1
#data 0xF049F743
#data 0xFB8D4028
#data 0xF149F3B5
#data 0xFBED7420
#data 0x89000483
#data 0xF38d

loc_8C12F35E:
#data 0xF83c
#data 0xF99DF882
#data 0xFA8DFCEd
#data 0x62D3FAB5
#data 0x622CF981
#data 0xFB4D8B00

#align4
loc_8C12F374:
#data 0xFAF50029
#data 0xF96D425a
#data 0xFF4D8B00

#align4
loc_8C12F380:
#data 0xFFB50129
#data 0x4108FAFc
#data 0xFFBC8B02
#data 0xFBACCB02

#align4
loc_8C12F390:
#data 0xFA2D210b
#data 0xC7364100
#data 0xC731011d
#data 0xFFB3F009
#data 0xFB094101
#data 0x6202F3A2
#data 0x402960D3
#data 0x4028F9A2
#data 0x210BF33d
#data 0x7420005a
#data 0x0483F93d
#data 0x310C4028
#data 0x74C0005a
#data 0x4018FBFe
#data 0xFF8DFB3d
#data 0x005A310c
#data 0x002CC9Ff
#data 0x600B8B00

#align4
loc_8C12F3D8:
#data 0x2606301c
#data 0x6146F3Fd
#data 0x6246F672
#data 0x2686F572
#data 0x26266E03
#data 0x26166063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8D05
#data 0x75202662
#data 0xAF8F0683
#data 0x7640

loc_8C12F406:
#data 0x2602
#data 0x60467520
#data 0x76400683
#data 0x8F034015
#data 0x8F85C880
#data 0x74FC6346

#align4
loc_8C12F41C:
#data 0x000B74Fc
#data 0xF79D76E0
#data 0xF3FD7438
#data 0xF7430483
#data 0x742026E6
#data 0xF6722686
#data 0x74C00483
#data 0xF049F572
#data 0xF60B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8DDd
#data 0x75202662
#data 0xAF670683
#data 0x00097640
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F468:
#data bank13.loc_8c13259c
#data 0x3F000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F480:
#data 0x76206946
#data 0xE303

loc_8C12F486:
#data 0xF449
#data 0xF649F549
#data 0xF249F79d
#data 0xF149F049
#data 0xF38DF5Fd
#data 0x60D3FA49
#data 0x4029F849
#data 0xF3EDF949
#data 0xFFF1F249
#data 0xF743F79d
#data 0x4028F049
#data 0xF3B5FB8d
#data 0x7420F149
#data 0x0483FBEd
#data 0xF38D8900

#align4
loc_8C12F4C0:
#data 0xF882F83c
#data 0xFCEDF99d
#data 0xFAB5FA8d
#data 0xF98162D3
#data 0x8B00622c
#data 0xFB4d

loc_8C12F4D6:
#data 0x0029
#data 0x425AFAF5
#data 0x8B00F96d
#data 0xFF4d

loc_8C12F4E2:
#data 0x0129
#data 0xFAFCFFB5
#data 0x8B024108
#data 0xCB02FFBc
#data 0xFBAc

loc_8C12F4F2:
#data 0x210b
#data 0x4100FA2d
#data 0x011DC735
#data 0xF009C730
#data 0x4101FFB3
#data 0xF3A2FB09
#data 0x60D36202
#data 0xF9A24029
#data 0xF33D4028
#data 0x005A210b
#data 0xF93D7420
#data 0x40280483
#data 0x005A310c
#data 0xFBFE74C0
#data 0xFB3D4018
#data 0x310CFF8d
#data 0xC9FF005a
#data 0x8B00002c
#data 0x600b

loc_8C12F53A:
#data 0x301c
#data 0xF3FD2606
#data 0xF6726146
#data 0xF5726246
#data 0x6E032686
#data 0x60632626
#data 0x40212616
#data 0x4310F66b
#data 0x8D05F64b
#data 0x2662F3Fd
#data 0x06837520
#data 0x7640AF8f

#align4
loc_8C12F568:
#data 0x26027520
#data 0x06834910
#data 0x8F887640
#data 0x000BE303
#data 0xF79D76E0
#data 0xF3FD7438
#data 0xF7430483
#data 0x742026E6
#data 0xF6722686
#data 0x74C00483
#data 0xF049F572
#data 0xF60B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8DE2
#data 0x75202662
#data 0xAF6C0683
#data 0x00097640
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F5C8:
#data bank13.loc_8c13259c
#data 0x3F000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F5E0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12F5E8:
#data 0xB0C9EB00
#data 0x8D11E900
#data 0xB1454924
#data 0xB0C37B01
#data 0x8D250009
#data 0xB13F4924
#data 0x7B01

loc_8C12F602:
#data 0xB0Bd
#data 0x8D3A0009
#data 0xB1394924
#data 0x8BF87B01
#data 0x0009A00c

#align4
loc_8C12F614:
#data 0x7B014310
#data 0x4310B0B2
#data 0x49248F20

#align4
loc_8C12F620:
#data 0x7B01B0Ae
#data 0x49248F2b
#data 0x8BF94310

#align4
loc_8C12F62C:
#data 0x40156046
#data 0xC8808F03
#data 0x63468FD8
#data 0x74Fc

loc_8C12F63A:
#data 0x4F26
#data 0xE0016BF6
#data 0x74FC6AF6
#data 0x2C0B000b
;==============================================

#align4
loc_8C12F648:
#data 0x4310B13a
#data 0x7490B098
#data 0xEB00B136
#data 0x0008EB01
#data 0xE000B162
#data 0x7438A01e

#align4
loc_8C12F660:
#data 0xEB01B12e
#data 0x7490B08c
#data 0xEB00B12a
#data 0x0008EB01
#data 0xE000B156
#data 0xB1330008
#data 0xA00FE001
#data 0x7438

loc_8C12F67E:
#data 0xB11f
#data 0x74C80009
#data 0x7490B07c
#data 0x7BFEB11a
#data 0x0009B078
#data 0x7B01B116
#data 0x7B017438
#data 0x6093A005

#align4
loc_8C12F69C:
#data 0x7B01B070
#data 0x4924B10e
#data 0x6093

loc_8C12F6A6:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1250008
#data 0x60B370Fe
#data 0xB1010008
#data 0x60B370Ff
#data 0xB11D4310
#data 0x8BD970Ff
#data 0x0009AFA0
#data 0xB0F70008
#data 0x60B360B3
#data 0xB1130008
#data 0x431070Ff
#data 0x60B3B0F0
#data 0xAF938BCc
#data 0x60B30009
#data 0xB1090018
#data 0x431070Fe
#data 0xAF85890f
#data 0x60B30009
#data 0xB1010008
#data 0x60B370Fe
#data 0xB0DD0008
#data 0x431070Ff
#data 0x60B3B0Da
#data 0xAF688901
#data 0xAF7B7B01
#data 0x60B30009
#data 0xB0F14310
#data 0x8BAD70Ff
#data 0x0009AF74
#data 0xC80160B3
#data 0x60B38903
#data 0xB0E70008
#data 0x60B370Ff
#data 0xB0E30008
#data 0x60B370Fe
#data 0xB0DF0008
#data 0x431070Ff
#data 0x60B3B0Bc
#data 0xAF5F8B98
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F780:
#data 0xF549F449
#data 0xF79DF649
#data 0xF049F249
#data 0xF5FDF149
#data 0xFA49F38d
#data 0xF84960D3
#data 0xF9494029
#data 0xF249F3Ed
#data 0xF049FFF1
#data 0xF71D4028
#data 0xF743F79d
#data 0xF3B5FB8d
#data 0xFBEDF40d
#data 0x8900F149
#data 0xF38d

loc_8C12F7BA:
#data 0xF83c
#data 0xF99DF882
#data 0xFA8DFCEd
#data 0x62D3FAB5
#data 0x622CF981
#data 0xFB4D8B00

#align4
loc_8C12F7D0:
#data 0xFAF50029
#data 0xF96D425a
#data 0xFF4D8B00

#align4
loc_8C12F7DC:
#data 0xFFB50129
#data 0x4108FAFc
#data 0xFFBC8B02
#data 0xFBACCB02

#align4
loc_8C12F7EC:
#data 0xFA2D210b
#data 0xC71F4100
#data 0xC71A011d
#data 0xFFB3F009
#data 0xFB094101
#data 0x6202F3A2
#data 0x402960D3
#data 0x4028F9A2
#data 0x210BF33d
#data 0x7420005a
#data 0x0483F93d
#data 0x310C4028
#data 0x7420005a
#data 0x0483FBFe
#data 0x74C0FB3d
#data 0xFF8D4018
#data 0x005A310c
#data 0xF41DC9Ff
#data 0x8B00002c
#data 0x600b

loc_8C12F83A:
#data 0x301c
#data 0x6103025a
#data 0xF349F249
#data 0x3C26000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F868:
#data bank13.loc_8c13259c
#data 0x00000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F880:
#data 0x7620F3Fd
#data 0xF6722616
#data 0x2686F572
#data 0xF62B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0x60638900

#align4
loc_8C12F89C:
#data 0xF3FD2602
#data 0x06837520
#data 0x7620000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F8C0:
#data 0xEA0560B3
#data 0x40ADC903
#data 0xF3FDDA35
#data 0x2A163A0c
#data 0xFA2B2A86
#data 0xFA4BFA6b
#data 0xF3FD000b
;==============================================
	nop
	nop

#align4
loc_8C12F8E0:
#data 0xDA2EE105
#data 0xF3FDC903
#data 0x3A0C401d
#data 0xF0A9E2F0
#data 0xF2A94228
#data 0xF4A97620
#data 0xF6A9F232
#data 0x4218F132
#data 0x7520F66b
#data 0xF62BF64b
#data 0x8900F60b
#data 0x6263

loc_8C12F90E:
#data 0x2622
#data 0x0683F3Fd
#data 0x7620000b
;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C12F920:
#data 0xDA1EE105
#data 0x401DC903
#data 0x3A0C62A3
#data 0xC90360B3
#data 0x401DF2A8
#data 0x320C4C5a
#data 0xF128F00d
#data 0x7218F021
#data 0x7620F3Fd
#data 0xF428F121
#data 0x475A72F8
#data 0xF0137A10
#data 0xF428F64b
#data 0xF2A872F8
#data 0xF10D7AF8
#data 0xF531F421
#data 0xF35EF24e
#data 0xF3FDF62b
#data 0xF528F61b
#data 0xF3A872Fc
#data 0xF4287AFc
#data 0xF531F2A8
#data 0xE2F0F421
#data 0x4228F35e
#data 0x4218F24e
#data 0x7520F312
#data 0xF63BF212
#data 0x8900F62b
#data 0x6263

loc_8C12F992:
#data 0x2626
#data 0x000B0683
#data 0x00097620

#align4
loc_8C12F99C:
#data loc_8c12F200

loc_8C12F9A0:
#data loc_8c12F220
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F9C0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12F9C8:
#data 0xE900B09a
#data 0x88006093
#data 0x88078928
#data 0xBED38935
#data 0xBF71EB00
#data 0xBECF0009
#data 0xBF6DEB01
#data 0xBECB0009
#data 0xBF69EB02
#data 0x49080009
#data 0x00090923
	nop
	nop
#data 0x0009A026
#data 0x0009A033
#data 0x0009A041
#data 0x0009A04c
#data 0x0009A05a
#data 0x0009A065
	nop
	nop

#align4
loc_8C12FA14:
#data 0x8BD74310
#data 0x4F26E001
#data 0x6BF62C0b
#data 0x6AF6000b
;==============================================

#align4
loc_8C12FA24:
#data 0xBEAB6933
#data 0xBF29E303
#data 0xBEA70009
#data 0xBF250009
#data 0xBEA30009
#data 0xBF210009
#data 0xAFE90009
#data 0x6393

loc_8C12FA42:
#data 0x7438
#data 0x7470AFE6
#data 0xBF490008
#data 0x0008E000
#data 0xE001BF46
#data 0xEB020008
#data 0xE000BF62
#data 0xBF5F0018
#data 0xAFD7E001
#data 0x00080009
#data 0xE000BF3a
#data 0xEB010008
#data 0xE000BF56
#data 0xEB020008
#data 0xE002BF32
#data 0xBF4F0018
#data 0xAFC7E001
#data 0x00080009
#data 0xE000BF2a
#data 0xEB010008
#data 0xE000BF46
#data 0xEB020018
#data 0xE000BF42
#data 0x0009AFBa
#data 0xEB010008
#data 0xE000BF3c
#data 0xBF190008
#data 0x0008E001
#data 0xBF35EB02
#data 0x0018E000
#data 0xE002BF12
#data 0x0009AFAa
#data 0xEB010008
#data 0xE000BF2c
#data 0xBF090008
#data 0x0018E001
#data 0xBF25EB02
#data 0xAF9DE001
#data 0x00080009
#data 0xBF1FEB02
#data 0x0008E000
#data 0xE001BF1c
#data 0xBEF90018
#data 0xAF91E002
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FB00:
#data 0xF549F449
#data 0xF79DF648
#data 0x04837430
#data 0x04837420
#data 0xF5FD74E0
#data 0xF149F049
#data 0xF39DF248
#data 0x04837430
#data 0x04837420
#data 0xF1FD74E0
#data 0x005AF71d
#data 0xF549F449
#data 0x3C06F648
#data 0x7488F79d
#data 0x4924F5Fd
#data 0x005AF31d
#data 0xF71D3C06
#data 0x005A4924
#data 0x000B3C06
#data 0x00004924
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FB60:
#data 0xC73FD240
#data 0x61F36222
#data 0x6023F008
#data 0x8800FFFb
#data 0x8D01FFEb
#data 0x402BFFDb

#align4
loc_8C12FB78:
#data 0xE000FFCb
#data 0xE018FC16
#data 0xE01CFD16
#data 0xE020FE16
#data 0xFFBBFF16
#data 0xFFABFC02
#data 0xFF9BFD02
#data 0xFF8BFE02
#data 0x4F22FF02
#data 0x2F06D078
#data 0x6046

loc_8C12FBA2:
#data 0x4015
#data 0x8D0F69F2
#data 0x68034011
#data 0x0A5660B3
#data 0x4F267F04
#data 0xF9F9F8F9
#data 0xFBF9FAF9
#data 0xFDF9FCF9
#data 0x000BFEF9
#data 0x0009FFF9

#align4
loc_8C12FBC8:
#data 0xE2FB6103
#data 0xC9406396
#data 0xE2FD402d
#data 0x230B2329
#data 0xE2DF7420
#data 0xE2102329
#data 0x6013232b
#data 0x722862F3
#data 0x522A435a
#data 0xE21B4211
#data 0xC9038D01
#data 0xCA01

loc_8C12FBF6:
#data 0x402d
#data 0xF3FDE303
#data 0x0483432d
#data 0x62966337
#data 0xF00D2239
#data 0x425A220b
#data 0xF10D74E0
#data 0xF2997610
#data 0x7520F62b
#data 0xF3FDF60b
#data 0x76200683
#data 0x60134C25
#data 0x4C008D0a
#data 0x8903C808
#data 0x0009B148
#data 0x6046AFB7

#align4
loc_8C12FC34:
#data 0x0009B0B4
#data 0x6046AFB3

#align4
loc_8C12FC3C:
#data 0xC840E100
#data 0xC8103C1e
#data 0xC8088D04
#data 0x0009B1Ca
#data 0x6046AFA9

#align4
loc_8C12FC50:
#data 0xB4358904
#data 0xAFA40009
#data 0x00096046

#align4
loc_8C12FC5C:
#data 0x0009AFFe
#data 0x3B808080

#align4
loc_8C12FC64:
#data bank16.loc_8c16BE78
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FC80:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FC98:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FCA8:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x8C2DEEA0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FDA0:
#data 0x76206346
#data 0xF3Fd

loc_8C12FDA6:
#data 0x6042
#data 0x6E43C801
#data 0x74208F03
#data 0x74E85EE1
#data 0x3E4c

loc_8C12FDB6:
#data 0xF4E9
#data 0x61E3F6E8
#data 0x7110F79d
#data 0x58E284E7
#data 0x608C4015
#data 0xF5FD8F26
#data 0x602E52E1
#data 0x405A4219
#data 0xF12D602e
#data 0x405A4219
#data 0xF02D602e
#data 0xF22D405a
#data 0x62F3F38d
#data 0x7218F3Fd
#data 0xE03CF829
#data 0x4018F929
#data 0xCB01FA29
#data 0x4018F2Ed
#data 0xCB02F229
#data 0x4018F08d
#data 0xCB04F3Fd
#data 0x608C405a
#data 0xFB0DF305
#data 0xF3B28B01
#data 0xF230

loc_8C12FE16:
#data 0x0018

#align4
loc_8C12FE18:
#data 0x405A7420
#data 0x608C4819
#data 0x48190483
#data 0x74E0FB2d
#data 0xF743F79d
#data 0xFA2D405a
#data 0x405A608c
#data 0xF92D4819
#data 0x76F8485a
#data 0xF018F82d
#data 0xF38D6063
#data 0x8F03FBF2
#data 0xF922F60b
#data 0xFB22FA22

#align4
loc_8C12FE50:
#data 0xF28D4021
#data 0xF6724310
#data 0x60638900

#align4
loc_8C12FE5C:
#data 0xF66BF572
#data 0xF64B7540
#data 0x2602FAE2
#data 0x6E430683
#data 0x76405EE1
#data 0xF9D26046
#data 0xF8C2F62b
#data 0x3E4CF62b
#data 0x7E04F6Ab
#data 0x8D08F68b
#data 0xC8010683
#data 0x8D947640
#data 0x6E437404
#data 0xAF907418
#data 0x7EF8

loc_8C12FE96:
#data 0x7640
#data 0x8F034015
#data 0x8F82C880
#data 0x74FC6346

#align4
loc_8C12FEA4:
#data 0x74FCF3Fd
#data 0x76E0000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FEC0:
#data 0x76206946
#data 0xF3FDE303

#align4
loc_8C12FEC8:
#data 0xC8016042
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

#align4
loc_8C12FED8:
#data 0xF6E8F4E9
#data 0xF79D61E3
#data 0x84E77110
#data 0x401558E2
#data 0x8F26608c
#data 0x52E1F5Fd
#data 0x4219602e
#data 0x602E405a
#data 0x4219F12d
#data 0x602E405a
#data 0x405AF02d
#data 0xF38DF22d
#data 0xF3FD62F3
#data 0xF8297218
#data 0xF929E03c
#data 0xFA294018
#data 0xF2EDCB01
#data 0xF2294018
#data 0xF08DCB02
#data 0xF3FD4018
#data 0x405ACB04
#data 0xF305608c
#data 0x8B01FB0d
#data 0xF230F3B2

loc_8C12FF38:
#data 0x0018

loc_8C12FF3A:
#data 0x7420
#data 0x4819405a
#data 0x0483608c
#data 0xFB2D4819
#data 0xF79D74E0
#data 0x405AF743
#data 0x608CFA2d
#data 0x4819405a
#data 0x485AF92d
#data 0xF82D76F8
#data 0x6063F018
#data 0xFBF2F38d
#data 0xF60B8F03
#data 0xFA22F922
#data 0xFB22

loc_8C12FF72:
#data 0x4021
#data 0x4310F28d
#data 0x8900F672
#data 0x6063

loc_8C12FF7E:
#data 0xF572
#data 0x7540F66b
#data 0xFAE2F64b
#data 0x06832602
#data 0x5EE16E43
#data 0x60467640
#data 0xF62BF9D2
#data 0xF62BF8C2
#data 0xF6AB3E4c
#data 0xF68B7E04
#data 0x06838D08
#data 0x7640C801
#data 0x74048D94
#data 0x74186E43
#data 0x7EF8AF90

#align4
loc_8C12FFB8:
#data 0x491074Fc
#data 0x8F837640
#data 0xF3FDE303
#data 0x76E0000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FFE0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12FFE8:
#data 0xB129EB00
#data 0x8D11E900
#data 0xB1854924
#data 0xB1237B01
#data 0x8D400009
#data 0xB17F4924
#data 0x7B01

loc_8C130002:
#data 0xB11d
#data 0x8D7A0009
#data 0xB1794924
#data 0x8BF87B01
#data 0x0009A027

#align4
loc_8C130014:
#data 0x7B014310
#data 0x4310B112
#data 0x49248F4a

#align4
loc_8C130020:
#data 0x6E436042
#data 0x7420C801
#data 0xF79D8F03
#data 0x5EE174E8
#data 0x3E4c

loc_8C130032:
#data 0xF4E9
#data 0xF6E9F5E9
#data 0x6042E120
#data 0xC8017420
#data 0x0483F5Fd
#data 0x8F0474E0
#data 0xE1086E43
#data 0x7E085EE1
#data 0x3E4c

loc_8C130052:
#data 0xF71d
#data 0x3C06005a
#data 0x8F497B01
#data 0x43104924
#data 0x8BDe

loc_8C130062:
#data 0x6046
#data 0x8F034015
#data 0x8FBDC880
#data 0x74FC6346

#align4
loc_8C130070:
#data 0xE0014F26
#data 0x74FC6BF6
#data 0x000B6AF6
#data 0x2C0b
;==============================================

loc_8C13007E:
#data 0xB15f
#data 0x74F84310
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C13008C:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C130096:
#data 0xB0D3
#data 0xB1510009
#data 0xEB01EB00
#data 0xB1AD0008
#data 0x6042E000
#data 0x7408C801
#data 0x74188900

#align4
loc_8C1300B0:
#data 0x0009A04c

#align4
loc_8C1300B4:
#data 0xEB01B144
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C1300C2:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C1300CC:
#data 0x0009B0B8
#data 0xEB00B136
#data 0x0008EB01
#data 0xE000B192
#data 0xB15F0008
#data 0x6042E001
#data 0x7408C801
#data 0x74188900

#align4
loc_8C1300EC:
#data 0x0009A02e

#align4
loc_8C1300F0:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C1300FA:
#data 0xB0A1
	nop

loc_8C1300FE:
#data 0xB11f
#data 0x74F80009
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C13010C:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C130116:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C130120:
#data 0x0009B08e
#data 0x7BFEB10c
#data 0x0009B08a
#data 0x7B01B108
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C13013A:
#data 0x60C3
#data 0xC8017B01
#data 0x60938D0f
#data 0x0009B10c
#data 0x6093A00b

#align4
loc_8C13014C:
#data 0x7B01B078
#data 0x4924B0F6
#data 0xC80160C3
#data 0x60938D03
#data 0x0009B100
#data 0x6093

loc_8C130162:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1370008
#data 0x60B370Fe
#data 0xB1030008
#data 0x60B370Ff
#data 0xB12F4310
#data 0x8BD370Ff
#data 0x0009AF5d
#data 0xB0F90008
#data 0x60B360B3
#data 0xB1250008
#data 0x431070Ff
#data 0x60B3B0F2
#data 0xAF508BC6
#data 0x60B30009
#data 0xB11B0018
#data 0x431070Fe
#data 0xAF27890f
#data 0x60B30009
#data 0xB1130008
#data 0x60B370Fe
#data 0xB0DF0008
#data 0x431070Ff
#data 0x60B3B0Dc
#data 0xAF0A8901
#data 0xAF387B01
#data 0x60B30009
#data 0xB1034310
#data 0x8BA770Ff
#data 0x0009AF31
#data 0xC80160B3
#data 0x60B38903
#data 0xB0F90008
#data 0x60B370Ff
#data 0xB0F50008
#data 0x60B370Fe
#data 0xB0F10008
#data 0x431070Ff
#data 0x60B3B0Be
#data 0xAF1C8B92
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130240:
#data 0xC8016042
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

#align4
loc_8C130250:
#data 0xF5E9F4E9
#data 0x61E3F6E8
#data 0x84E7F79d
#data 0x58E27110
#data 0x608C4015
#data 0xF5FD8F24
#data 0x602E52E1
#data 0x405A4219
#data 0xF12D602e
#data 0x405A4219
#data 0xF02D602e
#data 0xF22D405a
#data 0x62F3F38d
#data 0xF8297224
#data 0xF929E03c
#data 0xFA294018
#data 0xF2EDCB01
#data 0xF2294018
#data 0xF08DCB02
#data 0xCB044018
#data 0x608C405a
#data 0xFB0DF305
#data 0xF3B28B01
#data 0xF230

loc_8C1302AE:
#data 0x0018

#align4
loc_8C1302B0:
#data 0x405AF19d
#data 0x608C4819
#data 0xF1434819
#data 0x405AFB2d
#data 0x608CFA2d
#data 0x4819405a
#data 0x485AF92d
#data 0xF71DF82d
#data 0x005AFBF2
#data 0xF40DFAE2
#data 0xF9D28F03
#data 0xFA22F922
#data 0xFB22

loc_8C1302E2:
#data 0x3C06
#data 0x000BF8C2
#data 0x0009F71c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130300:
#data 0x7618F3Fd
#data 0xF672F218
#data 0xF572F62b
#data 0x6063F28d
#data 0x4021F38d
#data 0x4310F66b
#data 0x8900F64b
#data 0x6063

loc_8C13031E:
#data 0x2602
#data 0x76400683
#data 0x7540F62b
#data 0xF6ABF62b
#data 0xF3FDF68b
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop

#align4
loc_8C130340:
#data 0xEA0660B3
#data 0x40ADC903
#data 0xF3FDDA58
#data 0xF2183A0c
#data 0xFA8BFAAb
#data 0xFA6BFA2b
#data 0x000BFA4b
#data 0x0009F3Fd

#align4
loc_8C130360:
#data 0xDA53E106
#data 0xC90360B3
#data 0xF3FD401d
#data 0x7008F8A6
#data 0x70B8FAA6
#data 0xFA87600c
#data 0xFAA77008
#data 0x600C70B8
#data 0x7008FA87
#data 0x000BFAA7
#data 0x0009F3Fd
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1303A0:
#data 0xDA41E106
#data 0xF3FDC903
#data 0xF68D401d
#data 0xF78D3A0c
#data 0xF0A9E2F0
#data 0xF2A94228
#data 0xF4A97618
#data 0xF8A9F232
#data 0xFAA8F132
#data 0xF64B4218
#data 0xF62B7540
#data 0x8900F60b
#data 0x6263

loc_8C1303D2:
#data 0x2622
#data 0x06836263
#data 0xF66B7640
#data 0xF6ABF66b
#data 0x0683F68b
#data 0x000BF3Fd
#data 0x00097620
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130400:
#data 0xDA29E106
#data 0x401DC903
#data 0x3A0C62A3
#data 0xC90360B3
#data 0x401DF2A8
#data 0x320C4C5a
#data 0xF128F00d
#data 0x7220F021
#data 0x7630F3Fd
#data 0xF428F121
#data 0x475A72F8
#data 0xF0137A20
#data 0x7AF8F2A8
#data 0xF531F421
#data 0xF35EF24e
#data 0xF428F62b
#data 0xF2A872F8
#data 0xF4217AF8
#data 0xF24EF531
#data 0xF62BF35e
#data 0x72F8F428
#data 0x7AF8F2A8
#data 0xF421F10d
#data 0x76F8F531
#data 0xF35EF24e
#data 0xF3FDF62b
#data 0xF528F61b
#data 0xF3A872Fc
#data 0xF4287AFc
#data 0xF531F2A8
#data 0xE2F0F421
#data 0x4228F35e
#data 0x4218F24e
#data 0x7540F312
#data 0xF63BF212
#data 0x8900F62b
#data 0x6263

loc_8C130492:
#data 0x2626
#data 0x76400683
#data 0xF62BF28d
#data 0xF62BF62b
#data 0x0683F62b
#data 0x7610000b
;==============================================

#align4
loc_8C1304A8:
#data loc_8c12FC80

loc_8C1304AC:
#data loc_8c12FCA8

loc_8C1304B0:
#data loc_8c12FC98
	nop
	nop
	nop
	nop
	nop
	nop