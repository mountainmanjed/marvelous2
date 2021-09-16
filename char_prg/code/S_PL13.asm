;============================================
;Ruby Heart Program
;============================================
#symbol loc_8c054508 0x8C054508
#symbol loc_8c054B34 0x8C054B34
#symbol loc_8c05496C 0x8C05496C
#symbol loc_8c054D04 0x8C054D04
#symbol loc_8c054DA0 0x8C054DA0
#symbol loc_8c053E00 0x8C053E00
#symbol loc_8c0542E0 0x8C0542E0
#symbol loc_8c054E58 0x8C054E58
#symbol loc_8c055C3A 0x8C055C3A
#symbol loc_8c0530D8 0x8C0530D8
#symbol loc_8c0555C8 0x8C0555C8
#symbol loc_8c054D1C 0x8C054D1C
#symbol loc_8c052B4C 0x8C052B4C
#symbol loc_8c04223A 0x8C04223A
#symbol mem_8c2896b0 0x8C2896B0
#symbol loc_8c034E8C 0x8C034E8C
#symbol loc_8c0511E2 0x8C0511E2
#symbol loc_8c052C84 0x8C052C84
#symbol loc_8c034DEE 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04FF88 0x8C04FF88
#symbol loc_8c04FEA8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052CE2 0x8C052CE2
#symbol loc_8c052DAC 0x8C052DAC
#symbol loc_8c05176E 0x8C05176E
#symbol loc_8c056DE4 0x8C056DE4
#symbol loc_8c0CE62C 0x8C0CE62C
#symbol loc_8c0FDAB6 0x8C0FDAB6
#symbol loc_8c046C8A 0x8C046C8A
#symbol loc_8c035162 0x8C035162
#symbol loc_8c05218A 0x8C05218A
#symbol loc_8c03319E 0x8C03319E
#symbol loc_8c0514B8 0x8C0514B8
#symbol loc_8c05115A 0x8C05115A
#symbol loc_8c03544C 0x8C03544C
#symbol loc_8c053082 0x8C053082
#symbol loc_8c07A428 0x8C07A428
#symbol loc_8c26A5B8 0x8C26A5B8
#symbol loc_8c0511B4 0x8C0511B4
#symbol loc_8c050834 0x8C050834
#symbol loc_8c042008 0x8C042008
#symbol loc_8c03362C 0x8C03362C
#symbol loc_8c02FEC4 0x8C02FEC4
#symbol loc_8c26A5A0 0x8C26A5A0
#symbol loc_8c26A5A4 0x8C26A5A4
#symbol loc_8c26A8E4 0x8C26A8E4
#symbol loc_8c289732 0x8C289732
#symbol loc_8c10235C 0x8C10235C
#symbol loc_8c05923C 0x8C05923C
#symbol loc_8c050EA4 0x8C050EA4
#symbol loc_8c045790 0x8C045790
#symbol loc_8c103660 0x8C103660
#symbol loc_8c056F2A 0x8C056F2A
#symbol loc_8c04CC1C 0x8C04CC1C


;======================================================================
start_CE30000:
	mov.w @(loc_ce30046,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_ce30050_to_SPL_JumpTable,pc),r7 ; r7 set to 0xCE34864
	mov.l @(r0,r4),r6
	mov 0x00,r

