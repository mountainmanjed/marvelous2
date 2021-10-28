#symbol extern_8C054508 0x8C054508
#symbol extern_8C054B34 0x8C054B34
#symbol extern_8C05496C 0x8C05496C
#symbol extern_8C054D04 0x8C054D04
#symbol extern_8C053F6E 0x8C053F6E
#symbol extern_8C053E00 0x8C053E00
#symbol extern_8C0542E0 0x8C0542E0
#symbol extern_8C054E58 0x8C054E58
#symbol extern_8C055C3A 0x8C055C3A
#symbol extern_8C0530D8 0x8C0530D8
#symbol extern_8C054DA0 0x8C054DA0
#symbol extern_8C0555C8 0x8C0555C8
#symbol extern_8C054D1C 0x8C054D1C
#symbol extern_8C0553AC 0x8C0553AC
#symbol extern_8D088808 0x8D088808
#symbol extern_8C059150 0x8C059150
#symbol extern_8C034E8C 0x8C034E8C
#symbol extern_8C052B4C 0x8C052B4C
#symbol extern_8C1292D4 0x8C1292D4
#symbol extern_8C2896B0 0x8C2896B0
#symbol extern_8C04FEA8 0x8C04FEA8
#symbol extern_8C050048 0x8C050048
#symbol extern_8C034DEE 0x8C034DEE
#symbol extern_8C05176E 0x8C05176E
#symbol extern_8C052CE2 0x8C052CE2
#symbol extern_8C052DAC 0x8C052DAC
#symbol extern_8C050084 0x8C050084
#symbol extern_8C04FF88 0x8C04FF88
#symbol extern_8C052C84 0x8C052C84
#symbol extern_8C26A518 0x8C26A518
#symbol extern_8C04223A 0x8C04223A
#symbol extern_8C0511E2 0x8C0511E2
#symbol extern_8D01F43C 0x8D01F43C
#symbol extern_8C056DE4 0x8C056DE4
#symbol extern_8C2895F0 0x8C2895F0
#symbol extern_8C0C1A18 0x8C0C1A18
#symbol extern_8C03319E 0x8C03319E
#symbol extern_8C046C8A 0x8C046C8A
#symbol extern_8C06CFFC 0x8C06CFFC
#symbol extern_8C03544C 0x8C03544C
#symbol extern_8C042008 0x8C042008
#symbol extern_8C05218A 0x8C05218A
#symbol extern_8C05115A 0x8C05115A
#symbol extern_8C053082 0x8C053082
#symbol extern_8C0C1D30 0x8C0C1D30
#symbol extern_8D1F2008 0x8D1F2008
#symbol extern_8C045790 0x8C045790
#symbol extern_8C0522E0 0x8C0522E0
#symbol extern_8C055D54 0x8C055D54
#symbol extern_8D012338 0x8D012338
#symbol extern_8D01334C 0x8D01334C
#symbol extern_8D012228 0x8D012228
#symbol extern_8C0C1F90 0x8C0C1F90
#symbol extern_8C050834 0x8C050834
#symbol extern_8C05264C 0x8C05264C
#symbol extern_8D122008 0x8D122008
#symbol extern_8C0523D8 0x8C0523D8
#symbol extern_8C02FEC4 0x8C02FEC4
#symbol extern_8C02FD26 0x8C02FD26
#symbol extern_8D162008 0x8D162008
#symbol extern_8C103660 0x8C103660
#symbol extern_8C030FEC 0x8C030FEC
#symbol extern_8C26A8EC 0x8C26A8EC
#symbol extern_8C1294C8 0x8C1294C8
#symbol extern_8C0FDA40 0x8C0FDA40
#symbol extern_8C05A49C 0x8C05A49C
#symbol extern_8C050EA4 0x8C050EA4
#symbol extern_8D032338 0x8D032338
#symbol extern_8C0511B4 0x8C0511B4
#symbol extern_8C035162 0x8C035162
#symbol extern_8C051854 0x8C051854
#symbol extern_8C056F2A 0x8C056F2A
#symbol extern_8C0423FC 0x8C0423FC
#symbol extern_8D05D023 0x8D05D023
#symbol extern_8D052338 0x8D052338
#symbol extern_8C059A44 0x8C059A44
#symbol extern_8C0F047C 0x8C0F047C
#symbol extern_8C104DF8 0x8C104DF8
#symbol extern_8C051648 0x8C051648
#symbol extern_8C129728 0x8C129728
#symbol extern_8C04CC1C 0x8C04CC1C



;======================================================================
code_CE30000:
	mov.w @(data_CE300C6,pc),r0
	mov 0x70,r5
	mov.l @(ptr_CE300CC_to_ptr_CE34BDC_to_code_CE304AC,pc),r7
	mov.l @(r0,r4),r6
	mov 0x00,r4

