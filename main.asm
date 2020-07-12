;Memory offsets
	#module "memory/work.asm"
	#module "memory/pl_mem.asm"

;##############################################
;EntryPoint
loc_8c010000:
	nop
	nop
	nop
	nop
	nop
	nop
	mov.l @(loc_8c010024,PC),r0   ;write $ff00001c to r0
	mov.l @r0,r1
	mov.l @(loc_8c010028,PC),r2   ;write $000089af to r2
	and r2,r1
	mov.w @(loc_8c010020,PC),r2   ;write $0800 to r2
	or r2,r1
	mov.l r1,@r0
	mov.l @(label_8c01002c,PC),r0   ;write $8c1742c0 to r0
	jmp @r0
	nop

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
loc_8c010020:
	#data 0x0800
	#align4

loc_8c010024:
	#data 0xff00001c

loc_8c010028:
	#data 0x000089af

label_8c01002c:
	#data bank17.loc_8c1742c0

;0x30
libstarttext:
	#data "Lib Handle Start"

	#data 0x00000000 0x00000001 0x00000000 0x00000000
	#data 0xba7e0a00 0x11d1bda9 0x6000eb8a 0x5f629508
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;0x70
libendtext:
	#data "Lib Handle End  "

;##############################################
;Programming Modules
	#module "build/bank01.asm"
	#module "build/bank02.asm"
	#module "build/bank03.asm"
	#module "build/bank04.asm"
	#module "build/bank05.asm"
	#module "build/bank06.asm"
	#module "build/bank07.asm"
	#module "build/bank08.asm"
	#module "build/bank09.asm"
	#module "build/bank0a.asm"
	#module "build/bank0b.asm"
	#module "build/bank0c.asm"
	#module "build/bank0d.asm"
	#module "build/bank0e.asm"
	#module "build/bank0f.asm"
	#module "build/bank10.asm"
	#module "build/bank11.asm"
	#module "build/bank12.asm"
	#module "build/bank13.asm"
	#module "build/bank14.asm"
	#module "build/bank15.asm"
	#module "build/bank16.asm"
	#module "build/bank17.asm"
	#module "build/bank18.asm"
	#module "build/bank19.asm"
	#module "build/bank1a.asm"
	#module "build/bank1b.asm"
	#module "build/bank1c.asm"