loc_ce3000A:
	mov r4,r0
	nop
	add 0x04,r4
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s loc_ce3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;==============================================
loc_ce3001c:
	mov.w @(0x28,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE30040
	mov.w @(0x20,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_CE30040
	mov.w @(0x1a,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce3003a
	rts
	mov 0x00,r0

loc_ce3003a:
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_CE30040:
	mov 0x1,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30046:
	#data 0x0428
loc_ce30048:
	#data 0x01F9
loc_ce3004A:
	#data 0x01FC
loc_ce3004C:
	#data 0x01D4
	#align4

loc_ce30050_to_SPL_JumpTable:
	#data SPL_JumpTable

;==============================================
loc_ce30054:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce3010C_to_loc_8c054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30110_to_loc_8c054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30114_to_loc_8c05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30118_to_loc_8c054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce3039C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce3031A
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce303E2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce302C0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce30258
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce301DE
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE30128
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE30188
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE3046C
	mov r14,r4
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce3011C_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
	mov 0x0B,r5 ; r5 set to 0x0B
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce300f6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30432
	mov.l @r15+,r14

loc_ce300f6:
	mov.l @(loc_ce30120_to_loc_8c053E00,pc),r2 ; r2 set to 0x8C053E00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce30124_to_loc_8c0542E0,pc),r3 ; r3 set to 0x8C0542E0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30106:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_ce3010C_to_loc_8c054508:
	#data loc_8c054508
loc_ce30110_to_loc_8c054B34:
	#data loc_8c054B34
loc_ce30114_to_loc_8c05496C:
	#data loc_8c05496C
loc_ce30118_to_loc_8c054D04:
	#data loc_8c054D04
loc_ce3011C_to_loc_8c054DA0:
	#data loc_8c054DA0
loc_ce30120_to_loc_8c053E00:
	#data loc_8c053E00
loc_ce30124_to_loc_8c0542E0:
	#data loc_8c0542E0

;==============================================
loc_CE30128:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x110,pc),r5
	mov.w @(0xfc,pc),r6
	mov.l @(0x110,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30150
	mov.w @(0xf0,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3015e
	mov.w @(0xe8,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30158

loc_CE30150:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE30158:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_CE3015E:
	mov.w @(0xce,pc),r5
	mov.l @(0xe4,pc),r2
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
	mov.w @(0xbc,pc),r0
	mov.l @(0xd0,pc),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30188:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xc0,pc),r5
	mov.w @(0xa4,pc),r6
	mov.l @(0xb0,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301ae
	mov.w @(0x98,pc),r4
	add r14,r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_ce301ae
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_ce301b6

loc_CE301AE:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE301B6:
	mov.w @(0x7e,pc),r5
	mov.l @(0x8c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x66,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x78,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE301DE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x6c,pc),r5
	mov.w @(0x52,pc),r6
	mov.l @(0x58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30200
	mov.w @(0x42,pc),r4
	mov 0x14,r0
	add r14,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce30208

loc_ce30200:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30208:
	mov.l @(0x3c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x14,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x28,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30230:
	#data 0x0364
loc_ce30232:
	#data 0x01F9
loc_ce30234:
	#data 0x01D4
loc_ce30236:
	#data 0x01E9
loc_ce30238:
	#data 0x036C
loc_ce3023a:
	#data 0x02A4
loc_ce3023c:
	#data 0x0374
	#align4

loc_ce30240_to_loc_ce3439C:
	#data loc_ce3439C
loc_ce30244:
	#data loc_8c054E58
loc_ce30248:
	#data loc_8c055C3A
loc_ce3024c:
	#data loc_8c0530D8

loc_ce30250_to_loc_ce343AC:
	#data loc_ce343AC
loc_ce30254_to_loc_ce343BC:
	#data loc_ce343BC

;==============================================
loc_ce30258:
	mov.l r14,@-r15                     
	mov r4,r14                          
	sts.l pr,@-r15                      
	mov.l @(0xfc,pc),r5                 
	mov.w @(0xe8,pc),r6                 
	mov.l @(0xfc,pc),r3                 
	jsr @r3                              
	add r14,r6                          
	extu.b r0,r0                        
	tst r0,r0                           
	bt loc_ce30290                        
	mov.w @(0xdc,pc),r0                 
	mov.b @(r0,r14),r0                  
	extu.b r0,r0                        
	cmp/eq 0x02,r0                      
	bf loc_ce30286                        
	mov.w @(0xd4,pc),r0                 
	mov.b @(r0,r14),r2                  
	tst r2,r2                           
	bf loc_ce30290                        
	mov.b @(r0,r14),r2                  
	add 0x01,r2                         
	mov.b r2,@(r0,r14)                

loc_ce30286:
	mov.w @(0xc8,pc),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_ce30298

loc_ce30290:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30298:
	mov.w @(0xb0,pc),r5                 
	mov.l @(0xc8,pc),r3                 
	add r14,r5                          
	jsr @r3                              
	mov r14,r4                          
	mov 0x00,r0                         
	mov.b r0,@(0x5,r14)                 
	mov 0x03,r3                         
	mov.b r0,@(0x7,r14)                 
	mov 0x1D,r5                         
	mov.b r0,@(0x6,r14)                 
	mov.w @(0xa2,pc),r0                 
	mov.b r3,@(r0,r14)                  
	mov.l @(0xb4,pc),r3                 
	jsr @r3                              
	mov r14,r4                          
	mov 0x01,r0                         
	lds.l @r15+,pr                      
	rts                                  
	mov.l @r15+,r14

;==============================================
loc_ce302C0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xa4,pc),r5
	mov.w @(0x8a,pc),r6
	mov.l @(0x94,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce302ea
	mov.w @(0x7e,pc),r4
	add r14,r4
	mov.b @(0x1,r4),r0
	tst r0,r0
	bf loc_ce302ea
	mov.w @(0x6e,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce302f2

loc_ce302EA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce302F2:
	mov.l @r15+,r14
	mov.w @(0x60,pc),r5
	mov.l @(0x6c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x48,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x58,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3031A:
	mov.l r14,@-r15                     
	mov r4,r14                          
	sts.l pr,@-r15                      
	mov.l @(0x4c,pc),r5                 
	mov.w @(0x34,pc),r6                 
	mov.l @(0x38,pc),r3                 
	jsr @r3                              
	add r14,r6                          
	extu.b r0,r0                        
	tst r0,r0                           
	bt loc_ce30344                        
	bsr loc_ce3001c
	mov r14,r4                          
	extu.b r0,r0                        
	tst r0,r0                           
	bt loc_ce30344                        
	mov.w @(0x14,pc),r0                 
	mov.l @(r0,r14),r2                  
	mov.b @r2,r3                        
	tst r3,r3                           
	bf loc_ce30374                        

loc_ce30344:
	lds.l @r15+,pr                      
	mov 0x00,r0                         
	rts                                  
	mov.l @r15+,r14  

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30346:
	#data 0x037C
loc_ce30348:
	#data 0x01F9
loc_ce3034a:
	#data 0x01D4
loc_ce3034c:
	#data 0x040C
loc_ce3034e:
	#data 0x01E9
loc_ce30350:
	#data 0x0384
loc_ce30352:
	#data 0x02A4
loc_ce30354:
	#data 0x038C
	#align4

loc_ce3035C_to_loc_ce343CC:
	#data loc_ce343CC
loc_ce30360:
	#data loc_8c054E58
loc_ce30364:
	#data loc_8c055C3A
loc_ce30368:
	#data loc_8c0530D8
loc_ce3036C_to_loc_ce343DC:
	#data loc_ce343DC
loc_ce30370_to_loc_ce343EC:
	#data loc_ce343EC

;==============================================
loc_ce30374:
	mov.w @(0x114,pc),r5
	mov.l @(0x120,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x05,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x100,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x10c,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3039C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce304A0_to_loc_ce3440E,pc),r5 ; r5 set to 0xCE3440E
	mov.w @(loc_ce30490,pc),r6 ; r6 set to 0x394
	mov.l @(loc_ce304A4_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_ce303BA
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_ce303BA:
	mov.w @(loc_ce30490,pc),r5 ; r5 set to 0x394
	mov.l @(loc_ce30498_to_loc_8c055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x06,r3 ; r3 set to 0x06
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce3048E,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce3049C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce303E2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xbc,pc),r5
	mov.w @(0xa4,pc),r6
	mov.l @(0xbc,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30402
	mov.w @(0x98,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3040a

loc_ce30402:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce3040A:
	mov.w @(0x84,pc),r5
	mov.l @(0x88,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x09,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x6a,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x74,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30432:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce304B0_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x0B,r5 ; r5 set to 0x0B
	extu.b r0,r0
	tst r0,r0
	bf loc_ce3044C
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3044C:
	mov.w @(loc_ce3048E,pc),r0 ; r0 set to 0x1E9
	mov 0x0B,r3 ; r3 set to 0x0B
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_ce3049C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3046C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x40,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce30484
	mov.w @(0x16,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce304b8

loc_ce30484:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3048c:
	#data 0x038C
loc_ce3048E:
	#data 0x01E9
loc_ce30490:
	#data 0x0394
loc_ce30492:
	#data 0x039C
loc_ce30494:
	#data 0x040C
	#align4

loc_ce30498_to_loc_8c055C3A:
	#data loc_8c055C3A
loc_ce3049C_to_loc_8c0530D8:
	#data loc_8c0530D8
loc_ce304A0_to_loc_ce3440E:
	#data loc_ce3440E
loc_ce304A4_to_loc_8c054E58:
	#data loc_8c054E58
loc_ce304A8_to_loc_ce343FC:
	#data loc_ce343FC
loc_ce304AC:
	#data loc_8c0555C8
loc_ce304B0_to_loc_8c054DA0:
	#data loc_8c054DA0
loc_ce304B4:
	#data loc_8c054D1C

;==============================================
loc_ce304B8:
	mov.w @(0xf2,pc),r0
	mov 0x0A,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0xf8,pc),r3
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
Rby_DlyHypC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce3050c
	mov r4,r14
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce30542
	mov r14,r4
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce30578
	mov r14,r4
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce305d4
	mov r14,r4
	tst r0,r0
	bt loc_ce30504

loc_ce304FC:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_ce30504:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3050C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xac,pc),r5
	mov.w @(0x98,pc),r6
	mov.l @(0xac,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3052c
	mov.w @(0x8c,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30534

loc_ce3052C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30534:
	mov.w @(0x7c,pc),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30542:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x7c,pc),r5
	mov.w @(0x68,pc),r6
	mov.l @(0x74,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30562
	mov.w @(0x56,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3056a

loc_ce30562:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce3056A:
	mov.w @(0x46,pc),r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30578:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x4c,pc),r5
	mov.w @(0x34,pc),r6
	mov.l @(0x4c,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30598
	mov.w @(0x20,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce305a0

loc_ce30598:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14 

loc_ce305A0:
	mov.w @(0x10,pc),r0
	mov 0x09,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce305ae:
	#data 0x01E9
loc_ce305b0:
	#data 0x038C
loc_ce305b2:
	#data 0x040C
loc_ce305b4:
	#data 0x0258
loc_ce305b6:
	#data 0x037C
loc_ce305b8:
	#data 0x039C
	#align4

loc_ce305bc:
	#data loc_8c0530D8
loc_ce305C0_to_loc_ce343EC:
	#data loc_ce343EC
loc_ce305C4:
	#data loc_8c054E58
loc_ce305C8_to_loc_ce343CC:
	#data loc_ce343CC
loc_ce305CC_to_loc_ce343FC:
	#data loc_ce343FC
loc_ce305d0:
	#data loc_8c0555C8

;==============================================
loc_CE305D4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xe4,pc),r5
	mov.w @(0xd2,pc),r6
	mov.l @(0xe4,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce305f4
	mov.w @(0xc6,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce305fc

loc_ce305F4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce305FC:
	mov.w @(0xb6,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3060A:
	rts
	nop

;==============================================
loc_ce3060E:
	mov.w @(loc_ce306B8,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce306C8_to_loc_ce348D4_to_loc_ce3066A,pc),r0 ; r0 set to 0xCE348D4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce30622:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce306CC_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce306BA,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30650
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30648
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce308F4
	mov.l @r15+,r14

loc_ce30648:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30848
	mov.l @r15+,r14

loc_ce30650:
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30662
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30778
	mov.l @r15+,r14

loc_ce30662:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce306D0
	mov.l @r15+,r14

loc_ce3066A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce306CC_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce306BA,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30698
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30690
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce308F4
	mov.l @r15+,r14

loc_ce30690:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30848
	mov.l @r15+,r14

loc_ce30698:
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce306AA
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30778
	mov.l @r15+,r14

loc_ce306AA:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce306D0
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce306b2:
	#data 0x0384
loc_ce306b4:
	#data 0x040C
loc_ce306b6:
	#data 0x0258
loc_ce306B8:
	#data 0x01FF
loc_ce306BA:
	#data 0x01FE
loc_ce306BC:
	#data 0x01F9
	#align4

loc_ce306C0_to_loc_ce343DC:
	#data loc_ce343DC
loc_ce306C4:
	#data loc_8c054E58
loc_ce306C8_to_loc_ce348D4_to_loc_ce3066A:
	#data loc_ce348D4_to_loc_ce3066A
loc_ce306CC_to_loc_8c052B4C:
	#data loc_8c052B4C

;==============================================
loc_ce306D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce307D4,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce307E0_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce306F6
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30710
	cmp/eq 0x02,r0
	bt loc_ce3072A
	bra loc_ce30744
	nop

loc_ce306F6:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce307DA,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30744
	mov.b r13,@(r0,r14)

loc_ce30710:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x01,r11 ; r11 set to 0x01
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r11,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
	mov.l r3,@(r0,r14)
	bra loc_ce30740
	nop

loc_ce3072A:
	mov.w @(0xa8,pc),r0
	mov 0x02,r11
	mov 0x1A,r5
	mov.b r11,@(r0,r14)
	add 0x49,r0
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x9a,pc),r0
	mov.l @(0xac,pc),r3
	mov.l r3,@(r0,r14)

loc_ce30740:
	mov.w @(0x96,pc),r0
	mov.b r11,@(r0,r14)

loc_ce30744:
	mov.w @(loc_ce307DC,pc),r0 ; r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(loc_ce307F0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce307F4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r11
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce30778:
	mov.w @(loc_ce307D4,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce307E0_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3079C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce307B8
	cmp/eq 0x02,r0
	bt loc_ce307F8
	bra loc_ce30816
	nop

loc_ce3079C:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce307DA,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30816
	mov.b r13,@(r0,r14)

loc_ce307B8:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
	mov.l r3,@(r0,r14)
	bra loc_ce30812
	mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce307D4:
	#data 0x01E8
loc_ce307D6:
	#data 0x0158
loc_ce307D8:
	#data 0x03F4
loc_ce307DA:
	#data 0x01A7
loc_ce307DC:
	#data 0x01AC
	#align4

loc_ce307E0_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce307E4_to_Stn_LPChain:
	#data Stn_LPChain
loc_ce307E8_to_Stn_MPChain:
	#data Stn_MPChain
loc_ce307EC_to_Stn_HPChain:
	#data Stn_HPChain
loc_ce307F0_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce307F4_to_loc_8c034E8C:
	#data loc_8c034E8C

;==============================================
loc_ce307F8:
	mov.w @(0x118,pc),r0
	mov 0x02,r1
	mov 0x08,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x1A,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x108,pc),r0
	mov 0x02,r2
	mov.l @(0x110,pc),r3
	mov.l r3,@(r0,r14)

loc_ce30812:
	mov.w @(0x102,pc),r0
	mov.b r2,@(r0,r14)

loc_ce30816:
	mov.w @(loc_ce3091A,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(loc_ce30924_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30928_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_ce30848:
	mov.w @(loc_ce3091C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce3092C_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3086C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30888
	cmp/eq 0x02,r0
	bt loc_ce308A4
	bra loc_ce308C2
	nop

loc_ce3086C:
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30916,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30930_to_Stn_LKChain,pc),r3 ; r3 set to 0xCE34360
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce30918,pc),r0 ; r0 set to 0x1A7
	bra loc_ce308C2
	mov.b r13,@(r0,r14)

loc_ce30888:
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30916,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30934_to_Stn_MKChain,pc),r3 ; r3 set to 0xCE34364
	mov.l r3,@(r0,r14)
	bra loc_ce308BE
	mov 0x01,r2
	
loc_ce308A4:
	mov.w @(0x6c,pc),r0
	mov 0x02,r1
	mov 0x05,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x5c,pc),r0
	mov 0x02,r2
	mov.l @(0x7c,pc),r3
	mov.l r3,@(r0,r14)

loc_ce308BE:
	mov.w @(0x56,pc),r0
	mov.b r2,@(r0,r14)

loc_ce308C2:
	mov.w @(loc_ce3091A,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(loc_ce30924_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30928_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce308F4:
	mov.w @(loc_ce3091C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3093C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce3095A
	cmp/eq 0x02,r0
	bt loc_ce3097C
	bra loc_ce30992
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30914:
	#data 0x0158
loc_ce30916:
	#data 0x03F4
loc_ce30918:
	#data 0x01A7
loc_ce3091A:
	#data 0x01AC
loc_ce3091C:
	#data 0x01E8
	#align4

loc_ce30920_to_Stn_HPChain:
	#data Stn_HPChain
loc_ce30924_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce30928_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce3092C_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce30930_to_Stn_LKChain:
	#data Stn_LKChain
loc_ce30934_to_Stn_MKChain:
	#data Stn_MKChain
loc_ce30938_to_Stn_HKChain:
	#data Stn_HKChain

;==============================================
loc_ce3093C:
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30A22,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30A34_to_Stn_LKChain,pc),r2 ; r2 set to 0xCE34360
	mov.l r2,@(r0,r14)
	mov.w @(loc_ce30A24,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30992
	mov.b r13,@(r0,r14)

loc_ce3095A:
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30A22,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_ce30A38_to_Stn_MKChain,pc),r2 ; r2 set to 0xCE34364
	mov.l r2,@(r0,r14)
	mov.w @(loc_ce30A24,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30992
	mov.b r3,@(r0,r14)

loc_ce3097C:
	mov.w @(0xa0,pc),r0
	mov 0x02,r4
	mov 0x0B,r3
	mov.l @(0xb8,pc),r2
	mov.b r4,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x94,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(0x92,pc),r0
	mov.b r4,@(r0,r14)

loc_ce30992:
	mov.w @(loc_ce30A26,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_ce30A40_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30A44_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13
	mov.b @(r0,r14),r6
	jmp @r2
	mov.l @r15+,r14

loc_ce309C2:
	mov.w @(0x62,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce309d2
	mov.w @(0x5c,pc),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce309e2

loc_ce309D2:
	mov.w @(0x52,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce309e6
	mov.w @(0x4c,pc),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce309e6

loc_ce309E2:
	bra loc_ce309ea
	nop

loc_ce309E6:
	rts
	nop

;==============================================
loc_ce309EA:
	mov.w @(loc_ce30A28,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce309F8
	bra loc_ce30B12
	nop

loc_ce309F8:
	bra loc_ce309FC
	nop

loc_ce309FC:
	mov.w @(loc_ce30A2C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce30A48
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30A74
	cmp/eq 0x02,r0
	bt loc_ce30AA0
	bra loc_ce30ACE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30A20:
	#data 0x0158
loc_ce30A22:
	#data 0x03F4
loc_ce30A24:
	#data 0x01A7
loc_ce30A26:
	#data 0x01AC
loc_ce30A28:
	#data 0x01FE
loc_ce30A2a:
	#data 0x01D6
loc_ce30A2C:
	#data 0x01E8
	#align4

loc_ce30A30_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce30A34_to_Stn_LKChain:
	#data Stn_LKChain
loc_ce30A38_to_Stn_MKChain:
	#data Stn_MKChain
loc_ce30A3C_to_Stn_HKChain:
	#data Stn_HKChain
loc_ce30A40_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce30A44_to_loc_8c034E8C:
	#data loc_8c034E8C

;==============================================
loc_ce30A48:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30A68
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B44_to_Crc_LPChain,pc),r3 ; r3 set to 0xCE3436C
	bra loc_ce30A6E
	mov.l r3,@(r0,r14)

loc_ce30A68:
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B48_to_Air_LPChain,pc),r1 ; r1 set to 0xCE34384
	mov.l r1,@(r0,r14)

loc_ce30A6E:
	mov.w @(loc_ce30B3C,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_ce30ACE
	mov.b r13,@(r0,r14)

loc_ce30A74:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0D,r3 ; r3 set to 0x0D
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30A96
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B4C_to_Crc_MPChain,pc),r3 ; r3 set to 0xCE34370
	bra loc_ce30A9C
	mov.l r3,@(r0,r14)

loc_ce30A96:
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B50_to_Air_MPChain,pc),r1 ; r1 set to 0xCE34388
	mov.l r1,@(r0,r14)

loc_ce30A9C:
	bra loc_ce30ACA
	mov 0x01,r3

loc_ce30AA0:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x0E,r3 ; r3 set to 0x0E
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x1A,r5 ; r5 set to 0x1A
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30AC2
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B54_to_Crc_HPChain,pc),r3 ; r3 set to 0xCE34374
	bra loc_ce30AC8
	mov.l r3,@(r0,r14)

loc_ce30AC2:
	mov.w @(0x74,pc),r0
	mov.l @(0x90,pc),r1
	mov.l r1,@(r0,r14)

loc_ce30AC8:
	mov 0x02,r3

loc_ce30ACA:
	mov.w @(0x6e,pc),r0
	mov.b r3,@(r0,r14)

loc_ce30ACE:
	mov.w @(0x6c,pc),r0
	mov 0x0B,r5
	mov.l @(0x88,pc),r3
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
	mov.w r1,@(r0,r2
	mov.w @(0x44,pc),r0
	mov.l @(0x6c,pc),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x44,pc),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce30b08
	mov.w @(0x3c,pc),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_ce30B08:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30B12:
	mov.w @(loc_ce30B42,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce30B64_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce30B68
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30B94
	cmp/eq 0x02,r0
	bt loc_ce30BC0
	bra loc_ce30BEE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30B36:
	#data 0x0158
loc_ce30B38:
	#data 0x01FC
loc_ce30B3A:
	#data 0x03F4
loc_ce30B3C:
	#data 0x01A7
loc_ce30B3e:
	#data 0x01AC
loc_ce30B40:
	#data 0x01D6
loc_ce30B42:
	#data 0x01E8
	#align4

loc_ce30B44_to_Crc_LPChain:
	#data Crc_LPChain
loc_ce30B48_to_Air_LPChain:
	#data Air_LPChain
loc_ce30B4C_to_Crc_MPChain:
	#data Crc_MPChain
loc_ce30B50_to_Air_MPChain:
	#data Air_MPChain
loc_ce30B54_to_Crc_HPChain:
	#data Crc_HPChain
loc_ce30B58_to_Air_HPChain:
	#data Air_HPChain
loc_ce30B5c:
	#data mem_8c2896b0
loc_ce30B60:
	#data loc_8c034E8C
loc_ce30B64_to_loc_8c04223A:
	#data loc_8c04223A

;==============================================
loc_ce30B68:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30B88
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C54_to_Crc_LKChain,pc),r3 ; r3 set to 0xCE34378
	bra loc_ce30B8E
	mov.l r3,@(r0,r14)

loc_ce30B88:
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C58_to_Air_LKChain,pc),r1 ; r1 set to 0xCE34390
	mov.l r1,@(r0,r14)

loc_ce30B8E:
	mov.w @(loc_ce30C4C,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_ce30BEE
	mov.b r13,@(r0,r14)

loc_ce30B94:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x10,r3 ; r3 set to 0x10
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30BB6
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C5C_to_Crc_MKChain,pc),r3 ; r3 set to 0xCE3437C
	bra loc_ce30BBC
	mov.l r3,@(r0,r14)

loc_ce30BB6:
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C60_to_Air_MKChain,pc),r1 ; r1 set to 0xCE34394
	mov.l r1,@(r0,r14)

loc_ce30BBC:
	bra loc_ce30BEA
	mov 0x01,r3

loc_ce30BC0:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x11,r3 ; r3 set to 0x11
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30BE2
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C64_to_Crc_HKChain,pc),r3 ; r3 set to 0xCE34380
	bra loc_ce30BE8
	mov.l r3,@(r0,r14)

loc_ce30BE2:
	mov.w @(0x64,pc),r0
	mov.l @(0x80,pc),r1
	mov.l r1,@(r0,r14)

loc_ce30BE8:
	mov 0x02,r3

loc_ce30BEA:
	mov.w @(0x5e,pc),r0
	mov.b r3,@(r0,r14)

loc_ce30BEE:
	mov.w @(0x5c,pc),r0
	mov 0x0C,r5
	mov.l @(0x78,pc),r3
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
	mov.w @(0x34,pc),r0
	mov.l @(0x5c,pc),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x34,pc),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce30c28
	mov.w @(0x2c,pc),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_ce30C28:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30C32:
	mov.w @(loc_ce30C52,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce30C74_to_loc_ce348E4_to_loc_ce30CFE,pc),r0 ; r0 set to 0xCE348E4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30C46:
	#data 0x0158
loc_ce30C48:
	#data 0x01FC
loc_ce30C4A:
	#data 0x03F4
loc_ce30C4C:
	#data 0x01A7
loc_ce30C4E:
	#data 0x01AC
loc_ce30C50:
	#data 0x01D6
loc_ce30C52:
	#data 0x01FF
	#align4

loc_ce30C54_to_Crc_LKChain:
	#data Crc_LKChain
loc_ce30C58_to_Air_LKChain:
	#data Air_LKChain
loc_ce30C5C_to_Crc_MKChain:
	#data Crc_MKChain
loc_ce30C60_to_Air_MKChain:
	#data Air_MKChain
loc_ce30C64_to_Crc_HKChain:
	#data Crc_HKChain
loc_ce30C68_to_Air_HKChain:
	#data Air_HKChain
loc_ce30C6c:
	#data mem_8c2896b0
loc_ce30C70:
	#data loc_8c034E8C
loc_ce30C74_to_loc_ce348E4_to_loc_ce30CFE:
	#data loc_ce348E4_to_loc_ce30CFE

;==============================================
loc_ce30C78:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce30D84_to_loc_8c0511E2,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce30D88_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30D80,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CE4
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CDC
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E3C
	mov.l @r15+,r14

loc_ce30CDC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DFC
	mov.l @r15+,r14

loc_ce30CE4:
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CF6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DC4
	mov.l @r15+,r14

loc_ce30CF6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E80
	mov.l @r15+,r14

loc_ce30CFE:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_ce30D88_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30D80,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D66
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D5E
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E3C
	mov.l @r15+,r14

loc_ce30D5E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DFC
	mov.l @r15+,r14

loc_ce30D66:
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D78
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DC4
	mov.l @r15+,r14

loc_ce30D78:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30D8C
	mov.l @r15+,r14

;##############################################
loc_ce30D80:
	#data 0x01FE
loc_ce30D82:
	#data 0x01F9
	#align4

loc_ce30D84_to_loc_8c0511E2:
	#data loc_8c0511E2
loc_ce30D88_to_loc_8c052C84:
	#data loc_8c052C84

;----------------------------------------------
loc_ce30D8C:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30DA8
	cmp/eq 0x00,r0
	bt loc_ce30DA8
	cmp/eq 0x01,r0
	bt loc_ce30DA8
	bra loc_ce30DBE
	nop

loc_ce30DA8:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30DBE
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30DBE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30DC4:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce30DE0
	cmp/eq 0x01,r0
	bt loc_ce30DE0
	cmp/eq 0x02,r0
	bt loc_ce30DE0
	bra loc_ce30DF6
	nop

loc_ce30DE0:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30DF6
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30DF6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30DFC:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_ce30E18
	cmp/eq 0x00,r0
	bt loc_ce30E20
	cmp/eq 0x02,r0
	bt loc_ce30E20
	bra loc_ce30E36
	nop

loc_ce30E18:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30F7C
	mov.l @r15+,r14

loc_ce30E20:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30E36
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

	loc_ce30E36:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30E3C:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce30E64
	cmp/eq 0x01,r0
	bt loc_ce30E64
	cmp/eq 0x02,r0
	bt loc_ce30E64
	bra loc_ce30E7A
	nop

;##############################################
loc_ce30E58:
	#data 0x01E8
	#align4

loc_ce30E5C_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce30E60_to_loc_8c051648:
	#data loc_8c051648

;----------------------------------------------
loc_ce30E64:
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30E7A
	lds.l @r15+,pr
	mov.l @(loc_ce30F5C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30E7A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30E80:
	mov.w @(loc_ce30F54,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30E9C
	cmp/eq 0x00,r0
	bt loc_ce30E9C
	cmp/eq 0x01,r0
	bt loc_ce30E9C
	bra loc_ce30EB2
	nop

loc_ce30E9C:
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30EB2
	lds.l @r15+,pr
	mov.l @(loc_ce30F5C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30EB2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30EB8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xa0,pc),r3
	jsr @r3
	mov r4,r14
	mov.l @(0xa0,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_ce30ECE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce30F68_to_loc_8c04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(loc_ce30F6C_to_loc_8c050048,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce30F56,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30EF0
	bsr loc_ce30F32
	mov r14,r4
	bra loc_ce30EF4
	nop

loc_ce30EF0:
	bsr loc_ce30F10
	mov r14,r4

loc_ce30EF4:
	mov.l @(loc_ce30F70_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2,r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30F0A
	lds.l @r15+,pr
	mov.l @(loc_ce30F74_to_loc_8c052DAC,pc),r3 ; r3 set to 0x8C052DAC,r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30F0A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30F10:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F2A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce30F78_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_ce30F2A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce30F32:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F4C
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce30F78_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_ce30F4C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30F54:
	#data 0x01E8
loc_ce30F56:
	#data 0x01FE
	#align4

loc_ce30F58_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce30F5C_to_loc_8c051648:
	#data loc_8c051648
loc_ce30F6:
	#data loc_8c050084
loc_ce30F6:
	#data loc_8c04FF88
loc_ce30F68_to_loc_8c04FEA8:
	#data loc_8c04FEA8
loc_ce30F6C_to_loc_8c050048:
	#data loc_8c050048
loc_ce30F70_to_loc_8c052CE2:
	#data loc_8c052CE2
loc_ce30F74_to_loc_8c052DAC:
	#data loc_8c052DAC
loc_ce30F78_to_loc_8c05176E:
	#data loc_8c05176E

;==============================================
loc_ce30F7C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x134,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F92
	mov.l @(0x12c,pc),r3
	jsr @r3
	mov r14,r4

loc_ce30F92:
	mov.w @(0x116,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce30fc4
	mov.w @(0x10e,pc),r0
	mov 0x00,r4
	mov 0x19,r3
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x10c,pc),r3
	mov.l r4,@(r0,r14
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2

loc_ce30FC4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30FCA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce31030
	mov.l @(0xec,pc),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xc8,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce31030
	mov.l @(0xd8,pc),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xb8,pc),r0
	mov 0x15,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xb8,pc),r3
	mov 0x16,r5
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2
	mov.w @(0x92,pc),r0
	mov.l @(0xac,pc),r2
	mov.b r4,@(r0,r14
	jsr @r2
	mov r14,r4
	mov.l @(0xa8,pc),r3
	mov 0x14,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4

loc_ce31030:
	mov.w @(0x80,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce31040
	mov.l @(0x98,pc),r2
	jsr @r2
	mov r14,r4

loc_ce31040:
	mov 0x5C,r1
	mov.l @(0x94,pc),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x38,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31094
	lds.l @r15+,pr
	mov.l @(0x2c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce31094:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
Rby_FwdDash:
	mov r4,r3
	mov.l @(loc_ce310DC_to_loc_ce348F4_to_loc_ce310E0,pc),r1 ; r1 set to 0xCE348F4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce310ac:
	#data 0x0141
loc_ce310ae:
	#data 0x01FE
loc_ce310b0:
	#data 0x01A1
loc_ce310b2:
	#data 0x01F9
loc_ce310b4:
	#data 0x01FF
	#align4

loc_ce310b8:
	#data loc_8c034DEE
loc_ce310bc:
	#data loc_8c051648
loc_ce310c0:
	#data mem_8c2896b0
loc_ce310c4:
	#data loc_8c052B4C
loc_ce310c8:
	#data loc_8c056DE4
loc_ce310cc:
	#data loc_8c04223A
loc_ce310d0:
	#data loc_8c034E8C
loc_ce310d4:
	#data loc_8c0511E2
loc_ce310d8:
	#data loc_8c052C84
loc_ce310DC_to_loc_ce348F4_to_loc_ce310E0:
	#data loc_ce348F4_to_loc_ce310E0

;==============================================
loc_ce310E0:
	mov.w @(loc_ce311DC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31146
	mov.b @(0x06,r4),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce3110E
	mova @(loc_ce311E0,pc),r0  ; r0 set to 0xCE311E0
	bra loc_ce31112
	fmov.s @r0,fr3

loc_ce3110E:
	mova @(loc_ce311E4,pc),r0  ; r0 init to 0xCE311E4
	fmov.s @r0,fr3

loc_ce31112:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2,r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31124
	mova @(loc_ce311E8,pc),r0  ; r0 set to 0xCE311E8,r0 set to 0xCE311E8
	bra loc_ce31128
	fmov.s @r0,fr3

loc_ce31124:
	mova @(0xc4,pc),r0
	fmov @r0,fr3

loc_ce31128:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0xc0,pc),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	mova @(0xbc,pc),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x12,r0
	mov.w r0,@(0x1c,r4)
	mov.w @(0x96,pc),r0
	mov.b r3,@(r0,r4)

loc_ce31146:
	mov.l @(loc_ce311F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_ce3114C:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce311F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_ce311CE
	mov.b @(0x06,r14),r0
	mov 0x68,r8 ; r8 set to 0x68
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce311B0
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_ce311E8,pc),r1 ; r1 set to 0xBEA00000
	lds r1,fpul
	bra loc_ce311B6
	fsts fpul,fr3

loc_ce311B0:
	mov.l @(0x38,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_ce311B6:
            0x000011b6      88f2           fmov @r8,fr2                        
            0x000011b8      0ec7           mova @(0x38,pc),r0                  
            0x000011ba      02e6           mov 0x02,r6                         
            0x000011bc      0fd3           mov.l @(0x3c,pc),r3                 
            0x000011be      30f2           fadd fr3,fr2                        
            0x000011c0      6365           mov r6,r5                           
            0x000011c2      2af8           fmov fr2,@r8                        
            0x000011c4      08f3           fmov @r0,fr3                        
            0x000011c6      6ce0           mov 0x6C,r0                         
            0x000011c8      37fe           fmov fr3,@(r0,r14)                  
            0x000011ca      0b43           jsr @r3                              
            0x000011cc      e364           mov r14,r4 

loc_ce311CE:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce311DC:
	#data 0x0141
loc_ce311DE:
	#data 0x01D2
	#align4

loc_ce311E0:
	#data 0x417D5555
loc_ce311E4:
	#data 0xC17D5555
loc_ce311E8:
	#data 0xBEA00000
loc_ce311Ec:
	#data 0x3EA00000
loc_ce311f0:
	#data 0x40CDB6DB
loc_ce311f4:
	#data 0xBF092492
loc_ce311F8_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce311fc:
	#data loc_8c034E8C

;==============================================
loc_ce31200:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xda,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf 0x00001264
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
	mov.w @(0xb6,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_ce31264:
	mov.w @(0xb0,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce31272
	mov.l @(0xac,pc),r3
	jmp @r3
	nop

loc_ce31272:
	rts
	nop

;==============================================
loc_ce31276:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce3131C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31290
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce31320_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce31290:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
Rby_BckDash:
	mov r4,r3
	mov.l @(loc_ce31324_to_loc_ce34904_to_loc_ce312AA,pc),r1 ; r1 set to 0xCE34904
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce312AA:
	mov.w @(loc_ce31318,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31310
	mov.b @(0x06,r4),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_ce3131A,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce312D8
	mova @(loc_ce31328,pc),r0  ; r0 set to 0xCE31328
	bra loc_ce312DC
	fmov.s @r0,fr3

loc_ce312D8:
	mova @(loc_ce3132C,pc),r0  ; r0 init to 0xCE3132C
	fmov.s @r0,fr3

loc_ce312DC:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_ce3131A,pc),r0 ; r0 set to 0x1D2,r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce312EE
	mova @(loc_ce31330,pc),r0  ; r0 set to 0xCE31330,r0 set to 0xCE31330
	bra loc_ce312F2
	fmov.s @r0,fr3

loc_ce312EE:
	mova @(0x44,pc),r0
	fmov @r0,fr3

loc_ce312F2:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0x40,pc),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	mova @(0x38,pc),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x12,r0
	mov.w r0,@(0x1c,r4)
	mov.w @(0x8,pc),r0
	mov.b r3,@(r0,r4)

loc_ce31310:
	mov.l @(loc_ce3131C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3131a:
	#data 0x041C
loc_ce31318:
	#data 0x0141
loc_ce3131A:
	#data 0x01D2
	#align4

loc_ce3131C_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31320_to_loc_8c051648:
	#data loc_8c051648
loc_ce31324_to_loc_ce34904_to_loc_ce312AA:
	#data loc_ce34904_to_loc_ce312AA
loc_ce31328:
	#data 0xC17D5555
loc_ce3132C:
	#data 0x417D5555
loc_ce31330:
	#data 0x3EA00000
loc_ce31334:
	#data 0xBEA00000
loc_ce31338:
	#data 0x40CDB6DB
loc_ce3133c:
	#data 0xBF092492

;==============================================
loc_ce31340:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce314AC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_ce313C2
	mov.b @(0x06,r14),r0
	mov 0x68,r8 ; r8 set to 0x68
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce314A2,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce313A4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_ce314B0,pc),r1 ; r1 set to 0x3EA00000
	lds r1,fpul
	bra loc_ce313AA
	fsts fpul,fr3

loc_ce313A4:
	mov.l @(0x10c,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_ce313AA:
	fmov @r8,fr2
	mova @(0x108,pc),r0
	mov.l @(0x10c,pc),r3
	mov 0x02,r5
	fadd fr3,fr2
	mov 0x03,r6
	fmov fr2,@r8
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce313C2:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_ce313D0:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x98,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31434
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
	mov.w @(0x74,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_ce31434:
	mov.w @(0x6e,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce31442
	mov.l @(0x6c,pc),r3
	jmp @r3
	nop

loc_ce31442:
	rts
	nop

;==============================================
loc_ce31446:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce314AC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31460
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce314C0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce31460:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce31468:
	mov r4,r3
	mov.l @(loc_ce314C4_to_loc_ce34914_to_loc_ce3147A,pc),r1 ; r1 set to 0xCE34914
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3147A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x0D,r5 ; r5 set to 0x0D
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce314A8,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce314C8_to_loc_8c0CE62C,pc),r3 ; r3 set to 0x8C0CE62C
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce314BC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x12,r5 ; r5 set to 0x12
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce314A2:
	#data 0x01D2
loc_ce314A4:
	#data 0x041C
loc_ce314A6:
	#data 0x0141
loc_ce314A8:
	#data 0x012C
	#align4

loc_ce314AC_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce314B0:
	#data 0x3EA00000
loc_ce314B4:
	#data 0xBEA00000
loc_ce314B8:
	#data 0xBF092492
loc_ce314BC_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce314C0_to_loc_8c051648:
	#data loc_8c051648
loc_ce314C4_to_loc_ce34914_to_loc_ce3147A:
	#data loc_ce34914_to_loc_ce3147A
loc_ce314C8_to_loc_8c0CE62C:
	#data loc_8c0CE62C

;==============================================
loc_ce314CC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x138,pc),r0
	mov r4,r14
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce31502
	mov.w @(0x12e,pc),r0
	mov 0x00,r2
	mov.l @(0x138,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(0x12c,pc),r0
	fmov @r0,fr3
	mova @(0x12c,pc),r0
	mov 0x02,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x124,pc),r2
	mov 0x02,r5
	jsr @r2
	mov r14,r4

loc_ce31502:
	mov.l @(0x120,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31514
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_ce31514:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3151C:
	mov r4,r3
	mov.l @(loc_ce31628_to_loc_ce3491C_to_loc_ce3152E,pc),r1 ; r1 set to 0xCE3491C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3152E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce31546
	bsr loc_ce316ac
	mov r14,r4

loc_ce31546:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_ce3154C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce3162C_to_loc_8c046C8A,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce31564
	lds.l @r15+,pr
	mov.l @(loc_ce31630_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce31564:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_ce31634_to_loc_ce34924_to_loc_ce315D6,pc),r0 ; r0 set to 0xCE34924
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_ce31578:
	mov r4,r3
	mov.l @(loc_ce31638_to_loc_ce34950_to_loc_ce3158A,pc),r1 ; r1 set to 0xCE34950
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3158A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_ce3163C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_ce31610,pc),r0 ; r0 set to 0x41C
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_ce31640_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x13,r5 ; r5 set to 0x13
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_ce31612,pc),r0 ; r0 set to 0x1FC
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_ce315D0:
	mov.l @(loc_ce31624_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_ce315D6:
	mov r4,r3
	mov.l @(loc_ce31644_to_loc_ce34958_to_loc_ce315E8,pc),r1 ; r1 set to 0xCE34958
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce315E8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov.l @(loc_ce31648_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31640_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x13,r5 ; r5 set to 0x13
	jmp @r2
	mov.l @r15+,r14

loc_ce31608:
	mov.l @(loc_ce31624_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3160e:
	#data 0x0141
loc_ce31610:
	#data 0x041C
loc_ce31612:
	#data 0x01FC
	#align4

loc_ce31614:
	#data 0x42A00000
loc_ce31618:
	#data 0x42092492
loc_ce3161c:
	#data loc_8c0FDAB6
loc_ce31620:
	#data loc_8c04223A
loc_ce31624_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31628_to_loc_ce3491C_to_loc_ce3152E:
	#data loc_ce3491C_to_loc_ce3152E
loc_ce3162C_to_loc_8c046C8A:
	#data loc_8c046C8A
loc_ce31630_to_loc_8c051648:
	#data loc_8c051648
loc_ce31634_to_loc_ce34924_to_loc_ce315D6:
	#data loc_ce34924_to_loc_ce315D6
loc_ce31638_to_loc_ce34950_to_loc_ce3158A:
	#data loc_ce34950_to_loc_ce3158A
loc_ce3163C_to_loc_8c035162:
	#data loc_8c035162
loc_ce31640_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31644_to_loc_ce34958_to_loc_ce315E8:
	#data loc_ce34958_to_loc_ce315E8
loc_ce31648_to_loc_8c05218A:
	#data loc_8c05218A

;==============================================
loc_ce3164C:
	mov r4,r3
	mov.l @(loc_ce31768_to_loc_ce34960_to_loc_ce3165E,pc),r1 ; r1 set to 0xCE34960
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce3165E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov.l @(loc_ce3176C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31770_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x13,r5 ; r5 set to 0x13
	jmp @r2
	mov.l @r15+,r14

loc_ce3167E:
	mov.w @(0xd8,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce316A2
	mov.w @(0xca,pc),r0
	mov 0x00,r2
	mov.l @(0xe0,pc),r3
	mov 0x0E,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xd8,pc),r2
	mov 0x0A,r5
	jsr @r2
	mov r14,r4

loc_ce316A2:
	lds.l @r15+,pr
	mov.l @(0xd0,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce316AC:
	mov.w @(0xac,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xa8,pc),r2
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce3170a
	mov.w @(r0,r14),r3
	mov.w @(0x9c,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_ce316cc
	bra loc_ce31718
	mov 0x05,r3

loc_ce316CC:
	mov.w @(0x92,pc),r2
	tst r2,r3
	bt loc_ce316d6
	bra loc_ce31718
	mov 0x06,r3

loc_ce316D6:
	extu.w r0,r0
	tst 0x80,r0
	bt loc_ce316e2
	bra loc_ce316fc
	mov 0x07,r1

loc_ce316E2:
	mov.w @(0x76,pc),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_ce316F0
	bra loc_ce316FC
	mov 0x08,r1

loc_ce316F0:
	mov.w @(0x68,pc),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_ce31702
	mov 0x09,r1

loc_ce316FC:
	mov 0x20,r0
	bra loc_ce3171C
	mov.b r1,@(r0,r14)

loc_ce31702:
	mov 0x20,r0
	mov 0x0A,r3
	bra loc_ce3171C
	mov.b r3,@(r0,r14

loc_ce3170A:
	mov.l @(0x70,pc),r1
	jsr @r1
	nop
	mov.l @(0x6c,pc),r1
	and 0x0F,r0
	shll r0
	mov.b @(r0,r1),r3

loc_ce31718:
	mov 0x20,r0
	mov.b r3,@(r0,r14)

loc_ce3171C:
	mov.l @(0x64,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	cmp/gt r2,r0
	bf loc_ce3172E
	mov 0x20,r0
	mov 0x05,r1
	mov.b r1,@(r0,r14)

loc_ce3172E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14 

;==============================================
Rby_SpecPRG:
	mov.w @(loc_ce31764,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce31788_to_loc_ce34988_to_loc_ce31748,pc),r0 ; r0 set to 0xCE34988
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce31748:
	mov r4,r3
	mov.l @(loc_ce3178C_to_loc_ce349BC_to_loc_ce31790,pc),r1 ; r1 set to 0xCE349BC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3175a:
	#data 0x0141
loc_ce3175c:
	#data 0x0340
loc_ce3175e:
	#data 0x03F0
loc_ce31760:
	#data 0x0200
loc_ce31762:
	#data 0x0100
loc_ce31764:
	#data 0x01E9
	#align4

loc_ce31768_to_loc_ce34960_to_loc_ce3165E:
	#data loc_ce34960_to_loc_ce3165E
loc_ce3176C_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce31770_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31774:
	#data loc_8c0CE62C
loc_ce31778:
	#data loc_8c034DEE
loc_ce3177c:
	#data loc_8c03319E
loc_ce31780_to_loc_ce34968:
	#data loc_ce34968
loc_ce31784:
	#data loc_8c0514B8
loc_ce31788_to_loc_ce34988_to_loc_ce31748:
	#data loc_ce34988_to_loc_ce31748
loc_ce3178C_to_loc_ce349BC_to_loc_ce31790:
	#data loc_ce349BC_to_loc_ce31790

;==============================================
loc_ce31790:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_ce318A8_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce318AC_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce318B0_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce318B8_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_ce318B4_to_loc_ce34424,pc),r13 ; r13 set to 0xCE34424
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce3189A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_ce317FA
	mov.w @(loc_ce3189C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce317FA
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce317E0
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce317E2
	mov 0x09,r2

loc_ce317E0:
	mov 0x0A,r2 ; r2 set to 0x0A

loc_ce317E2:
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce317F0
	bra loc_ce317F2
	mov 0x3F,r3

	loc_ce317F0:
	mov 0x46,r3 ; r3 set to 0x46

	loc_ce317F2:
	shll2 r3 ; r3 set to 0x118
	add r3,r13
	bra loc_ce3181E
	nop

	loc_ce317FA:
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce31808
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce3180A
	mov 0x01,r2

	loc_ce31808:
	mov 0x02,r2 ; r2 set to 0x02

	loc_ce3180A:
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce31818
	bra loc_ce3181A
	mov 0x07,r3

loc_ce31818:
	mov 0x0E,r3

loc_ce3181A:
	shll2 r3
	add r3,r13

loc_ce3181E:
	mov.w @(0x7a,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce3182E
	mov.l @(0x90,pc),r2
	jsr @r2
	mov r14,r4

loc_ce3182E:
	fmov @r13,fr3
	mov 0x5C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r13),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r13),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	mov r4,r0
	nop
	mov.w @(0x46,pc),r5
	mov.w r0,@(0x1e,r14)
	add r14,r5
	mov.l @(0x60,pc),r6
	mov.b r0,@(0x6,r5)
	mov.w r0,@(0x8,r5)
	mov.w @(0x3c,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce318c4
	mov.w @(0x34,pc),r0
	mov 0x48,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x03,r4
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov r4,r0
	nop
	mov.b r0,@(0x6,r5)
	bra loc_ce318E6
	mov.w r0,@(0x1e,r14) 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3189A:
	#data 0x01A3
loc_ce3189C:
	#data 0x01F9
loc_ce3189E:
	#data 0x0130
loc_ce318A0:
	#data 0x02A4
loc_ce318A2:
	#data 0x0255
loc_ce318A4:
	#data 0x01A1
	#align4

loc_ce318A8_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce318AC_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce318B0_to_loc_8c035162:
	#data loc_8c035162
loc_ce318B4_to_loc_ce34424:
	#data loc_ce34424
loc_ce318B8_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce318bC:
	#data loc_8c05115A
loc_ce318C0:
	#data mem_8c2896b0

;==============================================
loc_ce318C4:
#data 0xE2339077
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6362
#data 0x737C4000
#data 0x7201023D
#data 0x0325

loc_ce318E6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6

loc_ce318EE:
mov.w @(loc_ce319B8,pc),r0 ; r0 set to 0x1D4
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(loc_ce319BA,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r2
cmp/pz r2
bt loc_ce319A8
mov.b @(0x06,r14),r0
mov 0x01,r7 ; r7 set to 0x01
mov.l @(loc_ce319C8_to_loc_8c03544C,pc),r3 ; r3 set to 0x8C03544C
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0 ; r0 set to 0x144
mov r7,r6 ; r6 set to 0x01
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce319CC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov 0x03,r6 ; r6 set to 0x03
jsr @r2
mov r14,r4
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14)
mov.w @(loc_ce319BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt loc_ce3197A
mov.l @(loc_ce319D0_to_loc_8c053082,pc),r2 ; r2 set to 0x8C053082
jsr @r2
mov r14,r4
mova @(loc_ce319D4,pc),r0  ; r0 set to 0xCE319D4
fmov.s @r0,fr3 ; r3 ??
mov.w @(loc_ce319BE,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(loc_ce319C0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
tst r3,r3
bt loc_ce3197A
mov.l @(loc_ce319CC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov 0x06,r6 ; r6 set to 0x06
jsr @r3
mov r14,r4
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x07,r14)
mov 0x34,r8 ; r8 set to 0x34
mov.w @(loc_ce319C2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt/s loc_ce3196E
add r14,r8 ; r8 ??? bc r14 is ???
mov.l @(loc_ce319D8,pc),r1 ; r1 set to 0x43055555
lds r1,fpul
bra loc_ce31974
fsts fpul,fr3

loc_ce3196E:
#data 0xD21B
#data 0xF30D425A

#align4
loc_ce31974:
#data 0xF230F288
#data 0xF82A

loc_ce3197A:
#data 0x9023
#data 0xE54BE300
#data 0xD3170E35
#data 0x64E3430B
#data 0xDD16E70A
#data 0xE6136573
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B


loc_ce319A8:
lds.l @r15+,pr
mov.l @(loc_ce319E8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14
#data 0x01A1

loc_ce319B8:
#data 0x01D4

loc_ce319BA:
#data 0x0143

loc_ce319BC:
#data 0x01F9

loc_ce319BE:
#data 0x041C

loc_ce319C0:
#data 0x01A3

loc_ce319C2:
#data 0x0130
#data 0x00000352

#align4
loc_ce319C8_to_loc_8c03544C:
#data loc_8c03544C

loc_ce319CC_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce319D0_to_loc_8c053082:
#data loc_8c053082

loc_ce319D4:
#data 0x41AB6DB6

#align4
loc_ce319D8:
#data 0x43055555
#data 0xC3055555
#data loc_8c04223A
#data loc_8c07A428

#align4
loc_ce319E8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce319EC:
#data 0xC745D346
#data 0x6E432FE6
#data 0x4F222FD6
#data 0xE038F308
#data 0xF2E6F438
#data 0xF245F430
#data 0xE6028F01
#data 0xFE47

loc_ce31A0A:
#data 0x9475
#data 0x34EC9073
#data 0x85440E64
#data 0x814470FF
#data 0x600D7001
#data 0x8B014015
#data 0x0009A0B5

#align4
loc_ce31A24:
#data 0x6053E500
#data 0x81440009
#data 0x03EC9065
#data 0x89222338
#data 0x600C8446
#data 0x891E3063
#data 0x600C8446
#data 0x8B038801
#data 0xE235905A
#data 0x0E24A003

#align4
loc_ce31A4C:
#data 0xE3349056
#data 0x0E34

loc_ce31A52:
#data 0x9054
#data 0x0E55D32D
#data 0x0E5470F2
#data 0x0E567026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x70018446
#data 0xE0048046
#data 0x8144

loc_ce31A7A:
#data 0xE15C
#data 0x31ECD324
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0xDD169022
#data 0xE038F3E6
#data 0xF325F2E6
#data 0xD3148B2C
#data 0xE500E005
#data 0x430B80E6
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xD30D900C
#data 0xE038F3E6
#data 0x430BFE37
#data 0xA03164E3
#data 0x01F5E608
#data 0x019E02A4
#data 0x01AC01A1
#data 0x0000041C
#data 0xC2CDB6DB
#data loc_8c26A5B8
#data mem_8c2896b0
#data loc_8c034DEE
#data loc_8c034E8C
#data loc_8c035162
#data loc_8c0511B4

#align4
loc_ce31B20:
#data 0x70FF85EE
#data 0x600F81EE
#data 0x8B1A2008
#data 0xE004D343
#data 0x80E6E500
#data 0x64E3430B
#data 0xE06CF39D
#data 0xFE37F34D
#data 0xF308C73F
#data 0xF2E69071
#data 0xF1E6E038
#data 0xF125F230
#data 0xA0018B01
#data 0xE602

loc_ce31B56:
#data 0xE620

#align4
loc_ce31B58:
#data 0x4D0BE515
#data 0xA01664E3
#data 0x0009

loc_ce31B62:
#data 0x9063
#data 0x880100EC
#data 0x94608911
#data 0x00096043
#data 0x02ED7048
#data 0x2248622D
#data 0x90598B04
#data 0x611D01ED
#data 0x89042148

#align4
loc_ce31B84:
#data 0x64E34F26
#data 0xA0C46DF6
#data 0x6EF6

loc_ce31B8E:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_ce31B96:
#data 0x2FE6
#data 0x904A6E43
#data 0x2FD6E402
#data 0x0E444F22
#data 0x03EC9046
#data 0x89384311
#data 0x00096043
#data 0xE40080E6
#data 0x903B953F
#data 0x0E4535EC
#data 0x00096043
#data 0xE3338056
#data 0xE70A8154
#data 0x65739036
#data 0xE613DD1E
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D319
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B
#data 0xE54BD310
#data 0x64E3430B
#data 0xE51584E7
#data 0x6603D30E
#data 0x430B7603
#data 0x64E3

loc_ce31C1E:
#data 0x4F26
#data 0x64E3D30C
#data 0x432B6DF6
#data 0x041C6EF6
#data 0x03000141
#data 0x01F50352
#data 0x02A40143
#data 0x000001A1
#data loc_8c035162
#data 0x42855555
#data mem_8c2896b0
#data loc_8c07A428
#data loc_8c04223A
#data loc_8c034E8C
#data loc_8c034DEE


loc_ce31C58:
mov.w @(loc_ce31D92,pc),r0 ; r0 set to 0x41C
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_ce31C9E
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(loc_ce31D9C_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce31D92,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce31DA0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

loc_ce31C9E:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_ce31DA4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_ce31CE0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce31D94,pc),r0 ; r0 set to 0x352
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.w r13,@(r0,r14)
mov.w @(loc_ce31D96,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce31DA4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov.b r13,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_ce31D0E
lds.l @r15+,pr
mov.l @(loc_ce31DA8_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

loc_ce31D0E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_ce31D16:
#data 0x2FE6
#data 0x4F226E43
#data 0xE30285EF
#data 0x895F3033
#data 0xD4219038
#data 0xE02305ED
#data 0x655DF28D
#data 0x45094519
#data 0x655C0E54
#data 0x45086253
#data 0x35284500
#data 0xE0104508
#data 0xF346345C
#data 0x894BF324
#data 0x700184E6
#data 0xE01E80E6
#data 0x85EF81EE
#data 0x81EF7001
#data 0xF348E05C
#data 0xE004FE37
#data 0xE068F346
#data 0xE008FE37
#data 0xE060F346
#data 0xE00CFE37
#data 0xE06CF346
#data 0xE018FE37
#data 0xF33DF346
#data 0x005AF38D
#data 0xE01480E7
#data 0xF345F446
#data 0xA0138910
#data 0xF34C

loc_ce31D92:
#data 0x041C

loc_ce31D94:
#data 0x0352

loc_ce31D96:
#data 0x01F9
#data 0x00000340

#align4
loc_ce31D9C_to_loc_8c0511B4:
#data loc_8c0511B4

loc_ce31DA0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce31DA4_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce31DA8_to_loc_8c051648:
#data loc_8c051648

loc_ce31DAC_to_loc_ce34424:
#data loc_ce34424

loc_ce31DB0:
#data 0x02ED9096
#data 0xF32D425A

#align4
loc_ce31DB8:
#data 0x9091F33D
#data 0xE500D34B
#data 0x0E15015A
#data 0x64E3430B
#data 0xE501D248
#data 0x64E3420B
#data 0x64E3E048
#data 0x0E36E300
#data 0x4F26E601
#data 0xE515D344
#data 0x6EF6432B

#align4
loc_ce31DE4:
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce31DEA:
mov r4,r3
mov.l @(loc_ce31EF4_to_loc_ce349D4_to_loc_ce31DFC,pc),r1 ; r1 set to 0xCE349D4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce31DFC:
mov.l r14,@-r15
mov r4,r14
mov 0x3E,r3 ; r3 set to 0x3E
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce31EE2,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce31EF8_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce31EFC_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce31EE4,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce31F00_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce31EE6,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce31F04_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce31F08_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce31EF0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x09,r6 ; r6 set to 0x09
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_ce31E7A:
#data 0x9035
#data 0x2FE6E201
#data 0x4F226E43
#data 0x332303EC
#data 0x84E6890B
#data 0x6533E300
#data 0x70016733
#data 0xE61380E6
#data 0x0E349026
#data 0x430BD31B
#data 0x64E3

loc_ce31EA2:
#data 0x4F26
#data 0x64E3D21A
#data 0x6EF6422B


loc_ce31EAC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce31F10_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce31EC6
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce31F14_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce31EC6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce31ECE:
mov r4,r3
mov.l @(loc_ce31F18_to_loc_ce349E0_to_loc_ce31F1C,pc),r1 ; r1 set to 0xCE349E0
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0130

loc_ce31EE2:
#data 0x01A1

loc_ce31EE4:
#data 0x01F9

loc_ce31EE6:
#data 0x041C
#data 0x00000141
#data loc_8c0CE62C

#align4
loc_ce31EF0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce31EF4_to_loc_ce349D4_to_loc_ce31DFC:
#data loc_ce349D4_to_loc_ce31DFC

loc_ce31EF8_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce31EFC_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce31F00_to_loc_8c05218A:
#data loc_8c05218A

loc_ce31F04_to_loc_8c035162:
#data loc_8c035162

loc_ce31F08_to_loc_8c05115A:
#data loc_8c05115A
#data loc_8c07A428

#align4
loc_ce31F10_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce31F14_to_loc_8c051648:
#data loc_8c051648

loc_ce31F18_to_loc_ce349E0_to_loc_ce31F1C:
#data loc_ce349E0_to_loc_ce31F1C


loc_ce31F1C:
mov.l r14,@-r15
mov r4,r14
mov 0x3F,r3 ; r3 set to 0x3F
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce3205E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce32068_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce3206C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce32060,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce32070_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce32062,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce32074_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce32078_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
mov 0x23,r0 ; r0 set to 0x23
mov.l @(loc_ce3207C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r13,@(r0,r14)
mov 0x0A,r6 ; r6 set to 0x0A
lds.l @r15+,pr
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

loc_ce31F9E:
#data 0x9061
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x89142338
#data 0xE70284E6
#data 0x6573D333
#data 0x80E67001
#data 0x430BE613
#data 0xD23164E3
#data 0x420BE504
#data 0x904D64E3
#data 0x0E34E300
#data 0x02EC7062
#data 0x81EEE010
#data 0x2228

loc_ce31FD6:
#data 0x4F26
#data 0x64E3D32B
#data 0x6EF6432B

#align4
loc_ce31FE0:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE70FF
#data 0x600F7001
#data 0x8B072008
#data 0xE51584E6
#data 0xE60BD320
#data 0x80E67001
#data 0x64E3430B

#align4
loc_ce32004:
#data 0xD2204F26
#data 0x422B64E3
#data 0x6EF6


loc_ce3200E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce32088_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce32028
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce3208C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce32028:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce32030:
mov r4,r3
mov.l @(loc_ce32090_to_loc_ce349F0_to_loc_ce32042,pc),r1 ; r1 set to 0xCE349F0
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce32042:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_ce3206C_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
jsr @r3
mov 0x05,r5 ; r5 set to 0x05
mov.w @(loc_ce32066,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r2
tst r2,r2
bf loc_ce32094
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x1A4
bra loc_ce320A0
mov.b r0,@(0x06,r14)

loc_ce3205E:
#data 0x01A1

loc_ce32060:
#data 0x01F9

loc_ce32062:
#data 0x041C
#data 0x0141

loc_ce32066:
#data 0x01A3

#align4
loc_ce32068_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce3206C_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce32070_to_loc_8c05218A:
#data loc_8c05218A

loc_ce32074_to_loc_8c035162:
#data loc_8c035162

loc_ce32078_to_loc_8c05115A:
#data loc_8c05115A

loc_ce3207C_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c07A428
#data loc_8c0CE62C

#align4
loc_ce32088_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce3208C_to_loc_8c051648:
#data loc_8c051648

loc_ce32090_to_loc_ce349F0_to_loc_ce32042:
#data loc_ce349F0_to_loc_ce32042


loc_ce32094:
mov 0x06,r0 ; r0 set to 0x06
mov r14,r4
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
bra loc_ce32230
mov.l @r15+,r14

loc_ce320A0:
mov 0x23,r0 ; r0 set to 0x23
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14)
mov r4,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce321AC,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce321B4_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r4,@(r0,r14)
mov.w @(loc_ce321AE,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(loc_ce321B8_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce321BC_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce321C0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x0E,r6 ; r6 set to 0x0E
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

#align4
loc_ce320EC:
#data 0x2FE69060
#data 0x4F226E43
#data 0x887000EC
#data 0x90598B08
#data 0xD331E706
#data 0x6573E200
#data 0xE6130E24
#data 0x64E3430B

#align4
loc_ce3210C:
#data 0x02ECE023
#data 0x4215622C
#data 0x84E68B0B
#data 0xD32964E3
#data 0x7001E515
#data 0xE02380E6
#data 0x06EC4F26
#data 0x432B760F
#data 0x6EF6

loc_ce3212E:
#data 0x9040
#data 0x421102EC
#data 0x84E68907
#data 0xD321E515
#data 0x7001E60F
#data 0x430B80E6
#data 0x64E3

loc_ce32146:
#data 0x4F26
#data 0x64E3D21F
#data 0x6EF6422B


loc_ce32150:
mov.w @(loc_ce321B2,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_ce3217E
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/pl r2
bf loc_ce32172
mov.w @(0x1C,r4),r0
tst r0,r0
bf loc_ce32172
mov.b @(0x06,r4),r0
add 0x01,r0 ; r0 set to 0x24
mov.b r0,@(0x06,r4)
bra loc_ce32178
mov 0x1A,r6

loc_ce32172:
mov 0x05,r0 ; r0 set to 0x05
mov 0x1D,r6 ; r6 set to 0x1D
mov.b r0,@(0x06,r4)

loc_ce32178:
mov.l @(loc_ce321C0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
jmp @r3
mov 0x15,r5

loc_ce3217E:
mov.l @(loc_ce321C8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

#align4
loc_ce32184:
#data 0x2FE69015
#data 0x4F226E43
#data 0x431103EC
#data 0x84E68907
#data 0xD30AE515
#data 0x7001E61B
#data 0x430B80E6
#data 0x64E3

loc_ce321A2:
#data 0x4F26
#data 0x64E3D208
#data 0x6EF6422B

loc_ce321AC:
#data 0x01F9

loc_ce321AE:
#data 0x041C
#data 0x0141

loc_ce321B2:
#data 0x0143

#align4
loc_ce321B4_to_loc_8c05218A:
#data loc_8c05218A

loc_ce321B8_to_loc_8c035162:
#data loc_8c035162

loc_ce321BC_to_loc_8c05115A:
#data loc_8c05115A

loc_ce321C0_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c07A428

#align4
loc_ce321C8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce321CC:
#data 0x2FE6907A
#data 0x4F226E43
#data 0x880E00EC
#data 0x90738B08
#data 0xD33CE708
#data 0x6573E200
#data 0xE6130E24
#data 0x64E3430B

#align4
loc_ce321EC:
#data 0x02EC906B
#data 0x89074211
#data 0xE51584E6
#data 0xE61CD336
#data 0x80E67001
#data 0x64E3430B

#align4
loc_ce32204:
#data 0xD2344F26
#data 0x422B64E3
#data 0x6EF6


loc_ce3220E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce322D8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce32228
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce322DC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce32228:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce32230:
mov.l r14,@-r15
mov r4,r14
mov 0x31,r3 ; r3 set to 0x31
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce322C8,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce322E0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce322E4_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x18,r0 ; r0 set to 0x18
fldi0 fr4
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce322CA,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce322E8_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce322CC,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce322EC_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce322F0_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce322D4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_ce322B2:
mov r4,r3
mov.l @(loc_ce322F4_to_loc_ce34A18_to_loc_ce322F8,pc),r1 ; r1 set to 0xCE34A18
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01430141

loc_ce322C8:
#data 0x01A1

loc_ce322CA:
#data 0x01F9

loc_ce322CC:
#data 0x041C
#data 0x0000
#data loc_8c07A428

#align4
loc_ce322D4_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce322D8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce322DC_to_loc_8c051648:
#data loc_8c051648

loc_ce322E0_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce322E4_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce322E8_to_loc_8c05218A:
#data loc_8c05218A

loc_ce322EC_to_loc_8c035162:
#data loc_8c035162

loc_ce322F0_to_loc_8c05115A:
#data loc_8c05115A

loc_ce322F4_to_loc_ce34A18_to_loc_ce322F8:
#data loc_ce34A18_to_loc_ce322F8


loc_ce322F8:
mov.l r14,@-r15
mov r4,r14
mov 0x31,r3 ; r3 set to 0x31
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce32420,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce32428_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce3242C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x1E,r0 ; r0 set to 0x1E
fldi0 fr4
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce32422,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce32430_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce32424,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce32434_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce32438_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce3243C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_ce3237A:
#data 0x9054
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x89052338
#data 0x0E34E300
#data 0xD32CE516
#data 0x64E3430B

#align4
loc_ce32394:
#data 0x70FF85EE
#data 0x700181EE
#data 0x2008600F
#data 0x84E68B07
#data 0xD325E515
#data 0x7001E60D
#data 0x430B80E6
#data 0x64E3

loc_ce323B2:
#data 0x4F26
#data 0x64E3D223
#data 0x6EF6422B

#align4
loc_ce323BC:
#data 0x2FE69033
#data 0x4F226E43
#data 0x233803EC
#data 0x84E6890B
#data 0xD31EE704
#data 0x70016573
#data 0xE61380E6
#data 0x64E3430B
#data 0xE2009023
#data 0x0E24

loc_ce323E2:
#data 0x4F26
#data 0x64E3D317
#data 0x6EF6432B


loc_ce323EC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce32444_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce32406
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce3244C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce32406:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce3240E:
mov r4,r3
mov.l @(loc_ce32450_to_loc_ce34A28_to_loc_ce32454,pc),r1 ; r1 set to 0xCE34A28
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce32420:
#data 0x01A1

loc_ce32422:
#data 0x01F9

loc_ce32424:
#data 0x041C
#data 0x0141

#align4
loc_ce32428_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce3242C_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce32430_to_loc_8c05218A:
#data loc_8c05218A

loc_ce32434_to_loc_8c035162:
#data loc_8c035162

loc_ce32438_to_loc_8c05115A:
#data loc_8c05115A

loc_ce3243C_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c04223A

#align4
loc_ce32444_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c07A428

#align4
loc_ce3244C_to_loc_8c051648:
#data loc_8c051648

loc_ce32450_to_loc_ce34A28_to_loc_ce32454:
#data loc_ce34A28_to_loc_ce32454


loc_ce32454:
mov.l r14,@-r15
mov r4,r14
mov 0x3F,r3 ; r3 set to 0x3F
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce32594,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce325A0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce325A4_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce32596,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce325A8_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce32598,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce325AC_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce325B0_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce325B4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x1E,r6 ; r6 set to 0x1E
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_ce324D2:
#data 0x9062
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x890B2338
#data 0xE70584E6
#data 0x6573D334
#data 0x80E67001
#data 0x430BE613
#data 0x905264E3
#data 0x0E24E200

#align4
loc_ce324F8:
#data 0xD3304F26
#data 0x432B64E3
#data 0x6EF6


loc_ce32502:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce325BC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce3251C
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce325C0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce3251C:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce32524:
mov r4,r3
mov.l @(loc_ce325C4_to_loc_ce34A34_to_loc_ce32536,pc),r1 ; r1 set to 0xCE34A34
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce32536:
mov.l r14,@-r15
mov r4,r14
mov 0x38,r3 ; r3 set to 0x38
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce32594,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14)
mov.l @(loc_ce325A0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce325A8_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(loc_ce325AC_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
mov.l @(loc_ce325B4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16
mov.l @(loc_ce325C8_to_loc_ce345E4,pc),r12 ; r12 set to 0xCE345E4
mov r13,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
mov.w @(loc_ce3259C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt/s loc_ce325CC
mov 0x23,r0 ; r0 set to 0x23
bra loc_ce325CE
mov 0x01,r3

loc_ce32594:
#data 0x01A1

loc_ce32596:
#data 0x01F9

loc_ce32598:
#data 0x041C
#data 0x0141

loc_ce3259C:
#data 0x0130
#data 0x0000

#align4
loc_ce325A0_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce325A4_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce325A8_to_loc_8c05218A:
#data loc_8c05218A

loc_ce325AC_to_loc_8c035162:
#data loc_8c035162

loc_ce325B0_to_loc_8c05115A:
#data loc_8c05115A

loc_ce325B4_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c07A428

#align4
loc_ce325BC_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce325C0_to_loc_8c051648:
#data loc_8c051648

loc_ce325C4_to_loc_ce34A34_to_loc_ce32536:
#data loc_ce34A34_to_loc_ce32536

loc_ce325C8_to_loc_ce345E4:
#data loc_ce345E4


loc_ce325CC:
mov 0x02,r3 ; r3 set to 0x02

loc_ce325CE:
mov.b r3,@(r0,r14)
mov.w @(loc_ce326F8,pc),r0 ; r0 set to 0x130,r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt loc_ce325DC
bra loc_ce325DE
mov 0x07,r2

loc_ce325DC:
#data 0xE20E

loc_ce325DE:
#data 0x908C
#data 0x00EC4208
#data 0x8802600C
#data 0x3C2C8D03
#data 0x420BD247
#data 0x64E3

loc_ce325F2:
#data 0xD347
#data 0xE701E504
#data 0x430BE607
#data 0xF3C864E3
#data 0xFE37E05C
#data 0xF3C6E004
#data 0xFE37E068
#data 0xF3C6E008
#data 0xFE37E060
#data 0xF3C6E00C
#data 0xFE37E06C
#data 0x81EEE01E
#data 0x000960D3
#data 0x81EF946A
#data 0x34ECE021
#data 0x60D30ED4
#data 0x804A0009
#data 0x4F268146
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

#align4
loc_ce32640:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E439059
#data 0x0E34E302
#data 0x9055E205
#data 0xD32FED00
#data 0x430B0E24
#data 0x600E64E3
#data 0x8B114011
#data 0x00EC904D
#data 0x8B0D8801
#data 0x65F39049
#data 0xE601D32B
#data 0xC7280ED4
#data 0xC728F308
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B

#align4
loc_ce32688:
#data 0x02EC903C
#data 0x892B4211
#data 0x700184E6
#data 0x903080E6
#data 0x600C00EC
#data 0x89098802
#data 0xE202902B
#data 0xC71F0E24
#data 0x902CF308
#data 0xE038F2E6
#data 0xFE27F230

#align4
loc_ce326B4:
#data 0x000960D3
#data 0xE516D31B
#data 0xE60380E7
#data 0x64E3430B
#data 0xE70A9020
#data 0xE6136573
#data 0xDD170ED5
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B

#align4
loc_ce326E8:
#data 0x430BD30A
#data 0x7F0C64E3
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

loc_ce326F8:
#data 0x0130
#data 0x01F9
#data 0x03F802A4
#data 0x01410328
#data 0x041C0143
#data 0x00000352
#data loc_8c05115A
#data loc_8c03544C
#data loc_8c034DEE
#data 0xC1D55555
#data 0x43092492
#data loc_8c050834
#data 0x41AB6DB6
#data loc_8c034E8C
#data loc_8c07A428

#align4
loc_ce32730:
#data 0xC72CD32D
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xF3084F22
#data 0xF438E038
#data 0xF430F2E6
#data 0x8B00F245
#data 0xFE47

loc_ce3274E:
#data 0xC727
#data 0x903FF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8F07F215
#data 0xC723EC02
#data 0x9035F208
#data 0xE038F1E6
#data 0xFE17F120

#align4
loc_ce32770:
#data 0x0EC49031
#data 0x00EC9030
#data 0x8F088802
#data 0x902BED00
#data 0xD31CE715
#data 0x0ED46573
#data 0x430BE613
#data 0x64E3

loc_ce3278E:
#data 0x9024
#data 0x9424E305
#data 0x90210EC4
#data 0x0E3434EC
#data 0x70FF8546
#data 0x70018146
#data 0x4015600D
#data 0xA0D28B01
#data 0x0009

loc_ce327AE:
#data 0x60D3
#data 0x81460009
#data 0x03EC9014
#data 0x89342338
#data 0x600C844A
#data 0x893030C3
#data 0x600C844A
#data 0x8B158801
#data 0xE23A9009
#data 0x0E24A015
#data 0x01F5041C
#data 0x03F80141
#data 0x02A40328
#data 0x01A1019E
#data 0xC2CDB6DB
#data loc_8c26A5B8
#data 0x40092492
#data 0x41892492
#data loc_8c07A428

#align4
loc_ce327F8:
#data 0xE3399082
#data 0x0E34

loc_ce327FE:
#data 0x9080
#data 0x0ED5D342
#data 0x0ED470F2
#data 0x0ED67026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x7001844A
#data 0xE004804A
#data 0x8146

loc_ce32826:
#data 0xE15C
#data 0x31ECD339
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0xDD2B904E
#data 0xE038F3E6
#data 0xF325F2E6
#data 0xD3298B17
#data 0xE500E005
#data 0x430B80E6
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xD3229038
#data 0xE038F3E6
#data 0x430BFE37
#data 0xA01C64E3
#data 0xE608

loc_ce328A2:
#data 0x85EE
#data 0x81EE70FF
#data 0x2008600F
#data 0xD31A8B1A
#data 0xE500E004
#data 0x430B80E6
#data 0xF39D64E3
#data 0xF34DE06C
#data 0xC717FE37
#data 0x901DF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8B01F125
#data 0xE602A001

loc_ce328D8:
#data 0xE611

loc_ce328DA:
#data 0xE516
#data 0x64E34D0B
#data 0x0009A037

#align4
loc_ce328E4:
#data 0x03EC900F
#data 0x891B2338
#data 0x00EC900C
#data 0x892E8801
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A16E
#data 0x01AC01A1
#data 0x0525041C
#data 0x00000141
#data mem_8c2896b0
#data loc_8c034DEE
#data loc_8c034E8C
#data loc_8c035162
#data loc_8c0511B4
#data 0x42855555

#align4
loc_ce32924:
#data 0x00EC909C
#data 0x89128801
#data 0x60439499
#data 0x70480009
#data 0x622D02ED
#data 0x8B042248
#data 0x01ED9092
#data 0x2148611D
#data 0x8905

loc_ce32946:
#data 0x4F26
#data 0x6CF664E3
#data 0xA0D96DF6
#data 0x6EF6

loc_ce32952:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_ce3295C:
mov.w @(loc_ce32A66,pc),r0 ; r0 set to 0x3F8
mov 0x02,r5 ; r5 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov 0x05,r3 ; r3 set to 0x05
mov.l r13,@-r15
sts.l pr,@-r15
mov.b r5,@(r0,r14)
mov.w @(loc_ce32A68,pc),r0 ; r0 set to 0x328
mov.b r3,@(r0,r14)
mov.w @(loc_ce32A6A,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r2
cmp/pz r2
bt loc_ce329FC
mov.w @(loc_ce32A64,pc),r0 ; r0 set to 0x352
mov 0x00,r4 ; r4 set to 0x00
mov.w r4,@(r0,r14)
mov r5,r0 ; r0 set to 0x02
nop
mov.w @(loc_ce32A6C,pc),r5 ; r5 set to 0x2A4
mov.b r0,@(0x06,r14)
add r14,r5 ; r5 ??? bc r14 is ???
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x0A,r5)
mov 0x38,r3 ; r3 set to 0x38
mov.w r0,@(0x0C,r5)
mov 0x04,r5 ; r5 set to 0x04
mov.w @(loc_ce32A6E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce32A78_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce32A7C_to_loc_8c042008,pc),r2 ; r2 set to 0x8C042008
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(loc_ce32A80_to_loc_8c03544C,pc),r3 ; r3 set to 0x8C03544C
mov 0x04,r5 ; r5 set to 0x04
mov 0x01,r7 ; r7 set to 0x01
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
mov 0x0A,r7 ; r7 set to 0x0A
mov.l @(loc_ce32A84_to_loc_8c07A428,pc),r13 ; r13 set to 0x8C07A428
mov r7,r5 ; r5 set to 0x0A
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
mov 0x09,r7 ; r7 set to 0x09
mov r7,r5 ; r5 set to 0x09
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
mov 0x0B,r7 ; r7 set to 0x0B
mov r7,r5 ; r5 set to 0x0B
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
lds.l @r15+,pr
mov.b @(0x07,r14),r0
mov 0x16,r5 ; r5 set to 0x16
mov.l @(loc_ce32A88_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
mov r0,r6 ; r6 set to 0x188
add 0x03,r6 ; r6 set to 0x18B
jmp @r3
mov.l @r15+,r14

loc_ce329FC:
lds.l @r15+,pr
mov.l @(loc_ce32A8C_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_ce32A08:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce32A70,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(loc_ce32A72,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(loc_ce32A74,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_ce32A94
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(loc_ce32A90_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce32A74,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_ce32A88_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14
#data 0x03000141

loc_ce32A64:
#data 0x0352

loc_ce32A66:
#data 0x03F8

loc_ce32A68:
#data 0x0328

loc_ce32A6A:
#data 0x0143

loc_ce32A6C:
#data 0x02A4

loc_ce32A6E:
#data 0x01A1

loc_ce32A70:
#data 0x03F9

loc_ce32A72:
#data 0x0327

loc_ce32A74:
#data 0x041C
#data 0x0000

#align4
loc_ce32A78_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce32A7C_to_loc_8c042008:
#data loc_8c042008

loc_ce32A80_to_loc_8c03544C:
#data loc_8c03544C

loc_ce32A84_to_loc_8c07A428:
#data loc_8c07A428

loc_ce32A88_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce32A8C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce32A90_to_loc_8c0511B4:
#data loc_8c0511B4


loc_ce32A94:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_ce32BC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_ce32AD6:
mov.w @(loc_ce32BC0,pc),r0 ; r0 set to 0x352
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w r3,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r14)
mov r3,r2 ; r2 set to 0x00
mov.l @(loc_ce32BC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_ce32AFE
lds.l @r15+,pr
mov.l @(loc_ce32BCC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_ce32AFE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
loc_ce32B04:
#data 0x6E432FE6
#data 0x85EF4F22
#data 0x3033E304
#data 0x90568953
#data 0x05EDD42E
#data 0xF28DE023
#data 0x4519655D
#data 0x0E544509
#data 0x02EC655D
#data 0x0E24E021
#data 0x45086253
#data 0x35284500
#data 0xE0104508
#data 0xF346345C
#data 0x893CF324
#data 0x700184E6
#data 0xE01E80E6
#data 0x85EF81EE
#data 0x81EF7001
#data 0xF348E05C
#data 0xE004FE37
#data 0xE068F346
#data 0xE008FE37
#data 0xE060F346
#data 0xE00CFE37
#data 0xE06CF346
#data 0xE018FE37
#data 0xF33DF346
#data 0x005AF38D
#data 0xE01480E7
#data 0xF345F446
#data 0xA0048901
#data 0xF34C

loc_ce32B86:
#data 0x901D
#data 0x425A02ED
#data 0xF32D

loc_ce32B8E:
#data 0xF33D
#data 0xD3109018
#data 0x015AE500
#data 0x430B0E15
#data 0xD20D64E3
#data 0x420BE501
#data 0xE04864E3
#data 0xE30064E3
#data 0xE6010E36
#data 0xD3094F26
#data 0x432BE516
#data 0x6EF6

loc_ce32BBA:
#data 0x4F26
#data 0x6EF6000B
;==============================================

loc_ce32BC0:
#data 0x0352
#data 0x0340
#data 0x00000130

#align4
loc_ce32BC8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce32BCC_to_loc_8c051648:
#data loc_8c051648

loc_ce32BD0_to_loc_ce345E4:
#data loc_ce345E4
#data loc_8c0CE62C
#data loc_8c034E8C

#align4
loc_ce32BDC:
#data 0x4F222FE6
#data 0xD35B7FFC
#data 0x2F326E43
#data 0x85EFE304
#data 0x895E3033
#data 0x64E390A9
#data 0x05EED257
#data 0x420B7534
#data 0x600C7434
#data 0xE123D455
#data 0x31EC4009
#data 0x21004001
#data 0x03ECE023
#data 0x633C60F2
#data 0xF3364308
#data 0xF33DE023
#data 0x0E24025A
#data 0x84E605EC
#data 0x655D655C
#data 0x63537001
#data 0x450880E6
#data 0xE01E4500
#data 0x353881EE
#data 0x450885EF
#data 0x7001345C
#data 0xE05C81EF
#data 0xFE37F348
#data 0xF346E004
#data 0xFE37E068
#data 0xF346E008
#data 0xFE37E060
#data 0xF346E00C
#data 0xFE37E06C
#data 0xF346E018
#data 0xF38DF33D
#data 0x80E7005A
#data 0xF446E014
#data 0x8901F345
#data 0xF34CA004

#align4
loc_ce32C78:
#data 0x03ED9066
#data 0xF32D435A

#align4
loc_ce32C80:
#data 0x9061F33D
#data 0xE500D335
#data 0x0E15015A
#data 0x64E3430B
#data 0xE501D232
#data 0x64E3420B
#data 0x64E3E048
#data 0xE516E300
#data 0xE6010E36
#data 0x4F267F04
#data 0x432BD32D
#data 0x6EF6

loc_ce32CAE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce32CB6:
mov r4,r3
mov.l @(loc_ce32D64_to_loc_ce34A4C_to_loc_ce32CC8,pc),r1 ; r1 set to 0xCE34A4C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce32CC8:
mov.l r14,@-r15
mov r4,r14
mov 0x3E,r3 ; r3 set to 0x3E
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce32D4A,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce32D68_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce32D6C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce32D4C,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_ce32D70_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(loc_ce32D4E,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce32D74_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(loc_ce32D78_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce32D60_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x09,r6 ; r6 set to 0x09
mov 0x16,r5 ; r5 set to 0x16
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14
#data 0x020C
#data 0x0130

loc_ce32D4A:
#data 0x01A1

loc_ce32D4C:
#data 0x01F9

loc_ce32D4E:
#data 0x041C

#align4
loc_ce32D50_to_loc_ce347A4:
#data loc_ce347A4
#data loc_8c03362C

#align4
loc_ce32D58_to_loc_ce345E4:
#data loc_ce345E4
#data loc_8c0CE62C

#align4
loc_ce32D60_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce32D64_to_loc_ce34A4C_to_loc_ce32CC8:
#data loc_ce34A4C_to_loc_ce32CC8

loc_ce32D68_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce32D6C_to_loc_8c056DE4:
#data loc_8c056DE4

loc_ce32D70_to_loc_8c05218A:
#data loc_8c05218A

loc_ce32D74_to_loc_8c035162:
#data loc_8c035162

loc_ce32D78_to_loc_8c05115A:
#data loc_8c05115A

loc_ce32D7C:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E43905E
#data 0x0E34E302
#data 0x905AE205
#data 0x90590E24
#data 0x880100EC
#data 0xED008F12
#data 0x00EC9054
#data 0x8B0D8801
#data 0x65F39050
#data 0xE601D32B
#data 0xC7280ED4
#data 0xC728F308
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B

#align4
loc_ce32DC0:
#data 0x00EC9042
#data 0x8B0C8802
#data 0xE51684E6
#data 0xE613D323
#data 0x80E67001
#data 0x9038E700
#data 0x430B0ED4
#data 0x903364E3
#data 0x0ED4

loc_ce32DE2:
#data 0xD31F
#data 0x64E3430B
#data 0x4F267F0C
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_ce32DF2:
mov.w @(loc_ce32E44,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2 ; r2 set to 0x05
mov.w @(loc_ce32E46,pc),r0 ; r0 set to 0x328
mov.l @(loc_ce32E60_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_ce32E2C
mov.w @(loc_ce32E4C,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_ce32E64_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(loc_ce32E4E,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_ce32E2C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce32E32:
mov r4,r3
mov.l @(loc_ce32E68_to_loc_ce34A58_to_loc_ce32E6C,pc),r1 ; r1 set to 0xCE34A58
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce32E44:
#data 0x03F8

loc_ce32E46:
#data 0x0328
#data 0x01A30141

loc_ce32E4C:
#data 0x03F9

loc_ce32E4E:
#data 0x0327
#data 0x41555555
#data 0x433C9249
#data loc_8c050834
#data loc_8c07A428

#align4
loc_ce32E60_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce32E64_to_loc_8c051648:
#data loc_8c051648

loc_ce32E68_to_loc_ce34A58_to_loc_ce32E6C:
#data loc_ce34A58_to_loc_ce32E6C

loc_ce32E6C:
#data 0x6E432FE6
#data 0x2FD6E341
#data 0x4F22ED00
#data 0x65D384E6
#data 0x80E67001
#data 0x0E34908D
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD3477026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xD2430215
#data 0x64E3420B
#data 0xF48DE05C
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xFE47D33E
#data 0x64E3430B
#data 0x0ED4E023
#data 0x000960D3
#data 0x81EF946A
#data 0x34ECE001
#data 0x9066804E
#data 0x600C00EC
#data 0x89088802
#data 0xD3369061
#data 0x905F0ED4
#data 0xE038F3E6
#data 0x430BFE37
#data 0x64E3

loc_ce32EEE:
#data 0xD233
#data 0xE60DE501
#data 0x64E3420B
#data 0xD3314F26
#data 0xE516E60E
#data 0x6DF664E3
#data 0x6EF6432B

#align4
loc_ce32F08:
#data 0x4F222FE6
#data 0x904A7FF4
#data 0xE3026E43
#data 0xE2050E34
#data 0x0E249046
#data 0x00EC9045
#data 0x8B0E8801
#data 0xE2009041
#data 0x65F3D328
#data 0xC7250E24
#data 0xC725F308
#data 0xFF3AE601
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

loc_ce32F42:
#data 0x9032
#data 0x880200EC
#data 0x84E68B0F
#data 0xE710E300
#data 0x65737001
#data 0xE61380E6
#data 0x0E349027
#data 0x430BD31C
#data 0x941D64E3
#data 0x34ECE001
#data 0x804E

loc_ce32F6A:
#data 0xD31A
#data 0x64E3430B
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

loc_ce32F78:
mov.w @(loc_ce32FA6,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.w @(loc_ce32FA0,pc),r5 ; r5 set to 0x2A4
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(loc_ce32FA8,pc),r0 ; r0 set to 0x328
add r4,r5 ; r5 ??? bc r4 is ???
mov.b r2,@(r0,r4)
mov.b @(0x0E,r5),r0
tst r0,r0
bf loc_ce33000
mov.w @(loc_ce32FA2,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt loc_ce32FD8
mov 0x04,r0 ; r0 set to 0x04
bra loc_ce33000
mov.b r0,@(0x06,r4)
#data 0x01A1

loc_ce32FA0:
#data 0x02A4

loc_ce32FA2:
#data 0x01F9
#data 0x041C

loc_ce32FA6:
#data 0x03F8

loc_ce32FA8:
#data 0x0328
#data 0x0141
#data mem_8c2896b0
#data loc_8c035162
#data loc_8c05218A
#data loc_8c05115A
#data loc_8c02FEC4
#data loc_8c034E8C
#data 0xC2200000
#data 0x43092492
#data loc_8c050834
#data loc_8c07A428
#data loc_8c034DEE


loc_ce32FD8:
mov.b @(0x06,r4),r0
mov 0x0F,r6 ; r6 set to 0x0F
fldi0 fr4
add 0x01,r0
mov.l @(loc_ce33110_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r4)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r4)
mova @(loc_ce3310C,pc),r0  ; r0 set to 0xCE3310C
fmov.s @r0,fr3 ; r3 ??
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr3,@(r0,r4)
jmp @r3
mov 0x16,r5

loc_ce33000:
mov.w @(loc_ce330FE,pc),r0 ; r0 set to 0x141
mov.b @(r0,r4),r2
tst r2,r2
bf loc_ce3300E
mov.l @(loc_ce33114_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

loc_ce3300E:
rts
nop
;==============================================

loc_ce33012:
#data 0x2FE6
#data 0x90736E43
#data 0x4F22E400
#data 0x70FF0E44
#data 0x906E0E44
#data 0x70010E44
#data 0x906B0E44
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x84E68B19
#data 0x7001F48D
#data 0x80E6D336
#data 0x0E449061
#data 0xFE47E05C
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xF3E69056
#data 0xFE37E038
#data 0x64E3430B
#data 0xE516D22B
#data 0x420BE610
#data 0x64E3

loc_ce3306A:
#data 0xD32A
#data 0x64E3430B
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce330AE:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce33100,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(loc_ce33102,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(loc_ce33108,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r3
cmp/pz r3
bt loc_ce330E2
mov.l @(loc_ce3311C_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x00,r5 ; r5 set to 0x00
mov 0x0D,r6 ; r6 set to 0x0D
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_ce33120_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_ce330E2:
lds.l @r15+,pr
mov.l @(loc_ce33114_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_ce330EC:
mov r4,r3
mov.l @(loc_ce33124_to_loc_ce34A6C_to_loc_ce33128,pc),r1 ; r1 set to 0xCE34A6C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce330FE:
#data 0x0141

loc_ce33100:
#data 0x03F9

loc_ce33102:
#data 0x0327
#data 0x01F9041C

loc_ce33108:
#data 0x0143
#data 0x0000

#align4
loc_ce3310C:
#data 0xBF4DB6DB

#align4
loc_ce33110_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33114_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c0511B4

#align4
loc_ce3311C_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_ce33120_to_loc_8c051648:
#data loc_8c051648

loc_ce33124_to_loc_ce34A6C_to_loc_ce33128:
#data loc_ce34A6C_to_loc_ce33128

loc_ce33128:
#data 0x6E432FE6
#data 0x2FD6E341
#data 0xF48DED00
#data 0x84E64F22
#data 0x80E67001
#data 0x0E34908B
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD3487026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xE05C0215
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x9073FE47
#data 0x0ED4D23F
#data 0xF3E69071
#data 0xFE37E038
#data 0x64E3420B
#data 0x65D3D33C
#data 0x64E3430B
#data 0x00EC9068
#data 0x8806600C
#data 0x64E38F06
#data 0xE3109064
#data 0x0E249261
#data 0x0E347001

#align4
loc_ce331A0:
#data 0x430BD335
#data 0xE0230009
#data 0xE0210ED4
#data 0x60D30ED4
#data 0xD3320009
#data 0x81EE64E3
#data 0x81EFE516
#data 0x4F26E60A
#data 0x432B6DF6
#data 0x6EF6

loc_ce331C6:
#data 0x2FE6
#data 0x7FF44F22
#data 0x6E439049
#data 0x0E34E302
#data 0x9045E205
#data 0x90440E24
#data 0x880100EC
#data 0x90408B16
#data 0xD328E200
#data 0x0E2465F3
#data 0xF308C724
#data 0xE601C724
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE70ED222
#data 0xE6136573
#data 0x64E3420B
#data 0x81EE902C

#align4
loc_ce33210:
#data 0x03EC902B
#data 0x8d034311
#data 0x84E664E3
#data 0x80E67001

#align4
loc_ce33220:
#data 0x430BD31B
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce3322E:
#data 0x9018
#data 0xE205E302
#data 0x90150434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B042008
#data 0x70018446
#data 0xE0788046
#data 0x814E

loc_ce33252:
#data 0x000B
#data 0x01A10009
#data 0x041C01F9
#data 0x00FF0255
#data 0x03F803F0
#data 0x01410328
#data 0x014300B4
#data mem_8c2896b0
#data loc_8c05218A
#data loc_8c035162
#data loc_8c05115A
#data loc_8c034E8C
#data 0xC1D55555
#data 0x43892492
#data loc_8c050834
#data loc_8c07A428
#data loc_8c034DEE


loc_ce33294:
mov.w @(loc_ce333B2,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2 ; r2 set to 0x05
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_ce333B4,pc),r0 ; r0 set to 0x328
mov 0x0D,r6 ; r6 set to 0x0D
mov.l @(loc_ce333C0_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov.b r2,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x329
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(loc_ce333B6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt loc_ce332C8
mov.l @(loc_ce333C8_to_loc_8c26A5A0,pc),r3 ; r3 set to 0x8C26A5A0
mova @(loc_ce333C4,pc),r0  ; r0 set to 0xCE333C4
fmov.s @r3,fr3 ; r3 ??
bra loc_ce332D0
fmov.s @r0,fr2

loc_ce332C8:
mov.l @(loc_ce333D0_to_loc_8c26A5A4,pc),r2 ; r2 set to 0x8C26A5A4
mova @(loc_ce333CC,pc),r0  ; r0 init to 0xCE333CC
fmov.s @r0,fr2 ; r2 ??
fmov.s @r2,fr3

loc_ce332D0:
fadd fr2,fr3
mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
mov 0x0F,r7 ; r7 set to 0x0F,r7 set to 0x0F
mov.l @(loc_ce333D4_to_loc_8c07A428,pc),r3 ; r3 set to 0x8C07A428,r3 set to 0x8C07A428
mov r7,r5 ; r5 set to 0x0F,r5 set to 0x0F
mov 0x13,r6 ; r6 set to 0x13,r6 set to 0x13
fmov.s fr3,@(r0,r14)
mov.w @(loc_ce333B8,pc),r0 ; r0 set to 0xB4,r0 set to 0xB4
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce333D8_to_loc_8c03319E,pc),r2 ; r2 set to 0x8C03319E,r2 set to 0x8C03319E
jsr @r2
nop
mov.b r0,@(0x07,r14)
mov 0x05,r5 ; r5 set to 0x05,r5 set to 0x05
mov.b @(0x07,r14),r0
mov.l @(loc_ce333DC_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
and 0x01,r0
mov.b r0,@(0x07,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce333E0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
mov 0x0B,r6 ; r6 set to 0x0B,r6 set to 0x0B
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce333E4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_ce33310:
mov.w @(loc_ce333B2,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_ce333E8_to_loc_8c26A8E4,pc),r1 ; r1 set to 0x8C26A8E4
mov 0x05,r2 ; r2 set to 0x05
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(loc_ce333B4,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r14)
mov.l @r1,r3 ; r3 ??
tst r3,r3
bt loc_ce33332
bra loc_ce33440
nop

loc_ce33332:
mov.w @(loc_ce333BA,pc),r0 ; r0 set to 0x525
mov.l @(loc_ce333D4_to_loc_8c07A428,pc),r12 ; r12 set to 0x8C07A428
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_ce33392
mov 0x10,r13 ; r13 set to 0x10
mov.w @(0x1C,r14),r0
cmp/eq 0x1E,r0
bt loc_ce33392
mov.l @(loc_ce333D8_to_loc_8c03319E,pc),r2 ; r2 set to 0x8C03319E
jsr @r2
nop
mov 0x01,r3 ; r3 set to 0x01
mov r0,r4 ; r4 set to 0x525
and r3,r4 ; r4 ??
extu.b r4,r4
tst r4,r4
bt/s loc_ce33368
mov 0x13,r6 ; r6 set to 0x13
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x526
mov.b r0,@(0x06,r14)
mov r13,r0 ; r0 set to 0x10
nop
mov.w r0,@(0x1C,r14)
bra loc_ce3337C
mov 0x0C,r7

loc_ce33368:
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.b @(0x07,r14),r0
xor r3,r0
mov.b r0,@(0x07,r14)
mov r13,r0
nop
mov 0x0D,r7 ; r7 set to 0x0D
mov.w r0,@(0x1C,r14)

loc_ce3337C:
mov r7,r5 ; r5 set to 0x0D
jsr @r12
mov r14,r4
mov.l @(loc_ce333EC_to_loc_8c289732,pc),r2 ; r2 set to 0x8C289732,r2 set to 0x8C289732
mov 0x18,r1 ; r1 set to 0x18,r1 set to 0x18
mov.w @r2,r3
cmp/ge r1,r3
bf loc_ce33440
mov 0x01,r0 ; r0 set to 0x01,r0 set to 0x01
bra loc_ce33440
mov.b r0,@(0x07,r14)

loc_ce33392:
mov.w @(loc_ce333BC,pc),r0 ; r0 set to 0x348
mov.w @(loc_ce333BE,pc),r2 ; r2 set to 0x200
mov.w @(r0,r14),r3
extu.w r3,r3
tst r2,r3
bt loc_ce333F0
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x349
mov.b r0,@(0x06,r14)
mov r13,r0 ; r0 ??? bc r13 is ???
nop
mov 0x13,r6 ; r6 set to 0x13
mov.w r0,@(0x1C,r14)
mov 0x0C,r7 ; r7 set to 0x0C
bra loc_ce33410
mov r7,r5

loc_ce333B2:
#data 0x03F8

loc_ce333B4:
#data 0x0328

loc_ce333B6:
#data 0x0130

loc_ce333B8:
#data 0x00B4

loc_ce333BA:
#data 0x0525

loc_ce333BC:
#data 0x0348

loc_ce333BE:
#data 0x0200

#align4
loc_ce333C0_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_ce333C4:
#data 0x42A00000

#align4
loc_ce333C8_to_loc_8c26A5A0:
#data loc_8c26A5A0

loc_ce333CC:
#data 0xC2A00000

#align4
loc_ce333D0_to_loc_8c26A5A4:
#data loc_8c26A5A4

loc_ce333D4_to_loc_8c07A428:
#data loc_8c07A428

loc_ce333D8_to_loc_8c03319E:
#data loc_8c03319E

loc_ce333DC_to_loc_8c042008:
#data loc_8c042008

loc_ce333E0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce333E4_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce333E8_to_loc_8c26A8E4:
#data loc_8c26A8E4

loc_ce333EC_to_loc_8c289732:
#data loc_8c289732


loc_ce333F0:
mov.w @(r0,r14),r0
extu.w r0,r0
tst 0x40,r0
bt loc_ce33418
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.b @(0x07,r14),r0
xor 0x01,r0
mov.b r0,@(0x07,r14)
mov r13,r0
nop
mov 0x13,r6 ; r6 set to 0x13
mov.w r0,@(0x1C,r14)
mov 0x0D,r5 ; r5 set to 0x0D
mov 0x0D,r7 ; r7 set to 0x0D

loc_ce33410:
jsr @r12
mov r14,r4
bra loc_ce33440
nop

loc_ce33418:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_ce33440
mov 0x0C,r0 ; r0 set to 0x0C
mov.l @(loc_ce334E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r14)
mov 0x0A,r0 ; r0 set to 0x0A
mov 0x0D,r6 ; r6 set to 0x0D
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov r14,r4
mov 0x16,r5 ; r5 set to 0x16
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_ce33440:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

loc_ce3344A:
#data 0x9049
#data 0xE205E302
#data 0x90460434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B042008
#data 0x70018446
#data 0xE00A8046
#data 0x814E

loc_ce3346E:
#data 0xD31F
#data 0x0009432B

#align4
loc_ce33474:
#data 0xE3029034
#data 0x0434E205
#data 0x04249031
#data 0x70FF854E
#data 0x7001814E
#data 0x2008600F
#data 0x84468B04
#data 0x80467001
#data 0x814EE00A

#align4
loc_ce33498:
#data 0x432BD314
#data 0x0009


loc_ce3349E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(loc_ce334E4,pc),r0 ; r0 set to 0x20C
mov r4,r14
mov 0x02,r2 ; r2 set to 0x02
mov.l @(r0,r14),r3
mov.w @(loc_ce334E0,pc),r0 ; r0 set to 0x3F8
mov.l r3,@r15
mov 0x05,r3 ; r3 set to 0x05
mov.b r2,@(r0,r14)
mov.w @(loc_ce334E2,pc),r0 ; r0 set to 0x328
mov.b r3,@(r0,r14)
mov.w @(0x1C,r14),r0
cmp/eq 0x0A,r0
bf loc_ce33566
mov.b @(0x07,r14),r0
tst r0,r0
bt loc_ce33550
mov 0x23,r0 ; r0 set to 0x23
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
add 0x01,r3
mov.b r3,@(r0,r14)
mov.w @(loc_ce334E6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt loc_ce334F4
mova @(loc_ce334F0,pc),r0  ; r0 set to 0xCE334F0
bra loc_ce334F8
fmov.s @r0,fr3

loc_ce334E0:
#data 0x03F8

loc_ce334E2:
#data 0x0328

loc_ce334E4:
#data 0x020C

loc_ce334E6:
#data 0x0130

#align4
loc_ce334E8_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c034DEE

#align4
loc_ce334F0:
#data 0x43C80000


loc_ce334F4:
mova @(loc_ce33610,pc),r0  ; r0 init to 0xCE33610
fmov.s @r0,fr3

loc_ce334F8:
mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
mov.w @(loc_ce33608,pc),r7 ; r7 set to 0xC9,r7 set to 0xC9
fmov.s @(r0,r15),fr2
mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
mov r15,r5
mov.l @(loc_ce33618_to_loc_8c10235C,pc),r3 ; r3 set to 0x8C10235C,r3 set to 0x8C10235C
fadd fr3,fr2
add 0x04,r5
mov 0x01,r6 ; r6 set to 0x01,r6 set to 0x01
fmov.s fr2,@(r0,r15)
mova @(loc_ce33614,pc),r0  ; r0 set to 0xCE33614,r0 set to 0xCE33614
fmov.s @r0,fr3 ; r3 ??,r3 ??
mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
fmov.s fr3,@(r0,r15)
mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
fmov.s @(r0,r15),fr3
mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
fmov.s @(r0,r14),fr2
mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
fadd fr3,fr2
fmov.s fr2,@(r0,r15)
mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
fmov.s @(r0,r15),fr3
mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
fadd fr3,fr2
fmov.s fr2,@(r0,r15)
jsr @r3
mov r14,r4
mov.l @(loc_ce3361C_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A,r2 set to 0x8C04223A
mov 0x49,r5 ; r5 set to 0x49,r5 set to 0x49
jsr @r2
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21,r0 set to 0x21
mov.l @(loc_ce33620_to_loc_8c05923C,pc),r3 ; r3 set to 0x8C05923C,r3 set to 0x8C05923C
mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???,r5 ??? bc r14 is ???
extu.b r5,r5
shll2 r5
neg r5,r5
jsr @r3
mov.l @r15,r4
bra loc_ce33566
nop

loc_ce33550:
mov.l @(loc_ce33624_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x0C,r0 ; r0 set to 0x0C
mov 0x16,r5 ; r5 set to 0x16
mov.b r0,@(0x06,r14)
mov 0x0D,r6 ; r6 set to 0x0D
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33566:
mov.w @(0x1C,r14),r0
cmp/pl r0
bt loc_ce3359E
mov.w @(0x1E,r14),r0
cmp/eq 0x03,r0
bf loc_ce3357E
mov 0x09,r0 ; r0 set to 0x09
mov.b r0,@(0x06,r14)
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce3357E:
mov.b @(0x06,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov 0x10,r5 ; r5 set to 0x10
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x17,r0 ; r0 set to 0x17
mov.w r0,@(0x1C,r14)
mov 0x23,r0 ; r0 set to 0x23
mov.b r3,@(r0,r14)
mov.l @(loc_ce33628_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce3359E:
mov.l @(loc_ce3362C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
add 0xFF,r0
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce335B0:
mov.w @(loc_ce3360A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(loc_ce3360C,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r4)
mov.w @(0x1C,r4),r0
add 0xFF,r0 ; r0 set to 0x327
mov.w r0,@(0x1C,r4)
add 0x01,r0 ; r0 set to 0x328
exts.w r0,r0 ; r0 ??
tst r0,r0
bf loc_ce335D6
mov.b @(0x06,r4),r0
add 0x01,r0
mov.b r0,@(0x06,r4)
mov 0x14,r0 ; r0 set to 0x14
rts
mov.w r0,@(0x1C,r4)
;==============================================

loc_ce335D6:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bf loc_ce335E4
mov.l @(loc_ce3362C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

loc_ce335E4:
rts
nop
;==============================================

#align4
loc_ce335E8:
#data 0xE302900F
#data 0x0434E205
#data 0x0424900C
#data 0x034C900B
#data 0x89024311
#data 0x70018446
#data 0x8046

loc_ce33602:
#data 0xD30A
#data 0x0009432B

loc_ce33608:
#data 0x00C9

loc_ce3360A:
#data 0x03F8

loc_ce3360C:
#data 0x0328
#data 0x0143

#align4
loc_ce33610:
#data 0xC3C80000

#align4
loc_ce33614:
#data 0x43892492

#align4
loc_ce33618_to_loc_8c10235C:
#data loc_8c10235C

loc_ce3361C_to_loc_8c04223A:
#data loc_8c04223A

loc_ce33620_to_loc_8c05923C:
#data loc_8c05923C

loc_ce33624_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33628_to_loc_8c042008:
#data loc_8c042008

loc_ce3362C_to_loc_8c034DEE:
#data loc_8c034DEE


loc_ce33630:
mov.w @(loc_ce3375A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2 ; r2 set to 0x05
mov.w @(loc_ce3375C,pc),r0 ; r0 set to 0x328
mov.l @(loc_ce33768_to_loc_8c03319E,pc),r3 ; r3 set to 0x8C03319E
jsr @r3
mov.b r2,@(r0,r14)
mov.b r0,@(0x07,r14)
mov 0x02,r3 ; r3 set to 0x02
mov.b @(0x07,r14),r0
and 0x01,r0
mov.b r0,@(0x07,r14)
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14)
mov.w @(0x1E,r14),r0
cmp/gt r3,r0
bt loc_ce33686
mov 0x04,r0 ; r0 set to 0x04
mov.b r0,@(0x06,r14)
mov.w @(0x1E,r14),r0
add 0x01,r0 ; r0 set to 0x05
mov.w r0,@(0x1E,r14)
mov.w @(0x1E,r14),r0
cmp/eq 0x03,r0
bf loc_ce33678
lds.l @r15+,pr
mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r1 ; r1 set to 0x8C034E8C
mov r14,r4
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x16,r5 ; r5 set to 0x16
jmp @r1
mov.l @r15+,r14

loc_ce33678:
lds.l @r15+,pr
mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x0B,r6 ; r6 set to 0x0B
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14

loc_ce33686:
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33692:
mov.w @(loc_ce3375A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(loc_ce3375C,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r4)
mov.w @(loc_ce3375E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
cmp/pz r3
bt loc_ce336B8
mov.b @(0x06,r4),r0
mov 0x0D,r6 ; r6 set to 0x0D
mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0 ; r0 set to 0x144
mov.b r0,@(0x06,r4)
mov 0x0A,r0 ; r0 set to 0x0A
mov.w r0,@(0x1C,r4)
jmp @r3
mov 0x16,r5

loc_ce336B8:
mov.l @(loc_ce33770_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

loc_ce336BE:
#data 0x904C
#data 0xE205E302
#data 0x90490434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B022008
#data 0x70018446
#data 0x8046

loc_ce336DE:
#data 0x000B
#data 0x0009
;==============================================

loc_ce336E2:
mov.w @(loc_ce33760,pc),r0 ; r0 set to 0x141
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_ce3370E
mov 0x00,r13 ; r13 set to 0x00
mov.b r13,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x04,r0
bf/s loc_ce33706
mov r14,r4
bra loc_ce33708
mov 0x0F,r5

loc_ce33706:
#data 0xE50C

#align4
loc_ce33708:
#data 0x420BD21A
#data 0x0009


loc_ce3370E:
mov.w @(loc_ce3375E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r3
cmp/pz r3
bt loc_ce3373C
mov.w @(loc_ce33762,pc),r0 ; r0 set to 0x3F9
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_ce33778_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov 0x0D,r6 ; r6 set to 0x0D
mov.b r13,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r13,@(r0,r14)
mov.w @(loc_ce33764,pc),r0 ; r0 set to 0x327
mov.b r13,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce3377C_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_ce3373C:
lds.l @r15+,pr
mov.l @(loc_ce33770_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_ce33748:
mov r4,r3
mov.l @(loc_ce33780_to_loc_ce34AA4_to_loc_ce33784,pc),r1 ; r1 set to 0xCE34AA4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce3375A:
#data 0x03F8

loc_ce3375C:
#data 0x0328

loc_ce3375E:
#data 0x0143

loc_ce33760:
#data 0x0141

loc_ce33762:
#data 0x03F9

loc_ce33764:
#data 0x0327
#data 0x0000

#align4
loc_ce33768_to_loc_8c03319E:
#data loc_8c03319E

loc_ce3376C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33770_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c042008

#align4
loc_ce33778_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_ce3377C_to_loc_8c051648:
#data loc_8c051648

loc_ce33780_to_loc_ce34AA4_to_loc_ce33784:
#data loc_ce34AA4_to_loc_ce33784


loc_ce33784:
mov.l r14,@-r15
mov r4,r14
mov 0x47,r3 ; r3 set to 0x47
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_ce3384C,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r12,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r12,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce33854_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r12,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_ce33858_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(loc_ce3385C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov r12,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
mov.l @(loc_ce33864_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16
mov.l @(loc_ce33860_to_loc_ce345E4,pc),r13 ; r13 set to 0xCE345E4
mov r12,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
mov.w @(loc_ce3384E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt/s loc_ce337E2
mov 0x23,r0 ; r0 set to 0x23
bra loc_ce337E4
mov 0x01,r3

loc_ce337E2:
mov 0x02,r3 ; r3 set to 0x02

loc_ce337E4:
mov.b r3,@(r0,r14)
mov.w @(loc_ce3384E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt loc_ce337F2
bra loc_ce337F4
mov 0x07,r2

loc_ce337F2:
#data 0xE20E

#align4
loc_ce337F4:
#data 0x4208902C
#data 0x600C00EC
#data 0x8d038802
#data 0xD2193D2C
#data 0x64E3420B

#align4
loc_ce33808:
#data 0xE504D318
#data 0xE607E701
#data 0x64E3430B
#data 0xE05CF3D8
#data 0xFE37941B
#data 0xF3D6E004
#data 0x34ECE068
#data 0xE008FE37
#data 0xE060F3D6
#data 0xE00CFE37
#data 0xE06CF3D6
#data 0xE05AFE37
#data 0x60C381EE
#data 0x804A0009
#data 0x4F268146
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

loc_ce3384C:
#data 0x01A1

loc_ce3384E:
#data 0x0130
#data 0x02A401F9

#align4
loc_ce33854_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce33858_to_loc_8c05218A:
#data loc_8c05218A

loc_ce3385C_to_loc_8c035162:
#data loc_8c035162

loc_ce33860_to_loc_ce345E4:
#data loc_ce345E4

loc_ce33864_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c05115A
#data loc_8c03544C

#align4
loc_ce33870:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E439050
#data 0x0E34E305
#data 0x430BD329
#data 0x600E64E3
#data 0x8B124011
#data 0x00EC9047
#data 0x8B0E8801
#data 0xE2009043
#data 0x65F3D326
#data 0xC7230E24
#data 0xC723F308
#data 0xFF3AE601
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

loc_ce338B2:
#data 0x9035
#data 0x421102EC
#data 0x84E68928
#data 0x80E67001
#data 0x00EC902F
#data 0x8802600C
#data 0x902A8909
#data 0x0E24E202
#data 0xF308C719
#data 0xF2E69026
#data 0xF230E038
#data 0xFE27

loc_ce338DE:
#data 0xD317
#data 0xE516E000
#data 0xE60380E7
#data 0x64E3430B
#data 0xDD14E70A
#data 0xE6136573
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B

#align4
loc_ce3390C:
#data 0x420BD206
#data 0x7F0C64E3
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================
#data 0x01410328
#data 0x01F90143
#data 0x0000041C
#data loc_8c034DEE
#data 0xC1D55555
#data 0x43092492
#data loc_8c050834
#data 0x41AB6DB6
#data loc_8c034E8C
#data loc_8c07A428

#align4
loc_ce33944:
#data 0xE305909F
#data 0x6E432FE6
#data 0x2FD6D252
#data 0x0E344F22
#data 0xF428C74F
#data 0xE038F308
#data 0xF430F2E6
#data 0x8B00F245
#data 0xFE47

loc_ce33966:
#data 0xC74D
#data 0x908DF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8F07F215
#data 0xC749ED00
#data 0x9083F208
#data 0xE038F1E6
#data 0xFE17F120

#align4
loc_ce33988:
#data 0x00EC907F
#data 0x8B078802
#data 0xE715907B
#data 0x6573D343
#data 0xE6130ED4
#data 0x64E3430B

#align4
loc_ce339A0:
#data 0x34EC9474
#data 0x70FF8546
#data 0x70018146
#data 0x4015600D
#data 0xA0838B01
#data 0x0009

loc_ce339B6:
#data 0x60D3
#data 0x81460009
#data 0x03EC9067
#data 0x891B2338
#data 0xE309844A
#data 0x3033600C
#data 0x905F8916
#data 0xD235E147
#data 0x700B0E14
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6122
#data 0x717C4000
#data 0x7301031D
#data 0x844A0135
#data 0x804A7001
#data 0x8146E004

#align4
loc_ce339FC:
#data 0xD32BE15C
#data 0xE03431EC
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xE160F318
#data 0xF23031EC
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x85EE64E3
#data 0x81EE70FF
#data 0x2008600F
#data 0x90248B3A
#data 0xD319E202
#data 0x0E24E500
#data 0x80E6E004
#data 0x64E3430B
#data 0xE06CF39D
#data 0xFE37F34D
#data 0xF308C714
#data 0xF2E69010
#data 0xF1E6E038
#data 0xF125F230
#data 0xE5168F02
#data 0xE602A001

loc_ce33A78:
#data 0xE611

loc_ce33A7A:
#data 0x4F26
#data 0x64E3D20E
#data 0x422B6DF6
#data 0x03286EF6
#data 0x0141041C
#data 0x019E02A4
#data 0x01F501A1
#data 0xC2CDB6DB
#data loc_8c26A5B8
#data 0x40092492
#data 0x41892492
#data loc_8c07A428
#data mem_8c2896b0
#data loc_8c034DEE
#data loc_8c035162
#data 0x42855555
#data loc_8c034E8C

#align4
loc_ce33ABC:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

loc_ce33AC4:
rts
nop
;==============================================

loc_ce33AC8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce33C10,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(loc_ce33C12,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_ce33B20
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(loc_ce33C18_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_ce33C1C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14

loc_ce33B20:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_ce33B62:
mov.l r14,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov 0x48,r0 ; r0 set to 0x48
mov r4,r14
sts.l pr,@-r15
mov.l r3,@(r0,r14)
mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_ce33B84
lds.l @r15+,pr
mov.l @(loc_ce33C24_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_ce33B84:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33B8A:
mov r4,r3
mov.l @(loc_ce33C28_to_loc_ce34ABC_to_loc_ce33B9C,pc),r1 ; r1 set to 0xCE34ABC
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce33B9C:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
mov 0x00,r3 ; r3 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce33C16,pc),r0 ; r0 set to 0x1F9
mov.b r3,@(r0,r14)
mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
mov.l @(loc_ce33C2C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_ce33C1C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x1F,r6 ; r6 set to 0x1F
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

loc_ce33BDC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce33BF6
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce33C24_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce33BF6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce33BFE:
mov r4,r3
mov.l @(loc_ce33C30_to_loc_ce34AC4_to_loc_ce33C34,pc),r1 ; r1 set to 0xCE34AC4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_ce33C10:
#data 0x03F9

loc_ce33C12:
#data 0x0327

loc_ce33C14:
#data 0x041C

loc_ce33C16:
#data 0x01F9

#align4
loc_ce33C18_to_loc_8c0511B4:
#data loc_8c0511B4

loc_ce33C1C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33C20_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce33C24_to_loc_8c051648:
#data loc_8c051648

loc_ce33C28_to_loc_ce34ABC_to_loc_ce33B9C:
#data loc_ce34ABC_to_loc_ce33B9C

loc_ce33C2C_to_loc_8c05218A:
#data loc_8c05218A

loc_ce33C30_to_loc_ce34AC4_to_loc_ce33C34:
#data loc_ce34AC4_to_loc_ce33C34


loc_ce33C34:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(loc_ce33D88_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(loc_ce33D7E,pc),r0 ; r0 set to 0x1F9
mov.b r13,@(r0,r14)
mov.w @(loc_ce33D80,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_ce33D8C_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
jsr @r2
mov r14,r4
mov.w @(loc_ce33D82,pc),r0 ; r0 set to 0x1A1
mov 0x14,r3 ; r3 set to 0x14
mov 0x02,r6 ; r6 set to 0x02
mov r14,r4
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_ce33D90_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
mov 0x14,r5 ; r5 set to 0x14
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2 ; r2 ??
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
lds.l @r15+,pr
mov.l @(loc_ce33D94_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_ce33CA2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_ce33D98_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_ce33CC2
mov.l @(loc_ce33D9C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33CC2:
#data 0x905F
#data 0x880100EC
#data 0x905B8B0D
#data 0xD336E200
#data 0x0E2465F3
#data 0xF308C732
#data 0xFF3AC732
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

loc_ce33CE6:
#data 0x904D
#data 0x880200EC
#data 0x90498B06
#data 0xD32EE200
#data 0x0E24E51A
#data 0x64E3430B

#align4
loc_ce33CFC:
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================
loc_ce33D04:
	mov r4,r3
	mov.l @(loc_ce33DB0_to_loc_ce34ACC_to_loc_ce33D16,pc),r1 ; r1 set to 0xCE34ACC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce33D16:
#data 0x8446
#data 0x7001E302
#data 0x902E8046
#data 0xC7240434
#data 0xE05CF308
#data 0x902CF437
#data 0x2338034C
#data 0xE05C8B03
#data 0xF34DF346
#data 0xF437

loc_ce33D3A:
#data 0xE068
#data 0xF437F38D
#data 0xF308C71D
#data 0xE313E060
#data 0xC71CF437
#data 0xE06CF308
#data 0xF437E500
#data 0x90146653
#data 0x700B0434
#data 0x70F20455
#data 0x70260454
#data 0x0456D30A
#data 0x62328442
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x422BD206
#data 0xE514

loc_ce33D7E:
#data 0x01F9

loc_ce33D80:
#data 0x041C

loc_ce33D82:
#data 0x01A1
#data 0x01D20141

#align4
loc_ce33D88_to_loc_8c05218A:
#data loc_8c05218A

loc_ce33D8C_to_loc_8c05115A:
#data loc_8c05115A

loc_ce33D90_to_mem_8c2896b0:
#data mem_8c2896b0

loc_ce33D94_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33D98_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce33D9C_to_loc_8c051648:
#data loc_8c051648
#data 0x42555555
#data 0x43092492
#data loc_8c050EA4
#data loc_8c04223A

#align4
loc_ce33DB0_to_loc_ce34ACC_to_loc_ce33D16:
#data loc_ce34ACC_to_loc_ce33D16
#data 0x41F00000
#data 0x40892492
#data 0xBF4DB6DB


loc_ce33DC0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_ce33ED8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_ce33EDC_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C
add r14,r1 ; r1 ??? bc r14 is ???
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
extu.b r0,r0 ; r0 set to 0x60
tst r0,r0
bt loc_ce33E34
mov.b @(0x06,r14),r0
mov r14,r4
fldi0 fr4
mov 0x01,r6 ; r6 set to 0x01
add 0x01,r0 ; r0 set to 0x61
mov.l @(loc_ce33EE0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov 0x14,r5 ; r5 set to 0x14
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_ce33E34:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33E3A:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_ce33ED8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_ce33E54
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_ce33EE4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_ce33E54:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

loc_ce33E5C:
add 0xFC,r15
mov.l r4,@r15
mov r4,r0
nop
mov.w @(loc_ce33ECC,pc),r1 ; r1 set to 0x1F9
mov.l @(loc_ce33EE8_to_loc_ce34AD8_to_loc_ce33E74,pc),r2 ; r2 set to 0xCE34AD8
mov.b @(r0,r1),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r2),r0
jmp @r0
add 0x04,r15

loc_ce33E74:
mov.w @(loc_ce33ECE,pc),r0 ; r0 set to 0x1FA
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce33ED0,pc),r2 ; r2 set to 0xC00
sts.l pr,@-r15
mov.w @(r0,r14),r3
mov 0x22,r0 ; r0 set to 0x22
extu.w r3,r3
and r2,r3
shad r1,r3
mov.b r3,@(r0,r14)
extu.b r3,r3
tst r3,r3
bt loc_ce33EC0
mov.w @(loc_ce33ED2,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r3
tst r3,r3
bf loc_ce33EC0
mov.w @(loc_ce33ED4,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_ce33EC0
mov.l @(loc_ce33EEC_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
jsr @r2
mov r14,r4
tst r0,r0
bt/s loc_ce33EC0
mov r0,r4
mov.w @(loc_ce33ED6,pc),r0 ; r0 set to 0x1F7
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14)
mov r4,r0 ; r0 ??? bc r4 is ???
nop
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33EC0:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33EC8:
rts
mov 0x00,r0
;==============================================

loc_ce33ECC:
#data 0x01F9

loc_ce33ECE:
#data 0x01FA

loc_ce33ED0:
#data 0x0C00

loc_ce33ED2:
#data 0x01FE

loc_ce33ED4:
#data 0x01A3

loc_ce33ED6:
#data 0x01F7

#align4
loc_ce33ED8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_ce33EDC_to_loc_8c052CE2:
#data loc_8c052CE2

loc_ce33EE0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_ce33EE4_to_loc_8c051648:
#data loc_8c051648

loc_ce33EE8_to_loc_ce34AD8_to_loc_ce33E74:
#data loc_ce34AD8_to_loc_ce33E74

loc_ce33EEC_to_loc_8c045790:
#data loc_8c045790


loc_ce33EF0:
mov.w @(loc_ce33FC8,pc),r0 ; r0 set to 0x1FA
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_ce33FCA,pc),r2 ; r2 set to 0x1C00
sts.l pr,@-r15
mov.w @(r0,r14),r3
mov 0x22,r0 ; r0 set to 0x22
extu.w r3,r3
and r2,r3
shad r1,r3
mov.b r3,@(r0,r14)
extu.b r3,r3
tst r3,r3
bt loc_ce33F48
mov.w @(loc_ce33FCC,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r3
tst r3,r3
bf loc_ce33F48
mov.w @(loc_ce33FCE,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_ce33F48
mova @(loc_ce33FDC,pc),r0  ; r0 set to 0xCE33FDC
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
fcmp/gt fr3,fr2
bf loc_ce33F48
mov.l @(loc_ce33FE0_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
jsr @r2
mov r14,r4
tst r0,r0
bt/s loc_ce33F48
mov r0,r4 ; r4 set to 0x38
mov.w @(loc_ce33FD0,pc),r0 ; r0 set to 0x1F7
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@(r0,r14)
mov r4,r0 ; r0 set to 0x38
nop
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33F48:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

loc_ce33F50:
mov.l r4,@-r15
mov r4,r0
nop
mov.w @(loc_ce33FD0,pc),r1 ; r1 set to 0x1F7
mov.l @(loc_ce33FE4_to_loc_ce34AE8_to_loc_ce33F68,pc),r2 ; r2 set to 0xCE34AE8
mov.b @(r0,r1),r0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

#align4
loc_ce33F68:
#data 0x4F222FE6
#data 0x902B7FF4
#data 0x922E6E43
#data 0x633D03ED
#data 0x8d0C2328
#data 0x9029E30A
#data 0x00EC9128
#data 0xCA0131EC
#data 0x90242100
#data 0x00ED9123
#data 0xCA0131EC
#data 0x2101

loc_ce33F96:
#data 0x901F
#data 0x0E3465F3
#data 0xF308C712
#data 0xD313C712
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0x420BD210
#data 0xD31064E3
#data 0xE600E50F
#data 0x64E3430B
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

loc_ce33FC8:
#data 0x01FA

loc_ce33FCA:
#data 0x1C00

loc_ce33FCC:
#data 0x01FE

loc_ce33FCE:
#data 0x01A3

loc_ce33FD0:
#data 0x01F7
#data 0x0400
#data 0x013001D2
#data 0x000001A0

#align4
loc_ce33FDC:
#data 0x43092492

#align4
loc_ce33FE0_to_loc_8c045790:
#data loc_8c045790

loc_ce33FE4_to_loc_ce34AE8_to_loc_ce33F68:
#data loc_ce34AE8_to_loc_ce33F68
#data 0xC2A6AAAA
#data 0x431E9249
#data loc_8c103660
#data loc_8c056F2A
#data loc_8c034E8C

#align4
loc_ce33FFC:
#data 0x4F222FE6
#data 0x90977FF4
#data 0x92966E43
#data 0x633D03ED
#data 0x890B2328
#data 0x91919092
#data 0x31EC00EC
#data 0x2100CA01
#data 0x918C908D
#data 0x31EC00ED
#data 0x2101CA01

#align4
loc_ce34028:
#data 0xD348C746
#data 0xC746F308
#data 0xFF3A65F3
#data 0xE004F308
#data 0x430BFF37
#data 0x907D64E3
#data 0xF48DE20A
#data 0xE05C0E24
#data 0xE068FE47
#data 0xF330F39D
#data 0xE060FE47
#data 0xD33FF2E6
#data 0xFE27F233
#data 0xF208C73C
#data 0xFE27E06C
#data 0x64E3430B
#data 0xE50FD23B
#data 0x420BE601
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce3407A:
mov.w @(loc_ce3413E,pc),r0 ; r0 set to 0x1EA
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r14)
add 0x0D,r0 ; r0 set to 0x1F7
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov r14,r4
mov.l @(loc_ce3415C_to_loc_ce34AF0_to_loc_ce34098,pc),r1 ; r1 set to 0xCE34AF0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r1),r3 ; r3 ??
jmp @r3
mov.l @r15+,r14

#align4
loc_ce34098:
#data 0x4F222FE6
#data 0x904F7FF4
#data 0x00EC6E43
#data 0x8B2F8801
#data 0xD32FC72D
#data 0xC72DF308
#data 0xE60265F3
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE502D22A
#data 0x64E3420B
#data 0xE300903A
#data 0xE2209135
#data 0xE6000E34
#data 0x65639035
#data 0x70EC04EE
#data 0x314C04E6
#data 0x03EC902B
#data 0x0E349028
#data 0x600C00EC
#data 0x2101CA01
#data 0x034C9023
#data 0x04349020
#data 0x042470CF
#data 0xE3017055
#data 0xD31B0434
#data 0x64E3430B

#align4
loc_ce34108:
#data 0x420BD21A
#data 0x600E64E3
#data 0x89024011
#data 0x420BD218
#data 0x64E3

loc_ce3411A:
#data 0x7F0C
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_ce34122:
mov r4,r3
mov.l @(loc_ce3417C_to_loc_ce34AF8_to_loc_ce34180,pc),r1 ; r1 set to 0xCE34AF8
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x040001FA
#data 0x013001D2
#data 0x01A0

loc_ce3413E:
#data 0x01EA
#data 0x01C80141
#data 0xC2A6AAAA
#data 0x431E9249
#data loc_8c103660
#data 0xBF4DB6DB
#data loc_8c056F2A
#data loc_8c034E8C

#align4
loc_ce3415C_to_loc_ce34AF0_to_loc_ce34098:
#data loc_ce34AF0_to_loc_ce34098
#data 0xC3200000
#data 0x431A4924
#data loc_8c0FDAB6
#data loc_8c04223A
#data loc_8c02FEC4
#data loc_8c034DEE
#data loc_8c051648

#align4
loc_ce3417C_to_loc_ce34AF8_to_loc_ce34180:
#data loc_ce34AF8_to_loc_ce34180

loc_ce34180:
#data 0x4F222FE6
#data 0x90807FF4
#data 0x00EC6E43
#data 0x8B248801
#data 0xD342C740
#data 0xC740F308
#data 0xE60265F3
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE502D23D
#data 0x64E3420B
#data 0xE300906B
#data 0x0E34E221
#data 0x9067E600
#data 0x04EE6563
#data 0x04E670EC
#data 0x03EC701E
#data 0x70CF0434
#data 0x70550424
#data 0x0434E301
#data 0x430BD333
#data 0x64E3

loc_ce341DA:
#data 0xD233
#data 0x64E3420B
#data 0x4011600E
#data 0xD2318902
#data 0x64E3420B

#align4
loc_ce341EC:
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================
loc_ce341F4:
mov.l r4,@-r15
mov r4,r0
nop
mov.w @(loc_ce3428E,pc),r1 ; r1 set to 0x1F7
mov.l @(loc_ce342B0_to_loc_ce34AFC_to_loc_ce3420C,pc),r2 ; r2 set to 0xCE34AFC
mov.b @(r0,r1),r0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_ce3420C:
mov.w @(loc_ce3428C,pc),r0 ; r0 set to 0x1C8
mov r4,r5
mov.l r4,@-r15
mov.l @(loc_ce342B4_to_loc_8c04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

loc_ce3421A:
rts
nop

;==============================================
Rby_TmHypMn:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce34290,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ;Get Assist Type
	cmp/eq 0x00,r0
	bt Rby_AssistA
	cmp/eq 0x01,r0
	bt Rby_AssistB
	cmp/eq 0x02,r0
	bt Rby_AssistC
	bra loc_ce34254
	nop

Rby_AssistA:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x05,r3 ; r3 set to 0x05
	bra loc_ce34254
	mov.b r3,@(r0,r4)

Rby_AssistB:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_ce34254
	mov.b r1,@(r0,r4)

Rby_AssistC:
	mov.w @(0x40,pc),r0
	mov 0x0C,r2
	mov.b r2,@(r0,r4)

loc_ce34254:
	mov.l @(loc_ce342B8_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

;==============================================
Rby_TmHypAs:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce34290,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_ce3427A
	cmp/eq 0x01,r0
	bt loc_ce34282
	cmp/eq 0x02,r0
	bt loc_ce342BC
	bra loc_ce342C2
	nop

loc_ce3427A:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x05,r3 ; r3 set to 0x05
	bra loc_ce342C2
	mov.b r3,@(r0,r4)

loc_ce34282:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_ce342C2
	mov.b r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3428a:
	#data 0x0141
loc_ce3428C:
	#data 0x01C8
loc_ce3428E:
	#data 0x01F7
loc_ce34290:
	#data 0x04C9
loc_ce34292:
	#data 0x01E9
	#align4

loc_ce34294:
	#data 0xC2D55555
loc_ce34298:
	#data 0x42CDB6DB
loc_ce3429c:
	#data loc_8c0FDAB6
loc_ce342a0:
	#data loc_8c04223A
loc_ce342a4:
	#data loc_8c02FEC4
loc_ce342a8:
	#data loc_8c034DEE
loc_ce342ac:
	#data loc_8c05176E

loc_ce342B0_to_loc_ce34AFC_to_loc_ce3420C:
	#data loc_ce34AFC_to_loc_ce3420C
loc_ce342B4_to_loc_8c04CC1C:
	#data loc_8c04CC1C
loc_ce342B8_to_loc_8c0530D8:
	#data loc_8c0530D8


;==============================================
loc_ce342BC:
	mov.w @(0x8a,pc),r0
	mov 0x0C,r2
	mov.b r2,@(r0,r4)

loc_ce342C2:
	mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

;==============================================
Rby_Assists:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce3434C,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_ce342E8
	cmp/eq 0x01,r0
	bt loc_ce342F0
	cmp/eq 0x02,r0
	bt loc_ce342FC
	bra loc_ce34308
	nop

loc_ce342E8:
mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
mov 0x02,r3 ; r3 set to 0x02
bra loc_ce342F6
mov.b r3,@(r0,r4)

#align4
loc_ce342F0:
#data 0xE207902B
#data 0x0424


loc_ce342F6:
mov.w @(loc_ce3434E,pc),r0 ; r0 set to 0x1A3
bra loc_ce34308
mov.b r5,@(r0,r4)

#align4
loc_ce342FC:
#data 0xE2089025
#data 0x0424E301
#data 0x043470BA


loc_ce34308:
mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
jmp @r3
mov 0x15,r5

;==============================================
Rby_AlpCntr:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce3434C,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_ce3433C
	mov 0x02,r6 ; r6 set to 0x02
	cmp/eq 0x01,r0
	bt loc_ce34330
	cmp/eq 0x02,r0
	bt loc_ce3433C
	bra loc_ce34344
	nop

loc_ce34330:
	mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r5,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	bra loc_ce34344
	mov.b r3,@(r0,r4)

loc_ce3433C:
	mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
	mov.b r6,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_ce34344:
	mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8,r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3434A:
	#data 0x01E9
loc_ce3434C:
	#data 0x04C9
loc_ce3434E:
	#data 0x01A3
	#align4

loc_ce34350_to_loc_8c0530D8:
	#data loc_8c0530D8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
Stn_LPChain:
	#data 0x01 0x02 0x00 0x02
Stn_MPChain:
	#data 0xff 0x02 0x01 0x02
Stn_HPChain:
	#data 0xff 0xff 0xff 0x02
Stn_LKChain:
	#data 0x01 0x02 0x01 0x02
Stn_MKChain:
	#data 0xff 0x02 0xff 0x02
Stn_HKChain:
	#data 0xff 0xff 0xff 0xff

Crc_LPChain:
	#data 0x01 0x02 0x00 0x02
Crc_MPChain:
	#data 0xff 0x02 0x01 0x02
Crc_HPChain:
	#data 0xff 0xff 0xff 0x02
Crc_LKChain:
	#data 0x01 0x02 0x01 0x02
Crc_MKChain:
	#data 0xff 0x02 0xff 0x02
Crc_HKChain:
	#data 0xff 0xff 0xff 0xff

Air_LPChain:
	#data 0x01 0x02 0x00 0x02
Air_MPChain:
	#data 0xff 0x02 0x01 0x02
Air_HPChain:
	#data 0xff 0xff 0xff 0x02
Air_LKChain:
	#data 0x01 0x02 0x01 0x02
Air_MKChain:
	#data 0xff 0x02 0xff 0x02
Air_HKChain:
	#data 0xff 0xff 0xff 0xff

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3439C:
	#data 0x0003
	#data 0x0000 0x0000 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_ce343AC:
	#data 0x0003
	#data 0x1000 0x0001 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

loc_ce343BC:
	#data 0x0003
	#data 0x1000 0x0002 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_ce343CC:
	#data 0x0003
	#data 0x8100 0x0003 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_ce343DC:
	#data 0x0003
	#data 0x9100 0x0004 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

loc_ce343EC:
	#data 0x0003
	#data 0x9100 0x0005 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_ce343FC:
	#data 0x0004
	#data 0x1100 0x0009 0x0000
	#data 0x0020 0x0200 0x1000 0x0040 0x0100

loc_ce3440E:
	#data 0x0005
	#data 0x1000 0x0006 0x0000
	#data 0x0800 0x1800 0x1000 0x1400 0x0400 0x0300 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34424:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x418C0000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC18C0000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
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
#data 0xC1B40000
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x413AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC13AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x413AAAAA
#data 0xBBD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC13AAAAA
#data 0x3BD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
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
loc_ce345E4:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC1B40000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
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
#data 0xC1E76DB6
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x41700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC1700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41E76DB6
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x41700000
#data 0xBBD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC1700000
#data 0x3BD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
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

loc_ce347A4:
#data 0x41000000
#data 0x41000000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40800000
#data 0x40800000
#data 0x40800000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40000000
#data 0x40000000
#data 0x40000000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41000000
#data 0x42480000
#data 0x42055555
#data 0x41855555
#data 0x00000000
#data 0x42695555
#data 0x4226AAAA
#data 0x41C80000
#data 0x41055555
#data 0xC2480000
#data 0xC2055555
#data 0xC1855555
#data 0x00000000
#data 0xC2695555
#data 0xC226AAAA
#data 0xC1C80000
#data 0xC1055555


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
SPL_JumpTable:
	#data loc_ce3060A loc_ce30054 loc_ce3060E loc_ce30C32
	#data Rby_FwdDash Rby_BckDash loc_ce31468 loc_ce3151C
	#data Rby_SpecPRG loc_ce33E5C loc_ce33F50 loc_ce3407A
	#data loc_ce341F4 Rby_DlyHypC loc_ce33D04 loc_ce30FCA
	#data Rby_TmHypMn Rby_TmHypAs Rby_Assists Rby_AlpCntr
	#data 0x00000000 0x00000000 0x00000000 0x00000000
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#align4
loc_ce348D4_to_loc_ce3066A:
#data loc_ce3066A

loc_ce348D8_to_loc_ce309C2:
#data loc_ce309C2

loc_ce348DC_to_loc_ce309EA:
#data loc_ce309EA

loc_ce348E0_to_loc_ce30622:
#data loc_ce30622

loc_ce348E4_to_loc_ce30CFE:
#data loc_ce30CFE

loc_ce348E8_to_loc_ce30ECE:
#data loc_ce30ECE

loc_ce348EC_to_loc_ce30EB8:
#data loc_ce30EB8

loc_ce348F0_to_loc_ce30C78:
#data loc_ce30C78

loc_ce348F4_to_loc_ce310E0:
#data loc_ce310E0

loc_ce348F8_to_loc_ce3114C:
#data loc_ce3114C

loc_ce348FC_to_loc_ce31200:
#data loc_ce31200

loc_ce34900_to_loc_ce31276:
#data loc_ce31276

loc_ce34904_to_loc_ce312AA:
#data loc_ce312AA

loc_ce34908_to_loc_ce31340:
#data loc_ce31340

loc_ce3490C_to_loc_ce313D0:
#data loc_ce313D0

loc_ce34910_to_loc_ce31446:
#data loc_ce31446

loc_ce34914_to_loc_ce3147A:
#data loc_ce3147A

loc_ce34918_to_loc_ce314CC:
#data loc_ce314CC

loc_ce3491C_to_loc_ce3152E:
#data loc_ce3152E

loc_ce34920_to_loc_ce3154C:
#data loc_ce3154C

loc_ce34924_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34928_to_loc_ce31578:
#data loc_ce31578

loc_ce3492C_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34930_to_loc_ce31578:
#data loc_ce31578

loc_ce34934_to_loc_ce31578:
#data loc_ce31578

loc_ce34938_to_loc_ce315D6:
#data loc_ce315D6

loc_ce3493C_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34940_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34944_to_loc_ce3164C:
#data loc_ce3164C

loc_ce34948_to_loc_ce3164C:
#data loc_ce3164C

loc_ce3494C_to_loc_ce3164C:
#data loc_ce3164C

loc_ce34950_to_loc_ce3158A:
#data loc_ce3158A

loc_ce34954_to_loc_ce315D0:
#data loc_ce315D0

loc_ce34958_to_loc_ce315E8:
#data loc_ce315E8

loc_ce3495C_to_loc_ce31608:
#data loc_ce31608

loc_ce34960_to_loc_ce3165E:
#data loc_ce3165E

loc_ce34964_to_loc_ce3167E:
#data loc_ce3167E

loc_ce34968:
#data 0x00050005
#data 0x00060005
#data 0x00070006
#data 0x00070007
#data 0x00080008
#data 0x00080008
#data 0x000A0009
#data 0x000A000A

#align4
loc_ce34988_to_loc_ce31748:
#data loc_ce31748

loc_ce3498C_to_loc_ce31DEA:
#data loc_ce31DEA

loc_ce34990_to_loc_ce31ECE:
#data loc_ce31ECE

loc_ce34994_to_loc_ce32524:
#data loc_ce32524

loc_ce34998_to_loc_ce32CB6:
#data loc_ce32CB6

loc_ce3499C_to_loc_ce32E32:
#data loc_ce32E32

loc_ce349A0_to_loc_ce32030:
#data loc_ce32030

loc_ce349A4_to_loc_ce322B2:
#data loc_ce322B2

loc_ce349A8_to_loc_ce3240E:
#data loc_ce3240E

loc_ce349AC_to_loc_ce330EC:
#data loc_ce330EC

loc_ce349B0_to_loc_ce33BFE:
#data loc_ce33BFE

loc_ce349B4_to_loc_ce33B8A:
#data loc_ce33B8A

loc_ce349B8_to_loc_ce33748:
#data loc_ce33748

loc_ce349BC_to_loc_ce31790:
#data loc_ce31790

loc_ce349C0_to_loc_ce318EE:
#data loc_ce318EE

loc_ce349C4_to_loc_ce319EC:
#data loc_ce319EC

loc_ce349C8_to_loc_ce31B96:
#data loc_ce31B96

loc_ce349CC_to_loc_ce31C58:
#data loc_ce31C58

loc_ce349D0_to_loc_ce31CE0:
#data loc_ce31CE0

loc_ce349D4_to_loc_ce31DFC:
#data loc_ce31DFC

loc_ce349D8_to_loc_ce31E7A:
#data loc_ce31E7A

loc_ce349DC_to_loc_ce31EAC:
#data loc_ce31EAC

loc_ce349E0_to_loc_ce31F1C:
#data loc_ce31F1C

loc_ce349E4_to_loc_ce31F9E:
#data loc_ce31F9E

loc_ce349E8_to_loc_ce31FE0:
#data loc_ce31FE0

loc_ce349EC_to_loc_ce3200E:
#data loc_ce3200E

loc_ce349F0_to_loc_ce32042:
#data loc_ce32042

loc_ce349F4_to_loc_ce320EC:
#data loc_ce320EC

loc_ce349F8_to_loc_ce32150:
#data loc_ce32150

loc_ce349FC_to_loc_ce32184:
#data loc_ce32184

loc_ce34A00_to_loc_ce321CC:
#data loc_ce321CC

loc_ce34A04_to_loc_ce3220E:
#data loc_ce3220E

loc_ce34A08_to_loc_ce32230:
#data loc_ce32230

loc_ce34A0C_to_loc_ce3237A:
#data loc_ce3237A

loc_ce34A10_to_loc_ce323BC:
#data loc_ce323BC

loc_ce34A14_to_loc_ce323EC:
#data loc_ce323EC

loc_ce34A18_to_loc_ce322F8:
#data loc_ce322F8

loc_ce34A1C_to_loc_ce3237A:
#data loc_ce3237A

loc_ce34A20_to_loc_ce323BC:
#data loc_ce323BC

loc_ce34A24_to_loc_ce323EC:
#data loc_ce323EC

loc_ce34A28_to_loc_ce32454:
#data loc_ce32454

loc_ce34A2C_to_loc_ce324D2:
#data loc_ce324D2

loc_ce34A30_to_loc_ce32502:
#data loc_ce32502

loc_ce34A34_to_loc_ce32536:
#data loc_ce32536

loc_ce34A38_to_loc_ce32640:
#data loc_ce32640

loc_ce34A3C_to_loc_ce32730:
#data loc_ce32730

loc_ce34A40_to_loc_ce3295C:
#data loc_ce3295C

loc_ce34A44_to_loc_ce32A08:
#data loc_ce32A08

loc_ce34A48_to_loc_ce32AD6:
#data loc_ce32AD6

loc_ce34A4C_to_loc_ce32CC8:
#data loc_ce32CC8

loc_ce34A50_to_loc_ce32D7C:
#data loc_ce32D7C

loc_ce34A54_to_loc_ce32DF2:
#data loc_ce32DF2

loc_ce34A58_to_loc_ce32E6C:
#data loc_ce32E6C

loc_ce34A5C_to_loc_ce32F08:
#data loc_ce32F08

loc_ce34A60_to_loc_ce32F78:
#data loc_ce32F78

loc_ce34A64_to_loc_ce33012:
#data loc_ce33012

loc_ce34A68_to_loc_ce330AE:
#data loc_ce330AE

loc_ce34A6C_to_loc_ce33128:
#data loc_ce33128

loc_ce34A70_to_loc_ce331C6:
#data loc_ce331C6

loc_ce34A74_to_loc_ce3322E:
#data loc_ce3322E

loc_ce34A78_to_loc_ce33294:
#data loc_ce33294

loc_ce34A7C_to_loc_ce33310:
#data loc_ce33310

loc_ce34A80_to_loc_ce3344A:
#data loc_ce3344A

loc_ce34A84_to_loc_ce33474:
#data loc_ce33474

loc_ce34A88_to_loc_ce3349E:
#data loc_ce3349E

loc_ce34A8C_to_loc_ce335B0:
#data loc_ce335B0

loc_ce34A90_to_loc_ce335E8:
#data loc_ce335E8

loc_ce34A94_to_loc_ce33630:
#data loc_ce33630

loc_ce34A98_to_loc_ce33692:
#data loc_ce33692

loc_ce34A9C_to_loc_ce336BE:
#data loc_ce336BE

loc_ce34AA0_to_loc_ce336E2:
#data loc_ce336E2

loc_ce34AA4_to_loc_ce33784:
#data loc_ce33784

loc_ce34AA8_to_loc_ce33870:
#data loc_ce33870

loc_ce34AAC_to_loc_ce33944:
#data loc_ce33944

loc_ce34AB0_to_loc_ce33AC4:
#data loc_ce33AC4

loc_ce34AB4_to_loc_ce33AC8:
#data loc_ce33AC8

loc_ce34AB8_to_loc_ce33B62:
#data loc_ce33B62

loc_ce34ABC_to_loc_ce33B9C:
#data loc_ce33B9C

loc_ce34AC0_to_loc_ce33BDC:
#data loc_ce33BDC

loc_ce34AC4_to_loc_ce33C34:
#data loc_ce33C34

loc_ce34AC8_to_loc_ce33CA2:
#data loc_ce33CA2

loc_ce34ACC_to_loc_ce33D16:
#data loc_ce33D16

loc_ce34AD0_to_loc_ce33DC0:
#data loc_ce33DC0

loc_ce34AD4_to_loc_ce33E3A:
	#data loc_ce33E3A

loc_ce34AD8_to_loc_ce33E74:
	#data loc_ce33E74

loc_ce34ADC_to_loc_ce33EC8:
	#data loc_ce33EC8

loc_ce34AE0_to_loc_ce33EF0:
	#data loc_ce33EF0

loc_ce34AE4_to_loc_ce33E74:
	#data loc_ce33E74

loc_ce34AE8_to_loc_ce33F68:
	#data loc_ce33F68

loc_ce34AEC_to_loc_ce33FFC:
	#data loc_ce33FFC

loc_ce34AF0_to_loc_ce34098:
	#data loc_ce34098

loc_ce34AF4_to_loc_ce34122:
	#data loc_ce34122

loc_ce34AF8_to_loc_ce34180:
	#data loc_ce34180

loc_ce34AFC_to_loc_ce3420C:
	#data loc_ce3420C

loc_ce34B00_to_loc_ce3420C:
	#data loc_ce3420C

loc_ce34B04_to_loc_ce3421A:
	#data loc_ce3421A