code_CE3000A:
	mov r4,r0
	nop
	add 0x04,r4
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s code_CE3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;-------------------------------------------------------------------------------
code_CE3001C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE300D0_to_extern_8C054508,pc),r3
	jsr @r3
	mov r4,r14

	extu.b r0,r0
	tst r0,r0
	bf code_CE300C0
	mov.l @(ptr_CE300D4_to_extern_8C054B34,pc),r3
	jsr @r3
	mov r14,r4

	extu.b r0,r0
	tst r0,r0
	bf code_CE300C0
	mov.l @(ptr_CE300D8_to_extern_8C05496C,pc),r3
	jsr @r3
	mov r14,r4

	extu.b r0,r0
	tst r0,r0
	bf code_CE300C0
	mov.l @(ptr_CE300DC_to_extern_8C054D04,pc),r3
	jsr @r3
	mov r14,r4

	extu.b r0,r0
	tst r0,r0
	bf code_CE300C0
	bsr code_CE30350
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE302E4
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE303DE
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE301B8
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE30220
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE30266
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE300EC
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE30132
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	bsr code_CE302AC
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	mov.w @(data_CE300C8,pc),r5
	mov.l @(ptr_CE300E0_to_extern_8C053F6E,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	extu.b r0,r0

	tst r0,r0
	bf code_CE300C0
	bsr code_CE303A0
	mov r14,r4

	tst r0,r0
	bf code_CE300C0
	mov.l @(ptr_CE300E4_to_extern_8C053E00,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE300E8_to_extern_8C0542E0,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE300C0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE300C6:
#data 0x0428

data_CE300C8:
#data 0x0394
#align4

ptr_CE300CC_to_ptr_CE34BDC_to_code_CE304AC:
#data ptr_CE34BDC_to_code_CE304AC

ptr_CE300D0_to_extern_8C054508:
#data extern_8C054508

ptr_CE300D4_to_extern_8C054B34:
#data extern_8C054B34

ptr_CE300D8_to_extern_8C05496C:
#data extern_8C05496C

ptr_CE300DC_to_extern_8C054D04:
#data extern_8C054D04

ptr_CE300E0_to_extern_8C053F6E:
#data extern_8C053F6E

ptr_CE300E4_to_extern_8C053E00:
#data extern_8C053E00

ptr_CE300E8_to_extern_8C0542E0:
#data extern_8C0542E0

;==============================================================================
code_CE300EC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30208_to_data_CE34B60,pc),r5
	mov.w @(data_CE301FE,pc),r6
	mov.l @(ptr_CE3020C_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bf code_CE3010A
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

code_CE3010A:
	mov.w @(data_CE301FE,pc),r5
	mov.l @(ptr_CE30210_to_extern_8C055C3A,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov.w @(data_CE30200,pc),r0
	mov 0x03,r2
	mov.l @(ptr_CE30214_to_extern_8C0530D8,pc),r3
	mov 0x15,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30132:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30218_to_data_CE34BBA,pc),r5
	mov.w @(data_CE30202,pc),r6
	mov.l @(ptr_CE3020C_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt code_CE30168
	mov.w @(data_CE30204,pc),r0;2a8
	mov.l @(r0,r14),r0
	cmp/eq 0x27,r0
	bt code_CE30170
	mov.w @(data_CE30204,pc),r0;2a8
	mov.l @(r0,r14),r0
	cmp/eq 0x07,r0
	bt code_CE30170
	mov.w @(data_CE30204,pc),r0;2a8
	mov.l @(r0,r14),r0
	cmp/eq 0x39,r0
	bt code_CE30170
	mov.w @(data_CE30204,pc),r0;2a8
	mov.l @(r0,r14),r0
	cmp/eq 0x24,r0
	bt code_CE30170

code_CE30168:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

code_CE30170:
	mov.w @(data_CE30202,pc),r5
	mov.l @(ptr_CE30210_to_extern_8C055C3A,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov.w @(data_CE30204,pc),r0
	mov 0x08,r4
	mov.l @(r0,r14),r0
	cmp/eq 0x07,r0
	bf/s code_CE30188
	mov 0x12,r5
	mov r5,r4

code_CE30188:
	mov.w @(data_CE30204,pc),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x39,r0
	bf code_CE30192
	mov r5,r4

code_CE30192:
	mov.w @(data_CE30204,pc),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x24,r0
	bf code_CE3019C
	mov 0x11,r4

code_CE3019C:
	mov.w @(data_CE30200,pc),r0
	mov 0x15,r5
	mov.l @(ptr_CE30214_to_extern_8C0530D8,pc),r3
	mov.b r4,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE301B8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE3021C_to_data_CE34B70,pc),r5
	mov.w @(data_CE30206,pc),r6
	mov.l @(ptr_CE3020C_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bf code_CE301D6
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE301D6:
	mov.w @(data_CE30206,pc),r5
	mov.l @(ptr_CE30210_to_extern_8C055C3A,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov.w @(data_CE30200,pc),r0
	mov 0x0D,r2
	mov.l @(ptr_CE30214_to_extern_8C0530D8,pc),r3
	mov 0x15,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE301FE:
#data 0x036C

data_CE30200:
#data 0x01E9

data_CE30202:
#data 0x03A4

data_CE30204:
#data 0x02A8

data_CE30206:
#data 0x037C
#align4

ptr_CE30208_to_data_CE34B60:
#data data_CE34B60

ptr_CE3020C_to_extern_8C054E58:
#data extern_8C054E58

ptr_CE30210_to_extern_8C055C3A:
#data extern_8C055C3A

ptr_CE30214_to_extern_8C0530D8:
#data extern_8C0530D8

ptr_CE30218_to_data_CE34BBA:
#data data_CE34BBA

ptr_CE3021C_to_data_CE34B70:
#data data_CE34B70

;==============================================================================
code_CE30220:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30334_to_data_CE34B80,pc),r5
	mov.w @(data_CE3032A,pc),r6
	mov.l @(ptr_CE30338_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bf code_CE3023E
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE3023E:
	mov.w @(data_CE3032A,pc),r5
	mov.l @(ptr_CE3033C_to_extern_8C055C3A,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov.w @(data_CE3032C,pc),r0
	mov 0x16,r2
	mov.l @(ptr_CE30340_to_extern_8C0530D8,pc),r3
	mov 0x15,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30266:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30344_to_data_CE34B90,pc),r5
	mov.w @(data_CE3032E,pc),r6
	mov.l @(ptr_CE30338_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bf code_CE30284
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30284:
	mov.w @(data_CE3032E,pc),r5
	mov.l @(ptr_CE3033C_to_extern_8C055C3A,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov.w @(data_CE3032C,pc),r0
	mov 0x0B,r2
	mov.l @(ptr_CE30340_to_extern_8C0530D8,pc),r3
	mov 0x15,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE302AC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30348_to_extern_8C054DA0,pc),r3
	jsr @r3
	mov 0x13,r5
	extu.b r0,r0
	tst r0,r0
	bf code_CE302C6
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE302C6:
	mov.w @(data_CE3032C,pc),r0
	mov 0x13,r3
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(ptr_CE30340_to_extern_8C0530D8,pc),r3
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE302E4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE3034C_to_data_CE34BA0,pc),r5
	mov.w @(data_CE30330,pc),r6
	mov.l @(ptr_CE30338_to_extern_8C054E58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt code_CE30304
	mov.w @(data_CE30332,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf code_CE3030C

code_CE30304:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE3030C:
	mov.w @(data_CE3032C,pc),r0
	mov 0x14,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(ptr_CE30340_to_extern_8C0530D8,pc),r3
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE3032A:
#data 0x038C

data_CE3032C:
#data 0x01E9

data_CE3032E:
#data 0x0374

data_CE30330:
#data 0x0384

data_CE30332:
#data 0x040C
#align4

ptr_CE30334_to_data_CE34B80:
#data data_CE34B80

ptr_CE30338_to_extern_8C054E58:
#data extern_8C054E58

ptr_CE3033C_to_extern_8C055C3A:
#data extern_8C055C3A

ptr_CE30340_to_extern_8C0530D8:
#data extern_8C0530D8

ptr_CE30344_to_data_CE34B90:
#data data_CE34B90

ptr_CE30348_to_extern_8C054DA0:
#data extern_8C054DA0

ptr_CE3034C_to_data_CE34BA0:
#data data_CE34BA0


code_CE30350:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE30450_to_data_CE34BCA,pc),r5
mov.w @(data_CE30444,pc),r6
mov.l @(ptr_CE30454_to_extern_8C0555C8,pc),r3
jsr @r3
add r14,r6
extu.b r0,r0
tst r0,r0
bt code_CE3037A
mov.w @(data_CE30446,pc),r0
mov.l @(r0,r14),r0
cmp/eq 0x1E,r0
bf code_CE3037A
mov.w @(data_CE30448,pc),r0
mov.l @(r0,r14),r3
mov.b @r3,r2
mov 0x03,r3
cmp/ge r3,r2
bt code_CE30382

code_CE3037A:
lds.l @r15+,pr
mov 0x00,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30382:
mov.w @(data_CE3044A,pc),r0
mov 0x17,r3
mov 0x1D,r5
mov.b r3,@(r0,r14)
mov 0x00,r0
mov.l @(ptr_CE30458_to_extern_8C0530D8,pc),r3
mov.b r0,@(0x05,r14)
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov 0x01,r0
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE303A0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3045C_to_extern_8C054D1C,pc),r3
jsr @r3
mov r4,r14
tst r0,r0
bt code_CE303B8
mov.w @(data_CE30448,pc),r0
mov.l @(r0,r14),r2
mov.b @r2,r3
tst r3,r3
bf code_CE303C0

code_CE303B8:
lds.l @r15+,pr
mov 0x00,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE303C0:
mov.w @(data_CE3044A,pc),r0
mov 0x1A,r3
mov 0x1D,r5
mov.b r3,@(r0,r14)
mov 0x00,r0
mov.l @(ptr_CE30458_to_extern_8C0530D8,pc),r3
mov.b r0,@(0x05,r14)
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov 0x01,r0
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE303DE:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE30460_to_data_CE34BB0,pc),r5
mov.w @(data_CE3044C,pc),r6
mov.l @(ptr_CE30464_to_extern_8C0553AC,pc),r3
jsr @r3
add r14,r6
extu.b r0,r0
tst r0,r0
bt code_CE303FC
mov.w @(data_CE30446,pc),r0
mov.l @(r0,r14),r0
cmp/eq 0x01,r0
bt code_CE30404

code_CE303FC:
lds.l @r15+,pr
mov 0x00,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30404:
mov.w @(data_CE3044C,pc),r5
mov.l @(ptr_CE30468_to_extern_8C055C3A,pc),r2
add r14,r5
jsr @r2
mov r14,r4
mov.w @(data_CE3044A,pc),r0
mov 0x0C,r3
mov 0x15,r5
mov.b r3,@(r0,r14)
mov 0x00,r0
mov.l @(ptr_CE30458_to_extern_8C0530D8,pc),r3
mov.b r0,@(0x05,r14)
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov 0x01,r0
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3042C:
sts.l pr,@-r15
bsr code_CE3046C
nop
tst r0,r0
bt code_CE3043C
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

code_CE3043C:
mov 0x00,r0
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

data_CE30444:
#data 0x03AC

data_CE30446:
#data 0x02A8

data_CE30448:
#data 0x040C

data_CE3044A:
#data 0x01E9

data_CE3044C:
#data 0x039C
#align4

ptr_CE30450_to_data_CE34BCA:
#data data_CE34BCA

ptr_CE30454_to_extern_8C0555C8:
#data extern_8C0555C8

ptr_CE30458_to_extern_8C0530D8:
#data extern_8C0530D8

ptr_CE3045C_to_extern_8C054D1C:
#data extern_8C054D1C

ptr_CE30460_to_data_CE34BB0:
#data data_CE34BB0

ptr_CE30464_to_extern_8C0553AC:
#data extern_8C0553AC

ptr_CE30468_to_extern_8C055C3A:
#data extern_8C055C3A


code_CE3046C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE304F0_to_data_CE34BA0,pc),r5
mov.w @(data_CE304E4,pc),r6
mov.l @(ptr_CE304F4_to_extern_8C054E58,pc),r3
jsr @r3
add r14,r6
extu.b r0,r0
tst r0,r0
bt code_CE3048C
mov.w @(data_CE304E6,pc),r0
mov.l @(r0,r14),r2
mov.b @r2,r3
tst r3,r3
bf code_CE30494

code_CE3048C:
lds.l @r15+,pr
mov 0x00,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30494:
mov.w @(data_CE304E4,pc),r5
mov.l @(ptr_CE304F8_to_extern_8C055C3A,pc),r3
add r14,r5
jsr @r3
mov r14,r4
mov.w @(data_CE304E8,pc),r0
mov 0x14,r2
mov.b r2,@(r0,r14)
mov 0x01,r0
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE304AC:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE304EA,pc),r0
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s code_CE304C4
mov 0x03,r13
bra code_CE3062C
nop

code_CE304C4:
mov.w @(data_CE304EC,pc),r0
mov.l @(r0,r14),r3
tst r3,r3
bt code_CE304D2
mov.l @(r0,r14),r3
add 0xFF,r3
mov.l r3,@(r0,r14)

code_CE304D2:
mov.w @(data_CE304EE,pc),r0
mov.l @(r0,r14),r2
cmp/pl r2
bf code_CE304FC
mov.l @(r0,r14),r1
add 0xFF,r1
mov.l r1,@(r0,r14)
bra code_CE30640
nop

data_CE304E4:
#data 0x0384

data_CE304E6:
#data 0x040C

data_CE304E8:
#data 0x0258

data_CE304EA:
#data 0x01A0

data_CE304EC:
#data 0x02C8

data_CE304EE:
#data 0x02F0
#align4

ptr_CE304F0_to_data_CE34BA0:
#data data_CE34BA0

ptr_CE304F4_to_extern_8C054E58:
#data extern_8C054E58

ptr_CE304F8_to_extern_8C055C3A:
#data extern_8C055C3A


code_CE304FC:
mov.w @(data_CE305EC,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE3050E
mov.l @(r0,r14),r1
add 0xFF,r1
cmp/pl r1
bf/s code_CE305A0
mov.l r1,@(r0,r14)

code_CE3050E:
mov.w @(data_CE305EE,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE30520
mov.l @(r0,r14),r1
add 0xFF,r1
cmp/pl r1
bf/s code_CE305A0
mov.l r1,@(r0,r14)

code_CE30520:
mov.w @(data_CE305F0,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE30532
mov.l @(r0,r14),r1
add 0xFF,r1
mov.l r1,@(r0,r14)
mov.w @(data_CE305F2,pc),r0
mov.w r13,@(r0,r14)

code_CE30532:
mov.w @(data_CE305F4,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE30558
mov.w @(data_CE305F6,pc),r0
mov.b @(r0,r14),r1
tst r1,r1
bf code_CE30558
mov.w @(data_CE305F4,pc),r0
mov.l @(r0,r14),r2
add 0xFF,r2
mov.l r2,@(r0,r14)
mov.l @(r0,r14),r0
tst 0x07,r0
bf code_CE30558
mov.l @(ptr_CE3060C_to_extern_8C059150,pc),r2
mov 0x01,r5
jsr @r2
mov r14,r4

code_CE30558:
mov.w @(data_CE305F8,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE3056A
mov.l @(r0,r14),r1
add 0xFF,r1
mov.l r1,@(r0,r14)
mov.w @(data_CE305FA,pc),r0
mov.w r13,@(r0,r14)

code_CE3056A:
mov.w @(data_CE305FC,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE3057C
mov.l @(r0,r14),r1
add 0xFF,r1
mov.l r1,@(r0,r14)
mov.w @(data_CE305FA,pc),r0
mov.w r13,@(r0,r14)

code_CE3057C:
mov.w @(data_CE305FE,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE3058E
mov.l @(r0,r14),r1
add 0xFF,r1
cmp/pl r1
bf/s code_CE305A0
mov.l r1,@(r0,r14)

code_CE3058E:
mov.w @(data_CE30600,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE30640
mov.l @(r0,r14),r1
add 0xFF,r1
cmp/pl r1
bt/s code_CE30640
mov.l r1,@(r0,r14)

code_CE305A0:
mov.w @(data_CE30602,pc),r1
mov r14,r5
mov.b @(0x01,r14),r0
mov.l @(ptr_CE30610_to_code_CE34580,pc),r3
add r14,r1
extu.b r0,r0
mov.l r0,@r1
jsr @r3
mov r14,r4
mov.w @(data_CE30604,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE30640
mov.w @(data_CE30606,pc),r0
mov.b @(r0,r14),r4
extu.b r4,r0
cmp/eq 0x08,r0
bt/s code_CE305D6
mov r0,r4
mov r4,r0
nop
cmp/eq 0x09,r0
bt code_CE305D6
mov r4,r0
nop
cmp/eq 0x01,r0
bf code_CE30640

code_CE305D6:
mov.w @(data_CE30608,pc),r13
add r14,r13
mov.b @(0x01,r13),r0
mov r0,r13
add 0xC0,r13
cmp/pz r13
bt code_CE305E6
mov 0x00,r13

code_CE305E6:
mov.w @(data_CE3060A,pc),r0
bra code_CE30614
nop

data_CE305EC:
#data 0x02D0

data_CE305EE:
#data 0x02D4

data_CE305F0:
#data 0x02D8

data_CE305F2:
#data 0x03EA

data_CE305F4:
#data 0x02E8

data_CE305F6:
#data 0x01DC

data_CE305F8:
#data 0x02E0

data_CE305FA:
#data 0x03E4

data_CE305FC:
#data 0x02EC

data_CE305FE:
#data 0x02DC

data_CE30600:
#data 0x02E4

data_CE30602:
#data 0x02A8

data_CE30604:
#data 0x0159

data_CE30606:
#data 0x0158

data_CE30608:
#data 0x0150

data_CE3060A:
#data 0x0142
#align4

ptr_CE3060C_to_extern_8C059150:
#data extern_8C059150

ptr_CE30610_to_code_CE34580:
#data code_CE34580


code_CE30614:
mov.l @(ptr_CE30740_to_extern_8C034E8C,pc),r3
mov 0x00,r5
mov.b @(r0,r14),r12
mov r13,r6
jsr @r3
mov r14,r4
mov.w @(data_CE30722,pc),r0
mov.b @(r0,r14),r2
cmp/gt r12,r2
bf code_CE30640
bra code_CE30640
mov.b r12,@(r0,r14)

code_CE3062C:
mov.w @(data_CE30724,pc),r0
mov.l @(r0,r14),r2
tst r2,r2
bf code_CE30640
mov.w @(data_CE30726,pc),r0
mov.l @(r0,r14),r3
cmp/pl r3
bf code_CE30640
mov.w @(data_CE30728,pc),r0
mov.w r13,@(r0,r14)

code_CE30640:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3064A:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE30744_to_extern_8C052B4C,pc),r3
jsr @r3
mov r4,r14
mov 0x00,r5
mov r5,r0
nop
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
mov.w @(data_CE3072A,pc),r0
mov.b @(r0,r14),r4
add 0x11,r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x01,r0
bf code_CE30672
add 0x06,r4

code_CE30672:
mov.w @(data_CE3072C,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE3067C
add 0x03,r4

code_CE3067C:
mov.l @(data_CE30748,pc),r0
extu.b r4,r13
mov.w @(data_CE3072E,pc),r2
extu.b r4,r1
mov.b @(r0,r13),r3
add r14,r2
extu.b r3,r3
mov.l r3,@r2
mov.l @(ptr_CE3074C_to_extern_8C1292D4,pc),r3
mov.l r1,@r15
jsr @r3
mov 0x06,r0
mov.l @(ptr_CE30750_to_ptr_CE34B18_to_data_CE34AD0,pc),r1
shll2 r0
mov.l @(r0,r1),r2
mov.w @(data_CE30730,pc),r0
mov.l r2,@(r0,r14)
mov.w @(data_CE3072A,pc),r0
mov.b @(r0,r14),r3
mov.l @(ptr_CE30754_to_data_CE34C58,pc),r0
extu.b r3,r3
mov.b @(r0,r3),r2
mov.w @(data_CE30732,pc),r0
mov.b r2,@(r0,r14)
mov.l @(ptr_CE30758_to_data_CE34C4C,pc),r0
mov.w @(data_CE30734,pc),r2
mov.b @(r0,r13),r3
mov.w @(data_CE30736,pc),r0
add r14,r2
mov.b r3,@r2
mov.w r5,@(r0,r14)
add 0xF2,r0
mov.b r5,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE3075C_to_extern_8C2896B0,pc),r3
mov.l r5,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(data_CE30760,pc),r0
mov.l @(ptr_CE30740_to_extern_8C034E8C,pc),r2
mov.b @(r0,r13),r6
mov.l @(data_CE30764,pc),r0
mov.b @(r0,r13),r5
jsr @r2
mov r14,r4
mov.l @r15,r0
cmp/eq 0x02,r0
bf code_CE30718
mov.w @(data_CE30738,pc),r0;2a8
mov.l @(r0,r14),r0
cmp/eq 0x29,r0
bf code_CE30718
mov.w @(data_CE3073A,pc),r0
mov.w @(data_CE3073C,pc),r3
mov.w @(r0,r14),r2
extu.w r2,r2
tst r3,r2
bt code_CE30718
mov.w @(data_CE3072E,pc),r0
mov 0x05,r2
mov 0x07,r5
mov r14,r4
mov.l r2,@(r0,r14)
mov 0x3C,r0
mov.w r0,@(0x1C,r14)
mov 0x03,r6
add 0x04,r15
lds.l @r15+,pr
mov.l @(ptr_CE30740_to_extern_8C034E8C,pc),r2
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

code_CE30718:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE30722:
#data 0x0142

data_CE30724:
#data 0x02F0

data_CE30726:
#data 0x02E0

data_CE30728:
#data 0x03E4

data_CE3072A:
#data 0x01E8

data_CE3072C:
#data 0x01FE

data_CE3072E:
#data 0x0320

data_CE30730:
#data 0x03F4

data_CE30732:
#data 0x01A7

data_CE30734:
#data 0x01A1

data_CE30736:
#data 0x01AC

data_CE30738:
#data 0x02A8

data_CE3073A:
#data 0x034A

data_CE3073C:
#data 0x0800
#align4

ptr_CE30740_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE30744_to_extern_8C052B4C:
#data extern_8C052B4C

data_CE30748:
#data 0x0CE34C73

ptr_CE3074C_to_extern_8C1292D4:
#data extern_8C1292D4

ptr_CE30750_to_ptr_CE34B18_to_data_CE34AD0:
#data ptr_CE34B18_to_data_CE34AD0

ptr_CE30754_to_data_CE34C58:
#data data_CE34C58

ptr_CE30758_to_data_CE34C4C:
#data data_CE34C4C

ptr_CE3075C_to_extern_8C2896B0:
#data extern_8C2896B0

data_CE30760:
#data 0x0CE34C5B

data_CE30764:
#data 0x0CE34C67


code_CE30768:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r4
mov.l r12,@-r15
sts.l pr,@-r15
mov r4,r0
nop
mov.b r0,@(0x07,r14)
mov.b r0,@(0x06,r14)
mov.w @(data_CE3086E,pc),r0
mov.b @(r0,r14),r13
add 0x16,r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE3078A
add 0x03,r13

code_CE3078A:
mov.w @(data_CE30870,pc),r0
extu.b r13,r12
mov.l r4,@(r0,r14)
mov.w @(data_CE3086E,pc),r0
mov.b @(r0,r14),r3
mov.l @(data_CE30884,pc),r0
extu.b r3,r3
mov.b @(r0,r3),r2
mov.w @(data_CE30872,pc),r0
mov.b r2,@(r0,r14)
mov.l @(data_CE30888,pc),r0
mov.w @(data_CE30874,pc),r2
mov.b @(r0,r12),r3
mov.w @(data_CE30876,pc),r0
add r14,r2
mov.b r3,@r2
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE3088C_to_extern_8C2896B0,pc),r3
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE30890_to_data_CE34C88,pc),r0
mov.b @(r0,r12),r6
mov.l @(ptr_CE30894_to_data_CE34C8E,pc),r0
mov.l @(ptr_CE30898_to_extern_8C034E8C,pc),r2
mov.b @(r0,r12),r5
jsr @r2
mov r14,r4
extu.b r13,r0
cmp/eq 0x05,r0
bf code_CE30800
mov.w @(data_CE30878,pc),r0
mov.w @(data_CE3087A,pc),r3
mov.w @(r0,r14),r2
extu.w r2,r2
tst r3,r2
bt code_CE30800
mov.w @(data_CE30870,pc),r0
mov 0x01,r2
mov 0x0C,r5
mov.l r2,@(r0,r14)
mov 0x0F,r2
mov.w @(data_CE3087C,pc),r0
mov 0x05,r6
mov.b @(r0,r14),r1
and r2,r1
mov.b r1,@(r0,r14)
mov.l @(ptr_CE30898_to_extern_8C034E8C,pc),r1
jsr @r1
mov r14,r4

code_CE30800:
mov.w @(data_CE3087E,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE3080A
add 0x06,r13

code_CE3080A:
mov.l @(ptr_CE3089C_to_ptr_CE34B30_to_data_CE34AE8,pc),r0
extu.b r13,r13
shll2 r13
mov.l @(r0,r13),r3
mov.w @(data_CE30880,pc),r0
mov.l r3,@(r0,r14)
mov.w @(data_CE30882,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE30830
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r14),r0
tst 0x0F,r0
bt code_CE30840
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r14),r2
add 0xFF,r2
bra code_CE30840
mov.b r2,@(r0,r14)

code_CE30830:
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r14),r0
tst 0xF0,r0
bt code_CE30840
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r14),r2
add 0xF0,r2
mov.b r2,@(r0,r14)

code_CE30840:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3084A:
mov.w @(data_CE30882,pc),r0
mov.b @(r0,r4),r3
tst r3,r3
bf code_CE3085E
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r4),r0
tst 0x0F,r0
bf code_CE30866
bra code_CE3086A
nop

code_CE3085E:
mov.w @(data_CE3087C,pc),r0
mov.b @(r0,r4),r0
tst 0xF0,r0
bt code_CE3086A

code_CE30866:
bra code_CE30768
nop

code_CE3086A:
rts
nop
;-------------------------------------------------------------------------------

data_CE3086E:
#data 0x01E8

data_CE30870:
#data 0x0320

data_CE30872:
#data 0x01A7

data_CE30874:
#data 0x01A1

data_CE30876:
#data 0x01AC

data_CE30878:
#data 0x01FA

data_CE3087A:
#data 0x1000

data_CE3087C:
#data 0x01D6

data_CE3087E:
#data 0x01FC

data_CE30880:
#data 0x03F4

data_CE30882:
#data 0x01FE
#align4

data_CE30884:
#data 0x0CE34C85

data_CE30888:
#data 0x0CE34C7F

ptr_CE3088C_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE30890_to_data_CE34C88:
#data data_CE34C88

ptr_CE30894_to_data_CE34C8E:
#data data_CE34C8E

ptr_CE30898_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE3089C_to_ptr_CE34B30_to_data_CE34AE8:
#data ptr_CE34B30_to_data_CE34AE8


code_CE308A0:
mov.w @(data_CE309BC,pc),r0
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE309C8_to_ptr_CE34C94_to_code_CE3064A,pc),r0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

code_CE308B4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE309CC_to_extern_8C04FEA8,pc),r3
jsr @r3
mov r4,r14
mov.l @(ptr_CE309D0_to_extern_8C050048,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE309BE,pc),r0
mov.l @(r0,r14),r3
tst r3,r3
bf code_CE308F8
mov.l @(ptr_CE309D4_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE308E2
lds.l @r15+,pr
mov.l @(ptr_CE309D8_to_extern_8C05176E,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE308E2:
mov.l @(ptr_CE309DC_to_extern_8C052CE2,pc),r2
jsr @r2
mov r14,r4
extu.b r0,r0
tst r0,r0
bt code_CE30900
lds.l @r15+,pr
mov.l @(ptr_CE309E0_to_extern_8C052DAC,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE308F8:
lds.l @r15+,pr
mov r14,r4
bra code_CE30906
mov.l @r15+,r14

code_CE30900:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30906:
mov r4,r3
mov.l @(ptr_CE309E4_to_ptr_CE34CA4_to_code_CE30918,pc),r1
mov.l r4,@-r15
mov.b @(0x07,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE30918:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE309D4_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE309C0,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE30964
mov.b @(0x07,r14),r0
mov 0x00,r4
add 0x01,r0
mov.b r0,@(0x07,r14)
mov.w @(data_CE309C0,pc),r0
mov.b r4,@(r0,r14)
mov.w @(data_CE309C2,pc),r0
mov.b r4,@(r0,r14)
mova @(data_CE309E8,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE309C4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE3094A
mova @(data_CE309EC,pc),r0
fmov.s @r0,fr4

code_CE3094A:
mov 0x5C,r0
fldi0 fr3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE309F0,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE309F4,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)

code_CE30964:
mov.l @(ptr_CE309DC_to_extern_8C052CE2,pc),r3
jsr @r3
mov r14,r4
extu.b r0,r0
tst r0,r0
bt code_CE3097A
lds.l @r15+,pr
mov.l @(ptr_CE309E0_to_extern_8C052DAC,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE3097A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30980:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE309D4_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE309C6,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf code_CE309B6
mov.b @(0x07,r14),r0
mov.l @(ptr_CE309F8_to_code_CE3495C,pc),r3
add 0x01,r0
mov.b r0,@(0x07,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE309FC_to_extern_8C034E8C,pc),r2
mov 0x01,r5
mov 0x03,r6
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE30A00_to_code_CE34930,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE309B6:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE309BC:
#data 0x01FF

data_CE309BE:
#data 0x0320

data_CE309C0:
#data 0x0141

data_CE309C2:
#data 0x01FC

data_CE309C4:
#data 0x01D2

data_CE309C6:
#data 0x041C
#align4

ptr_CE309C8_to_ptr_CE34C94_to_code_CE3064A:
#data ptr_CE34C94_to_code_CE3064A

ptr_CE309CC_to_extern_8C04FEA8:
#data extern_8C04FEA8

ptr_CE309D0_to_extern_8C050048:
#data extern_8C050048

ptr_CE309D4_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE309D8_to_extern_8C05176E:
#data extern_8C05176E

ptr_CE309DC_to_extern_8C052CE2:
#data extern_8C052CE2

ptr_CE309E0_to_extern_8C052DAC:
#data extern_8C052DAC

ptr_CE309E4_to_ptr_CE34CA4_to_code_CE30918:
#data ptr_CE34CA4_to_code_CE30918

data_CE309E8:
#data 0xC162AAAA

data_CE309EC:
#data 0x4162AAAA

data_CE309F0:
#data 0xC1892492

data_CE309F4:
#data 0xBF092492

ptr_CE309F8_to_code_CE3495C:
#data code_CE3495C

ptr_CE309FC_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE30A00_to_code_CE34930:
#data code_CE34930


code_CE30A04:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE30B34_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE30A1E
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE30B38_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE30A1E:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE30A26:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30B3C_to_extern_8C050084,pc),r3
jsr @r3
mov r4,r14
mov.l @(ptr_CE30B40_to_extern_8C04FF88,pc),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov r14,r4
bra code_CE308B4
mov.l @r15+,r14

code_CE30A3E:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
mov.l @(ptr_CE30B44_to_extern_8C052C84,pc),r3
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
mov.w @(data_CE30B2E,pc),r0
mov r14,r4
lds.l @r15+,pr
mov.l @(r0,r14),r2
mov.l @(ptr_CE30B48_to_ptr_CE34CB0_to_code_CE30A94,pc),r0
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

code_CE30A94:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE30B34_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE30AAE
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE30B38_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE30AAE:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE30AB6:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf code_CE30AF8
mov.l @(ptr_CE30B34_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE30B30,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE30B28
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE30B4C,pc),r0
fmov.s @r0,fr4
mova @(data_CE30B50,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE30B32,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE30AEE
mova @(data_CE30B54,pc),r0
fmov.s @r0,fr4
mova @(data_CE30B58,pc),r0
fmov.s @r0,fr5

code_CE30AEE:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
bra code_CE30B28
fmov.s fr5,@(r0,r14)

code_CE30AF8:
mov.w @(data_CE30B30,pc),r0
mov.b @(r0,r14),r0
cmp/eq 0x02,r0
bf/s code_CE30B12
mov r14,r4
mov.w @(data_CE30B30,pc),r0
mov 0x00,r2
fldi0 fr4
mov.b r2,@(r0,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)

code_CE30B12:
mov.l @(ptr_CE30B34_to_extern_8C034DEE,pc),r3
jsr @r3
nop
exts.b r0,r0
cmp/pz r0
bt code_CE30B28
lds.l @r15+,pr
mov.l @(ptr_CE30B38_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30B28:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE30B2E:
#data 0x0320

data_CE30B30:
#data 0x0141

data_CE30B32:
#data 0x01D2
#align4

ptr_CE30B34_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE30B38_to_code_CE348A0:
#data code_CE348A0

ptr_CE30B3C_to_extern_8C050084:
#data extern_8C050084

ptr_CE30B40_to_extern_8C04FF88:
#data extern_8C04FF88

ptr_CE30B44_to_extern_8C052C84:
#data extern_8C052C84

ptr_CE30B48_to_ptr_CE34CB0_to_code_CE30A94:
#data ptr_CE34CB0_to_code_CE30A94

data_CE30B4C:
#data 0x41D55555

data_CE30B50:
#data 0xBF555555

data_CE30B54:
#data 0xC1D55555

data_CE30B58:
#data 0x3F555555


code_CE30B5C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30C44_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE30B76
lds.l @r15+,pr
mov.l @(ptr_CE30C48_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30B76:
mov.w @(data_CE30C3E,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE30B9A
mov 0x00,r3
mov.b r3,@(r0,r14)
mova @(data_CE30C4C,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE30C40,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE30B92
mova @(data_CE30C50,pc),r0
fmov.s @r0,fr4

code_CE30B92:
mov 0x34,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14)

code_CE30B9A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30BA0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30C44_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE30BBA
lds.l @r15+,pr
mov.l @(ptr_CE30C48_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30BBA:
mov.w @(data_CE30C3E,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE30BDE
mov 0x00,r3
mov.b r3,@(r0,r14)
mova @(data_CE30C4C,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE30C40,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE30BD6
mova @(data_CE30C50,pc),r0
fmov.s @r0,fr4

code_CE30BD6:
mov 0x34,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14)

code_CE30BDE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30BE4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30C44_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE30BFE
lds.l @r15+,pr
mov.l @(ptr_CE30C48_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30BFE:
mov.w @(data_CE30C3E,pc),r0
fldi0 fr3
mov.b @(r0,r14),r3
lds r3,fpul
float fpul,fr4
fcmp/gt fr3,fr4
bf code_CE30C2E
ftrc fr4,fpul
mov 0x00,r2
mov.b r2,@(r0,r14)
mov.l @(ptr_CE30C54_to_data_CE34CC8,pc),r0
sts fpul,r3
shll2 r3
fmov.s @(r0,r3),fr4
mov.w @(data_CE30C40,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf/s code_CE30C26
mov 0x34,r0
fneg fr4

code_CE30C26:
fmov.s @(r0,r14),fr3
fadd fr4,fr3
bra code_CE30C38
fmov.s fr3,@(r0,r14)

code_CE30C2E:
mov 0x5C,r0
fmov fr3,fr4
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)

code_CE30C38:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE30C3E:
#data 0x0141

data_CE30C40:
#data 0x01D2
#align4

ptr_CE30C44_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE30C48_to_code_CE348A0:
#data code_CE348A0

data_CE30C4C:
#data 0x42555555

data_CE30C50:
#data 0xC2555555

ptr_CE30C54_to_data_CE34CC8:
#data data_CE34CC8


code_CE30C58:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf code_CE30CD6
mov.l @(ptr_CE30D1C_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE30D16,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt/s code_CE30C9C
mov 0x00,r4
mov.b @(r0,r14),r3
add 0x56,r0
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE30D20_to_extern_8C2896B0,pc),r3
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.w @(data_CE30D16,pc),r0
mov.b r4,@(r0,r14)

code_CE30C9C:
mov.w @(data_CE30D18,pc),r0
mov.b @(r0,r14),r3
cmp/pl r3
bf code_CE30CB6
mov.b r4,@(r0,r14)
mov 0x01,r0
mov.l @(ptr_CE30D24_to_extern_8C26A518,pc),r4
mov 0x30,r5
mov.l @(ptr_CE30D28_to_extern_8C04223A,pc),r3
mov.b r0,@(0x05,r4)
mov.b r0,@(0x06,r4)
jsr @r3
mov r14,r4

code_CE30CB6:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE30CEC
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE30D2C_to_extern_8C034E8C,pc),r3
mov 0x04,r6
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x07,r5
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE30CD6:
mov.l @(ptr_CE30D1C_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE30CEC
lds.l @r15+,pr
mov.l @(ptr_CE30D30_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30CEC:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30CF2:
sts.l pr,@-r15
mov.l @(ptr_CE30D34_to_extern_8C0511E2,pc),r3
jsr @r3
mov.l r4,@-r15
mov.l @r15,r4
add 0x04,r15
bra code_CE30A3E
lds.l @r15+,pr

code_CE30D02:
mov.w @(data_CE30D1A,pc),r0
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE30D38_to_ptr_CE34CDC_to_code_CE30A3E,pc),r0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

data_CE30D16:
#data 0x014B

data_CE30D18:
#data 0x0140

data_CE30D1A:
#data 0x01FF
#align4

ptr_CE30D1C_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE30D20_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE30D24_to_extern_8C26A518:
#data extern_8C26A518

ptr_CE30D28_to_extern_8C04223A:
#data extern_8C04223A

ptr_CE30D2C_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE30D30_to_code_CE348A0:
#data code_CE348A0

ptr_CE30D34_to_extern_8C0511E2:
#data extern_8C0511E2

ptr_CE30D38_to_ptr_CE34CDC_to_code_CE30A3E:
#data ptr_CE34CDC_to_code_CE30A3E


code_CE30D3C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf/s code_CE30D92
mov 0x00,r13
mov.b @(0x06,r14),r0
mov.l @(ptr_CE30E48_to_extern_8C052B4C,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE30E4C_to_extern_8C056DE4,pc),r2
mov 0x05,r5
jsr @r2
mov r14,r4
mov.w @(data_CE30E3E,pc),r0
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
mov.l @(ptr_CE30E50_to_extern_8C2896B0,pc),r3
mov 0x17,r6
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE30E54_to_extern_8C034E8C,pc),r2
jsr @r2
mov r14,r4

code_CE30D92:
mov.w @(data_CE30E40,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x03,r0
bf code_CE30DA2
mov.l @(ptr_CE30E58_to_extern_8C0511E2,pc),r2
jsr @r2
mov r14,r4

code_CE30DA2:
mov 0x5C,r1
mov.l @(ptr_CE30E5C_to_extern_8C052C84,pc),r3
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
mov.l @(ptr_CE30E60_to_extern_8C034DEE,pc),r2
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE30DF8
lds.l @r15+,pr
mov.l @(ptr_CE30E64_to_code_CE348A0,pc),r2
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

code_CE30DF8:
mov.w @(data_CE30E42,pc),r0
mov.b @(r0,r14),r2
cmp/pl r2
bf code_CE30E24
mov.b @(r0,r14),r3
mova @(data_CE30E68,pc),r0
fmov.s @r0,fr2
lds r3,fpul
mov.w @(data_CE30E44,pc),r0
float fpul,fr3
mov.w @(r0,r14),r3
tst r3,r3
fmov fr3,fr4
bt/s code_CE30E18
fmul fr2,fr4
fneg fr4

code_CE30E18:
mov 0x34,r0
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14)
mov.w @(data_CE30E42,pc),r0
mov.b r13,@(r0,r14)

code_CE30E24:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30E2C:
mov r4,r3
mov.l @(ptr_CE30E6C_to_ptr_CE34CEC_to_code_CE30E70,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE30E3E:
#data 0x01F9

data_CE30E40:
#data 0x01FF

data_CE30E42:
#data 0x0140

data_CE30E44:
#data 0x0130
#align4

ptr_CE30E48_to_extern_8C052B4C:
#data extern_8C052B4C

ptr_CE30E4C_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE30E50_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE30E54_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE30E58_to_extern_8C0511E2:
#data extern_8C0511E2

ptr_CE30E5C_to_extern_8C052C84:
#data extern_8C052C84

ptr_CE30E60_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE30E64_to_code_CE348A0:
#data code_CE348A0

data_CE30E68:
#data 0x3FD55555

ptr_CE30E6C_to_ptr_CE34CEC_to_code_CE30E70:
#data ptr_CE34CEC_to_code_CE30E70


code_CE30E70:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30FA8_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE30FA2,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE30EAC
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x18,r0
mov.w r0,@(0x1C,r14)
mova @(data_CE30FAC,pc),r0
fmov.s @r0,fr4
mova @(data_CE30FB0,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE30FA4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE30EA4
mova @(data_CE30FB4,pc),r0
fmov.s @r0,fr4
mova @(data_CE30FB8,pc),r0
fmov.s @r0,fr5

code_CE30EA4:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)

code_CE30EAC:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30EB2:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
mov.l @(ptr_CE30FA8_to_extern_8C034DEE,pc),r3
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
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pz r0
bt code_CE30F2A
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE30FBC,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE30FA4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE30F18
mova @(data_CE30FC0,pc),r0
fmov.s @r0,fr4

code_CE30F18:
mov 0x02,r6
mov.l @(ptr_CE30FC4_to_extern_8C034E8C,pc),r3
mov 0x68,r0
mov r14,r4
fmov.s fr4,@(r0,r14)
mov r6,r5
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE30F2A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30F30:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30FA8_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE30F4A
lds.l @r15+,pr
mov.l @(ptr_CE30FC8_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE30F4A:
mov.w @(data_CE30FA2,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE30F8A
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

code_CE30F8A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30F90:
mov r4,r3
mov.l @(ptr_CE30FCC_to_ptr_CE34CF8_to_code_CE30FD0,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE30FA2:
#data 0x0141

data_CE30FA4:
#data 0x01D2
#align4

ptr_CE30FA8_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE30FAC:
#data 0xC17D5555

data_CE30FB0:
#data 0x3EA00000

data_CE30FB4:
#data 0x417D5555

data_CE30FB8:
#data 0xBEA00000

data_CE30FBC:
#data 0x3F055555

data_CE30FC0:
#data 0xBF055555

ptr_CE30FC4_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE30FC8_to_code_CE348A0:
#data code_CE348A0

ptr_CE30FCC_to_ptr_CE34CF8_to_code_CE30FD0:
#data ptr_CE34CF8_to_code_CE30FD0


code_CE30FD0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31108_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE31102,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE3100C
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x18,r0
mov.w r0,@(0x1C,r14)
mova @(data_CE3110C,pc),r0
fmov.s @r0,fr4
mova @(data_CE31110,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE31104,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE31004
mova @(data_CE31114,pc),r0
fmov.s @r0,fr4
mova @(data_CE31118,pc),r0
fmov.s @r0,fr5

code_CE31004:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)

code_CE3100C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31012:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
mov.l @(ptr_CE31108_to_extern_8C034DEE,pc),r3
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
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pz r0
bt code_CE3108A
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE3111C,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE31104,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE31078
mova @(data_CE31120,pc),r0
fmov.s @r0,fr4

code_CE31078:
mov.l @(ptr_CE31124_to_extern_8C034E8C,pc),r3
mov 0x68,r0
mov r14,r4
fmov.s fr4,@(r0,r14)
lds.l @r15+,pr
mov 0x03,r6
mov 0x02,r5
jmp @r3
mov.l @r15+,r14

code_CE3108A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31090:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31108_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE310AA
lds.l @r15+,pr
mov.l @(ptr_CE31128_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE310AA:
mov.w @(data_CE31102,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE310EA
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

code_CE310EA:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE310F0:
mov r4,r3
mov.l @(ptr_CE3112C_to_ptr_CE34D04_to_code_CE31130,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE31102:
#data 0x0141

data_CE31104:
#data 0x01D2
#align4

ptr_CE31108_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE3110C:
#data 0x417D5555

data_CE31110:
#data 0xBEA00000

data_CE31114:
#data 0xC17D5555

data_CE31118:
#data 0x3EA00000

data_CE3111C:
#data 0xBF055555

data_CE31120:
#data 0x3F055555

ptr_CE31124_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31128_to_code_CE348A0:
#data code_CE348A0

ptr_CE3112C_to_ptr_CE34D04_to_code_CE31130:
#data ptr_CE34D04_to_code_CE31130


code_CE31130:
mov.w @(data_CE3124A,pc),r0
mov 0x00,r3
mov.w @(data_CE3124C,pc),r2
mov 0x02,r5
mov.b r3,@(r0,r4)
add 0x1D,r0
mov.b r2,@(r0,r4)
mov.l @(ptr_CE31254_to_extern_8C2895F0,pc),r2
mov.b @r2,r3
extu.b r3,r3
cmp/ge r5,r3
bf code_CE311B0
mov.b @(0x06,r4),r0
mov 0x01,r3
add 0x01,r0
mov.b r0,@(0x06,r4)
mov.w @(data_CE3124A,pc),r0
mov.b r3,@(r0,r4)
mov.w @(data_CE3124E,pc),r0
mov.b r5,@(r0,r4)
mov 0x20,r0
mov.w r0,@(0x1C,r4)
mov 0x34,r0
fmov.s @(r0,r4),fr3
mov 0x64,r0
fmov.s fr3,@(r0,r4)
mova @(data_CE31258,pc),r0
fmov.s @r0,fr4
mova @(data_CE3125C,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE31250,pc),r0
mov.w @(r0,r4),r3
tst r3,r3
bt code_CE3117C
mova @(data_CE31260,pc),r0
fmov.s @r0,fr4
mova @(data_CE31264,pc),r0
fmov.s @r0,fr5

code_CE3117C:
mov 0x34,r0
mov.l @(ptr_CE31270_to_extern_8C034E8C,pc),r3
fmov.s @(r0,r4),fr3
mov 0x00,r6
fadd fr4,fr3
fldi0 fr4
fmov.s fr3,@(r0,r4)
mov 0x5C,r0
fmov.s fr5,@(r0,r4)
mov 0x68,r0
fmov.s fr4,@(r0,r4)
mova @(data_CE31268,pc),r0
fmov.s @r0,fr3
mov.w @(data_CE31252,pc),r0
fmov.s @(r0,r4),fr2
mov 0x38,r0
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mova @(data_CE3126C,pc),r0
fmov.s @r0,fr2
mov 0x60,r0
fmov.s fr2,@(r0,r4)
mov 0x6C,r0
fmov.s fr4,@(r0,r4)
jmp @r3
mov 0x12,r5

code_CE311B0:
rts
nop
;-------------------------------------------------------------------------------

code_CE311B4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31274_to_extern_8C034DEE,pc),r3
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
mov.w @(data_CE31252,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf code_CE31244
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x31,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE3124E,pc),r0
mov.b r3,@(r0,r14)
mov 0x64,r0
fmov.s @(r0,r14),fr3
mov 0x34,r0
mov.l @(ptr_CE31278_to_extern_8C04223A,pc),r3
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31252,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE3127C_to_extern_8C0C1A18,pc),r2
mov 0x00,r5
jsr @r2
mov r14,r4
mov.l @(ptr_CE31280_to_extern_8C26A518,pc),r5
mov 0x01,r0
mov.l @(ptr_CE31270_to_extern_8C034E8C,pc),r3
mov r14,r4
mov.b r0,@(0x05,r5)
mov r0,r6
mov.b r0,@(0x06,r5)
mov 0x12,r5
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE31244:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE3124A:
#data 0x012C

data_CE3124C:
#data 0x00FF

data_CE3124E:
#data 0x01F9

data_CE31250:
#data 0x0130

data_CE31252:
#data 0x041C
#align4

ptr_CE31254_to_extern_8C2895F0:
#data extern_8C2895F0

data_CE31258:
#data 0xC4200000

data_CE3125C:
#data 0x41A00000

data_CE31260:
#data 0x44200000

data_CE31264:
#data 0xC1A00000

data_CE31268:
#data 0x44092492

data_CE3126C:
#data 0xC1892492

ptr_CE31270_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31274_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31278_to_extern_8C04223A:
#data extern_8C04223A

ptr_CE3127C_to_extern_8C0C1A18:
#data extern_8C0C1A18

ptr_CE31280_to_extern_8C26A518:
#data extern_8C26A518


code_CE31284:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31358_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE3129A
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)

code_CE3129A:
mov.w @(data_CE31354,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE312B2
mov 0x00,r3
mov r14,r4
mov.b r3,@(r0,r14)
mov 0x01,r5
lds.l @r15+,pr
mov.l @(ptr_CE3135C_to_extern_8C0C1A18,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE312B2:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE312B8:
mov.b @(0x06,r4),r0
tst r0,r0
bt code_CE312C2
bra code_CE312FC
nop

code_CE312C2:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x20,r0
mov.b @(r0,r14),r4
mov.l @(ptr_CE31360_to_data_CE34D14,pc),r0
extu.b r4,r6
extu.b r4,r4
tst r4,r4
bf/s code_CE312F0
mov.b @(r0,r6),r6
mov.l @(ptr_CE31364_to_extern_8C03319E,pc),r2
jsr @r2
nop
mov.l @(ptr_CE31368_to_data_CE34D10,pc),r1
and 0x03,r0
mov.b @(r0,r1),r6
mov.w @(data_CE31356,pc),r0
extu.b r6,r3
mov.l r3,@(r0,r14)

code_CE312F0:
lds.l @r15+,pr
mov.l @(ptr_CE3136C_to_extern_8C034E8C,pc),r3
mov 0x13,r5
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE312FC:
mov.l r14,@-r15
mov 0x20,r0
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE3131A
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf code_CE31316
bra code_CE31448
nop

code_CE31316:
bra code_CE3145C
nop

code_CE3131A:
mov.w @(data_CE31356,pc),r0
mov.l @(r0,r14),r0
cmp/eq 0x03,r0
bt code_CE31380
mov.l @(ptr_CE31370_to_extern_8C046C8A,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt code_CE31330
bra code_CE31452
nop

code_CE31330:
mov.w @(data_CE31354,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE3133C
bra code_CE3145C
nop

code_CE3133C:
mov 0x00,r3
mov.b r3,@(r0,r14)
mova @(data_CE31374,pc),r0
fmov.s @r0,fr5
mova @(data_CE31378,pc),r0
mov.l @(ptr_CE3137C_to_extern_8C06CFFC,pc),r3
mov 0x01,r5
fmov.s @r0,fr4
jsr @r3
mov r14,r4
bra code_CE3145C
nop

data_CE31354:
#data 0x0141

data_CE31356:
#data 0x02B8
#align4

ptr_CE31358_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE3135C_to_extern_8C0C1A18:
#data extern_8C0C1A18

ptr_CE31360_to_data_CE34D14:
#data data_CE34D14

ptr_CE31364_to_extern_8C03319E:
#data extern_8C03319E

ptr_CE31368_to_data_CE34D10:
#data data_CE34D10

ptr_CE3136C_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31370_to_extern_8C046C8A:
#data extern_8C046C8A

data_CE31374:
#data 0x42BE0000

data_CE31378:
#data 0xC2080000

ptr_CE3137C_to_extern_8C06CFFC:
#data extern_8C06CFFC


code_CE31380:
mov.b @(0x07,r14),r0
tst r0,r0
bf code_CE313B8
mov.b @(0x07,r14),r0
add 0x01,r0
mov.b r0,@(0x07,r14)
mova @(data_CE314B8,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE314B0,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt code_CE3139C
mova @(data_CE314BC,pc),r0
fmov.s @r0,fr4

code_CE3139C:
mov 0x5C,r0
fldi0 fr3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE314C0,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE314C4,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
bra code_CE31466
fmov.s fr3,@(r0,r14)

code_CE313B8:
mov.b @(0x07,r14),r0
extu.b r0,r0
cmp/eq 0x01,r0
bf code_CE31448
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
mov.w @(data_CE314B2,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt code_CE3145C
mov.b @(0x07,r14),r0
mov 0x01,r7
mov.l @(ptr_CE314C8_to_extern_8C03544C,pc),r3
mov 0x00,r5
add 0x01,r0
mov.b r0,@(0x07,r14)
mov.w @(data_CE314B2,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.b @(0x02,r14),r0
extu.b r0,r6
add 0x14,r6
jsr @r3
mov r14,r4
mov.l @(ptr_CE314CC_to_extern_8C03319E,pc),r2
jsr @r2
nop
mov.l @(data_CE314D0,pc),r1
and 0x07,r0
mov.l @(ptr_CE314D4_to_extern_8C034E8C,pc),r3
mov 0x13,r5
mov.b @(r0,r1),r6
jsr @r3
mov r14,r4
mov.l @(ptr_CE314D8_to_code_CE34930,pc),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE314DC_to_extern_8C042008,pc),r3
mov 0x10,r5
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31448:
mov.l @(ptr_CE314E0_to_extern_8C046C8A,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt code_CE3145C

code_CE31452:
lds.l @r15+,pr
mov.l @(ptr_CE314E4_to_code_CE348A0,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE3145C:
lds.l @r15+,pr
mov.l @(ptr_CE314E8_to_extern_8C034DEE,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31466:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3146C:
mov.w @(data_CE314B4,pc),r0
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE314EC_to_ptr_CE34D24_to_code_CE31480,pc),r0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

code_CE31480:
mov.l @(ptr_CE314E4_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31486:
mov.l @(ptr_CE314E4_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE3148C:
mov.l @(ptr_CE314E4_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31492:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE314F0_to_ptr_CE34D98_to_code_CE314F8,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE314F4_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

data_CE314B0:
#data 0x0130

data_CE314B2:
#data 0x041C

data_CE314B4:
#data 0x01E9
#align4

data_CE314B8:
#data 0x40A00000

data_CE314BC:
#data 0xC0A00000

data_CE314C0:
#data 0x41BC9249

data_CE314C4:
#data 0xBF809249

ptr_CE314C8_to_extern_8C03544C:
#data extern_8C03544C

ptr_CE314CC_to_extern_8C03319E:
#data extern_8C03319E

data_CE314D0:
#data 0x0CE34D19

ptr_CE314D4_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE314D8_to_code_CE34930:
#data code_CE34930

ptr_CE314DC_to_extern_8C042008:
#data extern_8C042008

ptr_CE314E0_to_extern_8C046C8A:
#data extern_8C046C8A

ptr_CE314E4_to_code_CE348A0:
#data code_CE348A0

ptr_CE314E8_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE314EC_to_ptr_CE34D24_to_code_CE31480:
#data ptr_CE34D24_to_code_CE31480

ptr_CE314F0_to_ptr_CE34D98_to_code_CE314F8:
#data ptr_CE34D98_to_code_CE314F8

ptr_CE314F4_to_code_CE34980:
#data code_CE34980


code_CE314F8:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE31624_to_extern_8C05218A,pc),r3
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
jsr @r3
mov r14,r4
mov.w @(data_CE3161C,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x02,r0
bt code_CE31532
mov.w @(data_CE3161C,pc),r0
mov 0x00,r2
mov.l @(ptr_CE31628_to_extern_8C05115A,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4

code_CE31532:
mov.l @(ptr_CE3162C_to_extern_8C056DE4,pc),r2
mov 0x10,r5
jsr @r2
mov r14,r4
mov.w @(data_CE3161E,pc),r0
mov.l @(ptr_CE31630_to_data_CE34DAC,pc),r3
mov.b @(r0,r14),r4
add 0x8D,r0
mov.w @(r0,r14),r2
extu.b r4,r4
shll r4
shll2 r4
add r3,r4
fmov.s @r4+,fr4
tst r2,r2
bt/s code_CE31558
fmov.s @r4,fr5
fneg fr5
fneg fr4

code_CE31558:
mov 0x5C,r0
mov.l @(ptr_CE31634_to_extern_8C034E8C,pc),r3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mov r14,r4
mov.w @(data_CE3161E,pc),r0
mov 0x15,r5
lds.l @r15+,pr
mov.b @(r0,r14),r6
extu.b r6,r6
shll r6
jmp @r3
mov.l @r15+,r14

code_CE31574:
mov.w @(data_CE31620,pc),r0
mov.b @(r0,r4),r3
tst r3,r3
bf code_CE31582
mov.b @(0x06,r4),r0
add 0x01,r0
mov.b r0,@(0x06,r4)

code_CE31582:
mov.l @(ptr_CE31638_to_extern_8C034DEE,pc),r3
jmp @r3
nop

code_CE31588:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
mov.l @(ptr_CE31638_to_extern_8C034DEE,pc),r3
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
mov.w @(data_CE31620,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE31616
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x02,r2
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31620,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE3161C,pc),r0
mov.b r2,@(r0,r14)
mova @(data_CE3163C,pc),r0
fmov.s @r0,fr4
mova @(data_CE31640,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE31622,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt code_CE315FE
mova @(data_CE31644,pc),r0
fmov.s @r0,fr4
mova @(data_CE31648,pc),r0
fmov.s @r0,fr5

code_CE315FE:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE3164C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mova @(data_CE31650,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)

code_CE31616:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE3161C:
#data 0x01F9

data_CE3161E:
#data 0x01A3

data_CE31620:
#data 0x0141

data_CE31622:
#data 0x0130
#align4

ptr_CE31624_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE31628_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE3162C_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE31630_to_data_CE34DAC:
#data data_CE34DAC

ptr_CE31634_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31638_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE3163C:
#data 0xC1200000

data_CE31640:
#data 0x3F200000

data_CE31644:
#data 0x41200000

data_CE31648:
#data 0xBF200000

data_CE3164C:
#data 0x414DB6DB

data_CE31650:
#data 0xBF4DB6DB


code_CE31654:
mov.l r14,@-r15
mov r4,r14
mov 0x60,r0
fldi0 fr3
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf code_CE3166C
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mov 0x5C,r0
fmov.s fr3,@(r0,r14)

code_CE3166C:
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
mov.w @(data_CE3173E,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf code_CE316BA
lds.l @r15+,pr
mov.l @(ptr_CE31744_to_extern_8C034DEE,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE316BA:
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x15,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31740,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE3173E,pc),r0
mov.l @(ptr_CE31748_to_extern_8C034E8C,pc),r3
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31742,pc),r0
mov.b @(r0,r14),r6
add 0x03,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE3174C_to_code_CE34930,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE316E6:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE31744_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE31700
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE31750_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE31700:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE31708:
mov.l @(ptr_CE31750_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE3170E:
mov.l @(ptr_CE31750_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31714:
mov.l @(ptr_CE31750_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE3171A:
mov.l @(ptr_CE31750_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31720:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE31754_to_ptr_CE34DC4_to_code_CE3175C,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE31758_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

data_CE3173E:
#data 0x041C

data_CE31740:
#data 0x01F9

data_CE31742:
#data 0x01A3
#align4

ptr_CE31744_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31748_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE3174C_to_code_CE34930:
#data code_CE34930

ptr_CE31750_to_code_CE348A0:
#data code_CE348A0

ptr_CE31754_to_ptr_CE34DC4_to_code_CE3175C:
#data ptr_CE34DC4_to_code_CE3175C

ptr_CE31758_to_code_CE34980:
#data code_CE34980


code_CE3175C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE31864_to_extern_8C05115A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE31868_to_code_CE3495C,pc),r2
jsr @r2
mov r14,r4
mov.l @(ptr_CE3186C_to_extern_8C056DE4,pc),r3
mov 0x05,r5
jsr @r3
mov r14,r4
mov.w @(data_CE3185A,pc),r0
mov.l @(ptr_CE31870_to_data_CE34DD4,pc),r4
mov.b @(r0,r14),r2
mova @(data_CE31874,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE3185C,pc),r0
extu.b r2,r2
shll r2
mov.w @(r0,r14),r3
shll2 r2
add r4,r2
tst r3,r3
bt/s code_CE3179E
fmov.s @r2,fr4
mova @(data_CE31878,pc),r0
fneg fr4
fmov.s @r0,fr5

code_CE3179E:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mov 0x15,r5
mov.w @(data_CE3185A,pc),r0
mov.b @(r0,r14),r3
mov 0x0C,r0
extu.b r3,r3
shll r3
shll2 r3
add r3,r4
mov.l @(ptr_CE31880_to_extern_8C034E8C,pc),r3
fmov.s @(r0,r4),fr3
mov 0x60,r0
mov r14,r4
fmov.s fr3,@(r0,r14)
mova @(data_CE3187C,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE3185A,pc),r0
lds.l @r15+,pr
mov.b @(r0,r14),r6
extu.b r6,r6
shll r6
add 0x12,r6
jmp @r3
mov.l @r15+,r14

code_CE317D8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31884_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE3185E,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE317FA
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE31888_to_extern_8C053082,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE317FA:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31800:
mov.l r14,@-r15
sts.l pr,@-r15
bsr code_CE31890
mov r4,r14
mov.w @(data_CE3185E,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE31816
mov.l @(ptr_CE31884_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4

code_CE31816:
mov.w @(data_CE31860,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf code_CE31832
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE31868_to_code_CE3495C,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE31832:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31838:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE31884_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE31852
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE3188C_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE31852:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

data_CE3185A:
#data 0x01A3

data_CE3185C:
#data 0x0130

data_CE3185E:
#data 0x0141

data_CE31860:
#data 0x041C
#align4

ptr_CE31864_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE31868_to_code_CE3495C:
#data code_CE3495C

ptr_CE3186C_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE31870_to_data_CE34DD4:
#data data_CE34DD4

data_CE31874:
#data 0x3F3AAAAA

data_CE31878:
#data 0xBF3AAAAA

data_CE3187C:
#data 0xBF892492

ptr_CE31880_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31884_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31888_to_extern_8C053082:
#data extern_8C053082

ptr_CE3188C_to_code_CE348A0:
#data code_CE348A0


code_CE31890:
mov 0x68,r0
fmov.s @(r0,r4),fr3
mov 0x5C,r0
fmov.s @(r0,r4),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf code_CE318BC
mov 0x5C,r1
add r4,r1
mov 0x34,r0
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
mov 0x68,r1
add r4,r1
fadd fr2,fr1
fmov.s fr1,@(r0,r4)
mov 0x5C,r0
fmov.s @(r0,r4),fr1
fmov.s @r1,fr2
fadd fr2,fr1
fmov.s fr1,@(r0,r4)

code_CE318BC:
mov 0x60,r1
add r4,r1
mov 0x38,r0
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x6C,r1
add r4,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x60,r0
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf/s code_CE318E6
fmov.s fr2,@(r0,r4)
mova @(data_CE319B4,pc),r0
fmov.s @r0,fr2
mov 0x6C,r0
fmov.s fr2,@(r0,r4)

code_CE318E6:
rts
nop
;-------------------------------------------------------------------------------

code_CE318EA:
mov.l @(ptr_CE319B8_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE318F0:
mov.l @(ptr_CE319B8_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE318F6:
mov r4,r3
mov.l @(ptr_CE319BC_to_ptr_CE34DEC_to_code_CE31908,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE31908:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE319C0_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE319AA,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x02,r0
bt code_CE31930
mov.w @(data_CE319AA,pc),r0
mov 0x00,r2
mov.l @(ptr_CE319C4_to_extern_8C05115A,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4

code_CE31930:
mov.w @(data_CE319AC,pc),r0
mov 0x00,r2
mov.l @(ptr_CE319C8_to_extern_8C056DE4,pc),r3
mov 0x01,r5
mov.l r2,@(r0,r14)
jsr @r3
mov r14,r4
mov 0x60,r0
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE319CC,pc),r0
fmov.s @r0,fr4
mova @(data_CE319D0,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE319AE,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE31960
mova @(data_CE319D4,pc),r0
fmov.s @r0,fr4
mova @(data_CE319D8,pc),r0
fmov.s @r0,fr5

code_CE31960:
mov 0x5C,r0
mov.l @(ptr_CE319DC_to_extern_8C034E8C,pc),r3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
mov r14,r4
fmov.s fr5,@(r0,r14)
lds.l @r15+,pr
mov 0x16,r6
mov 0x15,r5
jmp @r3
mov.l @r15+,r14

code_CE31976:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE319E0_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE319B0,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE319A4
mov.b @(0x06,r14),r0
mov 0x04,r3
mov 0x00,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x10,r0
mov.w r0,@(0x1C,r14)
mov.w @(data_CE319B2,pc),r0
mov.l r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(ptr_CE319E4_to_extern_8C0C1D30,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE319A4:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE319AA:
#data 0x01F9

data_CE319AC:
#data 0x02BC

data_CE319AE:
#data 0x01D2

data_CE319B0:
#data 0x0141

data_CE319B2:
#data 0x02C8
#align4

data_CE319B4:
#data 0xC0092492

ptr_CE319B8_to_code_CE348A0:
#data code_CE348A0

ptr_CE319BC_to_ptr_CE34DEC_to_code_CE31908:
#data ptr_CE34DEC_to_code_CE31908

ptr_CE319C0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE319C4_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE319C8_to_extern_8C056DE4:
#data extern_8C056DE4

data_CE319CC:
#data 0xC1855555

data_CE319D0:
#data 0x3EA00000

data_CE319D4:
#data 0x41855555

data_CE319D8:
#data 0xBEA00000

ptr_CE319DC_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE319E0_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE319E4_to_extern_8C0C1D30:
#data extern_8C0C1D30


code_CE319E8:
mov.w @(data_CE31AF0,pc),r0
mov 0x04,r3
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1
mov.l r13,@-r15
add r14,r1
sts.l pr,@-r15
mov.l r3,@(r0,r14)
mov 0x34,r0
fmov.s @r1,fr3
mov 0x68,r1
fmov.s @(r0,r14),fr2
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
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov.l @(ptr_CE31B00_to_extern_8C034DEE,pc),r3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bf code_CE31A9E
mova @(data_CE31B04,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE31AF2,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE31A50
mova @(data_CE31B08,pc),r0
fmov.s @r0,fr4

code_CE31A50:
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31AF4,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf/s code_CE31A90
mov r14,r4
mov 0x04,r0
fldi0 fr4
mov.b r0,@(0x06,r14)
mov 0x00,r3
mov.w @(data_CE31AF0,pc),r0
mov 0x09,r6
mov.l r3,@(r0,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE31B0C,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)
bra code_CE31A94
mov 0x01,r5

code_CE31A90:
mov 0x15,r5
mov 0x17,r6

code_CE31A94:
lds.l @r15+,pr
mov.l @(ptr_CE31B10_to_extern_8C034E8C,pc),r3
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE31A9E:
mov.l @(ptr_CE31B14_to_extern_8C045790,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt/s code_CE31AE8
mov r0,r13
mov.w @(data_CE31AF0,pc),r0
mov 0x10,r3
mov.l r3,@(r0,r14)
mov.w @(data_CE31AF6,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE31ACE
mov.w @(data_CE31AF8,pc),r1;2a8
mov r13,r5
mov.b @(0x01,r13),r0
mov.l @(ptr_CE31B18_to_code_CE34580,pc),r3
add r14,r1
extu.b r0,r0
mov.l r0,@r1
jsr @r3
mov r14,r4
bra code_CE31AD4
nop

code_CE31ACE:
mov.w @(data_CE31AFA,pc),r0
mov 0x00,r3
mov.l r3,@(r0,r14)

code_CE31AD4:
mov r13,r5
mov.w @(data_CE31AFC,pc),r2
mov.w @(data_CE31AFE,pc),r0
mov r14,r4
mov.l @(ptr_CE31B1C_to_extern_8C0522E0,pc),r3
mov.b r2,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE31AE8:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE31AF0:
#data 0x02C8

data_CE31AF2:
#data 0x01D2

data_CE31AF4:
#data 0x01F9

data_CE31AF6:
#data 0x0411

data_CE31AF8:
#data 0x02A8

data_CE31AFA:
#data 0x00CC

data_CE31AFC:
#data 0x00C0

data_CE31AFE:
#data 0x01F7
#align4

ptr_CE31B00_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE31B04:
#data 0x3F055555

data_CE31B08:
#data 0xBF055555

data_CE31B0C:
#data 0xBF4DB6DB

ptr_CE31B10_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31B14_to_extern_8C045790:
#data extern_8C045790

ptr_CE31B18_to_code_CE34580:
#data code_CE34580

ptr_CE31B1C_to_extern_8C0522E0:
#data extern_8C0522E0


code_CE31B20:
mov.w @(data_CE31C5A,pc),r0
mov 0x04,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l r3,@(r0,r14)
mov.l @(ptr_CE31C64_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bf code_CE31B7A
mov.w @(data_CE31C5C,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE31B8A
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
bra code_CE31B8A
fmov.s fr2,@(r0,r14)

code_CE31B7A:
mov.w @(data_CE31C5A,pc),r0
mov 0x00,r2
mov.l @(ptr_CE31C68_to_code_CE348A0,pc),r3
mov r14,r4
mov.l r2,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE31B8A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31B90:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
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
mov.w @(data_CE31C5E,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf code_CE31BE4
lds.l @r15+,pr
mov.l @(ptr_CE31C64_to_extern_8C034DEE,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE31BE4:
mov.w @(data_CE31C5E,pc),r0
mov 0x00,r3
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31C60,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE31C6C_to_code_CE34930,pc),r3
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31C68_to_code_CE348A0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE31C02:
mov r4,r3
mov.l @(ptr_CE31C70_to_ptr_CE34E00_to_code_CE31C14,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE31C14:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE31C74_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE31C60,pc),r0
mov 0x00,r2
mov.l @(ptr_CE31C78_to_extern_8C05115A,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE31C7C_to_extern_8C056DE4,pc),r2
mov 0x05,r5
jsr @r2
mov r14,r4
mov 0x5C,r0
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
mov.l @(ptr_CE31C80_to_extern_8C034E8C,pc),r3
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x1A,r6
lds.l @r15+,pr
mov 0x15,r5
jmp @r3
mov.l @r15+,r14

data_CE31C5A:
#data 0x02C8

data_CE31C5C:
#data 0x0141

data_CE31C5E:
#data 0x041C

data_CE31C60:
#data 0x01F9
#align4

ptr_CE31C64_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31C68_to_code_CE348A0:
#data code_CE348A0

ptr_CE31C6C_to_code_CE34930:
#data code_CE34930

ptr_CE31C70_to_ptr_CE34E00_to_code_CE31C14:
#data ptr_CE34E00_to_code_CE31C14

ptr_CE31C74_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE31C78_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE31C7C_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE31C80_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE31C84:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31D8C_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE31CC4
mov.l @(ptr_CE31D90_to_extern_8C045790,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt/s code_CE31CB0
mov r0,r5
mov.w @(data_CE31D84,pc),r0
mov r14,r4
mov.w @(data_CE31D82,pc),r3
mov.b r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(ptr_CE31D94_to_extern_8C0522E0,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE31CB0:
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE31D98_to_extern_8C034E8C,pc),r3
mov 0x1B,r6
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x15,r5
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE31CC4:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31CCA:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE31D8C_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE31CE4
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE31D9C_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE31CE4:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE31CEC:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE31DA0_to_ptr_CE34E0C_to_code_CE31D0A,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE31DA4_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31D0A:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31D86,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE31DA8_to_extern_8C05115A,pc),r3
jsr @r3
mov r14,r4
mov.l @(ptr_CE31DAC_to_code_CE3495C,pc),r2
jsr @r2
mov r14,r4
bsr code_CE31F32
mov r14,r4
mov.l @(ptr_CE31DB0_to_extern_8C056DE4,pc),r2
mov 0x10,r5
jsr @r2
mov r14,r4
mov.w @(data_CE31D88,pc),r0
mov r14,r4
mov.l @(ptr_CE31DB4_to_data_CE34E20,pc),r1
mov 0x15,r5
mov.b @(r0,r14),r0
mov.l @(ptr_CE31D98_to_extern_8C034E8C,pc),r3
extu.b r0,r0
shll r0
mov.b @(r0,r1),r0
extu.b r0,r0
mov.w r0,@(0x1C,r14)
mov 0x00,r0
mov.w r0,@(0x1E,r14)
mov.w @(data_CE31D88,pc),r0
lds.l @r15+,pr
mov.b @(r0,r14),r6
extu.b r6,r6
shll r6
add 0x32,r6
jmp @r3
mov.l @r15+,r14

code_CE31D5E:
mov.w @(data_CE31D8A,pc),r0
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE31D78
mov.b @(0x06,r14),r0
mov.l @(ptr_CE31DB8_to_extern_8C053082,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4

code_CE31D78:
lds.l @r15+,pr
mov.l @(ptr_CE31D8C_to_extern_8C034DEE,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

data_CE31D82:
#data 0x00C1

data_CE31D84:
#data 0x01F7

data_CE31D86:
#data 0x01F9

data_CE31D88:
#data 0x01A3

data_CE31D8A:
#data 0x0141
#align4

ptr_CE31D8C_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31D90_to_extern_8C045790:
#data extern_8C045790

ptr_CE31D94_to_extern_8C0522E0:
#data extern_8C0522E0

ptr_CE31D98_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31D9C_to_code_CE348A0:
#data code_CE348A0

ptr_CE31DA0_to_ptr_CE34E0C_to_code_CE31D0A:
#data ptr_CE34E0C_to_code_CE31D0A

ptr_CE31DA4_to_code_CE34980:
#data code_CE34980

ptr_CE31DA8_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE31DAC_to_code_CE3495C:
#data code_CE3495C

ptr_CE31DB0_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE31DB4_to_data_CE34E20:
#data data_CE34E20

ptr_CE31DB8_to_extern_8C053082:
#data extern_8C053082


code_CE31DBC:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
mov.l @(ptr_CE31F00_to_extern_8C034DEE,pc),r3
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
exts.b r0,r0
cmp/pz r0
bt code_CE31E3E
mov.w @(0x1C,r14),r0
tst r0,r0
bt code_CE31E24
mov.w @(0x1E,r14),r0
tst r0,r0
bt code_CE31E24
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
mov 0x00,r0
mov.w r0,@(0x1E,r14)
mov.w @(data_CE31EF6,pc),r0
mov.b @(r0,r14),r6
bra code_CE31E32
add 0x07,r6

code_CE31E24:
mov 0x03,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31EF8,pc),r0
mov.b @(r0,r14),r6
extu.b r6,r6
shll r6
add 0x09,r6

code_CE31E32:
lds.l @r15+,pr
mov.l @(ptr_CE31F04_to_extern_8C034E8C,pc),r3
mov 0x15,r5
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31E3E:
mov.w @(data_CE31EFA,pc),r0
mov.b @(r0,r14),r3
cmp/pl r3
bf code_CE31E52
mov 0x00,r2
mov r14,r4
mov.b r2,@(r0,r14)
lds.l @r15+,pr
bra code_CE31F32
mov.l @r15+,r14

code_CE31E52:
mov.b @(r0,r14),r3
cmp/pz r3
bt code_CE31E66
mov.l @(ptr_CE31F08_to_extern_8C055D54,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt code_CE31E66
mov.w @(data_CE31EFC,pc),r0
mov.w r0,@(0x1E,r14)

code_CE31E66:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31E6C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE31F00_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE31E9C
mov.b @(0x06,r14),r0
fldi0 fr3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mov 0x5C,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE31F0C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE31F10,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)

code_CE31E9C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31EA2:
mov.l r14,@-r15
mov 0x5C,r1
mov r4,r14
add r14,r1
mov 0x34,r0
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
mov.w @(data_CE31EFE,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf code_CE31F14
lds.l @r15+,pr
mov.l @(ptr_CE31F00_to_extern_8C034DEE,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

data_CE31EF6:
#data 0x0140

data_CE31EF8:
#data 0x01A3

data_CE31EFA:
#data 0x0141

data_CE31EFC:
#data 0x00FF

data_CE31EFE:
#data 0x041C
#align4

ptr_CE31F00_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE31F04_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE31F08_to_extern_8C055D54:
#data extern_8C055D54

data_CE31F0C:
#data 0xC0892492

data_CE31F10:
#data 0xBF892492


code_CE31F14:
mov.w @(data_CE31FEC,pc),r0
mov 0x00,r3
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31FEE,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE31FF4_to_code_CE34930,pc),r3
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31FF8_to_code_CE348A0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE31F32:
mova @(data_CE31FFC,pc),r0
fmov.s @r0,fr4
mova @(data_CE32000,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE31FF0,pc),r0
mov.w @(r0,r4),r3
tst r3,r3
bt code_CE31F4A
mova @(data_CE32004,pc),r0
fmov.s @r0,fr4
mova @(data_CE32008,pc),r0
fmov.s @r0,fr5

code_CE31F4A:
mov 0x5C,r0
fmov.s fr4,@(r0,r4)
mova @(data_CE3200C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r4)
mov 0x68,r0
fmov.s fr5,@(r0,r4)
mova @(data_CE32010,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
rts
fmov.s fr3,@(r0,r4)
;-------------------------------------------------------------------------------

code_CE31F64:
mov.l @(ptr_CE31FF8_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31F6A:
mov.l @(ptr_CE31FF8_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31F70:
mov.l @(ptr_CE31FF8_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE31F76:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE32014_to_ptr_CE34E24_to_code_CE31F94,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE32018_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31F94:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE3201C_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE32020_to_extern_8C05115A,pc),r2
jsr @r2
mov r14,r4
mov.l @(ptr_CE32024_to_extern_8C056DE4,pc),r3
mov 0x05,r5
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
mov 0x00,r3
mov.w @(data_CE31FEE,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE31FEC,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31FF2,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt/s code_CE31FE0
mov 0x21,r6
mov 0x30,r6

code_CE31FE0:
lds.l @r15+,pr
mov.l @(ptr_CE32028_to_extern_8C034E8C,pc),r3
mov 0x15,r5
mov r14,r4
jmp @r3
mov.l @r15+,r14

data_CE31FEC:
#data 0x041C

data_CE31FEE:
#data 0x01F9

data_CE31FF0:
#data 0x0130

data_CE31FF2:
#data 0x01A3
#align4

ptr_CE31FF4_to_code_CE34930:
#data code_CE34930

ptr_CE31FF8_to_code_CE348A0:
#data code_CE348A0

data_CE31FFC:
#data 0xC1555555

data_CE32000:
#data 0x3ED55555

data_CE32004:
#data 0x41555555

data_CE32008:
#data 0xBED55555

data_CE3200C:
#data 0x414DB6DB

data_CE32010:
#data 0xBF092492

ptr_CE32014_to_ptr_CE34E24_to_code_CE31F94:
#data ptr_CE34E24_to_code_CE31F94

ptr_CE32018_to_code_CE34980:
#data code_CE34980

ptr_CE3201C_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE32020_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE32024_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE32028_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE3202C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32174_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE3216C,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE32090
mov.b @(0x06,r14),r0
mov.l @(ptr_CE32178_to_extern_8C053082,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(data_CE3217C,pc),r1
mov 0x38,r0
fmov.s @(r0,r14),fr2
lds r1,fpul
mov.l @(ptr_CE32180_to_data_CE34E38,pc),r4
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(data_CE3216E,pc),r0
mov.b @(r0,r14),r3
add 0x8D,r0
mov.w @(r0,r14),r2
extu.b r3,r3
shll2 r3
tst r2,r2
add r4,r3
bt/s code_CE32070
fmov.s @r3,fr4
fneg fr4

code_CE32070:
mov 0x5C,r0
fldi0 fr3
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE3216E,pc),r0
mov.b @(r0,r14),r3
mov 0x0C,r0
extu.b r3,r3
shll2 r3
add r3,r4
fmov.s @(r0,r4),fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)

code_CE32090:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32096:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32174_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov 0x5C,r1
mov.l @(ptr_CE32184_to_extern_8C052CE2,pc),r3
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
bt code_CE32126
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mov.w @(data_CE3216E,pc),r0
mov.b @(r0,r14),r3
mov.l @(ptr_CE32188_to_data_CE34E50,pc),r0
extu.b r3,r3
shll2 r3
fmov.s @(r0,r3),fr4
mov.w @(data_CE32170,pc),r0
mov.w @(r0,r14),r2
tst r2,r2
bt/s code_CE3210C
mov 0x68,r0
fneg fr4

code_CE3210C:
fmov.s fr4,@(r0,r14)
mov.w @(data_CE3216E,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt/s code_CE3211A
mov 0x22,r6
mov 0x31,r6

code_CE3211A:
lds.l @r15+,pr
mov.l @(ptr_CE3218C_to_extern_8C034E8C,pc),r3
mov 0x15,r5
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE32126:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3212C:
mov 0x5C,r1
add r4,r1
mov 0x34,r0
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x68,r1
add r4,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x5C,r0
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x68,r0
fmov.s @(r0,r4),fr3
mov 0x5C,r0
fmov.s @(r0,r4),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr3,fr2
bf code_CE32168
mov.b @(0x06,r4),r0
fmov fr3,fr4
add 0x01,r0
mov.b r0,@(0x06,r4)
mov 0x5C,r0
fmov.s fr4,@(r0,r4)
mov 0x68,r0
fmov.s fr4,@(r0,r4)

code_CE32168:
rts
nop
;-------------------------------------------------------------------------------

data_CE3216C:
#data 0x0141

data_CE3216E:
#data 0x01A3

data_CE32170:
#data 0x0130
#align4

ptr_CE32174_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE32178_to_extern_8C053082:
#data extern_8C053082

data_CE3217C:
#data 0x42092492

ptr_CE32180_to_data_CE34E38:
#data data_CE34E38

ptr_CE32184_to_extern_8C052CE2:
#data extern_8C052CE2

ptr_CE32188_to_data_CE34E50:
#data data_CE34E50

ptr_CE3218C_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE32190:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE322D0_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE321AA
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE322D4_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE321AA:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE321B2:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE322D8_to_ptr_CE34E5C_to_code_CE321D0,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE322DC_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE321D0:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE322E0_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE322E4_to_extern_8C05115A,pc),r2
jsr @r2
mov r14,r4
mov.l @(ptr_CE322E8_to_extern_8C056DE4,pc),r3
mov 0x05,r5
jsr @r3
mov r14,r4
mov.l @(ptr_CE322EC_to_code_CE3495C,pc),r2
jsr @r2
mov r14,r4
mov 0x02,r0
mov.l @(ptr_CE322F0_to_data_CE34E74,pc),r1
mov.w r0,@(0x1C,r14)
mov 0x00,r4
mov.w @(data_CE322C8,pc),r0
mov 0x62,r3
mov.b @(r0,r14),r0
extu.b r0,r0
shll r0
mov.w @(r0,r1),r0
mov.w r0,@(0x1E,r14)
mov 0x20,r0
mov.b r4,@(r0,r14)
mov 0x21,r0
mov.b r4,@(r0,r14)
mov.w @(data_CE322CA,pc),r0
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE322F4_to_extern_8C2896B0,pc),r3
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.w @(data_CE322C8,pc),r0
mov.b @(r0,r14),r2
mov.l @(ptr_CE322F8_to_data_CE34E68,pc),r0
extu.b r2,r2
shll2 r2
fmov.s @(r0,r2),fr4
mov.w @(data_CE322CC,pc),r0
mov.w @(r0,r14),r1
tst r1,r1
bt/s code_CE3224E
mov 0x5C,r0
fneg fr4

code_CE3224E:
mov.l @(ptr_CE322FC_to_extern_8C034E8C,pc),r3
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x25,r6
lds.l @r15+,pr
mov 0x15,r5
jmp @r3
mov.l @r15+,r14

code_CE3225E:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1
mov.l r13,@-r15
add r14,r1
mov.l @(ptr_CE322D0_to_extern_8C034DEE,pc),r3
mov 0x34,r0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
mov 0x00,r13
fmov.s @r1,fr3
mov 0x68,r1
add r14,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE32324
mov 0x20,r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE322B2
mov.w @(0x1E,r14),r0
add 0xFF,r0
mov.w r0,@(0x1E,r14)
exts.w r0,r0
cmp/pz r0
bf code_CE322AA
mov.w @(0x1C,r14),r0
add 0x01,r0
mov.w r0,@(0x1C,r14)

code_CE322AA:
mov 0x20,r0
mov.b r13,@(r0,r14)
mov.w @(data_CE322CE,pc),r0
mov.w r13,@(r0,r14)

code_CE322B2:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE32300
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
bra code_CE32316
mov 0x35,r6

data_CE322C8:
#data 0x01A3

data_CE322CA:
#data 0x01A1

data_CE322CC:
#data 0x0130

data_CE322CE:
#data 0x0352
#align4

ptr_CE322D0_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE322D4_to_code_CE348A0:
#data code_CE348A0

ptr_CE322D8_to_ptr_CE34E5C_to_code_CE321D0:
#data ptr_CE34E5C_to_code_CE321D0

ptr_CE322DC_to_code_CE34980:
#data code_CE34980

ptr_CE322E0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE322E4_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE322E8_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE322EC_to_code_CE3495C:
#data code_CE3495C

ptr_CE322F0_to_data_CE34E74:
#data data_CE34E74

ptr_CE322F4_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE322F8_to_data_CE34E68:
#data data_CE34E68

ptr_CE322FC_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE32300:
mov 0x21,r0
mov.b @(r0,r14),r2
mov 0x01,r3
xor r3,r2
mov.b r2,@(r0,r14)
mov.b @(r0,r14),r6
mov.w @(0x1C,r14),r0
cmp/eq 0x01,r0
bf/s code_CE32316
add 0x25,r6
add 0x03,r6

code_CE32316:
lds.l @r15+,pr
mov.l @(ptr_CE32428_to_extern_8C034E8C,pc),r3
mov r14,r4
mov 0x15,r5
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE32324:
mov.w @(data_CE3241E,pc),r3
mov.w @(data_CE3241C,pc),r0
add r14,r3
mov.w @r3,r3
mov.w @(r0,r14),r0
extu.w r3,r3
extu.w r0,r0
or r3,r0
tst 0x60,r0
bt code_CE3233E
mov 0x20,r0
mov 0x01,r3
mov.b r3,@(r0,r14)

code_CE3233E:
mov.w @(data_CE32420,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE3236C
mov.w @(data_CE32422,pc),r0
mov.l @(ptr_CE3242C_to_extern_8C0C1F90,pc),r3
mov.b @(r0,r14),r6
add 0xF6,r0
mov.b @(r0,r14),r5
extu.b r6,r6
jsr @r3
mov r14,r4
mov.w @(data_CE32422,pc),r0
mov.l @(ptr_CE3242C_to_extern_8C0C1F90,pc),r3
mov.b @(r0,r14),r6
add 0xF6,r0
mov.b @(r0,r14),r5
extu.b r6,r6
add 0xFF,r5
jsr @r3
mov r14,r4
mov.w @(data_CE32420,pc),r0
mov.b r13,@(r0,r14)

code_CE3236C:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32374:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE32430_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE3238E
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE32434_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE3238E:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE32396:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
tst r0,r0
bf code_CE323C0
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x14,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x16,r6
mov.w @(data_CE32424,pc),r0
mov.b r3,@(r0,r14)
mov 0x3C,r0
mov.l @(ptr_CE32428_to_extern_8C034E8C,pc),r3
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
bra code_CE323F4
nop

code_CE323C0:
mov.l @(ptr_CE32430_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE32420,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE323E2
mov 0x00,r3
mov.b r3,@(r0,r14)
mova @(data_CE32438,pc),r0
fmov.s @r0,fr5
mova @(data_CE3243C,pc),r0
mov r3,r5
mov.l @(ptr_CE32440_to_extern_8C06CFFC,pc),r3
fmov.s @r0,fr4
jsr @r3
mov r14,r4

code_CE323E2:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bf code_CE323F4
mov.l @(ptr_CE32434_to_code_CE348A0,pc),r2
jsr @r2
mov r14,r4

code_CE323F4:
lds.l @r15+,pr
mov.l @(ptr_CE32444_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE323FE:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE32448_to_ptr_CE34E7C_to_code_CE3244C,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE32444_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

data_CE3241C:
#data 0x0348

data_CE3241E:
#data 0x0352

data_CE32420:
#data 0x0141

data_CE32422:
#data 0x014B

data_CE32424:
#data 0x01F9
#align4

ptr_CE32428_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE3242C_to_extern_8C0C1F90:
#data extern_8C0C1F90

ptr_CE32430_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE32434_to_code_CE348A0:
#data code_CE348A0

data_CE32438:
#data 0x42BE0000

data_CE3243C:
#data 0xC2080000

ptr_CE32440_to_extern_8C06CFFC:
#data extern_8C06CFFC

ptr_CE32444_to_code_CE34980:
#data code_CE34980

ptr_CE32448_to_ptr_CE34E7C_to_code_CE3244C:
#data ptr_CE34E7C_to_code_CE3244C


code_CE3244C:
mov.w @(data_CE32556,pc),r0
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE32468
mov.w @(data_CE3255A,pc),r0
mov 0x10,r3
mov.w @(data_CE32558,pc),r2
mov.b r2,@(r0,r14)
add 0x01,r0
mov.b r3,@(r0,r14)

code_CE32468:
mov.b @(0x06,r14),r0
mov.l @(ptr_CE3256C_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE3255C,pc),r0
mov 0x00,r2
mov.l @(ptr_CE32570_to_extern_8C05115A,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE3255E,pc),r0
mov r14,r4
mov.w @(data_CE32558,pc),r2
mov 0x00,r6
mov.l @(ptr_CE32574_to_extern_8C034E8C,pc),r3
mov 0x16,r5
mov.l r2,@(r0,r14)
mov.w @(data_CE32560,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE3249C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE32562,pc),r0
mov r4,r14
mov 0x02,r3
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE32564,pc),r0
mov.b r2,@(r0,r14)
mov.w @(data_CE32556,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE324BE
bra code_CE324C0
mov 0x02,r3

code_CE324BE:
mov 0x00,r3

code_CE324C0:
mov.w @(data_CE32566,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE32578_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE324F8
mov.w @(data_CE3255A,pc),r0
mov 0x00,r4
mov.l @(ptr_CE32584_to_extern_8C050834,pc),r3
mov r15,r5
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
mov 0x01,r6
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE3257C,pc),r0
fmov.s @r0,fr3
mova @(data_CE32580,pc),r0
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE324F8:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32500:
mov.w @(data_CE32562,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x16,r5
mov.w @(data_CE32564,pc),r0
mov 0x01,r6
mov.l @(ptr_CE32574_to_extern_8C034E8C,pc),r3
mov.b r2,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov 0x18,r0
fldi0 fr4
mov.w r0,@(0x1C,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE32588,pc),r0
fmov.s @r0,fr4
mova @(data_CE3258C,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE32568,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE32548
mova @(data_CE32590,pc),r0
fmov.s @r0,fr4
mova @(data_CE32594,pc),r0
fmov.s @r0,fr5

code_CE32548:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE32556:
#data 0x0255

data_CE32558:
#data 0x00FF

data_CE3255A:
#data 0x03F0

data_CE3255C:
#data 0x01F9

data_CE3255E:
#data 0x02BC

data_CE32560:
#data 0x041C

data_CE32562:
#data 0x03F8

data_CE32564:
#data 0x0328

data_CE32566:
#data 0x03F1

data_CE32568:
#data 0x01D2
#align4

ptr_CE3256C_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE32570_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE32574_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE32578_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE3257C:
#data 0xC1E2AAAA

data_CE32580:
#data 0x432D9249

ptr_CE32584_to_extern_8C050834:
#data extern_8C050834

data_CE32588:
#data 0xC1D55555

data_CE3258C:
#data 0x3ED55555

data_CE32590:
#data 0x41D55555

data_CE32594:
#data 0xBED55555


code_CE32598:
mov.w @(data_CE32696,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x05,r2
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE32698,pc),r0
mov.l @(ptr_CE326A8_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE3269A,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE325F2
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

code_CE325F2:
mov.w @(data_CE3269C,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE3260A
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bt code_CE3265A
bra code_CE3268E
nop

code_CE3260A:
mov.w @(data_CE3269E,pc),r0
mov.l @(ptr_CE326AC_to_extern_8C05264C,pc),r3
mov.l @(r0,r14),r13
jsr @r3
mov r14,r4
tst r0,r0
bt code_CE3265A
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE326B0,pc),r0
fmov.s @r0,fr4
mova @(data_CE326B4,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE326A0,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE32636
mova @(data_CE326B8,pc),r0
fmov.s @r0,fr4
mova @(data_CE326BC,pc),r0
fmov.s @r0,fr5

code_CE32636:
mov 0x5C,r0
fldi0 fr3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mov 0x00,r3
mov.w @(data_CE326A2,pc),r0
mov.b r3,@(r0,r13)
mov.w @(data_CE326A4,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r13)
mov 0x34,r0
fmov.s @(r0,r14),fr3
fsub fr5,fr3
fmov.s fr3,@(r0,r13)
bra code_CE32680
mov 0x03,r6

code_CE3265A:
mov 0x06,r0
mov.b r0,@(0x06,r14)
mova @(data_CE326C0,pc),r0
fmov.s @r0,fr4
mova @(data_CE326C4,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE326A0,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE32676
mova @(data_CE326C8,pc),r0
fmov.s @r0,fr4
mova @(data_CE326CC,pc),r0
fmov.s @r0,fr5

code_CE32676:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
mov 0x02,r6
fmov.s fr5,@(r0,r14)

code_CE32680:
lds.l @r15+,pr
mov.l @(ptr_CE326D0_to_extern_8C034E8C,pc),r3
mov r14,r4
mov 0x16,r5
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE3268E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE32696:
#data 0x03F8

data_CE32698:
#data 0x0328

data_CE3269A:
#data 0x0141

data_CE3269C:
#data 0x019E

data_CE3269E:
#data 0x01B0

data_CE326A0:
#data 0x01D2

data_CE326A2:
#data 0x01F9

data_CE326A4:
#data 0x041C
#align4

ptr_CE326A8_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE326AC_to_extern_8C05264C:
#data extern_8C05264C

data_CE326B0:
#data 0xC0555555

data_CE326B4:
#data 0x42D55555

data_CE326B8:
#data 0x40555555

data_CE326BC:
#data 0xC2D55555

data_CE326C0:
#data 0xC1855555

data_CE326C4:
#data 0x3F055555

data_CE326C8:
#data 0x41855555

data_CE326CC:
#data 0xBF055555

ptr_CE326D0_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE326D4:
mov.w @(data_CE32770,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2
mov 0x5C,r1
add r14,r1
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE32772,pc),r0
mov.b r2,@(r0,r14)
mov 0x34,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0
add r14,r1
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov.l @(ptr_CE32774_to_extern_8C034DEE,pc),r3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE3276A
mov.l @(ptr_CE32778_to_extern_8C05264C,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt/s code_CE3275A
mov 0x16,r5
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE3277C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mov 0x12,r0
mov.w r0,@(0x1C,r14)
bra code_CE32760
mov 0x04,r6

code_CE3275A:
mov 0x06,r0
mov 0x02,r6
mov.b r0,@(0x06,r14)

code_CE32760:
lds.l @r15+,pr
mov.l @(ptr_CE32780_to_extern_8C034E8C,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE3276A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE32770:
#data 0x03F8

data_CE32772:
#data 0x0328
#align4

ptr_CE32774_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE32778_to_extern_8C05264C:
#data extern_8C05264C

data_CE3277C:
#data 0x42092492

ptr_CE32780_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE32784:
mov.w @(data_CE328A6,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x05,r2
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE328A8,pc),r0
mov.l @(ptr_CE328B8_to_extern_8C034DEE,pc),r3
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
bf code_CE32858
mov 0x07,r0
fldi0 fr4
mov.b r0,@(0x06,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mov 0x02,r3
mov.w @(data_CE328AA,pc),r0
mov.w @(data_CE328AC,pc),r1;2a8
mov.b r3,@(r0,r14)
add 0xB7,r0
mov.l @(r0,r14),r13
add r14,r1
mov.l @(ptr_CE328BC_to_code_CE34580,pc),r3
mov.b @(0x01,r13),r0
mov r13,r5
extu.b r0,r0
mov.l r0,@r1
jsr @r3
mov r14,r4
mov.w @(data_CE328B0,pc),r0
mov r13,r5
mov.w @(data_CE328AE,pc),r2
mov.l @(ptr_CE328C0_to_extern_8C0523D8,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE328C4_to_extern_8C04223A,pc),r2
mov 0x23,r5
jsr @r2
mov r14,r4
mov.l @(ptr_CE328C8_to_extern_8C02FEC4,pc),r3
mov 0x05,r6
mov r6,r5
jsr @r3
mov r14,r4
mov.w @(data_CE328B2,pc),r0
mov 0x0A,r2
mov.l @(data_CE328CC,pc),r1
mov 0x00,r6
mov.b r2,@(r0,r14)
add 0x28,r0
lds r1,fpul
mov 0x0F,r5
mov.l @(r0,r14),r4
mov 0x38,r0
mov.l @(ptr_CE328D0_to_extern_8C034E8C,pc),r3
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x40,r0
mov r14,r4
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE32858:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32860:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE328B8_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bf code_CE32896
mov.w @(data_CE328B4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE328A0
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
fadd fr3,fr2
bra code_CE328A0
fmov.s fr2,@(r0,r14)

code_CE32896:
lds.l @r15+,pr
mov.l @(ptr_CE328D4_to_code_CE348A0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE328A0:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE328A6:
#data 0x03F8

data_CE328A8:
#data 0x0328

data_CE328AA:
#data 0x01F9

data_CE328AC:
#data 0x02A8

data_CE328AE:
#data 0x00C0

data_CE328B0:
#data 0x01F7

data_CE328B2:
#data 0x01A0

data_CE328B4:
#data 0x0141
#align4

ptr_CE328B8_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE328BC_to_code_CE34580:
#data code_CE34580

ptr_CE328C0_to_extern_8C0523D8:
#data extern_8C0523D8

ptr_CE328C4_to_extern_8C04223A:
#data extern_8C04223A

ptr_CE328C8_to_extern_8C02FEC4:
#data extern_8C02FEC4

data_CE328CC:
#data 0x424DB6DB

ptr_CE328D0_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE328D4_to_code_CE348A0:
#data code_CE348A0


code_CE328D8:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE329BC,pc),r0
mov 0x05,r3
mov.l r13,@-r15
mov 0x02,r13
sts.l pr,@-r15
mov.b r13,@(r0,r14)
mov.w @(data_CE329BE,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE329CC_to_code_CE3485C,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE329C0,pc),r0
mov 0x01,r2
mov.l @(ptr_CE329D0_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
add 0x03,r0
mov.b r13,@(r0,r14)
add 0x08,r0
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE329C2,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE32926
mov.b @(0x06,r14),r0
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE329C2,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE329C4,pc),r0
mov.w @(data_CE329C6,pc),r3
mov.l @(r0,r14),r4
add 0x2F,r0
mov.b r3,@(r0,r4)
mov.b r3,@(r0,r14)

code_CE32926:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3292E:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE329BC,pc),r0
mov 0x05,r3
mov.l r13,@-r15
mov 0x02,r13
sts.l pr,@-r15
mov.b r13,@(r0,r14)
mov.w @(data_CE329BE,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE329CC_to_code_CE3485C,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE329C0,pc),r0
mov 0x01,r2
mov.l @(ptr_CE329D0_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
add 0x03,r0
mov.b r13,@(r0,r14)
add 0x08,r0
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bf code_CE3297E
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE329D4_to_extern_8C034E8C,pc),r3
mov 0x01,r6
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x0F,r5
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE3297E:
mov.w @(data_CE329C8,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE3299A
mov 0x00,r3
mov.b r3,@(r0,r14)
mova @(data_CE329D8,pc),r0
fmov.s @r0,fr5
mova @(data_CE329DC,pc),r0
mov.l @(ptr_CE329E0_to_extern_8C06CFFC,pc),r3
mov 0x02,r5
fmov.s @r0,fr4
jsr @r3
mov r14,r4

code_CE3299A:
mov.w @(data_CE329C2,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE329B4
mov 0x00,r3
mov r14,r4
mov.b r3,@(r0,r14)
mov 0x16,r5
lds.l @r15+,pr
mov.l @(ptr_CE329E4_to_extern_8C042008,pc),r3
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE329B4:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE329BC:
#data 0x03F8

data_CE329BE:
#data 0x0328

data_CE329C0:
#data 0x01EA

data_CE329C2:
#data 0x0141

data_CE329C4:
#data 0x01C8

data_CE329C6:
#data 0x00C3

data_CE329C8:
#data 0x0140
#align4

ptr_CE329CC_to_code_CE3485C:
#data code_CE3485C

ptr_CE329D0_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE329D4_to_extern_8C034E8C:
#data extern_8C034E8C

data_CE329D8:
#data 0x42C80000

data_CE329DC:
#data 0x41E80000

ptr_CE329E0_to_extern_8C06CFFC:
#data extern_8C06CFFC

ptr_CE329E4_to_extern_8C042008:
#data extern_8C042008


code_CE329E8:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE32B2A,pc),r0
mov 0x05,r3
mov.l r13,@-r15
mov 0x02,r13
sts.l pr,@-r15
mov.b r13,@(r0,r14)
mov.w @(data_CE32B2C,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE32B40_to_code_CE3485C,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE32B2E,pc),r0
mov 0x01,r2
mov.l @(ptr_CE32B44_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
add 0x03,r0
mov.b r13,@(r0,r14)
add 0x08,r0
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE32B30,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE32A94
mov.w @(data_CE32B32,pc),r0
mov 0x00,r5
mov 0x01,r3
mov.b r5,@(r0,r14)
add 0xFF,r0
mov.b r5,@(r0,r14)
mov 0x24,r2
mov.w @(data_CE32B34,pc),r0
mov.b r5,@(r0,r14)
add 0x01,r0
mov.b r5,@(r0,r14)
mov.w @(data_CE32B36,pc),r0
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
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32B30,pc),r0
mov.b r5,@(r0,r14)
mov.w @(data_CE32B38,pc),r0
mov.b @(r0,r14),r2
xor r3,r2
fldi0 fr4
mov.b r2,@(r0,r14)
mov.w @(data_CE32B3A,pc),r0
mov.l @(ptr_CE32B4C_to_extern_8C02FD26,pc),r2
mov.w @(r0,r14),r1
xor r3,r1
mov.w r1,@(r0,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mova @(data_CE32B48,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
jsr @r2
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
mov.l @(ptr_CE32B50_to_code_CE34834,pc),r3
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE32A94:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32A9C:
mov.w @(data_CE32B2A,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE32B2C,pc),r0
mov.l @(ptr_CE32B40_to_code_CE3485C,pc),r3
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
mov.w @(data_CE32B3C,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf code_CE32B02
lds.l @r15+,pr
mov.l @(ptr_CE32B44_to_extern_8C034DEE,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE32B02:
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x0F,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x02,r6
mov.w @(data_CE32B3C,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE32B3E,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE32B54_to_extern_8C034E8C,pc),r3
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE32B58_to_code_CE34930,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

data_CE32B2A:
#data 0x03F8

data_CE32B2C:
#data 0x0328

data_CE32B2E:
#data 0x01EA

data_CE32B30:
#data 0x0141

data_CE32B32:
#data 0x03F9

data_CE32B34:
#data 0x0327

data_CE32B36:
#data 0x01C8

data_CE32B38:
#data 0x01D2

data_CE32B3A:
#data 0x0130

data_CE32B3C:
#data 0x041C

data_CE32B3E:
#data 0x01F9
#align4

ptr_CE32B40_to_code_CE3485C:
#data code_CE3485C

ptr_CE32B44_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE32B48:
#data 0xBF4DB6DB

ptr_CE32B4C_to_extern_8C02FD26:
#data extern_8C02FD26

ptr_CE32B50_to_code_CE34834:
#data code_CE34834

ptr_CE32B54_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE32B58_to_code_CE34930:
#data code_CE34930


code_CE32B5C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32C80_to_code_CE3485C,pc),r3
jsr @r3
mov r4,r14
mov.l @(ptr_CE32C84_to_extern_8C034DEE,pc),r2
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE32B7C
lds.l @r15+,pr
mov.l @(ptr_CE32C88_to_code_CE348A0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE32B7C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32B82:
mov.l @(ptr_CE32C88_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE32B88:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE32C8C_to_ptr_CE34EAC_to_code_CE32BA6,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE32C90_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE32BA6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE32C94_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE32C98_to_extern_8C05115A,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE32C74,pc),r0
mov 0x30,r3
mov 0x00,r13
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r13,@(r0,r14)
add 0xF2,r0
mov.b r13,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE32C9C_to_extern_8C2896B0,pc),r3
mov 0x10,r5
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE32CA0_to_extern_8C056DE4,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE32C76,pc),r0
mov.w @(data_CE32C78,pc),r2
mov.b @(r0,r14),r4
mov.l @(ptr_CE32CA4_to_data_CE34EDC,pc),r0
add r14,r2
extu.b r4,r4
fldi0 fr4
shll r4
shll r4
mov.w @(r0,r4),r3
mov r4,r5
mov.l @(ptr_CE32CA8_to_data_CE34EE2,pc),r0
extu.w r3,r3
mov.l r3,@r2
mov 0x1E,r2
mov.w @(r0,r5),r3
add r14,r2
mov.w @(data_CE32C7A,pc),r0
mov.w r3,@r2
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.w @(data_CE32C7C,pc),r0
mov.b r13,@(r0,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov.w @(data_CE32C76,pc),r0
mov.b @(r0,r14),r4
extu.b r4,r4
shll2 r4
mov.l @(ptr_CE32CAC_to_data_CE34EC4,pc),r3
shll2 r4
mov 0x60,r0
mov.l @(ptr_CE32CB0_to_extern_8C034E8C,pc),r2
add r3,r4
fmov.s @r4+,fr3
mov 0x2C,r6
mov 0x15,r5
fmov.s fr3,@(r0,r14)
mov 0x6C,r0
fmov.s @r4,fr3
mov r14,r4
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

code_CE32C50:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32C84_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE32C7E,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE32C6E
mov.b @(0x06,r14),r0
mov 0x02,r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32C7C,pc),r0
mov.b r3,@(r0,r14)

code_CE32C6E:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE32C74:
#data 0x01A1

data_CE32C76:
#data 0x01A3

data_CE32C78:
#data 0x02CC

data_CE32C7A:
#data 0x041C

data_CE32C7C:
#data 0x01F9

data_CE32C7E:
#data 0x0141
#align4

ptr_CE32C80_to_code_CE3485C:
#data code_CE3485C

ptr_CE32C84_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE32C88_to_code_CE348A0:
#data code_CE348A0

ptr_CE32C8C_to_ptr_CE34EAC_to_code_CE32BA6:
#data ptr_CE34EAC_to_code_CE32BA6

ptr_CE32C90_to_code_CE34980:
#data code_CE34980

ptr_CE32C94_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE32C98_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE32C9C_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE32CA0_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE32CA4_to_data_CE34EDC:
#data data_CE34EDC

ptr_CE32CA8_to_data_CE34EE2:
#data data_CE34EE2

ptr_CE32CAC_to_data_CE34EC4:
#data data_CE34EC4

ptr_CE32CB0_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE32CB4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32DC0_to_extern_8C034DEE,pc),r3
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
fmov.s fr2,@(r0,r14)
mov 0x60,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(0x1E,r14),r0
mov r0,r3
lds r3,fpul
mov.w @(data_CE32DB4,pc),r0
float fpul,fr3
fmov.s @(r0,r14),fr2
mova @(data_CE32DC4,pc),r0
fmov.s @r0,fr0
mov 0x38,r0
fmac fr0,fr3,fr2
fmov.s @(r0,r14),fr3
fcmp/gt fr2,fr3
bf code_CE32D18
mov.w @(data_CE32DB6,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE32D0E
mov.w @(data_CE32DB8,pc),r0
mov.w @(r0,r14),r3
mov.w @(data_CE32DBA,pc),r0
extu.w r3,r3
mov.l @(r0,r14),r2
tst r2,r3
bf code_CE32D22
bra code_CE32D18
nop

code_CE32D0E:
mov.l @(ptr_CE32DC8_to_extern_8C055D54,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bf code_CE32D22

code_CE32D18:
mov 0x60,r0
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt code_CE32D46

code_CE32D22:
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE32DCC_to_data_CE34EE8,pc),r1
mov 0x2D,r6
add 0x01,r0
mov.l @(ptr_CE32DD0_to_extern_8C034E8C,pc),r3
mov.b r0,@(0x06,r14)
mov 0x15,r5
mov.w @(data_CE32DBC,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
shll r0
shll r0
mov.w @(r0,r1),r0
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE32D46:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32D4C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32DC0_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
tst r0,r0
bf code_CE32DAE
mov.b @(0x06,r14),r0
mov.l @(ptr_CE32DD4_to_data_CE34EF0,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32DBC,pc),r0
mov.b @(r0,r14),r4
add 0x8D,r0
mov.w @(r0,r14),r2
extu.b r4,r4
shll2 r4
shll2 r4
tst r2,r2
add r3,r4
bf/s code_CE32D82
fmov.s @r4+,fr4
fneg fr4

code_CE32D82:
mov 0x5C,r0
mov.l @(ptr_CE32DD0_to_extern_8C034E8C,pc),r3
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s @r4,fr3
mov 0x15,r5
mov 0x2E,r6
fmov.s fr3,@(r0,r14)
mov 0x6C,r0
fldi0 fr3
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE32DBE,pc),r0
mov 0x04,r2
mov.l @(ptr_CE32DD8_to_extern_8C0C1D30,pc),r3
mov r14,r4
mov.l r2,@(r0,r14)
mov 0x01,r5
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE32DAE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE32DB4:
#data 0x041C

data_CE32DB6:
#data 0x0525

data_CE32DB8:
#data 0x034E

data_CE32DBA:
#data 0x02CC

data_CE32DBC:
#data 0x01A3

data_CE32DBE:
#data 0x02C8
#align4

ptr_CE32DC0_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE32DC4:
#data 0x40092492

ptr_CE32DC8_to_extern_8C055D54:
#data extern_8C055D54

ptr_CE32DCC_to_data_CE34EE8:
#data data_CE34EE8

ptr_CE32DD0_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE32DD4_to_data_CE34EF0:
#data data_CE34EF0

ptr_CE32DD8_to_extern_8C0C1D30:
#data extern_8C0C1D30


code_CE32DDC:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE32F38_to_extern_8C034DEE,pc),r3
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
mov.w @(data_CE32F26,pc),r0
mov.l r3,@(r0,r14)
mov.w @(data_CE32F28,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt code_CE32E58
mov.b @(0x06,r14),r0
mov 0x00,r3
mov 0x15,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x2F,r6
mov.w @(data_CE32F2A,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE32F28,pc),r0
mov.l @(ptr_CE32F3C_to_extern_8C034E8C,pc),r3
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE32F40_to_code_CE34930,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE32E58:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32E5E:
mov.w @(data_CE32F26,pc),r0
mov 0x04,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l r3,@(r0,r14)
mov.l @(ptr_CE32F38_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE32E86
mov.w @(data_CE32F26,pc),r0
mov 0x00,r3
mov r14,r4
mov.l r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(ptr_CE32F44_to_code_CE348A0,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE32E86:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE32E8C:
mov r4,r3
mov.l @(ptr_CE32F48_to_ptr_CE34F08_to_code_CE32E9E,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE32E9E:
mov.w @(data_CE32F2C,pc),r0
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE32EBA
mov.w @(data_CE32F30,pc),r0
mov 0x10,r3
mov.w @(data_CE32F2E,pc),r2
mov.b r2,@(r0,r14)
add 0x01,r0
mov.b r3,@(r0,r14)

code_CE32EBA:
mov.b @(0x06,r14),r0
mov 0x00,r3
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
mov.w @(data_CE32F2A,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE32F4C_to_extern_8C05115A,pc),r3
jsr @r3
mov r14,r4
mov 0x20,r0
mov.w r0,@(0x1C,r14)
mov 0x06,r0
mov.w r0,@(0x1E,r14)
mova @(data_CE32F50,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE32F32,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt code_CE32EF6
mova @(data_CE32F54,pc),r0
fmov.s @r0,fr4

code_CE32EF6:
mov.l @(ptr_CE32F3C_to_extern_8C034E8C,pc),r3
mov 0x5C,r0
mov r14,r4
fmov.s fr4,@(r0,r14)
lds.l @r15+,pr
mov 0x05,r6
mov 0x16,r5
jmp @r3
mov.l @r15+,r14

code_CE32F08:
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE32F34,pc),r0
mov 0x02,r3
mov 0x05,r2
mov.b r3,@(r0,r4)
mov.w @(data_CE32F36,pc),r0
mov.b r2,@(r0,r4)
mov.w @(data_CE32F2C,pc),r0
mov.b @(r0,r4),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE32F58
bra code_CE32F5A
mov 0x02,r3

data_CE32F26:
#data 0x02C8

data_CE32F28:
#data 0x041C

data_CE32F2A:
#data 0x01F9

data_CE32F2C:
#data 0x0255

data_CE32F2E:
#data 0x00FF

data_CE32F30:
#data 0x03F0

data_CE32F32:
#data 0x0130

data_CE32F34:
#data 0x03F8

data_CE32F36:
#data 0x0328
#align4

ptr_CE32F38_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE32F3C_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE32F40_to_code_CE34930:
#data code_CE34930

ptr_CE32F44_to_code_CE348A0:
#data code_CE348A0

ptr_CE32F48_to_ptr_CE34F08_to_code_CE32E9E:
#data ptr_CE34F08_to_code_CE32E9E

ptr_CE32F4C_to_extern_8C05115A:
#data extern_8C05115A

data_CE32F50:
#data 0xC0BAAAAA

data_CE32F54:
#data 0x40BAAAAA


code_CE32F58:
mov 0x00,r3

code_CE32F5A:
mov.w @(data_CE3305E,pc),r0
mov.b r3,@(r0,r4)
mov.w @(data_CE33060,pc),r0
mov.b @(r0,r4),r2
tst r2,r2
bf code_CE32F70
mov.l @(ptr_CE33074_to_extern_8C034DEE,pc),r3
jsr @r3
nop
bra code_CE32F9A
nop

code_CE32F70:
mov.w @(data_CE33062,pc),r0
mov 0x00,r5
mov.l @(ptr_CE33080_to_extern_8C050834,pc),r3
mov 0x03,r6
mov.b r5,@(r0,r4)
add 0x01,r0
mov.b r5,@(r0,r4)
mov.b @(0x06,r4),r0
add 0x01,r0
mov.b r0,@(0x06,r4)
mov.w @(data_CE33060,pc),r0
mov.b r5,@(r0,r4)
mova @(data_CE33078,pc),r0
fmov.s @r0,fr3
mova @(data_CE3307C,pc),r0
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r15,r5

code_CE32F9A:
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE32FA2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE33064,pc),r0
mov 0x02,r3
mov r4,r14
mov 0x05,r2
mov.b r3,@(r0,r14)
mov 0x5C,r1
mov.w @(data_CE33066,pc),r0
add r14,r1
mov 0x01,r4
mov.b r2,@(r0,r14)
mov 0x34,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x68,r1
add r14,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov r4,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(data_CE33068,pc),r0
mov.b @(r0,r14),r3
add 0xD5,r0
mov.b @(r0,r14),r2
extu.b r2,r2
xor r4,r2
shad r2, r1
tst r1,r3
bf code_CE32FF4
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE33010

code_CE32FF4:
mov.w @(data_CE3306A,pc),r0
mov 0x00,r4
mov.l @(ptr_CE33084_to_code_CE348A0,pc),r3
mov.b r4,@(r0,r14)
add 0xFF,r0
mov.b r4,@(r0,r14)
mov.w @(data_CE3306C,pc),r0
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
jsr @r3
mov r14,r4
bra code_CE33056
nop

code_CE33010:
mov.w @(0x1E,r14),r0
tst r0,r0
bt code_CE3301E
mov.w @(0x1E,r14),r0
add 0xFF,r0
bra code_CE33056
mov.w r0,@(0x1E,r14)

code_CE3301E:
mov.l @(ptr_CE33088_to_extern_8C045790,pc),r2
jsr @r2
mov r14,r4
tst r0,r0
bt/s code_CE33056
mov r0,r5
mov.b @(0x06,r14),r0
mov.w @(data_CE3306E,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE33070,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE3308C_to_extern_8C0523D8,pc),r3
jsr @r3
mov r14,r4
bsr code_CE33E7E
mov r14,r4
mova @(data_CE33090,pc),r0
mov.l @(ptr_CE33098_to_extern_8C103660,pc),r3
fmov.s @r0,fr3
mova @(data_CE33094,pc),r0
mov r15,r5
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE33056:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE3305E:
#data 0x03F1

data_CE33060:
#data 0x0141

data_CE33062:
#data 0x03F0

data_CE33064:
#data 0x03F8

data_CE33066:
#data 0x0328

data_CE33068:
#data 0x01FD

data_CE3306A:
#data 0x03F9

data_CE3306C:
#data 0x0327

data_CE3306E:
#data 0x00C4

data_CE33070:
#data 0x01F7
#align4

ptr_CE33074_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE33078:
#data 0xC13AAAAA

data_CE3307C:
#data 0x43452492

ptr_CE33080_to_extern_8C050834:
#data extern_8C050834

ptr_CE33084_to_code_CE348A0:
#data code_CE348A0

ptr_CE33088_to_extern_8C045790:
#data extern_8C045790

ptr_CE3308C_to_extern_8C0523D8:
#data extern_8C0523D8

data_CE33090:
#data 0xC2A6AAAA

data_CE33094:
#data 0x431E9249

ptr_CE33098_to_extern_8C103660:
#data extern_8C103660


code_CE3309C:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE331EC,pc),r0
mov 0x05,r3
mov.l r13,@-r15
mov 0x02,r13
mov 0x01,r2
sts.l pr,@-r15
mov.b r13,@(r0,r14)
mov.w @(data_CE331EE,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE331F0,pc),r0
mov.b r2,@(r0,r14)
add 0x03,r0
mov.b r13,@(r0,r14)
add 0x08,r0
mov.b r13,@(r0,r14)
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE330F0
mov.b @(0x06,r14),r0
mov.l @(ptr_CE33200_to_extern_8C030FEC,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x40,r0
mov.w r0,@(0x1C,r14)
mov 0x00,r0
jsr @r3
mov.w r0,@(0x1E,r14)
mov.l @(ptr_CE33204_to_extern_8C26A8EC,pc),r2
mov 0x0A,r6
mov.l @(ptr_CE33208_to_extern_8C034E8C,pc),r3
mov 0x0F,r5
mov.l r13,@r2
mov r14,r4
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE330F0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE330F8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE331EC,pc),r0
mov r4,r14
mov 0x02,r4
mov.b r4,@(r0,r14)
mov 0x05,r3
mov.w @(data_CE331EE,pc),r0
mov 0x01,r2
mov.b r3,@(r0,r14)
mov.w @(data_CE331F0,pc),r0
mov.l @(ptr_CE33204_to_extern_8C26A8EC,pc),r3
mov.b r2,@(r0,r14)
add 0x03,r0
mov.b r4,@(r0,r14)
add 0x08,r0
mov.b r4,@(r0,r14)
mov.w @(data_CE331F2,pc),r2
mov.l r4,@r3
mov.w @(0x1E,r14),r0
add r2,r0
mov.w r0,@(0x1E,r14)
exts.w r0,r0
tst r0,r0
bf code_CE3318C
mov.l @(ptr_CE3320C_to_extern_8C1294C8,pc),r3
mov r14,r2
mov r15,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0
mov.l @(ptr_CE33210_to_extern_8C03319E,pc),r13
jsr @r13
nop
extu.b r0,r0
fmov.s @r15,fr2
add 0x80,r0
exts.w r0,r0
lds r0,fpul
mova @(data_CE33214,pc),r0
fmov.s @r0,fr0
float fpul,fr3
fmac fr0,fr3,fr2
jsr @r13
fmov.s fr2,@r15
and 0x7F,r0
mov.l @(ptr_CE3321C_to_extern_8C0FDA40,pc),r3
add 0x20,r0
exts.w r0,r0
lds r0,fpul
mova @(data_CE33218,pc),r0
fmov.s @r0,fr0
mov 0x04,r0
fmov.s @(r0,r15),fr2
mov 0x04,r0
float fpul,fr3
mov 0x00,r7
mov 0x01,r6
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r15)
mov.w @(data_CE331F4,pc),r0
mov.w @(r0,r14),r5
jsr @r3
mov r15,r4
jsr @r13
nop
mov.l @(ptr_CE33220_to_extern_8C04223A,pc),r3
tst 0x01,r0
movt r5
jsr @r3
mov r14,r4

code_CE3318C:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE331E0
mov.w @(data_CE331F6,pc),r0
mov 0x00,r12
mov.l @(ptr_CE33224_to_extern_8C05A49C,pc),r3
mov r14,r5
mov.b r12,@(r0,r14)
add 0xFF,r0
mov.b r12,@(r0,r14)
mov 0x0E,r6
mov.w @(data_CE331F8,pc),r0
mov.b r12,@(r0,r14)
add 0x01,r0
mov.b r12,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x40,r0
mov.w r0,@(0x1C,r14)
mov.w @(data_CE331FA,pc),r0
mov.l @(r0,r14),r13
jsr @r3
mov r13,r4
mov.w @(data_CE331FC,pc),r0
mov 0x08,r3
mov.l @(ptr_CE33228_to_extern_8C02FD26,pc),r2
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
mov.l @(ptr_CE33204_to_extern_8C26A8EC,pc),r1
mov.l r12,@r1

code_CE331E0:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE331EC:
#data 0x03F8

data_CE331EE:
#data 0x0328

data_CE331F0:
#data 0x01EA

data_CE331F2:
#data 0x4000

data_CE331F4:
#data 0x0130

data_CE331F6:
#data 0x03F9

data_CE331F8:
#data 0x0327

data_CE331FA:
#data 0x01C8

data_CE331FC:
#data 0x01B4
#align4

ptr_CE33200_to_extern_8C030FEC:
#data extern_8C030FEC

ptr_CE33204_to_extern_8C26A8EC:
#data extern_8C26A8EC

ptr_CE33208_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE3320C_to_extern_8C1294C8:
#data extern_8C1294C8

ptr_CE33210_to_extern_8C03319E:
#data extern_8C03319E

data_CE33214:
#data 0x3FD55555

data_CE33218:
#data 0x40092492

ptr_CE3321C_to_extern_8C0FDA40:
#data extern_8C0FDA40

ptr_CE33220_to_extern_8C04223A:
#data extern_8C04223A

ptr_CE33224_to_extern_8C05A49C:
#data extern_8C05A49C

ptr_CE33228_to_extern_8C02FD26:
#data extern_8C02FD26


code_CE3322C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE33324_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE33256
mov.w @(data_CE33318,pc),r0
mov 0x30,r3
mov r14,r4
mov.l @(r0,r14),r2
add 0xE1,r0
mov.b r3,@(r0,r2)
lds.l @r15+,pr
mov.l @(ptr_CE33328_to_code_CE348A0,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE33256:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3325C:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE3332C_to_ptr_CE34F20_to_code_CE3327A,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE33330_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE3327A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE33334_to_extern_8C05218A,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE3331A,pc),r0
mov 0x00,r2
mov.b r2,@(r0,r14)
mova @(data_CE33338,pc),r0
fmov.s @r0,fr4
mova @(data_CE3333C,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE3331C,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE332AA
mova @(data_CE33340,pc),r0
fmov.s @r0,fr4
mova @(data_CE33344,pc),r0
fmov.s @r0,fr5

code_CE332AA:
mov 0x5C,r0
mov.l @(ptr_CE33348_to_extern_8C05115A,pc),r3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mov 0x60,r0
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE3334C_to_extern_8C034E8C,pc),r2
mov r14,r4
mov 0x06,r6
mov 0x16,r5
jmp @r2
mov.l @r15+,r14

code_CE332D0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE3331E,pc),r0
mov r4,r14
mov 0x05,r3
mov.b r3,@(r0,r14)
mov.l @(ptr_CE33324_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE33320,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE33310
mov.b @(0x06,r14),r0
mov 0x00,r3
mov r15,r5
mov 0x01,r6
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE33320,pc),r0
mov.b r3,@(r0,r14)
mova @(data_CE33350,pc),r0
fmov.s @r0,fr3
mova @(data_CE33354,pc),r0
mov.l @(ptr_CE33358_to_extern_8C050834,pc),r3
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE33310:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE33318:
#data 0x020C

data_CE3331A:
#data 0x01F9

data_CE3331C:
#data 0x01D2

data_CE3331E:
#data 0x0328

data_CE33320:
#data 0x0141
#align4

ptr_CE33324_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE33328_to_code_CE348A0:
#data code_CE348A0

ptr_CE3332C_to_ptr_CE34F20_to_code_CE3327A:
#data ptr_CE34F20_to_code_CE3327A

ptr_CE33330_to_code_CE34980:
#data code_CE34980

ptr_CE33334_to_extern_8C05218A:
#data extern_8C05218A

data_CE33338:
#data 0xC1A00000

data_CE3333C:
#data 0x3E555555

data_CE33340:
#data 0x41A00000

data_CE33344:
#data 0xBE555555

ptr_CE33348_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE3334C_to_extern_8C034E8C:
#data extern_8C034E8C

data_CE33350:
#data 0x422D5555

data_CE33354:
#data 0x42F00000

ptr_CE33358_to_extern_8C050834:
#data extern_8C050834


code_CE3335C:
mov.w @(data_CE33482,pc),r0
mov 0x05,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE33484,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf/s code_CE333AA
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

code_CE333AA:
mov.l @(ptr_CE33490_to_extern_8C034DEE,pc),r3
jsr @r3
nop
exts.b r0,r0
cmp/pz r0
bt code_CE333D4
mov.w @(data_CE33486,pc),r0
mov 0x00,r4
mov.l @(ptr_CE33494_to_extern_8C034E8C,pc),r3
mov 0x07,r6
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
mov r14,r4
mov.b @(0x06,r14),r0
mov 0x16,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE333D4:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE333DA:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE33490_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE333F4
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE33498_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE333F4:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE333FC:
mov.l @(ptr_CE33498_to_code_CE348A0,pc),r3
jmp @r3
nop

code_CE33402:
mov r4,r3
mov.l @(ptr_CE3349C_to_ptr_CE34F30_to_code_CE33414,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE33414:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
mov.l r13,@-r15
mov 0x00,r13
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE334A0_to_extern_8C05218A,pc),r3
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
mov.w @(data_CE33488,pc),r0
mov.b r13,@(r0,r14)
mov.w @(data_CE3348A,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE334A4_to_extern_8C05115A,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE3348C,pc),r0
mov 0x77,r3
mov 0x09,r6
mov r14,r4
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r13,@(r0,r14)
add 0xF2,r0
mov.b r13,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE334A8_to_extern_8C2896B0,pc),r3
mov 0x16,r5
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
mov.l @(ptr_CE33494_to_extern_8C034E8C,pc),r2
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

data_CE33482:
#data 0x0328

data_CE33484:
#data 0x0140

data_CE33486:
#data 0x0327

data_CE33488:
#data 0x01F9

data_CE3348A:
#data 0x041C

data_CE3348C:
#data 0x01A1
#align4

ptr_CE33490_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE33494_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE33498_to_code_CE348A0:
#data code_CE348A0

ptr_CE3349C_to_ptr_CE34F30_to_code_CE33414:
#data ptr_CE34F30_to_code_CE33414

ptr_CE334A0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE334A4_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE334A8_to_extern_8C2896B0:
#data extern_8C2896B0


code_CE334AC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(ptr_CE335D4_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov.w @(data_CE335C0,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE334E2
mov.b @(0x06,r14),r0
mov 0x00,r3
mov r15,r5
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE335C0,pc),r0
mov.b r3,@(r0,r14)
mova @(data_CE335D8,pc),r0
fmov.s @r0,fr3
mova @(data_CE335DC,pc),r0
mov.l @(ptr_CE335E0_to_extern_8C050EA4,pc),r3
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE334E2:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE334EA:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE335D4_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE33504
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE335E4_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE33504:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE3350C:
mov r4,r3
mov.l @(ptr_CE335E8_to_ptr_CE34F3C_to_code_CE3351E,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE3351E:
mov.w @(data_CE335C2,pc),r0
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE3353A
mov.w @(data_CE335C6,pc),r0
mov 0x10,r3
mov.w @(data_CE335C4,pc),r2
mov.b r2,@(r0,r14)
add 0x01,r0
mov.b r3,@(r0,r14)

code_CE3353A:
mov.b @(0x06,r14),r0
mov 0x00,r4
fldi0 fr4
mov 0x62,r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE335C8,pc),r0
mov.b r4,@(r0,r14)
mov.w @(data_CE335CA,pc),r0
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x60,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr4,@(r0,r14)
mov 0x6C,r0
fmov.s fr4,@(r0,r14)
mov.w @(data_CE335CC,pc),r0
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.l @(ptr_CE335EC_to_extern_8C2896B0,pc),r3
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l r4,@(r0,r14)
mov.l @r3,r2
mov.b @(0x02,r14),r0
add 0x7C,r2
extu.b r0,r0
shll r0
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE335F0_to_extern_8C05218A,pc),r2
jsr @r2
mov r14,r4
mov.l @(ptr_CE335F4_to_extern_8C05115A,pc),r3
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE335F8_to_extern_8C034E8C,pc),r2
mov r14,r4
mov 0x0A,r6
mov 0x16,r5
jmp @r2
mov.l @r15+,r14

code_CE3359E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE335CE,pc),r0
mov r4,r14
mov 0x02,r3
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE335D0,pc),r0
mov.b r2,@(r0,r14)
mov.w @(data_CE335C2,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE335FC
bra code_CE335FE
mov 0x02,r3

data_CE335C0:
#data 0x0141

data_CE335C2:
#data 0x0255

data_CE335C4:
#data 0x00FF

data_CE335C6:
#data 0x03F0

data_CE335C8:
#data 0x01F9

data_CE335CA:
#data 0x041C

data_CE335CC:
#data 0x01A1

data_CE335CE:
#data 0x03F8

data_CE335D0:
#data 0x0328
#align4

ptr_CE335D4_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE335D8:
#data 0x42340000

data_CE335DC:
#data 0x434DB6DB

ptr_CE335E0_to_extern_8C050EA4:
#data extern_8C050EA4

ptr_CE335E4_to_code_CE348A0:
#data code_CE348A0

ptr_CE335E8_to_ptr_CE34F3C_to_code_CE3351E:
#data ptr_CE34F3C_to_code_CE3351E

ptr_CE335EC_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE335F0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE335F4_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE335F8_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE335FC:
mov 0x00,r3

code_CE335FE:
mov.w @(data_CE3372E,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE33740_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE33730,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE3363C
mov.w @(data_CE33732,pc),r0
mov 0x00,r4
mov.l @(ptr_CE3374C_to_extern_8C050834,pc),r3
mov r15,r5
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
mov 0x01,r6
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE33730,pc),r0
mov.b r4,@(r0,r14)
mova @(data_CE33744,pc),r0
fmov.s @r0,fr3
mova @(data_CE33748,pc),r0
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE3363C:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33644:
mov.w @(data_CE33734,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE33736,pc),r0
mov.l @(ptr_CE33740_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE33694
mov.b @(0x06,r14),r0
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x12,r0
mov.w r0,@(0x1C,r14)
mov 0x21,r0
mov.b r3,@(r0,r14)
mova @(data_CE33750,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE33738,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt code_CE33682
mova @(data_CE33754,pc),r0
fmov.s @r0,fr4

code_CE33682:
mov.l @(ptr_CE33758_to_extern_8C034E8C,pc),r3
mov 0x5C,r0
mov r14,r4
fmov.s fr4,@(r0,r14)
lds.l @r15+,pr
mov 0x0B,r6
mov 0x16,r5
jmp @r3
mov.l @r15+,r14

code_CE33694:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE3369A:
mov.w @(data_CE33734,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2
mov.l r13,@-r15
mov 0x5C,r1
mov.l r12,@-r15
add r14,r1
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x00,r13
mov.w @(data_CE33736,pc),r0
mov.l @(ptr_CE33740_to_extern_8C034DEE,pc),r3
mov.b r2,@(r0,r14)
mov 0x34,r0
fmov.s @r1,fr3
mov 0x68,r1
fmov.s @(r0,r14),fr2
add r14,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE3375C
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt code_CE33702
mov.w @(data_CE3373A,pc),r0
mov 0x35,r6
mov.b r13,@(r0,r14)
add 0xFF,r0
mov.b r13,@(r0,r14)
mov.w @(data_CE3373C,pc),r0
mov.b r13,@(r0,r14)
add 0x01,r0
mov.b r13,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
bra code_CE33720
mov 0x15,r5

code_CE33702:
mov 0x21,r0
mov.b @(r0,r14),r2
mov 0x01,r3
xor r3,r2
mov.b r2,@(r0,r14)
mov.b @(r0,r14),r6
mov.w @(0x1C,r14),r0
cmp/eq 0x01,r0
bf/s code_CE3371E
add 0x0B,r6
mov 0x5C,r0
fldi0 fr3
fmov.s fr3,@(r0,r14)
add 0x02,r6

code_CE3371E:
mov 0x16,r5

code_CE33720:
lds.l @r15+,pr
mov.l @(ptr_CE33758_to_extern_8C034E8C,pc),r3
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

data_CE3372E:
#data 0x03F1

data_CE33730:
#data 0x0141

data_CE33732:
#data 0x03F0

data_CE33734:
#data 0x03F8

data_CE33736:
#data 0x0328

data_CE33738:
#data 0x0130

data_CE3373A:
#data 0x03F9

data_CE3373C:
#data 0x0327
#align4

ptr_CE33740_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE33744:
#data 0x422D5555

data_CE33748:
#data 0x42F00000

ptr_CE3374C_to_extern_8C050834:
#data extern_8C050834

data_CE33750:
#data 0xC1055555

data_CE33754:
#data 0x41055555

ptr_CE33758_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE3375C:
mov.w @(data_CE338A0,pc),r0
mov.l @(ptr_CE338BC_to_extern_8C0C1F90,pc),r12
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE33788
mov.w @(data_CE338A2,pc),r0
mov.b @(r0,r14),r6
add 0xF6,r0
mov.b @(r0,r14),r5
extu.b r6,r6
jsr @r12
mov r14,r4
mov.w @(data_CE338A2,pc),r0
mov.b @(r0,r14),r6
add 0xF6,r0
mov.b @(r0,r14),r5
extu.b r6,r6
add 0xFF,r5
jsr @r12
mov r14,r4
mov.w @(data_CE338A0,pc),r0
mov.b r13,@(r0,r14)

code_CE33788:
mov.w @(data_CE338A4,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE337C4
mov.w @(data_CE338A2,pc),r0
mov.w @(data_CE338A6,pc),r5
mov.b @(r0,r14),r6
extu.b r6,r6
jsr @r12
mov r14,r4
mov.w @(data_CE338A2,pc),r0
mov.w @(data_CE338A8,pc),r5
mov.b @(r0,r14),r6
extu.b r6,r6
jsr @r12
mov r14,r4
mov.w @(data_CE338A2,pc),r0
mov.w @(data_CE338AA,pc),r5
mov.b @(r0,r14),r6
extu.b r6,r6
jsr @r12
mov r14,r4
mov.w @(data_CE338A2,pc),r0
mov.w @(data_CE338AC,pc),r5
mov.b @(r0,r14),r6
extu.b r6,r6
jsr @r12
mov r14,r4
mov.w @(data_CE338A4,pc),r0
mov.b r13,@(r0,r14)

code_CE337C4:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE337CE:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE338C0_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE337E8
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE338C4_to_code_CE348A0,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE337E8:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE337F0:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE338C8_to_ptr_CE34F50_to_code_CE3380E,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(ptr_CE338CC_to_code_CE34980,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE3380E:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE338AE,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf/s code_CE33832
mov r14,r4
mov.w @(data_CE338B2,pc),r0
mov 0x10,r3
mov.w @(data_CE338B0,pc),r2
mov.b r2,@(r0,r14)
add 0x01,r0
mov.b r3,@(r0,r14)

code_CE33832:
mov.l @(ptr_CE338D0_to_extern_8C05218A,pc),r3
jsr @r3
nop
mov.l @(ptr_CE338D4_to_extern_8C05115A,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE338B4,pc),r0
mov 0x00,r4
mov 0x30,r3
fmov.s @(r0,r14),fr3
mov 0x38,r0
mov 0x0F,r6
fmov.s fr3,@(r0,r14)
mov 0x16,r5
mov.w @(data_CE338B6,pc),r0
mov.b r4,@(r0,r14)
add 0xA8,r0
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE338D8_to_extern_8C2896B0,pc),r3
mov.l r4,@(r0,r14)
mov r14,r4
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
lds.l @r15+,pr
mov.l @(ptr_CE338DC_to_extern_8C034E8C,pc),r2
jmp @r2
mov.l @r15+,r14

code_CE3387E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(data_CE338B8,pc),r0
mov r4,r14
mov 0x02,r3
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE338BA,pc),r0
mov.b r2,@(r0,r14)
mov.w @(data_CE338AE,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x06,r0
bf code_CE338E0
bra code_CE338E2
mov 0x02,r3

data_CE338A0:
#data 0x0141

data_CE338A2:
#data 0x014B

data_CE338A4:
#data 0x0140

data_CE338A6:
#data 0x0080

data_CE338A8:
#data 0x0081

data_CE338AA:
#data 0x0082

data_CE338AC:
#data 0x0083

data_CE338AE:
#data 0x0255

data_CE338B0:
#data 0x00FF

data_CE338B2:
#data 0x03F0

data_CE338B4:
#data 0x041C

data_CE338B6:
#data 0x01F9

data_CE338B8:
#data 0x03F8

data_CE338BA:
#data 0x0328
#align4

ptr_CE338BC_to_extern_8C0C1F90:
#data extern_8C0C1F90

ptr_CE338C0_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE338C4_to_code_CE348A0:
#data code_CE348A0

ptr_CE338C8_to_ptr_CE34F50_to_code_CE3380E:
#data ptr_CE34F50_to_code_CE3380E

ptr_CE338CC_to_code_CE34980:
#data code_CE34980

ptr_CE338D0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE338D4_to_extern_8C05115A:
#data extern_8C05115A

ptr_CE338D8_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE338DC_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE338E0:
mov 0x00,r3

code_CE338E2:
mov.w @(data_CE33A06,pc),r0
mov.b r3,@(r0,r14)
mov.l @(ptr_CE33A14_to_extern_8C034DEE,pc),r3
jsr @r3
mov r14,r4
mov.w @(data_CE33A08,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE33940
mov.w @(data_CE33A0A,pc),r0
mov 0x00,r4
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE33A08,pc),r0
mov.b r4,@(r0,r14)
mova @(data_CE33A18,pc),r0
fmov.s @r0,fr4
mova @(data_CE33A1C,pc),r0
fmov.s @r0,fr5
mov.w @(data_CE33A0C,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt code_CE33920
mova @(data_CE33A20,pc),r0
fmov.s @r0,fr4
mova @(data_CE33A24,pc),r0
fmov.s @r0,fr5

code_CE33920:
mov 0x5C,r0
mov.l @(ptr_CE33A30_to_extern_8C050834,pc),r3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mova @(data_CE33A28,pc),r0
fmov.s @r0,fr3
mova @(data_CE33A2C,pc),r0
mov r15,r5
mov 0x01,r6
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4

code_CE33940:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33948:
mov.w @(data_CE33A0E,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE33A10,pc),r0
mov.l @(ptr_CE33A14_to_extern_8C034DEE,pc),r3
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
fmov.s fr2,@(r0,r14)
mov 0x5C,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0
fmov.s @(r0,r14),fr3
mov 0x5C,r0
fmov.s @(r0,r14),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bt code_CE33994
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mov 0x5C,r0
fmov.s fr3,@(r0,r14)

code_CE33994:
mova @(data_CE33A1C,pc),r0
fmov.s @r0,fr7
mova @(data_CE33A24,pc),r0
fmov.s @r0,fr6
mov.w @(data_CE33A08,pc),r0
mov.b @(r0,r14),r0
cmp/eq 0x02,r0
bf code_CE339C6
mov.w @(data_CE33A08,pc),r0
mov 0x00,r2
mov.b r2,@(r0,r14)
mova @(data_CE33A18,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE33A0C,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt/s code_CE339BE
fmov fr7,fr5
mova @(data_CE33A20,pc),r0
fmov fr6,fr5
fmov.s @r0,fr4

code_CE339BE:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)

code_CE339C6:
mov.w @(data_CE33A08,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE33A00
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mova @(data_CE33A34,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE33A0C,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bt/s code_CE339E8
fmov fr7,fr5
mova @(data_CE33A38,pc),r0
fmov fr6,fr5
fmov.s @r0,fr4

code_CE339E8:
mov 0x5C,r0
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr5,@(r0,r14)
mova @(data_CE33A3C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE33A40,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)

code_CE33A00:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE33A06:
#data 0x03F1

data_CE33A08:
#data 0x0141

data_CE33A0A:
#data 0x03F0

data_CE33A0C:
#data 0x0130

data_CE33A0E:
#data 0x03F8

data_CE33A10:
#data 0x0328
#align4

ptr_CE33A14_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE33A18:
#data 0xC1855555

data_CE33A1C:
#data 0x3F200000

data_CE33A20:
#data 0x41855555

data_CE33A24:
#data 0xBF200000

data_CE33A28:
#data 0xC2200000

data_CE33A2C:
#data 0x424DB6DB

ptr_CE33A30_to_extern_8C050834:
#data extern_8C050834

data_CE33A34:
#data 0xC1A00000

data_CE33A38:
#data 0x41A00000

data_CE33A3C:
#data 0x42092492

data_CE33A40:
#data 0xBF892492


code_CE33A44:
mov.w @(data_CE33B8A,pc),r0
mov 0x02,r3
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2
mov.w @(data_CE33B8C,pc),r0
mov.l @(ptr_CE33B98_to_extern_8C034DEE,pc),r3
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
fmov.s fr2,@(r0,r14)
mov 0x5C,r0
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(data_CE33B8E,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE33A90
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(ptr_CE33B9C_to_extern_8C053082,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

code_CE33A90:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33A96:
mov.w @(data_CE33B8A,pc),r0
mov 0x02,r3
mov 0x05,r2
mov.b r3,@(r0,r4)
mov 0x5C,r1
mov.w @(data_CE33B8C,pc),r0
add r4,r1
mov.b r2,@(r0,r4)
mov 0x34,r0
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x68,r1
add r4,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x5C,r0
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x68,r0
fmov fr2,fr3
fmov.s @(r0,r4),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bt code_CE33AEC
mov.w @(data_CE33B90,pc),r0
mov 0x00,r5
mov.b r5,@(r0,r4)
add 0xFF,r0
mov.b r5,@(r0,r4)
mov.w @(data_CE33B92,pc),r0
mov.b r5,@(r0,r4)
add 0x01,r0
mov.b r5,@(r0,r4)
mov.b @(0x06,r4),r0
add 0x01,r0
mov.b r0,@(0x06,r4)
mov 0x68,r0
fmov.s fr3,@(r0,r4)
mov 0x5C,r0
fmov.s fr3,@(r0,r4)

code_CE33AEC:
mov 0x60,r1
add r4,r1
mov 0x38,r0
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x6C,r1
add r4,r1
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x60,r0
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf/s code_CE33B16
fmov.s fr2,@(r0,r4)
mova @(data_CE33BA0,pc),r0
fmov.s @r0,fr2
mov 0x6C,r0
fmov.s fr2,@(r0,r4)

code_CE33B16:
mov.w @(data_CE33B94,pc),r0
fmov.s @(r0,r4),fr3
mov 0x38,r0
fmov.s @(r0,r4),fr2
fcmp/gt fr2,fr3
bf code_CE33B3C
mov.b @(0x06,r4),r0
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x06,r4)
mov.w @(data_CE33B94,pc),r0
fmov.s @(r0,r4),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r4)
mov.w @(data_CE33B96,pc),r0
mov.b r3,@(r0,r4)
mov.l @(ptr_CE33BA4_to_extern_8C0511B4,pc),r3
jmp @r3
nop

code_CE33B3C:
mov.w @(data_CE33B8E,pc),r0
mov.b @(r0,r4),r3
tst r3,r3
bf code_CE33B4A
mov.l @(ptr_CE33B98_to_extern_8C034DEE,pc),r3
jmp @r3
nop

code_CE33B4A:
rts
nop
;-------------------------------------------------------------------------------

code_CE33B4E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE33B98_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE33B66
mov.l @r15,r4
add 0x04,r15
bra code_CE348A0
lds.l @r15+,pr

code_CE33B66:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE33B6E:
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE33BA8_to_ptr_CE34F6C_to_code_CE33BAC,pc),r1
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov r14,r4
bra code_CE34980
mov.l @r15+,r14

data_CE33B8A:
#data 0x03F8

data_CE33B8C:
#data 0x0328

data_CE33B8E:
#data 0x0141

data_CE33B90:
#data 0x03F9

data_CE33B92:
#data 0x0327

data_CE33B94:
#data 0x041C

data_CE33B96:
#data 0x01F9
#align4

ptr_CE33B98_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE33B9C_to_extern_8C053082:
#data extern_8C053082

data_CE33BA0:
#data 0xBF9A4924

ptr_CE33BA4_to_extern_8C0511B4:
#data extern_8C0511B4

ptr_CE33BA8_to_ptr_CE34F6C_to_code_CE33BAC:
#data ptr_CE34F6C_to_code_CE33BAC


code_CE33BAC:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x00,r5
mov.l @(ptr_CE33CC8_to_extern_8C035162,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(data_CE33CCC,pc),r1
mov 0x02,r2
mov.w @(data_CE33CC0,pc),r0
lds r1,fpul
mov.b r2,@(r0,r14)
mov 0x38,r0
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mova @(data_CE33CD0,pc),r0
fmov.s @r0,fr4
mov.w @(data_CE33CC2,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE33BE4
mova @(data_CE33CD4,pc),r0
fmov.s @r0,fr4

code_CE33BE4:
mov 0x5C,r0
fldi0 fr3
fmov.s fr4,@(r0,r14)
mov 0x68,r0
fmov.s fr3,@(r0,r14)
mova @(data_CE33CD8,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
mov 0x30,r3
fmov.s fr3,@(r0,r14)
mova @(data_CE33CDC,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
mov 0x00,r4
fmov.s fr3,@(r0,r14)
mov.w @(data_CE33CC4,pc),r0
mov.b r3,@(r0,r14)
add 0x0B,r0
mov.w r4,@(r0,r14)
add 0xF2,r0
mov.b r4,@(r0,r14)
add 0x26,r0
mov.l @(ptr_CE33CE0_to_extern_8C2896B0,pc),r3
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
lds.l @r15+,pr
mov.l @(ptr_CE33CE4_to_extern_8C034E8C,pc),r2
mov r4,r6
mov 0x14,r5
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE33C32:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE33CE8_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
mov 0x5C,r1
mov.l @(ptr_CE33CEC_to_extern_8C052CE2,pc),r3
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
bt code_CE33C98
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
bsr code_CE34930
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE33CE4_to_extern_8C034E8C,pc),r2
mov r14,r4
mov 0x01,r6
mov 0x14,r5
jmp @r2
mov.l @r15+,r14

code_CE33C98:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33C9E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE33CE8_to_extern_8C034DEE,pc),r3
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt code_CE33CB8
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE33CF0_to_extern_8C051854,pc),r3
jmp @r3
lds.l @r15+,pr

code_CE33CB8:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

data_CE33CC0:
#data 0x01F9

data_CE33CC2:
#data 0x01D2

data_CE33CC4:
#data 0x01A1
#align4

ptr_CE33CC8_to_extern_8C035162:
#data extern_8C035162

data_CE33CCC:
#data 0x43092492

data_CE33CD0:
#data 0xC1F00000

data_CE33CD4:
#data 0x41F00000

data_CE33CD8:
#data 0xBE892492

data_CE33CDC:
#data 0xBF4DB6DB

ptr_CE33CE0_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE33CE4_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE33CE8_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE33CEC_to_extern_8C052CE2:
#data extern_8C052CE2

ptr_CE33CF0_to_extern_8C051854:
#data extern_8C051854


code_CE33CF4:
mov.w @(data_CE33DE4,pc),r0
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
mov.l @(ptr_CE33DF4_to_data_CE34F78,pc),r0
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
tst r2,r2
bt/s code_CE33D46
mov 0x00,r4
mov.w @(data_CE33DE6,pc),r0
mov.w @(data_CE33DE8,pc),r3
mov.w @(r0,r14),r5
extu.w r5,r5
and r3,r5
tst r5,r5
bt code_CE33D46
shlr8 r5
mov 0x22,r0
shlr2 r5
mov.b r5,@(r0,r14)
mov.w @(data_CE33DEA,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE33D46
mov.w @(data_CE33DEC,pc),r0
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x01,r0
bf code_CE33D46
mov.l @(ptr_CE33DF8_to_extern_8C045790,pc),r3
jsr @r3
mov r14,r4
tst r0,r0
bt/s code_CE33D46
mov r0,r4
mov.w @(data_CE33DEE,pc),r0
mov 0x02,r3
mov.b r3,@(r0,r14)

code_CE33D46:
mov r4,r0
nop
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33D50:
mov.l r4,@-r15
mov r4,r0
nop
mov.w @(data_CE33DEE,pc),r1
mov.l @(ptr_CE33DFC_to_ptr_CE34F88_to_code_CE33D68,pc),r2
mov.b @(r0,r1),r0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

code_CE33D68:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mova @(data_CE33E00,pc),r0
mov.l @(ptr_CE33E08_to_extern_8C103660,pc),r3
fmov.s @r0,fr3
mova @(data_CE33E04,pc),r0
mov r4,r14
mov r15,r5
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4
mov.w @(data_CE33DF0,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE33D98
mov.l @(ptr_CE33E0C_to_extern_8C02FEC4,pc),r3
mov 0x05,r6
mov r6,r5
jsr @r3
mov r14,r4

code_CE33D98:
mov.w @(data_CE33DF2,pc),r0
mov 0x0A,r2
mov.l @(ptr_CE33E10_to_data_CE34F9C,pc),r1
mov 0x0F,r5
mov.b r2,@(r0,r14)
add 0x28,r0
mov.l @(r0,r14),r4
mov 0x38,r0
mov 0x00,r6
mov r4,r2
add r0,r2
mov.l r2,@-r15
mov.b @(0x01,r4),r0
extu.b r0,r0
shll r0
mov.w @(r0,r1),r3
mova @(data_CE33E14,pc),r0
fmov.s @r0,fr0
mov 0x40,r0
extu.w r3,r3
lds r3,fpul
mov.l @r15+,r3
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.l @(ptr_CE33E18_to_extern_8C034E8C,pc),r3
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33DDC:
mov.l @(ptr_CE33E18_to_extern_8C034E8C,pc),r3
mov 0x03,r6
jmp @r3
mov 0x0F,r5

data_CE33DE4:
#data 0x01F9

data_CE33DE6:
#data 0x01FA

data_CE33DE8:
#data 0x0C00

data_CE33DEA:
#data 0x01FE

data_CE33DEC:
#data 0x01A3

data_CE33DEE:
#data 0x01F7

data_CE33DF0:
#data 0x0411

data_CE33DF2:
#data 0x01A0
#align4

ptr_CE33DF4_to_data_CE34F78:
#data data_CE34F78

ptr_CE33DF8_to_extern_8C045790:
#data extern_8C045790

ptr_CE33DFC_to_ptr_CE34F88_to_code_CE33D68:
#data ptr_CE34F88_to_code_CE33D68

data_CE33E00:
#data 0xC2DC0000

data_CE33E04:
#data 0x432B6DB6

ptr_CE33E08_to_extern_8C103660:
#data extern_8C103660

ptr_CE33E0C_to_extern_8C02FEC4:
#data extern_8C02FEC4

ptr_CE33E10_to_data_CE34F9C:
#data data_CE34F9C

data_CE33E14:
#data 0x40092492

ptr_CE33E18_to_extern_8C034E8C:
#data extern_8C034E8C


code_CE33E1C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov 0x22,r0
mov r4,r14
mov.b @(r0,r14),r0
extu.b r0,r0
tst 0x01,r0
bt code_CE33E40
mov.w @(data_CE33F4E,pc),r0
mov 0x01,r3
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14)
mov.w @(data_CE33F50,pc),r0
mov.b @(r0,r14),r1
xor r3,r1
mov.b r1,@(r0,r14)

code_CE33E40:
mova @(data_CE33F5C,pc),r0
mov.l @(ptr_CE33F64_to_extern_8C103660,pc),r3
fmov.s @r0,fr3
mova @(data_CE33F60,pc),r0
mov r15,r5
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4
mov.l @(ptr_CE33F68_to_extern_8C02FEC4,pc),r2
mov 0x05,r6
mov r6,r5
jsr @r2
mov r14,r4
mov.w @(data_CE33F52,pc),r0
mov 0x0A,r3
mov 0x0F,r5
mov.b r3,@(r0,r14)
mov 0x07,r6
mov.l @(ptr_CE33F6C_to_extern_8C034E8C,pc),r3
jsr @r3
mov r14,r4
mov.l @(ptr_CE33F70_to_extern_8C056F2A,pc),r2
jsr @r2
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33E7E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mova @(data_CE33F74,pc),r0
mov.l @(ptr_CE33F64_to_extern_8C103660,pc),r3
fmov.s @r0,fr3
mova @(data_CE33F78,pc),r0
mov r4,r14
mov r15,r5
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4
mov 0x05,r6
mov.l @(ptr_CE33F68_to_extern_8C02FEC4,pc),r3
mov 0x10,r0
mov r6,r5
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE33F52,pc),r0
mov 0x0A,r2
mov.l @(ptr_CE33F6C_to_extern_8C034E8C,pc),r3
mov 0x0F,r5
mov.b r2,@(r0,r14)
mov 0x09,r6
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33EC2:
mov.w @(data_CE33F54,pc),r0
mov 0x01,r3
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r14)
add 0x0D,r0
mov.b @(r0,r14),r0
mov r14,r4
mov.l @(ptr_CE33F7C_to_ptr_CE3501C_to_code_CE33EE0,pc),r1
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

code_CE33EE0:
mov.l r14,@-r15
sts.l pr,@-r15
bsr code_CE3485C
mov r4,r14
mov.l @(ptr_CE33F80_to_extern_8C034DEE,pc),r2
jsr @r2
mov r14,r4
mov.w @(data_CE33F56,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE33F10
mov 0x00,r0
mov.w @(data_CE33F58,pc),r2
mov r0,r3
mov.b r0,@(0x06,r14)
mov.w @(data_CE33F56,pc),r0
mov.b r3,@(r0,r14)
mov.w @(data_CE33F5A,pc),r0
mov.b r2,@(r0,r14)
add 0xD1,r0
mov.l @(r0,r14),r4
add 0x2F,r0
mov.b @(r0,r14),r3
mov.b r3,@(r0,r4)

code_CE33F10:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33F16:
mov r4,r3
mov.l @(ptr_CE33F84_to_ptr_CE35030_to_code_CE33F28,pc),r1
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE33F28:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(ptr_CE33F80_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE33F88
mov.b @(0x06,r14),r0
mov 0x0F,r5
mov.l @(ptr_CE33F6C_to_extern_8C034E8C,pc),r3
mov 0x04,r6
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
bra code_CE33FBA
nop

data_CE33F4E:
#data 0x0130

data_CE33F50:
#data 0x01D2

data_CE33F52:
#data 0x01A0

data_CE33F54:
#data 0x01EA

data_CE33F56:
#data 0x0141

data_CE33F58:
#data 0x00C3

data_CE33F5A:
#data 0x01F7
#align4

data_CE33F5C:
#data 0xC262AAAA

data_CE33F60:
#data 0x43362492

ptr_CE33F64_to_extern_8C103660:
#data extern_8C103660

ptr_CE33F68_to_extern_8C02FEC4:
#data extern_8C02FEC4

ptr_CE33F6C_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE33F70_to_extern_8C056F2A:
#data extern_8C056F2A

data_CE33F74:
#data 0xC2A6AAAA

data_CE33F78:
#data 0x431E9249

ptr_CE33F7C_to_ptr_CE3501C_to_code_CE33EE0:
#data ptr_CE3501C_to_code_CE33EE0

ptr_CE33F80_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE33F84_to_ptr_CE35030_to_code_CE33F28:
#data ptr_CE35030_to_code_CE33F28


code_CE33F88:
mov.w @(data_CE34028,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE33FBA
mov 0x00,r3
mov r15,r5
mov.b r3,@(r0,r14)
mova @(data_CE34030,pc),r0
fmov.s @r0,fr3
mova @(data_CE34034,pc),r0
mov.l @(ptr_CE34038_to_extern_8C103660,pc),r3
fmov.s fr3,@r15
fmov.s @r0,fr3
mov 0x04,r0
fmov.s fr3,@(r0,r15)
jsr @r3
mov r14,r4
mov.w @(data_CE3402A,pc),r0
mov 0x05,r6
mov.l @(ptr_CE3403C_to_extern_8C02FEC4,pc),r3
mov 0x0A,r2
mov r6,r5
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4

code_CE33FBA:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE33FC2:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE34040_to_extern_8C034DEE,pc),r3
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE34022
mov.b @(0x06,r14),r0
mov.l @(ptr_CE34044_to_code_CE35040,pc),r3
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE3402C,pc),r0
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
fmov.s fr3,@(r0,r14)
mov 0x0C,r0
fmov.s @(r0,r4),fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r14)
mov 0x34,r0
fmov.s @(r0,r14),fr2
fldi0 fr3
fcmp/gt fr3,fr2
bf/s code_CE3400E
mov 0x5C,r0
fneg fr4
fneg fr5

code_CE3400E:
fmov.s fr5,@(r0,r14)
mov 0x68,r0
mov.l @(ptr_CE34048_to_extern_8C034E8C,pc),r3
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x05,r6
lds.l @r15+,pr
mov 0x0F,r5
jmp @r3
mov.l @r15+,r14

code_CE34022:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE34028:
#data 0x0141

data_CE3402A:
#data 0x01A0

data_CE3402C:
#data 0x01A3
#align4

data_CE34030:
#data 0xC2E2AAAA

data_CE34034:
#data 0x4322DB6D

ptr_CE34038_to_extern_8C103660:
#data extern_8C103660

ptr_CE3403C_to_extern_8C02FEC4:
#data extern_8C02FEC4

ptr_CE34040_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE34044_to_code_CE35040:
#data code_CE35040

ptr_CE34048_to_extern_8C034E8C:
#data extern_8C034E8C

;==============================================================================
code_CE3404C:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(ptr_CE34194_to_extern_8C034DEE,pc),r3
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
	mov.l @(ptr_CE34198_to_extern_8C052CE2,pc),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt code_CE340F2
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mova @(data_CE3419C,pc),r0
	fmov.s @r0,fr4
	mova @(data_CE341A0,pc),r0
	fmov.s @r0,fr5
	mov.w @(data_CE3418C,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE340BA
	mova @(data_CE341A4,pc),r0
	fmov.s @r0,fr4
	mova @(data_CE341A8,pc),r0
	fmov.s @r0,fr5

code_CE340BA:
	mov 0x5C,r0
	mov.l @(ptr_CE341B4_to_extern_8C034E8C,pc),r3
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr5,@(r0,r14)
	mova @(data_CE341AC,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	mov 0x0F,r5
	fmov.s fr3,@(r0,r14)
	mova @(data_CE341B0,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	mov 0x06,r6
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE341B8_to_extern_8C26A518,pc),r4
	mov 0x03,r0
	mov.l @(ptr_CE341BC_to_extern_8C0423FC,pc),r3
	mov.b r0,@(0x05,r4)
	mov 0x01,r0
	mov.b r0,@(0x06,r4)
	mov.w @(data_CE3418E,pc),r0
	lds.l @r15+,pr
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

code_CE340F2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE340F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE34194_to_extern_8C034DEE,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE34112
	lds.l @r15+,pr
	mov.l @(ptr_CE341C0_to_extern_8C05176E,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

code_CE34112:
	mov.w @(data_CE34190,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE34152
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

code_CE34152:
	mov.w @(data_CE34192,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE34186
	mov 0x00,r3
	mov.w @(data_CE3418C,pc),r1
	mov.b r3,@(r0,r14)
	mov 0x02,r3
	mov.w @(data_CE3418E,pc),r0
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
	mov.l @(ptr_CE341C4_to_extern_8C02FD26,pc),r3
	xor 0x01,r0
	mov.b r0,@r1
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

code_CE34186:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE3418C:
#data 0x01D2

data_CE3418E:
#data 0x01C8

data_CE34190:
#data 0x0140

data_CE34192:
#data 0x0141
#align4

ptr_CE34194_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE34198_to_extern_8C052CE2:
#data extern_8C052CE2

data_CE3419C:
#data 0x40A00000

data_CE341A0:
#data 0x3DD55555

data_CE341A4:
#data 0xC0A00000

data_CE341A8:
#data 0xBDD55555

data_CE341AC:
#data 0x41892492

data_CE341B0:
#data 0xBF2B6DB6

ptr_CE341B4_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE341B8_to_extern_8C26A518:
#data extern_8C26A518

ptr_CE341BC_to_extern_8C0423FC:
#data extern_8C0423FC

ptr_CE341C0_to_extern_8C05176E:
#data extern_8C05176E

ptr_CE341C4_to_extern_8C02FD26:
#data extern_8C02FD26

;==============================================================================
code_CE341C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(ptr_CE3430C_to_ptr_CE35070_to_code_CE341E4,pc),r1
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra code_CE34980
	mov.l @r15+,r14

code_CE341E4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE34310_to_extern_8C034DEE,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(data_CE34306,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE3424A
	mov 0x00,r3
	mov.l @(data_CE34314,pc),r1
	mov.b r3,@(r0,r14)
	mov.b @(0x06,r14),r0
	lds r1,fpul
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(data_CE34318,pc),r0
	fmov.s @r0,fr4
	mov.w @(data_CE34308,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE3421E
	mova @(data_CE3431C,pc),r0
	fmov.s @r0,fr4

code_CE3421E:
	mov 0x5C,r0
	fldi0 fr3
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)
	mova @(data_CE34320,pc),r0
	fmov.s @r0,fr5
	mova @(data_CE34324,pc),r0
	fmov.s @r0,fr4
	mov.w @(data_CE3430A,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf code_CE34242
	mova @(data_CE34328,pc),r0
	fmov.s @r0,fr5
	mova @(data_CE3432C,pc),r0
	fmov.s @r0,fr4

code_CE34242:
	mov 0x60,r0
	fmov.s fr5,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)

code_CE3424A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE34250:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE34310_to_extern_8C034DEE,pc),r3
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
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf/s code_CE342AC
	fmov.s fr2,@(r0,r14)
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE34330_to_extern_8C034E8C,pc),r3
	mov 0x08,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x0F,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

code_CE342AC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE342B2:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(ptr_CE34310_to_extern_8C034DEE,pc),r3
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
	exts.b r0,r0
	cmp/pz r0
	bt code_CE34338
	lds.l @r15+,pr
	mov.l @(ptr_CE34334_to_extern_8C05176E,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE34306:
#data 0x0141

data_CE34308:
#data 0x01D2

data_CE3430A:
#data 0x01F9
#align4

ptr_CE3430C_to_ptr_CE35070_to_code_CE341E4:
#data ptr_CE35070_to_code_CE341E4

ptr_CE34310_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE34314:
#data 0x42700000

data_CE34318:
#data 0xC0555555

data_CE3431C:
#data 0x40555555

data_CE34320:
#data 0x41892492

data_CE34324:
#data 0xBE892492

data_CE34328:
#data 0x40892492

data_CE3432C:
#data 0xBD892492

ptr_CE34330_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE34334_to_extern_8C05176E:
#data extern_8C05176E

;==============================================================================
code_CE34338:
	mov.w @(data_CE34412,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE3437A
	mov 0x00,r3
	mov.w @(data_CE34416,pc),r1
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(data_CE34414,pc),r0
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
	mov.l @(ptr_CE34420_to_extern_8C02FD26,pc),r3
	xor 0x01,r0
	mov.b r0,@r1
	extu.b r0,r0
	mov.w @(data_CE34418,pc),r1
	add r4,r1
	mov.w r0,@r1
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

code_CE3437A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE34380:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr code_CE3485C
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE34424_to_ptr_CE3507C_to_code_CE3439A,pc),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

code_CE3439A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE34428_to_extern_8C034DEE,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf code_CE343C8
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE3442C_to_extern_8C034E8C,pc),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x0F,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

code_CE343C8:
	mov.w @(data_CE3441A,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE343E4
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(data_CE34430,pc),r0
	fmov.s @r0,fr5
	mova @(data_CE34434,pc),r0
	mov.l @(ptr_CE34438_to_extern_8C06CFFC,pc),r3
	mov 0x02,r5
	fmov.s @r0,fr4
	jsr @r3
	mov r14,r4

code_CE343E4:
	mov.w @(data_CE34412,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE3440A
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.w @(data_CE3441C,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s code_CE343FC
	mov 0x14,r13
	mov 0x16,r13

code_CE343FC:
	lds.l @r15+,pr
	mov r13,r5
	mov.l @(ptr_CE3443C_to_extern_8C042008,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

code_CE3440A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE34412:
#data 0x0141

data_CE34414:
#data 0x01C8

data_CE34416:
#data 0x01D2

data_CE34418:
#data 0x0130

data_CE3441A:
#data 0x0140

data_CE3441C:
#data 0x02BC
#align4

ptr_CE34420_to_extern_8C02FD26:
#data extern_8C02FD26

ptr_CE34424_to_ptr_CE3507C_to_code_CE3439A:
#data ptr_CE3507C_to_code_CE3439A

ptr_CE34428_to_extern_8C034DEE:
#data extern_8C034DEE

ptr_CE3442C_to_extern_8C034E8C:
#data extern_8C034E8C

data_CE34430:
#data 0x42C80000

data_CE34434:
#data 0x41E80000

ptr_CE34438_to_extern_8C06CFFC:
#data extern_8C06CFFC

ptr_CE3443C_to_extern_8C042008:
#data extern_8C042008

;==============================================================================
code_CE34440:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE34570_to_extern_8C034DEE,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(data_CE34560,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE344C0
	mov.w @(data_CE34562,pc),r0
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
	mov.w @(data_CE34564,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s code_CE34478
	mov 0x20,r5
	mov 0x24,r5

code_CE34478:
	mov.w @(data_CE34566,pc),r0
	mov 0x00,r3
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(data_CE34560,pc),r0
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(data_CE34568,pc),r0
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(data_CE3456A,pc),r0
	mov.l @(ptr_CE34578_to_extern_8C02FD26,pc),r2
	mov.w @(r0,r14),r1
	xor r3,r1
	mov.w r1,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	mova @(data_CE34574,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	jsr @r2
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov r14,r4
	bra code_CE34834
	mov.l @r15+,r14

code_CE344C0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE344C6:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
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
	mov.w @(data_CE3456C,pc),r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf code_CE3451A
	lds.l @r15+,pr
	mov.l @(ptr_CE34570_to_extern_8C034DEE,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE3451A:
	mov.b @(0x06,r14),r0
	mov 0x00,r3
	mov 0x0F,r5
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x02,r6
	mov.w @(data_CE3456C,pc),r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(data_CE3456E,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE3457C_to_extern_8C034E8C,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra code_CE34930
	mov.l @r15+,r14

code_CE34540:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE34570_to_extern_8C034DEE,pc),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE34558
	mov.l @r15,r4
	add 0x04,r15
	bra code_CE348A0
	lds.l @r15+,pr

code_CE34558:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE34560:
#data 0x0141

data_CE34562:
#data 0x01C8

data_CE34564:
#data 0x02BC

data_CE34566:
#data 0x01A1

data_CE34568:
#data 0x01D2

data_CE3456A:
#data 0x0130

data_CE3456C:
#data 0x041C

data_CE3456E:
#data 0x01F9
#align4

ptr_CE34570_to_extern_8C034DEE:
#data extern_8C034DEE

data_CE34574:
#data 0xBF4DB6DB

ptr_CE34578_to_extern_8C02FD26:
#data extern_8C02FD26

ptr_CE3457C_to_extern_8C034E8C:
#data extern_8C034E8C

;==============================================================================
code_CE34580:
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
	mov.w @(data_CE3465A,pc),r4

code_CE34598:
	mov 0x03,r9
	mov.l r8,@-r15
	mov 0x48,r8
	sts.l pr,@-r15
	add r14,r4
	mov.w @(data_CE3465C,pc),r1
	add r4,r0
	mov.w @(data_CE3465E,pc),r2
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
	mov.w @(data_CE34660,pc),r0
	cmp/eq r5,r14
	mov.l r3,@(0x3C,r4)
	mov.l r3,@(0x38,r4)
	mov.l @r15+,r2
	mov.l r3,@r2
	mov.l r3,@(0x34,r4)
	mov.l r3,@(0x30,r4)
	mov.l r3,@(0x2C,r4)
	mov.l @r15+,r1
	mov.l r3,@r1
	mov.b r3,@(r0,r14)
	mov.w @(data_CE34662,pc),r0;2a8
	mov.l @(r0,r14),r2
	mov.l @(ptr_CE3466C_to_data_CE3508C,pc),r0
	bt/s code_CE345EC
	mov.b @(r0,r2),r13
	mov.w @(data_CE34664,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt code_CE345EC
	mov 0x04,r13

code_CE345EC:
	mov.w @(data_CE34660,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt code_CE34602
	mov.b @(r0,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bt code_CE34600
	bra code_CE34602
	mov 0x07,r13

code_CE34600:
	mov 0x08,r13

code_CE34602:
	mov.w @(data_CE34662,pc),r0;2a8
	mov.l @(r0,r14),r0
	cmp/eq 0x0B,r0
	bt code_CE3462A
	cmp/eq 0x12,r0
	bt code_CE34636
	cmp/eq 0x22,r0
	bt code_CE34642
	cmp/eq 0x29,r0
	bt code_CE3464E
	cmp/eq 0x2D,r0
	bt code_CE34670
	cmp/eq 0x2F,r0
	bt code_CE34686
	cmp/eq 0x31,r0
	bt code_CE3469C
	cmp/eq 0x37,r0
	bt code_CE346C4
	bra code_CE346CE
	nop

code_CE3462A:
mov.w @(data_CE34666,pc),r0
mov.b @(r0,r5),r3
tst r3,r3
bt code_CE34656
bra code_CE346CE
nop

code_CE34636:
mov.w @(data_CE3465A,pc),r0
mov.w @(r0,r5),r1
cmp/pl r1
bf code_CE346CE
bra code_CE34656
nop

code_CE34642:
mov.w @(data_CE34668,pc),r0
mov.l @(r0,r5),r3
tst r3,r3
bf code_CE34656
bra code_CE346CE
nop

code_CE3464E:
mov.w @(data_CE3466A,pc),r0
mov.b @(r0,r5),r3
tst r3,r3
bt code_CE346CE

code_CE34656:
bra code_CE346CE
mov r11,r13

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE3465A:
	#data 0x02A4

data_CE3465C:
	#data 0x0206

data_CE3465E:
	#data 0x0205

data_CE34660:
	#data 0x0202

data_CE34662:
	#data 0x02A8

data_CE34664:
	#data 0x03F2

data_CE34666:
	#data 0x02B2

data_CE34668:
	#data 0x00CC

data_CE3466A:
	#data 0x02A9
	#align4

ptr_CE3466C_to_data_CE3508C:
#data data_CE3508C

;==============================================================================
code_CE34670:
	mov.w @(data_CE34726,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt code_CE3467A
	mov r11,r13

code_CE3467A:
	mov.w @(data_CE34728,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt code_CE346CE
	bra code_CE346CE
	mov 0x02,r13

code_CE34686:
	mov.w @(data_CE3472A,pc),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x03,r0
	bf code_CE34690
	mov r11,r13

code_CE34690:
	mov.w @(data_CE3472A,pc),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x01,r0
	bf code_CE346CE
	bra code_CE346CE
	mov r9,r13

code_CE3469C:
	mov.w @(data_CE3472C,pc),r0
	mov.w @(r0,r5),r3
	cmp/pl r3
	bf code_CE346B8
	mov.w @(data_CE3472E,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt code_CE346AE
	mov r11,r13

code_CE346AE:
	mov.w @(data_CE34730,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt code_CE346B8
	mov r9,r13

code_CE346B8:
	mov.w @(data_CE34732,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt code_CE346CE
	bra code_CE346CE
	mov 0x05,r13

code_CE346C4:
	mov.w @(data_CE34734,pc),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt code_CE346CE
	mov 0x09,r13

code_CE346CE:
	mov.w @(data_CE34736,pc),r1;$2a8
	mov.b @(0x01,r14),r0
	add r14,r1
	mov.w @(data_CE3473A,pc),r12;$384
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(data_CE34738,pc),r0;$CC
	mov.l r13,@(r0,r14)
	mov r13,r0
	nop
	cmp/eq 0x00,r0
	bf/s code_CE346EC
	mov 0x28,r4
	bra code_CE34802
	nop

code_CE346EC:
	cmp/eq 0x01,r0
	bt code_CE34714;powerup 0x28
	cmp/eq 0x02,r0
	bt code_CE34742;DefenseUp 0x10
	cmp/eq 0x03,r0
	bt code_CE34756;SpeedUp r11
	cmp/eq 0x04,r0
	bt code_CE3476A;
	cmp/eq 0x05,r0
	bt code_CE34784;
	cmp/eq 0x06,r0
	bt code_CE347AC;
	cmp/eq 0x07,r0
	bt code_CE347B8;
	cmp/eq 0x08,r0
	bt code_CE347D0;
	cmp/eq 0x09,r0
	bt code_CE347E2;
	bra code_CE34802
	nop

code_CE34714:
	mov.w @(data_CE3473C,pc),r0
	mov.w @(data_CE34740,pc),r5
	mov.l r12,@(r0,r14)
	mov.w @(data_CE3473E,pc),r0 ;PowerUpWrite
	add r14,r5
	add 0x2C,r5
	mov.b r4,@(r0,r14)
	bra code_CE34802
	mov r10,r6

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
data_CE34726:
#data 0x02AD

data_CE34728:
#data 0x02B4

data_CE3472A:
#data 0x02C0

data_CE3472C:
#data 0x02B2

data_CE3472E:
#data 0x03EE

data_CE34730:
#data 0x0200

data_CE34732:
#data 0x02BA

data_CE34734:
#data 0x02AC

data_CE34736:
#data 0x02A8

data_CE34738:
#data 0x00CC

data_CE3473A:
#data 0x0384

data_CE3473C:
#data 0x02D0

data_CE3473E:
#data 0x0205

data_CE34740:
#data 0x02A4

;==============================================================================
code_CE34742:
	mov.w @(data_CE34864,pc),r0
	mov 0x10,r3
	mov.w @(data_CE34868,pc),r5
	mov.l r12,@(r0,r14)
	mov.w @(data_CE34866,pc),r0;DefenseUpWrite
	add r14,r5
	add 0x30,r5
	mov.b r3,@(r0,r14)
	bra code_CE34802
	mov r11,r6

code_CE34756:
	mov.w @(data_CE3486C,pc),r0
	mov.w @(data_CE3486A,pc),r2
	mov.w @(data_CE34868,pc),r5
	mov.l r2,@(r0,r14)
	mov.w @(data_CE3486E,pc),r0
	add r14,r5
	add 0x34,r5
	mov.b r11,@(r0,r14)
	bra code_CE34802
	mov 0x02,r6

code_CE3476A:
	mov.w @(data_CE34870,pc),r0
	mov 0x00,r7
	mov.l @(ptr_CE3488C_to_extern_8C059A44,pc),r3
	mov r12,r5
	mov.l r12,@(r0,r14)
	mov r7,r6
	jsr @r3
	mov r14,r4
	mov.w @(data_CE34868,pc),r5
	add r14,r5
	add 0x3C,r5
	bra code_CE34802
	mov r9,r6

code_CE34784:
	mov.w @(data_CE34872,pc),r0
	mov.w @(r0,r14),r3
	add 0xFC,r0
	mov.w @(r0,r14),r2
	mov.w @(data_CE34874,pc),r0
	sub r2,r3
	shll2 r3
	shll r3
	tst r3,r3
	bt/s code_CE347A4
	mov.l r3,@(r0,r14)
	mov.w @(data_CE34868,pc),r5
	add r14,r5
	add 0x44,r5
	bra code_CE34802
	mov 0x04,r6

code_CE347A4:
	mov.w @(data_CE34876,pc),r0
	mov r10,r13
	bra code_CE34802
	mov.l r10,@(r0,r14)

code_CE347AC:
mov.l @(ptr_CE34890_to_extern_8C056DE4,pc),r2
mov.w @(data_CE34878,pc),r5
jsr @r2
mov r14,r4
bra code_CE34802
mov 0x05,r6

code_CE347B8:
mov.w @(data_CE3487A,pc),r0
mov.w @(data_CE34868,pc),r5
mov.l r12,@(r0,r14)
mov.w @(data_CE3487C,pc),r0
add r14,r5
mov.w @(data_CE3487E,pc),r3
add 0x40,r5
mov.b @(r0,r14),r2
or r3,r2
mov.b r2,@(r0,r14)
bra code_CE34802
mov 0x08,r6

code_CE347D0:
mov.w @(data_CE34880,pc),r0
mov.w @(data_CE34868,pc),r5
mov.l r12,@(r0,r14)
mov.w @(data_CE3487C,pc),r0
add r14,r5
add 0x38,r5
mov.b r11,@(r0,r14)
bra code_CE34802
mov 0x07,r6

code_CE347E2:
mov.w @(data_CE34882,pc),r0
mov 0x00,r7
mov.l @(ptr_CE3488C_to_extern_8C059A44,pc),r3
mov r12,r5
mov.l r12,@(r0,r14)
mov r7,r6
mov.w @(data_CE34884,pc),r0
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE34868,pc),r5
mov 0x09,r6
add r14,r5
add 0x48,r5

code_CE34802:
tst r13,r13
bt code_CE34822
mov.w @(data_CE34886,pc),r0
mov 0x0A,r3
mov r14,r4
mov.l r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(ptr_CE34894_to_extern_8C0F047C,pc),r3
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

code_CE34822:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE34834:
mov.w @(data_CE34876,pc),r0
mov.l r14,@-r15
mov r4,r14
mov.l @(r0,r14),r3
tst r3,r3
bt code_CE34858
mov.w @(data_CE34888,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bf code_CE34858
mov.w @(data_CE34876,pc),r0
mov r14,r4
mov.l @(r0,r14),r3
mov.l @(ptr_CE34898_to_data_CE350E0,pc),r0
mov.b @(r0,r3),r5
mov.l @(ptr_CE3489C_to_extern_8C104DF8,pc),r3
jmp @r3
mov.l @r15+,r14

code_CE34858:
	rts
	mov.l @r15+,r14


;-------------------------------------------------------------------------------
code_CE3485C:
	mov.w @(data_CE34886,pc),r0
	mov 0x04,r3
	rts
	mov.l r3,@(r0,r4)

;-------------------------------------------------------------------------------

data_CE34864:
#data 0x02D4

data_CE34866:
#data 0x0206

data_CE34868:
#data 0x02A4

data_CE3486A:
#data 0x0258

data_CE3486C:
#data 0x02D8

data_CE3486E:
#data 0x0200

data_CE34870:
#data 0x02E0

data_CE34872:
#data 0x0424

data_CE34874:
#data 0x02E8

data_CE34876:
#data 0x00CC

data_CE34878:
#data 0x0090

data_CE3487A:
#data 0x02E4

data_CE3487C:
#data 0x0202

data_CE3487E:
#data 0x0080

data_CE34880:
#data 0x02DC

data_CE34882:
#data 0x02EC

data_CE34884:
#data 0x0205

data_CE34886:
#data 0x02F0

data_CE34888:
#data 0x0411
#align4

ptr_CE3488C_to_extern_8C059A44:
#data extern_8C059A44

ptr_CE34890_to_extern_8C056DE4:
#data extern_8C056DE4

ptr_CE34894_to_extern_8C0F047C:
#data extern_8C0F047C

ptr_CE34898_to_data_CE350E0:
#data data_CE350E0

ptr_CE3489C_to_extern_8C104DF8:
#data extern_8C104DF8


code_CE348A0:
mov.w @(data_CE349C2,pc),r0
mov.b @(r0,r4),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf code_CE348B0
mov.l @(ptr_CE349D4_to_extern_8C05176E,pc),r3
jmp @r3
nop

code_CE348B0:
mov 0x5C,r0
fldi0 fr4
fmov.s fr4,@(r0,r4)
mov 0x60,r0
fmov.s fr4,@(r0,r4)
mov 0x68,r0
mov.l @(ptr_CE349D8_to_extern_8C051648,pc),r3
fmov.s fr4,@(r0,r4)
mov 0x6C,r0
jmp @r3
fmov.s fr4,@(r0,r4)

code_CE348C6:
mov.w @(data_CE349C4,pc),r0
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE349C6,pc),r2
sts.l pr,@-r15
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/eq r2,r3
bt code_CE3490A
mov.l @(ptr_CE349DC_to_extern_8C03319E,pc),r1
jsr @r1
nop
mov 0x03,r3
mov r0,r4
tst r4,r3
bf code_CE3490A
mov.w @(data_CE349C6,pc),r1
tst r1,r4
bt code_CE348F4
mov.w @(data_CE349C8,pc),r0
mov 0x0A,r2
bra code_CE348FA
mov.b r2,@(r0,r14)

code_CE348F4:
mov.w @(data_CE349C8,pc),r0
mov 0x0B,r3
mov.b r3,@(r0,r14)

code_CE348FA:
mov.w @(data_CE349C8,pc),r0
mov 0x00,r5
lds.l @r15+,pr
mov.l @(ptr_CE349E0_to_extern_8C034E8C,pc),r3
mov r14,r4
mov.b @(r0,r14),r6
jmp @r3
mov.l @r15+,r14

code_CE3490A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE34910:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE349C4,pc),r0
mov 0x00,r4
mov r4,r5
mov.l @(ptr_CE349E4_to_extern_8C129728,pc),r3
mov.b r4,@(r0,r14)
add 0x03,r0
mov.b r4,@(r0,r14)
add 0x01,r0
mov.b r4,@(r0,r14)
mov.w @(data_CE349CA,pc),r4
mov.w @(data_CE349C6,pc),r6
add r14,r4
jmp @r3
mov.l @r15+,r14

code_CE34930:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE349E8_to_extern_8C0511B4,pc),r3
jsr @r3
mov.l r4,@r15
mov.w @(data_CE349C4,pc),r0
mov.l @r15,r2
mov.b @(r0,r2),r3
mov.w @(data_CE349C6,pc),r2
extu.b r3,r3
cmp/eq r2,r3
bf code_CE34954
mov.l @(ptr_CE349EC_to_extern_8C26A518,pc),r5
mov 0x01,r4
mov r4,r0
nop
mov.b r0,@(0x05,r5)
mov.b r0,@(0x06,r5)

code_CE34954:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

code_CE3495C:
mov 0x5C,r0
fldi0 fr4
fmov.s fr4,@(r0,r4)
mov 0x60,r0
fmov.s fr4,@(r0,r4)
mov 0x68,r0
fmov.s fr4,@(r0,r4)
mov 0x6C,r0
fmov.s fr4,@(r0,r4)
mov 0x00,r3
mov.w @(data_CE349C2,pc),r0
mov.b r3,@(r0,r4)
mov.w @(data_CE349CC,pc),r0
mov.l @(ptr_CE349F0_to_extern_8C05218A,pc),r3
fmov.s @(r0,r4),fr3
mov 0x38,r0
jmp @r3
fmov.s fr3,@(r0,r4)

code_CE34980:
mov.w @(data_CE349CE,pc),r0
mov.b @(r0,r4),r6
extu.b r6,r6
tst r6,r6
bt code_CE349B0
mov 0x00,r5
mov.l @(ptr_CE349F4_to_extern_8C2896B0,pc),r3
mov.b r5,@(r0,r4)
add 0x56,r0
mov.b r6,@(r0,r4)
add 0x0B,r0
mov.w r5,@(r0,r4)
add 0xF2,r0
mov.b r5,@(r0,r4)
add 0x26,r0
mov.l r5,@(r0,r4)
mov.b @(0x02,r4),r0
mov.l @r3,r2
extu.b r0,r0
shll r0
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)

code_CE349B0:
rts
nop
;-------------------------------------------------------------------------------

code_CE349B4:
mov.w @(data_CE349D0,pc),r0
mov r4,r5
mov.l r4,@-r15
mov.l @(ptr_CE349F8_to_extern_8C04CC1C,pc),r3
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

data_CE349C2:
#data 0x01F9

data_CE349C4:
#data 0x0202

data_CE349C6:
#data 0x0080

data_CE349C8:
#data 0x0158

data_CE349CA:
#data 0x02A4

data_CE349CC:
#data 0x041C

data_CE349CE:
#data 0x014B

data_CE349D0:
#data 0x01C8
#align4

ptr_CE349D4_to_extern_8C05176E:
#data extern_8C05176E

ptr_CE349D8_to_extern_8C051648:
#data extern_8C051648

ptr_CE349DC_to_extern_8C03319E:
#data extern_8C03319E

ptr_CE349E0_to_extern_8C034E8C:
#data extern_8C034E8C

ptr_CE349E4_to_extern_8C129728:
#data extern_8C129728

ptr_CE349E8_to_extern_8C0511B4:
#data extern_8C0511B4

ptr_CE349EC_to_extern_8C26A518:
#data extern_8C26A518

ptr_CE349F0_to_extern_8C05218A:
#data extern_8C05218A

ptr_CE349F4_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE349F8_to_extern_8C04CC1C:
#data extern_8C04CC1C


code_CE349FC:
mov 0x00,r0
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34AB4,pc),r0
mov.b @(r0,r4),r5
mov.l @(ptr_CE34ABC_to_data_CE350EA,pc),r0
mov.b @(r0,r5),r5
mov.w @(data_CE34AB6,pc),r0
mov.l @(r0,r4),r0
cmp/eq 0x27,r0
bf code_CE34A16
mov 0x1C,r5

code_CE34A16:
mov.w @(data_CE34AB6,pc),r0
mov.l @(r0,r4),r0
cmp/eq 0x07,r0
bf code_CE34A20
mov 0x1B,r5

code_CE34A20:
mov.w @(data_CE34AB8,pc),r0
mov.l @(ptr_CE34AC0_to_extern_8C0530D8,pc),r3
mov.b r5,@(r0,r4)
jmp @r3
mov 0x1D,r5

code_CE34A2A:
mov 0x00,r0
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34AB4,pc),r0
mov.b @(r0,r4),r5
mov.l @(data_CE34AC4,pc),r0
mov.b @(r0,r5),r5
mov.w @(data_CE34AB6,pc),r0
mov.l @(r0,r4),r0
cmp/eq 0x27,r0
bf code_CE34A44
mov 0x1C,r5

code_CE34A44:
mov.w @(data_CE34AB6,pc),r0
mov.l @(r0,r4),r0
cmp/eq 0x07,r0
bf code_CE34A4E
mov 0x1B,r5

code_CE34A4E:
mov.w @(data_CE34AB8,pc),r0
mov.l @(ptr_CE34AC0_to_extern_8C0530D8,pc),r3
mov.b r5,@(r0,r4)
jmp @r3
mov 0x1D,r5

code_CE34A58:
mov 0x00,r0
mov.l @(ptr_CE34AC8_to_data_CE350F0,pc),r5
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34AB4,pc),r0
mov.w @(data_CE34ABA,pc),r1
mov.b @(r0,r4),r3
mov.w @(data_CE34AB8,pc),r0
add r4,r1
shll r3
add r5,r3
mov.b @r3,r2
mov.b r2,@(r0,r4)
mov.w @(data_CE34AB4,pc),r0
mov.b @(r0,r4),r3
shll r3
add r3,r5
mov.l @(ptr_CE34AC0_to_extern_8C0530D8,pc),r3
mov.b @(0x01,r5),r0
mov.b r0,@r1
jmp @r3
mov 0x15,r5

code_CE34A86:
mov 0x00,r0
mov.l @(ptr_CE34ACC_to_data_CE350F6,pc),r5
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34AB4,pc),r0
mov.w @(data_CE34ABA,pc),r1
mov.b @(r0,r4),r3
mov.w @(data_CE34AB8,pc),r0
add r4,r1
shll r3
add r5,r3
mov.b @r3,r2
mov.b r2,@(r0,r4)
mov.w @(data_CE34AB4,pc),r0
mov.b @(r0,r4),r3
shll r3
add r3,r5
mov.l @(ptr_CE34AC0_to_extern_8C0530D8,pc),r3
mov.b @(0x01,r5),r0
mov.b r0,@r1
jmp @r3
mov 0x15,r5

data_CE34AB4:
#data 0x04C9

data_CE34AB6:
#data 0x02A8

data_CE34AB8:
#data 0x01E9

data_CE34ABA:
#data 0x01A3
#align4

ptr_CE34ABC_to_data_CE350EA:
#data data_CE350EA

ptr_CE34AC0_to_extern_8C0530D8:
#data extern_8C0530D8

data_CE34AC4:
#data 0x0CE350ED

ptr_CE34AC8_to_data_CE350F0:
#data data_CE350F0

ptr_CE34ACC_to_data_CE350F6:
#data data_CE350F6

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
;Chains
data_CE34AD0:
#data 0x02000201

data_CE34AD4:
#data 0x020102FF

data_CE34AD8:
#data 0x02FFFFFF

data_CE34ADC:
#data 0x02010201

data_CE34AE0:
#data 0x02FF02FF

data_CE34AE4:
#data 0xFFFFFFFF

data_CE34AE8:
#data 0x02010201

data_CE34AEC:
#data 0x02FF02FF

data_CE34AF0:
#data 0xFFFFFFFF

data_CE34AF4:
#data 0x02010201

data_CE34AF8:
#data 0x02FF02FF

data_CE34AFC:
#data 0xFFFFFFFF

data_CE34B00:
#data 0x02000201

data_CE34B04:
#data 0x020102FF

data_CE34B08:
#data 0x02FFFFFF

data_CE34B0C:
#data 0x02010201

data_CE34B10:
#data 0x02FF02FF

data_CE34B14:
#data 0xFFFFFFFF

ptr_CE34B18_to_data_CE34AD0:
#data data_CE34AD0

ptr_CE34B1C_to_data_CE34AD4:
#data data_CE34AD4

ptr_CE34B20_to_data_CE34AD8:
#data data_CE34AD8

ptr_CE34B24_to_data_CE34ADC:
#data data_CE34ADC

ptr_CE34B28_to_data_CE34AE0:
#data data_CE34AE0

ptr_CE34B2C_to_data_CE34AE4:
#data data_CE34AE4

ptr_CE34B30_to_data_CE34AE8:
#data data_CE34AE8

ptr_CE34B34_to_data_CE34AEC:
#data data_CE34AEC

ptr_CE34B38_to_data_CE34AF0:
#data data_CE34AF0

ptr_CE34B3C_to_data_CE34AF4:
#data data_CE34AF4

ptr_CE34B40_to_data_CE34AF8:
#data data_CE34AF8

ptr_CE34B44_to_data_CE34AFC:
#data data_CE34AFC

ptr_CE34B48_to_data_CE34B00:
#data data_CE34B00

ptr_CE34B4C_to_data_CE34B04:
#data data_CE34B04

ptr_CE34B50_to_data_CE34B08:
#data data_CE34B08

ptr_CE34B54_to_data_CE34B0C:
#data data_CE34B0C

ptr_CE34B58_to_data_CE34B10:
#data data_CE34B10

ptr_CE34B5C_to_data_CE34B14:
#data data_CE34B14

data_CE34B60:
#data 0x00000003
#data 0x00000003
#data 0x18001000
#data 0x03000800

data_CE34B70:
#data 0x10000003
#data 0x0000000D
#data 0x10000800
#data 0x03001800

data_CE34B80:
#data 0x10000003
#data 0x00000016
#data 0x10000800
#data 0x00601800

data_CE34B90:
#data 0x00000003
#data 0x0000000B
;-------------------------------------------------------------------------------
#data 0x14001000
#data 0x00600400

data_CE34BA0:
#data 0x91000003
#data 0x00000014
#data 0x18001000
#data 0x03000800

data_CE34BB0:
#data 0x10000004
#data 0x0000000C
#data 0x0300

data_CE34BBA:
#data 0x0003
#data 0x00081000
#data 0x10000000
#data 0x08001800
#data 0x0060

data_CE34BCA:
#data 0x0004
#data 0x00171100
#data 0x02000000
#data 0x08000200
#data 0x01000040

ptr_CE34BDC_to_code_CE304AC:
#data code_CE304AC

ptr_CE34BE0_to_code_CE3001C:
#data code_CE3001C

ptr_CE34BE4_to_code_CE308A0:
#data code_CE308A0

ptr_CE34BE8_to_code_CE30D02:
#data code_CE30D02

ptr_CE34BEC_to_code_CE30E2C:
#data code_CE30E2C

ptr_CE34BF0_to_code_CE30F90:
#data code_CE30F90

ptr_CE34BF4_to_code_CE310F0:
#data code_CE310F0

ptr_CE34BF8_to_code_CE312B8:
#data code_CE312B8

ptr_CE34BFC_to_code_CE3146C:
#data code_CE3146C

ptr_CE34C00_to_code_CE33CF4:
#data code_CE33CF4

ptr_CE34C04_to_code_CE33D50:
#data code_CE33D50

ptr_CE34C08_to_code_CE33EC2:
#data code_CE33EC2

ptr_CE34C0C_to_code_CE349B4:
#data code_CE349B4

ptr_CE34C10_to_code_CE3042C:
#data code_CE3042C

ptr_CE34C14_to_code_CE33B6E:
#data code_CE33B6E

ptr_CE34C18_to_code_CE30D3C:
#data code_CE30D3C

ptr_CE34C1C_to_code_CE349FC:
#data code_CE349FC

ptr_CE34C20_to_code_CE34A2A:
#data code_CE34A2A

ptr_CE34C24_to_code_CE34A58:
#data code_CE34A58

ptr_CE34C28_to_code_CE34A86:
#data code_CE34A86
#data 0x00000000
#data 0x00000000
#data 0x00000000

ptr_CE34C38_to_code_CE34910:
#data code_CE34910

ptr_CE34C3C_to_code_CE348C6:
#data code_CE348C6
#data 0x00000000
#data 0x00000000
#data 0x00000000

data_CE34C4C:
#data 0x03020100
#data 0x07060504
#data 0x0B0A0908

data_CE34C58:
#data 0x0100

data_CE34C5A:
#data 0x0002
#data 0x01000201
#data 0x02010002
#data 0x0100

data_CE34C66:
#data 0x0702
#data 0x08080707
#data 0x09090908
#data 0x0A0A

data_CE34C72:
#data 0x000A
#data 0x03000000
#data 0x02010004
#data 0x0000

data_CE34C7E:
#data 0x0C00
#data 0x100F0E0D

data_CE34C84:
#data 0x02010011

data_CE34C88:
#data 0x00020100
#data 0x0201

data_CE34C8E:
#data 0x0B0B
#data 0x0C0C0C0B

ptr_CE34C94_to_code_CE3064A:
#data code_CE3064A

ptr_CE34C98_to_code_CE3084A:
#data code_CE3084A

ptr_CE34C9C_to_code_CE30768:
#data code_CE30768

ptr_CE34CA0_to_code_CE3064A:
#data code_CE3064A

ptr_CE34CA4_to_code_CE30918:
#data code_CE30918

ptr_CE34CA8_to_code_CE30980:
#data code_CE30980

ptr_CE34CAC_to_code_CE30A04:
#data code_CE30A04

ptr_CE34CB0_to_code_CE30A94:
#data code_CE30A94

ptr_CE34CB4_to_code_CE30AB6:
#data code_CE30AB6

ptr_CE34CB8_to_code_CE30B5C:
#data code_CE30B5C

ptr_CE34CBC_to_code_CE30BA0:
#data code_CE30BA0

ptr_CE34CC0_to_code_CE30BE4:
#data code_CE30BE4

ptr_CE34CC4_to_code_CE30C58:
#data code_CE30C58

data_CE34CC8:
#data 0x00000000
#data 0xC1555555
#data 0xC1555555
#data 0xC1D55555
#data 0xC2A00000

ptr_CE34CDC_to_code_CE30A3E:
#data code_CE30A3E

ptr_CE34CE0_to_code_CE308B4:
#data code_CE308B4

ptr_CE34CE4_to_code_CE30A26:
#data code_CE30A26

ptr_CE34CE8_to_code_CE30CF2:
#data code_CE30CF2

ptr_CE34CEC_to_code_CE30E70:
#data code_CE30E70

ptr_CE34CF0_to_code_CE30EB2:
#data code_CE30EB2

ptr_CE34CF4_to_code_CE30F30:
#data code_CE30F30

ptr_CE34CF8_to_code_CE30FD0:
#data code_CE30FD0

ptr_CE34CFC_to_code_CE31012:
#data code_CE31012

ptr_CE34D00_to_code_CE31090:
#data code_CE31090

ptr_CE34D04_to_code_CE31130:
#data code_CE31130

ptr_CE34D08_to_code_CE311B4:
#data code_CE311B4

ptr_CE34D0C_to_code_CE31284:
#data code_CE31284

data_CE34D10:
#data 0x03020100

data_CE34D14:
#data 0x09020909

data_CE34D18:
#data 0x06050409
#data 0x06050807
#data 0x00000007

ptr_CE34D24_to_code_CE31480:
#data code_CE31480

ptr_CE34D28_to_code_CE31486:
#data code_CE31486

ptr_CE34D2C_to_code_CE3148C:
#data code_CE3148C

ptr_CE34D30_to_code_CE31492:
#data code_CE31492

ptr_CE34D34_to_code_CE31708:
#data code_CE31708

ptr_CE34D38_to_code_CE3170E:
#data code_CE3170E

ptr_CE34D3C_to_code_CE31714:
#data code_CE31714

ptr_CE34D40_to_code_CE3171A:
#data code_CE3171A

ptr_CE34D44_to_code_CE31720:
#data code_CE31720

ptr_CE34D48_to_code_CE318EA:
#data code_CE318EA

ptr_CE34D4C_to_code_CE318F0:
#data code_CE318F0

ptr_CE34D50_to_code_CE318F6:
#data code_CE318F6

ptr_CE34D54_to_code_CE31C02:
#data code_CE31C02

ptr_CE34D58_to_code_CE31CEC:
#data code_CE31CEC

ptr_CE34D5C_to_code_CE31F64:
#data code_CE31F64

ptr_CE34D60_to_code_CE31F6A:
#data code_CE31F6A

ptr_CE34D64_to_code_CE31F70:
#data code_CE31F70

ptr_CE34D68_to_code_CE31F76:
#data code_CE31F76

ptr_CE34D6C_to_code_CE321B2:
#data code_CE321B2

ptr_CE34D70_to_code_CE32396:
#data code_CE32396

ptr_CE34D74_to_code_CE323FE:
#data code_CE323FE

ptr_CE34D78_to_code_CE32B82:
#data code_CE32B82

ptr_CE34D7C_to_code_CE32B88:
#data code_CE32B88

ptr_CE34D80_to_code_CE32E8C:
#data code_CE32E8C

ptr_CE34D84_to_code_CE3325C:
#data code_CE3325C

ptr_CE34D88_to_code_CE333FC:
#data code_CE333FC

ptr_CE34D8C_to_code_CE33402:
#data code_CE33402

ptr_CE34D90_to_code_CE3350C:
#data code_CE3350C

ptr_CE34D94_to_code_CE337F0:
#data code_CE337F0

ptr_CE34D98_to_code_CE314F8:
#data code_CE314F8

ptr_CE34D9C_to_code_CE31574:
#data code_CE31574

ptr_CE34DA0_to_code_CE31588:
#data code_CE31588

ptr_CE34DA4_to_code_CE31654:
#data code_CE31654

ptr_CE34DA8_to_code_CE316E6:
#data code_CE316E6

data_CE34DAC:
#data 0xC1200000
#data 0x3E555555
#data 0xC1555555
#data 0x3E555555
#data 0xC1855555
#data 0x3E555555

ptr_CE34DC4_to_code_CE3175C:
#data code_CE3175C

ptr_CE34DC8_to_code_CE317D8:
#data code_CE317D8

ptr_CE34DCC_to_code_CE31800:
#data code_CE31800

ptr_CE34DD0_to_code_CE31838:
#data code_CE31838

data_CE34DD4:
#data 0xC1200000
#data 0xC1555555
#data 0xC1855555
#data 0x41892492
#data 0x41CDB6DB
#data 0x42092492

ptr_CE34DEC_to_code_CE31908:
#data code_CE31908

ptr_CE34DF0_to_code_CE31976:
#data code_CE31976

ptr_CE34DF4_to_code_CE319E8:
#data code_CE319E8

ptr_CE34DF8_to_code_CE31B20:
#data code_CE31B20

ptr_CE34DFC_to_code_CE31B90:
#data code_CE31B90

ptr_CE34E00_to_code_CE31C14:
#data code_CE31C14

ptr_CE34E04_to_code_CE31C84:
#data code_CE31C84

ptr_CE34E08_to_code_CE31CCA:
#data code_CE31CCA

ptr_CE34E0C_to_code_CE31D0A:
#data code_CE31D0A

ptr_CE34E10_to_code_CE31D5E:
#data code_CE31D5E

ptr_CE34E14_to_code_CE31DBC:
#data code_CE31DBC

ptr_CE34E18_to_code_CE31E6C:
#data code_CE31E6C

ptr_CE34E1C_to_code_CE31EA2:
#data code_CE31EA2

data_CE34E20:
#data 0x03030201

ptr_CE34E24_to_code_CE31F94:
#data code_CE31F94

ptr_CE34E28_to_code_CE3202C:
#data code_CE3202C

ptr_CE34E2C_to_code_CE32096:
#data code_CE32096

ptr_CE34E30_to_code_CE3212C:
#data code_CE3212C

ptr_CE34E34_to_code_CE32190:
#data code_CE32190

data_CE34E38:
#data 0xC1555555
#data 0xC1A00000
#data 0xC1855555
#data 0xBF092492
#data 0xBE092492
#data 0xBE892492

data_CE34E50:
#data 0x3FC80000
#data 0x40200000
#data 0x3FD55555

ptr_CE34E5C_to_code_CE321D0:
#data code_CE321D0

ptr_CE34E60_to_code_CE3225E:
#data code_CE3225E

ptr_CE34E64_to_code_CE32374:
#data code_CE32374

data_CE34E68:
#data 0xC12D5555
#data 0xC12D5555
#data 0xC12D5555

data_CE34E74:
#data 0x00060002
#data 0x00000004

ptr_CE34E7C_to_code_CE3244C:
#data code_CE3244C

ptr_CE34E80_to_code_CE3249C:
#data code_CE3249C

ptr_CE34E84_to_code_CE32500:
#data code_CE32500

ptr_CE34E88_to_code_CE32598:
#data code_CE32598

ptr_CE34E8C_to_code_CE326D4:
#data code_CE326D4

ptr_CE34E90_to_code_CE32784:
#data code_CE32784

ptr_CE34E94_to_code_CE32860:
#data code_CE32860

ptr_CE34E98_to_code_CE328D8:
#data code_CE328D8

ptr_CE34E9C_to_code_CE3292E:
#data code_CE3292E

ptr_CE34EA0_to_code_CE329E8:
#data code_CE329E8

ptr_CE34EA4_to_code_CE32A9C:
#data code_CE32A9C

ptr_CE34EA8_to_code_CE32B5C:
#data code_CE32B5C

ptr_CE34EAC_to_code_CE32BA6:
#data code_CE32BA6

ptr_CE34EB0_to_code_CE32C50:
#data code_CE32C50

ptr_CE34EB4_to_code_CE32CB4:
#data code_CE32CB4

ptr_CE34EB8_to_code_CE32D4C:
#data code_CE32D4C

ptr_CE34EBC_to_code_CE32DDC:
#data code_CE32DDC

ptr_CE34EC0_to_code_CE32E5E:
#data code_CE32E5E

data_CE34EC4:
#data 0x414DB6DB
#data 0xBE892492
#data 0x41892492
#data 0xBEAB6DB6
#data 0x41AB6DB6
#data 0xBECDB6DB

data_CE34EDC:
#data 0x00200040
#data 0x0020

data_CE34EE2:
#data 0x0030
#data 0x00500040

data_CE34EE8:
#data 0x000A0008
#data 0x0000000C

data_CE34EF0:
#data 0x419A4924
#data 0xC14DB6DB
#data 0x41B40000
#data 0xC1700000
#data 0x41CDB6DB
#data 0xC1892492

ptr_CE34F08_to_code_CE32E9E:
#data code_CE32E9E

ptr_CE34F0C_to_code_CE32F08:
#data code_CE32F08

ptr_CE34F10_to_code_CE32FA2:
#data code_CE32FA2

ptr_CE34F14_to_code_CE3309C:
#data code_CE3309C

ptr_CE34F18_to_code_CE330F8:
#data code_CE330F8

ptr_CE34F1C_to_code_CE3322C:
#data code_CE3322C

ptr_CE34F20_to_code_CE3327A:
#data code_CE3327A

ptr_CE34F24_to_code_CE332D0:
#data code_CE332D0

ptr_CE34F28_to_code_CE3335C:
#data code_CE3335C

ptr_CE34F2C_to_code_CE333DA:
#data code_CE333DA

ptr_CE34F30_to_code_CE33414:
#data code_CE33414

ptr_CE34F34_to_code_CE334AC:
#data code_CE334AC

ptr_CE34F38_to_code_CE334EA:
#data code_CE334EA

ptr_CE34F3C_to_code_CE3351E:
#data code_CE3351E

ptr_CE34F40_to_code_CE3359E:
#data code_CE3359E

ptr_CE34F44_to_code_CE33644:
#data code_CE33644

ptr_CE34F48_to_code_CE3369A:
#data code_CE3369A

ptr_CE34F4C_to_code_CE337CE:
#data code_CE337CE

ptr_CE34F50_to_code_CE3380E:
#data code_CE3380E

ptr_CE34F54_to_code_CE3387E:
#data code_CE3387E

ptr_CE34F58_to_code_CE33948:
#data code_CE33948

ptr_CE34F5C_to_code_CE33A44:
#data code_CE33A44

ptr_CE34F60_to_code_CE33A96:
#data code_CE33A96

ptr_CE34F64_to_code_CE33AEC:
#data code_CE33AEC

ptr_CE34F68_to_code_CE33B4E:
#data code_CE33B4E

ptr_CE34F6C_to_code_CE33BAC:
#data code_CE33BAC

ptr_CE34F70_to_code_CE33C32:
#data code_CE33C32

ptr_CE34F74_to_code_CE33C9E:
#data code_CE33C9E

data_CE34F78:
#data 0x00000001
#data 0x00000000
#data 0x00000001
#data 0x00000000

ptr_CE34F88_to_code_CE33D68:
#data code_CE33D68

ptr_CE34F8C_to_code_CE33DDC:
#data code_CE33DDC

ptr_CE34F90_to_code_CE33E1C:
#data code_CE33E1C

ptr_CE34F94_to_code_CE33E1C:
#data code_CE33E1C

ptr_CE34F98_to_code_CE33E7E:
#data code_CE33E7E

data_CE34F9C:
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018
#data 0x00180018

ptr_CE3501C_to_code_CE33EE0:
#data code_CE33EE0

ptr_CE35020_to_code_CE33F16:
#data code_CE33F16

ptr_CE35024_to_code_CE341C8:
#data code_CE341C8

ptr_CE35028_to_code_CE34380:
#data code_CE34380

ptr_CE3502C_to_code_CE33EE0:
#data code_CE33EE0

ptr_CE35030_to_code_CE33F28:
#data code_CE33F28

ptr_CE35034_to_code_CE33FC2:
#data code_CE33FC2

ptr_CE35038_to_code_CE3404C:
#data code_CE3404C

ptr_CE3503C_to_code_CE340F8:
#data code_CE340F8


code_CE35040:
bra code_CE34598
sts.l macl,@-r1

#data 0x00000000
#data 0x41F89249
#data 0xBFCDB6DB
#data 0x40BAAAAA
#data 0x00000000
#data 0x420D6DB7
#data 0xBF892492
#data 0x40BAAAAA
#data 0x00000000
#data 0x420D6DB7
#data 0xBF892492

ptr_CE35070_to_code_CE341E4:
#data code_CE341E4

ptr_CE35074_to_code_CE34250:
#data code_CE34250

ptr_CE35078_to_code_CE342B2:
#data code_CE342B2

ptr_CE3507C_to_code_CE3439A:
#data code_CE3439A

ptr_CE35080_to_code_CE34440:
#data code_CE34440

ptr_CE35084_to_code_CE344C6:
#data code_CE344C6

ptr_CE35088_to_code_CE34540:
#data code_CE34540

data_CE3508C:
#data 0x03020201
#data 0x03010305
#data 0x02000203
#data 0x02010103
#data 0x02030502
#data 0x01030103
#data 0x03000000
#data 0x05010201
#data 0x05020103
#data 0x01010503
#data 0x01030203
#data 0x02020502
#data 0x02020202
#data 0x02010102
#data 0x00050301
#data 0x00000000
#data 0x03840000
#data 0x02580384
#data 0x00000384
#data 0x03840000
#data 0x03840384

data_CE350E0:
#data 0x02010000
#data 0x03050403
#data 0x0303

data_CE350EA:
#data 0x1818

data_CE350EC:
#data 0x18181818

data_CE350F0:
#data 0x0103010D
#data 0x010B

data_CE350F6:
#data 0x010D
#data 0x010B0103
