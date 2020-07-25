#align4
loc_8C0B011C:
#data 0x4F222FE6
#data 0xE15C7FF0
#data 0x31EC6E43
#data 0xE0342F52
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E58B02
#data 0x80E57001

#align4
loc_8C0B0170:
#data 0x03EE907b
#data 0x8B3D2338
#data 0x937785Ef
#data 0x81EF303c
#data 0x2008600f
#data 0x90728B36
#data 0x62F261F3
#data 0xD3397104
#data 0x7234022e
#data 0xE00C430b
#data 0x65F3C737
#data 0xE008F308
#data 0xE008F2F6
#data 0x64E3D335
#data 0x7504F230
#data 0x430BFF27
#data 0x640C7434
#data 0x03ECE022
#data 0x44014409
#data 0x624C633c
#data 0x89173230
#data 0xE31002Ec
#data 0x0E247201
#data 0x304800Ec
#data 0x2409E41f
#data 0x3433644c
#data 0xE0228903
#data 0x71FE01Ec
#data 0x0E14

loc_8C0B01E2:
#data 0xE022
#data 0x02EC9544
#data 0xD125E31f
#data 0x0E242239
#data 0x64E3410b

#align4
loc_8C0B01F4:
#data 0xB07165F2
#data 0x7F1064E3
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B0202:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43E15c
#data 0xD31D31Ec
#data 0x2F52E034
#data 0xF318F2E6
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x200864E3
#data 0xD30E8904
#data 0x64E3430b
#data 0x8B022008

#align4
loc_8C0B0258:
#data 0x700184E4
#data 0x80E4

loc_8C0B025E:
#data 0x65F2
#data 0x7F0464E3
#data 0xA0394F26
#data 0x00D06EF6
#data 0x020C4000
#data 0x000002Bc

#align4
loc_8C0B0274:
#data 0x8c1294C8
#data 0x43092492

#align4
loc_8C0B027C:
#data 0x8c03362c

loc_8C0B0280:
#data 0x8c033674

loc_8C0B0284:
#data 0x8c03340c

loc_8C0B0288:
#data 0x8c0334A8

loc_8C0B028C:
#data 0x4F222FE6
#data 0xD3207FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x4011600e
#data 0xE0248908
#data 0x0E34E300
#data 0xD31BE503
#data 0xE608E701
#data 0x64F2430b

#align4
loc_8C0B02B4:
#data 0x02EC902b
#data 0x890B2228
#data 0xE30FE024
#data 0x0E34E503
#data 0xE60564F2
#data 0x7F04E701
#data 0xD3124F26
#data 0x6EF6432b

#align4
loc_8C0B02D4:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B02DC:
#data 0x4F222FE6
#data 0x6E43BFD4
#data 0x02EE9014
#data 0x8B042228
#data 0xD30B4F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0B02F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B02FC:
mov r4,r3
mov.l @(loc_8C0B0320,pc),r1 ; r1 set to 0x8C1591F0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0141
#data 0x000000D8

#align4
loc_8C0B0314:
#data 0x8c034dee

loc_8C0B0318:
#data 0x8c03544c

loc_8C0B031C:
#data 0x8c045748

loc_8C0B0320:
#data 0x8c1591F0

loc_8C0B0324:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229185
#data 0x31EC84E4
#data 0x70019281
#data 0x80E4D344
#data 0x430B907e
#data 0x907C32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0xD335E024
#data 0xE40002Dc
#data 0x905C0E24
#data 0x70010E44
#data 0xE0210E44
#data 0x905705Ec
#data 0x4508655c
#data 0x353C4500
#data 0x626F6655
#data 0x70040E26
#data 0x627F6755
#data 0x70600E26
#data 0x211801Ed
#data 0x666B8900

#align4
loc_8C0B03B4:
#data 0x61E39047
#data 0x7150D325
#data 0x624304Ee
#data 0x430B7250
#data 0x666FE00c
#data 0xE050465a
#data 0xE034F046
#data 0xC721F246
#data 0x677FF32d
#data 0xF302475a
#data 0xE034F008
#data 0xF32DF23e
#data 0xE054FE27
#data 0xE038F046
#data 0xC71BF246
#data 0xF008F302
#data 0xF23EE038
#data 0x6355FE27
#data 0x89042338
#data 0xE3019022
#data 0x223A02Ed
#data 0x0E25

loc_8C0B040A:
#data 0x6150
#data 0xD314E024
#data 0x0E14E51b
#data 0x06ECE021
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0B0426:
mov.w @(loc_8C0B0446,pc),r0 ; r0 set to 0xD8
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.l @(r0,r4),r6
mov.b @(0x04,r6),r0 	
extu.b r0,r0 ; r0 set to 0xD8
cmp/gt r3,r0
bf loc_8C0B0464
bra loc_8C0B04D0
lds.l @r15+,pr 	
#data 0x00Dc
#data 0x012C00C0
#data 0x019C01A3
#data 0x00Cc

loc_8C0B0446:
#data 0x00D8
#data 0x00000130

#align4
loc_8C0B044C:
#data 0x8c129560

loc_8C0B0450:
#data 0x8c1294C8

loc_8C0B0454:
#data 0x8c159200
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0B0460:
#data 0x8c034C38

loc_8C0B0464:
#data 0x036C9041
#data 0x70A00434
#data 0x7064054e
#data 0x2338034d
#data 0x61438D01
#data 0x655b

loc_8C0B047A:
#data 0xD31d
#data 0x71506263
#data 0x430B7250
#data 0x655FE00c
#data 0xE050455a
#data 0xE034F066
#data 0xC718F266
#data 0xF302F32d
#data 0xE034F008
#data 0xF427F23e
#data 0x034E4008
#data 0xF066E054
#data 0x435AE038
#data 0xC712F266
#data 0xF302F32d
#data 0xE038F008
#data 0xF427F23e
#data 0x036C9016
#data 0x8B022338
#data 0x432BD30d
#data 0x4F26

loc_8C0B04CA:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0B04D0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B04EA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B04DE:
mov.w @(loc_8C0B04EA,pc),r0 ; r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C0B0500,pc),r3 ; r3 set to 0x8C0450C0
mov.b r5,@r4
jmp @r3
mov.b r5,@(r0,r4) 	

loc_8C0B04EA:
#data 0x012c
#data 0x000001A0

#align4
loc_8C0B04F0:
#data 0x8c1294C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0B04FC:
#data 0x8c034D8c

loc_8C0B0500:
#data 0x8c0450C0
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x904C2FB6
#data 0xFFFB2FA6
#data 0x03ED4F22
#data 0x23389446
#data 0xED008D01
#data 0x644F9444
#data 0x445ADA23
#data 0xF208C723
#data 0x9B3EEC02
#data 0xFF3CF32d
#data 0xE501FF22
#data 0x4A0BE600
#data 0x20086463
#data 0x64038D1a
#data 0x1424D21d
#data 0x84E114E6
#data 0xE0268041
#data 0xE02004B5
#data 0x902804D4
#data 0xE02103Ec
#data 0x043423Da
#data 0xF3E6E034
#data 0xF33DF3F0
#data 0x9021F437
#data 0x0436035a
#data 0xF3E6901f
#data 0xF437E038
#data 0x63DC7D01
#data 0x8BDA33C3
#data 0x00096043
#data 0xFFF94F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B0594:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B05C0,pc),r1 ; r1 set to 0x8C159228
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x0130FF20
#data 0x360100E0
#data 0x041C00Cc

#align4
loc_8C0B05B4:
#data 0x8c044F12
#data 0x3FD55555

#align4
loc_8C0B05BC:
#data 0x8c0B0594

loc_8C0B05C0:
#data 0x8c159228

loc_8C0B05C4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229185
#data 0x31EC84E4
#data 0x70019281
#data 0x80E4D344
#data 0x430B907e
#data 0x907C32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0xE024E400
#data 0xE54202Dc
#data 0xE0200E44
#data 0x905A03Ec
#data 0x0E35633c
#data 0x0E44E022
#data 0x0E549056
#data 0x0E547001
#data 0x03ECE021
#data 0x8D012338
#data 0xE53AE539

#align4
loc_8C0B0648:
#data 0xD32A904d
#data 0x700B0E54
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x40009442
#data 0x012D727c
#data 0x02157101
#data 0x02ED9039
#data 0x8D012228
#data 0xE480E034

#align4
loc_8C0B0678:
#data 0xD11F644f
#data 0xE516445a
#data 0xE600F2E6
#data 0xF32DD31d
#data 0xF00D415a
#data 0xFE27F23e
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0B069E:
#data 0x2FE6
#data 0x84E56E43
#data 0x2448640c
#data 0x6043890f
#data 0x88050009
#data 0x901A890b
#data 0x600C005c
#data 0x8B02881d
#data 0x20088455
#data 0x8903

loc_8C0B06C2:
#data 0xE005
#data 0xE00180E5
#data 0x81Ee

loc_8C0B06CA:
#data 0x84E5
#data 0xD10C64E3
#data 0x4008600c
#data 0x432B031e
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x013001A3
#data 0x01A1019c
#data 0x01D00080

#align4
loc_8C0B06EC:
#data 0x8c129560

loc_8C0B06F0:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0x3FD55555

#align4
loc_8C0B06FC:
#data 0x8c034e8c

loc_8C0B0700:
#data 0x8c159238

loc_8C0B0704:
#data 0x4F222FE6
#data 0x430BD332
#data 0xC93E6E43
#data 0x70E0D332
#data 0x405A9559
#data 0xF008C72f
#data 0xF4E6E034
#data 0xF32DE038
#data 0xF43EF5E6
#data 0x64E3430b
#data 0x420BD22c
#data 0x600E64E3
#data 0x89154011
#data 0x700184E5
#data 0xE01480E5
#data 0xC72881Ee
#data 0xC728F508
#data 0x903FF408
#data 0x233803Ed
#data 0xC7268903
#data 0xC726F508
#data 0xF408

loc_8C0B075A:
#data 0xE05c
#data 0xE068FE57
#data 0xFE47A008

#align4
loc_8C0B0764:
#data 0x02EC9033
#data 0x89032228
#data 0x0E44E400
#data 0x0E44705d

#align4
loc_8C0B0774:
#data 0xD31F4F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0B077E:
#data 0x854e
#data 0x814E70Ff
#data 0x4011600f
#data 0x8445891c
#data 0x80457001
#data 0x814F901e
#data 0x034CE021
#data 0x8D012338
#data 0xE53CE53b

#align4
loc_8C0B07A0:
#data 0xD3159017
#data 0x700B0454
#data 0x0455E500
#data 0x045470F2
#data 0x04567026
#data 0x62328442
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B07C4:
#data 0x432BD30b
#data 0x01000009
#data 0x01410130
#data 0x01A1C000

#align4
loc_8C0B07D4:
#data 0x8c03319e
#data 0x3FD55555

#align4
loc_8C0B07DC:
#data 0x8c0EA388

loc_8C0B07E0:
#data 0x8c034dee
#data 0xC0F00000
#data 0xBE555555
#data 0x40F00000
#data 0x3E555555

#align4
loc_8C0B07F4:
#data 0x8c045748
#data 0x8C2896B0

#align4
loc_8C0B07FC:
#data 0x4F222FE6
#data 0x430BD347
#data 0xE15C6E43
#data 0x31EC9386
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x303C85Ef
#data 0x600F81Ef
#data 0x8B022008
#data 0xE1009065
#data 0x0E14

loc_8C0B0852:
#data 0x9063
#data 0xE03403Ee
#data 0x435AF4E6
#data 0xF431F32d
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0B0868:
#data 0xF308C72e
#data 0x8B07F345
#data 0xE51684E5
#data 0xE601D32c
#data 0x80E57001
#data 0x64E3430b

#align4
loc_8C0B0880:
#data 0xD22A4F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0B088A:
#data 0x2FE6
#data 0xD3244F22
#data 0x6E43430b
#data 0x933FE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EFFE27
#data 0x81EF303c
#data 0x2008600f
#data 0x901E8B02
#data 0x0E14E100

#align4
loc_8C0B08E0:
#data 0x03EE901c
#data 0xF4E6E034
#data 0xF32D435a
#data 0xF38DF431
#data 0x8B00F345
#data 0xF44d

loc_8C0B08F6:
#data 0xC70e
#data 0xF345F308
#data 0x84E58B07
#data 0xD309E516
#data 0x7001E602
#data 0x430B80E5
#data 0x64E3

loc_8C0B090E:
#data 0x4F26
#data 0x64E3D206
#data 0x6EF6422b
#data 0x019E2000
#data 0x000000Cc

#align4
loc_8C0B0920:
#data 0x8c034dee
#data 0x42A00000

#align4
loc_8C0B0928:
#data 0x8c034e8c

loc_8C0B092C:
#data 0x8c045748
#data 0x42200000

#align4
loc_8C0B0934:
#data 0x4F222FE6
#data 0x430BD32b
#data 0xE15C6E43
#data 0x31EC934d
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x303C85Ef
#data 0x600F81Ef
#data 0x8B022008
#data 0xE100902c
#data 0x0E14

loc_8C0B098A:
#data 0x902a
#data 0xE03403Ee
#data 0x435AF4E6
#data 0xF431F32d
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0B09A0:
#data 0xF508C712
#data 0x8B15F545
#data 0x700184E5
#data 0xE01E80E5
#data 0x901781Ee
#data 0x233803Ed
#data 0xC70D8901
#data 0xF508

loc_8C0B09BE:
#data 0x9010
#data 0x03EEE531
#data 0x435AE034
#data 0xF32DD30a
#data 0xFE37F350
#data 0x64E3430b

#align4
loc_8C0B09D4:
#data 0xD2084F26
#data 0x422B64E3
#data 0x20006EF6
#data 0x00CC019e
#data 0x00000130

#align4
loc_8C0B09E8:
#data 0x8c034dee
#data 0x41555555
#data 0xC1555555

#align4
loc_8C0B09F4:
#data 0x8c04223a

loc_8C0B09F8:
#data 0x8c045748

loc_8C0B09FC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFEBFFFb
#data 0xD3334F22
#data 0x6E43430b
#data 0x935D85Ef
#data 0x81EF303c
#data 0x2008600f
#data 0xEB008F02
#data 0x0EB49057

#align4
loc_8C0B0A28:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B392008
#data 0x700184E4
#data 0xE02080E4
#data 0x233803Ec
#data 0xD3278B03
#data 0x430BE523
#data 0x64E3

loc_8C0B0A4A:
#data 0xC728
#data 0xFE08D926
#data 0xFF08C727
#data 0xDC236DB3
#data 0xEA08

loc_8C0B0A5A:
#data 0x63C5
#data 0xF4E6E034
#data 0x435AE038
#data 0x63C5E501
#data 0xF32DF0Fc
#data 0xF5E6435a
#data 0xF0ECF43e
#data 0xF53EF32d
#data 0x64E3490b
#data 0x63DF7D01
#data 0x8BEA33A3
#data 0xE33D9028
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x0EB6D317
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B0AA8:
#data 0xD3134F26
#data 0xFEF964E3
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0B0AC0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B0ADA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B0ACE:
mov.l @(loc_8C0B0AFC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x019E2000
#data 0x01A1

loc_8C0B0ADA:
#data 0x012c

#align4
loc_8C0B0ADC:
#data 0x8c034dee

loc_8C0B0AE0:
#data 0x8c042008

loc_8C0B0AE4:
#data 0x8c159250

loc_8C0B0AE8:
#data 0x8c0EA388
#data 0x40092492
#data 0x3FD55555
#data 0x8C2896B0

#align4
loc_8C0B0AF8:
#data 0x8c045748

loc_8C0B0AFC:
#data 0x8c0450C0

loc_8C0B0B00:
#data 0x6E532FE6
#data 0xE5012FD6
#data 0xD3324F22
#data 0xE6006D43
#data 0x6463430b
#data 0x8D112008
#data 0xD32F6403
#data 0x421962Ed
#data 0x93561434
#data 0x84D114D6
#data 0xE0268041
#data 0xE0200435
#data 0xE0210424
#data 0xE02204E4
#data 0x0434E300

#align4
loc_8C0B0B3C:
#data 0xE501D325
#data 0x430BE600
#data 0x20086463
#data 0x64038D11
#data 0x62EDD322
#data 0x14344219
#data 0x14D6933d
#data 0x804184D1
#data 0x0435E026
#data 0x0424E020
#data 0x04E4E021
#data 0xE304E022
#data 0x0434

loc_8C0B0B6E:
#data 0x6043
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B0B7A:
#data 0x4F22
#data 0xD3157FF8
#data 0x1F41E600
#data 0xE5012F51
#data 0x6463430b
#data 0x8D122008
#data 0xD3116403
#data 0x52F11434
#data 0x1426931b
#data 0x840150F1
#data 0xE0268041
#data 0xE0200435
#data 0x622D62F1
#data 0x04244219
#data 0x63F0E021
#data 0x0434

loc_8C0B0BB6:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0B0BBE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B0BDC,pc),r1 ; r1 set to 0x8C159270
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3602

#align4
loc_8C0B0BD4:
#data 0x8c044F12

loc_8C0B0BD8:
#data 0x8c0B0BBe

loc_8C0B0BDC:
#data 0x8c159270


loc_8C0B0BE0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B0D30,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B0D44,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B0D30,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B0D32,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B0D34,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B0D36,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B0D48,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x42,r4 ; r4 set to 0x42
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B0D38,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r5),r3 ; r3 ??? bc r5 is ???	
fmov.s @(r0,r3),fr3
mov.w @(loc_8C0B0D3A,pc),r0 ; r0 set to 0xCc
ftrc fr3,fpul 	
sts fpul,r2
mov.l r2,@(r0,r14) 	
mov.w @(loc_8C0B0D3C,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C0B0D4C,pc),r0 ; r0 set to 0x8C15928c
extu.b r3,r3
shll r3
mov.b @(r0,r3),r2
mov.w @(loc_8C0B0D3E,pc),r0 ; r0 set to 0x1A1
mov.l @(loc_8C0B0D50,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.l @r3,r2
mov.b @(0x02,r14),r0 	
add 0x7C,r2
mov r14,r4 ; r4 ??? bc r14 is ???	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0B0D54,pc),r0 ; r0 set to 0x8C159280
extu.b r2,r2
lds.l @r15+,pr 	
shll2 r2
mov.l @(r0,r2),r1
jmp @r1
mov.l @r15+,r14

loc_8C0B0C96:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov.l r8,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8C0B0D58,pc),r2 ; r2 set to 0x8C03319e
mov r5,r13
jsr @r2
mov.b r3,@(r0,r14) 	
extu.b r0,r0 ; r0 set to 0x24
mov r0,r3 ; r3 set to 0x24
shll r0 ; r0 set to 0x48
add r3,r0 ; r0 set to 0x6c
mov r0,r4 ; r4 set to 0x6c
shlr2 r4
add 0xA0,r4 ; r4 set to 0x0c
exts.w r4,r4 ; r4 ??	
lds r4,fpul 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
mova @(loc_8C0B0D5C,pc),r0  ; r0 set to 0x8C0B0D5c
fmov.s @r0,fr0 ; r0 ??	
mov 0x34,r0 ; r0 set to 0x34
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B0D38,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r13),r3 ; r3 ??? bc r13 is ???	
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B0D60,pc),r0  ; r0 set to 0x8C0B0D60
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
mov 0x5C,r0 ; r0 set to 0x5c
fsub fr3,fr2
fdiv fr4,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
mov 0x60,r0 ; r0 set to 0x60
mov.l @(loc_8C0B0D58,pc),r2 ; r2 set to 0x8C03319e
fsub fr3,fr2 ; r2 ??? bc r3 is ???	
fldi0 fr3
fdiv fr4,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mov 0x18,r0 ; r0 set to 0x18
mov.w r0,@(0x1C,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
extu.b r3,r3
add 0x3B,r3
jsr @r2
mov r3,r8
mov.l @(loc_8C0B0D64,pc),r3 ; r3 set to 0x8C034E8c
mov r8,r6
and 0x03,r0 	
mov 0x16,r5 ; r5 set to 0x16
add r0,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.w @(loc_8C0B0D40,pc),r5 ; r5 set to 0x200
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
bra loc_8C0B0B7a
mov.l @r15+,r14

loc_8C0B0D30:
#data 0x00Dc

loc_8C0B0D32:
#data 0x00C0

loc_8C0B0D34:
#data 0x012c

loc_8C0B0D36:
#data 0x01A3

loc_8C0B0D38:
#data 0x041c

loc_8C0B0D3A:
#data 0x00Cc

loc_8C0B0D3C:
#data 0x019c

loc_8C0B0D3E:
#data 0x01A1

loc_8C0B0D40:
#data 0x0200
#data 0x0000

#align4
loc_8C0B0D44:
#data 0x8c129560

loc_8C0B0D48:
#data 0x8c1294C8

loc_8C0B0D4C:
#data 0x8c15928c

loc_8C0B0D50:
#data 0x8C2896B0

#align4
loc_8C0B0D54:
#data 0x8c159280

loc_8C0B0D58:
#data 0x8c03319e

loc_8C0B0D5C:
#data 0x3FD55555

#align4
loc_8C0B0D60:
#data 0x41C00000

#align4
loc_8C0B0D64:
#data 0x8c034e8c


loc_8C0B0D68:
mov.w @(loc_8C0B0ECC,pc),r0 ; r0 set to 0x12c
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r2 ; r2 set to 0x00
mov.l r8,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
mov r13,r2 ; r2 ??? bc r13 is ???	
mov.l @(loc_8C0B0ED0,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0B0ED4,pc),r2 ; r2 set to 0x8C03319e
jsr @r2
nop 	
extu.b r0,r0 ; r0 set to 0x0c
mov r0,r3 ; r3 set to 0x0c
shll r0 ; r0 set to 0x18
add r3,r0 ; r0 set to 0x24
mov.l @(0x18,r13),r3 ; r3 ??? bc r13 is ???	
mov r0,r4 ; r4 set to 0x24
shlr2 r4
add 0xA0,r4 ; r4 set to 0xFFFFFFC4
exts.w r4,r4 ; r4 ??	
mov 0x34,r0 ; r0 set to 0x34
lds r4,fpul 	
fmov.s @(r0,r13),fr6
mova @(loc_8C0B0ED8,pc),r0  ; r0 set to 0x8C0B0ED8
fmov.s @r0,fr0 ; r0 ??	
float fpul,fr3
mov.w @(loc_8C0B0ECE,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r3),fr4
mova @(loc_8C0B0EDC,pc),r0  ; r0 set to 0x8C0B0EDc
fmov.s @r0,fr5
mov 0x34,r0 ; r0 set to 0x34
fmac fr0,fr3,fr6
fmov.s @(r0,r14),fr3
mov 0x5C,r0 ; r0 set to 0x5c
fsub fr3,fr6
fdiv fr5,fr6
fmov.s fr6,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
mov 0x60,r0 ; r0 set to 0x60
fsub fr3,fr4
fdiv fr5,fr4
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
mov.l @(loc_8C0B0ED4,pc),r2 ; r2 set to 0x8C03319e
extu.b r3,r3
add 0x3B,r3
jsr @r2
mov r3,r8
lds.l @r15+,pr 	
mov r8,r6
and 0x03,r0 	
mov.l @(loc_8C0B0EE0,pc),r3 ; r3 set to 0x8C034E8c
add r0,r6
mov.l @r15+,r8
mov 0x16,r5 ; r5 set to 0x16
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B0E02:
mov 0x24,r0 ; r0 set to 0x24
mov r5,r2
mov 0x07,r3 ; r3 set to 0x07
mov r4,r1
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
add 0x34,r2
mov.l @(loc_8C0B0ED0,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0B0EE0,pc),r2 ; r2 set to 0x8C034E8c
mov 0x16,r5 ; r5 set to 0x16
mov 0x3A,r6 ; r6 set to 0x3a
jmp @r2
lds.l @r15+,pr 	

loc_8C0B0E22:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0B0EE4,pc),r0 ; r0 set to 0x8C159294
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0B0E36:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D32a
#data 0x430B2F52
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0B0E90:
#data 0x843563F2
#data 0x8B032008
#data 0x632062F2
#data 0x8B0F2338

#align4
loc_8C0B0EA0:
#data 0xF38DE020
#data 0x0E34E301
#data 0x80E7E000
#data 0xFE37E060
#data 0xFE37E068
#data 0xFE37E05c
#data 0xF308C70c
#data 0xFE37E06c

#align4
loc_8C0B0EC0:
#data 0x7F0464E3
#data 0xD30A4F26
#data 0x6EF6432b

loc_8C0B0ECC:
#data 0x012c

loc_8C0B0ECE:
#data 0x041c

#align4
loc_8C0B0ED0:
#data 0x8c1294C8

loc_8C0B0ED4:
#data 0x8c03319e

loc_8C0B0ED8:
#data 0x3FD55555

#align4
loc_8C0B0EDC:
#data 0x41400000

#align4
loc_8C0B0EE0:
#data 0x8c034e8c

loc_8C0B0EE4:
#data 0x8c159294

loc_8C0B0EE8:
#data 0x8c034dee
#data 0xBF4DB6Db

#align4
loc_8C0B0EF0:
#data 0x8c045748


loc_8C0B0EF4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B0FF4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
add 0x6C,r0 ; r0 set to 0xCc
mov.l @(r0,r14),r3
lds r3,fpul 	
float fpul,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B0F9c
mov.b @(0x07,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x07,r14) 	
add 0xFF,r0 ; r0 set to 0x38
extu.b r0,r0 ; r0 set to 0x38
tst r0,r0
bf loc_8C0B0F96
mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b @(r0,r14),r2
and r3,r2
mov.b r2,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0xCc
mov.l @(r0,r14),r1
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0B0FF8,pc),r2 ; r2 set to 0x8C03319e
lds r1,fpul 	
float fpul,fr3
jsr @r2
fmov.s fr3,@(r0,r14) 	
and 0x30,r0 	
neg r0,r0 ; r0 ??	
mov r0,r4
add 0xF0,r4
exts.w r4,r4
mova @(loc_8C0B0FFC,pc),r0  ; r0 set to 0x8C0B0FFc
lds r4,fpul 	
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
float fpul,fr3
mova @(loc_8C0B1000,pc),r0  ; r0 set to 0x8C0B1000
fmov.s @r0,fr2 ; r2 ??	
mova @(loc_8C0B1004,pc),r0  ; r0 set to 0x8C0B1004
fmov.s @r0,fr1
mov 0x6C,r0 ; r0 set to 0x6c
fmul fr2,fr3
fdiv fr1,fr3
bra loc_8C0B0F9c
fmov.s fr3,@(r0,r14) 	

loc_8C0B0F96:
#data 0x84E4
#data 0x80E47001


loc_8C0B0F9C:
mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b @(r0,r14),r2
xor r3,r2
mov.b r2,@(r0,r14) 	
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0B0FB6
lds.l @r15+,pr 	
mov.l @(loc_8C0B1008,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B0FB6:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0B0FBC:
#data 0x7FFC4F22
#data 0x430BD30c
#data 0x600E2F42
#data 0x89034011
#data 0x843463F2
#data 0x80347001

#align4
loc_8C0B0FD4:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0B0FDC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B0FF0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B0FEA:
mov.l @(loc_8C0B100C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B0FF0:
#data 0x012c
#data 0x0000

#align4
loc_8C0B0FF4:
#data 0x8c034dee

loc_8C0B0FF8:
#data 0x8c03319e

loc_8C0B0FFC:
#data 0x404DB6Db

#align4
loc_8C0B1000:
#data 0x40092492

#align4
loc_8C0B1004:
#data 0x43800000

#align4
loc_8C0B1008:
#data 0x8c045748

loc_8C0B100C:
#data 0x8c0450C0
#data 0x7FFC4F22
#data 0xE501D35e
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD35B6403
#data 0x93A71434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x7F040435
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0B1042:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B1198,pc),r1 ; r1 set to 0x8C1592A0
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B1056:
#data 0x9192
#data 0x84444F22
#data 0xD34F314c
#data 0x928C7001
#data 0x908B8044
#data 0x325C430b
#data 0xE2019089
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x907BF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD33f
#data 0xE308E00c
#data 0x025CE024
#data 0x0434E600
#data 0x0464E021
#data 0x9066E742
#data 0x0474E333
#data 0x04747001
#data 0x04347004
#data 0x0465700b
#data 0x046470F2
#data 0xD3357026
#data 0x84420466
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x90510215
#data 0x014D6203
#data 0xE3207254
#data 0x0415212b
#data 0x914AE004
#data 0x2102315c
#data 0x04669048
#data 0x04347073
#data 0x043470Ff
#data 0x034D70F2
#data 0x8D012338
#data 0xE648E6B8

#align4
loc_8C0B1110:
#data 0x465A666f
#data 0xF256E034
#data 0xF008C723
#data 0xF32DE034
#data 0xF427F23e
#data 0xF308C721
#data 0xF256E038
#data 0xF427F230
#data 0x034C9028
#data 0x633CD01e
#data 0xF4364308
#data 0x024D9027
#data 0x8D012228
#data 0xF44DE05c

#align4
loc_8C0B1148:
#data 0xE06CF447
#data 0xE517F38d
#data 0xE060F437
#data 0xE068F437
#data 0xE605D316
#data 0x432BF437
#data 0x4F26


loc_8C0B1162:
mov.w @(loc_8C0B118A,pc),r0 ; r0 set to 0x2B8
mov 0x04,r3 ; r3 set to 0x04
mov.l r4,@-r15
mov.l r3,@(r0,r5) 	
mov.l @r15,r2
mov.l @(loc_8C0B11B8,pc),r1 ; r1 set to 0x8C1592Bc
mov.b @(0x05,r2),r0 	
mov r2,r4
extu.b r0,r0 ; r0 set to 0xB8
shll2 r0 ; r0 set to 0x2E0
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
add 0x04,r15
#data 0x00DC3603
#data 0x012C00C0
#data 0x019C01A3
#data 0x01Ac

loc_8C0B118A:
#data 0x02B8
#data 0x013000Cc

#align4
loc_8C0B1190:
#data 0x8c044F12

loc_8C0B1194:
#data 0x8c0B1042

loc_8C0B1198:
#data 0x8c1592A0

loc_8C0B119C:
#data 0x8c129560

loc_8C0B11A0:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0x3FD55555
#data 0x43092492

#align4
loc_8C0B11B0:
#data 0x8c1592B0

loc_8C0B11B4:
#data 0x8c034e8c

loc_8C0B11B8:
#data 0x8c1592Bc


loc_8C0B11BC:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bf/s loc_8C0B1272
mov r4,r14
mov.w @(loc_8C0B1286,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B1272
mov.w @(loc_8C0B1288,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B1208
mov.l @(loc_8C0B128C,pc),r3 ; r3 set to 0x8C05264c
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0B1272
mov.b @(0x05,r14),r0 	
mov 0x08,r3 ; r3 set to 0x08
mov r13,r5
add 0x01,r0 ; r0 set to 0x19f
mov.b r0,@(0x05,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
bsr loc_8C0B142a
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0B1290,pc),r2 ; r2 set to 0x8C034E8c
mov 0x04,r6 ; r6 set to 0x04
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0B1208:
#data 0x420BD222
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE021FE27
#data 0x734003Ec
#data 0x633C0E34
#data 0x8B032338
#data 0xE500D310
#data 0x64E3430b

#align4
loc_8C0B125C:
#data 0x420BD20f
#data 0x200864E3
#data 0x4F268909
#data 0x64E3D30d
#data 0x432B6DF6
#data 0x6EF6


loc_8C0B1272:
mov.l @(loc_8C0B1298,pc),r2 ; r2 set to 0x8C0EABFc
mov 0x01,r5 ; r5 set to 0x01
jsr @r2
mov r14,r4

loc_8C0B127A:
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B1424
mov.l @r15+,r14

loc_8C0B1286:
#data 0x019f

loc_8C0B1288:
#data 0x019e
#data 0x0000

#align4
loc_8C0B128C:
#data 0x8c05264c

loc_8C0B1290:
#data 0x8c034e8c

loc_8C0B1294:
#data 0x8c034dee

loc_8C0B1298:
#data 0x8c0EABFc

loc_8C0B129C:
#data 0x8c03340c

loc_8C0B12A0:
#data 0x8c045748

loc_8C0B12A4:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x4F226C53
#data 0xD32D9051
#data 0x0EDE430b
#data 0x02EC904e
#data 0x8B452228
#data 0xE50E84D5
#data 0xE600D329
#data 0x80D57001
#data 0x64E3430b
#data 0x65E3D227
#data 0x64D3420b
#data 0x03CE903f
#data 0x0D36903e
#data 0x03CC903d
#data 0x8D012338
#data 0xE43CE45a

#align4
loc_8C0B12EC:
#data 0x00096043
#data 0xE50181De
#data 0xD31F9031
#data 0x04CE430b
#data 0xE2069030
#data 0x0E24932f
#data 0x0C347001
#data 0x0E34E201
#data 0x0C2470F3
#data 0x9027E3Ff
#data 0x90260C34
#data 0x600C00Ec
#data 0x8B158802
#data 0xF408C715
#data 0xF3E6E05c
#data 0xFE37F343
#data 0xF2E6E068
#data 0xF243F38d
#data 0xE060FE27
#data 0xF235F2E6
#data 0xF2E68B02
#data 0xFE27F243

#align4
loc_8C0B1344:
#data 0xF308C70d
#data 0xFE37E06c

#align4
loc_8C0B134C:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01B06EF6
#data 0x01C801A0
#data 0x041100D0
#data 0x00C201F6
#data 0x01F9015a

#align4
loc_8C0B1368:
#data 0x8c034dee

loc_8C0B136C:
#data 0x8c034e8c

loc_8C0B1370:
#data 0x8c05248e

loc_8C0B1374:
#data 0x8c050552
#data 0x40800000
#data 0xBF4DB6Db

#align4
loc_8C0B1380:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6D43907d
#data 0x0EDE2F52
#data 0x64D3B04b
#data 0x02EC9078
#data 0x89032228
#data 0x600C84E5
#data 0x89288803

#align4
loc_8C0B13A4:
#data 0x03EE9071
#data 0x8B243D30
#data 0x430BD33a
#data 0x200864E3
#data 0x85DE8902
#data 0x81DE70Fd

#align4
loc_8C0B13BC:
#data 0x70FF85De
#data 0x600F81De
#data 0x89214011
#data 0xE2009060
#data 0x0E24E308
#data 0x0E3470F9
#data 0x02ED905b
#data 0x8B0C4215
#data 0x00EC9058
#data 0x8802600c
#data 0xD22D8904
#data 0x64E3420b
#data 0x0009A003

#align4
loc_8C0B13F0:
#data 0x420BD22b
#data 0x64E3

loc_8C0B13F6:
#data 0xD32b
#data 0x430BE502
#data 0x65F264D3
#data 0x7F0464D3
#data 0x6DF64F26
#data 0x6EF6A00c

#align4
loc_8C0B140C:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B1416:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B1492,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B1424:
mov.l @(loc_8C0B14A8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B142A:
#data 0x9033
#data 0x054ED71f
#data 0x035D7080
#data 0x8D012338
#data 0x666B6671

#align4
loc_8C0B143C:
#data 0x932A666f
#data 0xE034465a
#data 0xC71AF256
#data 0xE034F008
#data 0x334CF32d
#data 0xF427F23e
#data 0xD0176332
#data 0x023D4300
#data 0x302C8571
#data 0xE038405a
#data 0xC714F256
#data 0xE038F008
#data 0xF23EF32d
#data 0x9010F427
#data 0x7301034e
#data 0x004E0436
#data 0xC903910b
#data 0x000B314c
#data 0x00D02102
#data 0x01CC019f
#data 0x042001F6
#data 0x01F9

loc_8C0B1492:
#data 0x012c
#data 0x00CC01B0

#align4
loc_8C0B1498:
#data 0x8c0505B8

loc_8C0B149C:
#data 0x8c051648

loc_8C0B14A0:
#data 0x8c0517Be

loc_8C0B14A4:
#data 0x8c0EABFc

loc_8C0B14A8:
#data 0x8c0450C0

loc_8C0B14AC:
#data 0x8c1592C8
#data 0x3FD55555

#align4
loc_8C0B14B4:
#data 0x8c1592Cc
#data 0x40092492
#data 0xE5012FE6
#data 0xD3154F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D0F2008
#data 0xD3126403
#data 0x931A1434
#data 0x84E114E6
#data 0xE0268041
#data 0x90150435
#data 0x901404E6
#data 0x901303Ed
#data 0x0436633d
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B14FA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B1520,pc),r1 ; r1 set to 0x8C1592D4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3604
#data 0x015800D4
#data 0x000000Cc

#align4
loc_8C0B1518:
#data 0x8c044F12

loc_8C0B151C:
#data 0x8c0B14Fa

loc_8C0B1520:
#data 0x8c1592D4

loc_8C0B1524:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6E437FF4
#data 0x91B484E4
#data 0xD3607001
#data 0x31EC80E4
#data 0x92AE90B0
#data 0x325C430b
#data 0xE20190Ad
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x909FFE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD350
#data 0xE024E00c
#data 0xE3FF025c
#data 0x0E24ED08
#data 0x0E34E031
#data 0x0ED4E024
#data 0xEC00E021
#data 0xE3460EC4
#data 0x0E349085
#data 0x0EC47001
#data 0xE3447004
#data 0x700B0E34
#data 0x70F20EC5
#data 0x70260EC4
#data 0x0EC6D343
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x01ED9070
#data 0x72546203
#data 0x0E15212b
#data 0x916AE004
#data 0x2102315c
#data 0x00ED9068
#data 0x8D012008
#data 0xE4E8E418

#align4
loc_8C0B15E4:
#data 0xD335644f
#data 0xE034445a
#data 0xC735F256
#data 0xE034F008
#data 0x61F3F32d
#data 0xFE27F23e
#data 0xF308C732
#data 0xF256E038
#data 0xFE27F230
#data 0xF28DE06c
#data 0xE068FE27
#data 0x904CFE27
#data 0x6243045e
#data 0x430B7234
#data 0x9047E00c
#data 0xD32B65F3
#data 0xC729024c
#data 0xE004F008
#data 0xF1F6622c
#data 0x64E34201
#data 0xE004425a
#data 0xF12EF22d
#data 0x430BFF17
#data 0x600C7434
#data 0x70049535
#data 0x4021D322
#data 0x4021E122
#data 0x31EC4021
#data 0x430B2100
#data 0xD31F64E3
#data 0xE516E014
#data 0xE61881Ef
#data 0x64E3430b
#data 0x91239020
#data 0xE0220EC5
#data 0x31EC00Ec
#data 0x7008600c
#data 0x4021C91f
#data 0xB2FB2100
#data 0xEC0264E3

#align4
loc_8C0B1684:
#data 0xB21765Cf
#data 0x7C0164E3
#data 0x33D363Cf
#data 0x7F0C8BF8
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x019C01A3
#data 0x02B801Ac
#data 0x020C0130
#data 0x07D0013c
#data 0x0000014d

#align4
loc_8C0B16B8:
#data 0x8c129560

loc_8C0B16BC:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0x3FD55555
#data 0x43AB6DB6
#data 0x40092492

#align4
loc_8C0B16D0:
#data 0x8c03362c

loc_8C0B16D4:
#data 0x8c033674

loc_8C0B16D8:
#data 0x8c034e8c


loc_8C0B16DC:
mov.w @(loc_8C0B17D6,pc),r0 ; r0 set to 0x2B8
mov 0x04,r3 ; r3 set to 0x04
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
mov.l r3,@(r0,r14) 	
mov.w @(loc_8C0B17D8,pc),r0 ; r0 set to 0x158
mov.w @(r0,r14),r2
mov.w @(loc_8C0B17DA,pc),r0 ; r0 set to 0xCc
extu.w r2,r2
mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
cmp/eq r2,r3
bf loc_8C0B173a
mov.w @(loc_8C0B17DC,pc),r0 ; r0 set to 0x411
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0B173a
mov.w @(loc_8C0B17DE,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0B173a
mov.l @(loc_8C0B17E4,pc),r3 ; r3 set to 0x8C26823c
mov 0x01,r7 ; r7 set to 0x01
mov.l @(loc_8C0B17E8,pc),r1 ; r1 set to 0x8C03544c
mov r7,r5 ; r5 set to 0x01
mov.l @r3,r0
mov.l @(0x1C,r0),r0
and 0x02,r0 	
shar r0
mov r0,r6
add 0x0B,r6
jsr @r1
mov r14,r4
mov.b @(0x05,r13),r0 	
mov r13,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0B17EC,pc),r1 ; r1 set to 0x8C1592E4
extu.b r0,r0
shll2 r0
mov r14,r5 ; r5 ??? bc r14 is ???	
mov.l @r15+,r13
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0B173A:
lds.l @r15+,pr 	
mov r13,r4
mov r14,r5
mov.l @r15+,r13
bra loc_8C0B1A74
mov.l @r15+,r14

loc_8C0B1746:
mov.w @(loc_8C0B17E0,pc),r0 ; r0 set to 0x19e
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B1778
mov.l @(loc_8C0B17F0,pc),r3 ; r3 set to 0x8C05264c
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0B1784
mov.b @(0x05,r14),r0 	
mov 0x08,r3 ; r3 set to 0x08
mov r14,r4
mov 0x15,r6 ; r6 set to 0x15
add 0x01,r0 ; r0 set to 0x19f
mov.b r0,@(0x05,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x16,r5 ; r5 set to 0x16
lds.l @r15+,pr 	
mov.l @(loc_8C0B17F4,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0B1778:
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0B178e

loc_8C0B1784:
mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
mov.b r0,@(0x05,r14) 	
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
bra loc_8C0B17D0
mov.w r0,@(0x1E,r14) 	

loc_8C0B178E:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B17F8,pc),r3 ; r3 set to 0x8C045748
add r14,r1 ; r1 ??? bc r14 is ???	
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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

loc_8C0B17D0:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B17D6:
#data 0x02B8

loc_8C0B17D8:
#data 0x0158

loc_8C0B17DA:
#data 0x00Cc

loc_8C0B17DC:
#data 0x0411

loc_8C0B17DE:
#data 0x01D0

loc_8C0B17E0:
#data 0x019e
#data 0x0000

#align4
loc_8C0B17E4:
#data 0x8C26823c

#align4
loc_8C0B17E8:
#data 0x8c03544c

loc_8C0B17EC:
#data 0x8c1592E4

loc_8C0B17F0:
#data 0x8c05264c

loc_8C0B17F4:
#data 0x8c034e8c

loc_8C0B17F8:
#data 0x8c045748

loc_8C0B17FC:
#data 0x6E432FE6
#data 0xE20090Ad
#data 0x6D532FD6
#data 0x05EE4F22
#data 0x700184E5
#data 0xE02480E5
#data 0x0E34035c
#data 0x93A290A2
#data 0x705A0D24
#data 0xD3530D34
#data 0x64E3430b
#data 0x65D3909c
#data 0x02DE64E3
#data 0x0E269099
#data 0x81EEE078
#data 0x81EFE000
#data 0x6DF64F26
#data 0x6EF6

loc_8C0B1842:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x908A7FF4
#data 0xE3016E43
#data 0x0CEE6D53
#data 0x9085E202
#data 0x70030D34
#data 0xE0240D24
#data 0x0E3403Cc
#data 0xF308C742
#data 0xFF3A907d
#data 0x233803Dd
#data 0xF3F88902
#data 0xFF3AF34d

#align4
loc_8C0B187C:
#data 0xF2F8E034
#data 0xC73DF3D6
#data 0x61F362D3
#data 0xFF2AF230
#data 0xE038F308
#data 0xE004F2D6
#data 0xFF27F230
#data 0xF508C738
#data 0xF408C738
#data 0xF1E6E034
#data 0xF05CF2F8
#data 0xF243F21e
#data 0xE004FE27
#data 0xE038F2F6
#data 0xF21EF1E6
#data 0xFE27F243
#data 0x7234D331
#data 0xE00C430b
#data 0xF208C730
#data 0xFF2A904f
#data 0x233803Dd
#data 0xF2F88902
#data 0xFF2AF24d

#align4
loc_8C0B18D8:
#data 0xF2F8E034
#data 0xC72BF3D6
#data 0x64E3D32b
#data 0x65F3F230
#data 0xF308FF2a
#data 0xF2D6E038
#data 0xF230E004
#data 0x430BFF27
#data 0x600C7434
#data 0x40217004
#data 0x4021E122
#data 0x402131Ec
#data 0xE0222100
#data 0x902C03Ec
#data 0x4309633c
#data 0x0E354309
#data 0x430BD31e
#data 0xD21E64E3
#data 0x420B65C3
#data 0x902064E3
#data 0x911FEB00
#data 0xE0220EB5
#data 0x31EC00Ec
#data 0x600C931b
#data 0xC91F70F8
#data 0x21004021
#data 0x303C85Ef
#data 0x600F81Ef
#data 0x8B332008
#data 0x64E3B23e
#data 0xE501D312
#data 0x64D3430b
#data 0xA021E5Fe
#data 0x01B064C3
#data 0x00C3019d
#data 0x00D001C8
#data 0x013001Ea
#data 0x1000014d

#align4
loc_8C0B1970:
#data 0x8c05248e
#data 0xC3A00000
#data 0x43B40000
#data 0x40E00000
#data 0x41000000

#align4
loc_8C0B1984:
#data 0x8c1294C8
#data 0x42200000
#data 0x43AB6DB6

#align4
loc_8C0B1990:
#data 0x8c03362c

loc_8C0B1994:
#data 0x8c034dee

loc_8C0B1998:
#data 0x8c04CC1c

loc_8C0B199C:
#data 0x8c0590F4

loc_8C0B19A0:
#data 0x420BD23d
#data 0x906F0009
#data 0x233803Cd
#data 0x60B38B02
#data 0x81EE0009

#align4
loc_8C0B19B4:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89284011
#data 0x700184E5
#data 0x60B380E5
#data 0x81EF0009
#data 0x905CE322
#data 0x915BE202
#data 0x0DB4E516
#data 0x0CD670Ca
#data 0x0C3470Ed
#data 0x0C247058
#data 0x00DC70D9
#data 0xE30131Cc
#data 0x2100CA01
#data 0x904CE618
#data 0xD3290C34
#data 0x64E3430b
#data 0x91489048
#data 0xE0220EB5
#data 0x31EC00Ec
#data 0x7008600c
#data 0x4021C91f
#data 0x2100

loc_8C0B1A12:
#data 0x7F0c
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B1A20:
#data 0xF408C71f
#data 0x035D9034
#data 0x89012338
#data 0xF408C71d

#align4
loc_8C0B1A30:
#data 0x932FE034
#data 0xC71CF356
#data 0xF308F430
#data 0xF556E038
#data 0xF708C71a
#data 0xF608C71a
#data 0xF246E034
#data 0xF07CF530
#data 0xF24CF42e
#data 0xF427F263
#data 0xF246E038
#data 0xF25CF52e
#data 0xF427F263
#data 0x303C854f
#data 0x600F814f
#data 0x89012008
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0B1A74:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0B1A96,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B1A80:
mov.l @(loc_8C0B1AB4,pc),r3 ; r3 set to 0x8C0450C0
mov 0x32,r0 ; r0 set to 0x32
jmp @r3
mov.w r0,@(0x1C,r5) 	
#data 0x01EA0420
#data 0x01F601D2
#data 0x014D0130
#data 0x0800

loc_8C0B1A96:
#data 0x012c

#align4
loc_8C0B1A98:
#data 0x8c05929c

loc_8C0B1A9C:
#data 0x8c034e8c
#data 0x42200000
#data 0xC2200000
#data 0x43AB6DB6
#data 0x40400000
#data 0x40800000

#align4
loc_8C0B1AB4:
#data 0x8c0450C0

loc_8C0B1AB8:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD334E501
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D562008
#data 0xD3316403
#data 0x14349257
#data 0x14E69157
#data 0x314C84E1
#data 0xE0208041
#data 0x043463F2
#data 0x0425E026
#data 0x03EE904c
#data 0x934A0436
#data 0x323C02Ee
#data 0x430BD328
#data 0x904570Ec
#data 0x0454E501
#data 0x00EE70A8
#data 0x80428402
#data 0x00EE903c
#data 0x80418401
#data 0x03EE9038
#data 0xF336E050
#data 0x9033F437
#data 0xE05403Ee
#data 0xF437F336
#data 0x03EE902e
#data 0x023C902f
#data 0x90290424
#data 0x902B03Ee
#data 0x0424023c
#data 0x03EE9024
#data 0x6143E030
#data 0x023C7150
#data 0x0424D315
#data 0x02EE901c
#data 0x430B7250
#data 0x9017E00c
#data 0xE60FE208
#data 0xE02401Ee
#data 0x0434031c
#data 0x9011E300
#data 0x70040454
#data 0xE0240435
#data 0x0424E51b
#data 0x4F267F04
#data 0x432BD30a
#data 0x6EF6

loc_8C0B1B7E:
#data 0x7F04
#data 0x000B4F26
#data 0x36046EF6
#data 0x00DC00D4
#data 0x01A3012c
#data 0x000001A4

#align4
loc_8C0B1B94:
#data 0x8c044F12

loc_8C0B1B98:
#data 0x8c0B1BA8

loc_8C0B1B9C:
#data 0x8c129560

loc_8C0B1BA0:
#data 0x8c1294C8

loc_8C0B1BA4:
#data 0x8c034C38

loc_8C0B1BA8:
#data 0x4F222FE6
#data 0x430BD32b
#data 0x54E66E43
#data 0x904C61E3
#data 0x62437134
#data 0x05EED328
#data 0x430B7234
#data 0xC727E00c
#data 0x9043F408
#data 0x2338035d
#data 0xC7258901
#data 0xF408

loc_8C0B1BD6:
#data 0xE034
#data 0xC724F356
#data 0xF430E320
#data 0xE038F308
#data 0xC722F556
#data 0xE034F608
#data 0xF530F2E6
#data 0xF421E038
#data 0x33ECF2E6
#data 0x6330F521
#data 0xF463E034
#data 0x435A633c
#data 0xF563E320
#data 0x33ECF2E6
#data 0xF24EF02d
#data 0xE038FE27
#data 0x633C6330
#data 0x435AF2E6
#data 0x911AE301
#data 0x31ECF02d
#data 0xFE27F25e
#data 0x004CE022
#data 0xC91F600c
#data 0x21004021
#data 0x600C8444
#data 0x8B073037
#data 0xE100900c
#data 0x64E3D20c
#data 0x4F260E14
#data 0x6EF6422b

#align4
loc_8C0B1C4C:
#data 0x000B4F26
#data 0x00D46EF6
#data 0x014D0130
#data 0x0000012c

#align4
loc_8C0B1C5C:
#data 0x8c034D8c

loc_8C0B1C60:
#data 0x8c1294C8
#data 0x42200000
#data 0xC2200000
#data 0x43AB6DB6
#data 0x41000000

#align4
loc_8C0B1C74:
#data 0x8c0450C0

loc_8C0B1C78:
#data 0xE6022FE6
#data 0xD34A4F22
#data 0x430B6E43
#data 0x2008E501
#data 0x64038D57
#data 0x9185D347
#data 0x93811434
#data 0x14E6314c
#data 0x804184E1
#data 0x0435E026
#data 0x937B907b
#data 0x042602Ee
#data 0x323C02Ee
#data 0x430BD340
#data 0x907470Ec
#data 0x0454E501
#data 0x00EE70A8
#data 0x80428402
#data 0x00EE906b
#data 0x80418401
#data 0x03EE9067
#data 0xF336E050
#data 0x9062F437
#data 0xE05403Ee
#data 0xF437F336
#data 0x03EE905d
#data 0x023C905e
#data 0x90580424
#data 0x905A03Ee
#data 0x0424023c
#data 0x03EE9053
#data 0x6143E030
#data 0x023C7150
#data 0x0424D32d
#data 0x02EE904b
#data 0x430B7250
#data 0x9046E00c
#data 0x01EEE614
#data 0x031CE024
#data 0xE3FF0434
#data 0x04549041
#data 0x0434E031
#data 0xF308C725
#data 0xD326E068
#data 0xF437E516
#data 0xF308C723
#data 0xF437E06c
#data 0x432B4F26
#data 0x6EF6

loc_8C0B1D3A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B1D40:
#data 0x4F222FE6
#data 0x430BD31f
#data 0x90266E43
#data 0xE02404Ee
#data 0x0E34034c
#data 0xF4E6E068
#data 0x034D9024
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0B1D64:
#data 0xE301F346
#data 0xFE37F340
#data 0xF3E6E06c
#data 0xF246E038
#data 0xFE27F230
#data 0x844454E6
#data 0x3037600c
#data 0x900C8B07
#data 0xD210E100
#data 0x0E1464E3
#data 0x422B4F26
#data 0x6EF6

loc_8C0B1D92:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00D43604
#data 0x012C00Dc
#data 0x01A401A3
#data 0x00000130

#align4
loc_8C0B1DA8:
#data 0x8c044F12

loc_8C0B1DAC:
#data 0x8c0B1D40

loc_8C0B1DB0:
#data 0x8c129560

loc_8C0B1DB4:
#data 0x8c1294C8
#data 0x42200000
#data 0x43AB6DB6

#align4
loc_8C0B1DC0:
#data 0x8c034e8c

loc_8C0B1DC4:
#data 0x8c034dee

loc_8C0B1DC8:
#data 0x8c0450C0

loc_8C0B1DCC:
#data 0xE5012FE6
#data 0x6D432FD6
#data 0xD3534F22
#data 0x430BE600
#data 0x20086463
#data 0x6E038D5e
#data 0x9198D350
#data 0x93941E34
#data 0x1ED631Ec
#data 0x80E184D1
#data 0x0E35E026
#data 0x938E908e
#data 0x0E2602De
#data 0x323C02De
#data 0x430BD349
#data 0x908770Ec
#data 0x0E44E401
#data 0x00DE70A8
#data 0x80E28402
#data 0x00DE907e
#data 0x80E18401
#data 0x03DE907a
#data 0xF336E050
#data 0x9075FE37
#data 0xE05403De
#data 0xFE37F336
#data 0x03DE9070
#data 0x023C9071
#data 0x906B0E24
#data 0x906D03De
#data 0x0E24023c
#data 0x03DE9066
#data 0x61E3E030
#data 0x023C7150
#data 0x0E24D336
#data 0x02DE905e
#data 0x430B7250
#data 0x9059E00c
#data 0x723462D3
#data 0xE02401De
#data 0x61E3031c
#data 0x0E347134
#data 0x9051E308
#data 0xE0200E44
#data 0xE02481Ef
#data 0xD32B0E34
#data 0xE00C430b
#data 0xE616D22a
#data 0x420B6563
#data 0x4F2664E3
#data 0x64E3D328
#data 0x6DF6E509
#data 0x6EF6432b

#align4
loc_8C0B1EA0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B1EA8:
#data 0x2FE69036
#data 0x4F226E43
#data 0xC72204Ee
#data 0x9034F408
#data 0x2338034d
#data 0xC7208901
#data 0xF408

loc_8C0B1EC2:
#data 0xE034
#data 0xF346D322
#data 0xF430C71e
#data 0xE038F308
#data 0xC71DF546
#data 0xC71DF708
#data 0xE034F608
#data 0xF530F2E6
#data 0xF42EF07c
#data 0xF263F24c
#data 0xE038FE27
#data 0xF52EF2E6
#data 0xF263F25c
#data 0x430BFE27
#data 0x600E64E3
#data 0x89074011
#data 0xE300900c
#data 0x0E3464E3
#data 0xD3124F26
#data 0x6EF6432b

#align4
loc_8C0B1F10:
#data 0x000B4F26
#data 0x36046EF6
#data 0x00DC00D4
#data 0x01A3012c
#data 0x013001A4

#align4
loc_8C0B1F24:
#data 0x8c044F12

loc_8C0B1F28:
#data 0x8c0B1EA8

loc_8C0B1F2C:
#data 0x8c129560

loc_8C0B1F30:
#data 0x8c1294C8

loc_8C0B1F34:
#data 0x8c034e8c

loc_8C0B1F38:
#data 0x8c04223a
#data 0x42200000
#data 0xC2200000
#data 0x43AB6DB6
#data 0x40400000
#data 0x40800000

#align4
loc_8C0B1F50:
#data 0x8c034dee

loc_8C0B1F54:
#data 0x8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D31e
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92316403
#data 0xE120E026
#data 0x314CD319
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0B1FA6:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B1FE2,pc),r0 ; r0 set to 0x159
mov.l @(0x18,r14),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt loc_8C0B1FBc
mov r14,r4
bra loc_8C0B22Ee
mov.l @r15+,r14

loc_8C0B1FBC:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0B1FEC,pc),r0 ; r0 set to 0x8C159370
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B1FCE:
mov r4,r3
mov.l @(loc_8C0B1FF0,pc),r1 ; r1 set to 0x8C159374
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3700

loc_8C0B1FE2:
#data 0x0159

#align4
loc_8C0B1FE4:
#data 0x8c044F12

loc_8C0B1FE8:
#data 0x8c0B1FA6

loc_8C0B1FEC:
#data 0x8c159370

loc_8C0B1FF0:
#data 0x8c159374


loc_8C0B1FF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.w @(loc_8C0B20DA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B20D8,pc),r12 ; r12 set to 0xCc
add 0x01,r0
mov.w @(loc_8C0B20DA,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
add r14,r12 ; r12 ??? bc r14 is ???	
mov.l @(loc_8C0B20E8,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0B20DC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B20DE,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B20E0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B20EC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B20DE,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0B20E2,pc),r0 ; r0 set to 0x1A1
add 0x3C,r2
mov.l @(loc_8C0B20F0,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov 0x42,r4 ; r4 set to 0x42
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0B20E4,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.l @(loc_8C0B20F8,pc),r11 ; r11 set to 0x8C1592F4
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B20F4,pc),r0  ; r0 set to 0x8C0B20F4
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0B20E6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0B20Fc
mov r11,r4 ; r4 set to 0x8C1592F4
mov 0x21,r2 ; r2 set to 0x21
fmov fr4,fr0 ; r0 ??	
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll2 r2
shll r2
add r2,r4 ; r4 ??? bc r2 is ???	
mov.w @r4,r2
lds r2,fpul 	
float fpul,fr3
bra loc_8C0B2118
fmac fr0,fr3,fr2

loc_8C0B20D8:
#data 0x00Cc

loc_8C0B20DA:
#data 0x00Dc

loc_8C0B20DC:
#data 0x00C0

loc_8C0B20DE:
#data 0x012c

loc_8C0B20E0:
#data 0x01A3

loc_8C0B20E2:
#data 0x01A1

loc_8C0B20E4:
#data 0x019c

loc_8C0B20E6:
#data 0x0130

#align4
loc_8C0B20E8:
#data 0x8c129560

loc_8C0B20EC:
#data 0x8c1294C8

loc_8C0B20F0:
#data 0x8C2896B0

#align4
loc_8C0B20F4:
#data 0x3FD55555

#align4
loc_8C0B20F8:
#data 0x8c1592F4

loc_8C0B20FC:
#data 0x31ECE121
#data 0xE0346110
#data 0x611CF2E6
#data 0x41004108
#data 0x6241341c
#data 0xF32D425a
#data 0xF231F342

#align4
loc_8C0B2118:
#data 0xFE27E321
#data 0x62E333Ec
#data 0x320CE038
#data 0x63302F26
#data 0x4308633c
#data 0x33BC4300
#data 0x63038531
#data 0xC743435a
#data 0xF00863F6
#data 0xF32DE021
#data 0xF23EF238
#data 0x02ECF32a
#data 0x4208622c
#data 0x32BC4200
#data 0x63038522
#data 0x0E34E022
#data 0x02ED9071
#data 0x89082228
#data 0x02ECE022
#data 0x622BE31f
#data 0x0E247220
#data 0x223902Ec
#data 0x0E24

loc_8C0B2172:
#data 0xE021
#data 0x00ECD434
#data 0x4000600c
#data 0xE021034c
#data 0x00EC2C30
#data 0x600CD332
#data 0x304C4000
#data 0x80C18401
#data 0x650384C1
#data 0x4500D02d
#data 0x430B055d
#data 0xE02164E3
#data 0x06ECD32c
#data 0x666CE517
#data 0x46004608
#data 0x856336Bc
#data 0x430B6603
#data 0x65D364E3
#data 0x81EEE014
#data 0x4F2664E3
#data 0x6CF66BF6
#data 0x6EF66DF6


loc_8C0B21C8:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0B2258,pc),r1 ; r1 set to 0x8C159384
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B21E2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B225C,pc),r3 ; r3 set to 0x8C034DEe
mov.w @(loc_8C0B2240,pc),r13 ; r13 set to 0xCc
jsr @r3
add r14,r13 ; r13 ??? bc r14 is ???	
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0B2260
mov.b @(0x04,r14),r0 	
add 0x01,r0
bra loc_8C0B22Ac
mov.b r0,@(0x04,r14) 	
#data 0x0130

loc_8C0B2240:
#data 0x00Cc
#data 0x0000
#data 0x40092492

#align4
loc_8C0B2248:
#data 0x8c159344

loc_8C0B224C:
#data 0x8c159358

loc_8C0B2250:
#data 0x8c033674

loc_8C0B2254:
#data 0x8c034e8c

loc_8C0B2258:
#data 0x8c159384

loc_8C0B225C:
#data 0x8c034dee

loc_8C0B2260:
#data 0x73FF63D0
#data 0x633E2D30
#data 0x8B0F2338
#data 0x2D10E102
#data 0x200884D1
#data 0x84D18902
#data 0x80D170Ff

#align4
loc_8C0B227C:
#data 0xD32184D1
#data 0xD01F6503
#data 0x055D4500
#data 0x64E3430b

#align4
loc_8C0B228C:
#data 0x02EC9034
#data 0x8B062228
#data 0x420BD21c
#data 0x902E64E3
#data 0x233803Ec
#data 0x8904

loc_8C0B22A2:
#data 0x84E5
#data 0x80E57001
#data 0x81EEE010


loc_8C0B22AC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0B22B4:
#data 0x4F222FE6
#data 0x430BD314
#data 0x901D6E43
#data 0x02ECE301
#data 0x0E24223a
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0B22DA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B22E0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B22FC,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B22EE:
mov.l @(loc_8C0B2310,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0B22FC,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x019E019f

loc_8C0B22FC:
#data 0x012c
#data 0x0000

#align4
loc_8C0B2300:
#data 0x8c159358

loc_8C0B2304:
#data 0x8c033674

loc_8C0B2308:
#data 0x8c045748

loc_8C0B230C:
#data 0x8c034dee

loc_8C0B2310:
#data 0x8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D346
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92806403
#data 0xE120E026
#data 0x314CD341
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x4F226043
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3330009
#data 0x80F4E601
#data 0x430B6563
#data 0x2008E400
#data 0x64038D12
#data 0xE0269259
#data 0xD32EE120
#data 0x1434314c
#data 0xE2210425
#data 0x324C63F2
#data 0x60F21436
#data 0x80418401
#data 0x210084F8
#data 0x220084F4
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B23B0:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0x80F4D320
#data 0xE6012F60
#data 0x430B6563
#data 0x2008E400
#data 0x64038D11
#data 0xE0269233
#data 0xE120D31b
#data 0x1434314c
#data 0x53E60425
#data 0x14E51436
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x0434

loc_8C0B23F2:
#data 0x6043
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B23FE:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B243C,pc),r0 ; r0 set to 0x159
mov.l @(0x18,r14),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0B2416
mov.l @(loc_8C0B2448,pc),r2 ; r2 set to 0x8C0B3954
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B2416:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0B244C,pc),r0 ; r0 set to 0x8C15939c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B2428:
mov r4,r3
mov.l @(loc_8C0B2450,pc),r1 ; r1 set to 0x8C1593C4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3701

loc_8C0B243C:
#data 0x0159
#data 0x0000

#align4
loc_8C0B2440:
#data 0x8c044F12

loc_8C0B2444:
#data 0x8c0B23Fe

loc_8C0B2448:
#data 0x8c0B3954

loc_8C0B244C:
#data 0x8c15939c

loc_8C0B2450:
#data 0x8c1593C4


loc_8C0B2454:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0B2592,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0B2590,pc),r4 ; r4 set to 0xCc
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B2592,pc),r2 ; r2 set to 0xDc
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0B25A4,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0B2594,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B2596,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B2598,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B25A8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B2596,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov r0,r3 ; r3 set to 0x00
mov.b r0,@(0x04,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
mov.w r3,@r4
fmov.s fr4,@(r0,r13) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r13) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r13) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r13) 	
mova @(loc_8C0B25AC,pc),r0  ; r0 set to 0x8C0B25Ac
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B25B0,pc),r0  ; r0 set to 0x8C0B25B0
fmov.s @r0,fr3
mov.w @(loc_8C0B259A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(loc_8C0B25B4,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr2
mov 0x16,r5 ; r5 set to 0x16
mov 0x02,r6 ; r6 set to 0x02
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x01,r5 ; r5 set to 0x01
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8C0B23B0
mov r14,r4
mov 0x01,r6 ; r6 set to 0x01
mov r6,r5 ; r5 set to 0x01
bsr loc_8C0B23B0
mov r14,r4
mov 0x01,r5 ; r5 set to 0x01
mov 0x02,r6 ; r6 set to 0x02
bsr loc_8C0B23B0
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B25C0
mov.l @r15+,r14

loc_8C0B2524:
mov.w @(loc_8C0B259C,pc),r0 ; r0 set to 0x130
mov.w @(loc_8C0B2590,pc),r5 ; r5 set to 0xCc
mov.w @(r0,r4),r3
mov.l @(loc_8C0B25B8,pc),r6 ; r6 set to 0x8C26A518
tst r3,r3
bf/s loc_8C0B2538
add r4,r5 ; r5 ??? bc r4 is ???	
mov.w @(loc_8C0B259E,pc),r0 ; r0 set to 0x8c
bra loc_8C0B253a
nop 	

loc_8C0B2538:
#data 0x9032

loc_8C0B253A:
#data 0xF366
#data 0x005AF33d
#data 0xC71E8151
#data 0xF2086351
#data 0xF32D435a
#data 0x8B01F325
#data 0x25219227

#align4
loc_8C0B2554:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2558:
#data 0xE05C951a
#data 0x354CF346
#data 0x435A6351
#data 0xF230F22d
#data 0x035AF23d
#data 0x2531000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2570:
#data 0x960D9014
#data 0x364C034d
#data 0x8F012338
#data 0x655B6561

#align4
loc_8C0B2580:
#data 0x655F8561
#data 0x455A350c
#data 0xF32DE034
#data 0xF437000b
;-------------------------------------------------------------------------------

loc_8C0B2590:
#data 0x00Cc

loc_8C0B2592:
#data 0x00Dc

loc_8C0B2594:
#data 0x00C0

loc_8C0B2596:
#data 0x012c

loc_8C0B2598:
#data 0x01A3

loc_8C0B259A:
#data 0x041c

loc_8C0B259C:
#data 0x0130

loc_8C0B259E:
#data 0x008c
#data 0x00D50088

#align4
loc_8C0B25A4:
#data 0x8c129560

loc_8C0B25A8:
#data 0x8c1294C8

loc_8C0B25AC:
#data 0x40D55555

#align4
loc_8C0B25B0:
#data 0x42892492

#align4
loc_8C0B25B4:
#data 0x8c034e8c

loc_8C0B25B8:
#data 0x8C26A518
#data 0x43555555

#align4
loc_8C0B25C0:
#data 0x6E432FE6
#data 0x94908455
#data 0x8F052008
#data 0x908D345c
#data 0x600C005c
#data 0x89048816

#align4
loc_8C0B25D8:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B25E2:
#data 0x844e
#data 0x89022008
#data 0xE3009081
#data 0x0E34

loc_8C0B25EE:
#data 0xE024
#data 0x025CD140
#data 0x0E2464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2608:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0xBF859C6c
#data 0x65D33CEc
#data 0x64E3BF9c
#data 0xBFA565D3
#data 0x63C164E3
#data 0xF208C733
#data 0xF32D435a
#data 0x8909F235
#data 0x65D3925d
#data 0xBF992C21
#data 0xE01264E3
#data 0x84E581Ee
#data 0x80E57001

#align4
loc_8C0B2648:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B2652:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov r4,r14
bsr loc_8C0B2524
mov r14,r4
mov.l @r15,r5
bsr loc_8C0B2570
mov r14,r4
mov.l @(loc_8C0B26FC,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0B2696
mov.b @(0x05,r14),r0 	
mov 0x16,r5 ; r5 set to 0x16
mov.l @(loc_8C0B2700,pc),r3 ; r3 set to 0x8C034E8c
mov 0x17,r6 ; r6 set to 0x17
add 0x01,r0
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r14,r4
mov r14,r4
mov 0x09,r5 ; r5 set to 0x09
mov 0x00,r6 ; r6 set to 0x00
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0B23B0
mov.l @r15+,r14

loc_8C0B2696:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B269E:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93237FFc
#data 0x6D536E43
#data 0x33EC65D3
#data 0xBF372F32
#data 0x65D364E3
#data 0x64E3BF5a
#data 0x420BD20f
#data 0x901464E3
#data 0x233803Dc
#data 0x84E58B0a
#data 0xD30CE516
#data 0x7001E602
#data 0x430B80E5
#data 0x62F264E3
#data 0x8024E001

#align4
loc_8C0B26E0:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x02A46EF6
#data 0x012C0159
#data 0x00D500Cc

#align4
loc_8C0B26F4:
#data 0x8c1593D4
#data 0x43480000

#align4
loc_8C0B26FC:
#data 0x8c034dee

loc_8C0B2700:
#data 0x8c034e8c

loc_8C0B2704:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E439362
#data 0x6D539261
#data 0x65D333Ec
#data 0x2F3232Dc
#data 0xBF011F21
#data 0x65D364E3
#data 0x64E3BF24
#data 0x430BD32c
#data 0x52F164E3
#data 0x2008842c
#data 0x84E58B0a
#data 0x7001E301
#data 0x904B80E5
#data 0xE0000E34
#data 0x802462F2
#data 0x81EEE018

#align4
loc_8C0B274C:
#data 0x4F267F08
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B2756:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E432F52
#data 0x64E3BEE0
#data 0xBF0365F2
#data 0x85EE64E3
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E58B08
#data 0x80E57001
#data 0xF308C718
#data 0xFE37E05c
#data 0x81EEE00e

#align4
loc_8C0B2788:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2790:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x6D53BEC4
#data 0xBEDB65D3
#data 0x65D364E3
#data 0x64E3BEE4
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0B27BA:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B27C2:
mov r4,r3
mov.l @(loc_8C0B27E4,pc),r1 ; r1 set to 0x8C1593Ec
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x02A400Cc
#data 0x0000012c

#align4
loc_8C0B27DC:
#data 0x8c034dee
#data 0xC1555555

#align4
loc_8C0B27E4:
#data 0x8c1593Ec

loc_8C0B27E8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229199
#data 0x31EC84E4
#data 0x70019295
#data 0x80E4D34d
#data 0x430B9092
#data 0x909032Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9082
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33F0E34
#data 0xE00C430b
#data 0xD43EE024
#data 0xE30002Dc
#data 0xE2FF0E24
#data 0x0E34906d
#data 0x0E24E031
#data 0xF3D6E03c
#data 0xE021FE37
#data 0x600C00Ec
#data 0x40004000
#data 0xC736034d
#data 0xE05CF208
#data 0xF32D435a
#data 0xFE37F322
#data 0x03ECE021
#data 0x4300633c
#data 0x343C4300
#data 0x63038541
#data 0xC72F435a
#data 0xE060F108
#data 0xF312F32d
#data 0x904CFE37
#data 0x233803Ed
#data 0xE6038D04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0B28A4:
#data 0xE516D328
#data 0x64E3430b
#data 0xD127E021
#data 0x65D300Ec
#data 0x600C64E3
#data 0x81EE001c
#data 0x6DF64F26
#data 0x6EF6

loc_8C0B28C2:
#data 0x2FE6
#data 0x84556E43
#data 0x20089432
#data 0x345C8F08
#data 0x005C902f
#data 0x8816600c
#data 0x844C8B02
#data 0x8B042008

#align4
loc_8C0B28E0:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B28EA:
#data 0xE024
#data 0x035CD118
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B2904:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8C0B2922
mov.b @(0x05,r4),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0B292A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
bra loc_8C0B2954
nop 	

loc_8C0B2922:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x00Dc
#data 0x00C0

loc_8C0B292A:
#data 0x012c
#data 0x013001A3
#data 0x015902A4

#align4
loc_8C0B2934:
#data 0x8c129560

loc_8C0B2938:
#data 0x8c1294C8

loc_8C0B293C:
#data 0x8c159390
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0B2948:
#data 0x8c034e8c

loc_8C0B294C:
#data 0x8c15938c

loc_8C0B2950:
#data 0x8c1593Fc

loc_8C0B2954:
#data 0x4F222FE6
#data 0xE05C7FFc
#data 0x93246E43
#data 0x2F32335c
#data 0xE034F3E6
#data 0xD31154E5
#data 0xF230F246
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F246
#data 0x430BFE27
#data 0x62F264E3
#data 0x2008842d
#data 0x900F8902
#data 0x0E34E300

#align4
loc_8C0B2990:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B2998:
mov r4,r3
mov.l @(loc_8C0B29B4,pc),r1 ; r1 set to 0x8C159404
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x02A4
#data 0x0000012c

#align4
loc_8C0B29B0:
#data 0x8c034dee

loc_8C0B29B4:
#data 0x8c159404

loc_8C0B29B8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x2FB62FC6
#data 0x4F22918d
#data 0x31EC84E4
#data 0x70019289
#data 0x80E4D347
#data 0x430B9086
#data 0x908432Dc
#data 0x61E3EC01
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9076
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3390E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0xD2369063
#data 0xE0310EC4
#data 0x0E34420b
#data 0xDB35640c
#data 0x435A634f
#data 0xF208C732
#data 0xF32D9059
#data 0xF33DF322
#data 0xC731F3B6
#data 0x644F045a
#data 0xF12D445a
#data 0xF308F130
#data 0xF13DE034
#data 0x644F045a
#data 0xF12D445a
#data 0xF13DF130
#data 0x644F045a
#data 0xF12D445a
#data 0x9041FE17
#data 0xE038F1D6
#data 0xFE17D322
#data 0xF1D6E03c
#data 0xFE17430b
#data 0x8F04C803
#data 0x60C3E604
#data 0x80B50009
#data 0x80B6

loc_8C0B2A86:
#data 0xD320
#data 0x430BE516
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6CF66BF6
#data 0x6EF66DF6

#align4
loc_8C0B2A9C:
#data 0x4F222FE6
#data 0x20088455
#data 0x6E438F0e
#data 0x005C9021
#data 0x8816600c
#data 0xE0248B08
#data 0x0E34035c
#data 0x430BD314
#data 0x600E64E3
#data 0x89024011

#align4
loc_8C0B2AC4:
#data 0x700184E4
#data 0x80E4

loc_8C0B2ACA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B2AD0:
mov r4,r3
mov.l @(loc_8C0B2B10,pc),r1 ; r1 set to 0x8C159414
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc
#data 0x012C00C0
#data 0x008801A3
#data 0x0159041c

#align4
loc_8C0B2AF0:
#data 0x8c129560

loc_8C0B2AF4:
#data 0x8c1294C8

loc_8C0B2AF8:
#data 0x8c03319e
#data 0x3FD55555
#data 0x8C26A518
#data 0x42D55555

#align4
loc_8C0B2B08:
#data 0x8c034e8c

loc_8C0B2B0C:
#data 0x8c034dee

loc_8C0B2B10:
#data 0x8c159414


loc_8C0B2B14:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.w @(loc_8C0B2C08,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B2C06,pc),r12 ; r12 set to 0xCc
add 0x01,r0
mov.w @(loc_8C0B2C08,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
add r14,r12 ; r12 ??? bc r14 is ???	
mov.w @(loc_8C0B2C0A,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0B2C1C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B2C0C,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B2C0E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B2C20,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r4 ; r4 set to 0x00
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x03,r2 ; r2 set to 0x03
mov.w @(loc_8C0B2C0C,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x42,r3 ; r3 set to 0x42
mov.w @(loc_8C0B2C10,pc),r0 ; r0 set to 0x19c
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bf loc_8C0B2BA0
mov.w @(loc_8C0B2C12,pc),r0 ; r0 set to 0x1A1
mov 0x36,r2 ; r2 set to 0x36
bra loc_8C0B2BA6
mov.b r2,@(r0,r14) 	

loc_8C0B2BA0:
mov.w @(loc_8C0B2C12,pc),r0 ; r0 set to 0x1A1
mov 0x4A,r3 ; r3 set to 0x4a
mov.b r3,@(r0,r14) 	

loc_8C0B2BA6:
mov.w @(loc_8C0B2C14,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.l @(loc_8C0B2C24,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
mov 0x40,r3 ; r3 set to 0x40, r3 set to 0x40
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0B2C14,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.w @(r0,r14),r2
or r3,r2
mov.w r2,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
mov.l @(loc_8C0B2C28,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
jsr @r2
fmov.s fr3,@(r0,r14) 	
extu.b r0,r5 ; r5 set to 0x3C, r5 set to 0x3c
mov.w @(loc_8C0B2C16,pc),r0 ; r0 set to 0x94, r0 set to 0x94
exts.w r5,r5 ; r5 ??, r5 ??	
mov.l @(loc_8C0B2C2C,pc),r4 ; r4 set to 0x8C26A518, r4 set to 0x8C26A518
add 0x40,r5
lds r5,fpul 	
fmov.s @(r0,r4),fr2 ; r2 ??, r2 ??	
mova @(loc_8C0B2C30,pc),r0  ; r0 set to 0x8C0B2C30, r0 set to 0x8C0B2C30
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B2C18,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0B2C34
mov.w @(loc_8C0B2C1A,pc),r0 ; r0 set to 0x8C, r0 set to 0x8c
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s fr3,@(r0,r14) 	
bra loc_8C0B2C3e
add 0x54,r0

loc_8C0B2C06:
#data 0x00Cc

loc_8C0B2C08:
#data 0x00Dc

loc_8C0B2C0A:
#data 0x00C0

loc_8C0B2C0C:
#data 0x012c

loc_8C0B2C0E:
#data 0x01A3

loc_8C0B2C10:
#data 0x019c

loc_8C0B2C12:
#data 0x01A1

loc_8C0B2C14:
#data 0x01Ac

loc_8C0B2C16:
#data 0x0094

loc_8C0B2C18:
#data 0x0130

loc_8C0B2C1A:
#data 0x008c

#align4
loc_8C0B2C1C:
#data 0x8c129560

loc_8C0B2C20:
#data 0x8c1294C8

loc_8C0B2C24:
#data 0x8C2896B0

#align4
loc_8C0B2C28:
#data 0x8c03319e

loc_8C0B2C2C:
#data 0x8C26A518

#align4
loc_8C0B2C30:
#data 0x40092492

#align4
loc_8C0B2C34:
#data 0xF346909a
#data 0xFE37E034
#data 0x7058

loc_8C0B2C3E:
#data 0xF346
#data 0xF48DE068
#data 0x035AF33d
#data 0xFE472C31
#data 0xFE47E06c
#data 0xF308C74a
#data 0xFE37E05c
#data 0xF308C749
#data 0xFE37E060
#data 0x03ED9085
#data 0x8D042338
#data 0xE05CE605
#data 0xF34DF3E6
#data 0xFE37

loc_8C0B2C72:
#data 0xD344
#data 0x430BE516
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6

loc_8C0B2C86:
#data 0x2FE6
#data 0x84556E43
#data 0x20089470
#data 0x345C8F08
#data 0x005C906d
#data 0x8816600c
#data 0x844C8B02
#data 0x8B042008

#align4
loc_8C0B2CA4:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B2CAE:
#data 0xE024
#data 0x035CD135
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2CC8:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xE15C7FFc
#data 0xE0346E43
#data 0x31EC934a
#data 0x33DC6D53
#data 0xF3182F32
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF2E6F318
#data 0xD31EF230
#data 0x430BFE27
#data 0x62F264E3
#data 0x2008842d
#data 0xEC008D02
#data 0x0EC49026

#align4
loc_8C0B2D28:
#data 0xB06865D3
#data 0x200864E3
#data 0x84E48903
#data 0xA04C7001
#data 0x80E4

loc_8C0B2D3A:
#data 0x901c
#data 0x233803Ec
#data 0xD3138B06
#data 0x64E3430b
#data 0x02EC9016
#data 0x89212228

#align4
loc_8C0B2D50:
#data 0xE30184E5
#data 0x7001E516
#data 0xE60680E5
#data 0x0E34900a
#data 0x0EC4D308
#data 0x64E3430b
#data 0x0009A029
#data 0x01300088
#data 0x015902A4
#data 0x019F012c
#data 0x0000019e
#data 0xC1D55555
#data 0xC1092492

#align4
loc_8C0B2D84:
#data 0x8c034e8c

loc_8C0B2D88:
#data 0x8c159424

loc_8C0B2D8C:
#data 0x8c034dee

loc_8C0B2D90:
#data 0x8c045748

loc_8C0B2D94:
#data 0xF3E6E038
#data 0xF2D69051
#data 0x8B18F235
#data 0xE038F3D6
#data 0xFE37E301
#data 0x84E5E516
#data 0x7001E607
#data 0x904580E5
#data 0xD3230E34
#data 0x430B0EC4
#data 0x64E3

loc_8C0B2DBE:
#data 0x64E3
#data 0xE5017434
#data 0x4F267F04
#data 0x6CF6D21f
#data 0x422B6DF6
#data 0x6EF6

loc_8C0B2DD2:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B2DDE:
#data 0x4F22
#data 0xD31A7FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28903
#data 0x70018434
#data 0x8034

loc_8C0B2DF6:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B2DFE:
#data 0x9520
#data 0xF246E034
#data 0x6351354c
#data 0xF32D435a
#data 0xF23DF231
#data 0x634F045a
#data 0x89004311
#data 0x644b

loc_8C0B2E1A:
#data 0x644f
#data 0xC70C445a
#data 0xF32DF208
#data 0x0029F235
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0B2E2C:
mov r4,r3
mov.l @(loc_8C0B2E54,pc),r1 ; r1 set to 0x8C15942c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x041c
#data 0x00CC012c

#align4
loc_8C0B2E44:
#data 0x8c034e8c

loc_8C0B2E48:
#data 0x8c102320

loc_8C0B2E4C:
#data 0x8c034dee
#data 0x41D55555

#align4
loc_8C0B2E54:
#data 0x8c15942c

loc_8C0B2E58:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84E44F22
#data 0x700191A5
#data 0x80E494A2
#data 0x92A031Ec
#data 0xD35534Ec
#data 0x430B909e
#data 0x909C32Dc
#data 0x61E3E501
#data 0x0E547150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC908e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3470E34
#data 0xE00C430b
#data 0xF48DE024
#data 0xE3FC02Dc
#data 0x0E24E60e
#data 0x0E549079
#data 0x0E34E031
#data 0x9076E500
#data 0x0E55D341
#data 0x2451E03c
#data 0xF3D6E516
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xC739FE47
#data 0xE060F308
#data 0x430BFE37
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0B2F00:
#data 0x6E432FE6
#data 0x94598455
#data 0x8F082008
#data 0x9056345c
#data 0x600C005c
#data 0x8B028816
#data 0x2008844c
#data 0x8B04

loc_8C0B2F1E:
#data 0x84E4
#data 0x80E47001
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B2F28:
#data 0xD12BE024
#data 0x64E3035c
#data 0x84E50E34
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B2F42:
#data 0xC727
#data 0xF308D625
#data 0x9531903a
#data 0xE034F266
#data 0xF230354c
#data 0xC723F427
#data 0x9032F208
#data 0xF120F166
#data 0x005AF13d
#data 0xE0608151
#data 0xF1466351
#data 0xF02D435a
#data 0xF03DF010
#data 0x2531035a
#data 0x62518551
#data 0x425A320c
#data 0xE038F12d
#data 0xC718F417
#data 0xF0086351
#data 0xF12D435a
#data 0x890BF015
#data 0x25219216
#data 0x85516351
#data 0x435A330c
#data 0xF32DE038
#data 0x8445F437
#data 0x80457001

#align4
loc_8C0B2FAC:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x00DC00Cc
#data 0x012C00C0
#data 0x013001A3
#data 0x015902A4
#data 0x00940088
#data 0x00000101

#align4
loc_8C0B2FC8:
#data 0x8c129560

loc_8C0B2FCC:
#data 0x8c1294C8
#data 0x41092492

#align4
loc_8C0B2FD4:
#data 0x8c034e8c

loc_8C0B2FD8:
#data 0x8c15943c
#data 0x8C26A518
#data 0x43A00000
#data 0xC3892492
#data 0x43809249


loc_8C0B2FEC:
mova @(loc_8C0B3134,pc),r0  ; r0 init to 0x8C0B3134
mov.l @(loc_8C0B3130,pc),r6 ; r6 set to 0x8C26A518
fmov.s @r0,fr3
mov.w @(loc_8C0B311E,pc),r0 ; r0 set to 0x88
mov.w @(loc_8C0B311C,pc),r5 ; r5 set to 0xCc
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
add r4,r5 ; r5 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0B3138,pc),r0  ; r0 set to 0x8C0B3138
fmov.s @r0,fr2
mov.w @(loc_8C0B3120,pc),r0 ; r0 set to 0x94
fmov.s @(r0,r6),fr1
fadd fr2,fr1
ftrc fr1,fpul 	
sts fpul,r0
mov.w r0,@(0x02,r5) 	
mov.w @(0x02,r5),r0 	
mov.w @r5,r3
add r0,r3
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr1
rts 	
fmov.s fr1,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B3020:
mov r4,r3
mov.l @(loc_8C0B313C,pc),r1 ; r1 set to 0x8C159444
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B3032:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0x917084E4
#data 0x946B7001
#data 0x31EC80E4
#data 0x34EC926b
#data 0x9069D33c
#data 0x32DC430b
#data 0xE5019067
#data 0x715061E3
#data 0x84D20E54
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9059FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD32e
#data 0xE024E00c
#data 0x02DCF48d
#data 0xE60FE3Fc
#data 0x90440E24
#data 0xE0310E54
#data 0xE5000E34
#data 0xD3299041
#data 0xE03C0E55
#data 0xE5162451
#data 0xFE37F3D6
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF308C720
#data 0xFE37E060
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0B30DA:
#data 0x2FE6
#data 0x84556E43
#data 0x20089424
#data 0x345C8F08
#data 0x005C9021
#data 0x8816600c
#data 0x844C8B02
#data 0x8B042008

#align4
loc_8C0B30F8:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3102:
#data 0xE024
#data 0x035CD112
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B311C:
#data 0x00Cc

loc_8C0B311E:
#data 0x0088

loc_8C0B3120:
#data 0x0094
#data 0x00Dc
#data 0x012C00C0
#data 0x013001A3
#data 0x015902A4

#align4
loc_8C0B3130:
#data 0x8C26A518

#align4
loc_8C0B3134:
#data 0x43A00000

#align4
loc_8C0B3138:
#data 0xC3892492

#align4
loc_8C0B313C:
#data 0x8c159444

loc_8C0B3140:
#data 0x8c129560

loc_8C0B3144:
#data 0x8c1294C8
#data 0x40092492

#align4
loc_8C0B314C:
#data 0x8c034e8c

loc_8C0B3150:
#data 0x8c159454

loc_8C0B3154:
#data 0xD65BC75c
#data 0x90ABF308
#data 0xF26695A9
#data 0x354CE034
#data 0xF427F230
#data 0xF208C758
#data 0xF16690A3
#data 0xF13DF120
#data 0x8151005a
#data 0x6351E060
#data 0x435AF146
#data 0xF010F02d
#data 0x035AF03d
#data 0x62512531
#data 0x622B8551
#data 0x425A320c
#data 0xE038F12d
#data 0xC74DF417
#data 0xF0086351
#data 0xF12D435a
#data 0x890CF015
#data 0x2521E233
#data 0x85516351
#data 0x330C633b
#data 0xE038435a
#data 0xF437F32d
#data 0x70018445
#data 0x8045

loc_8C0B31C2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B31C6:
mova @(loc_8C0B32C8,pc),r0  ; r0 init to 0x8C0B32C8
mov.l @(loc_8C0B32C4,pc),r6 ; r6 set to 0x8C26A518
fmov.s @r0,fr3
mov.w @(loc_8C0B32B4,pc),r0 ; r0 set to 0x88
mov.w @(loc_8C0B32B2,pc),r5 ; r5 set to 0xCc
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
add r4,r5 ; r5 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0B32CC,pc),r0  ; r0 set to 0x8C0B32Cc
fmov.s @r0,fr2
mov.w @(loc_8C0B32B6,pc),r0 ; r0 set to 0x90
fmov.s @(r0,r6),fr1
fadd fr2,fr1
ftrc fr1,fpul 	
sts fpul,r0
mov.w r0,@(0x02,r5) 	
mov.w @r5,r3
mov.w @(0x02,r5),r0 	
neg r3,r3
add r0,r3
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr1
rts 	
fmov.s fr1,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B31FC:
mov r4,r3
mov.l @(loc_8C0B32D4,pc),r1 ; r1 set to 0x8C15945c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B320E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0B32B8,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0B32B2,pc),r4 ; r4 set to 0xCc
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B32B8,pc),r2 ; r2 set to 0xDc
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0B32D8,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0B32BA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B32BC,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B32BE,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B32DC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0xFB,r3 ; r3 set to 0xFFFFFFFb
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B32BC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0B32C0,pc),r0 ; r0 set to 0x130
mov.w r5,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.w r5,@r4
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0B32E0,pc),r0  ; r0 set to 0x8C0B32E0
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B32E4
mov.w @(loc_8C0B32C2,pc),r0 ; r0 set to 0x158
mov 0x10,r3 ; r3 set to 0x10
bra loc_8C0B32Ea
mov.b r3,@(r0,r14) 	

loc_8C0B32B2:
#data 0x00Cc

loc_8C0B32B4:
#data 0x0088

loc_8C0B32B6:
#data 0x0090

loc_8C0B32B8:
#data 0x00Dc

loc_8C0B32BA:
#data 0x00C0

loc_8C0B32BC:
#data 0x012c

loc_8C0B32BE:
#data 0x01A3

loc_8C0B32C0:
#data 0x0130

loc_8C0B32C2:
#data 0x0158

#align4
loc_8C0B32C4:
#data 0x8C26A518

#align4
loc_8C0B32C8:
#data 0x43A00000

#align4
loc_8C0B32CC:
#data 0x42892492
#data 0x424DB6Db

#align4
loc_8C0B32D4:
#data 0x8c15945c

loc_8C0B32D8:
#data 0x8c129560

loc_8C0B32DC:
#data 0x8c1294C8

loc_8C0B32E0:
#data 0x40892492

#align4
loc_8C0B32E4:
#data 0xE111909a
#data 0x0E14

loc_8C0B32EA:
#data 0x9097
#data 0xD34FE516
#data 0x430B06Ec
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0B3300:
#data 0x6E432FE6
#data 0x948A8455
#data 0x8F082008
#data 0x9087345c
#data 0x600C005c
#data 0x8B028816
#data 0x2008844c
#data 0x8B04

loc_8C0B331E:
#data 0x84E4
#data 0x80E47001
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B3328:
#data 0xD141E024
#data 0x64E3035c
#data 0x84E50E34
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3342:
mova @(loc_8C0B3438,pc),r0  ; r0 init to 0x8C0B3438
mov.l @(loc_8C0B3434,pc),r6 ; r6 set to 0x8C26A518
fmov.s @r0,fr3
mov.w @(loc_8C0B3424,pc),r0 ; r0 set to 0x88
mov.w @(loc_8C0B3422,pc),r5 ; r5 set to 0xCc
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0B343C,pc),r0  ; r0 set to 0x8C0B343c
fmov.s @r0,fr4
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0B336a
add r4,r5 ; r5 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
bra loc_8C0B3370
fadd fr4,fr2

loc_8C0B336A:
#data 0xE034
#data 0xF241F246

#align4
loc_8C0B3370:
#data 0xC733F427
#data 0x9056F308
#data 0xF230F266
#data 0x005AF23d
#data 0xE0608151
#data 0xF2466351
#data 0xF12D435a
#data 0xF13DF120
#data 0x2531035a
#data 0x85516251
#data 0x425A320c
#data 0xF22DE038
#data 0xC728F427
#data 0xF1086351
#data 0xF22D435a
#data 0x890BF125
#data 0x2521923a
#data 0x85516351
#data 0x435A330c
#data 0xF32DE038
#data 0x8445F437
#data 0x80457001

#align4
loc_8C0B33C8:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0B33CC:
mova @(loc_8C0B3438,pc),r0  ; r0 init to 0x8C0B3438
mov.l @(loc_8C0B3434,pc),r6 ; r6 set to 0x8C26A518
fmov.s @r0,fr3
mov.w @(loc_8C0B3424,pc),r0 ; r0 set to 0x88
mov.w @(loc_8C0B3422,pc),r5 ; r5 set to 0xCc
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0B343C,pc),r0  ; r0 set to 0x8C0B343c
fmov.s @r0,fr4
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0B33F4
add r4,r5 ; r5 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
bra loc_8C0B33Fa
fadd fr4,fr2

loc_8C0B33F4:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
fsub fr4,fr2

loc_8C0B33FA:
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0B3440,pc),r0  ; r0 set to 0x8C0B3440, r0 init to 0x8C0B3440
fmov.s @r0,fr3
mov.w @(loc_8C0B3426,pc),r0 ; r0 set to 0x94, r0 set to 0x94
fmov.s @(r0,r6),fr2
fadd fr3,fr2
ftrc fr2,fpul 	
sts fpul,r0
mov.w r0,@(0x02,r5) 	
mov.w @(0x02,r5),r0 	
mov.w @r5,r3
add r0,r3
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
float fpul,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x02A40158
#data 0x0159

loc_8C0B3422:
#data 0x00Cc

loc_8C0B3424:
#data 0x0088

loc_8C0B3426:
#data 0x0094
#data 0x0000009a

#align4
loc_8C0B342C:
#data 0x8c034e8c

loc_8C0B3430:
#data 0x8c15946c

loc_8C0B3434:
#data 0x8C26A518

#align4
loc_8C0B3438:
#data 0x43A00000

#align4
loc_8C0B343C:
#data 0x43555555

#align4
loc_8C0B3440:
#data 0xC31A4924
#data 0x43092492


loc_8C0B3448:
mov r4,r3
mov.l @(loc_8C0B35A0,pc),r1 ; r1 set to 0x8C159474
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B345A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B358C,pc),r0 ; r0 set to 0x20c
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B358E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.l @(r0,r13),r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B35A4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0 ; r0 set to 0x20d
mov.w @(loc_8C0B358E,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B3590,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B3592,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B3594,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B35A8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r5 ; r5 set to 0x00
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x42,r6 ; r6 set to 0x42
mov.w @(loc_8C0B3592,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0B3596,pc),r0 ; r0 set to 0x19c
mov.b r6,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r6,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0B34E2
mov.w @(loc_8C0B3598,pc),r0 ; r0 set to 0x1A1
mov 0x48,r3 ; r3 set to 0x48
bra loc_8C0B34E8
mov.b r3,@(r0,r14) 	

loc_8C0B34E2:
#data 0x9059
#data 0x0E24E249

#align4
loc_8C0B34E8:
#data 0xE61C9057
#data 0x0E55D32f
#data 0x0E5470F2
#data 0x0E567026
#data 0x84E2E516
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE0340215
#data 0xD128F346
#data 0xE038FE37
#data 0xF346415a
#data 0xF2E6FE37
#data 0xF230F30d
#data 0xE03CFE27
#data 0xFE27F2D6
#data 0x430BD322
#data 0x65D364E3
#data 0x81EEE004
#data 0x4F2664E3
#data 0x6EF66DF6

#align4
loc_8C0B353C:
#data 0x84552FE6
#data 0x8F052008
#data 0x90296E43
#data 0x600C005c
#data 0x89048816

#align4
loc_8C0B3550:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B355A:
#data 0xE024
#data 0x035CD116
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B3574:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
tst r0,r0
bf loc_8C0B35Bc
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B358C:
#data 0x020c

loc_8C0B358E:
#data 0x00Dc

loc_8C0B3590:
#data 0x00C0

loc_8C0B3592:
#data 0x012c

loc_8C0B3594:
#data 0x01A3

loc_8C0B3596:
#data 0x019c

loc_8C0B3598:
#data 0x01A1
#data 0x01Ac
#data 0x00000159

#align4
loc_8C0B35A0:
#data 0x8c159474

loc_8C0B35A4:
#data 0x8c129560

loc_8C0B35A8:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0x42892492

#align4
loc_8C0B35B4:
#data 0x8c034e8c

loc_8C0B35B8:
#data 0x8c159484


loc_8C0B35BC:
mov.l @(loc_8C0B371C,pc),r3 ; r3 set to 0x8C045748
jsr @r3
mov r14,r4
mov.w @(loc_8C0B3708,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B35E8
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r2 ; r2 set to 0x00
mov r14,r4
add 0x01,r0 ; r0 set to 0x19f
mov.b r0,@(0x05,r14) 	
mov 0x06,r6 ; r6 set to 0x06
mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
mov 0x16,r5 ; r5 set to 0x16
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B3720,pc),r3 ; r3 set to 0x8C034E8c
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0B35E8:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B35EE:
#data 0x4F22
#data 0xD34C7FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28903
#data 0x70018434
#data 0x8034

loc_8C0B3606:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B360E:
mov r4,r3
mov.l @(loc_8C0B3728,pc),r1 ; r1 set to 0x8C15948c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B3620:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B370C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B370C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0B372C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B370E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B3710,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B3730,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x0B,r3 ; r3 set to 0x0b
mov.b r2,@(r0,r14) 	
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.w @(loc_8C0B370A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0B3712,pc),r0 ; r0 set to 0x130
mov.w r3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B36Aa
mov.w @(loc_8C0B3714,pc),r0 ; r0 set to 0x158
mov 0x13,r3 ; r3 set to 0x13
bra loc_8C0B36B0
mov.b r3,@(r0,r14) 	

loc_8C0B36AA:
#data 0x9033
#data 0x0E14E114

#align4
loc_8C0B36B0:
#data 0xE5169030
#data 0x06ECD31a
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0B36C6:
#data 0x2FE6
#data 0x84556E43
#data 0x20089423
#data 0x345C8F08
#data 0x005C9020
#data 0x8816600c
#data 0x844C8B02
#data 0x8B042008

#align4
loc_8C0B36E4:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B36EE:
#data 0xE024
#data 0x035CD110
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B3708:
#data 0x019e

loc_8C0B370A:
#data 0x012c

loc_8C0B370C:
#data 0x00Dc

loc_8C0B370E:
#data 0x00C0

loc_8C0B3710:
#data 0x01A3

loc_8C0B3712:
#data 0x0130

loc_8C0B3714:
#data 0x0158
#data 0x02A4
#data 0x00000159

#align4
loc_8C0B371C:
#data 0x8c045748

loc_8C0B3720:
#data 0x8c034e8c

loc_8C0B3724:
#data 0x8c034dee

loc_8C0B3728:
#data 0x8c15948c

loc_8C0B372C:
#data 0x8c129560

loc_8C0B3730:
#data 0x8c1294C8

loc_8C0B3734:
#data 0x8c15949c


loc_8C0B3738:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B3888,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0B388C,pc),r4 ; r4 set to 0x8C26A518
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0B3752
mov.w @(loc_8C0B3876,pc),r0 ; r0 set to 0x8c
bra loc_8C0B3754
nop 	

loc_8C0B3752:
mov.w @(loc_8C0B3878,pc),r0 ; r0 set to 0x88

loc_8C0B3754:
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B3890,pc),r0  ; r0 set to 0x8C0B3890, r0 set to 0x8C0B3890
fmov.s @r0,fr3
mov.w @(loc_8C0B387A,pc),r0 ; r0 set to 0x90, r0 set to 0x90
fmov.s @(r0,r4),fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B376E:
mov r4,r3
mov.l @(loc_8C0B3894,pc),r1 ; r1 set to 0x8C1594A0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0B3780:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229178
#data 0x31EC84E4
#data 0x70019274
#data 0x54E5D340
#data 0x907080E4
#data 0x32DC430b
#data 0xE201906e
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9060FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD331
#data 0xE024E00c
#data 0xE30002Dc
#data 0x0E24E516
#data 0x904BE2Fd
#data 0x0E34E618
#data 0x0E24E031
#data 0xF346E034
#data 0xFE37D32a
#data 0xF346E038
#data 0xE03CFE37
#data 0xFE37F346
#data 0x64E3430b
#data 0xE01865D3
#data 0x64E381Ee
#data 0x6DF64F26
#data 0x6EF6

loc_8C0B3816:
#data 0x2FE6
#data 0x84556E43
#data 0x20089432
#data 0x345C8F08
#data 0x005C902f
#data 0x8816600c
#data 0x844C8B02
#data 0x8B042008

#align4
loc_8C0B3834:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B383E:
#data 0xE024
#data 0x035CD118
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B3858:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84458B05
#data 0x7001E301
#data 0x90078045
#data 0x0434

loc_8C0B3872:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B3876:
#data 0x008c

loc_8C0B3878:
#data 0x0088

loc_8C0B387A:
#data 0x0090
#data 0x00C000Dc
#data 0x01A3012c
#data 0x015902A4

#align4
loc_8C0B3888:
#data 0x8c034dee

loc_8C0B388C:
#data 0x8C26A518

#align4
loc_8C0B3890:
#data 0xC2CDB6Db

#align4
loc_8C0B3894:
#data 0x8c1594A0

loc_8C0B3898:
#data 0x8c129560

loc_8C0B389C:
#data 0x8c1294C8

loc_8C0B38A0:
#data 0x8c034e8c

loc_8C0B38A4:
#data 0x8c1594B0


loc_8C0B38A8:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0B395E,pc),r3 ; r3 set to 0xCc
mov.l @(0x14,r14),r13
mov.l @(loc_8C0B3964,pc),r2 ; r2 set to 0x8C034DEe
add r13,r3 ; r3 ??? bc r13 is ???	
mov.l r3,@r15
jsr @r2
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @r15,r3
mov.b @(0x04,r3),r0 	
tst r0,r0
bt loc_8C0B38Ec
mov.b @(0x05,r14),r0 	
mov 0x16,r5 ; r5 set to 0x16
mov r14,r4
mov 0x1B,r6 ; r6 set to 0x1b
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B3968,pc),r3 ; r3 set to 0x8C034E8c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B38EC:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B38F6:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FF8
#data 0x5DE5932d
#data 0x33DC922c
#data 0x325C1F31
#data 0x2F22D315
#data 0x64E3430b
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x843D63F2
#data 0x89022008
#data 0xE200901b
#data 0x0E24

loc_8C0B392E:
#data 0x53F1
#data 0x20088434
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0B393C:
#data 0x4F267F08
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3946:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B3962,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B3954:
mov.l @(loc_8C0B396C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0B3962,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0B395E:
#data 0x00Cc
#data 0x02A4

loc_8C0B3962:
#data 0x012c

#align4
loc_8C0B3964:
#data 0x8c034dee

loc_8C0B3968:
#data 0x8c034e8c

loc_8C0B396C:
#data 0x8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D359
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x929F6403
#data 0xE120E026
#data 0x314CD354
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0B39BE:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0B3AF0,pc),r0 ; r0 set to 0x8C1594Ec
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B39D4:
mov r4,r3
mov.l @(loc_8C0B3AF4,pc),r1 ; r1 set to 0x8C1594F0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B39E6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0B3AD8,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0B3AD6,pc),r4 ; r4 set to 0xCc
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B3AD8,pc),r2 ; r2 set to 0xDc
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0B3AF8,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0B3ADA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B3ADC,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B3ADE,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B3AFC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B3ADC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x00,r5 ; r5 set to 0x00
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w r5,@r4
mov r5,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x37,r3 ; r3 set to 0x37
mov.w @(loc_8C0B3AE0,pc),r0 ; r0 set to 0x1A1
mov 0x42,r4 ; r4 set to 0x42
fldi0 fr4
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r5,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r5,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0B3B00,pc),r3 ; r3 set to 0x8C2896B0
mov.l r5,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0B3AE2,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r13) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r13) 	
mov 0x68,r0 ; r0 set to 0x68
mov.l @(loc_8C0B3B08,pc),r2 ; r2 set to 0x8C034E8c
fmov.s fr4,@(r0,r13) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r13) 	
mova @(loc_8C0B3B04,pc),r0  ; r0 set to 0x8C0B3B04
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5c
mov 0x16,r5 ; r5 set to 0x16
fmov.s fr3,@(r0,r14) 	
mov 0x0A,r6 ; r6 set to 0x0a
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B3B68
mov.l @r15+,r14

#align4
loc_8C0B3AC0:
#data 0x95089010
#data 0xD611034d
#data 0x8F212338
#data 0x900A354c
#data 0x0009A01f
#data 0x3702

loc_8C0B3AD6:
#data 0x00Cc

loc_8C0B3AD8:
#data 0x00Dc

loc_8C0B3ADA:
#data 0x00C0

loc_8C0B3ADC:
#data 0x012c

loc_8C0B3ADE:
#data 0x01A3

loc_8C0B3AE0:
#data 0x01A1

loc_8C0B3AE2:
#data 0x019c
#data 0x008C0130

#align4
loc_8C0B3AE8:
#data 0x8c044F12

loc_8C0B3AEC:
#data 0x8c0B39Be

loc_8C0B3AF0:
#data 0x8c1594Ec

loc_8C0B3AF4:
#data 0x8c1594F0

loc_8C0B3AF8:
#data 0x8c129560

loc_8C0B3AFC:
#data 0x8c1294C8

loc_8C0B3B00:
#data 0x8C2896B0

#align4
loc_8C0B3B04:
#data 0x41A00000

#align4
loc_8C0B3B08:
#data 0x8c034e8c
#data 0x8C26A518

loc_8C0B3B10:
#data 0x9046

loc_8C0B3B12:
#data 0xF366
#data 0x005AF33d
#data 0xC7248151
#data 0xF2086351
#data 0xF32D435a
#data 0x8B01F325
#data 0x2521923b

#align4
loc_8C0B3B2C:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B3B30:
#data 0xE05C9538
#data 0x354CF346
#data 0x435A6351
#data 0xF230F22d
#data 0x035AF23d
#data 0x2531000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B3B48:
#data 0x962B902d
#data 0x364C034d
#data 0x8F012338
#data 0x655B6561

#align4
loc_8C0B3B58:
#data 0x655F8561
#data 0x455A350c
#data 0xF32DE034
#data 0xF437000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B3B68:
#data 0x84552FE6
#data 0x8F052008
#data 0x90196E43
#data 0x600C005c
#data 0x89048816

#align4
loc_8C0B3B7C:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3B86:
#data 0xE024
#data 0xE30CD109
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x02580088
#data 0x013000Cc
#data 0x00000159
#data 0x44160000

#align4
loc_8C0B3BB0:
#data 0x8c159500

loc_8C0B3BB4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x2FB62FC6
#data 0x9B834F22
#data 0x3BECBF7c
#data 0x02EC9081
#data 0x89022228
#data 0x73FF03Ec
#data 0x0E34

loc_8C0B3BD6:
#data 0x85Ee
#data 0x8D032008
#data 0x85EEEC00
#data 0x81EE70Ff

#align4
loc_8C0B3BE4:
#data 0x03EC9073
#data 0x8B232338
#data 0xBF9F65D3
#data 0x65D364E3
#data 0x64E3BFA8
#data 0x200885Ee
#data 0xD3378B1a
#data 0x64E3430b
#data 0x02EC9064
#data 0x89132228
#data 0x81EEE008
#data 0x905EE337
#data 0x700B0E34
#data 0x70F20EC5
#data 0x70260EC4
#data 0x0EC6D32f
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B3C34:
#data 0xC72B63B1
#data 0x435AF208
#data 0xF235F32d
#data 0x9247893e
#data 0x2B2165D3
#data 0x64E3BF7e
#data 0x04DC9043
#data 0x8804604c
#data 0x64038D04
#data 0x00096043
#data 0x8B038805

#align4
loc_8C0B3C60:
#data 0xE34B9037
#data 0x0E34A003

#align4
loc_8C0B3C68:
#data 0xE2389033
#data 0x0E24

loc_8C0B3C6E:
#data 0x9033
#data 0xD31BE50d
#data 0x0EC5E600
#data 0x0EC470F2
#data 0x0EC67026
#data 0x623284E2
#data 0xD318600c
#data 0x727C4000
#data 0x7101012d
#data 0x430B0215
#data 0xD41564D3
#data 0xD315E003
#data 0x8045E51e
#data 0x8046E001
#data 0x81EEE030
#data 0x81EFE018
#data 0x84E564E3
#data 0x80E57001
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0B3CC0:
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01A000Cc
#data 0x01A1019e
#data 0x02550258
#data 0x000001Ac

#align4
loc_8C0B3CDC:
#data 0x8c045748
#data 0x8C2896B0
#data 0x44160000

#align4
loc_8C0B3CE8:
#data 0x8c02FEC4
#data 0x8C26A518

#align4
loc_8C0B3CF0:
#data 0x8c042008

loc_8C0B3CF4:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xBEDF6E43
#data 0x65F264E3
#data 0x64E3BF20
#data 0x200885Ef
#data 0x85EF8905
#data 0x70FFD342
#data 0x430B81Ef
#data 0x64E3

loc_8C0B3D1A:
#data 0xD141
#data 0x041C85Ef
#data 0x03ED9077
#data 0x8D012338
#data 0x644BE034

#align4
loc_8C0B3D2C:
#data 0xF2E6644e
#data 0xF32D445a
#data 0xFE27F230
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x84E48B04
#data 0x80E47001
#data 0x80E5E000

#align4
loc_8C0B3D50:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B3D58:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r3 ; r3 set to 0x0c
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x06,r14),r0 	
mov.l @(loc_8C0B3E24,pc),r1 ; r1 set to 0x8C159508
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0B3D72:
mov.b @(0x06,r4),r0 	
add 0x01,r0
mov.b r0,@(0x06,r4) 	
mova @(loc_8C0B3E28,pc),r0  ; r0 set to 0x8C0B3E28
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov 0x08,r0 ; r0 set to 0x08
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B3D86:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93417FFc
#data 0x65D36D53
#data 0x33DC6E43
#data 0xBE912F32
#data 0x65D364E3
#data 0x64E3BED2
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x62F28B06
#data 0xE301E012
#data 0x84E60234
#data 0x80E67001

#align4
loc_8C0B3DC0:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3DCA:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93207FFc
#data 0x6D536E43
#data 0x33EC65D3
#data 0xBE6F2F32
#data 0x65D364E3
#data 0x64E3BEA4
#data 0xBEAD65D3
#data 0x63F264E3
#data 0x42116231
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0B3DFC:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B3E06:
mov.w @(loc_8C0B3E18,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B3E2C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0130
#data 0x00CC02A4

loc_8C0B3E18:
#data 0x012c
#data 0x0000

#align4
loc_8C0B3E1C:
#data 0x8c045748

loc_8C0B3E20:
#data 0x8c1594Bc

loc_8C0B3E24:
#data 0x8c159508

loc_8C0B3E28:
#data 0xC1D55555

#align4
loc_8C0B3E2C:
#data 0x8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D35a
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92A56403
#data 0xE120E026
#data 0x314CD355
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0B3E7E:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0B3FB4,pc),r0 ; r0 set to 0x8C1595A4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B3E94:
mov r4,r3
mov.l @(loc_8C0B3FB8,pc),r1 ; r1 set to 0x8C1595Ac
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B3EA6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B3FA2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B3FA2,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0B3FBC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B3FA4,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B3FA6,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B3FA8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B3FC0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0B3FC8,pc),r3 ; r3 set to 0x8C034F54
mov.b @(r0,r13),r2
mov 0x17,r5 ; r5 set to 0x17
mov 0x05,r6 ; r6 set to 0x05
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B3FA6,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r7
mov.l @(loc_8C0B3FC4,pc),r0 ; r0 set to 0x8C159514
extu.b r7,r7
mov.b @(r0,r7),r7
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov r14,r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r13),fr3
mov.l @(loc_8C0B3FD4,pc),r1 ; r1 set to 0x8C159520
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
add r0,r3
mov.l @(loc_8C0B3FCC,pc),r0 ; r0 set to 0x8C159518
mov.l r3,@-r15
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
extu.b r3,r3
shll r3
mov.w @(r0,r3),r2
mova @(loc_8C0B3FD0,pc),r0  ; r0 set to 0x8C0B3FD0
fmov.s @r0,fr0 ; r0 ??	
mov 0x21,r0 ; r0 set to 0x21
lds r2,fpul 	
mov.l @r15+,r2
float fpul,fr3
fmov.s @r2,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
mov r13,r5 ; r5 ??? bc r13 is ???	
mov.b @(r0,r1),r0
mov r14,r4
mov.w r0,@(0x1C,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0B3F6E:
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0B3FAA,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0B3F8c
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B3F8C:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B3FD8,pc),r1 ; r1 set to 0x8C1595Bc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x3703

loc_8C0B3FA2:
#data 0x00Dc

loc_8C0B3FA4:
#data 0x00C0

loc_8C0B3FA6:
#data 0x012c

loc_8C0B3FA8:
#data 0x01A3

loc_8C0B3FAA:
#data 0x0159

#align4
loc_8C0B3FAC:
#data 0x8c044F12

loc_8C0B3FB0:
#data 0x8c0B3E7e

loc_8C0B3FB4:
#data 0x8c1595A4

loc_8C0B3FB8:
#data 0x8c1595Ac

loc_8C0B3FBC:
#data 0x8c129560

loc_8C0B3FC0:
#data 0x8c1294C8

loc_8C0B3FC4:
#data 0x8c159514

loc_8C0B3FC8:
#data 0x8c034F54

loc_8C0B3FCC:
#data 0x8c159518

loc_8C0B3FD0:
#data 0x40092492

#align4
loc_8C0B3FD4:
#data 0x8c159520

loc_8C0B3FD8:
#data 0x8c1595Bc

loc_8C0B3FDC:
#data 0x4F222FE6
#data 0x92AA7FF8
#data 0x2F526353
#data 0x323C6E43
#data 0x1F21D356
#data 0x64E3430b
#data 0x62E385Ee
#data 0x70FFD154
#data 0x85EE81Ee
#data 0x81EEC97f
#data 0x63F2E034
#data 0xF336320c
#data 0x2F26FE37
#data 0x031C85Ee
#data 0xF008C74e
#data 0x435AE013
#data 0xF32D63F6
#data 0xF23EF238
#data 0x52F1F32a
#data 0x2338032c
#data 0xD3498907
#data 0xE606E517
#data 0x64E3430b
#data 0x700184E5
#data 0x80E5

loc_8C0B403E:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B4046:
#data 0x2FE6
#data 0xD33F4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x90718905
#data 0x0E34E300
#data 0x700184E4
#data 0x80E4

loc_8C0B4062:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B4068:
mov r4,r3
mov.l @(loc_8C0B4158,pc),r1 ; r1 set to 0x8C1595C4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B407A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B413E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B413E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0B415C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B4140,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B413C,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B4142,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B4160,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov 0x07,r6 ; r6 set to 0x07
mov.w @(loc_8C0B413C,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B4154,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov r13,r5 ; r5 ??? bc r13 is ???	
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov r14,r4
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0B4108:
mov.w @(loc_8C0B4144,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt/s loc_8C0B4120
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B4120:
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0B4164,pc),r1 ; r1 set to 0x8C1595D4
mov.b @(r0,r5),r3
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x02A46EF6

loc_8C0B413C:
#data 0x012c

loc_8C0B413E:
#data 0x00Dc

loc_8C0B4140:
#data 0x00C0

loc_8C0B4142:
#data 0x01A3

loc_8C0B4144:
#data 0x0159
#data 0x0000

#align4
loc_8C0B4148:
#data 0x8c034dee

loc_8C0B414C:
#data 0x8c159524
#data 0x3FD55555

#align4
loc_8C0B4154:
#data 0x8c034e8c

loc_8C0B4158:
#data 0x8c1595C4

loc_8C0B415C:
#data 0x8c129560

loc_8C0B4160:
#data 0x8c1294C8

loc_8C0B4164:
#data 0x8c1595D4

loc_8C0B4168:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6D539337
#data 0x6E43D21c
#data 0x2F3233Dc
#data 0x64E3420b
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x600C84D6
#data 0x8B0A8801
#data 0xD1159026
#data 0xE03804De
#data 0xF346415a
#data 0xF2E6FE37
#data 0xF231F30d
#data 0xFE27

loc_8C0B41AA:
#data 0x63F2
#data 0x023CE013
#data 0x89052228
#data 0xE2009017
#data 0x84E40E24
#data 0x80E47001

#align4
loc_8C0B41C0:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B41CA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B41E6,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B41D8:
mov.l @(loc_8C0B41F0,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0B41E6,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x02A4
#data 0x020c

loc_8C0B41E6:
#data 0x012c

#align4
loc_8C0B41E8:
#data 0x8c034dee
#data 0x41892492

#align4
loc_8C0B41F0:
#data 0x8c0450C0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE501D33b
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D17
#data 0xE120D337
#data 0x9265314c
#data 0x84F41434
#data 0xE0212100
#data 0x043463F0
#data 0x84E114E6
#data 0xE0208041
#data 0xE026034c
#data 0x232B633c
#data 0x90560435
#data 0x905501Ed
#data 0x60430415
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B424E:
#data 0x2FE6
#data 0x7FF84F22
#data 0x60536E43
#data 0xD3250009
#data 0x80F4E501
#data 0xE6022F60
#data 0x64E3430b
#data 0x8D182008
#data 0xD3216403
#data 0x314CE120
#data 0x84F41434
#data 0xE0212100
#data 0x043463F0
#data 0x52E6E020
#data 0x922F1426
#data 0x03EC14E5
#data 0x633CE026
#data 0x0435232b
#data 0x804184E1
#data 0x03ED9028
#data 0x0435

loc_8C0B429E:
#data 0x60E3
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B42AA:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0B42F8,pc),r0 ; r0 set to 0x8C159620
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B42C0:
mov.w @(loc_8C0B42EC,pc),r0 ; r0 set to 0xD4
mov.l r14,@-r15
mov r4,r14
mov.w @(r0,r14),r3
mov.w @(loc_8C0B42EA,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0B42D8
mov.l @(loc_8C0B42FC,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B42D8:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B4300,pc),r1 ; r1 set to 0x8C15967c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3800

loc_8C0B42EA:
#data 0x0158

loc_8C0B42EC:
#data 0x00D4
#data 0x0000

#align4
loc_8C0B42F0:
#data 0x8c044F12

loc_8C0B42F4:
#data 0x8c0B42Aa

loc_8C0B42F8:
#data 0x8c159620

loc_8C0B42FC:
#data 0x8c0450C0

loc_8C0B4300:
#data 0x8c15967c

loc_8C0B4304:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22919f
#data 0x31EC84E4
#data 0x7001929b
#data 0x80E4D351
#data 0x430B9098
#data 0x909632Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9088
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3430E34
#data 0xE00C430b
#data 0xD343E024
#data 0xE40202Dc
#data 0x90760E24
#data 0x0E440E44
#data 0x04ECE020
#data 0x644C9070
#data 0x440102Ec
#data 0x622CD03b
#data 0x044C342c
#data 0x0E44906a
#data 0xE400700b
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE0200215
#data 0x222802Ec
#data 0xC731890f
#data 0xE05CF308
#data 0x9052FE37
#data 0x222802Ed
#data 0xE05C8903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0B43C2:
#data 0xC72c
#data 0xA004F308
#data 0xE060

loc_8C0B43CA:
#data 0xE060
#data 0xFE37F38d
#data 0xE05c

loc_8C0B43D2:
#data 0xFE37
#data 0x903DE515
#data 0x06ECD327
#data 0x4600666c
#data 0x430B7603
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6


loc_8C0B43F0:
mov.l r14,@-r15
mov 0x5C,r0 ; r0 set to 0x5c
mov r4,r14
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0B447C,pc),r3 ; r3 set to 0x8C034DEe
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B4436
lds.l @r15+,pr 	
mov.l @(loc_8C0B4480,pc),r3 ; r3 set to 0x8C0450C0
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0B4436:
mov.w @(loc_8C0B445C,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B4448
lds.l @r15+,pr 	
mov.l @(loc_8C0B4484,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0B4448:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00Dc
#data 0x012C00C0
#data 0x019C01A3
#data 0x013001A1

loc_8C0B445C:
#data 0x019f
#data 0x0000

#align4
loc_8C0B4460:
#data 0x8c129560

loc_8C0B4464:
#data 0x8c1294C8

loc_8C0B4468:
#data 0x8c15968c
#data 0x8C2896B0
#data 0xC1D55555
#data 0x42892492

#align4
loc_8C0B4478:
#data 0x8c034e8c

loc_8C0B447C:
#data 0x8c034dee

loc_8C0B4480:
#data 0x8c0450C0

loc_8C0B4484:
#data 0x8c045748


loc_8C0B4488:
mov.w @(loc_8C0B45A6,pc),r0 ; r0 set to 0xD4
mov.l r14,@-r15
mov r4,r14
mov.w @(r0,r14),r3
mov.w @(loc_8C0B45A8,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0B44A0
mov.l @(loc_8C0B45B8,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B44A0:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B45BC,pc),r1 ; r1 set to 0x8C159690
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0B44B0:
#data 0x6E432FE6
#data 0xE0212FD6
#data 0x4F222FC6
#data 0x233803Ec
#data 0x6D538F10
#data 0xE604E501
#data 0x64E3BEC1
#data 0xE603E501
#data 0x64E3BEBd
#data 0xE602E501
#data 0x64E3BEB9
#data 0x6563E601
#data 0x64E3BEB5

#align4
loc_8C0B44E4:
#data 0x916084E4
#data 0xD3357001
#data 0x31EC80E4
#data 0x925A905c
#data 0x32DC430b
#data 0xE2019059
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x904BFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD325
#data 0xE024E00c
#data 0x0E2402Dc
#data 0x00DC903b
#data 0x8806600c
#data 0xA0038B01
#data 0xE402

loc_8C0B4546:
#data 0x9033
#data 0x644C04Ec

#align4
loc_8C0B454C:
#data 0x4408D01e
#data 0x902FF346
#data 0x03DDF33d
#data 0x8D012338
#data 0x644B045a

#align4
loc_8C0B4560:
#data 0x445A644f
#data 0xF2D6E034
#data 0xE303E640
#data 0xE500F32d
#data 0xFE27F230
#data 0x0E64901f
#data 0x0E6470Ff
#data 0x0E6470Ff
#data 0x0E6470Ff
#data 0x0E347060
#data 0x0E547001
#data 0x00DC704c
#data 0x8806600c
#data 0xA01A8B01
#data 0x6463

loc_8C0B459A:
#data 0x9009
#data 0x233803Ec
#data 0xA0148B14
#data 0xE431

loc_8C0B45A6:
#data 0x00D4

loc_8C0B45A8:
#data 0x0158
#data 0x00Dc
#data 0x012C00C0
#data 0x01E901A3
#data 0x013F0130

#align4
loc_8C0B45B8:
#data 0x8c0450C0

loc_8C0B45BC:
#data 0x8c159690

loc_8C0B45C0:
#data 0x8c129560

loc_8C0B45C4:
#data 0x8c1294C8

loc_8C0B45C8:
#data 0x8c1595D8

loc_8C0B45CC:
#data 0xE44e

loc_8C0B45CE:
#data 0x908e
#data 0x0E44D34a
#data 0x0E55700b
#data 0x0E5470F2
#data 0x0E567026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x00ECE021
#data 0x8804600c
#data 0x90798B06
#data 0x6CCC0CEc
#data 0x4C004C08
#data 0x7C0BA00a

#align4
loc_8C0B4608:
#data 0x0CEC9072
#data 0x02ECE021
#data 0x4C086CCc
#data 0x4C00622c
#data 0x7C093C2c

#align4
loc_8C0B461C:
#data 0xE516D338
#data 0x430B66C3
#data 0xE02164E3
#data 0x222802Ec
#data 0xA0018B01
#data 0x64D3

loc_8C0B4632:
#data 0x54E2

#align4
loc_8C0B4634:
#data 0x65D302Ec
#data 0x622CD032
#data 0xF3264208
#data 0xF246E038
#data 0xF23064E3
#data 0x4F26FE27
#data 0x6DF66CF6
#data 0x6EF6


loc_8C0B4652:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r5,r3
mov 0x24,r0 ; r0 set to 0x24
mov r4,r14
mov.l r5,@r15
mov.b @(r0,r3),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B4708,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B4682
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B470C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
mov.l @r15+,r14

loc_8C0B4682:
#data 0xE021
#data 0x233803Ec
#data 0x90328B0d
#data 0x233803Ec
#data 0xE3008909
#data 0x6633E502
#data 0xBDD80E34
#data 0xE50264E3
#data 0xBDD4E601
#data 0x64E3

loc_8C0B46A6:
#data 0x9025
#data 0x023C63F2
#data 0x8B022228
#data 0x430BD317
#data 0x64E3

loc_8C0B46B6:
#data 0xD217
#data 0x64E3420b
#data 0x8B032008
#data 0xE2009019
#data 0x0E24A003

#align4
loc_8C0B46C8:
#data 0xE1019015
#data 0x0E14

loc_8C0B46CE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B46D6:
mov.w @(loc_8C0B46F8,pc),r0 ; r0 set to 0xD4
mov.l r14,@-r15
mov r4,r14
mov.w @(r0,r14),r3
mov.w @(loc_8C0B46FA,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0B4718
mov.l @(loc_8C0B470C,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4
jmp @r2
mov.l @r15+,r14
#data 0x01A1
#data 0x014101A3
#data 0x012C019e

loc_8C0B46F8:
#data 0x00D4

loc_8C0B46FA:
#data 0x0158
#data 0x8C2896B0

#align4
loc_8C0B4700:
#data 0x8c034e8c

loc_8C0B4704:
#data 0x8c1596A0

loc_8C0B4708:
#data 0x8c034dee

loc_8C0B470C:
#data 0x8c0450C0

loc_8C0B4710:
#data 0x8c045748

loc_8C0B4714:
#data 0x8c0332E0


loc_8C0B4718:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B4870,pc),r1 ; r1 set to 0x8C1596B4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B4728:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B4860,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0B4860,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0B4874,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B4862,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0B4864,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B4866,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B4878,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x42,r4 ; r4 set to 0x42
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B4868,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
add 0x06,r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0B479c
bra loc_8C0B479e
mov 0x48,r4

loc_8C0B479C:
#data 0xE450

loc_8C0B479E:
#data 0x9064
#data 0x0E44D336
#data 0xE400700b
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE0210215
#data 0x222802Ec
#data 0x904F8904
#data 0x01EDE201
#data 0x0E15212a

#align4
loc_8C0B47D4:
#data 0x00DC904b
#data 0x8806600c
#data 0xA0038B01
#data 0xE502

loc_8C0B47E2:
#data 0x9040
#data 0x655C05Ec

#align4
loc_8C0B47E8:
#data 0x64539040
#data 0x4408D324
#data 0x222802Dd
#data 0x343C8F05
#data 0xF348E034
#data 0xA004F2D6
#data 0xF230

loc_8C0B4802:
#data 0xE034
#data 0xF2D6F348
#data 0xF231

loc_8C0B480A:
#data 0xFE27
#data 0xF3D6E038
#data 0xD31CE516
#data 0x9026FE37
#data 0x666C06Ec
#data 0x76154600
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0B482E:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov r4,r14
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
sts.l pr,@-r15
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0B4888,pc),r3 ; r3 set to 0x8C034DEe
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B4856
lds.l @r15+,pr 	
mov.l @(loc_8C0B488C,pc),r3 ; r3 set to 0x8C0450C0
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0B4856:
lds.l @r15+,pr 	
mov.l @(loc_8C0B4890,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0B4860:
#data 0x00Dc

loc_8C0B4862:
#data 0x00C0

loc_8C0B4864:
#data 0x012c

loc_8C0B4866:
#data 0x01A3

loc_8C0B4868:
#data 0x019c
#data 0x01A1
#data 0x01E90130

#align4
loc_8C0B4870:
#data 0x8c1596B4

loc_8C0B4874:
#data 0x8c129560

loc_8C0B4878:
#data 0x8c1294C8
#data 0x8C2896B0

#align4
loc_8C0B4880:
#data 0x8c1595D8

loc_8C0B4884:
#data 0x8c034e8c

loc_8C0B4888:
#data 0x8c034dee

loc_8C0B488C:
#data 0x8c0450C0

loc_8C0B4890:
#data 0x8c045748


loc_8C0B4894:
mov.w @(loc_8C0B4946,pc),r0 ; r0 set to 0xD4
mov.l r14,@-r15
mov r4,r14
mov.w @(r0,r14),r3
mov.w @(loc_8C0B4948,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0B48Ac
mov.l @(loc_8C0B4958,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B48AC:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B495C,pc),r1 ; r1 set to 0x8C1596C4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B48BC:
mov.w @(loc_8C0B494A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0B4960,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B494A,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B494C,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B494E,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0B4950,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B4964,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0B494E,pc),r0 ; r0 set to 0x12c
mov.w @(loc_8C0B4952,pc),r2 ; r2 set to 0xFf
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r2,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0B4920:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0B4954,pc),r0 ; r0 set to 0x140, r0 set to 0x140
mov.l r12,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
cmp/pz r3
bt/s loc_8C0B4968
mov r4,r14
lds.l @r15+,pr 	
mov.l @(loc_8C0B4958,pc),r2 ; r2 set to 0x8C0450C0, r2 set to 0x8C0450C0
mov r14,r4
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B4946:
#data 0x00D4

loc_8C0B4948:
#data 0x0158

loc_8C0B494A:
#data 0x00Dc

loc_8C0B494C:
#data 0x00C0

loc_8C0B494E:
#data 0x012c

loc_8C0B4950:
#data 0x01A3

loc_8C0B4952:
#data 0x00Ff

loc_8C0B4954:
#data 0x0140
#data 0x0000

#align4
loc_8C0B4958:
#data 0x8c0450C0

loc_8C0B495C:
#data 0x8c1596C4

loc_8C0B4960:
#data 0x8c129560

loc_8C0B4964:
#data 0x8c1294C8

loc_8C0B4968:
#data 0x222802Dc
#data 0x03DC895c
#data 0x02ECE022
#data 0x3320622c
#data 0x906A8934
#data 0x02DCDC37
#data 0x0E24E022
#data 0xE00404Ec
#data 0x6343644c
#data 0x343C4400
#data 0x34CC4408
#data 0xE060F346
#data 0xFE37FF48
#data 0x03ECE022
#data 0x6233633c
#data 0x332C4300
#data 0x33CC4308
#data 0xE3018534
#data 0xE0316103
#data 0x904D0E14
#data 0xE0220E34
#data 0xE51906Ec
#data 0x6363666c
#data 0x363C4600
#data 0x4608D325
#data 0x856536Cc
#data 0x430B6603
#data 0x903E64E3
#data 0x222802Dd
#data 0xE05C8D01
#data 0xFF4d

loc_8C0B49E2:
#data 0xFEF7

#align4
loc_8C0B49E4:
#data 0xE15C9037
#data 0x64E331Ec
#data 0x0E3503Dd
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0xE0340E34
#data 0xF318F2E6
#data 0x31ECE160
#data 0xF230D315
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xFFF94F26
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0B4A28:
#data 0xFFF94F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B4A34:
mov.w @(loc_8C0B4A58,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r4,@-r15
mov.b r3,@(r0,r5) 	
mov.w @(loc_8C0B4A5A,pc),r0 ; r0 set to 0x1F1
mov.l @(loc_8C0B4A68,pc),r1 ; r1 set to 0x8C1596D4
mov.b r3,@(r0,r5) 	
mov.l @r15,r2
mov.b @(0x04,r2),r0 	
mov r2,r4
extu.b r0,r0 ; r0 set to 0xF1
shll2 r0 ; r0 set to 0x3C4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
add 0x04,r15
#data 0x0140
#data 0x0130012c

loc_8C0B4A58:
#data 0x02Ab

loc_8C0B4A5A:
#data 0x01F1

#align4
loc_8C0B4A5C:
#data 0x8c1595E4

loc_8C0B4A60:
#data 0x8c034e8c

loc_8C0B4A64:
#data 0x8c034dee

loc_8C0B4A68:
#data 0x8c1596D4


loc_8C0B4A6C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B4BBA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B4BCC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B4BBA,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B4BBC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B4BBE,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B4BC0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B4BD0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x44,r4 ; r4 set to 0x44
mov 0x40,r3 ; r3 set to 0x40
mov.b r2,@(r0,r14) 	
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.w @(loc_8C0B4BC2,pc),r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0xA3,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13d
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x42,r3 ; r3 set to 0x42
mov.w @(loc_8C0B4BC4,pc),r0 ; r0 set to 0x1A1
mov 0x00,r4 ; r4 set to 0x00
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.l @(loc_8C0B4BD4,pc),r3 ; r3 set to 0x8C2896B0
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.l @r3,r2 ; r2 ??	
mov.b @(0x02,r14),r0 	
add 0x7C,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0B4BC6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
ftrc fr3,fpul 	
sts fpul,r0
mov.w r0,@(0x1E,r14) 	
mova @(loc_8C0B4BD8,pc),r0  ; r0 set to 0x8C0B4BD8
fmov.s @r0,fr3
mov.w @(loc_8C0B4BC6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B4BC8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
tst r2,r2
bt/s loc_8C0B4B42
mov.w r2,@(r0,r14) 	
mova @(loc_8C0B4BDC,pc),r0  ; r0 set to 0x8C0B4BDc
fmov.s @r0,fr2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr1
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mova @(loc_8C0B4BE0,pc),r0  ; r0 set to 0x8C0B4BE0
bra loc_8C0B4B52
fmov.s @r0,fr1

loc_8C0B4B42:
mova @(loc_8C0B4BE4,pc),r0  ; r0 init to 0x8C0B4BE4
fmov.s @r0,fr2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr1
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mova @(loc_8C0B4BE8,pc),r0  ; r0 set to 0x8C0B4BE8
fmov.s @r0,fr1

loc_8C0B4B52:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr3
fmov.s fr1,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B4BEC,pc),r0  ; r0 set to 0x8C0B4BEC, r0 set to 0x8C0B4BEc
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0B4BF0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
fmov.s fr3,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.w r0,@(0x1C,r14) 	
mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
jsr @r3
mov r14,r4
mov.l @(loc_8C0B4BF4,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@r14
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B4B82:
#data 0xE068
#data 0xF447F48d
#data 0xF447E06c
#data 0xF408C716
#data 0x034D901a
#data 0x89012338
#data 0xF408C711

#align4
loc_8C0B4B9C:
#data 0xF447E05c
#data 0xF308C715
#data 0xF437E060
#data 0x034C900f
#data 0x8B022338
#data 0x432BD312
#data 0x0009

loc_8C0B4BB6:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B4BBA:
#data 0x00Dc

loc_8C0B4BBC:
#data 0x00C0

loc_8C0B4BBE:
#data 0x012c

loc_8C0B4BC0:
#data 0x01A3

loc_8C0B4BC2:
#data 0x019d

loc_8C0B4BC4:
#data 0x01A1

loc_8C0B4BC6:
#data 0x041c

loc_8C0B4BC8:
#data 0x0130
#data 0x019f

#align4
loc_8C0B4BCC:
#data 0x8c129560

loc_8C0B4BD0:
#data 0x8c1294C8

loc_8C0B4BD4:
#data 0x8C2896B0

#align4
loc_8C0B4BD8:
#data 0x434DB6Db

#align4
loc_8C0B4BDC:
#data 0x41D55555

#align4
loc_8C0B4BE0:
#data 0x40D55555

#align4
loc_8C0B4BE4:
#data 0xC1D55555

#align4
loc_8C0B4BE8:
#data 0xC0D55555

#align4
loc_8C0B4BEC:
#data 0xBF4DB6Db

#align4
loc_8C0B4BF0:
#data 0x8c034e8c

loc_8C0B4BF4:
#data 0x8c104434
#data 0x41CDB6Db

#align4
loc_8C0B4BFC:
#data 0x8c045748


loc_8C0B4C00:
mov.l r14,@-r15
mov 0x03,r0 ; r0 set to 0x03
sts.l pr,@-r15
mov.l @(loc_8C0B4D00,pc),r3 ; r3 set to 0x8C042008
mov r4,r14
mov 0x01,r5 ; r5 set to 0x01
mov.b r0,@(0x05,r14) 	
jsr @r3
mov.l @(0x18,r14),r4
mov.l @(loc_8C0B4D04,pc),r2 ; r2 set to 0x8C034E8c
mov 0x14,r5 ; r5 set to 0x14
mov 0x03,r6 ; r6 set to 0x03
jsr @r2
mov r14,r4
mov.l @(loc_8C0B4D08,pc),r3 ; r3 set to 0x8C057B6e
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0B4B82
mov.l @r15+,r14

loc_8C0B4C2A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0B4D0C,pc),r11 ; r11 set to 0x8C034DEe
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0B4C5c
mov 0x00,r12 ; r12 set to 0x00
cmp/eq 0x01,r0 	
bt loc_8C0B4CCe
cmp/eq 0x02,r0 	
bf loc_8C0B4C50
bra loc_8C0B4DD8
nop 	

loc_8C0B4C50:
cmp/eq 0x03,r0 	
bf loc_8C0B4C58
bra loc_8C0B4E28
nop 	

loc_8C0B4C58:
bra loc_8C0B4E38
nop 	

loc_8C0B4C5C:
jsr @r11
mov r14,r4
mov.w @(loc_8C0B4CF8,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B4C6c
bra loc_8C0B4E38
nop 	

loc_8C0B4C6C:
mov r12,r0
nop 	
mov.b r0,@(0x06,r14) 	
mov 0x5C,r1 ; r1 set to 0x5c
mov.w @(loc_8C0B4CF8,pc),r0 ; r0 set to 0x141
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r12,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
mov 0x08,r5 ; r5 set to 0x08
mov 0x00,r6 ; r6 set to 0x00
fmov.s fr2,@(r0,r14) 	
bsr loc_8C0B424e
mov r14,r4
lds.l @r15+,pr 	
mov r13,r4
mov.l @(loc_8C0B4D00,pc),r2 ; r2 set to 0x8C042008
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B4CCE:
mov.w @(loc_8C0B4CFA,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B4CDa
bra loc_8C0B4DE0
nop 	

loc_8C0B4CDA:
mov.w @(loc_8C0B4CFC,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B4D14
mov.b @(r0,r14),r3
mov r14,r4
mov.l @(loc_8C0B4D10,pc),r2 ; r2 set to 0x8C0510D8
add 0xFF,r3
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B4CF8:
#data 0x0141

loc_8C0B4CFA:
#data 0x019f

loc_8C0B4CFC:
#data 0x01A0
#data 0x0000

#align4
loc_8C0B4D00:
#data 0x8c042008

loc_8C0B4D04:
#data 0x8c034e8c

loc_8C0B4D08:
#data 0x8c057B6e

loc_8C0B4D0C:
#data 0x8c034dee

loc_8C0B4D10:
#data 0x8c0510D8

loc_8C0B4D14:
#data 0x02EC9096
#data 0x89172228
#data 0x200885Ee
#data 0x85EE8914
#data 0x70FFE342
#data 0x908C81Ee
#data 0x700B0E34
#data 0x70F20EC5
#data 0x70260EC4
#data 0x0EC6D345
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B4D4C:
#data 0x64E34B0b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x200884E6
#data 0xC7318B14
#data 0x9059F308
#data 0xE038F2D6
#data 0xF230F1E6
#data 0x8B0BF215
#data 0xE51584E6
#data 0xE614D32c
#data 0x80E67001
#data 0x64E3430b
#data 0xE51AD22a
#data 0x64D3420b

#align4
loc_8C0B4DB8:
#data 0xF3E6E038
#data 0xF2D69044
#data 0x8B29F235
#data 0xE61584E5
#data 0x6563D323
#data 0x80E57001
#data 0x64E3430b
#data 0x0009A020

#align4
loc_8C0B4DD8:
#data 0x02EC9037
#data 0x89062228


loc_8C0B4DE0:
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B4C00
mov.l @r15+,r14

loc_8C0B4DEE:
#data 0x4B0b
#data 0x902B64E3
#data 0x233803Ec
#data 0x0EC4890a
#data 0x84E564E3
#data 0x80E57001
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6AEB9

#align4
loc_8C0B4E10:
#data 0x03EC901b
#data 0x8B0F2338

#align4
loc_8C0B4E18:
#data 0xD3114F26
#data 0x6BF664E3
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0B4E28:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B4E64
mov.l @r15+,r14

loc_8C0B4E38:
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x01A1019e
#data 0x019F041c
#data 0x00000141
#data 0x8C2896B0
#data 0x431A4924

#align4
loc_8C0B4E58:
#data 0x8c034e8c

loc_8C0B4E5C:
#data 0x8c04223a

loc_8C0B4E60:
#data 0x8c045748


loc_8C0B4E64:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0B4EFA,pc),r0 ; r0 set to 0x1A0
mov r4,r14
mov.l r5,@r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B4E7c
mov.b @(r0,r14),r3
bra loc_8C0B4EC2
add 0xFF,r3

loc_8C0B4E7C:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B4F04,pc),r3 ; r3 set to 0x8C0332E0
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
tst r0,r0
bt loc_8C0B4EC6
mov.w @(loc_8C0B4EFC,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01

loc_8C0B4EC2:
bra loc_8C0B4ED4
mov.b r3,@(r0,r14) 	

loc_8C0B4EC6:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B4F08,pc),r3 ; r3 set to 0x8C0B68C2
jmp @r3
mov.l @r15+,r14

loc_8C0B4ED4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B4EDC:
mov.w @(loc_8C0B4EFE,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r4,@-r15
mov.b r3,@(r0,r5) 	
mov.w @(loc_8C0B4F00,pc),r0 ; r0 set to 0x1F1
mov.l @(loc_8C0B4F0C,pc),r1 ; r1 set to 0x8C1596E4
mov.b r3,@(r0,r5) 	
mov.l @r15,r2
mov.b @(0x04,r2),r0 	
mov r2,r4
extu.b r0,r0 ; r0 set to 0xF1
shll2 r0 ; r0 set to 0x3C4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
add 0x04,r15

loc_8C0B4EFA:
#data 0x01A0

loc_8C0B4EFC:
#data 0x012c

loc_8C0B4EFE:
#data 0x02Ab

loc_8C0B4F00:
#data 0x01F1
#data 0x0000

#align4
loc_8C0B4F04:
#data 0x8c0332E0

loc_8C0B4F08:
#data 0x8c0B68C2

loc_8C0B4F0C:
#data 0x8c1596E4


loc_8C0B4F10:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B5052,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B5068,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B5052,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B5054,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B5056,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B5058,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B506C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.w @(loc_8C0B505C,pc),r3 ; r3 set to 0x80
mov.b @(r0,r5),r2
mov 0x44,r4 ; r4 set to 0x44
mov.b r2,@(r0,r14) 	
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.w @(loc_8C0B505A,pc),r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14) 	
add 0x02,r0 ; r0 set to 0x13f
mov 0x40,r3 ; r3 set to 0x40
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x43,r3 ; r3 set to 0x43
mov.w @(loc_8C0B505E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0B5070,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
fldi0 fr4
shll r0 ; r0 set to 0x188
mov.l @(loc_8C0B5078,pc),r4 ; r4 set to 0x8C26A518
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0B5074,pc),r0  ; r0 set to 0x8C0B5074
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0B5060,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B5062,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
tst r2,r2
bt loc_8C0B4FF2
mova @(loc_8C0B507C,pc),r0  ; r0 set to 0x8C0B507c
fmov.s @r0,fr2
mov.w @(loc_8C0B5064,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr1
mov 0x34,r0 ; r0 set to 0x34
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mova @(loc_8C0B5080,pc),r0  ; r0 set to 0x8C0B5080
bra loc_8C0B5004
fmov.s @r0,fr1

loc_8C0B4FF2:
mova @(loc_8C0B5084,pc),r0  ; r0 init to 0x8C0B5084
fmov.s @r0,fr2
mov.w @(loc_8C0B5066,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr1
mov 0x34,r0 ; r0 set to 0x34
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mova @(loc_8C0B5088,pc),r0  ; r0 set to 0x8C0B5088
fmov.s @r0,fr1

loc_8C0B5004:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0B5094,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr1,@(r0,r14) 	
mova @(loc_8C0B508C,pc),r0  ; r0 set to 0x8C0B508C, r0 set to 0x8C0B508c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B5090,pc),r0  ; r0 set to 0x8C0B5090, r0 set to 0x8C0B5090
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x16,r6 ; r6 set to 0x16, r6 set to 0x16
fmov.s fr3,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0B5098,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@r14
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B5036:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bt/s loc_8C0B509c
mov r5,r13
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B4E64
mov.l @r15+,r14

loc_8C0B5052:
#data 0x00Dc

loc_8C0B5054:
#data 0x00C0

loc_8C0B5056:
#data 0x012c

loc_8C0B5058:
#data 0x01A3

loc_8C0B505A:
#data 0x019d

loc_8C0B505C:
#data 0x0080

loc_8C0B505E:
#data 0x01A1

loc_8C0B5060:
#data 0x041c

loc_8C0B5062:
#data 0x0130

loc_8C0B5064:
#data 0x0088

loc_8C0B5066:
#data 0x008c

#align4
loc_8C0B5068:
#data 0x8c129560

loc_8C0B506C:
#data 0x8c1294C8

loc_8C0B5070:
#data 0x8C2896B0

#align4
loc_8C0B5074:
#data 0x43892492

#align4
loc_8C0B5078:
#data 0x8C26A518

#align4
loc_8C0B507C:
#data 0xC2D55555

#align4
loc_8C0B5080:
#data 0x41855555

#align4
loc_8C0B5084:
#data 0x42D55555

#align4
loc_8C0B5088:
#data 0xC1855555

#align4
loc_8C0B508C:
#data 0xC1700000

#align4
loc_8C0B5090:
#data 0x3F092492

#align4
loc_8C0B5094:
#data 0x8c034e8c

loc_8C0B5098:
#data 0x8c104434


loc_8C0B509C:
mov.w @(loc_8C0B51B4,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B50Cc
mov.b @(0x05,r14),r0 	
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8C0B51C4,pc),r3 ; r3 set to 0x8C042008
add 0x01,r0 ; r0 set to 0x1A0
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r13,r4
mov.l @(loc_8C0B51C8,pc),r2 ; r2 set to 0x8C034E8c
mov 0x14,r5 ; r5 set to 0x14
mov 0x09,r6 ; r6 set to 0x09
jsr @r2
mov r14,r4
mov.l @(loc_8C0B51CC,pc),r3 ; r3 set to 0x8C057B6e
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B4B82
mov.l @r15+,r14

loc_8C0B50CC:
mov.w @(loc_8C0B51B6,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B50Dc
mov.b @(r0,r14),r3
add 0xFF,r3
bra loc_8C0B51A8
mov.b r3,@(r0,r14) 	

#align4
loc_8C0B50DC:
#data 0x430BD33c
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x8D202008
#data 0x9049E400
#data 0x233803Ec
#data 0x9046891b
#data 0x233803Ec
#data 0x85EE8917
#data 0x81EE70Ff
#data 0x03EC903e
#data 0x0E347056
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3227026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x902D0215
#data 0x0E44

loc_8C0B5162:
#data 0x902c
#data 0x03EDD51c
#data 0x890A2338
#data 0xF308C71b
#data 0xF2569026
#data 0xF1E6E034
#data 0xF215F230
#data 0xA00A8B0a
#data 0x0009

loc_8C0B5182:
#data 0xC717
#data 0x901CF308
#data 0xE034F256
#data 0xF230F1E6
#data 0x8900F125

loc_8C0B5194:
#data 0xE401

loc_8C0B5196:
#data 0x2448
#data 0x4F268906
#data 0xD31165D3
#data 0x6DF664E3
#data 0x6EF6432b


loc_8C0B51A8:
lds.l @r15+,pr 	
mov.l @(loc_8C0B51E8,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B51B4:
#data 0x019f

loc_8C0B51B6:
#data 0x01A0
#data 0x019E014b
#data 0x01300140
#data 0x0088008c

#align4
loc_8C0B51C4:
#data 0x8c042008

loc_8C0B51C8:
#data 0x8c034e8c

loc_8C0B51CC:
#data 0x8c057B6e

loc_8C0B51D0:
#data 0x8c034dee
#data 0x8C2896B0
#data 0x8C26A518
#data 0x42D55555
#data 0xC2D55555

#align4
loc_8C0B51E4:
#data 0x8c0B68C2

loc_8C0B51E8:
#data 0x8c045748


loc_8C0B51EC:
mov.w @(loc_8C0B5344,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r4,@-r15
mov.b r3,@(r0,r5) 	
mov.w @(loc_8C0B5346,pc),r0 ; r0 set to 0x1F1
mov.l @(loc_8C0B5364,pc),r1 ; r1 set to 0x8C1596F4
mov.b r3,@(r0,r5) 	
mov.l @r15,r2
mov.b @(0x04,r2),r0 	
mov r2,r4
extu.b r0,r0 ; r0 set to 0xF1
shll2 r0 ; r0 set to 0x3C4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
add 0x04,r15

loc_8C0B520A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B5348,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B5368,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B5348,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0B534A,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B534C,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0B534E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0B536C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.w @(loc_8C0B5352,pc),r3 ; r3 set to 0x80
mov.b @(r0,r5),r2
mov 0x44,r6 ; r6 set to 0x44
mov 0x00,r4 ; r4 set to 0x00
mov.b r2,@(r0,r14) 	
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.w @(loc_8C0B5350,pc),r0 ; r0 set to 0x19d
mov.b r6,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x02,r0 ; r0 set to 0x13f
mov 0x40,r3 ; r3 set to 0x40
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B5354,pc),r0 ; r0 set to 0x1A1
mov.l @(loc_8C0B5370,pc),r3 ; r3 set to 0x8C2896B0
mov.b r6,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.l @r3,r2 ; r2 ??	
mov.b @(0x02,r14),r0 	
add 0x7C,r2
fldi0 fr4
extu.b r0,r0 ; r0 set to 0xC4
mov.l @(loc_8C0B5378,pc),r4 ; r4 set to 0x8C26A518
shll r0 ; r0 set to 0x188
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0B5374,pc),r0  ; r0 set to 0x8C0B5374
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0B5356,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B5358,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
tst r2,r2
bt/s loc_8C0B52Ea
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
mova @(loc_8C0B537C,pc),r0  ; r0 set to 0x8C0B537c
fmov.s @r0,fr2
mov.w @(loc_8C0B535A,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr1
mov 0x34,r0 ; r0 set to 0x34
mov.w @(loc_8C0B535C,pc),r4 ; r4 set to 0xA0
fadd fr2,fr1
bra loc_8C0B52Fa
fmov.s fr1,@(r0,r14) 	

loc_8C0B52EA:
mova @(loc_8C0B5380,pc),r0  ; r0 init to 0x8C0B5380
fmov.s @r0,fr2
mov.w @(loc_8C0B535E,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr1
mov 0x34,r0 ; r0 set to 0x34
mov.w @(loc_8C0B5360,pc),r4 ; r4 set to 0xFF60
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	

loc_8C0B52FA:
shad r3, r4 ; r4 ??? bc r3 is ???	
mov.l @(loc_8C0B5388,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
lds r4,fpul 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov 0x18,r6 ; r6 set to 0x18, r6 set to 0x18
float fpul,fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B5384,pc),r0  ; r0 set to 0x8C0B5384, r0 set to 0x8C0B5384
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0B538C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@r14
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B5332:
mov r4,r3
mov.l @(loc_8C0B5390,pc),r1 ; r1 set to 0x8C159704
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5344:
#data 0x02Ab

loc_8C0B5346:
#data 0x01F1

loc_8C0B5348:
#data 0x00Dc

loc_8C0B534A:
#data 0x00C0

loc_8C0B534C:
#data 0x012c

loc_8C0B534E:
#data 0x01A3

loc_8C0B5350:
#data 0x019d

loc_8C0B5352:
#data 0x0080

loc_8C0B5354:
#data 0x01A1

loc_8C0B5356:
#data 0x041c

loc_8C0B5358:
#data 0x0130

loc_8C0B535A:
#data 0x0088

loc_8C0B535C:
#data 0x00A0

loc_8C0B535E:
#data 0x008c

loc_8C0B5360:
#data 0xFF60
#data 0x0000

#align4
loc_8C0B5364:
#data 0x8c1596F4

loc_8C0B5368:
#data 0x8c129560

loc_8C0B536C:
#data 0x8c1294C8

loc_8C0B5370:
#data 0x8C2896B0

#align4
loc_8C0B5374:
#data 0x44092492

#align4
loc_8C0B5378:
#data 0x8C26A518

#align4
loc_8C0B537C:
#data 0xC2555555

#align4
loc_8C0B5380:
#data 0x42555555

#align4
loc_8C0B5384:
#data 0xC2092492

#align4
loc_8C0B5388:
#data 0x8c034e8c

loc_8C0B538C:
#data 0x8c104434

loc_8C0B5390:
#data 0x8c159704


loc_8C0B5394:
mov.w @(loc_8C0B54A4,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0B53B2
mov r5,r13
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B5562
mov.l @r15+,r14

loc_8C0B53B2:
#data 0xE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE038FE27
#data 0x905AF3E6
#data 0xF235F2D6
#data 0x84E58B0d
#data 0x7001D32d
#data 0x905280E5
#data 0xE038F3D6
#data 0x430BFE37
#data 0xD22A64E3
#data 0x420BE534
#data 0x64D3

loc_8C0B5412:
#data 0x4F26
#data 0x64E3D328
#data 0x432B6DF6
#data 0x6EF6


loc_8C0B541E:
mov.w @(loc_8C0B54A4,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B5434
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0B5562
mov.l @r15+,r14

#align4
loc_8C0B5434:
#data 0x430BD31e
#data 0x600E64E3
#data 0x890A4011
#data 0xE30084E5
#data 0x7001E515
#data 0xE61980E5
#data 0x0E34902c
#data 0x430BD31a
#data 0x64E3

loc_8C0B5456:
#data 0x4F26
#data 0x64E3D217
#data 0x6EF6422b

#align4
loc_8C0B5460:
#data 0x4F222FE6
#data 0xD3127FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x02EC901b
#data 0x89112228
#data 0xE54B84E5
#data 0x7001D30d
#data 0x901380E5
#data 0x430B81Ee
#data 0xD20D64F2
#data 0xE600E509
#data 0x64E3420b
#data 0x8B012008
#data 0x81EEE000

#align4
loc_8C0B549C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B54A4:
#data 0x019f
#data 0x041c
#data 0x0141019d
#data 0x000000B4

#align4
loc_8C0B54B0:
#data 0x8c034dee

loc_8C0B54B4:
#data 0x8c04223a

loc_8C0B54B8:
#data 0x8c045748

loc_8C0B54BC:
#data 0x8c034e8c

loc_8C0B54C0:
#data 0x8c0B424e


loc_8C0B54C4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B55EC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pz r0
bt loc_8C0B54F2
mov.b @(0x05,r14),r0 	
mov 0x15,r5 ; r5 set to 0x15
mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x1E,r6 ; r6 set to 0x1e
add 0x01,r0
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0B4B82
mov.l @r15+,r14

loc_8C0B54F2:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B54F8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B55F4,pc),r3 ; r3 set to 0x8C0332E0
mov 0x34,r0 ; r0 set to 0x34
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
tst r0,r0
bt loc_8C0B554c
mov.w @(loc_8C0B55E6,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0B555a
mov.b r3,@(r0,r14) 	

loc_8C0B554C:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B55F8,pc),r3 ; r3 set to 0x8C0B68C2
jmp @r3
mov.l @r15+,r14

loc_8C0B555A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B5562:
mov.l r14,@-r15
mov 0x04,r0 ; r0 set to 0x04
sts.l pr,@-r15
mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
mov r4,r14
mov 0x15,r5 ; r5 set to 0x15
mov.b r0,@(0x05,r14) 	
mov 0x1E,r6 ; r6 set to 0x1e
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0B4B82
mov.l @r15+,r14

loc_8C0B557E:
mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x08,r0 ; r0 set to 0x08
mov 0x1C,r6 ; r6 set to 0x1c
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x15,r5

loc_8C0B558A:
mov.l @(loc_8C0B55F0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x08,r0 ; r0 set to 0x08
mov 0x1D,r6 ; r6 set to 0x1d
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x15,r5

loc_8C0B5596:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B55EC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C0B55E8,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B55Bc
mov.b @(0x05,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r14,r4
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0B55E8,pc),r0 ; r0 set to 0x141
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
bra loc_8C0B4B82
mov.l @r15+,r14

loc_8C0B55BC:
mov.w @(loc_8C0B55EA,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B55Ce
lds.l @r15+,pr 	
mov.l @(loc_8C0B55FC,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0B55CE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B55D4:
mov r4,r3
mov.l @(loc_8C0B5600,pc),r1 ; r1 set to 0x8C15972c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B55E6:
#data 0x012c

loc_8C0B55E8:
#data 0x0141

loc_8C0B55EA:
#data 0x019f

#align4
loc_8C0B55EC:
#data 0x8c034dee

loc_8C0B55F0:
#data 0x8c034e8c

loc_8C0B55F4:
#data 0x8c0332E0

loc_8C0B55F8:
#data 0x8c0B68C2

loc_8C0B55FC:
#data 0x8c045748

loc_8C0B5600:
#data 0x8c15972c

loc_8C0B5604:
#data 0x4F2291A2
#data 0x314C8444
#data 0x7001D352
#data 0x8044929c
#data 0x430B909b
#data 0x9099325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C908b
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3430434
#data 0xE00C430b
#data 0x025CE024
#data 0xC7410424
#data 0xE038F308
#data 0xF2565545
#data 0xF427F230
#data 0xF508C73e
#data 0xF608C73e
#data 0xF408C73e
#data 0x034D906e
#data 0x89052338
#data 0xF608C73c
#data 0xF408C73c
#data 0xF508C73c

#align4
loc_8C0B5688:
#data 0xD33EE034
#data 0xE515F356
#data 0xF350E613
#data 0xE05CF437
#data 0xE068F467
#data 0xC737F447
#data 0xE060F308
#data 0xC736F437
#data 0xE06CF308
#data 0xE028F437
#data 0x432B814e
#data 0x4F26

loc_8C0B56B6:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D332
#data 0x430B2F52
#data 0xE05C64E3
#data 0xE034F4E6
#data 0xE168F3E6
#data 0xF43D31Ec
#data 0x045AF340
#data 0xE05CFE37
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3E6E05c
#data 0x055AF33d
#data 0x4411245a
#data 0xF48D8903
#data 0xE068FE47
#data 0xFE47

loc_8C0B5716:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4011600f
#data 0x65F28906
#data 0x7F0464E3
#data 0xD3184F26
#data 0x6EF6432b

#align4
loc_8C0B5730:
#data 0xE31E85Ee
#data 0x892F3033
#data 0xE401D215
#data 0x50176122
#data 0x89272048
#data 0xE1009004
#data 0x0E14A026
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0B5758:
#data 0x8c129560

loc_8C0B575C:
#data 0x8c1294C8
#data 0xC2564924
#data 0x42995555
#data 0x40D55555
#data 0xBED55555
#data 0xC0D55555
#data 0x3ED55555
#data 0xC2995555
#data 0x40892492
#data 0xBF092492

#align4
loc_8C0B5784:
#data 0x8c034e8c

loc_8C0B5788:
#data 0x8c034dee

loc_8C0B578C:
#data 0x8c0B68Ca
#data 0x8C26823c

#align4
loc_8C0B5794:
#data 0x0E4490A1

#align4
loc_8C0B5798:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B57A0:
mov r4,r3
mov.l @(loc_8C0B58E8,pc),r1 ; r1 set to 0x8C15973c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B57B2:
#data 0x2FE6
#data 0x2FD66E43
#data 0x918F6D53
#data 0x84E44F22
#data 0x928B31Ec
#data 0xD3497001
#data 0x908880E4
#data 0x32DC430b
#data 0xE2019083
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9077FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD33a
#data 0xE024E00c
#data 0xE44402Dc
#data 0x0E24E530
#data 0x9064E310
#data 0x0E44E2F0
#data 0x0E4470Ff
#data 0x0E5470A0
#data 0x0E347001
#data 0x0E547001
#data 0xE3707001
#data 0xE0310E34
#data 0x90550E24
#data 0x0E44D32e
#data 0xE400700b
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x4000F48d
#data 0x727CD52b
#data 0x7101012d
#data 0xE0600215
#data 0xFE4754E5
#data 0xFE47E06c
#data 0xF308C723
#data 0xFE37E05c
#data 0xF308C722
#data 0xFE37E068
#data 0xF308C721
#data 0xF246E038
#data 0xFE27F230
#data 0x024D902f
#data 0x8D092228
#data 0xE05C0E25
#data 0xF2E6D51d
#data 0xFE27F24d
#data 0xF2E6E068
#data 0xFE27F24d

#align4
loc_8C0B58A0:
#data 0xC71A455a
#data 0xC71AF208
#data 0xE034F108
#data 0xF046F32d
#data 0xE515D318
#data 0xF322E61a
#data 0xF030F313
#data 0x430BFE07
#data 0xD21564E3
#data 0xE600E50e
#data 0x64E3420b
#data 0x64D34F26
#data 0xE519D312
#data 0x432B6DF6
#data 0x012C6EF6
#data 0x00C000Dc
#data 0x019D01A3
#data 0x013001A1

#align4
loc_8C0B58E8:
#data 0x8c15973c

loc_8C0B58EC:
#data 0x8c129560

loc_8C0B58F0:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0xC0D55555
#data 0xBED55555
#data 0x43092492
#data 0xFFE80000
#data 0x00180000
#data 0x3FD55555
#data 0x47800000

#align4
loc_8C0B5914:
#data 0x8c034e8c

loc_8C0B5918:
#data 0x8c0B424e

loc_8C0B591C:
#data 0x8c042008


loc_8C0B5920:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r14
mov.b @(0x05,r14),r0 	
tst r0,r0
bt/s loc_8C0B593a
mov r5,r13
bra loc_8C0B5AA8
nop 	

loc_8C0B593A:
#data 0x9053
#data 0x233803Ec
#data 0xFF8D8F04
#data 0x03EC904f
#data 0x89652338

#align4
loc_8C0B594C:
#data 0xE51584E5
#data 0xE61BD326
#data 0x5CE57001
#data 0xE03E80E5
#data 0x430B81Ee
#data 0xC72364E3
#data 0xF308D424
#data 0xFE37E060
#data 0xF308C721
#data 0xFE37E06c
#data 0x03CD9038
#data 0x89002338
#data 0xD41f

loc_8C0B597E:
#data 0x445a
#data 0xF208C71f
#data 0xF108C71f
#data 0xF32DE034
#data 0xF322F0C6
#data 0xF030F313
#data 0xC71CF3E6
#data 0xF308F031
#data 0xF033E05c
#data 0xE068FE07
#data 0xC719FEF7
#data 0x901DF208
#data 0x03EDFF2a
#data 0x89022338
#data 0xF34DF3F8
#data 0xFF3a

loc_8C0B59BA:
#data 0xE034
#data 0xF3E6F2F8
#data 0x9712E038
#data 0xF23065F3
#data 0xE601D311
#data 0xF3E6FF2a
#data 0xFF37E004
#data 0x64D3430b
#data 0xE549D20e
#data 0x64D3420b
#data 0x0009A062
#data 0x019F019e
#data 0x00F90130

#align4
loc_8C0B59EC:
#data 0x8c034e8c
#data 0x41892492
#data 0xBF092492
#data 0xFFF80000
#data 0x00080000
#data 0x3FD55555
#data 0x47800000
#data 0x42800000
#data 0xC2555555

#align4
loc_8C0B5A10:
#data 0x8c10235c

loc_8C0B5A14:
#data 0x8c04223a

loc_8C0B5A18:
#data 0x430BD34a
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE05CFE27
#data 0xC73BF4E6
#data 0xE068F608
#data 0xF3E6F28d
#data 0x8D0DF324
#data 0xF2E6F56c
#data 0xF325F38d
#data 0xC7368902
#data 0xF508F44d

#align4
loc_8C0B5A78:
#data 0x8903F645
#data 0xFEF7E068
#data 0xFE57E05c

#align4
loc_8C0B5A84:
#data 0x430BD332
#data 0x200864E3
#data 0x54E58B07
#data 0x600C8445
#data 0x8B488803
#data 0xA046E005
#data 0x8045

loc_8C0B5A9E:
#data 0xD22d
#data 0x64E3420b
#data 0x0009A044


loc_8C0B5AA8:
mov.l @(loc_8C0B5B44,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
cmp/pl r0
bt loc_8C0B5B30
mov.w @(loc_8C0B5B3E,pc),r0 ; r0 set to 0x19f
mov.l @(0x14,r14),r4
mov.b @(r0,r14),r2
tst r2,r2
bf/s loc_8C0B5B26
mov.l @(0x18,r14),r5
mov.w @(loc_8C0B5B40,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B5B26
mov.w @(loc_8C0B5B42,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r14),r3
tst r3,r3
bt loc_8C0B5B26
mov.l @(r0,r14),r3
add 0x5C,r0 ; r0 set to 0x20c
mov.l @(r0,r5),r2
cmp/eq r3,r2
bf loc_8C0B5B26
mov.w @(loc_8C0B5B40,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
tst 0x01,r0 	
bf loc_8C0B5B26
mov 0x06,r0 ; r0 set to 0x06
bra loc_8C0B5B2a
mov.b r0,@(0x05,r4) 	

loc_8C0B5B26:
#data 0xE007
#data 0x8045

loc_8C0B5B2A:
#data 0x65D3
#data 0x64E3B6C9


loc_8C0B5B30:
add 0x0C,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B5B3E:
#data 0x019f

loc_8C0B5B40:
#data 0x019e

loc_8C0B5B42:
#data 0x01B0

#align4
loc_8C0B5B44:
#data 0x8c034dee
#data 0x41555555
#data 0xC1555555

#align4
loc_8C0B5B50:
#data 0x8c03340c

loc_8C0B5B54:
#data 0x8c045748


loc_8C0B5B58:
mov r4,r3
mov.l @(loc_8C0B5CC0,pc),r1 ; r1 set to 0x8C15974c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5B6A:
mov.w @(loc_8C0B5CB2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0B5CC4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B5CB2,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B5CB4,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B5CB6,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0B5CB8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B5CC8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r6 ; r6 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0B5CB6,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov.w @(loc_8C0B5CBA,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0B5CCC,pc),r0  ; r0 set to 0x8C0B5CCc
fmov.s @r0,fr4
mova @(loc_8C0B5CD0,pc),r0  ; r0 set to 0x8C0B5CD0
fmov.s @r0,fr5
mov.w @(loc_8C0B5CBC,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C0B5BEc
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
bra loc_8C0B5BFc
fmov.s fr5,@(r0,r4) 	

loc_8C0B5BEC:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fsub fr4,fr3
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0B5CD4,pc),r0  ; r0 set to 0x8C0B5CD4
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	

loc_8C0B5BFC:
mov r6,r0 ; r0 ??? bc r6 is ???	
nop 	
mov.w r0,@(0x1C,r4) 	
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.w r0,@(0x1E,r4) 	
mov 0x30,r3 ; r3 set to 0x30, r3 set to 0x30
mov.w @(loc_8C0B5CBE,pc),r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r6,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.b r6,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0B5C1A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l @(loc_8C0B5CD8,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340C, r3 set to 0x8C03340c
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0B5C86
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5F, r0 set to 0x5F, r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??, r0 ??, r0 ??	
cmp/pz r0
bt loc_8C0B5C92
mov.w @(0x1E,r14),r0 	
mov r14,r4
add 0x34,r4
mov.w r0,@(0x1C,r14) 	
mov 0xFF,r5 ; r5 set to 0xFFFFFFFF, r5 set to 0xFFFFFFFF, r5 set to 0xFFFFFFFf
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B5CDC,pc),r3 ; r3 set to 0x8C100672, r3 set to 0x8C100672, r3 set to 0x8C100672
jmp @r3
mov.l @r15+,r14

loc_8C0B5C86:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0B68C2
mov.l @r15+,r14

loc_8C0B5C92:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B5C9A:
mov r4,r3
mov.l @(loc_8C0B5CE0,pc),r1 ; r1 set to 0x8C15975c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5CAC:
mov.l @(loc_8C0B5CE4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B5CB2:
#data 0x00Dc

loc_8C0B5CB4:
#data 0x00C0

loc_8C0B5CB6:
#data 0x012c

loc_8C0B5CB8:
#data 0x01A3

loc_8C0B5CBA:
#data 0x041c

loc_8C0B5CBC:
#data 0x0130

loc_8C0B5CBE:
#data 0x013d

#align4
loc_8C0B5CC0:
#data 0x8c15974c

loc_8C0B5CC4:
#data 0x8c129560

loc_8C0B5CC8:
#data 0x8c1294C8

loc_8C0B5CCC:
#data 0xC33AAAAa

#align4
loc_8C0B5CD0:
#data 0xC292AAAa

#align4
loc_8C0B5CD4:
#data 0x4292AAAa

#align4
loc_8C0B5CD8:
#data 0x8c03340c

loc_8C0B5CDC:
#data 0x8c100672

loc_8C0B5CE0:
#data 0x8c15975c

loc_8C0B5CE4:
#data 0x8c0450C0


loc_8C0B5CE8:
mov r4,r3
mov.l @(loc_8C0B5DFC,pc),r1 ; r1 set to 0x8C15976c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5CFA:
mov.l @(loc_8C0B5E00,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B5D00:
mov r4,r3
mov.l @(loc_8C0B5E04,pc),r1 ; r1 set to 0x8C15977c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5D12:
mov.l @(loc_8C0B5E00,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B5D18:
mov r4,r3
mov.l @(loc_8C0B5E08,pc),r1 ; r1 set to 0x8C15978c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B5D2A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x915C6D53
#data 0x84E44F22
#data 0x925831Ec
#data 0xD3337001
#data 0x905580E4
#data 0x32DC430b
#data 0xE2019053
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9045FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD324
#data 0xE024E00c
#data 0x02DCD323
#data 0xE61FE515
#data 0x430B0E24
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0B5D9C:
#data 0xE3025645
#data 0x600C8464
#data 0x89093033
#data 0x006C9025
#data 0x8815600c
#data 0x90218B04
#data 0x600C006c
#data 0x8901881a

#align4
loc_8C0B5DBC:
#data 0x0009A581

#align4
loc_8C0B5DC0:
#data 0xF366E034
#data 0xE038F437
#data 0xF437F366
#data 0x036CE024
#data 0xE0310434
#data 0x026CD310
#data 0x0424432b


loc_8C0B5DDC:
mov r4,r3
mov.l @(loc_8C0B5E1C,pc),r1 ; r1 set to 0x8C15979c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc
#data 0x012C00C0
#data 0x015901A3
#data 0x00000158

#align4
loc_8C0B5DFC:
#data 0x8c15976c

loc_8C0B5E00:
#data 0x8c0450C0

loc_8C0B5E04:
#data 0x8c15977c

loc_8C0B5E08:
#data 0x8c15978c

loc_8C0B5E0C:
#data 0x8c129560

loc_8C0B5E10:
#data 0x8c1294C8

loc_8C0B5E14:
#data 0x8c034e8c

loc_8C0B5E18:
#data 0x8c034dee

loc_8C0B5E1C:
#data 0x8c15979c

loc_8C0B5E20:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229160
#data 0x31EC84E4
#data 0x7001925c
#data 0x80E4D332
#data 0x430B9059
#data 0x905732Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9049
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3240E34
#data 0xE00C430b
#data 0xD323E024
#data 0xE50F02Dc
#data 0x0E24E601
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0B5E92:
#data 0x8455
#data 0x8801600c
#data 0x902B8B09
#data 0x902A024d
#data 0x3230035d
#data 0x90278B03
#data 0x8801005c
#data 0x8902

loc_8C0B5EAE:
#data 0xD217
#data 0x0009422b

#align4
loc_8C0B5EB4:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0x035E901b
#data 0x023CE024
#data 0x0424E308
#data 0x000BE031
#data 0x0434
;-------------------------------------------------------------------------------

loc_8C0B5ED2:
mov.w @(loc_8C0B5EFC,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r4,@-r15
mov.b r3,@(r0,r5) 	
mov.l @r15,r2
mov.l @(loc_8C0B5F10,pc),r1 ; r1 set to 0x8C1597Ac
mov.b @(0x04,r2),r0 	
mov r2,r4
extu.b r0,r0 ; r0 set to 0xAb
shll2 r0 ; r0 set to 0x2Ac
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
add 0x04,r15
#data 0x00C000Dc
#data 0x01A3012c
#data 0x015800D4
#data 0x01C80150

loc_8C0B5EFC:
#data 0x02Ab
#data 0x0000

#align4
loc_8C0B5F00:
#data 0x8c129560

loc_8C0B5F04:
#data 0x8c1294C8

loc_8C0B5F08:
#data 0x8c034e8c

loc_8C0B5F0C:
#data 0x8c0450C0

loc_8C0B5F10:
#data 0x8c1597Ac

loc_8C0B5F14:
#data 0x4F2291Aa
#data 0x314C8444
#data 0x7001D357
#data 0x804492A4
#data 0x430B90A3
#data 0x90A1325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9093
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3480434
#data 0xE00C430b
#data 0x025CE024
#data 0x0424E308
#data 0x0434E031
#data 0x907F7378
#data 0x907E025e
#data 0xE2001425
#data 0x70010434
#data 0x70020424
#data 0x0434E340
#data 0x043470Ff
#data 0xF308C73d
#data 0xF437E038
#data 0xF408C73c
#data 0xF508C73c
#data 0x034D906c
#data 0x89032338
#data 0xF408C73a
#data 0xF508C73a

#align4
loc_8C0B5FAC:
#data 0xD33BE034
#data 0xE514F356
#data 0xF340E609
#data 0xE05CF437
#data 0xC736F457
#data 0xE060F308
#data 0xE06CF437
#data 0xF437F38d
#data 0x4F26432b


loc_8C0B5FD0:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0B60A0,pc),r1 ; r1 set to 0x8C1597Bc
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B5FEA:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov r5,r14
add r4,r1 ; r1 ??? bc r4 is ???	
sts.l pr,@-r15
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
fmov.s @(r0,r4),fr2
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
fmov.s @(r0,r4),fr2
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr3
mov.w @(loc_8C0B607A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf loc_8C0B6066
mov.b @(0x05,r4),r0 	
mov 0x0E,r6 ; r6 set to 0x0e
fldi0 fr4
add 0x01,r0 ; r0 set to 0x41d
mov.l @(loc_8C0B609C,pc),r3 ; r3 set to 0x8C034E8c
mov.b r0,@(0x05,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
jsr @r3
mov 0x14,r5 ; r5 set to 0x14
lds.l @r15+,pr 	
mov.l @(loc_8C0B60A4,pc),r2 ; r2 set to 0x8C042008
mov 0x1A,r5 ; r5 set to 0x1a
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B6066:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x013C01C8
#data 0x0130

loc_8C0B607A:
#data 0x041c

#align4
loc_8C0B607C:
#data 0x8c129560

loc_8C0B6080:
#data 0x8c1294C8
#data 0x44809249
#data 0x43200000
#data 0xC0555555
#data 0xC3200000
#data 0x40555555
#data 0xC2700000

#align4
loc_8C0B609C:
#data 0x8c034e8c

loc_8C0B60A0:
#data 0x8c1597Bc

loc_8C0B60A4:
#data 0x8c042008

loc_8C0B60A8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x54E52F52
#data 0x600C8445
#data 0x8D1F8802
#data 0x6053E502
#data 0xD34A0009
#data 0x80E5E514
#data 0x430BE609
#data 0xC74864E3
#data 0xC748F408
#data 0xE060F308
#data 0xE06CFE37
#data 0xFE37F38d
#data 0x03ED9080
#data 0x89012338
#data 0xF408C743

#align4
loc_8C0B60EC:
#data 0x64E3E05c
#data 0x65F2FE47
#data 0x4F267F04
#data 0x6EF6A044

#align4
loc_8C0B60FC:
#data 0x034C9073
#data 0x893B2338
#data 0xF308C73d
#data 0xF246E038
#data 0x8935F325
#data 0x80E5E003
#data 0xF346E034
#data 0xE400E344
#data 0x9063FE37
#data 0x70010E34
#data 0x70040E44
#data 0x0E34E326
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3327026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x60530215
#data 0x81EE0009
#data 0xF308C72c
#data 0xFE37E060
#data 0xF408C72b
#data 0x02ED9042
#data 0x89012228
#data 0xF408C729

#align4
loc_8C0B6168:
#data 0x64E3E05c
#data 0xFE47E514
#data 0x7F04E61a
#data 0xD31D4F26
#data 0x6EF6432b

#align4
loc_8C0B617C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B6184:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0B6210,pc),r3 ; r3 set to 0x8C0332E0
mov 0x34,r0 ; r0 set to 0x34
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
tst r0,r0
bf loc_8C0B61Dc
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0B68C2
mov.l @r15+,r14

loc_8C0B61DC:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x01F60130
#data 0x0000019c

#align4
loc_8C0B61EC:
#data 0x8c034e8c
#data 0x40555555
#data 0x42700000
#data 0xC0555555
#data 0x43892492
#data 0x8C2896B0
#data 0x41CDB6Db
#data 0xBD555555
#data 0x3D555555

#align4
loc_8C0B6210:
#data 0x8c0332E0


loc_8C0B6214:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0B62F2,pc),r0 ; r0 set to 0x1A0
mov r4,r14
mov.l r5,@r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B622e
mov.b @(r0,r14),r3
add 0xFF,r3
bra loc_8C0B62Ca
mov.b r3,@(r0,r14) 	

loc_8C0B622E:
#data 0xE15c
#data 0x31ECD332
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x200885Ee
#data 0x903F8919
#data 0x233803Ec
#data 0x85EE8915
#data 0xE400E326
#data 0x81EE70Ff
#data 0x0E349037
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD31B7026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0B62A6:
#data 0xD317
#data 0xF3E6E038
#data 0xF235F238
#data 0x64E38B05
#data 0x4F267F04
#data 0x412BD113
#data 0x6EF6

loc_8C0B62BE:
#data 0x65F2
#data 0x7F0464E3
#data 0xA2FC4F26
#data 0x6EF6


loc_8C0B62CA:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B62D2:
mov.w @(loc_8C0B62F8,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r5) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r14,r4
mov.l @(loc_8C0B630C,pc),r1 ; r1 set to 0x8C1597Cc
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0B62F2:
#data 0x01A0
#data 0x01A1019e

loc_8C0B62F8:
#data 0x02Ab
#data 0x0000

#align4
loc_8C0B62FC:
#data 0x8c034dee
#data 0x8C2896B0
#data 0x8C26A5A8

#align4
loc_8C0B6308:
#data 0x8c045748

loc_8C0B630C:
#data 0x8c1597Cc

loc_8C0B6310:
#data 0x6E432FE6
#data 0x4F2291Ae
#data 0x31EC84E4
#data 0x7001D35a
#data 0x80E492A8
#data 0x430B90A7
#data 0x90A5325c
#data 0x61E3E201
#data 0x0E247150
#data 0x80E28452
#data 0x80E18451
#data 0xF356E050
#data 0xE054FE37
#data 0xFE37F356
#data 0x035C9097
#data 0x70010E34
#data 0x0E24025c
#data 0x035CE030
#data 0x72506253
#data 0xD34B0E34
#data 0xE00C430b
#data 0x025CE024
#data 0x0E24E308
#data 0x0E34E031
#data 0x93849084
#data 0x9083025e
#data 0xE2001E25
#data 0x70010E34
#data 0x70010E24
#data 0x0E34E360
#data 0xE2407001
#data 0xC7400E24
#data 0xE038F308
#data 0xC73FFE37
#data 0xC73FF408
#data 0x9070F508
#data 0x233803Ed
#data 0xC73D8903
#data 0xC73DF408
#data 0xF508

loc_8C0B63AE:
#data 0xE034
#data 0xF356D33d
#data 0xFE37F340
#data 0xFE57E05c
#data 0xF308C739
#data 0xFE37E060
#data 0xF38DE06c
#data 0x430BFE37
#data 0xD33764E3
#data 0x64E3E201
#data 0x4F262E20
#data 0xE514E60f
#data 0x6EF6432b


loc_8C0B63E0:
mov r4,r3
mov.l @(loc_8C0B64B0,pc),r1 ; r1 set to 0x8C1597Dc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B63F2:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov r5,r14
add r4,r1 ; r1 ??? bc r4 is ???	
sts.l pr,@-r15
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
fmov.s @(r0,r4),fr2
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
fmov.s @(r0,r4),fr2
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr3
mov.w @(loc_8C0B6484,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf loc_8C0B646e
mov.b @(0x05,r4),r0 	
mov 0x11,r6 ; r6 set to 0x11
fldi0 fr4
add 0x01,r0 ; r0 set to 0x41d
mov.l @(loc_8C0B64AC,pc),r3 ; r3 set to 0x8C034E8c
mov.b r0,@(0x05,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
jsr @r3
mov 0x14,r5 ; r5 set to 0x14
lds.l @r15+,pr 	
mov.l @(loc_8C0B64B4,pc),r2 ; r2 set to 0x8C042008
mov 0x19,r5 ; r5 set to 0x19
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0B646E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x008001C8
#data 0x0130013c

loc_8C0B6484:
#data 0x041c
#data 0x0000

#align4
loc_8C0B6488:
#data 0x8c129560

loc_8C0B648C:
#data 0x8c1294C8
#data 0x44809249
#data 0x43200000
#data 0xC0555555
#data 0xC3200000
#data 0x40555555
#data 0xC2700000

#align4
loc_8C0B64A8:
#data 0x8c104434

loc_8C0B64AC:
#data 0x8c034e8c

loc_8C0B64B0:
#data 0x8c1597Dc

loc_8C0B64B4:
#data 0x8c042008

loc_8C0B64B8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x54E52F52
#data 0x600C8445
#data 0x891D8802
#data 0xE002D335
#data 0x80E5E514
#data 0x430BE60f
#data 0xC73364E3
#data 0xC733F408
#data 0xE060F308
#data 0xE06CFE37
#data 0xFE37F38d
#data 0x03ED9056
#data 0x89012338
#data 0xF408C72e

#align4
loc_8C0B64F8:
#data 0x64E3E05c
#data 0x65F2FE47
#data 0x4F267F04
#data 0x6EF6AE3e

#align4
loc_8C0B6508:
#data 0x034C9049
#data 0x890F2338
#data 0xF308C728
#data 0xF246E038
#data 0x8909F325
#data 0x64E3E614
#data 0x6563E003
#data 0x7F0480E5
#data 0xD31E4F26
#data 0x6EF6432b

#align4
loc_8C0B6530:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B6538:
mov.w @(loc_8C0B65A0,pc),r0 ; r0 set to 0x41c
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
mova @(loc_8C0B65B8,pc),r0  ; r0 set to 0x8C0B65B8
fsub fr3,fr2
fmov.s @r0,fr3
fcmp/gt fr2,fr3
bf/s loc_8C0B6576
mov r4,r13
mov.b @(0x05,r13),r0 	
mov 0x4B,r5 ; r5 set to 0x4b
mov.l @(loc_8C0B65BC,pc),r3 ; r3 set to 0x8C04223a
add 0x01,r0 ; r0 set to 0x8C0B65B9
mov.b r0,@(0x05,r13) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.w r0,@(0x1C,r13) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r4
mov.l @(loc_8C0B65C0,pc),r2 ; r2 set to 0x8C0B424e
mov 0x15,r5 ; r5 set to 0x15
mov.l @r15+,r13
mov 0x00,r6 ; r6 set to 0x00
jmp @r2
mov.l @r15+,r14

loc_8C0B6576:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B657E:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
cmp/pz r0
bt loc_8C0B6598
mov.b @(0x05,r4),r0 	
mov 0x15,r6 ; r6 set to 0x15
mov.l @(loc_8C0B65A4,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x14,r5

loc_8C0B6598:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x01F60130

loc_8C0B65A0:
#data 0x041c
#data 0x0000

#align4
loc_8C0B65A4:
#data 0x8c034e8c
#data 0x40555555
#data 0x42700000
#data 0xC0555555
#data 0x43CDB6Db

#align4
loc_8C0B65B8:
#data 0x434DB6Db

#align4
loc_8C0B65BC:
#data 0x8c04223a

loc_8C0B65C0:
#data 0x8c0B424e

loc_8C0B65C4:
#data 0x4F222FE6
#data 0xD3507FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x4011600e
#data 0xD34D891d
#data 0xE514E002
#data 0xE60F80E5
#data 0x64E3430b
#data 0xF408C74a
#data 0xF308C74a
#data 0xFE37E060
#data 0xF38DE06c
#data 0x907DFE37
#data 0x233803Ed
#data 0xC7468901
#data 0xF408

loc_8C0B6606:
#data 0xE05c
#data 0xFE4764E3
#data 0x7F0465F2
#data 0xADB74F26
#data 0x6EF6

loc_8C0B6616:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B661E:
mov.w @(loc_8C0B66FA,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r5) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r14,r4
mov.l @(loc_8C0B6720,pc),r1 ; r1 set to 0x8C1597F4
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0B663E:
#data 0x2FE6
#data 0x915B6E43
#data 0x84E44F22
#data 0xD33631Ec
#data 0x92557001
#data 0x905480E4
#data 0x325C430b
#data 0xE2019052
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9044FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD326
#data 0xE024E00c
#data 0xE308025c
#data 0x0E24E450
#data 0x0E34E031
#data 0x902FE300
#data 0x902E025e
#data 0x0E441E25
#data 0x0E347001
#data 0x0E447001
#data 0xE3307001
#data 0x90250E34
#data 0xE038F356
#data 0xE034FE37
#data 0xFE37F356
#data 0xF408C718
#data 0x03ED9014
#data 0x89012338
#data 0xF408C716

#align4
loc_8C0B66D8:
#data 0xD316E034
#data 0xF340F356
#data 0x430BFE37
#data 0xD30A64E3
#data 0x64E3E201
#data 0x4F262E20
#data 0xE514E608
#data 0x6EF6432b
#data 0x0130

loc_8C0B66FA:
#data 0x02Ab
#data 0x00C000Dc
#data 0x01A3012c
#data 0x013C01C8
#data 0x0000041c

#align4
loc_8C0B670C:
#data 0x8c034dee

loc_8C0B6710:
#data 0x8c034e8c
#data 0x40555555
#data 0x42700000
#data 0xC0555555

#align4
loc_8C0B6720:
#data 0x8c1597F4

loc_8C0B6724:
#data 0x8c129560

loc_8C0B6728:
#data 0x8c1294C8
#data 0xC3055555
#data 0x43055555

#align4
loc_8C0B6734:
#data 0x8c104434


loc_8C0B6738:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0B6784
mov.l @(loc_8C0B6858,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B67D2
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov 0x14,r5 ; r5 set to 0x14
mov r14,r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x03,r6 ; r6 set to 0x03
mov.w @(loc_8C0B684C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
mova @(loc_8C0B685C,pc),r0  ; r0 set to 0x8C0B685c
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0B6860,pc),r0  ; r0 set to 0x8C0B6860
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B6864,pc),r2 ; r2 set to 0x8C034E8c
jmp @r2
mov.l @r15+,r14

loc_8C0B6784:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B6868,pc),r3 ; r3 set to 0x8C0332E0
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
tst r0,r0
bf loc_8C0B67D2
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0B68C2
mov.l @r15+,r14

loc_8C0B67D2:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B67DA:
mov r4,r3
mov.l @(loc_8C0B686C,pc),r1 ; r1 set to 0x8C159804
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B67EC:
mov.w @(loc_8C0B684E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0B6870,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0B684E,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0B6850,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0B6852,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0B6854,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B6874,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0B6864,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r5),r2
mov 0x14,r5 ; r5 set to 0x14
mov 0x19,r6 ; r6 set to 0x19
mov.b r2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0B684C:
#data 0x0130

loc_8C0B684E:
#data 0x00Dc

loc_8C0B6850:
#data 0x00C0

loc_8C0B6852:
#data 0x012c

loc_8C0B6854:
#data 0x01A3
#data 0x0000

#align4
loc_8C0B6858:
#data 0x8c034dee

loc_8C0B685C:
#data 0x40555555

#align4
loc_8C0B6860:
#data 0x42700000

#align4
loc_8C0B6864:
#data 0x8c034e8c

loc_8C0B6868:
#data 0x8c0332E0

loc_8C0B686C:
#data 0x8c159804

loc_8C0B6870:
#data 0x8c129560

loc_8C0B6874:
#data 0x8c1294C8

loc_8C0B6878:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x92269026
#data 0x54E52F52
#data 0x633D034d
#data 0x8B0E3320
#data 0xF346E034
#data 0xFE37E300
#data 0xF346E038
#data 0xE024FE37
#data 0xD30C0E34
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0B68AE:
#data 0x65F2
#data 0x7F0464E3
#data 0xA0044F26
#data 0x6EF6

loc_8C0B68BA:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B68C2:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B68CA:
mov.l @(loc_8C0B68D8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x14140158

#align4
loc_8C0B68D4:
#data 0x8c034dee

loc_8C0B68D8:
#data 0x8c0450C0
#data 0xE10D2FE6
#data 0x6D432FD6
#data 0x6C632FC6
#data 0x2FB6D263
#data 0x4F222FA6
#data 0x33176321
#data 0xE4008F42
#data 0xE502DE60
#data 0x4E0BE600
#data 0x64036463
#data 0xE020E200
#data 0xDB5D9AAc
#data 0xE5026623
#data 0x042414B4
#data 0x04C4E021
#data 0x84D114D6
#data 0xE0208041
#data 0xE026034c
#data 0x23AB633c
#data 0x4E0B0435
#data 0x64036423
#data 0xE301E020
#data 0x043414B4
#data 0x04C4E021
#data 0xE502E600
#data 0x84D114D6
#data 0xE0208041
#data 0xE026034c
#data 0x23AB633c
#data 0x4E0B0435
#data 0x64036463
#data 0xE302E020
#data 0x043414B4
#data 0x04C4E021
#data 0x14D6E200
#data 0x804184D1
#data 0x034CE020
#data 0x633CE026
#data 0x043523Ab
#data 0x0D249075
#data 0x00096043
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B698E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B6A68,pc),r0 ; r0 set to 0x2Ab
mov 0x02,r3 ; r3 set to 0x02
mov.l @(0x18,r14),r5
mov r14,r4
mov.l @(loc_8C0B6A84,pc),r1 ; r1 set to 0x8C1598Dc
mov.b r3,@(r0,r5) 	
mov.w @(loc_8C0B6A6A,pc),r0 ; r0 set to 0x1F1
mov.b r3,@(r0,r5) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0xF1
shll2 r0 ; r0 set to 0x3C4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0B69AE:
#data 0x915d
#data 0x84444F22
#data 0xD334314c
#data 0x92577001
#data 0x90568044
#data 0x325C430b
#data 0xE7019054
#data 0x71506143
#data 0x84520474
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9046F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD324
#data 0xE024E00c
#data 0x025CD623
#data 0xE0200424
#data 0x655C054c
#data 0x60534508
#data 0x922F0009
#data 0x036C6103
#data 0x324C7101
#data 0x316C902b
#data 0x62532230
#data 0x72026310
#data 0x0434326c
#data 0x62536320
#data 0x70017203
#data 0x0434362c
#data 0x70016360
#data 0x0434E500
#data 0x00096053
#data 0xE0218045
#data 0x600C004c
#data 0x8B028803
#data 0x00096073
#data 0x8045

loc_8C0B6A56:
#data 0x6053
#data 0x80460009
#data 0x90074F26
#data 0x0454000b
;-------------------------------------------------------------------------------
#data 0x02A83800

loc_8C0B6A68:
#data 0x02Ab

loc_8C0B6A6A:
#data 0x01F1
#data 0x00C000Dc
#data 0x01A3012c
#data 0x013D013c
#data 0x8C287AE8

#align4
loc_8C0B6A7C:
#data 0x8c044F12

loc_8C0B6A80:
#data 0x8c0B698e

loc_8C0B6A84:
#data 0x8c1598Dc

loc_8C0B6A88:
#data 0x8c129560

loc_8C0B6A8C:
#data 0x8c1294C8

loc_8C0B6A90:
#data 0x8c1598Ec


loc_8C0B6A94:
mov r4,r3
mov.l @(loc_8C0B6BF8,pc),r1 ; r1 set to 0x8C1598F8
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B6AA6:
#data 0x2FE6
#data 0xFFFB2FD6
#data 0x7FFC4F22
#data 0x84E66E43
#data 0x8F452008
#data 0x84E66D53
#data 0xD64FE301
#data 0x80E67001
#data 0x0E349095
#data 0x05ECE020
#data 0x03ECE021
#data 0x633C655c
#data 0x42086233
#data 0x43004500
#data 0x353C332c
#data 0x00096053
#data 0x046D4000
#data 0x00096053
#data 0x40007001
#data 0x907F056d
#data 0x233803Ed
#data 0x655B8901
#data 0x644b

loc_8C0B6AFE:
#data 0x644f
#data 0x345C655f
#data 0xC73E445a
#data 0xE034FF08
#data 0x64E32F52
#data 0xF2D6F32d
#data 0x65D3F0Fc
#data 0xFE27F23e
#data 0xF308C739
#data 0xF2D6E038
#data 0xFE27F230
#data 0x63F2C737
#data 0x633BF508
#data 0xF22D435a
#data 0xF4F2F42c
#data 0x4F267F04
#data 0x6DF6FFF9
#data 0x6EF6A03b

#align4
loc_8C0B6B44:
#data 0x430BD331
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE038FE27
#data 0x9036F3E6
#data 0xF235F2D6
#data 0xF3D68B0f
#data 0xF48DE038
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xE001FE47
#data 0xE00080E5
#data 0x80E6

loc_8C0B6BAE:
#data 0x7F04
#data 0xFFF94F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B6BBA:
#data 0xC715
#data 0xF6082FE6
#data 0x6E43E05c
#data 0xF463D314
#data 0xF56364E3
#data 0xFE47E514
#data 0xFE57E060
#data 0xF48DE068
#data 0xE06CFE47
#data 0xE000FE47
#data 0xE02081Ee
#data 0xD00B06Ec
#data 0x4600666c
#data 0x432B066d
#data 0x012C6EF6
#data 0x041C0130

#align4
loc_8C0B6BF8:
#data 0x8c1598F8

loc_8C0B6BFC:
#data 0x8c159814
#data 0x3FD55555
#data 0x44809249
#data 0xC4809249

#align4
loc_8C0B6C0C:
#data 0x8c034dee
#data 0x42000000

#align4
loc_8C0B6C14:
#data 0x8c159908

loc_8C0B6C18:
#data 0x8c034e8c


loc_8C0B6C1C:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.b @(0x06,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
cmp/eq 0x00,r0 	
bt loc_8C0B6C42
cmp/eq 0x01,r0 	
bt loc_8C0B6CA4
cmp/eq 0x02,r0 	
bt loc_8C0B6CBe
bra loc_8C0B6CD8
nop 	

loc_8C0B6C42:
mov.b @(0x06,r14),r0 	
mov 0x14,r5 ; r5 set to 0x14
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r12
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
extu.b r12,r12
mov r12,r3
shll r12
extu.b r2,r2
add r3,r12
mov r2,r3
shll2 r2
shll2 r2
sub r3,r2
mov.l @(loc_8C0B6D34,pc),r3 ; r3 set to 0x8C034E8c
add r2,r12
mov.l @(loc_8C0B6D30,pc),r2 ; r2 set to 0x8C159880
shll r12
add r2,r12
mov.w @r12+,r6
jsr @r3
mov r14,r4
mov.w @r12+,r3 ; r3 ??? bc r12 is ???	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov.w @r12,r0 ; r0 ??? bc r12 is ???	
mov.w r0,@(0x1E,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B6CD8
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
bra loc_8C0B6CD8
cmp/ge r2,r3

loc_8C0B6CA4:
lds.l @r15+,pr 	
mov 0x21,r0 ; r0 set to 0x21
mov r13,r5
mov.b @(r0,r14),r3
mov r14,r4
mov.l @r15+,r12
mov.l @(loc_8C0B6D38,pc),r0 ; r0 set to 0x8C159910
extu.b r3,r3
shll2 r3
mov.l @r15+,r13
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0B6CBE:
mov.l @(loc_8C0B6D3C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B6CD8
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B6CE2
mov.l @r15+,r14

loc_8C0B6CD8:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B6CE2:
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x05,r4) 	
mov 0x00,r0 ; r0 set to 0x00
bra loc_8C0B6E54
mov.b r0,@(0x06,r4) 	

#align4
loc_8C0B6CEC:
#data 0x20088455
#data 0x901B8B04
#data 0x600C005c
#data 0x8901881d

#align4
loc_8C0B6CFC:
#data 0x0009AFF1

#align4
loc_8C0B6D00:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0x035CE024
#data 0x854F0434
#data 0xE0316203
#data 0x90080424
#data 0x2338035c
#data 0xD3068902
#data 0x0009432b

#align4
loc_8C0B6D28:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x014B01D0

#align4
loc_8C0B6D30:
#data 0x8c159880

loc_8C0B6D34:
#data 0x8c034e8c

loc_8C0B6D38:
#data 0x8c159910

loc_8C0B6D3C:
#data 0x8c034dee

loc_8C0B6D40:
#data 0x20088455
#data 0x90788B0f
#data 0x600C005c
#data 0x8B0A881d
#data 0x025C9074
#data 0x89162228
#data 0x4311035c
#data 0x906E8B03
#data 0x2228025e
#data 0x8B01

loc_8C0B6D66:
#data 0xAFBc
#data 0x0009

loc_8C0B6D6A:
#data 0x035e
#data 0x023C9068
#data 0x8B082228
#data 0x025E9063
#data 0x04269063
#data 0x8045E003
#data 0xA0E3E000
#data 0x8046

loc_8C0B6D86:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B6D8A:
#data 0x8455
#data 0x8B092008
#data 0x005C9053
#data 0x881D600c
#data 0x904E8906
#data 0x600C005c
#data 0x89018816

#align4
loc_8C0B6DA4:
#data 0x0009AF9d

#align4
loc_8C0B6DA8:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0x035CE024
#data 0x854F0434
#data 0xE0316203
#data 0x0424000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B6DC4:
#data 0x2FD62FE6
#data 0x4F226D53
#data 0x600C84D5
#data 0x8F248801
#data 0x90356E43
#data 0x233803Dc
#data 0xE020890c
#data 0x600C00Ec
#data 0x8B1A8802
#data 0xE51484E6
#data 0xE615D316
#data 0x80E67001
#data 0x64E3430b

#align4
loc_8C0B6DF8:
#data 0x64E3E034
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xE024FE37
#data 0x0E3403Dc
#data 0xD30F85Ef
#data 0xE0316203
#data 0x4F260E24
#data 0x432B6DF6
#data 0x6EF6

loc_8C0B6E1E:
#data 0xE020
#data 0x222802Ec
#data 0xD30A8B03
#data 0x430BE51b
#data 0x64D3

loc_8C0B6E2E:
#data 0x4F26
#data 0x64E365D3
#data 0xAF546DF6
#data 0x01D06EF6
#data 0x01B002A8
#data 0x00CC0411
#data 0x00000141

#align4
loc_8C0B6E48:
#data 0x8c034e8c

loc_8C0B6E4C:
#data 0x8c034dee

loc_8C0B6E50:
#data 0x8c042008

loc_8C0B6E54:
#data 0x2FD62FE6
#data 0x4F22FFFb
#data 0x6E437FFc
#data 0x84E62F52
#data 0x8B392008
#data 0xD63D84E6
#data 0x80E67001
#data 0x05ECE020
#data 0x03ECE021
#data 0x633C655c
#data 0x42086233
#data 0x43004500
#data 0x353C332c
#data 0x00096053
#data 0x046D4000
#data 0x00096053
#data 0x40007001
#data 0x90600D6d
#data 0x233803Ed
#data 0xE0328D02
#data 0x644B6DDb

#align4
loc_8C0B6EA8:
#data 0x81EF644f
#data 0xC72D445a
#data 0x6DDFFF08
#data 0x64E3E034
#data 0x4D5AF32d
#data 0xF0FCF2E6
#data 0xF32DF23e
#data 0xC728FE27
#data 0xF43C65F2
#data 0xF508F4F2
#data 0x4F267F04
#data 0x6DF6FFF9
#data 0x6EF6AE6f

#align4
loc_8C0B6EDC:
#data 0x430BD323
#data 0x200864E3
#data 0xD3228924
#data 0x64E3430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89074011

#align4
loc_8C0B6F30:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6DF6FFF9
#data 0x6EF6A294

#align4
loc_8C0B6F40:
#data 0x4F267F04
#data 0x6DF6FFF9
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B6F4C:
mov r4,r3
mov.l @(loc_8C0B6F74,pc),r1 ; r1 set to 0x8C159924
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0130

#align4
loc_8C0B6F60:
#data 0x8c159814
#data 0x3FD55555
#data 0x44809249

#align4
loc_8C0B6F6C:
#data 0x8c03340c

loc_8C0B6F70:
#data 0x8c034dee

loc_8C0B6F74:
#data 0x8c159924

loc_8C0B6F78:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xE4446E43
#data 0x91ADDD59
#data 0x84E62F52
#data 0x700131Ec
#data 0x90A580E6
#data 0x70010E44
#data 0xE0200E44
#data 0x90A003Ec
#data 0x4308633c
#data 0x33DC4308
#data 0x0E246230
#data 0x03ECE020
#data 0x4308633c
#data 0x33DC4308
#data 0x21008431
#data 0x03ECE020
#data 0x9190633c
#data 0x43084308
#data 0x843233Dc
#data 0x210031Ec
#data 0x03ECE020
#data 0x633C9188
#data 0x43084308
#data 0x843333Dc
#data 0x210031Ec
#data 0x03ECE020
#data 0x4308633c
#data 0x33DC4308
#data 0x20088434
#data 0x90788904
#data 0x02EDE301
#data 0x0E25223a

#align4
loc_8C0B7000:
#data 0x01ECE020
#data 0x611CE00c
#data 0x41084108
#data 0xF31631Dc
#data 0xFE37E060
#data 0x03ECE020
#data 0x633CE008
#data 0x43084308
#data 0xF43633Dc
#data 0x02ED9061
#data 0x8D012228
#data 0xF44DE05c

#align4
loc_8C0B7030:
#data 0xE020FE47
#data 0xE51406Ec
#data 0x666CD32d
#data 0x46084608
#data 0x856336Dc
#data 0x430B6603
#data 0xE02064E3
#data 0x81EE64E3
#data 0x7F0465F2
#data 0x6DF64F26
#data 0x6EF6


loc_8C0B705A:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0B70F4,pc),r4 ; r4 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov.l r13,@-r15
mov 0x01,r13 ; r13 set to 0x01
mov r13,r1 ; r1 set to 0x01
sts.l pr,@-r15
mov.w @(r0,r4),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r4),r2
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0B7100
mov.l @(loc_8C0B70F8,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B7100
mov.b @(0x06,r14),r0 	
mov.l @(loc_8C0B70FC,pc),r1 ; r1 set to 0x8C159934
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
shll r0
mov.w @(r0,r1),r0
mov.w r0,@(0x1C,r14) 	
mov r13,r0 ; r0 set to 0x01
nop 	
bra loc_8C0B7116
mov.w r0,@(0x1E,r14) 	
#data 0x013C019c
#data 0x013E013d
#data 0x0130013f

#align4
loc_8C0B70EC:
#data 0x8c159850

loc_8C0B70F0:
#data 0x8c034e8c

loc_8C0B70F4:
#data 0x8C2895F0

#align4
loc_8C0B70F8:
#data 0x8c034dee

loc_8C0B70FC:
#data 0x8c159934


loc_8C0B7100:
mov.l @(loc_8C0B71A0,pc),r3 ; r3 set to 0x8C0332E0
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0B7110
mov.w @(loc_8C0B7198,pc),r0 ; r0 set to 0x12c
bra loc_8C0B7116
mov.b r13,@(r0,r14) 	

loc_8C0B7110:
mov.w @(loc_8C0B7198,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14) 	

loc_8C0B7116:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B711E:
mov.l @(loc_8C0B71A4,pc),r6 ; r6 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov 0x01,r1 ; r1 set to 0x01
mov.w @(r0,r6),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r6),r2
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0B7166
mov.w @(loc_8C0B719A,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r6 ; r6 ??? bc r4 is ???	
mov.b @(0x05,r6),r0 	
extu.b r0,r0 ; r0 set to 0xCc
cmp/eq 0x03,r0 	
bf loc_8C0B7162
mov.w @(loc_8C0B719C,pc),r0 ; r0 set to 0x411
mov.b @(r0,r6),r2
tst r2,r2
bf loc_8C0B7162
mova @(loc_8C0B71A8,pc),r0  ; r0 set to 0x8C0B71A8
fmov.s @r0,fr3
mov.w @(loc_8C0B719E,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r6),fr2
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr1
fadd fr3,fr2
fcmp/gt fr2,fr1
bf loc_8C0B7166
mov.b @(0x06,r4),r0 	
add 0x01,r0 ; r0 set to 0x39
bra loc_8C0B7166
mov.b r0,@(0x06,r4) 	

loc_8C0B7162:
bra loc_8C0B7468
nop 	

loc_8C0B7166:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0B716A:
mov.w @(loc_8C0B719A,pc),r0 ; r0 set to 0xCc
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l @(r0,r14),r13
mov.b @(0x05,r13),r0 	
extu.b r0,r0 ; r0 set to 0xCc
cmp/eq 0x03,r0 	
bf loc_8C0B7190
mov.b @(0x07,r14),r0 	
mov r13,r5
mov.l @(loc_8C0B71AC,pc),r1 ; r1 set to 0x8C15993c
mov r14,r4
extu.b r0,r0 ; r0 set to 0xCc
mov.l @r15+,r13
shll2 r0 ; r0 set to 0x330
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B7190:
mov.l @r15+,r13
mov r14,r4
bra loc_8C0B7468
mov.l @r15+,r14

loc_8C0B7198:
#data 0x012c

loc_8C0B719A:
#data 0x00Cc

loc_8C0B719C:
#data 0x0411

loc_8C0B719E:
#data 0x041c

#align4
loc_8C0B71A0:
#data 0x8c0332E0

loc_8C0B71A4:
#data 0x8C2895F0

#align4
loc_8C0B71A8:
#data 0x434DB6Db

#align4
loc_8C0B71AC:
#data 0x8c15993c

loc_8C0B71B0:
#data 0x6E432FE6
#data 0xE03CD444
#data 0x4F22E101
#data 0xE03B034d
#data 0x633D024c
#data 0x412C622c
#data 0x8B762318
#data 0x51E69078
#data 0x2338031c
#data 0x035C8B6c
#data 0x8B692338
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89684011
#data 0xD33884E7
#data 0x80E77001
#data 0xF356E034
#data 0xE038FE37
#data 0x430BF356
#data 0xE220FE37
#data 0x32ECD433
#data 0xC9036220
#data 0x622C4000
#data 0x42004208
#data 0x4008302c
#data 0x9054340c
#data 0x03EDF449
#data 0x8D012338
#data 0xF44DF548

#align4
loc_8C0B7224:
#data 0xF3E6E034
#data 0xF340E400
#data 0xE038FE37
#data 0xF38DF2E6
#data 0xFE27F250
#data 0xF608C726
#data 0xF462C726
#data 0xF608F562
#data 0xF44D903d
#data 0xF54DF463
#data 0x0E45F563
#data 0xF345E05c
#data 0xFE478D03
#data 0xE2019033
#data 0x0E25

loc_8C0B725E:
#data 0xE060
#data 0xE020FE57
#data 0x00EC81Ee
#data 0x8801600c
#data 0x90298B03
#data 0xA003E23e
#data 0x0E24

loc_8C0B7276:
#data 0x9025
#data 0x0E34E33f

#align4
loc_8C0B727C:
#data 0xD3179023
#data 0x70F20E45
#data 0x70260E44
#data 0x64E30E46
#data 0x623284E2
#data 0xD314600c
#data 0x727C4000
#data 0x7101012d
#data 0xE0200215
#data 0xD00F05Ec
#data 0x4F26655c
#data 0x055E4508
#data 0x6EF6432b

#align4
loc_8C0B72B0:
#data 0xD30D4F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0B72BA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01300411
#data 0x01AC01A1
#data 0x8C2895F0

#align4
loc_8C0B72CC:
#data 0x8c03319e

loc_8C0B72D0:
#data 0x8c15994c
#data 0x41800000
#data 0x43800000
#data 0x8C2896B0

#align4
loc_8C0B72E0:
#data 0x8c1599Ac

loc_8C0B72E4:
#data 0x8c042008

loc_8C0B72E8:
#data 0x8c0450C0


loc_8C0B72EC:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0B7410,pc),r4 ; r4 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov.l r13,@-r15
mov 0x01,r13 ; r13 set to 0x01
mov r13,r1 ; r1 set to 0x01
sts.l pr,@-r15
mov.w @(r0,r4),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r4),r2
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0B73Fa
mov.w @(loc_8C0B7402,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r14),r1
tst r1,r1
bt loc_8C0B731c
mov.b @(r0,r14),r3
add 0xFF,r3
bra loc_8C0B73Fa
mov.b r3,@(r0,r14) 	

loc_8C0B731C:
mov.l @(0x18,r14),r3
mov.b @(0x02,r3),r0 	
mov r13,r3
extu.b r0,r0
shad r0, r3
mov.b @(0x06,r4),r0 	
extu.b r0,r0
tst r3,r0
bf loc_8C0B73Fa
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B73De
mov.l @(loc_8C0B7414,pc),r3 ; r3 set to 0x8C0332E0
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B73D2
mov.w @(loc_8C0B7404,pc),r0 ; r0 set to 0xCc
mov.l @(0x18,r14),r5
mov.l @(r0,r14),r4
mov.w @(loc_8C0B7406,pc),r0 ; r0 set to 0x411
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bf loc_8C0B73C6
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0B73C6
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x410
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B73B0
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0B7408,pc),r0 ; r0 set to 0x2A8
mov.b @(r0,r5),r3
add 0x01,r3
bra loc_8C0B73Fa
mov.b r3,@(r0,r5) 	

loc_8C0B73B0:
mov 0x02,r0 ; r0 set to 0x02
mov.w r0,@(0x1C,r14) 	
mov 0x01,r3 ; r3 set to 0x01
mov.b @(0x07,r14),r0 	
add 0xFF,r0 ; r0 set to 0x01
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0B740A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
bra loc_8C0B73Fa
mov.w r2,@(r0,r14) 	

loc_8C0B73C6:
lds.l @r15+,pr 	
mov.l @(loc_8C0B7418,pc),r3 ; r3 set to 0x8C0450C0
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B73D2:
lds.l @r15+,pr 	
mov.l @(loc_8C0B741C,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B73DE:
mov.l @(loc_8C0B7414,pc),r3 ; r3 set to 0x8C0332E0
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0B73F4
mov.l @(loc_8C0B741C,pc),r3 ; r3 set to 0x8C045748
jsr @r3
mov r14,r4
mov.w @(loc_8C0B740C,pc),r0 ; r0 set to 0x12c
bra loc_8C0B73Fa
mov.b r13,@(r0,r14) 	

#align4
loc_8C0B73F4:
#data 0xE200900a
#data 0x0E24


loc_8C0B73FA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B7402:
#data 0x01A0

loc_8C0B7404:
#data 0x00Cc

loc_8C0B7406:
#data 0x0411

loc_8C0B7408:
#data 0x02A8

loc_8C0B740A:
#data 0x0130

loc_8C0B740C:
#data 0x012c
#data 0x0000

#align4
loc_8C0B7410:
#data 0x8C2895F0

#align4
loc_8C0B7414:
#data 0x8c0332E0

loc_8C0B7418:
#data 0x8c0450C0

loc_8C0B741C:
#data 0x8c045748

loc_8C0B7420:
#data 0x6E432FE6
#data 0x902C2FD6
#data 0x5DE64F22
#data 0x880300Dc
#data 0x84E78B14
#data 0xD315E514
#data 0x80E77001
#data 0x04DE9022
#data 0xF346E034
#data 0xE038FE37
#data 0xFE37F346
#data 0x06ECE020
#data 0x666CD00d
#data 0x066D4600
#data 0x64E3430b

#align4
loc_8C0B745C:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A000


loc_8C0B7468:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B7470:
mov.l @(loc_8C0B7490,pc),r2 ; r2 set to 0x8C2895F6
mov.b @r2,r3
tst r3,r3
bf loc_8C0B747e
mov.l @(loc_8C0B7494,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B747E:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x02A8
#data 0x0000020c

#align4
loc_8C0B7488:
#data 0x8c1599C4

loc_8C0B748C:
#data 0x8c034e8c

loc_8C0B7490:
#data 0x8C2895F6

#align4
loc_8C0B7494:
#data 0x8c0450C0
#data 0xE1072FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0xD23AEA00
#data 0x2F862F96
#data 0x4F226843
#data 0x33176321
#data 0x6EA38F35
#data 0xE502D336
#data 0x430BE600
#data 0x6E036463
#data 0xE300E021
#data 0xD233995b
#data 0xED066BE3
#data 0x0E341E24
#data 0x0E34E020
#data 0x84811E86
#data 0xE02680E1
#data 0xD32C0E95
#data 0x6CE3E602
#data 0x430B6563
#data 0x6E0364E3
#data 0xE020E301
#data 0x1E24D228
#data 0xE0210E34
#data 0x53C60EA4
#data 0x84811E36
#data 0x80E1933f
#data 0x0E95E026
#data 0x0EB6903a
#data 0x0ED47004
#data 0x0E34E022
#data 0x90357DFf
#data 0x8DE04D11
#data 0x60E30EA4
#data 0x4F260009
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B7538:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0B754a
mov r14,r4
bra loc_8C0B7554
mov.l @r15+,r14

loc_8C0B754A:
mov.l @(0x18,r14),r5
mov r14,r4
mov.l @(0x08,r14),r6
bra loc_8C0B79Dc
mov.l @r15+,r14

loc_8C0B7554:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0B758A,pc),r0 ; r0 set to 0x159
mov.l @(0x18,r14),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bf loc_8C0B757c
mov.w @(loc_8C0B758C,pc),r0 ; r0 set to 0x158
mov.b @(r0,r5),r2
tst r2,r2
bf loc_8C0B757c
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B759C,pc),r1 ; r1 set to 0x8C1599Cc
extu.b r0,r0 ; r0 set to 0x58
shll2 r0 ; r0 set to 0x160
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B757C:
mov r14,r4
bra loc_8C0B7D3c
mov.l @r15+,r14
#data 0x3803
#data 0x00FF00D0
#data 0x012c

loc_8C0B758A:
#data 0x0159

loc_8C0B758C:
#data 0x0158
#data 0x0000
#data 0x8C287AE8

#align4
loc_8C0B7594:
#data 0x8c044F12

loc_8C0B7598:
#data 0x8c0B7538

loc_8C0B759C:
#data 0x8c1599Cc

loc_8C0B75A0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x84E44F22
#data 0x700191B1
#data 0x80E492Af
#data 0x90AD31Ec
#data 0x430BD35a
#data 0x90AA32Dc
#data 0x61E3EC01
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC909c
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD34D0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE900E334
#data 0xEA430E24
#data 0xEB429089
#data 0x700B0E34
#data 0x70F20E95
#data 0x70260E94
#data 0x0E96D345
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x92789078
#data 0x70010EA4
#data 0xE0220EB4
#data 0xE00A0E24
#data 0xC73D81Ee
#data 0xE060F508
#data 0xC73CFE57
#data 0x906BF408
#data 0x222802Ed
#data 0xC73A8901
#data 0xF408

loc_8C0B765A:
#data 0xE05c
#data 0xE3FFF3E6
#data 0xF340E516
#data 0xFE37E602
#data 0xF2D6E034
#data 0xFE27F240
#data 0xF3D6E038
#data 0xFE37F350
#data 0x0E34E031
#data 0x430BD331
#data 0xD23164E3
#data 0x64E3420b
#data 0x6593E606
#data 0xE74064E3

#align4
loc_8C0B7690:
#data 0x54439143
#data 0x92409042
#data 0xD324314c
#data 0x32DC430b
#data 0x6143903d
#data 0x04C47150
#data 0x804284D2
#data 0x804184D1
#data 0xF3D6E050
#data 0xE054F437
#data 0xF437F3D6
#data 0x03DC9030
#data 0x70010434
#data 0x042402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3170434
#data 0xE00C430b
#data 0x02DCE024
#data 0x35677501
#data 0x901F0424
#data 0x700104A4
#data 0x70A204B4
#data 0x70FF0474
#data 0x70FF0474
#data 0x70FF0474
#data 0x04748FCa
#data 0xE5489015
#data 0x0E46D312
#data 0x0E947009
#data 0x4F2664E3
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x01A101A3
#data 0x00FF019c
#data 0x00CC0130

#align4
loc_8C0B772C:
#data 0x8c129560

loc_8C0B7730:
#data 0x8c1294C8
#data 0x8C2896B0
#data 0x43AB6DB6
#data 0x41555555
#data 0xC1555555

#align4
loc_8C0B7744:
#data 0x8c034e8c

loc_8C0B7748:
#data 0x8c045748

loc_8C0B774C:
#data 0x8c04223a


loc_8C0B7750:
mov r4,r3
mov.l @(loc_8C0B7884,pc),r1 ; r1 set to 0x8C1599Dc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B7762:
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov.l r12,@-r15
sts.l pr,@-r15
fmov.s @(r0,r13),fr3
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0B7888,pc),r3 ; r3 set to 0x8C034DEe
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bf loc_8C0B77B0
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
bra loc_8C0B7846
fmov.s fr2,@(r0,r14) 	

#align4
loc_8C0B77B0:
#data 0xE30184E5
#data 0x7001E202
#data 0xEC0080E5
#data 0x0E34905d
#data 0x0D24706d
#data 0x0EC4E022
#data 0xF508C730
#data 0xFE57E060
#data 0xF408C72f
#data 0x03ED9052
#data 0x89012338
#data 0xF408C72d

#align4
loc_8C0B77E0:
#data 0xD32DE05c
#data 0xE034FE47
#data 0xE516F3D6
#data 0xF340E603
#data 0xFE37E700
#data 0xF3D6E038
#data 0xFE37F350
#data 0x64E3430b
#data 0x04EC903d
#data 0x891E2448
#data 0x600C00Ec
#data 0x8B09883c
#data 0xE3039036
#data 0x655C05Dc
#data 0x8B033537
#data 0x3513E106
#data 0xE42F8900

#align4
loc_8C0B7824:
#data 0xD31D902d
#data 0x700B0E44
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215


loc_8C0B7846:
lds.l @r15+,pr 	
mov.l @(loc_8C0B78A0,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0B7854:
#data 0xD313E022
#data 0x900F054c
#data 0x4500655c
#data 0x4508024d
#data 0xF459353c
#data 0x8D012228
#data 0xF44DF558

#align4
loc_8C0B7870:
#data 0xF447E05c
#data 0x000BE060
#data 0x00D5F457
#data 0x014B0130
#data 0x01A10255

#align4
loc_8C0B7884:
#data 0x8c1599Dc

loc_8C0B7888:
#data 0x8c034dee
#data 0x43AB6DB6
#data 0x41555555
#data 0xC1555555

#align4
loc_8C0B7898:
#data 0x8c034F54
#data 0x8C2896B0

#align4
loc_8C0B78A0:
#data 0x8c045748

loc_8C0B78A4:
#data 0x8c1599Fc

loc_8C0B78A8:
#data 0x6E432FE6
#data 0x2FD69085
#data 0x2FC66D53
#data 0x03DC4F22
#data 0x8F4D4311
#data 0xE022EC00
#data 0x907A02Ec
#data 0x03DC622c
#data 0x892E3230
#data 0xE02202Dc
#data 0xE516D33d
#data 0x0E24E603
#data 0x677C07Ec
#data 0x64E3430b
#data 0x04EC906c
#data 0x891D2448
#data 0x600C00Ec
#data 0x8B08883c
#data 0xE6039065
#data 0x655C05Dc
#data 0x8B023567
#data 0x89003563
#data 0xE42f

loc_8C0B7902:
#data 0x905d
#data 0x0E44D331
#data 0x0EC5700b
#data 0x0EC470F2
#data 0x0EC67026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B7924:
#data 0xBF9565D3
#data 0x64E3

loc_8C0B792A:
#data 0xE05c
#data 0xE034F3E6
#data 0xF230F2D6
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0x903EFE27
#data 0x233803Dc
#data 0x4F268B17
#data 0x64E3D320
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0B7958:
#data 0xE5169034
#data 0xE605D31d
#data 0x84E50EC4
#data 0x80E57001
#data 0x64E3430b
#data 0x65D34F26
#data 0x6CF664E3
#data 0xA0056DF6
#data 0x6EF6

loc_8C0B797A:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B7984:
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov.l @(loc_8C0B79D8,pc),r3 ; r3 set to 0x8C034DEe
sts.l pr,@-r15
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0B79B2
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B7D3c
mov.l @r15+,r14

loc_8C0B79B2:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0141
#data 0x0255014b
#data 0x019E01A1
#data 0x000000D5

#align4
loc_8C0B79C8:
#data 0x8c034F54
#data 0x8C2896B0

#align4
loc_8C0B79D0:
#data 0x8c045748

loc_8C0B79D4:
#data 0x8c034e8c

loc_8C0B79D8:
#data 0x8c034dee

loc_8C0B79DC:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6E437FF8
#data 0x84E42F52
#data 0x8F052008
#data 0x90656D63
#data 0x222802Ee
#data 0x1F218F08

#align4
loc_8C0B79FC:
#data 0x7F0864E3
#data 0xD2334F26
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0B7A0C:
#data 0x02ECE022
#data 0x332003Dc
#data 0xEC008D2f
#data 0xE30102Dc
#data 0x0E24E516
#data 0x904EE604
#data 0xE0220E34
#data 0xD32A07Ec
#data 0x430B677c
#data 0x904764E3
#data 0x244804Ec
#data 0x604E891d
#data 0x8B09883c
#data 0xE6039041
#data 0x055C65F2
#data 0x3567655c
#data 0x35638B02
#data 0xE42F8900

#align4
loc_8C0B7A54:
#data 0xD3209038
#data 0x700B0E44
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0B7A76:
#data 0xE022
#data 0x04ECD518
#data 0x644CE004
#data 0x44084400
#data 0xF856354c
#data 0xD515F458
#data 0xF756354c
#data 0xD514F658
#data 0x00096043
#data 0x9016F556
#data 0x233803Ed
#data 0xF54D8902
#data 0xF44DF64d

#align4
loc_8C0B7AA8:
#data 0x00EC9010
#data 0x8B1B8806
#data 0xF3D6E034
#data 0xFE37F340
#data 0xF3D6E038
#data 0xF380A01b
#data 0x012C00D0
#data 0x0255014b
#data 0x013001A1
#data 0x000000D4

#align4
loc_8C0B7AD0:
#data 0x8c0450C0

loc_8C0B7AD4:
#data 0x8c034F54
#data 0x8C2896B0

#align4
loc_8C0B7ADC:
#data 0x8c159A8c

loc_8C0B7AE0:
#data 0x8c159B1c

loc_8C0B7AE4:
#data 0x8c159BAc

loc_8C0B7AE8:
#data 0xF3D6E034
#data 0xFE37F360
#data 0xF3D6E038
#data 0xF370

loc_8C0B7AF6:
#data 0xFE37
#data 0xE034E322
#data 0xF3E633Ec
#data 0xF350E104
#data 0xE038FE37
#data 0xF2E66330
#data 0x4300633c
#data 0x353C4308
#data 0xF318315c
#data 0xFE27F230
#data 0x53F19029
#data 0x2228023c
#data 0x90258910
#data 0x032C62F2
#data 0x8B022338
#data 0x430BD312
#data 0x64E3

loc_8C0B7B36:
#data 0xD212
#data 0x64E3420b
#data 0x89032008
#data 0xE2019019
#data 0x0E24A002

#align4
loc_8C0B7B48:
#data 0x0EC49015

#align4
loc_8C0B7B4C:
#data 0x03EC9012
#data 0x89082338
#data 0x64E39010
#data 0x7F0805Ee
#data 0x6CF64F26
#data 0xA00F6DF6
#data 0x6EF6

loc_8C0B7B66:
#data 0x7F08
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00D56EF6
#data 0x012C019e
#data 0x000001B0

#align4
loc_8C0B7B7C:
#data 0x8c045748

loc_8C0B7B80:
#data 0x8c0332E0

loc_8C0B7B84:
#data 0x25587FE8
#data 0xA0D58B01
#data 0x0009

loc_8C0B7B8E:
#data 0x8453
#data 0x89012008
#data 0x0009A0D0

#align4
loc_8C0B7B98:
#data 0x600C8455
#data 0x89018803
#data 0x0009A0Ca

#align4
loc_8C0B7BA4:
#data 0x024CE022
#data 0x622CD04e
#data 0x2338032c
#data 0xA0C18B01
#data 0x0009

loc_8C0B7BB6:
#data 0x9092
#data 0x938F66F3
#data 0x075E7610
#data 0xF408C749
#data 0x908B373c
#data 0x425A6271
#data 0xF342F32d
#data 0x025CF63a
#data 0x89052228
#data 0x61236263
#data 0xF3282F22
#data 0xF13AF34d

#align4
loc_8C0B7BE4:
#data 0xF268E034
#data 0xE004F356
#data 0xF38DF230
#data 0xF637F62a
#data 0x035C9074
#data 0x89062338
#data 0x73046363
#data 0x2F326233
#data 0xF34DF338
#data 0xF23a

loc_8C0B7C0A:
#data 0x6363
#data 0x7304E034
#data 0xF3462F32
#data 0xF230F238
#data 0x63F2F32a
#data 0xF338F268
#data 0xF38DF231
#data 0x8F06F325
#data 0x6263F62a
#data 0x2F226323
#data 0xF24DF228
#data 0xF32a

loc_8C0B7C36:
#data 0xF04c
#data 0x72046263
#data 0x85712F22
#data 0x435A6303
#data 0xF208C729
#data 0xF23EF32d
#data 0x63F2F22a
#data 0xF538F368
#data 0xF531F28d
#data 0x896DF255
#data 0x66F3C724
#data 0x7608F408
#data 0x2F326363
#data 0xF04C8572
#data 0x425A6203
#data 0xF256E038
#data 0xF32DE038
#data 0xF32AF23e
#data 0x1F317304
#data 0xF33AF346
#data 0x63F252F1
#data 0xF238F328
#data 0xF38DF231
#data 0xF32AF325
#data 0x62638B05
#data 0x2F226323
#data 0xF24DF228
#data 0xF32a

loc_8C0B7CA2:
#data 0xF04c
#data 0x72046263
#data 0x85732F22
#data 0x435A6303
#data 0xF208C710
#data 0xF23EF32d
#data 0x63F2F22a
#data 0xF438F368
#data 0xF431F28d
#data 0x8937F245
#data 0xD606E022
#data 0x600C004c
#data 0xC801006c
#data 0x90048918
#data 0x0009A00e
#data 0x017007E0
#data 0x013001D2

#align4
loc_8C0B7CE4:
#data 0x8c1599E8
#data 0x3FD55555
#data 0x42D55555
#data 0x40092492
#data 0x43092492

#align4
loc_8C0B7CF8:
#data 0x2228024d
#data 0xE0348D01
#data 0xF54d

loc_8C0B7D02:
#data 0xF356
#data 0xF537F350

#align4
loc_8C0B7D08:
#data 0x004CE022
#data 0x006C600c
#data 0x8911C802
#data 0xF345F38d
#data 0xE0388B03
#data 0xF246F44d
#data 0xF527

loc_8C0B7D22:
#data 0xE038
#data 0xF341F356
#data 0x901EF537
#data 0xF235F256
#data 0xF3568B02
#data 0xF537E038

#align4
loc_8C0B7D38:
#data 0x7F18000b
;-------------------------------------------------------------------------------

loc_8C0B7D3C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x0C,r14),r4
mov 0x00,r5 ; r5 set to 0x00
mov 0x06,r6 ; r6 set to 0x06
mov 0x01,r7 ; r7 set to 0x01

loc_8C0B7D4A:
mov r7,r0 ; r0 set to 0x01
nop 	
add 0x01,r5 ; r5 set to 0x01
mov.b r0,@(0x04,r4) 	
cmp/gt r6,r5
bf/s loc_8C0B7D4a
mov.l @(0x0C,r4),r4
mov.l @(loc_8C0B7D6C,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
mov 0x3A,r5 ; r5 set to 0x3A, r5 set to 0x3a
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0B7D70,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x041c

#align4
loc_8C0B7D6C:
#data 0x8c04223a

loc_8C0B7D70:
#data 0x8c0450C0
#data 0x4F222FE6
#data 0xD3187FF8
#data 0x2F526E43
#data 0x1F61E501
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0x921FD313
#data 0x14E61434
#data 0x804184E1
#data 0x814E85F2
#data 0x63F2E020
#data 0xE0260434
#data 0x90140425
#data 0x901303Ed
#data 0x0436633d
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B7DC0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B7DE4,pc),r1 ; r1 set to 0x8C159C3c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x01583A00
#data 0x000000Cc

#align4
loc_8C0B7DDC:
#data 0x8c044F12

loc_8C0B7DE0:
#data 0x8c0B7DC0

loc_8C0B7DE4:
#data 0x8c159C3c

loc_8C0B7DE8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291A0
#data 0x31EC84E4
#data 0x7001929c
#data 0x80E4D353
#data 0x430B9099
#data 0x909732Dc
#data 0x61E3E501
#data 0x0E547150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9089
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3450E34
#data 0xE00C430b
#data 0xD144E024
#data 0xE3FF02Dc
#data 0xE0310E24
#data 0x0E342E50
#data 0x85EEE300
#data 0xF3164008
#data 0xFE37E054
#data 0xFE37E050
#data 0x640385Ee
#data 0x89003436
#data 0x6453

loc_8C0B7E6A:
#data 0x6043
#data 0x81EF0009
#data 0xE400E022
#data 0xE5420E44
#data 0x0E549060
#data 0x0E547001
#data 0x03ECE020
#data 0x905AE517
#data 0x0E34737e
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3307026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE0200215
#data 0xD22B06Ec
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0B7EBE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0B7F40,pc),r0 ; r0 set to 0x158
mov.l r12,@-r15
mov r5,r12
sts.l pr,@-r15
mov.w @(r0,r12),r3
mov.w @(loc_8C0B7F42,pc),r0 ; r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bt loc_8C0B7EDc
bra loc_8C0B800e
nop 	

loc_8C0B7EDC:
mov.b @(0x05,r12),r0 	
tst r0,r0
bt/s loc_8C0B7EE8
mov 0x00,r13 ; r13 set to 0x00
bra loc_8C0B7FE6
nop 	

loc_8C0B7EE8:
mov.w @(loc_8C0B7F44,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B7EF4
bra loc_8C0B7FE6
nop 	

#align4
loc_8C0B7EF4:
#data 0x02EC9027
#data 0x89072228
#data 0xC81100Ec
#data 0x90218B71
#data 0x843303Ee
#data 0x8B6C2008

#align4
loc_8C0B7F0C:
#data 0x03CC901d
#data 0x8B682338
#data 0x420BD212
#data 0x600E64E3
#data 0x89024011
#data 0x222862E0
#data 0x8973

loc_8C0B7F26:
#data 0xE024
#data 0x02CC61E3
#data 0x0E247134
#data 0x0009A018
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01A1019c

loc_8C0B7F40:
#data 0x0158

loc_8C0B7F42:
#data 0x00Cc

loc_8C0B7F44:
#data 0x019f
#data 0x019e
#data 0x014101B0

#align4
loc_8C0B7F4C:
#data 0x8c129560

loc_8C0B7F50:
#data 0x8c1294C8

loc_8C0B7F54:
#data 0x8c159C4c
#data 0x8C2896B0

#align4
loc_8C0B7F5C:
#data 0x8c034e8c

loc_8C0B7F60:
#data 0x8c034dee

loc_8C0B7F64:
#data 0x62C3D333
#data 0x430B7234
#data 0xE020E00c
#data 0x04ECD331
#data 0x644CE004
#data 0x44084400
#data 0xF546343c
#data 0x02ED9054
#data 0x8D012228
#data 0xF44DF448

#align4
loc_8C0B7F8C:
#data 0xF3E6E034
#data 0xFE37F340
#data 0xF2E6E038
#data 0xFE27F250
#data 0x03ECE022
#data 0x0E3473Ff
#data 0xC880603c
#data 0x64E38D17
#data 0xE208E022
#data 0xE0200E24
#data 0x903A03Ec
#data 0x0E34737e
#data 0x0ED5700b
#data 0x0ED470F2
#data 0xD31D7026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0B7FDA:
#data 0x4F26
#data 0x6CF6D318
#data 0x432B6DF6
#data 0x6EF6


loc_8C0B7FE6:
mov.w @(loc_8C0B8030,pc),r0 ; r0 set to 0x141
mov 0x17,r5 ; r5 set to 0x17
mov.l @(loc_8C0B8044,pc),r3 ; r3 set to 0x8C034E8c
mov r14,r4
mov.b r13,@(r0,r12) 	
add 0x5E,r0 ; r0 set to 0x19f
mov.b r13,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14) 	
exts.b r13,r0 ; r0 ??? bc r13 is ???	
mov.w r0,@(0x1C,r14) 	
mov.b r0,@r14
mov 0x20,r0 ; r0 set to 0x20
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @r15+,r12
add 0x20,r6
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B800E:
lds.l @r15+,pr 	
mov r12,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B8020
mov.l @r15+,r14

loc_8C0B801C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0B8020:
mov.w @(loc_8C0B8032,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B8048,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01A10130

loc_8C0B8030:
#data 0x0141

loc_8C0B8032:
#data 0x012c

#align4
loc_8C0B8034:
#data 0x8c1294C8

loc_8C0B8038:
#data 0x8c159C64
#data 0x8C2896B0

#align4
loc_8C0B8040:
#data 0x8c045748

loc_8C0B8044:
#data 0x8c034e8c

loc_8C0B8048:
#data 0x8c0450C0
#data 0xC75B2FE6
#data 0x6D432FD6
#data 0xEC012FC6
#data 0x2FA62FB6
#data 0xE9082F96
#data 0xE8002F86
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0xFC084F22
#data 0xFE08C754
#data 0xDB52C754
#data 0x9A96FF08
#data 0xD353FD8d
#data 0x6563E601
#data 0xE400430b
#data 0x8F022008
#data 0xA0B26E03
#data 0xD34F0009
#data 0x1ED61E34
#data 0x80E184D1
#data 0x4B0BE026
#data 0xE3030EA5
#data 0x2388E120
#data 0x31ECC907
#data 0x21008F03
#data 0x000960C3
#data 0x608381Ee
#data 0x40080009
#data 0x81EF9176
#data 0x31EC9075
#data 0xD3439272
#data 0x32DC430b
#data 0x61E39070
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9063
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0x65D3E024
#data 0xE60202Dc
#data 0xB2130E94
#data 0x4B0B64E3
#data 0x924D0009
#data 0x2029934d
#data 0x405A303c
#data 0x8D044011
#data 0xD12DF32d
#data 0xF20D415a
#data 0xF3C2F320
#data 0x01ED9042
#data 0x2118F3E3
#data 0x8F01F33d
#data 0x644B045a
#data 0xE05C445a
#data 0xFE37F32d
#data 0x03ECE020
#data 0x633CD024
#data 0x033D4300
#data 0x435AE060
#data 0xF3F2F32d
#data 0xFE37F3E3
#data 0x03ECE020
#data 0x633CD01f
#data 0x033D4300
#data 0x435AE06c
#data 0xF3F2F32d
#data 0xFE37F3E3
#data 0x03ECE020
#data 0x4300633c
#data 0xE218D019
#data 0x033DF0Fc
#data 0x435A9017
#data 0xE038F2D6
#data 0xF23EF32d
#data 0xE021FE27
#data 0x633C03Ec
#data 0x8B2A3323
#data 0xF3D6900b
#data 0xA021E038
#data 0x3A010009
#data 0x00C000Dc
#data 0x01A3012c
#data 0x070001Ff
#data 0x041C0130
#data 0x3FD55555

#align4
loc_8C0B81C0:
#data 0x8c03319e
#data 0x43800000
#data 0x40092492

#align4
loc_8C0B81CC:
#data 0x8c044F12

loc_8C0B81D0:
#data 0x8c0B848a

loc_8C0B81D4:
#data 0x8c129560

loc_8C0B81D8:
#data 0x8c1294C8
#data 0x4F800000

#align4
loc_8C0B81E0:
#data 0x8c159C84

loc_8C0B81E4:
#data 0x8c159C94

loc_8C0B81E8:
#data 0x8c159C74
#data 0xE06CFE37
#data 0xE060FED7
#data 0xE314FED7
#data 0x38337801
#data 0xAF3E8901
#data 0xE8000009
#data 0xE601D34e
#data 0x430B6563
#data 0x2008E400
#data 0x6E038D5f
#data 0x1E34D34b
#data 0x84D11ED6
#data 0xE02680E1
#data 0x0EA54B0b
#data 0x31ECE120
#data 0x2100C907
#data 0x00096083
#data 0x81EF9180
#data 0x31EC907f
#data 0xD343927c
#data 0x32DC430b
#data 0x61E3907a
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906d
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0x65D3E024
#data 0xE60602Dc
#data 0xB1590E94
#data 0xE02064E3
#data 0xD03102Ec
#data 0x4200622c
#data 0xE060032d
#data 0xF32D435a
#data 0xF3E3F3F2
#data 0xE020FE37
#data 0xD02C03Ec
#data 0x4300633c
#data 0xE06C033d
#data 0xF32D435a
#data 0xF3E3F3F2
#data 0xE020FE37
#data 0xD02703Ec
#data 0x4300633c
#data 0x435A033d
#data 0x9039F32d
#data 0xF2D6F0Fc
#data 0xF23EE038
#data 0xE350FE27
#data 0x38337804
#data 0x60E38B94
#data 0x4F260009
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x7FFC4F22
#data 0xE601D310
#data 0x65632F42
#data 0xE400430b
#data 0x8D0F2008
#data 0xD3136403
#data 0x93141434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0xE0270435
#data 0xE300814f
#data 0x04349006
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x3A01041c

#align4
loc_8C0B8340:
#data 0x8c044F12

loc_8C0B8344:
#data 0x8c0B848a

loc_8C0B8348:
#data 0x8c129560

loc_8C0B834C:
#data 0x8c1294C8

loc_8C0B8350:
#data 0x8c159CB4

loc_8C0B8354:
#data 0x8c159CC4

loc_8C0B8358:
#data 0x8c159CA4

loc_8C0B835C:
#data 0x8c0B9ED0

loc_8C0B8360:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD34FE601
#data 0x6D432F52
#data 0x430B6563
#data 0x2008E400
#data 0x6E038D37
#data 0x918FD34b
#data 0x938C1E34
#data 0x1ED631Ec
#data 0x80E184D1
#data 0x0E35E026
#data 0x62F2E020
#data 0x0E24D346
#data 0x92819083
#data 0x32DC430b
#data 0xE2019080
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9072FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD337
#data 0xE024E00c
#data 0xE30865D3
#data 0xE60102Dc
#data 0xB0A70E34
#data 0x64E3

loc_8C0B83EA:
#data 0x60E3
#data 0x7F040009
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B83F8:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD329E601
#data 0x6D432F52
#data 0x430B6563
#data 0x2008E400
#data 0x6E038D34
#data 0x9143D325
#data 0x93401E34
#data 0x923F31Ec
#data 0x84D11ED6
#data 0xE02680E1
#data 0x903A0E35
#data 0x430BD320
#data 0x903732Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9029
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3130E34
#data 0xE00C430b
#data 0x65D3E024
#data 0x02DCE308
#data 0x66F20E34
#data 0x64E3B05e

#align4
loc_8C0B847C:
#data 0x000960E3
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B848A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B84B8,pc),r1 ; r1 set to 0x8C159CD4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A01
#data 0x00C000Dc
#data 0x01A3012c

#align4
loc_8C0B84A8:
#data 0x8c044F12

loc_8C0B84AC:
#data 0x8c0B848a

loc_8C0B84B0:
#data 0x8c129560

loc_8C0B84B4:
#data 0x8c1294C8

loc_8C0B84B8:
#data 0x8c159CD4


loc_8C0B84BC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B8528,pc),r3 ; r3 set to 0x8C0B9E94
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0B852C,pc),r3 ; r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0B84E8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 ??? bc r0 is ???	
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt loc_8C0B84Fc
mov r14,r4
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B84FC:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B8530,pc),r1 ; r1 set to 0x8C159CE4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0B850C:
mov.w @(loc_8C0B8524,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov 0x03,r0 ; r0 set to 0x03
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B8518:
mov.w @(loc_8C0B8524,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0B8534,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0B8524:
#data 0x012c
#data 0x0000

#align4
loc_8C0B8528:
#data 0x8c0B9E94

loc_8C0B852C:
#data 0x8c104434

loc_8C0B8530:
#data 0x8c159CE4

loc_8C0B8534:
#data 0x8c0450C0


loc_8C0B8538:
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
add 0xEC,r15
mov.l @(loc_8C0B85C8,pc),r12 ; r12 set to 0x8C034E8c
mov 0x00,r11 ; r11 set to 0x00
mov.l r6,@(0x04,r15) 	
mov r4,r14
mov r5,r13
mov r11,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x07,r14) 	
mov 0x03,r6 ; r6 set to 0x03
mov.b r0,@(0x06,r14) 	
mova @(loc_8C0B85CC,pc),r0  ; r0 set to 0x8C0B85Cc
fmov.s @r0,fr12 ; r12 ??	
mova @(loc_8C0B85D0,pc),r0  ; r0 set to 0x8C0B85D0
fmov.s @r0,fr13
mova @(loc_8C0B85D4,pc),r0  ; r0 set to 0x8C0B85D4
fmov.s @r0,fr14
mova @(loc_8C0B85D8,pc),r0  ; r0 set to 0x8C0B85D8
fmov.s @r0,fr11 ; r11 ??	
mova @(loc_8C0B85DC,pc),r0  ; r0 set to 0x8C0B85Dc
fmov.s @r0,fr10
mova @(loc_8C0B85E0,pc),r0  ; r0 set to 0x8C0B85E0
fmov.s @r0,fr9
mova @(loc_8C0B85E4,pc),r0  ; r0 set to 0x8C0B85E4
fmov.s @r0,fr8
mova @(loc_8C0B85E8,pc),r0  ; r0 set to 0x8C0B85E8
fmov.s @r0,fr7
mova @(loc_8C0B85EC,pc),r0  ; r0 set to 0x8C0B85Ec
fmov.s @r0,fr5
mova @(loc_8C0B85F0,pc),r0  ; r0 set to 0x8C0B85F0
mov.l @(loc_8C0B85F4,pc),r9 ; r9 set to 0x8C03319e
mov 0x14,r5 ; r5 set to 0x14
mov.l @(loc_8C0B85FC,pc),r4 ; r4 set to 0x8C26A518
mov 0x1E,r7 ; r7 set to 0x1e
mov.l @(loc_8C0B85F8,pc),r10 ; r10 set to 0x8C2896B0
fmov.s @r0,fr4 ; r4 ??	
fldi0 fr15
mov r7,r0 ; r0 set to 0x1e
nop 	
add 0x6A,r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr3
fadd fr8,fr3
fmov.s fr3,@r15
mov r5,r0 ; r0 set to 0x14
nop 	
add 0x78,r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr6 ; r6 ??? bc r4 is ???	
mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???	
fadd fr5,fr6
mov 0x17,r1 ; r1 set to 0x17
cmp/hs r1,r0
bf loc_8C0B85Bc
bra loc_8C0B8C92
nop 	

loc_8C0B85BC:
shll r0
mov r0,r1
mova @(loc_8C0B8600,pc),r0  ; r0 set to 0x8C0B8600
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
braf r0
nop 	

#align4
loc_8C0B85C8:
#data 0x8c034e8c

loc_8C0B85CC:
#data 0xC1092492

#align4
loc_8C0B85D0:
#data 0x41892492

#align4
loc_8C0B85D4:
#data 0x41555555

#align4
loc_8C0B85D8:
#data 0x413AAAAa

#align4
loc_8C0B85DC:
#data 0xC13AAAAa

#align4
loc_8C0B85E0:
#data 0xC1200000

#align4
loc_8C0B85E4:
#data 0xC1D55555

#align4
loc_8C0B85E8:
#data 0x41200000

#align4
loc_8C0B85EC:
#data 0x41D55555

#align4
loc_8C0B85F0:
#data 0xBF4DB6Db

#align4
loc_8C0B85F4:
#data 0x8c03319e

loc_8C0B85F8:
#data 0x8C2896B0

#align4
loc_8C0B85FC:
#data 0x8C26A518

#align4
loc_8C0B8600:
#data 0x00B20066
#data 0x01F20198
#data 0x029C0248
#data 0x034002Dc
#data 0x04040404
#data 0x04EC04C2
#data 0x0558050c
#data 0x0592058a
#data 0x05AC059e
#data 0x060C05C2
#data 0x065C0630
#data 0x9086068c
#data 0x03EDF4F8
#data 0x8F032338
#data 0xC744F5Ec
#data 0xF508F46c
#data 0xFE47E034
#data 0xF3D6907c
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x00096053
#data 0x81EE490b
#data 0x6103D33c
#data 0xE00E430b
#data 0x4000E121
#data 0x700131Ec
#data 0xE0212100
#data 0x633C03Ec
#data 0xA08C4301
#data 0xC7367330
#data 0x905EF408
#data 0x233803Ed
#data 0xF5EC8F04
#data 0xF408C733
#data 0xF508C72f
#data 0xF3D6E034
#data 0xFE37F340
#data 0xF3D69052
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x0EB4E023
#data 0x81EE9049
#data 0x03ECE020
#data 0x2368633c
#data 0xE80F8F02
#data 0x81EFE001
#data 0x0009490b
#data 0x6103D322
#data 0x6083430b
#data 0x96396403
#data 0xE0216543
#data 0x0E4436Dc
#data 0x356C7610
#data 0x43156350
#data 0x63508B03
#data 0xA00873Ff
#data 0x01EC2530
#data 0x611CD31b
#data 0x430B7101
#data 0xAFEA6083
#data 0x04EC6403
#data 0x03ECE020
#data 0x2338644c
#data 0x74408F01
#data 0x901CE44f
#data 0x700B0E44
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE3400325
#data 0x02ED900c
#data 0x0E25223b
#data 0x01ECE021
#data 0xA03A4100
#data 0x01300E14
#data 0x0258041c
#data 0x01A102A4
#data 0x000001Ac
#data 0xC1555555

#align4
loc_8C0B8750:
#data 0x8c12939c
#data 0xC4200000
#data 0x44200000

#align4
loc_8C0B875C:
#data 0x8c1292D4
#data 0xF4F89086
#data 0x233803Ed
#data 0xE0348F01
#data 0xFE47F46c
#data 0xF3D6907f
#data 0xFE37E038
#data 0x490BE068
#data 0xD33FFEF7
#data 0x430B6103
#data 0xE121E00d
#data 0x31EC4000
#data 0xE3557001
#data 0x906F2100
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE0210325
#data 0xA20B06Ec
#data 0x60537602
#data 0x81EE0009
#data 0x00096063
#data 0xC72E81Ef
#data 0x9054F308
#data 0x904FF446
#data 0x03EDF430
#data 0x8F062338
#data 0xC72AF5Bc
#data 0xF208F5Ac
#data 0xF446904a
#data 0xE034F420
#data 0xC727FE47
#data 0x9040F308
#data 0xE038F2D6
#data 0xFE27F230
#data 0xFE57E05c
#data 0xFEF7E068
#data 0xFEC7E060
#data 0xF208C721
#data 0xFE27E06c
#data 0xE350A06a
#data 0x00096053
#data 0x606381Ee
#data 0x81EF0009
#data 0xF408C71c
#data 0x03ED9026
#data 0x89022338
#data 0xF58CC71a
#data 0xE034F408
#data 0xE353F3D6
#data 0xFE37F350
#data 0xF308C717
#data 0xF2D69019
#data 0xF230E038
#data 0xE05CFE27
#data 0xE068FE47
#data 0xC713FEF7
#data 0xE060F208
#data 0xC712FE27
#data 0xE06CF208
#data 0x9009FE27
#data 0x0E34A042
#data 0xFEF7E060
#data 0xFE47E06c
#data 0xE62DA1B0
#data 0x041C0130
#data 0x008801A1
#data 0x0000008c

#align4
loc_8C0B887C:
#data 0x8c12939c
#data 0xC2D55555
#data 0x42D55555
#data 0x43AB6DB6
#data 0x3E892492
#data 0xC0A00000
#data 0x40A00000
#data 0x43F00000
#data 0xC19A4924
#data 0x3F092492
#data 0x00096053
#data 0xC74181Ee
#data 0x9078F308
#data 0xC740F446
#data 0x9075F508
#data 0x233803Ed
#data 0xF4308F07
#data 0xF208C73d
#data 0xF446906f
#data 0xF508C73c
#data 0xE034F420
#data 0xE354FE47
#data 0xF3D69068
#data 0xFE37E038
#data 0xFE57E05c
#data 0xFEF7E068
#data 0x0E349061
#data 0x0EB59060
#data 0x0EB470F2
#data 0x0EB67026
#data 0x63A284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0xE624A164
#data 0xE209E024
#data 0xC72C0E24
#data 0x9048F308
#data 0x9045F446
#data 0x03EDF430
#data 0x8D062338
#data 0xC728F5Ac
#data 0xF208F5Bc
#data 0xF446903b
#data 0xE034F420
#data 0xC725FE47
#data 0xE351F308
#data 0xF2D69036
#data 0xF230E038
#data 0xE05CFE27
#data 0xE06CFE57
#data 0xE060FEF7
#data 0xE068FEF7
#data 0x902AFEF7
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0xE5170325
#data 0xE625901a
#data 0x630302Ed
#data 0x223B7354
#data 0x4C0B0E25
#data 0xE51464E3
#data 0x64D3BD36
#data 0x8F022008
#data 0xA17E6403
#data 0x900A0009
#data 0xE03404E6
#data 0xA178F3E6
#data 0x0088F437
#data 0x008C0130
#data 0x01A1041c
#data 0x00D401Ac
#data 0xC2D55555
#data 0x41700000
#data 0x42D55555
#data 0xC1700000
#data 0x42555555
#data 0xC2555555
#data 0x42892492
#data 0x600C84E5
#data 0x8D108801
#data 0x60436403
#data 0x88020009
#data 0x6043890b
#data 0x88060009
#data 0x60438907
#data 0x88120009
#data 0xD3458903
#data 0x430BE527
#data 0xE01064E3
#data 0xFFF765F3
#data 0xFFF7E008
#data 0xF3F6E00c
#data 0xD340E00c
#data 0xF3D07508
#data 0xFF37E600
#data 0x64E3430b
#data 0xFE08C73d
#data 0xF3D69071
#data 0xF2E6E038
#data 0x891EF235
#data 0xF3D6906b
#data 0xFE37E038
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0x490BE068
#data 0xC907FEF7
#data 0x4011405a
#data 0xF32D8D04
#data 0x435AD332
#data 0xF320F20d
#data 0xF208C731
#data 0xF322E060
#data 0xE06CFE37
#data 0xFEE7490b
#data 0xA00FE607
#data 0xE05C2609
#data 0xC72CF3E6
#data 0xE05CF208
#data 0xE60BF34d
#data 0xFE37F323
#data 0xFEF7E068
#data 0xFEC7E060
#data 0xFEE7E06c
#data 0x4C0BE50d
#data 0xA10464E3
#data 0x90390009
#data 0x02EDE301
#data 0x0E25223a
#data 0x211801Ed
#data 0xF49C8D02
#data 0xF47CF58c
#data 0xF3E6E034
#data 0xFE37F350
#data 0xFE47E05c
#data 0xFEF7E068
#data 0xE62CA08e
#data 0xE3019024
#data 0x223A02Ed
#data 0x01ED0E25
#data 0x8D012118
#data 0xF47CF49c
#data 0xFE47E05c
#data 0xFEF7E068
#data 0xE62BA07e
#data 0xE3019014
#data 0x223A02Ed
#data 0x01ED0E25
#data 0x8D012118
#data 0xF47CF49c
#data 0xFE47E05c
#data 0xE517E068
#data 0xE62AFEF7
#data 0x64E34C0b
#data 0xA078D508
#data 0x041C0009
#data 0x00000130

#align4
loc_8C0B8B04:
#data 0x8c042008

loc_8C0B8B08:
#data 0x8c0FDAB6
#data 0xBF092492
#data 0x4F800000
#data 0x40092492
#data 0x40800000
#data 0x00010000
#data 0xE05CF29d
#data 0xF3E6F220
#data 0xF323F34d
#data 0xE068FE37
#data 0xE06CFEF7
#data 0xC741FE47
#data 0x907BF408
#data 0xE038F3D6
#data 0xF135F1E6
#data 0xC73E8901
#data 0xE060F408
#data 0xA03FFE47
#data 0xE002E629
#data 0xA03B81Ee
#data 0x6073E628
#data 0xE6270009
#data 0xA03581Ee
#data 0x90650009
#data 0xF3D6E600
#data 0xFE37E038
#data 0xE511A05c
#data 0x80E7E00b
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xE609E06c
#data 0xA051FE47
#data 0x85DFE501
#data 0x70FFE356
#data 0xE00A81Df
#data 0xE01080E7
#data 0xE06881Ef
#data 0xE05CFEF7
#data 0xC728FEF7
#data 0xE060F308
#data 0xE06CFE37
#data 0x9042FE47
#data 0x700B0E34
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C63A2
#data 0x737C4000
#data 0x7201023d
#data 0x0325E631
#data 0xE517A02c
#data 0x80E7E00c
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xE517E06c
#data 0xE632FE47
#data 0x64E34C0b
#data 0xD316E500
#data 0x64E3430b
#data 0x0009A04d
#data 0xF3D6901c
#data 0xFE37E038
#data 0xF408C712
#data 0x03ED9018
#data 0x89012338
#data 0xF408C710
#data 0xFE47E05c
#data 0xFEF7E068
#data 0x00096073
#data 0x81EEE62f
#data 0xE517A004
#data 0xE517E078
#data 0xE63081Ee
#data 0x64E34C0b
#data 0x0009A02f
#data 0x01A1041c
#data 0x00000130
#data 0xC0892492
#data 0x41092492
#data 0xC14DB6Db

#align4
loc_8C0B8C48:
#data 0x8c0BA710
#data 0xC1055555
#data 0x41055555
#data 0xE3019094
#data 0x02EDE527
#data 0x0E25223a
#data 0xF3E6E05c
#data 0xF34DD249
#data 0x420BFE37
#data 0x62E364E3
#data 0x61F3D347
#data 0x71087234
#data 0xE00C430b
#data 0x65F3E00c
#data 0xE00CF3F6
#data 0x7508D343
#data 0xE600F3D0
#data 0x430BFF37
#data 0x64E3


loc_8C0B8C92:
mov.b @(0x04,r15),r0 	
mov.b r0,@(0x05,r14) 	
add 0x14,r15
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
;-------------------------------------------------------------------------------

loc_8C0B8CB2:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bt/s loc_8C0B8CDc
mov r4,r14
mov.w @(loc_8C0B8D82,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0B8CDc
lds.l @r15+,pr 	
mov r13,r5
mov 0x0F,r6 ; r6 set to 0x0f
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B8CDC:
mov.l @(loc_8C0B8D98,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0B8CF4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B8CF4:
mov.w @(loc_8C0B8D84,pc),r0 ; r0 set to 0x2A4
mov 0x04,r3 ; r3 set to 0x04
mov.l r3,@(r0,r13) 	
mov.w @(loc_8C0B8D82,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
tst 0x11,r0 	
bt loc_8C0B8D06
bra loc_8C0B8D2c
mov 0x0D,r6

loc_8C0B8D06:
#data 0x903e
#data 0x233803Ec
#data 0x903B8915
#data 0x03ECE22c
#data 0x3327633c
#data 0xEC2E8F03
#data 0x6CCC0CEc
#data 0x7C01

loc_8C0B8D22:
#data 0xD31a
#data 0x430B65C3
#data 0xE60864E3


loc_8C0B8D2C:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B8D3A:
#data 0xE15c
#data 0x31ECD317
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD308900e
#data 0x430B05Ec
#data 0x64E3

loc_8C0B8D72:
#data 0x4F26
#data 0x64E3D20a
#data 0x6DF66CF6
#data 0x6EF6422b
#data 0x0130

loc_8C0B8D82:
#data 0x019e

loc_8C0B8D84:
#data 0x02A4
#data 0x019f
#data 0x0000014b

#align4
loc_8C0B8D8C:
#data 0x8c042008

loc_8C0B8D90:
#data 0x8c1294C8

loc_8C0B8D94:
#data 0x8c0FDAB6

loc_8C0B8D98:
#data 0x8c03340c

loc_8C0B8D9C:
#data 0x8c034dee

loc_8C0B8DA0:
#data 0x8c045748

loc_8C0B8DA4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x401585Ee
#data 0xEC018F08
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89014015
#data 0x0EC4E023

#align4
loc_8C0B8DC8:
#data 0x430BD33d
#data 0x200864E3
#data 0x906E8B0d
#data 0x0E34E300
#data 0x02ECE023
#data 0x89182228
#data 0x65D34F26
#data 0x6CF664E3
#data 0xAB8F6DF6
#data 0x6EF6

loc_8C0B8DEE:
#data 0x9060
#data 0x85EF0EC4
#data 0x890C2008
#data 0xE000D332
#data 0x81EF430b
#data 0x6103D231
#data 0xE006420b
#data 0x6503D330
#data 0x430B7516
#data 0x64E3

loc_8C0B8E12:
#data 0x904f
#data 0x0D26E204
#data 0x03EC904d
#data 0x890E2338
#data 0x00ECE021
#data 0x881C600c
#data 0x65D38F02
#data 0xE616A001

loc_8C0B8E30:
#data 0xE608

loc_8C0B8E32:
#data 0x4F26
#data 0x6CF664E3
#data 0xAB7D6DF6
#data 0x6EF6

loc_8C0B8E3E:
#data 0xE15c
#data 0x31ECD323
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xF4D6E034
#data 0x9027F3E6
#data 0x233803Ed
#data 0xF4318F01
#data 0xF44d

loc_8C0B8E72:
#data 0xF38d
#data 0x8B15F345
#data 0x02EC901f
#data 0x89112228
#data 0x03ECE020
#data 0x8F012338
#data 0xE402E414

#align4
loc_8C0B8E8C:
#data 0x0EC4E023
#data 0x00096043
#data 0xE51781De
#data 0xD30E9010
#data 0x760106Ec
#data 0x64E3430b

#align4
loc_8C0B8EA4:
#data 0xD20C4F26
#data 0x6CF664E3
#data 0x422B6DF6
#data 0x012C6EF6
#data 0x019F02A4
#data 0x01410130
#data 0x00000158

#align4
loc_8C0B8EC0:
#data 0x8c03340c

loc_8C0B8EC4:
#data 0x8c03319e

loc_8C0B8EC8:
#data 0x8c12939c

loc_8C0B8ECC:
#data 0x8c042008

loc_8C0B8ED0:
#data 0x8c034dee

loc_8C0B8ED4:
#data 0x8c034e8c

loc_8C0B8ED8:
#data 0x8c045748


loc_8C0B8EDC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0 	
tst r0,r0
bt/s loc_8C0B8F22
mov r5,r13
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x12b
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0B8FC0
mov.w @(0x1C,r14),r0 	
tst r0,r0
bt loc_8C0B8FC0
mov.l @(loc_8C0B9004,pc),r3 ; r3 set to 0x8C03319e
jsr @r3
nop 	
mov.l @(loc_8C0B9008,pc),r2 ; r2 set to 0x8C12939c
mov r0,r1
jsr @r2
mov 0x06,r0 ; r0 set to 0x06
lds.l @r15+,pr 	
mov r0,r5 ; r5 set to 0x06
mov.l @(loc_8C0B900C,pc),r3 ; r3 set to 0x8C042008
add 0x16,r5 ; r5 set to 0x1c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B8F22:
mov.l @(loc_8C0B9010,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0B8F3e
mov r13,r5
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov r14,r4
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B8F3E:
mov.w @(loc_8C0B8FFC,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov 0x04,r3 ; r3 set to 0x04
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0B8FFE,pc),r0 ; r0 set to 0x2A4
mov.l r3,@(r0,r13) 	
mov.w @(loc_8C0B9000,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt loc_8C0B8F60
lds.l @r15+,pr 	
mov r13,r5
mov 0x09,r6 ; r6 set to 0x09
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8C0B8F60:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3D69033
#data 0xF2E6E038
#data 0x8F04F325
#data 0xE06064E3
#data 0xF34DF3E6
#data 0xFE37

loc_8C0B8FAE:
#data 0xD319
#data 0x0009430b
#data 0xD2184F26
#data 0x6DF664E3
#data 0x6EF6422b


loc_8C0B8FC0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B8FC8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bt/s loc_8C0B8FDc
mov r4,r14
bra loc_8C0B9044
mov 0x05,r6

#align4
loc_8C0B8FDC:
#data 0x430BD30f
#data 0x200864E3
#data 0xD30A8904
#data 0x64E3430b
#data 0x8B172008

#align4
loc_8C0B8FF0:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6AA88

loc_8C0B8FFC:
#data 0x012c

loc_8C0B8FFE:
#data 0x02A4

loc_8C0B9000:
#data 0x019f
#data 0x041c

#align4
loc_8C0B9004:
#data 0x8c03319e

loc_8C0B9008:
#data 0x8c12939c

loc_8C0B900C:
#data 0x8c042008

loc_8C0B9010:
#data 0x8c03340c

loc_8C0B9014:
#data 0x8c034dee

loc_8C0B9018:
#data 0x8c045748

loc_8C0B901C:
#data 0x8c0335B0

loc_8C0B9020:
#data 0xE2049085
#data 0x90830D26
#data 0xC81100Ec
#data 0xA0098901
#data 0xE60d

loc_8C0B9032:
#data 0x907e
#data 0x233803Ec
#data 0xD340890a
#data 0x430BE534
#data 0xE60964E3


loc_8C0B9044:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8C0B9050:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD337906a
#data 0x430B05Ec
#data 0x64E3

loc_8C0B9066:
#data 0x9066
#data 0x222802Ec
#data 0x03EC8903
#data 0xA03C73Ff
#data 0x0E34

loc_8C0B9076:
#data 0xE15c
#data 0x31ECD331
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x02EC903c
#data 0x89182228
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x8B124015
#data 0xE2509036
#data 0xD31DE400
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0B90EE:
#data 0x4F26
#data 0x64E3D315
#data 0x432B6DF6
#data 0x6EF6


loc_8C0B90FA:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bt/s loc_8C0B910e
mov r4,r14
bra loc_8C0B9178
mov 0x05,r6

loc_8C0B910E:
#data 0xD30f
#data 0x64E3430b
#data 0x89042008
#data 0x430BD30d
#data 0x200864E3
#data 0x8B18

loc_8C0B9122:
#data 0x4F26
#data 0x64E365D3
#data 0xA9EF6DF6
#data 0x02A46EF6
#data 0x019F019e
#data 0x01A0014b
#data 0x000001A1

#align4
loc_8C0B913C:
#data 0x8c042008

loc_8C0B9140:
#data 0x8c034dee
#data 0x8C2896B0

#align4
loc_8C0B9148:
#data 0x8c045748

loc_8C0B914C:
#data 0x8c0335B0

loc_8C0B9150:
#data 0x8c03340c

loc_8C0B9154:
#data 0xE2049074
#data 0x90720D26
#data 0xC81100Ec
#data 0xA0098901
#data 0xE60d

loc_8C0B9166:
#data 0x906d
#data 0x233803Ec
#data 0xD337890a
#data 0x430BE534
#data 0xE60964E3


loc_8C0B9178:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

#align4
loc_8C0B9184:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0xD32E9059
#data 0x430B05Ec
#data 0x64E3

loc_8C0B919A:
#data 0x9055
#data 0x222802Ec
#data 0x03EC8903
#data 0xA04573Ff
#data 0x0E34

loc_8C0B91AA:
#data 0xE15c
#data 0x31ECD328
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xF38DE060
#data 0xF235F2E6
#data 0x65D38B03
#data 0xB99FE605
#data 0x64E3

loc_8C0B91FA:
#data 0x9022
#data 0x233803Ec
#data 0x85EF8918
#data 0x81EF70Ff
#data 0x4015600f
#data 0x901C8B12
#data 0xE400E250
#data 0x0E24D30f
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0B9234:
#data 0xD3084F26
#data 0x6DF664E3
#data 0x6EF6432b
#data 0x019E02A4
#data 0x014B019f
#data 0x01A101A0

#align4
loc_8C0B924C:
#data 0x8c042008

loc_8C0B9250:
#data 0x8c034dee
#data 0x8C2896B0

#align4
loc_8C0B9258:
#data 0x8c045748


loc_8C0B925C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bf/s loc_8C0B92B8
mov r5,r13
mov 0x60,r1 ; r1 set to 0x60
mov.l @(loc_8C0B9354,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x6C,r1 ; r1 set to 0x6c
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
mov.w @(loc_8C0B934A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B92D2
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B9358,pc),r3 ; r3 set to 0x8C034E8c
mov 0x2E,r6 ; r6 set to 0x2e
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14) 	
mov 0x17,r5 ; r5 set to 0x17
mov.w @(loc_8C0B934A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B92B8:
mov.l @(loc_8C0B9354,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B92D2
lds.l @r15+,pr 	
mov r13,r5
mov 0x0B,r6 ; r6 set to 0x0b
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B92D2:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B92DA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0 	
tst r0,r0
bt/s loc_8C0B92F8
mov r5,r13
mov.w @(loc_8C0B934C,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x12b
bra loc_8C0B93Ae
mov.w r0,@(0x1E,r14) 	

#align4
loc_8C0B92F8:
#data 0x430BD318
#data 0x200864E3
#data 0xD3178904
#data 0x64E3430b
#data 0x8B052008

#align4
loc_8C0B930C:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A8Fa

#align4
loc_8C0B9318:
#data 0xE2019018
#data 0x0E24E304
#data 0x0D369015
#data 0x02EC9014
#data 0x89062228
#data 0x65D34F26
#data 0x64E3E609
#data 0xA8FF6DF6
#data 0x6EF6

loc_8C0B933A:
#data 0x900a
#data 0x222802Ec
#data 0x03EC8910
#data 0xA02C73Ff
#data 0x0E34

loc_8C0B934A:
#data 0x041c

loc_8C0B934C:
#data 0x012c
#data 0x02A4
#data 0x01A0019f

#align4
loc_8C0B9354:
#data 0x8c034dee

loc_8C0B9358:
#data 0x8c034e8c

loc_8C0B935C:
#data 0x8c0335B0

loc_8C0B9360:
#data 0x8c03340c

loc_8C0B9364:
#data 0xD351E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x64E3

loc_8C0B93A2:
#data 0x4F26
#data 0x64E3D242
#data 0x422B6DF6
#data 0x6EF6


loc_8C0B93AE:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B93B6:
mov r4,r3
mov.l @(loc_8C0B94B4,pc),r1 ; r1 set to 0x8C159D40
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0B93C8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bt/s loc_8C0B93E8
mov r4,r14
fldi1 fr3
fadd fr3,fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fmov.s fr2,@(r0,r14) 	
bra loc_8C0B940e
mov 0x11,r6

loc_8C0B93E8:
mov.w @(loc_8C0B94A4,pc),r0 ; r0 set to 0x2A4
mov 0x04,r2 ; r2 set to 0x04
mov.l r2,@(r0,r13) 	
mov.w @(loc_8C0B94A6,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0B93Fa
bra loc_8C0B940e
mov 0x09,r6

loc_8C0B93FA:
mov.w @(loc_8C0B94A8,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0B9444
mov.l @(loc_8C0B94B8,pc),r3 ; r3 set to 0x8C05264c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B941a
mov 0x0D,r6 ; r6 set to 0x0d

loc_8C0B940E:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B8538
mov.l @r15+,r14

loc_8C0B941A:
mov.b @(0x06,r14),r0 	
mov 0x08,r3 ; r3 set to 0x08
mov r13,r5
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
bsr loc_8C0B9668
mov r14,r4
mov.l @(loc_8C0B94BC,pc),r2 ; r2 set to 0x8C04223a
mov 0x23,r5 ; r5 set to 0x23
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0B94C0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x26,r6 ; r6 set to 0x26
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9444:
mov.l @(loc_8C0B94AC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B94C4,pc),r3 ; r3 set to 0x8C03340c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
tst r0,r0
bf loc_8C0B9498
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0B850c
mov.l @r15+,r14

loc_8C0B9498:
lds.l @r15+,pr 	
mov.l @(loc_8C0B94B0,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B94A4:
#data 0x02A4

loc_8C0B94A6:
#data 0x019f

loc_8C0B94A8:
#data 0x019e
#data 0x0000

#align4
loc_8C0B94AC:
#data 0x8c034dee

loc_8C0B94B0:
#data 0x8c045748

loc_8C0B94B4:
#data 0x8c159D40

loc_8C0B94B8:
#data 0x8c05264c

loc_8C0B94BC:
#data 0x8c04223a

loc_8C0B94C0:
#data 0x8c034e8c

loc_8C0B94C4:
#data 0x8c03340c

loc_8C0B94C8:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x4F226C53
#data 0xD33E9071
#data 0x0EDE430b
#data 0x02EC906e
#data 0x8B402228
#data 0xE50E84D6
#data 0xE600D33a
#data 0x80D67001
#data 0x64E3430b
#data 0x65E3D238
#data 0x64D3420b
#data 0xE501905f
#data 0x905D03Ce
#data 0xE0780D36
#data 0xE03C81De
#data 0x905681Df
#data 0x430BD332
#data 0x905404Ce
#data 0x9353E206
#data 0x70010E24
#data 0xE2010C34
#data 0x70F30E34
#data 0xE3FF0C24
#data 0x0C34904b
#data 0x00EC904a
#data 0x8802600c
#data 0xC7298B15
#data 0xE05CF408
#data 0xF343F3E6
#data 0xE068FE37
#data 0xF38DF2E6
#data 0xFE27F243
#data 0xF2E6E060
#data 0x8B02F235
#data 0xF243F2E6
#data 0xFE27

loc_8C0B955E:
#data 0xC721
#data 0xE06CF308
#data 0xFE37

loc_8C0B9566:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B9570:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB6C53
#data 0x901F4F22
#data 0x430BD313
#data 0x65C30DEe
#data 0x64E3B06e
#data 0x03DE901d
#data 0x8F083E30
#data 0x9019FF8d
#data 0x222802Dc
#data 0x84D58926
#data 0x8803600c
#data 0x8B22

loc_8C0B95A6:
#data 0xD310
#data 0x65C3E05c
#data 0xE611FEF7
#data 0x64E3430b
#data 0xA051E00a
#data 0x01B080E7
#data 0x01C801A0
#data 0x01F600D0
#data 0x015A00C2
#data 0x01CC01F9
#data 0x0000019f

#align4
loc_8C0B95D0:
#data 0x8c034dee

loc_8C0B95D4:
#data 0x8c034e8c

loc_8C0B95D8:
#data 0x8c05248e

loc_8C0B95DC:
#data 0x8c050552
#data 0x40800000
#data 0xBF4DB6Db

#align4
loc_8C0B95E8:
#data 0x8c0B8538

loc_8C0B95EC:
#data 0xD34085Ef
#data 0x81EF70Ff
#data 0x64D3430b
#data 0x89022008
#data 0x70FD85Ee
#data 0x81Ee

loc_8C0B9602:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4011600f
#data 0x90688926
#data 0xE308E200
#data 0x70F90D24
#data 0x90630D34
#data 0x421502Dd
#data 0x90608B0c
#data 0x600C00Dc
#data 0x89048802
#data 0x420BD231
#data 0xA00364D3
#data 0x0009

loc_8C0B9636:
#data 0xD230
#data 0x64D3420b

#align4
loc_8C0B963C:
#data 0xFEF7E05c
#data 0x85EFED0b
#data 0x8D024015
#data 0xE613E611
#data 0xED0c

loc_8C0B964E:
#data 0xD22b
#data 0x420B65C3
#data 0x60D364E3
#data 0x80E70009

#align4
loc_8C0B965C:
#data 0xFFF94F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0B9668:
#data 0x054E903e
#data 0x035C708e
#data 0xF208C723
#data 0x9038633c
#data 0x435A4309
#data 0xF32D035d
#data 0xF43C2338
#data 0xF4228F01
#data 0xF44d

loc_8C0B968A:
#data 0xE034
#data 0xF340F356
#data 0x902BF437
#data 0xC71B035c
#data 0x633CF208
#data 0xF32D435a
#data 0x8B0CF235
#data 0x025C9022
#data 0xF156E038
#data 0x622CC716
#data 0x4209F008
#data 0xE038425a
#data 0xF13EF32d
#data 0xF417

loc_8C0B96BE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0B96C2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B970C,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r5,r13
tst r0,r0
bf loc_8C0B9714
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9710,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x01F6
#data 0x01F90420
#data 0x013001B0
#data 0x0000013c

#align4
loc_8C0B96F0:
#data 0x8c0505B8

loc_8C0B96F4:
#data 0x8c051648

loc_8C0B96F8:
#data 0x8c0517Be

loc_8C0B96FC:
#data 0x8c0B8538
#data 0x3FD55555
#data 0x43092492
#data 0x40092492

#align4
loc_8C0B970C:
#data 0x8c03340c

loc_8C0B9710:
#data 0x8c0B850c

loc_8C0B9714:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3D69077
#data 0xF2E6E038
#data 0x8B0BF325
#data 0xF3D69071
#data 0xFE37E038
#data 0xF3E6E060
#data 0xF208C736
#data 0xF34DE060
#data 0xFE37F323

#align4
loc_8C0B9770:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B9778:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0B9844,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r5,r13
tst r0,r0
bf loc_8C0B9798
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9848,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9798:
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0B983E,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B97Ec
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B984C,pc),r2 ; r2 set to 0x8C0B8538
mov 0x10,r6 ; r6 set to 0x10
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B97EC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B97F4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9844,pc),r3 ; r3 set to 0x8C03340c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9816
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9848,pc),r3 ; r3 set to 0x8C0B850c
jmp @r3
mov.l @r15+,r14

loc_8C0B9816:
mov 0x5C,r1 ; r1 set to 0x5c
mov r14,r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9850,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
mov.l @r15+,r14

loc_8C0B983E:
#data 0x041c
#data 0x40800000

#align4
loc_8C0B9844:
#data 0x8c03340c

loc_8C0B9848:
#data 0x8c0B850c

loc_8C0B984C:
#data 0x8c0B8538

loc_8C0B9850:
#data 0x8c034dee


loc_8C0B9854:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bf loc_8C0B98C0
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9984,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
mov.w @(loc_8C0B997C,pc),r0 ; r0 set to 0x41c
mov.l @r15,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B98C0
mov.l @r15,r5
mov r14,r4
mov 0x10,r6 ; r6 set to 0x10
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9988,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
mov.l @r15+,r14

loc_8C0B98C0:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0B98C8:
#data 0x6E432FE6
#data 0x31ECE160
#data 0x4F22E038
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x9047FE27
#data 0xE038F356
#data 0xF325F2E6
#data 0x90418B10
#data 0xF356E300
#data 0xFE37E038
#data 0x0E34903d
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89034015
#data 0xE60AD21d
#data 0x64E3420b

#align4
loc_8C0B9918:
#data 0x03EC9031
#data 0x8B022338
#data 0x430BD318
#data 0x64E3

loc_8C0B9926:
#data 0x902b
#data 0x222802Ec
#data 0xE3008909
#data 0xC7160E34
#data 0xE060F308
#data 0xC715FE37
#data 0xE06CF308
#data 0xFE37

loc_8C0B9942:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B9948:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9984,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0B9974
mov.l @r15,r5
mov r14,r4
mov 0x0B,r6 ; r6 set to 0x0b
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9988,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
mov.l @r15+,r14

loc_8C0B9974:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B997C:
#data 0x041c
#data 0x0140
#data 0x00000141

#align4
loc_8C0B9984:
#data 0x8c034dee

loc_8C0B9988:
#data 0x8c0B8538
#data 0x41092492
#data 0xBF4DB6Db


loc_8C0B9994:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B99B6
mov.l @r15,r4
mov 0x0B,r6 ; r6 set to 0x0b
mov.l @(0x04,r15),r5
add 0x08,r15
mov.l @(loc_8C0B9A64,pc),r3 ; r3 set to 0x8C0B8538
jmp @r3
lds.l @r15+,pr 	

loc_8C0B99B6:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0B99BE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bf/s loc_8C0B9A36
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
mov.w @(loc_8C0B9A5C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B9A54
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0B9A68,pc),r3 ; r3 set to 0x8C034E8c
mov 0x03,r6 ; r6 set to 0x03
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14) 	
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0B9A5C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9A36:
mov.l @(loc_8C0B9A60,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9A54
lds.l @r15+,pr 	
mov r13,r5
mov.b @(0x07,r14),r0 	
mov.l @(loc_8C0B9A64,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
extu.b r0,r6
jmp @r3
mov.l @r15+,r14

loc_8C0B9A54:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B9A5C:
#data 0x041c
#data 0x0000

#align4
loc_8C0B9A60:
#data 0x8c034dee

loc_8C0B9A64:
#data 0x8c0B8538

loc_8C0B9A68:
#data 0x8c034e8c


loc_8C0B9A6C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bt/s loc_8C0B9A82
mov r5,r13
bra loc_8C0B9BD4
nop 	

loc_8C0B9A82:
#data 0xE160
#data 0x31ECD339
#data 0xF318E038
#data 0xE16CF2E6
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xDC3285Ef
#data 0x81EF70Ff
#data 0x2008600f
#data 0x84D58B27
#data 0x8B242008
#data 0x420BD22e
#data 0x200864E3
#data 0x85DF891f
#data 0x8B1C4015
#data 0xE512D22b
#data 0x64D3420b
#data 0x8D162008
#data 0x90446403
#data 0x042502Ed
#data 0xF408C727
#data 0x03ED903f
#data 0x89012338
#data 0xF408C725

#align4
loc_8C0B9AEC:
#data 0xF3E6E034
#data 0xF437F340
#data 0xF308C723
#data 0xF2C69034
#data 0xF230E038
#data 0xF427

loc_8C0B9B02:
#data 0x9030
#data 0xE038F3D6
#data 0xF325F2E6
#data 0x84E68B19
#data 0x7001D318
#data 0x902680E6
#data 0xE038F3D6
#data 0x430BFE37
#data 0x200864E3
#data 0xE6038D05
#data 0x6043E401
#data 0x80C50009
#data 0x80C6

loc_8C0B9B32:
#data 0xD315
#data 0x430BE501
#data 0xD21464E3
#data 0x420BE535
#data 0x64E3

loc_8C0B9B42:
#data 0x9011
#data 0x233803Ec
#data 0xC7118926
#data 0x9008F408
#data 0x233803Ed
#data 0xC70F8901
#data 0xF408

loc_8C0B9B5A:
#data 0xE05c
#data 0xA02AFE47
#data 0x0130E609
#data 0x041C0090
#data 0x0000019f

#align4
loc_8C0B9B6C:
#data 0x8c034dee
#data 0x8C26A518

#align4
loc_8C0B9B74:
#data 0x8c03340c

loc_8C0B9B78:
#data 0x8c0B83F8
#data 0xC2820000
#data 0x42820000
#data 0x43092492

#align4
loc_8C0B9B88:
#data 0x8c034e8c

loc_8C0B9B8C:
#data 0x8c04223a
#data 0xC0D55555
#data 0x40D55555

#align4
loc_8C0B9B98:
#data 0x00EC9098
#data 0x8912C811
#data 0xF408C74c
#data 0x03ED9093
#data 0x89012338
#data 0xF408C74a

#align4
loc_8C0B9BB0:
#data 0xE60DE05c
#data 0xFE47

loc_8C0B9BB6:
#data 0x4F26
#data 0xD34865D3
#data 0x6CF664E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C0B9BC6:
#data 0x4F26
#data 0x64E3D245
#data 0x6DF66CF6
#data 0x6EF6422b


loc_8C0B9BD4:
mov.l @(loc_8C0B9CE4,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9BF4
lds.l @r15+,pr 	
mov r13,r5
mov.b @(0x07,r14),r0 	
mov.l @(loc_8C0B9CDC,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r12
extu.b r0,r6
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9BF4:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B9BFE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bf/s loc_8C0B9C7e
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0B9CE4,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
mov.w @(loc_8C0B9CD0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0B9C9c
mov.b @(0x06,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov.l @(loc_8C0B9CE8,pc),r3 ; r3 set to 0x8C034E8c
mov 0x33,r6 ; r6 set to 0x33
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0B9CD0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0B9CEC,pc),r2 ; r2 set to 0x8C0BA710
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B9C7E:
mov.l @(loc_8C0B9CE4,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0B9C9c
lds.l @r15+,pr 	
mov r13,r5
mov.b @(0x07,r14),r0 	
mov.l @(loc_8C0B9CDC,pc),r3 ; r3 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
extu.b r0,r6
jmp @r3
mov.l @r15+,r14

loc_8C0B9C9C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B9CA4:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bf/s loc_8C0B9D46
mov r4,r14
mov.l @(loc_8C0B9CF0,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9CF8
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9CF4,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x0130019e

loc_8C0B9CD0:
#data 0x041c
#data 0x0000
#data 0xC1555555
#data 0x41555555

#align4
loc_8C0B9CDC:
#data 0x8c0B8538

loc_8C0B9CE0:
#data 0x8c045748

loc_8C0B9CE4:
#data 0x8c034dee

loc_8C0B9CE8:
#data 0x8c034e8c

loc_8C0B9CEC:
#data 0x8c0BA710

loc_8C0B9CF0:
#data 0x8c03340c

loc_8C0B9CF4:
#data 0x8c0B850c

loc_8C0B9CF8:
#data 0xE204906a
#data 0xD336E15c
#data 0x31EC0D26
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B314011
#data 0x04EE9051
#data 0x89352448
#data 0x600C8445
#data 0x8D04880d
#data 0x60536503
#data 0x88090009
#data 0x8B07


loc_8C0B9D46:
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9DDC,pc),r3 ; r3 set to 0x8C0B8538
mov 0x0F,r6 ; r6 set to 0x0f
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0B9D56:
#data 0x903d
#data 0x2228024c
#data 0x00EC8905
#data 0x8D16C811
#data 0xA014E60e
#data 0xE60f

loc_8C0B9D6A:
#data 0xC71d
#data 0x9032F408
#data 0x233803Ed
#data 0xC71B8901
#data 0xF408

loc_8C0B9D7A:
#data 0xE034
#data 0xF340F3E6
#data 0xC719F437
#data 0xE038F308
#data 0xF230F2E6
#data 0xF427A008

loc_8C0B9D90:
#data 0xE615

loc_8C0B9D92:
#data 0x4F26
#data 0xD21165D3
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0B9DA0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0B9DA8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r13),r0 	
tst r0,r0
bf/s loc_8C0B9E32
mov r4,r14
mov.l @(loc_8C0B9DEC,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9DF4
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9DF0,pc),r3 ; r3 set to 0x8C0B850c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x00D402A4
#data 0x0130019e

#align4
loc_8C0B9DD8:
#data 0x8c034dee

loc_8C0B9DDC:
#data 0x8c0B8538
#data 0x40D55555
#data 0xC0D55555
#data 0x421A4924

#align4
loc_8C0B9DEC:
#data 0x8c03340c

loc_8C0B9DF0:
#data 0x8c0B850c


loc_8C0B9DF4:
mov.l @(loc_8C0B9EC0,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pz r0
bf loc_8C0B9E32
mov.w @(loc_8C0B9EBA,pc),r0 ; r0 set to 0xD4
mov.l @(r0,r14),r4
tst r4,r4
bt loc_8C0B9E32
mov.b @(0x05,r4),r0 	
extu.b r0,r0 ; r0 set to 0xD4
cmp/eq 0x09,r0 	
bt loc_8C0B9E32
mov.b @(0x05,r4),r0 	
extu.b r0,r0 ; r0 set to 0xD4
cmp/eq 0x0D,r0 	
bt loc_8C0B9E32
mov.w @(loc_8C0B9EBC,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0B9E42
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
tst 0x11,r0 	
bt/s loc_8C0B9E34
mov 0x0E,r6 ; r6 set to 0x0e
bra loc_8C0B9E34
mov 0x0F,r6

loc_8C0B9E32:
mov 0x0F,r6 ; r6 set to 0x0f

loc_8C0B9E34:
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0B9EC4,pc),r2 ; r2 set to 0x8C0B8538, r2 set to 0x8C0B8538
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0B9E42:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0B9E4A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0B9EC8,pc),r3 ; r3 set to 0x8C03340c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0B9E6c
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9ECC,pc),r3 ; r3 set to 0x8C0B850c
jmp @r3
mov.l @r15+,r14

loc_8C0B9E6C:
mov 0x5C,r1 ; r1 set to 0x5c
mov r14,r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0B9EC0,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
mov.l @r15+,r14

loc_8C0B9E94:
mov.w @(loc_8C0B9EBE,pc),r0 ; r0 set to 0x19c
mov 0x44,r5 ; r5 set to 0x44
mov 0x20,r3 ; r3 set to 0x20
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r5,@(r0,r4) 	
add 0xA2,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13d
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r4) 	
add 0xF2,r0 ; r0 set to 0x12e
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
add 0x06,r3
rts 	
mov.w r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0B9EBA:
#data 0x00D4

loc_8C0B9EBC:
#data 0x019e

loc_8C0B9EBE:
#data 0x019c

#align4
loc_8C0B9EC0:
#data 0x8c034dee

loc_8C0B9EC4:
#data 0x8c0B8538

loc_8C0B9EC8:
#data 0x8c03340c

loc_8C0B9ECC:
#data 0x8c0B850c

loc_8C0B9ED0:
#data 0x6E432FE6
#data 0x54E64F22
#data 0x20088445
#data 0x90288B21
#data 0x600C004c
#data 0x8B1C881d
#data 0x85EFD313
#data 0x6503430b
#data 0x8D1B2008
#data 0x54E56503
#data 0x890B2448
#data 0xF408C70f
#data 0x035D9018
#data 0x89012338
#data 0xF408C70d

#align4
loc_8C0B9F0C:
#data 0xF346E034
#data 0xF537F340

#align4
loc_8C0B9F14:
#data 0x85EF1E55
#data 0x81EF70Ff
#data 0x4011600f
#data 0x8904

loc_8C0B9F22:
#data 0x4F26
#data 0x64E3D207
#data 0x6EF6422b

#align4
loc_8C0B9F2C:
#data 0x000B4F26
#data 0x01D06EF6
#data 0x00000130

#align4
loc_8C0B9F38:
#data 0x8c0B8360
#data 0x42555555
#data 0xC2555555

#align4
loc_8C0B9F44:
#data 0x8c0450C0
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD315E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D102008
#data 0xD3126403
#data 0x1434921d
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F2
#data 0x0425E026
#data 0x03ED9014
#data 0x633D9013
#data 0x60430436
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0B9F8E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0B9FB0,pc),r1 ; r1 set to 0x8C159D4c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A01
#data 0x00CC0158

#align4
loc_8C0B9FA8:
#data 0x8c044F12

loc_8C0B9FAC:
#data 0x8c0B9F8e

loc_8C0B9FB0:
#data 0x8c159D4c

loc_8C0B9FB4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22919e
#data 0x31EC84E4
#data 0x7001929a
#data 0x80E4D350
#data 0x430B9097
#data 0x909532Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9087
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3420E34
#data 0xE00C430b
#data 0xE024E308
#data 0xE54402Dc
#data 0x90750E34
#data 0x70010E54
#data 0xE0200E54
#data 0xD03C03Ec
#data 0x4308633c
#data 0x906CF436
#data 0x222802Ed
#data 0xE0348D01
#data 0xF44d

loc_8C0BA036:
#data 0xF3D6
#data 0xF48DF340
#data 0xE038FE37
#data 0xF340F3D6
#data 0xE050FE37
#data 0xE01E81Ee
#data 0xE02081Ef
#data 0x633C03Ec
#data 0x8B053347
#data 0xF308C72f
#data 0xFE37E054
#data 0xFE37E050

#align4
loc_8C0BA064:
#data 0x03ECE020
#data 0x633CD02c
#data 0xF5364308
#data 0x02ED9049
#data 0x8D012228
#data 0xF54DE05c

#align4
loc_8C0BA07C:
#data 0xE068FE57
#data 0xE060FE47
#data 0xE06CFE47
#data 0xE022FE47
#data 0x0E44E400
#data 0x9039E320
#data 0x0E34E27b
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0x0E247065
#data 0x0E45700b
#data 0xD31C70F2
#data 0x70260E44
#data 0x62320E46
#data 0x727C84E2
#data 0x4000600c
#data 0xE517012d
#data 0x7101E622
#data 0xD2160215
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0BA0DA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0 	
tst r0,r0
bf/s loc_8C0BA12c
mov r5,r13
mov.l @(loc_8C0BA128,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0BA0F8
bra loc_8C0BA2C6
nop 	

loc_8C0BA0F8:
bra loc_8C0BA132
nop 	
#data 0x00C000Dc
#data 0x01A3012c
#data 0x0130019c
#data 0x0000013f

#align4
loc_8C0BA10C:
#data 0x8c129560

loc_8C0BA110:
#data 0x8c1294C8

loc_8C0BA114:
#data 0x8c159D6c
#data 0x3F000000

#align4
loc_8C0BA11C:
#data 0x8c159D5c
#data 0x8C2896B0

#align4
loc_8C0BA124:
#data 0x8c034e8c

loc_8C0BA128:
#data 0x8c03340c


loc_8C0BA12C:
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	

loc_8C0BA132:
mov.w @(loc_8C0BA25E,pc),r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0BA13e
bra loc_8C0BA2C6
nop 	

loc_8C0BA13E:
#data 0xD24c
#data 0x64E3420b
#data 0xD34BE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x6032FE27
#data 0xC8045007
#data 0xE5328906
#data 0x64E3B0Cc
#data 0x03ECE022
#data 0x0E347301

#align4
loc_8C0BA194:
#data 0x6020D238
#data 0x8804600c
#data 0xA0988901
#data 0x0009

loc_8C0BA1A2:
#data 0x905d
#data 0x211801Dc
#data 0xE4008F0c
#data 0xD1339059
#data 0x633D03Dd
#data 0x8B052318
#data 0x401585Ee
#data 0x60438B02
#data 0x81EE0009

#align4
loc_8C0BA1C4:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x892B4011
#data 0xE2D8D328
#data 0x60329146
#data 0x31ECF39d
#data 0xF3305007
#data 0x4021C904
#data 0x21004021
#data 0xF2E6E05c
#data 0xFE27F233
#data 0x302385Ee
#data 0xE0038918
#data 0x80E4D121
#data 0x903165E3
#data 0x415A7534
#data 0x0E44E708
#data 0xF1E6E038
#data 0xF20DE601
#data 0xD31CF120
#data 0x430BFE17
#data 0x902464E3
#data 0xD31AE517
#data 0x760106Ec
#data 0x64E3430b

#align4
loc_8C0BA228:
#data 0x921DC718
#data 0x9018F408
#data 0x633D03Dd
#data 0x89032328
#data 0xF3E6E038
#data 0xFE37F340

#align4
loc_8C0BA240:
#data 0x9212900f
#data 0x633D03Dd
#data 0x89032328
#data 0xF3E6E038
#data 0xFE37F341

#align4
loc_8C0BA254:
#data 0x03EC900a
#data 0xA0192338
#data 0x0009

loc_8C0BA25E:
#data 0x019e
#data 0x034A0525
#data 0x0158012c
#data 0x10002000
#data 0x0000019f

#align4
loc_8C0BA270:
#data 0x8c034dee
#data 0x8C26823c
#data 0x8C2895F0
#data 0x00008000
#data 0x41892492

#align4
loc_8C0BA284:
#data 0x8c10235c

loc_8C0BA288:
#data 0x8c034e8c
#data 0x3FCDB6Db

#align4
loc_8C0BA290:
#data 0xC73D8B08
#data 0x9073F308
#data 0xE038F2D6
#data 0xF230F1E6
#data 0x8B0AF215

#align4
loc_8C0BA2A4:
#data 0x700184E4
#data 0xC73880E4
#data 0xE060F308
#data 0xC737FE37
#data 0xE06CF308
#data 0xFE37

loc_8C0BA2BA:
#data 0x4F26
#data 0x64E3D335
#data 0x432B6DF6
#data 0x6EF6


loc_8C0BA2C6:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BA31a
mov.l @r15+,r14

loc_8C0BA2D2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BA2DA:
#data 0xE160
#data 0x314CF18d
#data 0xF318E038
#data 0xE16CF246
#data 0xF230314c
#data 0xE060F427
#data 0xF318F246
#data 0xF230D128
#data 0xF427415a
#data 0xF30D9041
#data 0xF231F246
#data 0x8F06F125
#data 0x8444F427
#data 0x7001E300
#data 0x90378044
#data 0x0434

loc_8C0BA316:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BA31A:
mov.l @(loc_8C0BA39C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0BA384,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

#align4
loc_8C0BA324:
#data 0xFFFB2FE6
#data 0x4F22FFEb
#data 0x655F7FFc
#data 0x455A6E43
#data 0xFF08C71a
#data 0x00ECE022
#data 0xD319F32d
#data 0x600B600c
#data 0xC91F7028
#data 0x4018FE3c
#data 0x4008FEF2
#data 0x2F014000
#data 0x64F1430b
#data 0xC713FE02
#data 0xC713F008
#data 0xF008FE02
#data 0xFE03C712
#data 0xE038F008
#data 0xFEF3F3E6
#data 0xFE37F3Ee
#data 0x4F267F04
#data 0xFFF9FEF9
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0108041c

loc_8C0BA384:
#data 0x012c
#data 0x0000
#data 0xC1892492
#data 0x40892492
#data 0xBF4DB6Db

#align4
loc_8C0BA394:
#data 0x8c045748
#data 0x3D4CCCCd

#align4
loc_8C0BA39C:
#data 0x8c0450C0
#data 0x43800000

#align4
loc_8C0BA3A4:
#data 0x8c11E860
#data 0x447A0000
#data 0x47F42400
#data 0x40092492
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD315E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D102008
#data 0xD3126403
#data 0x1434921d
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F2
#data 0x0425E026
#data 0x03ED9014
#data 0x633D9013
#data 0x60430436
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BA3FA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0BA41C,pc),r1 ; r1 set to 0x8C159D7c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3A03
#data 0x00CC0158

#align4
loc_8C0BA414:
#data 0x8c044F12

loc_8C0BA418:
#data 0x8c0BA3Fa

loc_8C0BA41C:
#data 0x8c159D7c

loc_8C0BA420:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x919FFFFb
#data 0x84E44F22
#data 0x929B31Ec
#data 0xD3507001
#data 0x909880E4
#data 0x32DC430b
#data 0xE2019096
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9088FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD341
#data 0xE024E00c
#data 0x02DC61E3
#data 0x0E247134
#data 0x03ECE020
#data 0x633CD03d
#data 0xE031023c
#data 0x0E24E308
#data 0x0E34E024
#data 0xD33862D3
#data 0x430B7234
#data 0xE020E00c
#data 0xE40502Ec
#data 0x3243622c
#data 0xC7358B12
#data 0x905FF408
#data 0x233803Ed
#data 0xC7338901
#data 0xF408

loc_8C0BA4BE:
#data 0xE034
#data 0xF3E6D132
#data 0xF340415a
#data 0xE038FE37
#data 0xF30DF2E6
#data 0xFE27F230

#align4
loc_8C0BA4D4:
#data 0x03ECE020
#data 0x3343633c
#data 0xD32D8B31
#data 0x430BC72b
#data 0xC93FFF08
#data 0x40084008
#data 0x4011405a
#data 0xF32D8D04
#data 0x425AD228
#data 0xF320F20d

#align4
loc_8C0BA4FC:
#data 0xF208C727
#data 0xF3229038
#data 0x233803Ed
#data 0x8F01F43c
#data 0xF44DF4F3

#align4
loc_8C0BA510:
#data 0xE05CD320
#data 0xFE47430b
#data 0x4008C93f
#data 0x405A4008
#data 0x8D044011
#data 0xD21CF32d
#data 0xF20D425a
#data 0xF320

loc_8C0BA52E:
#data 0xC71c
#data 0xE060F208
#data 0xF3F3F322
#data 0xC71AFE37
#data 0xE06CF308
#data 0xFE37

loc_8C0BA542:
#data 0xE020
#data 0x06ECD319
#data 0xD017E51b
#data 0x066C666c
#data 0x64E3430b
#data 0x65D34F26
#data 0xFFF964E3
#data 0x6EF66DF6


loc_8C0BA560:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
bra loc_8C0BA5B0
mov r4,r14
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0BA578:
#data 0x8c129560

loc_8C0BA57C:
#data 0x8c1294C8

loc_8C0BA580:
#data 0x8c159D93
#data 0xC1555555
#data 0x41555555
#data 0x42092492
#data 0x43800000

#align4
loc_8C0BA594:
#data 0x8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x40092492
#data 0xBF4DB6Db

#align4
loc_8C0BA5A8:
#data 0x8c159D8c

loc_8C0BA5AC:
#data 0x8c034C38


loc_8C0BA5B0:
mov.w @(loc_8C0BA652,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0BA5C0
nop 	
bra loc_8C0BA6D6
nop 	

loc_8C0BA5C0:
mov.b @(0x05,r13),r0 	
tst r0,r0
bt loc_8C0BA5Ca
bra loc_8C0BA6D6
nop 	

loc_8C0BA5CA:
mov.w @(loc_8C0BA654,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0BA5D6
bra loc_8C0BA6E2
nop 	

loc_8C0BA5D6:
#data 0xE031
#data 0x233803Ec
#data 0xE0248902
#data 0x0E3403Dc

#align4
loc_8C0BA5E4:
#data 0x00ECE020
#data 0x8803600c
#data 0x8804890d
#data 0x8801890b
#data 0x88028913
#data 0x88008911
#data 0x88058912
#data 0x88068932
#data 0xA06C8930
#data 0x0009

loc_8C0BA60A:
#data 0x9024
#data 0x902303Dd
#data 0x02EE633d
#data 0x8B5E3230
#data 0xF3D6E034
#data 0xFE37

loc_8C0BA61E:
#data 0x901c
#data 0x0E3403Dc

#align4
loc_8C0BA624:
#data 0x430BD30e
#data 0x600E64E3
#data 0x8B524011
#data 0x03EC9014
#data 0x89542338
#data 0x9010D10a
#data 0xF2E6415a
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF125F28d
#data 0xA0488949
#data 0xFE27

loc_8C0BA652:
#data 0x01D0

loc_8C0BA654:
#data 0x01A0
#data 0x0158
#data 0x014200Cc
#data 0x01080141

#align4
loc_8C0BA660:
#data 0x8c034D8c
#data 0x3E000000

#align4
loc_8C0BA668:
#data 0x420BD227
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3D69033
#data 0xF2E6E038
#data 0x8B16F325
#data 0xE301902d
#data 0xE038F3D6
#data 0xE060FE37
#data 0xF34DF3E6
#data 0xF39DFE37
#data 0xF2E6F330
#data 0xFE27F233
#data 0x81EEE001
#data 0x02ECE022
#data 0x0E24223a
#data 0x2228622c
#data 0x8901

loc_8C0BA6D2:
#data 0xA006
#data 0x0009


loc_8C0BA6D6:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BA6F8
mov.l @r15+,r14

loc_8C0BA6E2:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BA6EA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BA704,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BA6F8:
mov.l @(loc_8C0BA70C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0BA704,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x041c

loc_8C0BA704:
#data 0x012c
#data 0x0000

#align4
loc_8C0BA708:
#data 0x8c034D8c

loc_8C0BA70C:
#data 0x8c0450C0


loc_8C0BA710:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
cmp/pz r13
bt/s loc_8C0BA726
mov r4,r14
mov 0x01,r6 ; r6 set to 0x01
mov r6,r5 ; r5 set to 0x01
bra loc_8C0BA72c
mov 0x00,r4

loc_8C0BA726:
#data 0x64E3
#data 0xE602E501

#align4
loc_8C0BA72C:
#data 0x420BD21f
#data 0x64030009
#data 0x89192448
#data 0x9034D21d
#data 0x14E61424
#data 0x143553E6
#data 0x902F02Ed
#data 0x932E622d
#data 0xE2F80426
#data 0x804184E1
#data 0x0435E026
#data 0x63D3E020
#data 0x432C04D4
#data 0x4D29E021
#data 0xE0230434
#data 0x04D46DDf

#align4
loc_8C0BA76C:
#data 0x00096043
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BA778:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0BA78c
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0BA794
mov.l @r15+,r14

loc_8C0BA78C:
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0BA8Fe
mov.l @r15+,r14

loc_8C0BA794:
mov r4,r3
mov.l @(loc_8C0BA7B4,pc),r1 ; r1 set to 0x8C159D9c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0158
#data 0x3A0400Cc

#align4
loc_8C0BA7AC:
#data 0x8c044F12

loc_8C0BA7B0:
#data 0x8c0BA778

loc_8C0BA7B4:
#data 0x8c159D9c

loc_8C0BA7B8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291A6
#data 0x31EC84E4
#data 0x7001D356
#data 0x909F80E4
#data 0x320C52D6
#data 0x70E4430b
#data 0xE101909b
#data 0x61E30E14
#data 0x715050D6
#data 0x80E28402
#data 0x840150D6
#data 0xE05080E1
#data 0xF33653D6
#data 0xE054FE37
#data 0xF33653D6
#data 0x9089FE37
#data 0x023C53D6
#data 0x70010E24
#data 0x023C53D6
#data 0xE0300E24
#data 0x023C53D6
#data 0x52D60E24
#data 0x7250D343
#data 0xE00C430b
#data 0xE02451D6
#data 0x031CE2Ff
#data 0x0E34E400
#data 0x0E24E031
#data 0x84E2E366
#data 0xCA01E206
#data 0x906C80E2
#data 0x70010E34
#data 0x70040E24
#data 0x0E34E330
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3367026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0xE517012d
#data 0x7101E634
#data 0xD2310215
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0BA87A:
#data 0x2FE6
#data 0x2FD66E53
#data 0x4F22E301
#data 0x600C84E4
#data 0x8D073037
#data 0x90436D43
#data 0x904202Ed
#data 0x03DE622d
#data 0x89083230

#align4
loc_8C0BA89C:
#data 0x64D3903e
#data 0x65E3F38d
#data 0x4F26FD37
#data 0xA1DE6DF6
#data 0x6EF6

loc_8C0BA8AE:
#data 0xE024
#data 0x0D2402Ec
#data 0x03EC9033
#data 0xF208C71e
#data 0x902F435a
#data 0x03EDF32d
#data 0xF43C2338
#data 0xF4228D01
#data 0xF44d

loc_8C0BA8CE:
#data 0xE034
#data 0xF340F3E6
#data 0x9024FD37
#data 0xE03803Ec
#data 0xC716F2E6
#data 0xF008435a
#data 0xD315E038
#data 0xF23EF32d
#data 0x430BFD27
#data 0x4F2664D3
#data 0x65E364D3
#data 0xA1696DF6
#data 0x6EF6


loc_8C0BA8FE:
mov r4,r3
mov.l @(loc_8C0BA940,pc),r1 ; r1 set to 0x8C159DAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x012C00Dc
#data 0x019C01A3
#data 0x00CC0158
#data 0x01410108
#data 0x01400130

#align4
loc_8C0BA924:
#data 0x8c129560

loc_8C0BA928:
#data 0x8c1294C8
#data 0x8C2896B0

#align4
loc_8C0BA930:
#data 0x8c034e8c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BA93C:
#data 0x8c034dee

loc_8C0BA940:
#data 0x8c159DAc

loc_8C0BA944:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB2F86
#data 0x4F2291A2
#data 0x31EC84E4
#data 0x7001D352
#data 0x909B80E4
#data 0x320C52E5
#data 0x70E4430b
#data 0xE1019097
#data 0x61E30E14
#data 0x715050E5
#data 0x80E28402
#data 0x840150E5
#data 0xE05080E1
#data 0xF33653E5
#data 0xE054FE37
#data 0xF33653E5
#data 0x9085FE37
#data 0x023C53E5
#data 0x70010E24
#data 0x023C53E5
#data 0xE0300E24
#data 0x023C53E5
#data 0x52E50E24
#data 0x7250D33f
#data 0xE00C430b
#data 0x51E5E208
#data 0x031CE024
#data 0x0E2461E3
#data 0xD33AE023
#data 0x0EC4EC00
#data 0x52E57134
#data 0x430B7234
#data 0xDD37E00c
#data 0x00094D0b
#data 0xC91F9263
#data 0x81EE302c
#data 0x03ECE021
#data 0x633CD033
#data 0xF4364308
#data 0x01ED905a
#data 0x8D012118
#data 0xF44DE05c

#align4
loc_8C0BA9F4:
#data 0xE068FE47
#data 0xE85CF38d
#data 0xC72DFE37
#data 0xE060F308
#data 0xC72CFE37
#data 0xE06CF308
#data 0xC72BFE37
#data 0x4D0BFF08
#data 0x600C38Ec
#data 0x7080F188
#data 0x405A600f
#data 0xF208C727
#data 0xF322F32d
#data 0xF130F3F3
#data 0xE860F81a
#data 0x38EC4D0b
#data 0xF188600c
#data 0x600F7080
#data 0xC721405a
#data 0xE366F208
#data 0xE206902d
#data 0xF322F32d
#data 0xF130F3F3
#data 0x0E34F81a
#data 0x0E247001
#data 0x7004E330
#data 0x700B0E34
#data 0x70F20EC5
#data 0x70260EC4
#data 0x0EC6D317
#data 0x623284E2
#data 0x727C600c
#data 0x012D4000
#data 0x4D0B7101
#data 0x4F260215
#data 0xD312C903
#data 0x64E36603
#data 0xE517FFF9
#data 0x68F67634
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x012C00Dc
#data 0x00B401A3
#data 0x019C0130

#align4
loc_8C0BAAA4:
#data 0x8c129560

loc_8C0BAAA8:
#data 0x8c1294C8

loc_8C0BAAAC:
#data 0x8c03319e

loc_8C0BAAB0:
#data 0x8c159DBc
#data 0x40892492
#data 0xBE892492
#data 0x43800000
#data 0x3FD55555
#data 0x40092492
#data 0x8C2896B0

#align4
loc_8C0BAACC:
#data 0x8c034e8c


loc_8C0BAAD0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0BABC4,pc),r3 ; r3 set to 0x8C034DEe
mov.l r5,@r15
mov.l @(0x14,r14),r13
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
mov 0x01,r4 ; r4 set to 0x01
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0BABBE,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf/s loc_8C0BAB6e
fldi0 fr4
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0BAB56
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BABC8,pc),r1 ; r1 set to 0x40800000
add 0x01,r0 ; r0 set to 0x39
fldi1 fr1
lds r1,fpul 	
fadd fr1,fr1 ; r1 ??	
mov.b r0,@(0x05,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fdiv fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fneg fr2
fdiv fr1,fr2
bra loc_8C0BAB62
fmov.s fr2,@(r0,r14) 	

loc_8C0BAB56:
#data 0xE05c
#data 0xE060FE47
#data 0xE06CFE47
#data 0xFE47

loc_8C0BAB62:
#data 0x902c
#data 0xE038F3D6
#data 0xE023FE37
#data 0x0E44

loc_8C0BAB6E:
#data 0x85Ee
#data 0x3037E33c
#data 0x9023890d
#data 0xD314E100
#data 0xE0210E14
#data 0x02EC6132
#data 0x622C5117
#data 0x2248321c
#data 0x90178901
#data 0x0E44

loc_8C0BAB92:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4015600f
#data 0x90108908
#data 0xFE4764E3
#data 0x7F0465F2
#data 0x6DF64F26
#data 0x6EF6A05d

#align4
loc_8C0BABB0:
#data 0x64E365F2
#data 0x4F267F04
#data 0xA0096DF6
#data 0x6EF6

loc_8C0BABBE:
#data 0x041c
#data 0x0108012c

#align4
loc_8C0BABC4:
#data 0x8c034dee

loc_8C0BABC8:
#data 0x40800000
#data 0x8C26823c

#align4
loc_8C0BABD0:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6E43E023
#data 0x03EC2F52
#data 0x893D2338
#data 0x03EC9078
#data 0x89322338
#data 0x0DEE9075
#data 0x03DC9074
#data 0x8B292338
#data 0x80E4E002
#data 0x03DC906f
#data 0x633CE060
#data 0xF32D435a
#data 0xC737FE37
#data 0xE06CF308
#data 0x9065FE37
#data 0x70FC03Dd
#data 0x332702Dd
#data 0xC7338B0b
#data 0xF308D333
#data 0xE501E06c
#data 0x430BFE37
#data 0xD23164D3
#data 0x420BE504
#data 0x64D3

loc_8C0BAC36:
#data 0xD330
#data 0x430BE52a
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6DF64F26
#data 0x6EF6A00f

#align4
loc_8C0BAC4C:
#data 0xE3009044
#data 0x0E34

loc_8C0BAC52:
#data 0x64E3
#data 0x4F267F04
#data 0x6DF6D328
#data 0x6EF6432b

#align4
loc_8C0BAC60:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BAC6A:
#data 0x9036
#data 0x2558054e
#data 0xE0348908
#data 0xF437F356
#data 0xF346E060
#data 0xF256E038
#data 0xF427F230

#align4
loc_8C0BAC84:
#data 0x314CE16c
#data 0xF318E060
#data 0xD11CF246
#data 0x415AF230
#data 0xE06CF427
#data 0xF30DF246
#data 0xF427F231
#data 0xF28DF146
#data 0x8F01F215
#data 0xF447F48d

#align4
loc_8C0BACAC:
#data 0x9018D115
#data 0xF246415a
#data 0xF30DF18d
#data 0xF125F231
#data 0xF4278F07
#data 0x8044E003
#data 0x900DE300
#data 0x70DC0434
#data 0xF447

loc_8C0BACCE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BACD2:
mov.l @(loc_8C0BAD08,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01B0019e
#data 0x013C0411
#data 0x01080424
#data 0x0000012c
#data 0x412B6DB6
#data 0x41700000

#align4
loc_8C0BACF0:
#data 0x8c059150

loc_8C0BACF4:
#data 0x8c104DF8

loc_8C0BACF8:
#data 0x8c04223a

loc_8C0BACFC:
#data 0x8c045748
#data 0x40092492
#data 0x3CA3D70a

#align4
loc_8C0BAD08:
#data 0x8c0450C0

loc_8C0BAD0C:
#data 0x7FFC4F22
#data 0xE504D353
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3506403
#data 0x1434E026
#data 0x62F2E300
#data 0x04351426

#align4
loc_8C0BAD30:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0BAD38:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0BAE54,pc),r3 ; r3 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r3,r13
mov.b @(0x01,r13),r0 	
mov r0,r13
tst r13,r13
bt loc_8C0BAD72
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
cmp/eq r13,r0
bt loc_8C0BAD6c
mov.l @(loc_8C0BAE68,pc),r1 ; r1 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov r13,r6
jsr @r1
mov r14,r4
mov r13,r0 ; r0 ??? bc r13 is ???	
nop 	
bra loc_8C0BAD84
mov.w r0,@(0x1C,r14) 	

#align4
loc_8C0BAD6C:
#data 0x430BD33f
#data 0x64E3

loc_8C0BAD72:
#data 0x52E6
#data 0x23386320
#data 0x936B8904
#data 0x303C50E6
#data 0x81EE8401


loc_8C0BAD84:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BAD8C:
mov r4,r3
mov.l @(loc_8C0BAE70,pc),r1 ; r1 set to 0x8C159DDc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BAD9E:
mov.w @(loc_8C0BAE58,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BAE74,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BAE58,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x18,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BAE5A,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.l @(loc_8C0BAE78,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r5 ; r5 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0BAE28:
mov.w @(loc_8C0BAE56,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0BAE50
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BAE5C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
bra loc_8C0BAD38
mov.w r2,@(r0,r4) 	

loc_8C0BAE50:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BAE54:
#data 0x0150

loc_8C0BAE56:
#data 0x012c

loc_8C0BAE58:
#data 0x00Dc

loc_8C0BAE5A:
#data 0x01A3

loc_8C0BAE5C:
#data 0x0130
#data 0x0000

#align4
loc_8C0BAE60:
#data 0x8c044F12

loc_8C0BAE64:
#data 0x8c0BAD8c

loc_8C0BAE68:
#data 0x8c034e8c

loc_8C0BAE6C:
#data 0x8c034dee

loc_8C0BAE70:
#data 0x8c159DDc

loc_8C0BAE74:
#data 0x8c129560

loc_8C0BAE78:
#data 0x8c1294C8


loc_8C0BAE7C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BAE8E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0BAE88:
mov.l @(loc_8C0BAE90,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BAE8E:
#data 0x012c

#align4
loc_8C0BAE90:
#data 0x8c0450C0
#data 0x4F222FE6
#data 0x2F427FF8
#data 0x00096053
#data 0xE503D351
#data 0x80F4E600
#data 0x430BEE01
#data 0x20086463
#data 0x64038D0d
#data 0xD34DE026
#data 0x314CE120
#data 0x62F21434
#data 0x1426E300
#data 0x84F404E5
#data 0xE0212100
#data 0xD3460434
#data 0xE600E503
#data 0x6463430b
#data 0x8D0C2008
#data 0xE0266403
#data 0xE120D342
#data 0x1434314c
#data 0x142662F2
#data 0x84F404E5
#data 0xE0212100
#data 0x604304E4
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BAF02:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BAFDE,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0BAFF0,pc),r2 ; r2 set to 0x8C28C690
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BAFF4,pc),r1 ; r1 set to 0x8C159DEc
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BAF1E:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0BAFF0,pc),r6 ; r6 set to 0x8C28C690
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BAFE0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0BAF44
mov.l @r6,r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
bra loc_8C0BAF4c
fadd fr3,fr2

loc_8C0BAF44:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2

loc_8C0BAF4C:
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
fmov.s fr2,@(r0,r4) 	
mov.l @r6,r3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
add r3,r1 ; r1 ??? bc r3 is ???, r1 ??? bc r3 is ???	
fmov.s @r1,fr3
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BAF60:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BAFE2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BAFF8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BAFE2,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BAFE4,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r14) 	
mov.l @(0x18,r14),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BAFE6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov.l @(0x18,r14),r2
mov.l @(loc_8C0BAFFC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0BAFE4,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB000
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0BB002
mov 0x00,r3

loc_8C0BAFDE:
#data 0x00Cc

loc_8C0BAFE0:
#data 0x0130

loc_8C0BAFE2:
#data 0x00Dc

loc_8C0BAFE4:
#data 0x012c

loc_8C0BAFE6:
#data 0x01A3

#align4
loc_8C0BAFE8:
#data 0x8c044F12

loc_8C0BAFEC:
#data 0x8c0BAF02

loc_8C0BAFF0:
#data 0x8C28C690

#align4
loc_8C0BAFF4:
#data 0x8c159DEc

loc_8C0BAFF8:
#data 0x8c129560

loc_8C0BAFFC:
#data 0x8c1294C8


loc_8C0BB000:
mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0BB002:
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(0x18,r14),r2
mov.l @(loc_8C0BB0A4,pc),r4 ; r4 set to 0x8C28C690, r4 set to 0x8C28C690
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.w r0,@(0x1C,r14) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB02a
mov.l @r4,r3
mova @(loc_8C0BB0A8,pc),r0  ; r0 set to 0x8C0BB0A8, r0 set to 0x8C0BB0A8
bra loc_8C0BB02c
fmov.s @r0,fr3

loc_8C0BB02A:
fldi0 fr3

loc_8C0BB02C:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
fmov.s fr3,@r3
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB03e
mov.l @r4,r3
mova @(loc_8C0BB0AC,pc),r0  ; r0 set to 0x8C0BB0AC, r0 set to 0x8C0BB0Ac
bra loc_8C0BB040
fmov.s @r0,fr3

loc_8C0BB03E:
fldi0 fr3

loc_8C0BB040:
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr3,@(r0,r3) 	
bsr loc_8C0BAF1e
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(loc_8C0BB0B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
mov r14,r4
lds.l @r15+,pr 	
extu.b r6,r6
shll r6
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
mov.l @r15+,r14

loc_8C0BB05C:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0BAF1e
mov r4,r14
mov.w @(loc_8C0BB09E,pc),r0 ; r0 set to 0x150
mov.l @(0x18,r14),r4
add r4,r0 ; r0 ??? bc r4 is ???	
mov.b @(0x01,r0),r0 	
cmp/eq 0x05,r0 	
bt loc_8C0BB082
mov.w @(loc_8C0BB09E,pc),r0 ; r0 set to 0x150
add r4,r0 ; r0 ??? bc r4 is ???	
mov.b @(0x01,r0),r0 	
cmp/eq 0x08,r0 	
bt loc_8C0BB082
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BB08c
mov.l @r15+,r14

loc_8C0BB082:
lds.l @r15+,pr 	
mov.l @(loc_8C0BB0B4,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0BB08C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BB0A0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0BB098:
mov.l @(loc_8C0BB0B8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BB09E:
#data 0x0150

loc_8C0BB0A0:
#data 0x012c
#data 0x0000

#align4
loc_8C0BB0A4:
#data 0x8C28C690

#align4
loc_8C0BB0A8:
#data 0xC1F00000

#align4
loc_8C0BB0AC:
#data 0x42092492

#align4
loc_8C0BB0B0:
#data 0x8c034e8c

loc_8C0BB0B4:
#data 0x8c034dee

loc_8C0BB0B8:
#data 0x8c0450C0
#data 0xE6002FE6
#data 0xE5032FD6
#data 0x6D432FC6
#data 0xEE022FB6
#data 0xDB364F22
#data 0x64634B0b
#data 0x8D0A2008
#data 0xE0266403
#data 0xE500D233
#data 0x14D61424
#data 0xE02004E5
#data 0xE0210454
#data 0xE5030454
#data 0xEC01E600
#data 0x64634B0b
#data 0x8D092008
#data 0xE0266403
#data 0x1424D22a
#data 0x04E514D6
#data 0x04C4E020
#data 0x04C4E021
#data 0xE600E503
#data 0x64634B0b
#data 0x8D092008
#data 0xE0266403
#data 0x1424D222
#data 0x04E514D6
#data 0x04E4E020
#data 0x04C4E021
#data 0x00096043
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BB140:
mov r4,r3
mov.l @(loc_8C0BB1B0,pc),r1 ; r1 set to 0x8C159DFc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BB152:
mov.l @(0x18,r4),r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BB1A4,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0BB1B4,pc),r0  ; r0 set to 0x8C0BB1B4
fmov.s @r0,fr5
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0BB17c
cmp/eq 0x01,r0 	
bt loc_8C0BB180
cmp/eq 0x02,r0 	
bt loc_8C0BB184
bra loc_8C0BB190
nop 	

loc_8C0BB17C:
bra loc_8C0BB190
fldi0 fr4

loc_8C0BB180:
bra loc_8C0BB190
fmov fr5,fr4

#align4
loc_8C0BB184:
#data 0xE301900f
#data 0x024DF45c
#data 0x0425223a

#align4
loc_8C0BB190:
#data 0x004D9009
#data 0x89002008
#data 0xF44d

loc_8C0BB19A:
#data 0xE034
#data 0xF340F346
#data 0xF437000b
;-------------------------------------------------------------------------------

loc_8C0BB1A4:
#data 0x041c
#data 0x0130

#align4
loc_8C0BB1A8:
#data 0x8c044F12

loc_8C0BB1AC:
#data 0x8c0BB140

loc_8C0BB1B0:
#data 0x8c159DFc

loc_8C0BB1B4:
#data 0x42A00000


loc_8C0BB1B8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BB29E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BB2A8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BB29E,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r14) 	
mov.l @(0x18,r14),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BB2A2,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov.l @(0x18,r14),r2
mov.l @(loc_8C0BB2AC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
bsr loc_8C0BB152
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0BB250
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0BB252
mov 0x0C,r6

loc_8C0BB250:
mov 0x0D,r6 ; r6 set to 0x0d

loc_8C0BB252:
lds.l @r15+,pr 	
mov.l @(loc_8C0BB2B0,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov r14,r4
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0BB25C:
#data 0x4F222FE6
#data 0x6E43BF77
#data 0x54E6901e
#data 0x600C004c
#data 0x8B048816
#data 0x004C9019
#data 0x8801600c
#data 0x8903

loc_8C0BB27A:
#data 0x4F26
#data 0xA00564E3
#data 0x6EF6

loc_8C0BB282:
#data 0x4F26
#data 0x64E3D30b
#data 0x6EF6432b


loc_8C0BB28C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BB2A0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0BB298:
mov.l @(loc_8C0BB2B8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BB29E:
#data 0x00Dc

loc_8C0BB2A0:
#data 0x012c

loc_8C0BB2A2:
#data 0x01A3
#data 0x01580159

#align4
loc_8C0BB2A8:
#data 0x8c129560

loc_8C0BB2AC:
#data 0x8c1294C8

loc_8C0BB2B0:
#data 0x8c034e8c

loc_8C0BB2B4:
#data 0x8c034dee

loc_8C0BB2B8:
#data 0x8c0450C0
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x2FB66ED3
#data 0x2FA66C43
#data 0x2F96EA0f
#data 0x9B634F22
#data 0xE504D932
#data 0x490BE601
#data 0x2008E400
#data 0x64038D0b
#data 0x1424D22f
#data 0x84C114C6
#data 0xE0208041
#data 0xE02104D4
#data 0xE02604E4
#data 0x7E0104B5
#data 0x8BEA3EA3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0xEE002FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x2FA6EB01
#data 0x2F96EA02
#data 0x9C374F22
#data 0xE504D91c
#data 0x490BE601
#data 0x2008E400
#data 0x64038D0b
#data 0x1424D219
#data 0x84D114D6
#data 0xE0208041
#data 0xE02104B4
#data 0xE02604E4
#data 0x7E0104C5
#data 0x8BEA3EA3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BB36C:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0BB3A8,pc),r0 ; r0 set to 0x8C159E0c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BB38A:
mov r4,r3
mov.l @(loc_8C0BB3AC,pc),r1 ; r1 set to 0x8C159E14
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00000300

#align4
loc_8C0BB3A0:
#data 0x8c044F12

loc_8C0BB3A4:
#data 0x8c0BB36c

loc_8C0BB3A8:
#data 0x8c159E0c

loc_8C0BB3AC:
#data 0x8c159E14

loc_8C0BB3B0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x91BC2FC6
#data 0x84E44F22
#data 0x9CB731Ec
#data 0x92B67001
#data 0x3CEC80E4
#data 0xD35D90B4
#data 0x32DC430b
#data 0xE20190B1
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x90A3FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD34f
#data 0xE024E00c
#data 0xE30302Dc
#data 0x0E24E51b
#data 0x9090E209
#data 0x81C800Dd
#data 0x0C34E01c
#data 0x81EEE004
#data 0x81EFE008
#data 0xE3FEE031
#data 0x90840E34
#data 0x0E24D345
#data 0x430B06Ec
#data 0xE02164E3
#data 0x222802Ec
#data 0xE0258B0a
#data 0x06DCD342
#data 0xD040E701
#data 0x666CE502
#data 0x066E4608
#data 0x64D3430b

#align4
loc_8C0BB45C:
#data 0xF48DE034
#data 0xD43DF3D6
#data 0xE038FE37
#data 0xF3D6FC4a
#data 0xE004FE37
#data 0xE068FC47
#data 0xE06CFE47
#data 0xC738FE47
#data 0xC738F508
#data 0xE021F408
#data 0xE00803Ec
#data 0x4308633c
#data 0x6331334c
#data 0xF32D435a
#data 0xF343F352
#data 0xC732FC37
#data 0xE021F608
#data 0x633C03Ec
#data 0x343C4308
#data 0xD42F8541
#data 0x435A6303
#data 0xF32DE00c
#data 0xF343F362
#data 0xE021FC37
#data 0xE05C03Ec
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0x435A6331
#data 0xF352F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0x63038531
#data 0xE060435a
#data 0xF362F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x343C332c
#data 0x1C058542
#data 0x03ED9018
#data 0x8B072338
#data 0xF3C6E008
#data 0xFC37F34d
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BB524:
#data 0xF2C8E05c
#data 0xE060F3E6
#data 0xFC2AF230
#data 0x0009A01c
#data 0x00DC0088
#data 0x012C00C0
#data 0x015801A3
#data 0x00000130

#align4
loc_8C0BB544:
#data 0x8c129560

loc_8C0BB548:
#data 0x8c1294C8

loc_8C0BB54C:
#data 0x8c034C38

loc_8C0BB550:
#data 0x8c159EBc

loc_8C0BB554:
#data 0x8c03544c

loc_8C0BB558:
#data 0x8c159E24
#data 0x3FD55555
#data 0x43800000
#data 0x40092492

#align4
loc_8C0BB568:
#data 0x8c159E60

loc_8C0BB56C:
#data 0xE004F3E6
#data 0xF230F2C6
#data 0xE034FC27
#data 0xF3D6F2C8
#data 0xFE27F230
#data 0xF3D6E038
#data 0xF2C6E004
#data 0xF230E038
#data 0x4F26FE27
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BB598:
mov.l r14,@-r15
mov 0x08,r0 ; r0 set to 0x08
mov.w @(loc_8C0BB6C2,pc),r14 ; r14 set to 0x88
mov.l r13,@-r15
add r4,r14 ; r14 ??? bc r4 is ???	
fmov.s fr15,@-r15
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
mov.l @(loc_8C0BB6C8,pc),r3 ; r3 set to 0x8C11E210
fadd fr3,fr2
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x0C,r0 ; r0 set to 0x0c
fmov fr2,fr15
fsub fr3,fr15
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fmov fr2,fr4
fsub fr3,fr4
jsr @r3
fmov fr15,fr5
mov.l @(loc_8C0BB6CC,pc),r2 ; r2 set to 0x8C129658
mov r0,r4 ; r4 set to 0x38
mov.w @(loc_8C0BB6C4,pc),r13 ; r13 set to 0x400
mov.l r0,@(0x18,r14) 	
mov.l @(0x14,r14),r3
jsr @r2
sub r3,r4 ; r4 ??? bc r3 is ???	
cmp/ge r13,r0
bf loc_8C0BB5F4
mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
mov.l @(0x14,r14),r3
sub r3,r2
cmp/pl r2
bf loc_8C0BB5Ee
mov.l @(0x14,r14),r2
sub r13,r2
bra loc_8C0BB5F4
mov.l r2,@(0x14,r14) 	

loc_8C0BB5EE:
#data 0x51E5
#data 0x1E1531Dc


loc_8C0BB5F4:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BB5FE:
mov.l r14,@-r15
mov.l r13,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xFC,r15
fldi1 fr15
fadd fr15,fr15
mov.w @(loc_8C0BB6C2,pc),r14 ; r14 set to 0x88
mov r4,r13
mov.l @(loc_8C0BB6D0,pc),r3 ; r3 set to 0x8C11E2E0
mov.l r5,@r15
add r13,r14 ; r14 ??? bc r13 is ???	
jsr @r3
mov.l @(0x14,r14),r4
mov 0x1C,r0 ; r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
lds r3,fpul 	
mov.l @(loc_8C0BB6D4,pc),r3 ; r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov.l @(loc_8C0BB6D8,pc),r3 ; r3 set to 0x8C11E860
mov 0x5C,r0 ; r0 set to 0x5c
fdiv fr15,fr12
fmov.s fr12,@(r0,r13) 	
jsr @r3
mov.l @(0x14,r14),r4
mov 0x1C,r0 ; r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
lds r3,fpul 	
mov.l @(loc_8C0BB6D4,pc),r3 ; r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov 0x60,r0 ; r0 set to 0x60
fdiv fr15,fr12
fmov.s fr12,@(r0,r13) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r14,fr2
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x60,r0 ; r0 set to 0x60
fadd fr3,fr2
fmov.s fr2,@r14
fmov.s @(r0,r13),fr3
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @r14,fr2
fmov.s @(r0,r3),fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r13) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r14),fr2
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r13) 	
add 0x04,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BB692:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BB6C2,pc),r4 ; r4 set to 0x88
mov.w @(loc_8C0BB6C6,pc),r3 ; r3 set to 0x158
mov.l r13,@-r15
mov r5,r13
add r13,r3 ; r3 ??? bc r13 is ???	
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.w @r3,r3
mov.w @(0x10,r4),r0 	
cmp/eq r3,r0
bt loc_8C0BB6Dc
mov.b @(0x05,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r13,r5
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x1C,r0 ; r0 set to 0x1c
mov.b r3,@(r0,r4) 	
bsr loc_8C0BB598
mov r14,r4
bra loc_8C0BB71c
nop 	

loc_8C0BB6C2:
#data 0x0088

loc_8C0BB6C4:
#data 0x0400

loc_8C0BB6C6:
#data 0x0158

#align4
loc_8C0BB6C8:
#data 0x8c11E210

loc_8C0BB6CC:
#data 0x8c129658

loc_8C0BB6D0:
#data 0x8c11E2E0

loc_8C0BB6D4:
#data 0x8c11E680

loc_8C0BB6D8:
#data 0x8c11E860


loc_8C0BB6DC:
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0BB71c
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0BB712
mov 0x1C,r0 ; r0 set to 0x1c
mov.l @(loc_8C0BB7DC,pc),r1 ; r1 set to 0x8C159ED4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
shll r0
mov.w @(r0,r1),r0
mov.w r0,@(0x1E,r14) 	
mov 0x1C,r0 ; r0 set to 0x1c
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0BB712
mov.b @(r0,r4),r3
add 0xFF,r3
mov.b r3,@(r0,r4) 	
bra loc_8C0BB714
mov 0x04,r0

loc_8C0BB712:
#data 0xE001

#align4
loc_8C0BB714:
#data 0x81EE65D3
#data 0x64E3BF3e


loc_8C0BB71C:
mov r13,r5
bsr loc_8C0BB5Fe
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0BB7E0,pc),r3 ; r3 set to 0x8C034D8c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BB72E:
mov.w @(loc_8C0BB7D4,pc),r0 ; r0 set to 0x14b
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BB74e
mov r4,r13
mov.b @(0x04,r13),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x04,r13) 	
mov.w @(loc_8C0BB7D6,pc),r0 ; r0 set to 0x12c
bra loc_8C0BB782
mov.b r3,@(r0,r13) 	

loc_8C0BB74E:
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r14),r6
mov 0x02,r5 ; r5 set to 0x02
mov.w @(loc_8C0BB7D8,pc),r0 ; r0 set to 0x140
mov 0x01,r7 ; r7 set to 0x01
extu.b r6,r6
mov.b @(r0,r14),r3
shll2 r6
mov.l @(loc_8C0BB7E4,pc),r0 ; r0 set to 0x8C159EDc
mov.l @(r0,r6),r6
add r3,r6
mov.l @(loc_8C0BB7E8,pc),r3 ; r3 set to 0x8C03544c
jsr @r3
mov r14,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
bsr loc_8C0BB598
mov r13,r4
mov r14,r5
bsr loc_8C0BB5Fe
mov r13,r4
lds.l @r15+,pr 	
mov r13,r4
mov.l @(loc_8C0BB7E0,pc),r2 ; r2 set to 0x8C034D8c
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BB782:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BB78A:
#data 0x2FE6
#data 0x20088455
#data 0x6E438F05
#data 0x005C9021
#data 0x881D600c
#data 0x8907

loc_8C0BB79E:
#data 0x84E4
#data 0x7001E300
#data 0x901680E4
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BB7AE:
#data 0x84E5
#data 0xD10E64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BB7C2:
mov r4,r3
mov.l @(loc_8C0BB7F0,pc),r1 ; r1 set to 0x8C159EFc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BB7D4:
#data 0x014b

loc_8C0BB7D6:
#data 0x012c

loc_8C0BB7D8:
#data 0x0140
#data 0x01D0

#align4
loc_8C0BB7DC:
#data 0x8c159ED4

loc_8C0BB7E0:
#data 0x8c034D8c

loc_8C0BB7E4:
#data 0x8c159EDc

loc_8C0BB7E8:
#data 0x8c03544c

loc_8C0BB7EC:
#data 0x8c159EF4

loc_8C0BB7F0:
#data 0x8c159EFc


loc_8C0BB7F4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
mov.w @(loc_8C0BB93E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BB93C,pc),r12 ; r12 set to 0x88
add 0x01,r0
mov.w @(loc_8C0BB93E,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
add r14,r12 ; r12 ??? bc r14 is ???	
mov.w @(loc_8C0BB940,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0BB954,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BB942,pc),r0 ; r0 set to 0x12c
mov 0x01,r4 ; r4 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BB944,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BB958,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x08,r3 ; r3 set to 0x08
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.w r0,@(0x10,r12) 	
mov 0x1C,r0 ; r0 set to 0x1c
mov.b r3,@(r0,r12) 	
mov.w @(loc_8C0BB948,pc),r0 ; r0 set to 0xB4
mov.w r0,@(0x1C,r14) 	
mov r4,r0 ; r0 set to 0x01
nop 	
mov.w r0,@(0x1E,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
mov.b r3,@(r0,r14) 	
mov 0x0A,r2 ; r2 set to 0x0a
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0BB95C,pc),r3 ; r3 set to 0x8C034C38
mov.b r2,@(r0,r14) 	
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bf loc_8C0BB896
mov.w @(loc_8C0BB94A,pc),r3 ; r3 set to 0x4000
bra loc_8C0BB89a
mov.l r3,@(0x14,r12) 	

loc_8C0BB896:
mov.l @(loc_8C0BB960,pc),r1 ; r1 set to 0xC000
mov.l r1,@(0x14,r12) 	

loc_8C0BB89A:
mov.w @(loc_8C0BB94C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BB8Aa
fldi1 fr15
mov.w @(loc_8C0BB94E,pc),r3 ; r3 set to 0xFC00, r3 set to 0xFC00
bra loc_8C0BB8Ae
mov.l r3,@(0x18,r12) 	

loc_8C0BB8AA:
mov.w @(loc_8C0BB950,pc),r1 ; r1 set to 0x400
mov.l r1,@(0x18,r12) 	

loc_8C0BB8AE:
fadd fr15,fr15
mov.l @(loc_8C0BB964,pc),r3 ; r3 set to 0x8C11E2E0, r3 set to 0x8C11E2E0
jsr @r3
mov.l @(0x14,r12),r4
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
lds r3,fpul 	
mov.l @(loc_8C0BB968,pc),r3 ; r3 set to 0x8C11E680, r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov.l @(loc_8C0BB96C,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fdiv fr15,fr12
fmov.s fr12,@(r0,r14) 	
jsr @r3
mov.l @(0x14,r12),r4
mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
fmov fr0,fr12
mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
lds r3,fpul 	
mov.l @(loc_8C0BB968,pc),r3 ; r3 set to 0x8C11E680, r3 set to 0x8C11E680
float fpul,fr5
jsr @r3
fmov fr15,fr4
fmul fr0,fr12
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fdiv fr15,fr12
fmov.s fr12,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
mova @(loc_8C0BB970,pc),r0  ; r0 set to 0x8C0BB970, r0 set to 0x8C0BB970
fadd fr3,fr2
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BB91A:
mov.w @(loc_8C0BB946,pc),r3 ; r3 set to 0x158
mov.w @(loc_8C0BB93C,pc),r6 ; r6 set to 0x88
add r5,r3 ; r3 ??? bc r5 is ???	
add r4,r6 ; r6 ??? bc r4 is ???	
mov.w @r3,r3
mov.w @(0x10,r6),r0 	
cmp/eq r3,r0
bt loc_8C0BB974
mov.w @(loc_8C0BB946,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w r0,@(0x10,r6) 	
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x01,r0 ; r0 set to 0x01
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BB93C:
#data 0x0088

loc_8C0BB93E:
#data 0x00Dc

loc_8C0BB940:
#data 0x00C0

loc_8C0BB942:
#data 0x012c

loc_8C0BB944:
#data 0x01A3

loc_8C0BB946:
#data 0x0158

loc_8C0BB948:
#data 0x00B4

loc_8C0BB94A:
#data 0x4000

loc_8C0BB94C:
#data 0x0130

loc_8C0BB94E:
#data 0xFC00

loc_8C0BB950:
#data 0x0400
#data 0x0000

#align4
loc_8C0BB954:
#data 0x8c129560

loc_8C0BB958:
#data 0x8c1294C8

loc_8C0BB95C:
#data 0x8c034C38

loc_8C0BB960:
#data 0x0000C000

#align4
loc_8C0BB964:
#data 0x8c11E2E0

loc_8C0BB968:
#data 0x8c11E680

loc_8C0BB96C:
#data 0x8c11E860

loc_8C0BB970:
#data 0x43092492


loc_8C0BB974:
mov.b @(0x06,r5),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/gt r3,r0
bt loc_8C0BB98c
mov.w @(loc_8C0BBA9C,pc),r0 ; r0 set to 0x140
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
cmp/eq 0x02,r0 	
bf loc_8C0BB98c
mov.l @(loc_8C0BBAA8,pc),r2 ; r2 set to 0x8C034D8c
jmp @r2
nop 	

loc_8C0BB98C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BB990:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BBAA0,pc),r3 ; r3 set to 0x2A4
mov r5,r12
mov.w @(loc_8C0BBA9E,pc),r13 ; r13 set to 0x88
mov r4,r14
add r12,r3 ; r3 ??? bc r12 is ???	
mov.l r3,@r15
add r14,r13 ; r13 ??? bc r14 is ???	
mov.w @(loc_8C0BBAA2,pc),r3 ; r3 set to 0x158
mov.w @(0x10,r13),r0 	
add r12,r3 ; r3 ??? bc r12 is ???	
mov.w @r3,r3
cmp/eq r3,r0
bt loc_8C0BB9C4
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x08,r0 ; r0 set to 0x08
bra loc_8C0BBA8c
mov.w r0,@(0x1C,r14) 	

#align4
loc_8C0BB9C4:
#data 0x03EC906e
#data 0x89042338
#data 0x0E34E300
#data 0x430BD336
#data 0x64E3

loc_8C0BB9D6:
#data 0xD436
#data 0xE101E03c
#data 0xE03B024d
#data 0x622D034c
#data 0x413C633c
#data 0x8B4F2218
#data 0x20088446
#data 0xD32D8B1c
#data 0x64E3430b
#data 0x200885Ef
#data 0x85EF8903
#data 0xA04370Ff
#data 0x81Ef

loc_8C0BBA06:
#data 0x9049
#data 0x233803Ec
#data 0xE0018B0e
#data 0xE01381Ef
#data 0x52D553D6
#data 0x1D25323c
#data 0x031C61F2
#data 0x89032338
#data 0x53D652D5
#data 0x1D25323c

#align4
loc_8C0BBA2C:
#data 0xFFF0FF9d
#data 0x430BD320
#data 0xE01C54D5
#data 0x03DCFC0c
#data 0xD31E435a
#data 0x430BF52d
#data 0xFC02F4Fc
#data 0xE05CD31c
#data 0xFEC7FCF3
#data 0x54D5430b
#data 0xFC0CE01c
#data 0x435A03Dc
#data 0xF52DD316
#data 0xF4FC430b
#data 0xE060FC02
#data 0xFEC7FCF3
#data 0xF3E6E05c
#data 0xF2C6E034
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF2C6E038
#data 0xF230C70f
#data 0xE038F308
#data 0xFE27F230


loc_8C0BBA8C:
add 0x04,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr12
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BBA9C:
#data 0x0140

loc_8C0BBA9E:
#data 0x0088

loc_8C0BBAA0:
#data 0x02A4

loc_8C0BBAA2:
#data 0x0158
#data 0x00000141

#align4
loc_8C0BBAA8:
#data 0x8c034D8c

loc_8C0BBAAC:
#data 0x8c062756
#data 0x8C2895F0

#align4
loc_8C0BBAB4:
#data 0x8c11E2E0

loc_8C0BBAB8:
#data 0x8c11E680

loc_8C0BBABC:
#data 0x8c11E860
#data 0x43092492

#align4
loc_8C0BBAC4:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B05
#data 0x7001E300
#data 0x902C8044
#data 0x0434

loc_8C0BBADE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BBAE2:
#data 0x2FE6
#data 0x20088455
#data 0x6E438F09
#data 0x005C9024
#data 0x881D600c
#data 0xD311890b
#data 0x22286230
#data 0x8B07

loc_8C0BBAFE:
#data 0x84E4
#data 0x7001E300
#data 0x901680E4
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BBB0E:
#data 0x84E5
#data 0xD10B64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BBB22:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BBB36,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BBB30:
mov.l @(loc_8C0BBB44,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BBB36:
#data 0x012c
#data 0x000001D0
#data 0x8C2895F6

#align4
loc_8C0BBB40:
#data 0x8c159F0c

loc_8C0BBB44:
#data 0x8c0450C0
#data 0x7FFC4F22
#data 0xE503D353
#data 0xE6012F42
#data 0xE400430b
#data 0x8D0F2008
#data 0xE5006403
#data 0x1434D34f
#data 0x62F29394
#data 0x60F21426
#data 0x80418401
#data 0x0454E020
#data 0x0454E021
#data 0x0435E026
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BBB84:
#data 0xE6032FE6
#data 0xD3444F22
#data 0x430B6E43
#data 0x20086563
#data 0x64038D11
#data 0x1434D341
#data 0x52E6E301
#data 0x14E51426
#data 0x804184E1
#data 0x0434E020
#data 0x02ECE021
#data 0x7201936e
#data 0xE0260424
#data 0x0435

loc_8C0BBBBA:
#data 0x6043
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BBBC4:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0BBCA4,pc),r0 ; r0 set to 0x8C159F18
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BBBE2:
mov r4,r3
mov.l @(loc_8C0BBCA8,pc),r1 ; r1 set to 0x8C159F20
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBBF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BBC92,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BBC92,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BBCAC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BBC94,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BBC96,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BBC98,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BBCB0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x04,r3 ; r3 set to 0x04
mov 0x0F,r5 ; r5 set to 0x0f
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_8C0BBCB4,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
mov.w @(loc_8C0BBC9A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bt loc_8C0BBC70
mova @(loc_8C0BBCB8,pc),r0  ; r0 set to 0x8C0BBCB8
bra loc_8C0BBC74
fmov.s @r0,fr3

loc_8C0BBC70:
mova @(loc_8C0BBCBC,pc),r0  ; r0 init to 0x8C0BBCBc
fmov.s @r0,fr3

loc_8C0BBC74:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0BBCC0,pc),r0  ; r0 set to 0x8C0BBCC0, r0 set to 0x8C0BBCC0
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0301

loc_8C0BBC92:
#data 0x00Dc

loc_8C0BBC94:
#data 0x00C0

loc_8C0BBC96:
#data 0x012c

loc_8C0BBC98:
#data 0x01A3

loc_8C0BBC9A:
#data 0x0130

#align4
loc_8C0BBC9C:
#data 0x8c044F12

loc_8C0BBCA0:
#data 0x8c0BBBC4

loc_8C0BBCA4:
#data 0x8c159F18

loc_8C0BBCA8:
#data 0x8c159F20

loc_8C0BBCAC:
#data 0x8c129560

loc_8C0BBCB0:
#data 0x8c1294C8

loc_8C0BBCB4:
#data 0x8c034e8c

loc_8C0BBCB8:
#data 0x432D5555

#align4
loc_8C0BBCBC:
#data 0xC32D5555

#align4
loc_8C0BBCC0:
#data 0x430F9249


loc_8C0BBCC4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BBD90,pc),r0 ; r0 set to 0x1C8
mov r5,r13
mov.l r5,@r15
mov.l @(r0,r13),r13
add 0x35,r0 ; r0 set to 0x1Fd
mov.b @(r0,r13),r3
tst r3,r3
bf/s loc_8C0BBCFc
mov r4,r14
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x1Fe
mov.b r0,@(0x05,r14) 	
bsr loc_8C0BBB84
mov r14,r4
tst r0,r0
bt loc_8C0BBCFc
mov r14,r4
mov r13,r5
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0BBD98,pc),r3 ; r3 set to 0x8C04CC1c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BBCFC:
mov 0x21,r0 ; r0 set to 0x21
mov r14,r4
mov.b @(r0,r14),r2
mov r0,r3 ; r3 set to 0x21
add 0x5F,r3 ; r3 set to 0x80
or r3,r2
mov.b r2,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x05,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0BC0Be
mov.l @r15+,r14

loc_8C0BBD1A:
#data 0x9039
#data 0x0E5E2FE6
#data 0x93367035
#data 0x222802Ec
#data 0x353C8F06
#data 0x9131E021
#data 0x622C024c
#data 0x8B043213

#align4
loc_8C0BBD38:
#data 0x70018445
#data 0x000B8045
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BBD42:
#data 0xE01b
#data 0x2338035c
#data 0xD3138B03
#data 0x432B65E3
#data 0x6EF6

loc_8C0BBD52:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BBD56:
#data 0xE021
#data 0x2338034c
#data 0x84448904
#data 0x80447001
#data 0x8056E002

#align4
loc_8C0BBD68:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0BBD6C:
mov r4,r3
mov.l @(loc_8C0BBD9C,pc),r1 ; r1 set to 0x8C159F30
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBD7E:
mov r4,r3
mov.l @(loc_8C0BBDA0,pc),r1 ; r1 set to 0x8C159F3c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BBD90:
#data 0x01C8
#data 0x02A4
#data 0x00000080

#align4
loc_8C0BBD98:
#data 0x8c04CC1c

loc_8C0BBD9C:
#data 0x8c159F30

loc_8C0BBDA0:
#data 0x8c159F3c


loc_8C0BBDA4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BBEBA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BBEBA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BBEC4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BBEBC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BBEBE,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BBEC0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BBEC8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov 0x14,r5 ; r5 set to 0x14
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0BBECC,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
mova @(loc_8C0BBED0,pc),r0  ; r0 set to 0x8C0BBED0
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0BBED4,pc),r0  ; r0 set to 0x8C0BBED4
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BBEC2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0BBE3a
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
bra loc_8C0BBE4a
fadd fr3,fr2

loc_8C0BBE3A:
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr3
fsub fr3,fr2

loc_8C0BBE4A:
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0BBED8,pc),r0  ; r0 set to 0x8C0BBED8, r0 init to 0x8C0BBED8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BBE60:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l r12,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov.l @(0x14,r4),r12
fadd fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BBE92
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
bra loc_8C0BBE9e
fadd fr2,fr1

loc_8C0BBE92:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
fsub fr2,fr1

loc_8C0BBE9E:
fmov.s fr1,@(r0,r4) 	
mova @(loc_8C0BBEE8,pc),r0  ; r0 set to 0x8C0BBEE8, r0 init to 0x8C0BBEE8
fmov.s @r0,fr6
mova @(loc_8C0BBEEC,pc),r0  ; r0 set to 0x8C0BBEEC, r0 set to 0x8C0BBEEc
fmov.s @r0,fr5
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
mov.l @(loc_8C0BBEE4,pc),r1 ; r1 set to 0x200000, r1 set to 0x200000
mova @(loc_8C0BBED0,pc),r0  ; r0 set to 0x8C0BBED0, r0 set to 0x8C0BBED0
mov.l @(loc_8C0BBEDC,pc),r9 ; r9 set to 0x880000, r9 set to 0x880000
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
mov.l @(loc_8C0BBEE0,pc),r10 ; r10 set to 0xFF780000, r10 set to 0xFF780000
mov r13,r14 ; r14 set to 0x00, r14 set to 0x00
bra loc_8C0BBF4e
fmov.s @r0,fr4

loc_8C0BBEBA:
#data 0x00Dc

loc_8C0BBEBC:
#data 0x00C0

loc_8C0BBEBE:
#data 0x012c

loc_8C0BBEC0:
#data 0x01A3

loc_8C0BBEC2:
#data 0x0130

#align4
loc_8C0BBEC4:
#data 0x8c129560

loc_8C0BBEC8:
#data 0x8c1294C8

loc_8C0BBECC:
#data 0x8c034e8c

loc_8C0BBED0:
#data 0x42555555

#align4
loc_8C0BBED4:
#data 0x432D5555

#align4
loc_8C0BBED8:
#data 0x430F9249

#align4
loc_8C0BBEDC:
#data 0x00880000

#align4
loc_8C0BBEE0:
#data 0xFF780000

#align4
loc_8C0BBEE4:
#data 0x00200000

#align4
loc_8C0BBEE8:
#data 0x3FD55555

#align4
loc_8C0BBEEC:
#data 0x47800000

#align4
loc_8C0BBEF0:
#data 0x02CCE021
#data 0x8D012228
#data 0x661366D3

#align4
loc_8C0BBEFC:
#data 0x034D907d
#data 0x8B002338
#data 0x666b

loc_8C0BBF06:
#data 0x465a
#data 0xF246E034
#data 0xF362F32d
#data 0xF230F353
#data 0xE068FC27
#data 0xF435F346
#data 0xA0168B01
#data 0x6E73

loc_8C0BBF22:
#data 0xF344
#data 0x84458B04
#data 0x70016E73
#data 0x8045A00f

#align4
loc_8C0BBF30:
#data 0x9062F447
#data 0x2338034d
#data 0x66938F01
#data 0x66A3

loc_8C0BBF3E:
#data 0x465a
#data 0xF256E034
#data 0xF362F32d
#data 0xF230F353
#data 0xF427


loc_8C0BBF4E:
tst r14,r14
bt loc_8C0BBEF0
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BBF5E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43904a
#data 0x2F526453
#data 0x7004044e
#data 0x7031054e
#data 0x2338034c
#data 0x84558B0a
#data 0x8802600c
#data 0x84E58906
#data 0x80E57001
#data 0x64E3BDFc
#data 0x8B0D2008

#align4
loc_8C0BBF90:
#data 0x64E3E021
#data 0x630302Ec
#data 0x223B735f
#data 0xE0030E24
#data 0x65F280E5
#data 0x4F267F04
#data 0x6EF6A089

#align4
loc_8C0BBFAC:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BBFB4:
#data 0x9222E021
#data 0x633C034c
#data 0x8F033323
#data 0x84455645
#data 0x80457001

#align4
loc_8C0BBFC8:
#data 0x036CE021
#data 0x8D012338
#data 0x9515E500

#align4
loc_8C0BBFD4:
#data 0x036D9011
#data 0x8B002338
#data 0x655b

loc_8C0BBFDE:
#data 0x655f
#data 0xC708455a
#data 0xC708F208
#data 0xE034F108
#data 0xF046F32d
#data 0xF313F322
#data 0x000BF030
#data 0x0130F607
#data 0x008001C8
#data 0x00002000
#data 0x3FD55555
#data 0x43800000


loc_8C0BC00C:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(0x14,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BC034
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
bra loc_8C0BC040
fsub fr2,fr1

loc_8C0BC034:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @r1,fr2
fmov.s @(r0,r4),fr1
fadd fr2,fr1

loc_8C0BC040:
fmov.s fr1,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s @(r0,r4),fr2
fldi0 fr3
fcmp/gt fr2,fr3
bf/s loc_8C0BC066
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x69, r0 set to 0x69
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BC120,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r5),r2
mov r0,r3 ; r3 set to 0x21, r3 set to 0x21
add 0x5F,r3 ; r3 set to 0x80, r3 set to 0x80
or r3,r2
rts 	
mov.b r2,@(r0,r5) 	
;-------------------------------------------------------------------------------

loc_8C0BC066:
#data 0xE021
#data 0x2118015c
#data 0x96588900

#align4
loc_8C0BC070:
#data 0x035D9058
#data 0x8B002338
#data 0x666b

loc_8C0BC07A:
#data 0x666f
#data 0xC72C465a
#data 0xC72CF208
#data 0xE034F108
#data 0xF046F32d
#data 0xF313F322
#data 0xF507F030
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0BC098:
mov r4,r3
mov.l @(loc_8C0BC138,pc),r1 ; r1 set to 0x8C159F4c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BC0AA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BC120,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BC0B8:
mov.l @(loc_8C0BC13C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BC0BE:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(loc_8C0BC126,pc),r0 ; r0 set to 0x1C8
mov r5,r13
mov.l r4,@r15
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.w @(loc_8C0BC128,pc),r4 ; r4 set to 0x2A4
mov 0x49,r5 ; r5 set to 0x49
mov.l @(r0,r13),r14
mov 0x1B,r0 ; r0 set to 0x1b
add r13,r4 ; r4 ??? bc r13 is ???	
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BC140,pc),r3 ; r3 set to 0x8C04223a
jsr @r3
mov.l @r15,r4
mov.w @(loc_8C0BC12A,pc),r0 ; r0 set to 0x1B4
mov 0x01,r3 ; r3 set to 0x01
mov 0x02,r2 ; r2 set to 0x02
mov r15,r5 ; r5 ??? bc r15 is ???	
mov.l r13,@(r0,r14) 	
add 0x42,r0 ; r0 set to 0x1F6
mov.b r3,@(r0,r14) 	
add 0x03,r0 ; r0 set to 0x1F9
mov.b r2,@(r0,r14) 	
add 0xA8,r0 ; r0 set to 0x1A1
mov 0x23,r3 ; r3 set to 0x23
mov.w @(loc_8C0BC12C,pc),r7 ; r7 set to 0x89
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
mov 0x04,r0 ; r0 set to 0x04
add 0x04,r5
fmov.s fr3,@(r0,r15) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r3
mov 0x01,r6 ; r6 set to 0x01
fmov.s @(r0,r3),fr3
mov 0x08,r0 ; r0 set to 0x08
mov.l @(loc_8C0BC144,pc),r3 ; r3 set to 0x8C10235c
fmov.s fr3,@(r0,r15) 	
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC120:
#data 0x012c
#data 0x2000
#data 0x0130

loc_8C0BC126:
#data 0x01C8

loc_8C0BC128:
#data 0x02A4

loc_8C0BC12A:
#data 0x01B4

loc_8C0BC12C:
#data 0x0089
#data 0x0000
#data 0x3FD55555
#data 0x43800000

#align4
loc_8C0BC138:
#data 0x8c159F4c

loc_8C0BC13C:
#data 0x8c0450C0

loc_8C0BC140:
#data 0x8c04223a

loc_8C0BC144:
#data 0x8c10235c

loc_8C0BC148:
#data 0xEE002FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x2FA6EB08
#data 0x2F96EA04
#data 0x9C8E4F22
#data 0xD94a

loc_8C0BC162:
#data 0xE504
#data 0x490BE600
#data 0x20086463
#data 0x64038D0c
#data 0xD2479586
#data 0x1424354c
#data 0x84D114D6
#data 0xE0218041
#data 0xE02604E4
#data 0x25A004C5

#align4
loc_8C0BC188:
#data 0x3EB37E01
#data 0x60438BE9
#data 0x4F260009
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BC1A2:
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov r14,r4
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.l @(loc_8C0BC294,pc),r1 ; r1 set to 0x8C15ACB4
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BC1C4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0BC284,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BC284,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BC298,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BC286,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r13),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r13),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BC288,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r13),r3
mov r13,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BC29C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BC2A0,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r13),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x08,r6 ; r6 set to 0x08
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0BC236:
mov.w @(loc_8C0BC282,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.l r14,@-r15
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C0BC280,pc),r14 ; r14 set to 0x88, r14 set to 0x88
tst r3,r3
add r4,r14 ; r14 ??? bc r4 is ???, r14 ??? bc r4 is ???	
bf/s loc_8C0BC24c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.b r6,@(r0,r4) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC24C:
mov.b @(0x01,r14),r0 	
mov.b @r14,r3
cmp/eq r0,r3
bt loc_8C0BC266
mov r6,r0
nop 	
mov.b r0,@(0x07,r4) 	
mov.b r0,@(0x06,r4) 	
mov.b r0,@(0x05,r4) 	
mov.b @r14,r0
mov.b r0,@(0x01,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC266:
mov.b @r14,r0
mov.l @(loc_8C0BC2A4,pc),r1 ; r1 set to 0x8C15ACC4
and 0x0F,r0 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BC278:
mov.l @(loc_8C0BC2A8,pc),r3 ; r3 set to 0x8C0BDD6e
jmp @r3
nop 	
#data 0x0302

loc_8C0BC280:
#data 0x0088

loc_8C0BC282:
#data 0x012c

loc_8C0BC284:
#data 0x00Dc

loc_8C0BC286:
#data 0x00C0

loc_8C0BC288:
#data 0x01A3
#data 0x0000

#align4
loc_8C0BC28C:
#data 0x8c044F12

loc_8C0BC290:
#data 0x8c0BC1A2

loc_8C0BC294:
#data 0x8c15ACB4

loc_8C0BC298:
#data 0x8c129560

loc_8C0BC29C:
#data 0x8c1294C8

loc_8C0BC2A0:
#data 0x8c034C38

loc_8C0BC2A4:
#data 0x8c15ACC4

loc_8C0BC2A8:
#data 0x8c0BDD6e


loc_8C0BC2AC:
mov.w @(loc_8C0BC3CA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov r13,r5
mov.l @(loc_8C0BC3CC,pc),r3 ; r3 set to 0x8C0BDDD0
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D0,pc),r2 ; r2 set to 0x8C0BDDD8
mov r13,r5
jsr @r2
mov r14,r4
mov.l @(loc_8C0BC3D4,pc),r3 ; r3 set to 0x8C0BDE0c
mov r13,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D8,pc),r2 ; r2 set to 0x8C0BDE90
mov r13,r5
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0BC3DC,pc),r3 ; r3 set to 0x8C0BDED4
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BC2EA:
mov.w @(loc_8C0BC3CA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov r13,r5
mov.l @(loc_8C0BC3CC,pc),r3 ; r3 set to 0x8C0BDDD0
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3D0,pc),r2 ; r2 set to 0x8C0BDDD8
mov r13,r5
jsr @r2
mov r14,r4
mov.l @(loc_8C0BC3D4,pc),r3 ; r3 set to 0x8C0BDE0c
mov r13,r5
jsr @r3
mov r14,r4
mov.l @(loc_8C0BC3E0,pc),r2 ; r2 set to 0x8C0BDEB2
mov r13,r5
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0BC3DC,pc),r3 ; r3 set to 0x8C0BDED4
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BC328:
mov.b @(0x05,r4),r0 	
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r2,r3
bf loc_8C0BC2Ac
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BC33E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BC3E4,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bf loc_8C0BC3B0
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BC3B0
mov.w @(0x1C,r14),r0 	
tst r0,r0
bf loc_8C0BC3Aa
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x20
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0BC37c
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC2Ac
mov.l @r15+,r14

loc_8C0BC37C:
mov.l @(loc_8C0BC3E8,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5c
mov r13,r5
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BC3EC,pc),r3 ; r3 set to 0x8C0BDDA6
fadd fr3,fr2
mov r14,r4
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BC3AA:
#data 0x85Ee
#data 0x81EE70Ff


loc_8C0BC3B0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC3B8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BC3F0,pc),r1 ; r1 set to 0x8C15ACFc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BC3CA:
#data 0x012c

#align4
loc_8C0BC3CC:
#data 0x8c0BDDD0

loc_8C0BC3D0:
#data 0x8c0BDDD8

loc_8C0BC3D4:
#data 0x8c0BDE0c

loc_8C0BC3D8:
#data 0x8c0BDE90

loc_8C0BC3DC:
#data 0x8c0BDED4

loc_8C0BC3E0:
#data 0x8c0BDEB2

loc_8C0BC3E4:
#data 0x8c0BDD6e

loc_8C0BC3E8:
#data 0x8c034D8c

loc_8C0BC3EC:
#data 0x8c0BDDA6

loc_8C0BC3F0:
#data 0x8c15ACFc

loc_8C0BC3F4:
#data 0x6E432FE6
#data 0xE2042FD6
#data 0x6C532FC6
#data 0x84E54F22
#data 0x70019D9d
#data 0xE02180E5
#data 0x633C03Ec
#data 0x8D6E3323
#data 0xD24C3DEc
#data 0x420B65C3
#data 0x909164E3
#data 0x03CDD44b
#data 0xE0340E35
#data 0xFE37F3C6
#data 0xF3C6E038
#data 0xC746FE37
#data 0xE021F408
#data 0xC74603Ec
#data 0xE018F208
#data 0x4308633c
#data 0x334C4308
#data 0x42186231
#data 0xF32D425a
#data 0xF343F322
#data 0xE021FD37
#data 0x633C03Ec
#data 0x43084308
#data 0x8531334c
#data 0x405A4018
#data 0xF108C73b
#data 0xF32DE01c
#data 0xF343F312
#data 0xE021FD37
#data 0x600C00Ec
#data 0x40084008
#data 0x8502304c
#data 0xE02181D2
#data 0x633C03Ec
#data 0x43084308
#data 0x5232334c
#data 0x00EC1D22
#data 0x4008600c
#data 0x304C4008
#data 0x81D68506
#data 0x00ECE021
#data 0x4008600c
#data 0x304C4008
#data 0x81D78507
#data 0x03ED9046
#data 0x8B032338
#data 0xF3D6E018
#data 0xFD37F34d

#align4
loc_8C0BC4C4:
#data 0xD325E118
#data 0x64E331Dc
#data 0xF318E034
#data 0xE11CF2E6
#data 0xF23031Dc
#data 0xE51BE608
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0BC4F2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BC4FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
sts.l pr,@-r15
mov.w @(loc_8C0BC542,pc),r13 ; r13 set to 0x88
mov.l @(loc_8C0BC560,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
add r14,r13 ; r13 ??? bc r14 is ???	
exts.b r0,r0
tst r0,r0
bt loc_8C0BC564
mov.b @(0x05,r12),r0 	
tst r0,r0
bt loc_8C0BC520
bra loc_8C0BC650
nop 	

loc_8C0BC520:
mov.w @(loc_8C0BC546,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r12),r2
tst r2,r2
bt loc_8C0BC52c
bra loc_8C0BC650
nop 	

loc_8C0BC52C:
mov r12,r5
mov 0x03,r1 ; r1 set to 0x03
mov.b r1,@r13
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14) 	
mov r14,r4
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0BC7Be
mov.l @r15+,r14

loc_8C0BC542:
#data 0x0088
#data 0x0130

loc_8C0BC546:
#data 0x01D0

#align4
loc_8C0BC548:
#data 0x8c0BDDD0
#data 0x43800000

#align4
loc_8C0BC550:
#data 0x8c15AD04
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BC55C:
#data 0x8c034C38

loc_8C0BC560:
#data 0x8c0BDD6e

loc_8C0BC564:
#data 0x02ECE021
#data 0x622CE304
#data 0x896F3233
#data 0x54D285D2
#data 0x40004008
#data 0x8541340c
#data 0x635F6503
#data 0x8F162338
#data 0xC73A6641
#data 0x906FF308
#data 0xE038F2C6
#data 0xF230F1E6
#data 0x8B01F125
#data 0x80D3E0Ff

#align4
loc_8C0BC59C:
#data 0xF308C735
#data 0xF2C69064
#data 0xF1E6E038
#data 0xF215F230
#data 0xE0008B01
#data 0x80D3

loc_8C0BC5B2:
#data 0x84D3
#data 0x89002008
#data 0x655b

loc_8C0BC5BA:
#data 0x9058
#data 0x233803Ed
#data 0x666B8B00

#align4
loc_8C0BC5C4:
#data 0x4618666f
#data 0xC72B465a
#data 0xC72BF508
#data 0xE034F208
#data 0xF1C6F32d
#data 0x655FE018
#data 0x455A4518
#data 0xF322E202
#data 0xF130F353
#data 0xE034F3D6
#data 0xF32DF130
#data 0xC723FE17
#data 0xE021F108
#data 0xF31203Ec
#data 0x3323633c
#data 0x8D08F43c
#data 0xE038F453
#data 0xE01CF3C6
#data 0xF340F0D6
#data 0xA003F300
#data 0xE038

loc_8C0BC616:
#data 0xE038
#data 0xF340F3E6

#align4
loc_8C0BC61C:
#data 0x8542FE37
#data 0xE0316303
#data 0x85D60E34
#data 0x85D26303
#data 0x81D2303c
#data 0x630385D7
#data 0x203985D2
#data 0x81D2D312
#data 0x64E3430b
#data 0x65C34F26
#data 0x64E3D210
#data 0x6DF66CF6
#data 0x6EF6422b


loc_8C0BC650:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC65A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BC68C,pc),r1 ; r1 set to 0x8C15AD44
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x0130041c
#data 0x42F00000
#data 0x424DB6Db
#data 0x43800000
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BC684:
#data 0x8c034D8c

loc_8C0BC688:
#data 0x8c0BDDA6

loc_8C0BC68C:
#data 0x8c15AD44

loc_8C0BC690:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84D54F22
#data 0x20089498
#data 0x34EC8F09
#data 0x02DC9095
#data 0x8B042228
#data 0x31DC9192
#data 0x20088411
#data 0x8B07

loc_8C0BC6B6:
#data 0x65D3
#data 0x2430E301
#data 0x4F2664E3
#data 0xADF36DF6
#data 0x6EF6

loc_8C0BC6C6:
#data 0xE021
#data 0xE20403Ec
#data 0x3323633c
#data 0xD2418909
#data 0x64E3420b
#data 0x65D34F26
#data 0x64E3D33f
#data 0x432B6DF6
#data 0x6EF6

loc_8C0BC6E6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BC6EE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x04,r2 ; r2 set to 0x04
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BC7B6
mov r5,r13
mov.l @(loc_8C0BC7E0,pc),r2 ; r2 set to 0x8C0BDDD0
mov r13,r5
jsr @r2
mov r14,r4
mov.w @(loc_8C0BC7D6,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0BC7E8,pc),r5 ; r5 set to 0x8C15AD4c
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
mov 0x02,r3 ; r3 set to 0x02
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mova @(loc_8C0BC7E4,pc),r0  ; r0 set to 0x8C0BC7E4
fmov.s @r0,fr5 ; r5 ??	
mova @(loc_8C0BC7EC,pc),r0  ; r0 set to 0x8C0BC7Ec
fmov.s @r0,fr4
mov.w @(loc_8C0BC7D6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BC75c
mov r5,r4
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
extu.b r3,r3
shll2 r3
add r3,r4
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0BC778
fsub fr3,fr2

loc_8C0BC75C:
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll2 r2
add r2,r4
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fadd fr3,fr2

loc_8C0BC778:
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
fmov.s fr2,@(r0,r14) 	
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x38,r2 ; r2 set to 0x38, r2 set to 0x38
add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
extu.b r3,r3
fmov.s @r2,fr1
shll2 r3
add r3,r5
mov.w @(0x02,r5),r0 	
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mova @(loc_8C0BC7F0,pc),r0  ; r0 set to 0x8C0BC7F0, r0 init to 0x8C0BC7F0
mov.l @(loc_8C0BC7F4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s @r0,fr2
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
fdiv fr4,fr3
fadd fr3,fr1
fmov.s fr1,@r2
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC690
mov.l @r15+,r14

loc_8C0BC7B6:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BC7BE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BC7F8,pc),r1 ; r1 set to 0x8C15AD5c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x01D00088
#data 0x0150

loc_8C0BC7D6:
#data 0x0130

#align4
loc_8C0BC7D8:
#data 0x8c034D8c

loc_8C0BC7DC:
#data 0x8c0BDDA6

loc_8C0BC7E0:
#data 0x8c0BDDD0

loc_8C0BC7E4:
#data 0x3FD55555

#align4
loc_8C0BC7E8:
#data 0x8c15AD4c

loc_8C0BC7EC:
#data 0x43800000

#align4
loc_8C0BC7F0:
#data 0x40092492

#align4
loc_8C0BC7F4:
#data 0x8c034C38

loc_8C0BC7F8:
#data 0x8c15AD5c


loc_8C0BC7FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov r13,r5
mov.l @(loc_8C0BC95C,pc),r3 ; r3 set to 0x8C0BDDD0
add 0x01,r0
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0BC954,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0BC968,pc),r4 ; r4 set to 0x8C15AD64
mov.w @(r0,r13),r2
mov.w r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0BC960,pc),r0  ; r0 set to 0x8C0BC960
fmov.s @r0,fr5
mova @(loc_8C0BC964,pc),r0  ; r0 set to 0x8C0BC964
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0BC954,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0BC85e
mov r4,r5
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r5
mov.w @r5,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0BC880
fadd fr3,fr2

loc_8C0BC85E:
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
mov r2,r3
shll2 r3
shll r2
add r3,r2
add r2,r5
mov.w @r5,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fsub fr3,fr2

loc_8C0BC880:
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
fmov.s fr2,@(r0,r14) 	
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x38,r1 ; r1 set to 0x38, r1 set to 0x38
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
extu.b r3,r3
fmov.s @r1,fr1
mov r3,r2
shll r3
shll2 r2
add r2,r3
add r4,r3
mov.w @(0x02,r3),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mova @(loc_8C0BC96C,pc),r0  ; r0 set to 0x8C0BC96C, r0 init to 0x8C0BC96c
fmov.s @r0,fr2
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr4,fr3
fadd fr3,fr1
fmov.s fr1,@r1
mov.b @(r0,r14),r3
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r4
mov.l @(loc_8C0BC970,pc),r3 ; r3 set to 0x8C11E730, r3 set to 0x8C11E730
jsr @r3
mov.b r4,@(r0,r14) 	
lds.l @r15+,pr 	
mov 0x03,r7 ; r7 set to 0x03, r7 set to 0x03
mov.l @(loc_8C0BC974,pc),r2 ; r2 set to 0x8C034CD6, r2 set to 0x8C034CD6
mov r14,r4
and r0,r7 ; r7 ??, r7 ??	
mov.l @r15+,r13
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0BC8DA:
mov.w @(loc_8C0BC956,pc),r5 ; r5 set to 0x88
mov 0x10,r1 ; r1 set to 0x10
mov 0x68,r0 ; r0 set to 0x68
add r4,r5 ; r5 ??? bc r4 is ???	
fmov.s @(r0,r4),fr2
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???	
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr2
mov 0x14,r1 ; r1 set to 0x14
add r5,r1 ; r1 ??? bc r5 is ???	
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr2
fadd fr3,fr2
fmov.s @(r0,r4),fr3
fadd fr2,fr3
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BC928:
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0BC958,pc),r0 ; r0 set to 0x141
mov r5,r3
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0BC94c
mov.l @(loc_8C0BC978,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l @r15,r4
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
mov.l @(loc_8C0BC97C,pc),r3 ; r3 set to 0x8C0BDDA6
jmp @r3
lds.l @r15+,pr 	

loc_8C0BC94C:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BC954:
#data 0x0130

loc_8C0BC956:
#data 0x0088

loc_8C0BC958:
#data 0x0141
#data 0x0000

#align4
loc_8C0BC95C:
#data 0x8c0BDDD0

loc_8C0BC960:
#data 0x3FD55555

#align4
loc_8C0BC964:
#data 0x43800000

#align4
loc_8C0BC968:
#data 0x8c15AD64

loc_8C0BC96C:
#data 0x40092492

#align4
loc_8C0BC970:
#data 0x8c11e730

loc_8C0BC974:
#data 0x8c034CD6

loc_8C0BC978:
#data 0x8c034D8c

loc_8C0BC97C:
#data 0x8c0BDDA6

loc_8C0BC980:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x85EE2F52
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B022008
#data 0x700184E6
#data 0x80E6

loc_8C0BC99E:
#data 0x65F2
#data 0x64E3BF9b
#data 0x420BD24e
#data 0x65F264E3
#data 0x7F0464E3
#data 0xD34C4F26
#data 0x6EF6432b


loc_8C0BC9B8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BCAD8,pc),r0 ; r0 set to 0x141
mov.l r13,@-r15
mov r5,r13
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.w @(loc_8C0BCAD6,pc),r6 ; r6 set to 0x88
tst r3,r3
bf/s loc_8C0BC9E6
add r14,r6 ; r6 ??? bc r14 is ???	
mov.l @(loc_8C0BCAE0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0BCAE4,pc),r2 ; r2 set to 0x8C0BDDA6
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0BC9E6:
#data 0x84E6
#data 0x7001DB3f
#data 0xE03480E6
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xE021FE37
#data 0xC73B05Ec
#data 0xC73BF508
#data 0xF408655c
#data 0x45006353
#data 0x4508353c
#data 0x35BC4500
#data 0xE0605351
#data 0x435A6452
#data 0xF352F32d
#data 0xFE37F343
#data 0x01ECE021
#data 0x611CE06c
#data 0x41006313
#data 0x4108313c
#data 0x31BC4100
#data 0x57125214
#data 0x5513425a
#data 0xF352F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x633CE014
#data 0x43006233
#data 0x4308332c
#data 0x3B3C4300
#data 0x435A53B5
#data 0xF352F32d
#data 0xF637F343
#data 0x03ED9037
#data 0x8B022338
#data 0x677B655b
#data 0x644b

loc_8C0BCA76:
#data 0x445a
#data 0xF508C71e
#data 0x64E3E05c
#data 0x475AF32d
#data 0xF343F352
#data 0xF32DFE37
#data 0xE068455a
#data 0xF35265D3
#data 0xFE37F343
#data 0xE010F32d
#data 0xF343F352
#data 0xE01EF637
#data 0x4F2681Ee
#data 0x6DF66BF6
#data 0x6EF6AF68


loc_8C0BCAB0:
mov.w @(loc_8C0BCADC,pc),r0 ; r0 set to 0x159
mov.l r14,@-r15
mov r4,r14
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w @(loc_8C0BCAD6,pc),r4 ; r4 set to 0x88
extu.b r0,r0
cmp/eq 0x12,r0 	
bt/s loc_8C0BCAFc
add r14,r4 ; r4 ??? bc r14 is ???	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8C0BCAF8,pc),r2 ; r2 set to 0x8C0BDDD8
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14) 	
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
mov.b r3,@r4
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0BCAD6:
#data 0x0088

loc_8C0BCAD8:
#data 0x0141
#data 0x0130

loc_8C0BCADC:
#data 0x0159
#data 0x0000

#align4
loc_8C0BCAE0:
#data 0x8c034D8c

loc_8C0BCAE4:
#data 0x8c0BDDA6

loc_8C0BCAE8:
#data 0x8c15A85c
#data 0x40092492
#data 0x47800000
#data 0x3FD55555

#align4
loc_8C0BCAF8:
#data 0x8c0BDDD8


loc_8C0BCAFC:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0BCC04,pc),r1 ; r1 set to 0x8C15AD94
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCB0C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BCC08,pc),r1 ; r1 set to 0x8C15ADA0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCB1E:
mov.b @(0x05,r4),r0 	
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCB34
bra loc_8C0BC2Ea
nop 	

loc_8C0BCB34:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BCB38:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BCC0C,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bf loc_8C0BCBAc
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCBAc
mov.w @(0x1C,r14),r0 	
tst r0,r0
bt loc_8C0BCB66
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x20
bra loc_8C0BCBAc
mov.w r0,@(0x1C,r14) 	

loc_8C0BCB66:
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0BCB7e
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BC2Ea
mov.l @r15+,r14

loc_8C0BCB7E:
mov.l @(loc_8C0BCC10,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov 0x5C,r0 ; r0 set to 0x5c
mov r13,r5
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BCC14,pc),r3 ; r3 set to 0x8C0BDDA6
fadd fr3,fr2
mov r14,r4
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BCBAC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BCBB4:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BCC18,pc),r1 ; r1 set to 0x8C15ADA8
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BCBC6:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov 0x04,r2 ; r2 set to 0x04
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BCBFc
mov.l @(loc_8C0BCC1C,pc),r2 ; r2 set to 0x8C0BDDD0
jsr @r2
mov r14,r4
mov.l @(loc_8C0BCC20,pc),r3 ; r3 set to 0x8C11E730
jsr @r3
nop 	
lds.l @r15+,pr 	
mov.l @(loc_8C0BCC24,pc),r2 ; r2 set to 0x8C034CD6
mov 0x03,r7 ; r7 set to 0x03
mov r14,r4
and r0,r7 ; r7 ??	
mov 0x08,r6 ; r6 set to 0x08
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0BCBFC:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8C0BCC04:
#data 0x8c15AD94

loc_8C0BCC08:
#data 0x8c15ADA0

loc_8C0BCC0C:
#data 0x8c0BDD6e

loc_8C0BCC10:
#data 0x8c034D8c

loc_8C0BCC14:
#data 0x8c0BDDA6

loc_8C0BCC18:
#data 0x8c15ADA8

loc_8C0BCC1C:
#data 0x8c0BDDD0

loc_8C0BCC20:
#data 0x8c11e730

loc_8C0BCC24:
#data 0x8c034CD6


loc_8C0BCC28:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BCD6C,pc),r3 ; r3 set to 0x8C0BDD6e
jsr @r3
mov r5,r13
exts.b r0,r0
tst r0,r0
bt loc_8C0BCC40
bra loc_8C0BCD4c
nop 	

loc_8C0BCC40:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov 0x04,r2 ; r2 set to 0x04
extu.b r3,r3
cmp/ge r2,r3
bf loc_8C0BCC50
bra loc_8C0BCD4c
nop 	

#align4
loc_8C0BCC50:
#data 0x93899089
#data 0x313001Dc
#data 0xE0348978
#data 0xF5D6D445
#data 0xF7D6E038
#data 0xF608C742
#data 0x03DC907d
#data 0x01ECE021
#data 0x6233C741
#data 0x611C4300
#data 0x332CF208
#data 0x43086213
#data 0x42089073
#data 0x41004300
#data 0x334C312c
#data 0x6131331c
#data 0x415A4118
#data 0xF322F32d
#data 0x03DDF43c
#data 0x8F012338
#data 0xF44DF463

#align4
loc_8C0BCCA4:
#data 0xE034F540
#data 0x905CFE57
#data 0xE02103Dc
#data 0x623301Ec
#data 0x611C4300
#data 0x6213332c
#data 0x42084308
#data 0x41004300
#data 0x334C312c
#data 0x8531331c
#data 0x405A4018
#data 0xF208C72a
#data 0xF32DE038
#data 0xF363F322
#data 0xFE77F730
#data 0x03DC9041
#data 0x6233E021
#data 0x430001Ec
#data 0x611C332c
#data 0x43086213
#data 0x43004208
#data 0x312C4100
#data 0x331C334c
#data 0x84349133
#data 0x31EC9331
#data 0x633133Dc
#data 0x2101203a
#data 0x03DC9029
#data 0x6233E021
#data 0x332C4300
#data 0x43004308
#data 0x03EC343c
#data 0x6233633c
#data 0x43004208
#data 0x343C332c
#data 0xE131D313
#data 0x31EC8445
#data 0x430B2100
#data 0x4F2664E3
#data 0xD21065D3
#data 0x6DF664E3
#data 0x6EF6422b


loc_8C0BCD4C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BCD54:
mov r4,r3
mov.l @(loc_8C0BCD88,pc),r1 ; r1 set to 0x8C15ADB0
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0141
#data 0x01300080

#align4
loc_8C0BCD6C:
#data 0x8c0BDD6e
#data 0x43800000

#align4
loc_8C0BCD74:
#data 0x8c15A91c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BCD80:
#data 0x8c034D8c

loc_8C0BCD84:
#data 0x8c0BDDA6

loc_8C0BCD88:
#data 0x8c15ADB0

loc_8C0BCD8C:
#data 0x6E432FE6
#data 0xE2042FD6
#data 0x84E54F22
#data 0x80E57001
#data 0x03ECE021
#data 0x3323633c
#data 0x6D538D55
#data 0x65D3D24c
#data 0x64E3420b
#data 0xD44C908f
#data 0x0E3503Dd
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF408C746
#data 0x03ECE021
#data 0xF208C746
#data 0x633CE05c
#data 0x42086233
#data 0x332C4300
#data 0x6131334c
#data 0x415A4118
#data 0xF322F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x334C332c
#data 0xE1318531
#data 0x401831Ec
#data 0xC739405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x343C332c
#data 0x21008444
#data 0x03ED9053
#data 0x8B032338
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BCE38:
#data 0x430BD32d
#data 0x4F260009
#data 0xD22CE703
#data 0x270964E3
#data 0xE6086DF6
#data 0x422BE51b
#data 0x6EF6

loc_8C0BCE52:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BCE5A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x95376D53
#data 0x84D54F22
#data 0x943435Dc
#data 0x8F042008
#data 0x845C34Ec
#data 0x32006240
#data 0x8905

loc_8C0BCE7A:
#data 0xE500
#data 0x60532450
#data 0xA0220009
#data 0x80E5

loc_8C0BCE86:
#data 0xE021
#data 0xE20403Ec
#data 0x3323633c
#data 0x9021891b
#data 0x211801Dc
#data 0x901A8917
#data 0x0E3503Dd
#data 0xF3E6E05c
#data 0xF2D6E034
#data 0xF230D313
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA76E6DF6
#data 0x6EF6

loc_8C0BCECA:
#data 0x4F26
#data 0x000B6DF6
#data 0x01306EF6
#data 0x008802A4
#data 0x0000014b

#align4
loc_8C0BCEDC:
#data 0x8c0BDDD0
#data 0x43800000

#align4
loc_8C0BCEE4:
#data 0x8c15AAB4
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BCEF0:
#data 0x8c11e730

loc_8C0BCEF4:
#data 0x8c034CD6

loc_8C0BCEF8:
#data 0x8c034D8c


loc_8C0BCEFC:
mov r4,r3
mov.l @(loc_8C0BD038,pc),r1 ; r1 set to 0x8C15ADB8
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BCF0E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x6C532FC6
#data 0x65C39D8b
#data 0x84E54F22
#data 0x70013DEc
#data 0xB75380E5
#data 0x908364E3
#data 0x02CDD444
#data 0xE0340E25
#data 0xFE37F3C6
#data 0xF308C740
#data 0xF2C6E038
#data 0xFE27F230
#data 0x05ECE021
#data 0xF808C73e
#data 0x655CC73e
#data 0x6353F408
#data 0x353C4500
#data 0x45004508
#data 0x6252354c
#data 0x425A5351
#data 0x435AF22d
#data 0xF22DF52c
#data 0xF282E060
#data 0xFE27F243
#data 0x05ECE021
#data 0x655CE06c
#data 0x45006353
#data 0x4508353c
#data 0x354C4500
#data 0x53535252
#data 0xF22D425a
#data 0x5354435a
#data 0xF22DF62c
#data 0xF72C435a
#data 0xF282F22d
#data 0xFE27F243
#data 0x03ECE021
#data 0x6233633c
#data 0x332C4300
#data 0x43004308
#data 0x5345343c
#data 0x435AE014
#data 0xF282F22d
#data 0xFD27F243
#data 0x03ED9036
#data 0x8B022338
#data 0xF64DF74d
#data 0xF54d

loc_8C0BCFD2:
#data 0xC71e
#data 0xF808D31e
#data 0xF582E05c
#data 0xF782F682
#data 0xF643F543
#data 0xFE57F743
#data 0xFE67E068
#data 0xFD77E010
#data 0x430BE03c
#data 0x4F2681Ee
#data 0xD216E703
#data 0x64E3E608
#data 0x27096CF6
#data 0x6DF6E51b
#data 0x6EF6422b


loc_8C0BD00C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
mov.w @(loc_8C0BD032,pc),r4 ; r4 set to 0x88
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bt/s loc_8C0BD058
add r14,r4 ; r4 ??? bc r14 is ???	
mov r13,r5
bsr loc_8C0BC8Da
mov r14,r4
bra loc_8C0BD0Da
nop 	

loc_8C0BD032:
#data 0x0088
#data 0x00000130

#align4
loc_8C0BD038:
#data 0x8c15ADB8
#data 0x42F00000

#align4
loc_8C0BD040:
#data 0x8c15A9F4
#data 0x40092492
#data 0x47800000
#data 0x3FD55555

#align4
loc_8C0BD050:
#data 0x8c11e730

loc_8C0BD054:
#data 0x8c034CD6

loc_8C0BD058:
#data 0x700184E5
#data 0xE03480E5
#data 0xF3D6F2E6
#data 0xF231E018
#data 0xE038F427
#data 0xF3D6F2E6
#data 0xF231E01c
#data 0xE034F427
#data 0xE010F3E6
#data 0xE038F437
#data 0xE014F3E6
#data 0xC72EF437
#data 0xE05CF308
#data 0xC72DFE37
#data 0xE068F308
#data 0xC72CFE37
#data 0xE060F308
#data 0xC72BFE37
#data 0xE06CF308
#data 0xE021FE37
#data 0x600C00Ec
#data 0x8907C802
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0BD0C0:
#data 0x00ECE021
#data 0xC801600c
#data 0xE0608907
#data 0xF34DF3E6
#data 0xE06CFE37
#data 0xF34DF3E6
#data 0xFE37


loc_8C0BD0DA:
mov.l @(loc_8C0BD150,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD0EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BD13C,pc),r4 ; r4 set to 0x88
mov 0x18,r0 ; r0 set to 0x18
mov.l r13,@-r15
mov r5,r13
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
mov 0x10,r0 ; r0 set to 0x10
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x1C,r0 ; r0 set to 0x1c
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
mov 0x14,r0 ; r0 set to 0x14
fadd fr3,fr2
fldi0 fr3
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bf loc_8C0BD154
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x14,r0 ; r0 set to 0x14
fmov.s @(r0,r4),fr1
fsub fr2,fr1
fcmp/gt fr1,fr3
bf loc_8C0BD174
mov 0x6C,r0 ; r0 set to 0x6c
fldi0 fr3
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0BD16c
bra loc_8C0BD174
nop 	

loc_8C0BD13C:
#data 0x0088
#data 0x0000
#data 0x3FD55555
#data 0xBDD55555
#data 0xBFCDB6Db
#data 0x3D892492

#align4
loc_8C0BD150:
#data 0x8c034D8c

loc_8C0BD154:
#data 0xF2E6E038
#data 0xF146E014
#data 0xF135F121
#data 0xE06C8B08
#data 0xF2E6F38d
#data 0x8B03F325

#align4
loc_8C0BD16C:
#data 0xF3E6E06c
#data 0xFE37F34d

#align4
loc_8C0BD174:
#data 0xF38DE05c
#data 0xF325F2E6
#data 0xE0348B1c
#data 0xE010F2E6
#data 0xF121F146
#data 0x8B07F135
#data 0xF38DE068
#data 0xF325F2E6
#data 0xF3E68B02
#data 0xFE37F34d

#align4
loc_8C0BD19C:
#data 0xF3E6E034
#data 0xF246E010
#data 0xF38DF231
#data 0x8B15F325
#data 0xF2E6E068
#data 0x890DF235
#data 0x0009A010

#align4
loc_8C0BD1B8:
#data 0xF2E6E034
#data 0xF146E010
#data 0xF315F121
#data 0xE0688B08
#data 0xF2E6F38d
#data 0x8B03F235

#align4
loc_8C0BD1D0:
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0BD1D8:
#data 0xD31FE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA5C26DF6
#data 0x6EF6

loc_8C0BD222:
#data 0x9018
#data 0x6E432FE6
#data 0x9612005c
#data 0x9411600c
#data 0x36EC8816
#data 0x345C8D05
#data 0x6073E700
#data 0x804C0009
#data 0x2600

loc_8C0BD242:
#data 0x84E5
#data 0xD10564E3
#data 0x4008600c
#data 0x432B031e
#data 0x00886EF6
#data 0x01D002A4

#align4
loc_8C0BD258:
#data 0x8c034D8c

loc_8C0BD25C:
#data 0x8c15ADC0

loc_8C0BD260:
#data 0x6E432FE6
#data 0xE2022FD6
#data 0x84E54F22
#data 0x80E57001
#data 0x03ECE021
#data 0x3323633c
#data 0x6D538D6e
#data 0xB5A765D3
#data 0x90A164E3
#data 0x03DDD453
#data 0xE0340E35
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xC74DFE37
#data 0xC74DF608
#data 0xE021F508
#data 0xC74D03Ec
#data 0x633CF708
#data 0x43084308
#data 0x6231334c
#data 0x4218E320
#data 0xE238425a
#data 0xF32D32Ec
#data 0xF43CF352
#data 0x33ECF463
#data 0x6330F228
#data 0x4308633c
#data 0x334C4308
#data 0x40188531
#data 0xC741405a
#data 0xF372F32d
#data 0xF230F363
#data 0xF608F22a
#data 0x05ECE021
#data 0x4508655c
#data 0x354C4508
#data 0x435A5351
#data 0xF32D5352
#data 0xF352435a
#data 0xF32DF53c
#data 0xF363F372
#data 0xE131E060
#data 0xFE3731Ec
#data 0x03ECE021
#data 0x4308633c
#data 0x343C4308
#data 0x2100844c
#data 0x03ED9054
#data 0x8F022338
#data 0xF54DF563
#data 0xF44d

loc_8C0BD32A:
#data 0xE06c
#data 0xFE37F38d
#data 0xFE37E068
#data 0xF3E6E034
#data 0xF340D329
#data 0xE05CFE37
#data 0xFE57430b
#data 0xE7034F26
#data 0x64E3D226
#data 0x6DF62709
#data 0xE51BE608
#data 0x6EF6422b

#align4
loc_8C0BD358:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BD360:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x21,r0 ; r0 set to 0x21
mov r4,r14
mov 0x02,r2 ; r2 set to 0x02
mov.l r5,@r15
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt loc_8C0BD3C0
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0BD3E8,pc),r3 ; r3 set to 0x8C034D8c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
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
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD3C0:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00000130
#data 0x43800000
#data 0x3FD55555

#align4
loc_8C0BD3D4:
#data 0x8c15AAE4
#data 0x40092492
#data 0x47800000

#align4
loc_8C0BD3E0:
#data 0x8c11e730

loc_8C0BD3E4:
#data 0x8c034CD6

loc_8C0BD3E8:
#data 0x8c034D8c

loc_8C0BD3EC:
#data 0x2FE69052
#data 0x005C6E43
#data 0x600C964c
#data 0x8816944b
#data 0x8D0536Ec
#data 0xE700345c
#data 0x00096073
#data 0x2600804c

#align4
loc_8C0BD40C:
#data 0x64E384E5
#data 0x600CD121
#data 0x031E4008
#data 0x6EF6432b


loc_8C0BD41C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov 0x04,r2 ; r2 set to 0x04
mov.w @(loc_8C0BD490,pc),r4 ; r4 set to 0x88
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BD456
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0BD496,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r1
mov 0x20,r0 ; r0 set to 0x20
mov.w r1,@(r0,r4) 	
bsr loc_8C0BDDD4
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0BD49C,pc),r3 ; r3 set to 0x8C034C38
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1b
add 0x0B,r6
jmp @r3
mov.l @r15+,r14

loc_8C0BD456:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0BD45C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x95142FC6
#data 0x84D54F22
#data 0x940F35Dc
#data 0x34EC2008
#data 0xEC008F06
#data 0x024DE020
#data 0x03DD900b
#data 0x890D3230

#align4
loc_8C0BD484:
#data 0x60C324C0
#data 0x805C0009
#data 0x80E5A089

loc_8C0BD490:
#data 0x0088
#data 0x02A4
#data 0x01D0

loc_8C0BD496:
#data 0x0158

#align4
loc_8C0BD498:
#data 0x8c15ADCc

loc_8C0BD49C:
#data 0x8c034C38

loc_8C0BD4A0:
#data 0x03ECE021
#data 0x633CE204
#data 0x897A3323
#data 0xE51B97A2
#data 0x37DCD352
#data 0x67038471
#data 0x06ECE021
#data 0x430B760b
#data 0xE03464E3
#data 0xF3D69196
#data 0x31DCE236
#data 0xFE37D44d
#data 0xF3D6E038
#data 0x908EFE37
#data 0xC7490EC5
#data 0xE021F408
#data 0x841103Ec
#data 0x232E633c
#data 0x41086103
#data 0x301C4000
#data 0x334C031a
#data 0x4018003d
#data 0xC743405a
#data 0xF32DF208
#data 0xF343F322
#data 0x9175E05c
#data 0xFE3731Dc
#data 0x03ECE021
#data 0x633C8411
#data 0x6103232e
#data 0x40004108
#data 0x031A301c
#data 0x330C334c
#data 0x40188531
#data 0xC738405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x232E633c
#data 0x343C031a
#data 0x33DC9356
#data 0x63038431
#data 0x40004308
#data 0x340C303c
#data 0x61038542
#data 0x0E14E031
#data 0x03DD904b
#data 0x89092338
#data 0x9146E05c
#data 0x31ECF3E6
#data 0xFE37F34d
#data 0x00ED9041
#data 0x2101CA01

#align4
loc_8C0BD578:
#data 0x65D3E15c
#data 0x64E331Ec
#data 0xF318E034
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F231
#data 0x6CF64F26
#data 0xA4026DF6
#data 0x6EF6

loc_8C0BD5A2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BD5AC:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E439320
#data 0x6D53921f
#data 0x65D333Ec
#data 0x2F3232Dc
#data 0xB4941F21
#data 0x200864E3
#data 0x53F18906
#data 0x6043E400
#data 0x803C0009
#data 0x234063F2

#align4
loc_8C0BD5DC:
#data 0x64E384E5
#data 0x65D3D10b
#data 0x4008600c
#data 0x7F08031e
#data 0x6DF64F26
#data 0x6EF6432b
#data 0x01300150
#data 0x02A40088

#align4
loc_8C0BD5FC:
#data 0x8c034CD6
#data 0x43800000

#align4
loc_8C0BD604:
#data 0x8c15AB04
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BD610:
#data 0x8c15ADD4


loc_8C0BD614:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov 0x04,r2 ; r2 set to 0x04
mov.w @(loc_8C0BD688,pc),r4 ; r4 set to 0x88
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/ge r2,r3
bt/s loc_8C0BD64e
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0BD68A,pc),r0 ; r0 set to 0x158
mov.w @(r0,r5),r1
mov 0x20,r0 ; r0 set to 0x20
mov.w r1,@(r0,r4) 	
bsr loc_8C0BDDD4
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0BD690,pc),r3 ; r3 set to 0x8C034C38
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1b
add 0x0F,r6
jmp @r3
mov.l @r15+,r14

loc_8C0BD64E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0BD654:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x95152FC6
#data 0x84D54F22
#data 0x940F35Dc
#data 0x34EC2008
#data 0xEC008F06
#data 0x024DE020
#data 0x03DD9009
#data 0x890B3230

#align4
loc_8C0BD67C:
#data 0x60C324C0
#data 0x805C0009
#data 0x80E5A087

loc_8C0BD688:
#data 0x0088

loc_8C0BD68A:
#data 0x0158
#data 0x000002A4

#align4
loc_8C0BD690:
#data 0x8c034C38

loc_8C0BD694:
#data 0x03ECE021
#data 0x633CE204
#data 0x897A3323
#data 0xE51B97A2
#data 0x37DCD352
#data 0x67038471
#data 0x06ECE021
#data 0x430B760f
#data 0xE03464E3
#data 0xF3D69196
#data 0x31DCE21e
#data 0xFE37D44d
#data 0xF3D6E038
#data 0x908EFE37
#data 0xC7490EC5
#data 0xE021F408
#data 0x841103Ec
#data 0x232E633c
#data 0x41086103
#data 0x301C4000
#data 0x334C031a
#data 0x4018003d
#data 0xC743405a
#data 0xF32DF208
#data 0xF343F322
#data 0x9175E05c
#data 0xFE3731Dc
#data 0x03ECE021
#data 0x633C8411
#data 0x6103232e
#data 0x40004108
#data 0x031A301c
#data 0x330C334c
#data 0x40188531
#data 0xC738405a
#data 0xE060F108
#data 0xF312F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x232E633c
#data 0x343C031a
#data 0x33DC9356
#data 0x63038431
#data 0x40004308
#data 0x340C303c
#data 0x61038542
#data 0x0E14E031
#data 0x03DD904b
#data 0x89092338
#data 0x9146E05c
#data 0x31ECF3E6
#data 0xFE37F34d
#data 0x00ED9041
#data 0x2101CA01

#align4
loc_8C0BD76C:
#data 0x65D3E15c
#data 0x64E331Ec
#data 0xF318E034
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F231
#data 0x6CF64F26
#data 0xA3086DF6
#data 0x6EF6

loc_8C0BD796:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BD7A0:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E439320
#data 0x6D53921f
#data 0x65D333Ec
#data 0x2F3232Dc
#data 0xB39A1F21
#data 0x200864E3
#data 0x53F18906
#data 0x6043E400
#data 0x803C0009
#data 0x234063F2

#align4
loc_8C0BD7D0:
#data 0x64E384E5
#data 0x65D3D10b
#data 0x4008600c
#data 0x7F08031e
#data 0x6DF64F26
#data 0x6EF6432b
#data 0x01300150
#data 0x02A40088

#align4
loc_8C0BD7F0:
#data 0x8c034CD6
#data 0x43800000

#align4
loc_8C0BD7F8:
#data 0x8c15ABDc
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BD804:
#data 0x8c15ADDc


loc_8C0BD808:
mov.l r14,@-r15
mov r4,r14
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.l r13,@-r15
mov r5,r13
mov 0x01,r7 ; r7 set to 0x01
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov 0x02,r5 ; r5 set to 0x02
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r13),r6
mov.l @(loc_8C0BD8D4,pc),r0 ; r0 set to 0x8C15ADE4
extu.b r6,r6
mov.l @(loc_8C0BD8D8,pc),r3 ; r3 set to 0x8C03544c
shll2 r6
mov.l @(r0,r6),r6
jsr @r3
mov r13,r4
mov r13,r5 ; r5 ??? bc r13 is ???	
bsr loc_8C0BDDD0
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0BD8DC,pc),r3 ; r3 set to 0x8C034C38
mov 0x13,r6 ; r6 set to 0x13
mov 0x1B,r5 ; r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0BD84A:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
mov.w @(loc_8C0BD8C8,pc),r6 ; r6 set to 0x88
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
add r13,r6 ; r6 ??? bc r13 is ???	
mov.w @(loc_8C0BD8CA,pc),r5 ; r5 set to 0x2A4
tst r0,r0
bf/s loc_8C0BD8A4
add r14,r5 ; r5 ??? bc r14 is ???	
mov.w @(loc_8C0BD8CC,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0BD8A4
mov.w @(loc_8C0BD8CE,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bf loc_8C0BD8A4
mov.w @(loc_8C0BD8D0,pc),r2 ; r2 set to 0x150
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @(0x01,r2),r0 	
tst r0,r0
bt loc_8C0BD8Ae
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r13) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r13) 	
mov.w @(loc_8C0BD8D2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
mov.w r3,@(r0,r13) 	
mov.l @(loc_8C0BD8E0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r13,r4
lds.l @r15+,pr 	
mov r13,r4
mov r14,r5
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

loc_8C0BD8A4:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x0C,r5) 	
mov.b r0,@r6

loc_8C0BD8AE:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BD8B6:
mov r4,r3
mov.l @(loc_8C0BD8E4,pc),r1 ; r1 set to 0x8C15ADFc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BD8C8:
#data 0x0088

loc_8C0BD8CA:
#data 0x02A4

loc_8C0BD8CC:
#data 0x01D0

loc_8C0BD8CE:
#data 0x01E9

loc_8C0BD8D0:
#data 0x0150

loc_8C0BD8D2:
#data 0x0130

#align4
loc_8C0BD8D4:
#data 0x8c15ADE4

loc_8C0BD8D8:
#data 0x8c03544c

loc_8C0BD8DC:
#data 0x8c034C38

loc_8C0BD8E0:
#data 0x8c034D8c

loc_8C0BD8E4:
#data 0x8c15ADFc


loc_8C0BD8E8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.w @(loc_8C0BDA54,pc),r13 ; r13 set to 0x88
mov r12,r5
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
add r14,r13 ; r13 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
bsr loc_8C0BDDD0
mov r14,r4
mov.w @(loc_8C0BDA56,pc),r0 ; r0 set to 0x130
mov.w @(r0,r12),r2
mov.w r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r12),fr3
mov 0x04,r2 ; r2 set to 0x04
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0BDA58,pc),r0  ; r0 set to 0x8C0BDA58
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr2 ; r2 ??? bc r12 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/gt r2,r3
bf loc_8C0BD92c
bra loc_8C0BDA4a
nop 	

#align4
loc_8C0BD92C:
#data 0xD44DC74b
#data 0xC74BF508
#data 0xE021F408
#data 0xE05C03Ec
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x334C4300
#data 0x415A6132
#data 0xF352F32d
#data 0xFE37F343
#data 0xF608C743
#data 0x03ECE021
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x334C4300
#data 0xE0605131
#data 0xF32D415a
#data 0xF343F362
#data 0xE021FE37
#data 0xE06803Ec
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x334C4300
#data 0x415A5132
#data 0xF352F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x334C4300
#data 0xE0105133
#data 0xF32D415a
#data 0xF343F352
#data 0xE021FD37
#data 0xE06C03Ec
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x334C4300
#data 0x415A5134
#data 0xF362F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x73FF633c
#data 0x43006233
#data 0x4308332c
#data 0x343C4300
#data 0xE0145345
#data 0xF32D435a
#data 0xF343F362
#data 0x9026FD37
#data 0x233803Ed
#data 0xE05C8B0b
#data 0xF34DF3E6
#data 0xE068FE37
#data 0xF34DF3E6
#data 0xE010FE37
#data 0xF34DF3D6
#data 0xFD37

loc_8C0BDA26:
#data 0xE031
#data 0x0E34E3Fe
#data 0xD30FE03c
#data 0x81EE430b
#data 0xE7034F26
#data 0xE608D20d
#data 0x6CF664E3
#data 0xE51B2709
#data 0x422B6DF6
#data 0x6EF6


loc_8C0BDA4A:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BDA54:
#data 0x0088

loc_8C0BDA56:
#data 0x0130

#align4
loc_8C0BDA58:
#data 0x42F00000
#data 0x3FD55555
#data 0x47800000

#align4
loc_8C0BDA64:
#data 0x8c15AC54
#data 0x40092492

#align4
loc_8C0BDA6C:
#data 0x8c11e730

loc_8C0BDA70:
#data 0x8c034CD6


loc_8C0BDA74:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
mov.w @(loc_8C0BDB9E,pc),r4 ; r4 set to 0x88
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bt/s loc_8C0BDA9c
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0BDBA0,pc),r2 ; r2 set to 0x8C0BC8Da
mov r13,r5
jsr @r2
mov r14,r4
bra loc_8C0BDB1e
nop 	

#align4
loc_8C0BDA9C:
#data 0x700184E6
#data 0xE03480E6
#data 0xF3D6F2E6
#data 0xF231E018
#data 0xE038F427
#data 0xF3D6F2E6
#data 0xF231E01c
#data 0xE034F427
#data 0xE010F3E6
#data 0xE038F437
#data 0xE014F3E6
#data 0xC736F437
#data 0xE05CF308
#data 0xC735FE37
#data 0xE068F308
#data 0xC734FE37
#data 0xE060F308
#data 0xC733FE37
#data 0xE06CF308
#data 0xE021FE37
#data 0x600C00Ec
#data 0x8907C802
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0BDB04:
#data 0x00ECE021
#data 0xC801600c
#data 0xE0608907
#data 0xF34DF3E6
#data 0xE06CFE37
#data 0xF34DF3E6
#data 0xFE37


loc_8C0BDB1E:
mov.l @(loc_8C0BDBB4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0BDDA6
mov.l @r15+,r14

#align4
loc_8C0BDB30:
#data 0x6E432FE6
#data 0xE0342FD6
#data 0x6D539431
#data 0xF3D64F22
#data 0x34ECE018
#data 0xE010F246
#data 0xF427F230
#data 0xF3D6E038
#data 0xF246E01c
#data 0xF230E014
#data 0xF427F38d
#data 0xF2E6E060
#data 0x8B29F235
#data 0xF2E6E038
#data 0xF146E014
#data 0xF135F121
#data 0xE06C8B07
#data 0xF2E6F38d
#data 0x8B02F325
#data 0xF34DF3E6
#data 0xFE37

loc_8C0BDB82:
#data 0xE038
#data 0xE014F3E6
#data 0xF231F246
#data 0xF325F38d
#data 0xE06C8B22
#data 0xF235F2E6
#data 0xA01D891a
#data 0x0009

loc_8C0BDB9E:
#data 0x0088

#align4
loc_8C0BDBA0:
#data 0x8c0BC8Da
#data 0x3FD55555
#data 0xBDD55555
#data 0xBFCDB6Db
#data 0x3D892492

#align4
loc_8C0BDBB4:
#data 0x8c034D8c

loc_8C0BDBB8:
#data 0xF2E6E038
#data 0xF146E014
#data 0xF315F121
#data 0xE06C8B08
#data 0xF2E6F38d
#data 0x8B03F235

#align4
loc_8C0BDBD0:
#data 0xF3E6E06c
#data 0xFE37F34d

#align4
loc_8C0BDBD8:
#data 0xF38DE05c
#data 0xF325F2E6
#data 0xE0348B1c
#data 0xE010F2E6
#data 0xF121F146
#data 0x8B07F135
#data 0xF38DE068
#data 0xF325F2E6
#data 0xF3E68B02
#data 0xFE37F34d

#align4
loc_8C0BDC00:
#data 0xF3E6E034
#data 0xF246E010
#data 0xF38DF231
#data 0x8B15F325
#data 0xF2E6E068
#data 0x890DF235
#data 0x0009A010

#align4
loc_8C0BDC1C:
#data 0xF2E6E034
#data 0xF146E010
#data 0xF315F121
#data 0xE0688B08
#data 0xF2E6F38d
#data 0x8B03F235

#align4
loc_8C0BDC34:
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0BDC3C:
#data 0xD32AE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA0906DF6
#data 0x6EF6

loc_8C0BDC86:
#data 0x2FE6
#data 0x84556E43
#data 0x20089429
#data 0x34EC8F0a
#data 0x005C9026
#data 0x881D600c
#data 0x90228B04
#data 0x600C005c
#data 0x89038809

#align4
loc_8C0BDCA8:
#data 0x2420E200
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BDCB0:
#data 0x03ECE021
#data 0x633CE204
#data 0x89073327
#data 0x64E384E6
#data 0x600CD10a
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0BDCCC:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BDCD0:
mov r4,r3
mov.l @(loc_8C0BDCF0,pc),r1 ; r1 set to 0x8C15AE0c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0088
#data 0x01E901D0

#align4
loc_8C0BDCE8:
#data 0x8c034D8c

loc_8C0BDCEC:
#data 0x8c15AE04

loc_8C0BDCF0:
#data 0x8c15AE0c


loc_8C0BDCF4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0BDDF2,pc),r3 ; r3 set to 0x88
mov r4,r14
mov.w @(loc_8C0BDDF4,pc),r2 ; r2 set to 0x2A4
mov r5,r13
add r14,r3 ; r3 ??? bc r14 is ???	
mov r13,r5
add r13,r2 ; r2 ??? bc r13 is ???	
mov.l r3,@r15
mov.l r2,@(0x04,r15) 	
bsr loc_8C0BDF1c
mov r14,r4
tst r0,r0
bt loc_8C0BDD26
mov.l @(0x04,r15),r3
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x0C,r3) 	
mov.l @r15,r3
bra loc_8C0BDD4c
mov.b r4,@r3

loc_8C0BDD26:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/pl r3
bf loc_8C0BDD3e
mov r14,r4
mov r13,r5
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0BDCD0
mov.l @r15+,r14

loc_8C0BDD3E:
mov r14,r4
mov r13,r5
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0BD8B6
mov.l @r15+,r14

loc_8C0BDD4C:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BDD56:
bra loc_8C0BDD6e
nop 	

loc_8C0BDD5A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BDDF6,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BDD68:
mov.l @(loc_8C0BDDFC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BDD6E:
mov.b @(0x05,r5),r0 	
mov.w @(loc_8C0BDDF4,pc),r6 ; r6 set to 0x2A4
mov.w @(loc_8C0BDDF2,pc),r3 ; r3 set to 0x88
tst r0,r0
add r5,r6 ; r6 ??? bc r5 is ???	
bt/s loc_8C0BDD84
add r3,r4
mov 0x00,r1 ; r1 set to 0x00
mov.b r1,@r4
rts 	
mov 0xFF,r0
;-------------------------------------------------------------------------------

#align4
loc_8C0BDD84:
#data 0x035C9038
#data 0x633CD01d
#data 0x625E053c
#data 0x89014211
#data 0x6503846c

#align4
loc_8C0BDD98:
#data 0x84412450
#data 0x60406303
#data 0x000B3038
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BDDA6:
mov.b @r5,r3
mov.w @(loc_8C0BDDF4,pc),r6 ; r6 set to 0x2A4
mov.w @(loc_8C0BDDF2,pc),r7 ; r7 set to 0x88
tst r3,r3
add r5,r6 ; r6 ??? bc r5 is ???	
bt/s loc_8C0BDDC2
add r4,r7 ; r7 ??? bc r4 is ???	
mov.w @(loc_8C0BDDF6,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0BDDC2
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0BDDCc
mov.b r3,@(r0,r4) 	

loc_8C0BDDC2:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x0C,r6) 	
mov.b r0,@r7

loc_8C0BDDCC:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BDDD0:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BDDD4:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BDDD8:
sts.l pr,@-r15
mov.l @(loc_8C0BDE04,pc),r3 ; r3 set to 0x8C11E730
jsr @r3
mov.l r4,@-r15
and 0x03,r0 	
mov.l @r15,r4
mov r0,r6
mov 0x1B,r5 ; r5 set to 0x1b
add 0x04,r6
add 0x04,r15
mov.l @(loc_8C0BDE08,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0BDDF2:
#data 0x0088

loc_8C0BDDF4:
#data 0x02A4

loc_8C0BDDF6:
#data 0x012c
#data 0x000001D0

#align4
loc_8C0BDDFC:
#data 0x8c0450C0

loc_8C0BDE00:
#data 0x8c15AE14

loc_8C0BDE04:
#data 0x8c11e730

loc_8C0BDE08:
#data 0x8c034C38


loc_8C0BDE0C:
mov.l r14,@-r15
mov.l r13,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xFC,r15
fldi0 fr3
mov 0x6C,r0 ; r0 set to 0x6c
mov r4,r14
mov.l @(loc_8C0BDF50,pc),r13 ; r13 set to 0x8C11E730
mov.l r5,@r15
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
jsr @r13
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BDF46,pc),r3 ; r3 set to 0x3F00
mov.w @(loc_8C0BDF48,pc),r4 ; r4 set to 0xE000
and r3,r0 ; r0 ??	
add r0,r4 ; r4 ??? bc r0 is ???	
exts.w r4,r4
lds r4,fpul 	
mova @(loc_8C0BDF54,pc),r0  ; r0 set to 0x8C0BDF54
fmov.s @r0,fr15
mova @(loc_8C0BDF58,pc),r0  ; r0 set to 0x8C0BDF58
fmov.s @r0,fr2
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0BDF5C,pc),r0  ; r0 set to 0x8C0BDF5c
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
mov.l @r15,r2
fmov.s @(r0,r2),fr1
fadd fr3,fr1
jsr @r13
fmov.s fr1,@(r0,r14) 	
tst 0x01,r0 	
bt loc_8C0BDE62
mov 0x31,r0 ; r0 set to 0x31
mov 0x02,r2 ; r2 set to 0x02
bra loc_8C0BDE68
mov.b r2,@(r0,r14) 	

loc_8C0BDE62:
mov 0x31,r0 ; r0 set to 0x31
mov 0xFE,r1 ; r1 set to 0xFFFFFFFe
mov.b r1,@(r0,r14) 	

loc_8C0BDE68:
jsr @r13
nop 	
mov.l @(loc_8C0BDF60,pc),r1 ; r1 set to 0x8C15AE38, r1 set to 0x8C15AE38
and 0x03,r0 	
shll r0 ; r0 set to 0x62
mov.w @(r0,r1),r3
mova @(loc_8C0BDF64,pc),r0  ; r0 set to 0x8C0BDF64, r0 set to 0x8C0BDF64
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
lds r3,fpul 	
float fpul,fr3
fmul fr2,fr3
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BDE90:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1E,r8
mov.l @(loc_8C0BDF68,pc),r1 ; r1 set to 0x8C15AE40
and 0x0F,r0 	
shll r0
mov.w @(r0,r1),r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8C0BDEB2:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1E,r8
mov.l @(loc_8C0BDF6C,pc),r1 ; r1 set to 0x8C15AE60
and 0x0F,r0 	
shll r0
mov.w @(r0,r1),r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8C0BDED4:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BDF50,pc),r2 ; r2 set to 0x8C11E730
mov r4,r8
mov.l r4,@r15
jsr @r2
add 0x1C,r8
and 0x07,r0 	
add 0x07,r0
mov.w r0,@r8
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8C0BDEF2:
#data 0x902c
#data 0x005C9629
#data 0x365C9328
#data 0x8815600c
#data 0x343C8F09
#data 0x2008846c
#data 0x62408905
#data 0x3020846c
#data 0x000B8901
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0BDF16:
#data 0xE000
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0BDF1C:
mov.w @(loc_8C0BDF4E,pc),r0 ; r0 set to 0x1D0
mov.w @(loc_8C0BDF4A,pc),r6 ; r6 set to 0x2A4
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
mov.w @(loc_8C0BDF4C,pc),r3 ; r3 set to 0x88
add r5,r6 ; r6 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0BDF40
add r3,r4
mov.b @(0x0C,r6),r0 	
tst r0,r0
bt loc_8C0BDF40
mov.b @r4,r2
mov.b @(0x0C,r6),r0 	
cmp/eq r2,r0
bt loc_8C0BDF40
rts 	
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8C0BDF40:
mov 0x00,r0 ; r0 set to 0x00
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BDF46:
#data 0x3F00

loc_8C0BDF48:
#data 0xE000

loc_8C0BDF4A:
#data 0x02A4

loc_8C0BDF4C:
#data 0x0088

loc_8C0BDF4E:
#data 0x01D0

#align4
loc_8C0BDF50:
#data 0x8c11e730

loc_8C0BDF54:
#data 0x43800000

#align4
loc_8C0BDF58:
#data 0x3FD55555

#align4
loc_8C0BDF5C:
#data 0xC2892492

#align4
loc_8C0BDF60:
#data 0x8c15AE38

loc_8C0BDF64:
#data 0x40092492

#align4
loc_8C0BDF68:
#data 0x8c15AE40

loc_8C0BDF6C:
#data 0x8c15AE60
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34D0009
#data 0x80F4E503
#data 0x430BE601
#data 0x2008E400
#data 0x64038D0e
#data 0xE120D349
#data 0x1434314c
#data 0x62F29385
#data 0x60F21426
#data 0x80418401
#data 0x210084F4
#data 0x0435E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0BDFB0:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BE0B8,pc),r1 ; r1 set to 0x8C15AE80
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BDFCC:
mov.l r14,@-r15
mov r4,r14
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BE0A6,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BE0A6,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r5,r2 ; r2 ??? bc r5 is ???	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BE0BC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BE0A8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BE0C0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BE0C4,pc),r0 ; r0 set to 0x8C15AE90
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
mov.l @(loc_8C0BE0C8,pc),r3 ; r3 set to 0x8C104434
jsr @r3
mov r14,r4
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r14
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BE04C:
mov.w @(loc_8C0BE0A4,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
mov.b @(0x02,r4),r0 	
tst r0,r0
bt loc_8C0BE05e
mova @(loc_8C0BE0CC,pc),r0  ; r0 set to 0x8C0BE0Cc
bra loc_8C0BE062
fmov.s @r0,fr3

loc_8C0BE05E:
mova @(loc_8C0BE0D0,pc),r0  ; r0 init to 0x8C0BE0D0
fmov.s @r0,fr3

loc_8C0BE062:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BE0D8,pc),r3 ; r3 set to 0x20202424, r3 set to 0x20202424
fmov.s @(r0,r5),fr2
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0BE0D4,pc),r0  ; r0 set to 0x8C0BE0D4, r0 set to 0x8C0BE0D4
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0BE0AA,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4) 	
mova @(loc_8C0BE0DC,pc),r0  ; r0 set to 0x8C0BE0DC, r0 set to 0x8C0BE0Dc
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0BE0E4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0BE0E0,pc),r0  ; r0 set to 0x8C0BE0E0, r0 set to 0x8C0BE0E0
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r4) 	
jmp @r3
mov 0x12,r5

loc_8C0BE094:
mov.w @(loc_8C0BE0AC,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bt loc_8C0BE0Ec
mova @(loc_8C0BE0E8,pc),r0  ; r0 set to 0x8C0BE0E8
bra loc_8C0BE0F0
fmov.s @r0,fr3
#data 0x0303

loc_8C0BE0A4:
#data 0x012c

loc_8C0BE0A6:
#data 0x00Dc

loc_8C0BE0A8:
#data 0x01A3

loc_8C0BE0AA:
#data 0x013c

loc_8C0BE0AC:
#data 0x0130
#data 0x0000

#align4
loc_8C0BE0B0:
#data 0x8c044F12

loc_8C0BE0B4:
#data 0x8c0BDFB0

loc_8C0BE0B8:
#data 0x8c15AE80

loc_8C0BE0BC:
#data 0x8c129560

loc_8C0BE0C0:
#data 0x8c1294C8

loc_8C0BE0C4:
#data 0x8c15AE90

loc_8C0BE0C8:
#data 0x8c104434

loc_8C0BE0CC:
#data 0xC2D55555

#align4
loc_8C0BE0D0:
#data 0x42D55555

#align4
loc_8C0BE0D4:
#data 0x44092492

#align4
loc_8C0BE0D8:
#data 0x20202424

#align4
loc_8C0BE0DC:
#data 0xC14DB6Db

#align4
loc_8C0BE0E0:
#data 0x3E092492

#align4
loc_8C0BE0E4:
#data 0x8c034e8c

loc_8C0BE0E8:
#data 0xC2BAAAAa


loc_8C0BE0EC:
mova @(loc_8C0BE220,pc),r0  ; r0 init to 0x8C0BE220
fmov.s @r0,fr3

loc_8C0BE0F0:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r5),fr2
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
mov.l @(loc_8C0BE22C,pc),r3 ; r3 set to 0x60003030, r3 set to 0x60003030
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0BE224,pc),r0  ; r0 set to 0x8C0BE224, r0 set to 0x8C0BE224
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0BE228,pc),r0  ; r0 set to 0x8C0BE228, r0 set to 0x8C0BE228
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BE21C,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4) 	
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
jmp @r3
mov 0x14,r5

loc_8C0BE128:
mov.w @(loc_8C0BE21E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BE136
mova @(loc_8C0BE234,pc),r0  ; r0 set to 0x8C0BE234
bra loc_8C0BE13a
fmov.s @r0,fr3

loc_8C0BE136:
mova @(loc_8C0BE238,pc),r0  ; r0 init to 0x8C0BE238
fmov.s @r0,fr3

loc_8C0BE13A:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BE240,pc),r3 ; r3 set to 0x20202424, r3 set to 0x20202424
fmov.s @(r0,r5),fr2
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0BE23C,pc),r0  ; r0 set to 0x8C0BE23C, r0 set to 0x8C0BE23c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0BE21C,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov.l r3,@(r0,r4) 	
mova @(loc_8C0BE244,pc),r0  ; r0 set to 0x8C0BE244, r0 set to 0x8C0BE244
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0BE248,pc),r0  ; r0 set to 0x8C0BE248, r0 set to 0x8C0BE248
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r4) 	
jmp @r3
mov 0x13,r5

loc_8C0BE16C:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BE24C,pc),r0 ; r0 set to 0x8C15AE9c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BE180:
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0BE1Ae
mov.l @(loc_8C0BE250,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0BE1AE:
mov.w @(loc_8C0BE21A,pc),r0 ; r0 set to 0x41c
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mov.b @(0x05,r4),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x12,r5

loc_8C0BE1C4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BE250,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0BE1F8
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.w r0,@(0x1C,r14) 	
mov.b @(0x02,r14),r0 	
tst r0,r0
bt loc_8C0BE1Ea
mova @(loc_8C0BE254,pc),r0  ; r0 set to 0x8C0BE254
bra loc_8C0BE1Ee
fmov.s @r0,fr3

loc_8C0BE1EA:
#data 0xC71b
#data 0xF308

loc_8C0BE1EE:
#data 0xE05c
#data 0xE068FE37
#data 0xFE37F38d


loc_8C0BE1F8:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BE1FE:
mov.b @(0x06,r5),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf loc_8C0BE216
mov.b @(0x05,r4),r0 	
mov 0x05,r6 ; r6 set to 0x05
mov.l @(loc_8C0BE230,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x12,r5

loc_8C0BE216:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE21A:
#data 0x041c

loc_8C0BE21C:
#data 0x013c

loc_8C0BE21E:
#data 0x0130

#align4
loc_8C0BE220:
#data 0x42BAAAAa

#align4
loc_8C0BE224:
#data 0x40892492

#align4
loc_8C0BE228:
#data 0xBF092492

#align4
loc_8C0BE22C:
#data 0x60003030

#align4
loc_8C0BE230:
#data 0x8c034e8c

loc_8C0BE234:
#data 0x42D55555

#align4
loc_8C0BE238:
#data 0xC2D55555

#align4
loc_8C0BE23C:
#data 0x43CDB6Db

#align4
loc_8C0BE240:
#data 0x20202424

#align4
loc_8C0BE244:
#data 0xC14DB6Db

#align4
loc_8C0BE248:
#data 0x3E092492

#align4
loc_8C0BE24C:
#data 0x8c15AE9c

loc_8C0BE250:
#data 0x8c034dee

loc_8C0BE254:
#data 0x40555555
#data 0xC0555555

#align4
loc_8C0BE25C:
#data 0x4F222FE6
#data 0xD3537FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x02EC909b
#data 0x89282228
#data 0x0E34E300
#data 0x66F2E025
#data 0x6573E701
#data 0x9091066c
#data 0x03EC666c
#data 0xD04A4608
#data 0x066E633c
#data 0xD349363c
#data 0x64F2430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0BE2AA:
#data 0xE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0xFE27

loc_8C0BE2C6:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BE2CE:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0x04,r3 ; r3 set to 0x04
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BE3BC,pc),r1 ; r1 set to 0x8C15AEC0
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE2E8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BE3B0,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0BE3A6,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BE34a
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0BE3AA,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0BE34a
mov.w @(loc_8C0BE3AA,pc),r0 ; r0 set to 0x41c
mov 0x14,r5 ; r5 set to 0x14
mov.l @r15,r2
mov r14,r4
mov 0x07,r6 ; r6 set to 0x07
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0BE3C0,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0BE34A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BE352:
#data 0x2FE6
#data 0xD3164F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E5891e
#data 0x7001F48d
#data 0xC71680E5
#data 0xE05CF308
#data 0xE068FE37
#data 0xC714FE47
#data 0xE060F308
#data 0xE06CFE37
#data 0x9013FE47
#data 0x233803Ed
#data 0xE6088F04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0BE394:
#data 0xD30A4F26
#data 0x64E3E514
#data 0x6EF6432b

#align4
loc_8C0BE3A0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BE3A6:
#data 0x0140
#data 0x014b

loc_8C0BE3AA:
#data 0x041c
#data 0x00000130

#align4
loc_8C0BE3B0:
#data 0x8c034dee

loc_8C0BE3B4:
#data 0x8c15AEA8

loc_8C0BE3B8:
#data 0x8c03544c

loc_8C0BE3BC:
#data 0x8c15AEC0

loc_8C0BE3C0:
#data 0x8c034e8c
#data 0xC1555555
#data 0x41092492

#align4
loc_8C0BE3CC:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD335E034
#data 0xF2E64F22
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x420BD227
#data 0x200864E3
#data 0x90448B05
#data 0x0E24E200
#data 0x700184E4
#data 0x80E4

loc_8C0BE426:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BE42C:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BE4B4,pc),r1 ; r1 set to 0x8C15AED0
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE446:
#data 0x2FE6
#data 0xD3184F22
#data 0x6E43430b
#data 0x02EC902a
#data 0x8B022228
#data 0x700184E5
#data 0x80E5

loc_8C0BE45E:
#data 0xD116
#data 0xF2E6E038
#data 0xF30D415a
#data 0xFE27F231
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BE472:
mov.l @(loc_8C0BE4AC,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0BE478:
mov.l r14,@-r15
mov 0x31,r0 ; r0 set to 0x31
mov 0x04,r3 ; r3 set to 0x04
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0BE4BC,pc),r1 ; r1 set to 0x8C15AEDc
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0BE492:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BE4A6,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BE4A0:
mov.l @(loc_8C0BE4C0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BE4A6:
#data 0x012c
#data 0x00000141

#align4
loc_8C0BE4AC:
#data 0x8c034dee

loc_8C0BE4B0:
#data 0x8c0332E0

loc_8C0BE4B4:
#data 0x8c15AED0
#data 0x412B6DB6

#align4
loc_8C0BE4BC:
#data 0x8c15AEDc

loc_8C0BE4C0:
#data 0x8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34C0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D11
#data 0xD348E120
#data 0x1434314c
#data 0x62F2E300
#data 0x60F21426
#data 0x84019280
#data 0x84F48041
#data 0xE0212100
#data 0xE0260434
#data 0x7F080425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0BE50A:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D33a
#data 0x430BE600
#data 0x20086463
#data 0x64038D10
#data 0x1434D337
#data 0x142652E6
#data 0x14E5E200
#data 0x804184E1
#data 0x63F0E020
#data 0xE0210434
#data 0x0424935a
#data 0x0435E026

#align4
loc_8C0BE544:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BE550:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BE608,pc),r1 ; r1 set to 0x8C15AEE4
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BE56C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BE60C,pc),r0 ; r0 set to 0x8C15AEF4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BE588:
mov.w @(loc_8C0BE5F6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE5F8,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE5F6,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0BE610,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE5FA,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BE5FC,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BE614,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x02,r6 ; r6 set to 0x02
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0BE5FE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0BE618,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	
#data 0x0304

loc_8C0BE5F6:
#data 0x00Dc

loc_8C0BE5F8:
#data 0x00C0

loc_8C0BE5FA:
#data 0x012c

loc_8C0BE5FC:
#data 0x01A3

loc_8C0BE5FE:
#data 0x0130

#align4
loc_8C0BE600:
#data 0x8c044F12

loc_8C0BE604:
#data 0x8c0BE550

loc_8C0BE608:
#data 0x8c15AEE4

loc_8C0BE60C:
#data 0x8c15AEF4

loc_8C0BE610:
#data 0x8c129560

loc_8C0BE614:
#data 0x8c1294C8

loc_8C0BE618:
#data 0x8c034C38


loc_8C0BE61C:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
mov.l @(0x14,r4),r6
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r6),r3 ; r3 ??? bc r6 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r6),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
mov 0x02,r6 ; r6 set to 0x02
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BE68A:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x03,r6 ; r6 set to 0x03
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BE6F6:
mov.w @(loc_8C0BE784,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0BE784,pc),r2 ; r2 set to 0xDc
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0BE786,pc),r0 ; r0 set to 0xC0
mov.l @(0x14,r4),r6
mov.l @(loc_8C0BE790,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BE788,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BE78A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BE794,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0BE78C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r6),r3 ; r3 ??? bc r6 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r6),fr3
mov.l @(loc_8C0BE798,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
mov 0x03,r6 ; r6 set to 0x03
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BE764:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE768:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE76C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE770:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BE79C,pc),r0 ; r0 set to 0x8C15AF10
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BE784:
#data 0x00Dc

loc_8C0BE786:
#data 0x00C0

loc_8C0BE788:
#data 0x012c

loc_8C0BE78A:
#data 0x01A3

loc_8C0BE78C:
#data 0x0130
#data 0x0000

#align4
loc_8C0BE790:
#data 0x8c129560

loc_8C0BE794:
#data 0x8c1294C8

loc_8C0BE798:
#data 0x8c034C38

loc_8C0BE79C:
#data 0x8c15AF10

loc_8C0BE7A0:
#data 0xE3FC2FE6
#data 0x6E43E031
#data 0x0E344F22
#data 0x430BD30f
#data 0x600E64E3
#data 0x89054011
#data 0xE3009017
#data 0x84E40E34
#data 0x80E47001

#align4
loc_8C0BE7C4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BE7CA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE7CE:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE7D2:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE7D6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BE7EA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BE7E4:
mov.l @(loc_8C0BE7F0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BE7EA:
#data 0x012c

#align4
loc_8C0BE7EC:
#data 0x8c034D8c

loc_8C0BE7F0:
#data 0x8c0450C0

loc_8C0BE7F4:
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3590009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3556403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100929b
#data 0x63F0E022
#data 0xE0260434
#data 0x0425

loc_8C0BE82E:
#data 0x7F0c
#data 0x000B4F26
#data 0x4F226043
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3470009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE120D343
#data 0x1434314c
#data 0x532662F2
#data 0x62F21436
#data 0x14259377
#data 0x84F8E222
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0BE884:
mov r4,r3
mov.l @(loc_8C0BE96C,pc),r1 ; r1 set to 0x8C15B12c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BE896:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BE95E,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BE95E,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BE970,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BE95C,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BE95C,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r4),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r4),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BE960,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BE974,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BE978,pc),r0 ; r0 set to 0x8C15B13c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BE9Fc
mov.l @r15+,r14

loc_8C0BE90E:
#data 0xC71b
#data 0xF3085546
#data 0xF437E034
#data 0xF308C719
#data 0xF437E038
#data 0x035D901f
#data 0x8B032338
#data 0xF346E034
#data 0xF437F34d

#align4
loc_8C0BE930:
#data 0x6103E034
#data 0xF246315c
#data 0xF318E30a
#data 0xF230E200
#data 0xE038F427
#data 0x315C6103
#data 0xF318F246
#data 0xF427F230
#data 0x0434E024
#data 0x000B9002
#data 0x04000424

loc_8C0BE95C:
#data 0x012c

loc_8C0BE95E:
#data 0x00Dc

loc_8C0BE960:
#data 0x01A3
#data 0x0130

#align4
loc_8C0BE964:
#data 0x8c044F12

loc_8C0BE968:
#data 0x8c0BE884

loc_8C0BE96C:
#data 0x8c15B12c

loc_8C0BE970:
#data 0x8c129560

loc_8C0BE974:
#data 0x8c1294C8

loc_8C0BE978:
#data 0x8c15B13c
#data 0x42D55555
#data 0x434DB6Db


loc_8C0BE984:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov r14,r1
mov.l @(loc_8C0BEAAC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
mov r4,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x64,r1 ; r1 set to 0x64
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0BE9C0
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x24,r0 ; r0 set to 0x24
mov 0x0A,r3 ; r3 set to 0x0a
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0BEAA8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r6
bra loc_8C0BE9Cc
add 0x06,r6

loc_8C0BE9C0:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r3 ; r3 set to 0x0c
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0BEAA8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r6
add 0x09,r6

loc_8C0BE9CC:
lds.l @r15+,pr 	
mov.l @(loc_8C0BEAB0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0BE9D6:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BE9DA:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0D,r3 ; r3 set to 0x0d
mov 0x00,r5 ; r5 set to 0x00
mov.b r3,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r4) 	
mov.w @(loc_8C0BEAAA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BE9EE:
mov.w @(loc_8C0BEAAA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BE9FC:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0BEAB4,pc),r0 ; r0 set to 0x8C15B150
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BEA10:
mov r4,r3
mov.l @(loc_8C0BEAB8,pc),r1 ; r1 set to 0x8C15B164
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BEA22:
#data 0x5545
#data 0x600C8454
#data 0x89028802
#data 0x20088455
#data 0x8903

loc_8C0BEA32:
#data 0xE003
#data 0xA0248045
#data 0xE604

loc_8C0BEA3A:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B20
#data 0xF48DE301
#data 0x7001E603
#data 0x902A8045
#data 0xE0060434
#data 0xE068814e
#data 0xE06CF447
#data 0xC716F447
#data 0xE034F408
#data 0xF346F256
#data 0xF231E05c
#data 0xF427F243
#data 0xF256E038
#data 0xE060F346
#data 0xF243F231
#data 0xF427

loc_8C0BEA82:
#data 0xD30b
#data 0xE51B432b

#align4
loc_8C0BEA88:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BEA8C:
#data 0x84545545
#data 0x8802600c
#data 0x84558902
#data 0x89112008

#align4
loc_8C0BEA9C:
#data 0xE003D304
#data 0x8045E604
#data 0xE51B432b

loc_8C0BEAA8:
#data 0x01A3

loc_8C0BEAAA:
#data 0x012c

#align4
loc_8C0BEAAC:
#data 0x8c1294C8

loc_8C0BEAB0:
#data 0x8c034C38

loc_8C0BEAB4:
#data 0x8c15B150

loc_8C0BEAB8:
#data 0x8c15B164
#data 0x41000000

#align4
loc_8C0BEAC0:
#data 0x70FF854e
#data 0x600F814e
#data 0x891D2008
#data 0xD354E15c
#data 0xE034314c
#data 0xF246F318
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0xF427432b

#align4
loc_8C0BEB08:
#data 0xE3608445
#data 0x80457001
#data 0x000BE022
#data 0x0434
;-------------------------------------------------------------------------------

loc_8C0BEB16:
#data 0x2FE6
#data 0x2FD66E43
#data 0x844454E5
#data 0x8802600c
#data 0x84458902
#data 0x89082008

#align4
loc_8C0BEB2C:
#data 0xE003D33d
#data 0x80E564E3
#data 0xE6046DF6
#data 0x432BE51b
#data 0x6EF6

loc_8C0BEB3E:
#data 0xE022
#data 0x00ECDD39
#data 0x31ECE122
#data 0xC97C7004
#data 0xE0222100
#data 0x600C00Ec
#data 0x03DD4000
#data 0xF208C734
#data 0x435AE034
#data 0xF322F32d
#data 0xE022FE37
#data 0x633C03Ec
#data 0x33DC4300
#data 0x63038531
#data 0xC72E435a
#data 0xF32DF108
#data 0xE038F312
#data 0xE022FE37
#data 0x633C03Ec
#data 0x33DC4300
#data 0x62038532
#data 0x0E24E024
#data 0x034D9041
#data 0x89032338
#data 0xF3E6E034
#data 0xFE37F34d

#align4
loc_8C0BEBA4:
#data 0xD323E034
#data 0x314C6103
#data 0xE605F2E6
#data 0xE51BF318
#data 0xFE27F230
#data 0x6103E038
#data 0xF2E6314c
#data 0xF31864E3
#data 0xFE27F230
#data 0x07ECE022
#data 0x4700677c
#data 0x6DF637Dc
#data 0x67038573
#data 0x6EF6432b

#align4
loc_8C0BEBDC:
#data 0x7FFC4F22
#data 0x430BD30f
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0BEBF2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BEBFA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0BEC1C,pc),r0 ; r0 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r13,r0 ; r0 ??? bc r13 is ???	
mov.b @(0x01,r0),r0 	
cmp/eq 0x24,r0 	
bt loc_8C0BEC38
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BEC1E,pc),r0 ; r0 set to 0x12c
bra loc_8C0BEC6e
mov.b r3,@(r0,r14) 	
#data 0x0130

loc_8C0BEC1C:
#data 0x0150

loc_8C0BEC1E:
#data 0x012c

#align4
loc_8C0BEC20:
#data 0x8c034D8c

loc_8C0BEC24:
#data 0x8c034C38

loc_8C0BEC28:
#data 0x8c15AF2c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BEC34:
#data 0x8c034CD6


loc_8C0BEC38:
mov.l @(loc_8C0BED88,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov r13,r2
mov.l @(loc_8C0BED8C,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x64,r1 ; r1 set to 0x64
mov r14,r4
add r13,r1 ; r1 ??? bc r13 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
mov.l @(loc_8C0BED90,pc),r1 ; r1 set to 0x8C15B174
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
lds.l @r15+,pr 	
extu.b r0,r0 ; r0 set to 0x34
shll2 r0 ; r0 set to 0xD0
mov.l @r15+,r13
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0BEC6E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BEC76:
mov.l @(0x18,r4),r5
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0BEC9e
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0BEC96
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0BEC98
mov 0x08,r6

loc_8C0BEC96:
mov 0x0B,r6 ; r6 set to 0x0b

loc_8C0BEC98:
mov.l @(loc_8C0BED94,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
nop 	

loc_8C0BEC9E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BECA2:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BECA6:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BECAA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BECAE:
mov r4,r3
mov.l @(loc_8C0BED98,pc),r1 ; r1 set to 0x8C15B184
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0BECC0:
#data 0x6E432FE6
#data 0x54E52FD6
#data 0x600C8444
#data 0x89028802
#data 0x20088445
#data 0x8908

loc_8C0BECD6:
#data 0xD32f
#data 0x64E3E001
#data 0x6DF680E5
#data 0xE51BE604
#data 0x6EF6432b

#align4
loc_8C0BECE8:
#data 0xDD2CE022
#data 0xE12200Ec
#data 0x700431Ec
#data 0x2100C97c
#data 0x00ECE022
#data 0x4000600c
#data 0xC72703Dd
#data 0xE034F208
#data 0xF32D435a
#data 0xFE37F322
#data 0x03ECE022
#data 0x4300633c
#data 0x853133Dc
#data 0x435A6303
#data 0xF108C720
#data 0xF312F32d
#data 0xFE37E038
#data 0x03ECE022
#data 0x4300633c
#data 0x853233Dc
#data 0xE0246203
#data 0x90220E24
#data 0x2338034d
#data 0xE0348903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0BED4E:
#data 0xE034
#data 0x6103D315
#data 0xF2E6314c
#data 0xF318E605
#data 0xF230E51b
#data 0xE038FE27
#data 0x314C6103
#data 0x64E3F2E6
#data 0xF230F318
#data 0xE022FE27
#data 0x677C07Ec
#data 0x37DC4700
#data 0x85736DF6
#data 0x432B6703
#data 0x01306EF6

#align4
loc_8C0BED88:
#data 0x8c034D8c

loc_8C0BED8C:
#data 0x8c1294C8

loc_8C0BED90:
#data 0x8c15B174

loc_8C0BED94:
#data 0x8c034C38

loc_8C0BED98:
#data 0x8c15B184

loc_8C0BED9C:
#data 0x8c15B02c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BEDA8:
#data 0x8c034CD6

loc_8C0BEDAC:
#data 0x7FFC4F22
#data 0x430BD346
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0BEDC2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BEDCA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F229D77
#data 0x3D4C54E6
#data 0x6D0384D1
#data 0x233863De
#data 0x906F892c
#data 0xD33AE201
#data 0x0E2461E3
#data 0x72346243
#data 0x430B7134
#data 0x9066E00c
#data 0x431163De
#data 0x0E25024d
#data 0xF34670D8
#data 0xE050FE37
#data 0xFE37F346
#data 0xF346E054
#data 0xFE378D06
#data 0xE37F9058
#data 0xF3462D39
#data 0xFE37E038

#align4
loc_8C0BEE20:
#data 0x67DE85Ee
#data 0x890F3700
#data 0xD32AE022
#data 0xE51B06Ec
#data 0x430B7601
#data 0x60DE64E3
#data 0x81EEA006

#align4
loc_8C0BEE3C:
#data 0xE4009042
#data 0x60430E44
#data 0x81EE0009

#align4
loc_8C0BEE48:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BEE50:
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0BEEC2,pc),r0 ; r0 set to 0x150
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r3
tst r3,r3
bf loc_8C0BEE6a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BEE6A:
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov r5,r2
mov r4,r1
mov.b r3,@(r0,r4) 	
add 0x34,r2
mov.l @(loc_8C0BEED0,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0BEECA,pc),r0 ; r0 set to 0x141
mov 0xFA,r3 ; r3 set to 0xFFFFFFFa
mov.b @(r0,r5),r2
shad r3, r2
mov.b r2,@r15
extu.b r2,r2
tst r2,r2
bt loc_8C0BEEA6
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r1,@(r0,r4) 	
mov.b @r15,r0 ; r0 ??? bc r15 is ???	
and 0x03,r0 	
mov r0,r6
add 0x0B,r6
add 0x04,r15
mov.l @(loc_8C0BEED8,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0BEEA6:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BEEAE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BEEC4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BEEBC:
mov.l @(loc_8C0BEEDC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BEEC2:
#data 0x0150

loc_8C0BEEC4:
#data 0x012c
#data 0x0130
#data 0x041c

loc_8C0BEECA:
#data 0x0141

#align4
loc_8C0BEECC:
#data 0x8c034D8c

loc_8C0BEED0:
#data 0x8c1294C8

loc_8C0BEED4:
#data 0x8c034CD6

loc_8C0BEED8:
#data 0x8c034C38

loc_8C0BEEDC:
#data 0x8c0450C0
#data 0x4F222FE6
#data 0xEE007FFc
#data 0xE503D352
#data 0x66E32F42
#data 0x64E3430b
#data 0x8D0B2008
#data 0xE0206403
#data 0x1434D34e
#data 0x62F29392
#data 0x04E41426
#data 0x04E4E021
#data 0x0435E026
#data 0xE503D348
#data 0x430BE600
#data 0x20086463
#data 0x64038D0c
#data 0xE020D345
#data 0xE3011434
#data 0x142662F2
#data 0xE02104E4
#data 0x0434927a
#data 0x0425E026
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BEF44:
mov r4,r3
mov.l @(loc_8C0BF03C,pc),r1 ; r1 set to 0x8C15B18c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BEF56:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BF02C,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BF02C,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0BF040,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BF02A,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF02A,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r4),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r4),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BF02E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BF044,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0BEFC6
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
bra loc_8C0BEFCc
mov.b r3,@(r0,r14) 	

loc_8C0BEFC6:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r1 ; r1 set to 0x0c
mov.b r1,@(r0,r14) 	

loc_8C0BEFCC:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BF048,pc),r0 ; r0 set to 0x8C15B19C, r0 set to 0x8C15B19c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BF058
mov.l @r15+,r14

#align4
loc_8C0BEFE4:
#data 0x6E432FE6
#data 0x54E69022
#data 0xC717054e
#data 0x901EF408
#data 0x2338034d
#data 0xC7158901
#data 0xF408

loc_8C0BEFFE:
#data 0xE034
#data 0xF340F356
#data 0xE038FE37
#data 0xE51BF356
#data 0x9010FE37
#data 0x64E3034d
#data 0xE0210E35
#data 0xD30E06Ec
#data 0x76104600
#data 0x6EF6432b


loc_8C0BF024:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0401

loc_8C0BF02A:
#data 0x012c

loc_8C0BF02C:
#data 0x00Dc

loc_8C0BF02E:
#data 0x01A3
#data 0x0130020c

#align4
loc_8C0BF034:
#data 0x8c044F12

loc_8C0BF038:
#data 0x8c0BEF44

loc_8C0BF03C:
#data 0x8c15B18c

loc_8C0BF040:
#data 0x8c129560

loc_8C0BF044:
#data 0x8c1294C8

loc_8C0BF048:
#data 0x8c15B19c
#data 0x43555555
#data 0xC3555555

#align4
loc_8C0BF054:
#data 0x8c034C38


loc_8C0BF058:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0BF086
mov.l @(loc_8C0BF0C0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov.w @(loc_8C0BF0B8,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BF09e
mov.w @(loc_8C0BF0BA,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0BF09e
mov.b @(0x05,r14),r0 	
add 0x01,r0
bra loc_8C0BF09e
mov.b r0,@(0x05,r14) 	

loc_8C0BF086:
#data 0xD20e
#data 0x64E3420b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900F80E4
#data 0x0E34


loc_8C0BF09E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BF0A4:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BF0BC,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BF0B2:
mov.l @(loc_8C0BF0C4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BF0B8:
#data 0x0140

loc_8C0BF0BA:
#data 0x01D0

loc_8C0BF0BC:
#data 0x012c
#data 0x0000

#align4
loc_8C0BF0C0:
#data 0x8c034D8c

loc_8C0BF0C4:
#data 0x8c0450C0
#data 0xFFFB2FE6
#data 0x7FFC4F22
#data 0xE600D348
#data 0x6E43E503
#data 0xFF5AFF4c
#data 0x6463430b
#data 0x8D1A2008
#data 0xD3446403
#data 0xE020E200
#data 0x937B1434
#data 0x042414E6
#data 0x0435E026
#data 0x02EC9077
#data 0x8D032228
#data 0xF3FCE034
#data 0xF34DA001
#data 0xF2E6F3Fc
#data 0xF427F230
#data 0xF2E6E038
#data 0xF230F3F8
#data 0x6043F427
#data 0x7F040009
#data 0xFFF94F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BF128:
mov r4,r3
mov.l @(loc_8C0BF1FC,pc),r1 ; r1 set to 0x8C15B1A4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF13A:
mov.w @(loc_8C0BF1EE,pc),r3 ; r3 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0BF1EE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BF1EC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov.l @(0x18,r4),r2
add r3,r2
mov.l @(loc_8C0BF200,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF1EC,pc),r0 ; r0 set to 0x12c
mov r4,r1
add 0x50,r1
mov.b r5,@(r0,r4) 	
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x18,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF1F0,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x18,r4),r2
add 0x50,r2
mov.l @(loc_8C0BF204,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x17,r5 ; r5 set to 0x17
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x18,r6 ; r6 set to 0x18
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0BF1F2,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3
mov 0x00,r2 ; r2 set to 0x00
mov.w r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0BF208,pc),r3 ; r3 set to 0x8C034E8c
mov.b r2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BF1BE:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0BF20C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0BF1D6
mov.l @r15,r4
add 0x04,r15
bra loc_8C0BF1De
lds.l @r15+,pr 	

loc_8C0BF1D6:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0BF1DE:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	

loc_8C0BF1E2:
mov.l @(loc_8C0BF210,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01D20500

loc_8C0BF1EC:
#data 0x012c

loc_8C0BF1EE:
#data 0x00Dc

loc_8C0BF1F0:
#data 0x01A3

loc_8C0BF1F2:
#data 0x0130

#align4
loc_8C0BF1F4:
#data 0x8c044F12

loc_8C0BF1F8:
#data 0x8c0BF128

loc_8C0BF1FC:
#data 0x8c15B1A4

loc_8C0BF200:
#data 0x8c129560

loc_8C0BF204:
#data 0x8c1294C8

loc_8C0BF208:
#data 0x8c034e8c

loc_8C0BF20C:
#data 0x8c034dee

loc_8C0BF210:
#data 0x8c0450C0

loc_8C0BF214:
#data 0x7FFC4F22
#data 0xE503D357
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3546403
#data 0x1434E020
#data 0x62F2E300
#data 0x929D1426
#data 0xE0260434
#data 0x0425

loc_8C0BF23E:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0BF246:
#data 0x2FE6
#data 0x2FD6E503
#data 0x2FC66E43
#data 0x2FA62FB6
#data 0x2F96EA00
#data 0x2F8666A3
#data 0x4F22E901
#data 0x9D87DC45
#data 0x64A34C0b
#data 0x8D0D2008
#data 0xE0206403
#data 0x1424D242
#data 0x143653E6
#data 0x049414E5
#data 0x04A4E021
#data 0x04A4E022
#data 0x04D5E026

#align4
loc_8C0BF288:
#data 0xE600E503
#data 0x64634C0b
#data 0x8D0D2008
#data 0xE0206403
#data 0x1424D238
#data 0x143653E6
#data 0x049414E5
#data 0x0494E021
#data 0x0494E022
#data 0x04D5E026

#align4
loc_8C0BF2B0:
#data 0xE600E503
#data 0x64634C0b
#data 0x8D0E2008
#data 0xD22F6403
#data 0x1424E020
#data 0x53E6E202
#data 0x14E51436
#data 0xE0210424
#data 0xE02204A4
#data 0xE02604A4
#data 0x04D5

loc_8C0BF2DA:
#data 0xE503
#data 0x4C0BE600
#data 0x20086463
#data 0x64038D0e
#data 0xE020D224
#data 0xE2021424
#data 0x143653E6
#data 0x042414E5
#data 0x04A4E021
#data 0x0494E022
#data 0x04D5E026

#align4
loc_8C0BF304:
#data 0x68A3EB03

#align4
loc_8C0BF308:
#data 0xE600E503
#data 0x64634C0b
#data 0x8D0D2008
#data 0xE0206403
#data 0x1424D218
#data 0x143653E6
#data 0x04B414E5
#data 0x0484E021
#data 0x04A4E022
#data 0x04D5E026

#align4
loc_8C0BF330:
#data 0xE600E503
#data 0x64634C0b
#data 0x8D0D2008
#data 0xE0206403
#data 0x1424D20e
#data 0x143653E6
#data 0x04B414E5
#data 0x0484E021
#data 0x0494E022
#data 0x04D5E026

#align4
loc_8C0BF358:
#data 0x38B37801
#data 0x60438BD4
#data 0x4F260009
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000501

#align4
loc_8C0BF378:
#data 0x8c044F12

loc_8C0BF37C:
#data 0x8c0BF380


loc_8C0BF380:
mov r4,r3
mov.l @(loc_8C0BF4EC,pc),r1 ; r1 set to 0x8C15B1B4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF392:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0BF4F0,pc),r0 ; r0 set to 0x8C15B1C4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0BF3AE:
mov.w @(loc_8C0BF4E2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF4E2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF4F4,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF4E4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x18,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF4E6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.l @(loc_8C0BF4F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x0C,r6 ; r6 set to 0x0c
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0BF4FC,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BF42C:
mov.w @(loc_8C0BF4E2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF4E2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF4F4,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF4E4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF4E6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF4F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF4Ae
mov.l @(0x14,r4),r2
mova @(loc_8C0BF500,pc),r0  ; r0 set to 0x8C0BF500
bra loc_8C0BF4B2
fmov.s @r0,fr3

loc_8C0BF4AE:
mova @(loc_8C0BF504,pc),r0  ; r0 init to 0x8C0BF504
fmov.s @r0,fr3

loc_8C0BF4B2:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
mov.w @(loc_8C0BF4E8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF50c
mova @(loc_8C0BF508,pc),r0  ; r0 set to 0x8C0BF508, r0 set to 0x8C0BF508
bra loc_8C0BF510
fmov.s @r0,fr3

loc_8C0BF4E2:
#data 0x00Dc

loc_8C0BF4E4:
#data 0x012c

loc_8C0BF4E6:
#data 0x01A3

loc_8C0BF4E8:
#data 0x0130
#data 0x0000

#align4
loc_8C0BF4EC:
#data 0x8c15B1B4

loc_8C0BF4F0:
#data 0x8c15B1C4

loc_8C0BF4F4:
#data 0x8c129560

loc_8C0BF4F8:
#data 0x8c1294C8

loc_8C0BF4FC:
#data 0x8c034e8c

loc_8C0BF500:
#data 0xC3055555

#align4
loc_8C0BF504:
#data 0x43055555

#align4
loc_8C0BF508:
#data 0xC1700000


loc_8C0BF50C:
mova @(loc_8C0BF648,pc),r0  ; r0 init to 0x8C0BF648
fmov.s @r0,fr3

loc_8C0BF510:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF64C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4) 	
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF63E,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr 	

loc_8C0BF532:
mov.w @(loc_8C0BF640,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF640,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF650,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF642,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF644,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF654,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF5C0
mov.l @(0x14,r4),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF658,pc),r0 ; r0 set to 0x8C15B1D4
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF5D0
nop 	

loc_8C0BF5C0:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
mov.l @(loc_8C0BF658,pc),r0 ; r0 set to 0x8C15B1D4
extu.b r1,r1
shll2 r1
shll r1
fmov.s @(r0,r1),fr3
fneg fr3

loc_8C0BF5D0:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
mov.w @(loc_8C0BF646,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF60c
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF65C,pc),r0 ; r0 set to 0x8C15B1D8, r0 set to 0x8C15B1D8
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF61c
nop 	

loc_8C0BF60C:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov.l @(loc_8C0BF65C,pc),r0 ; r0 set to 0x8C15B1D8
extu.b r2,r2
shll2 r2
shll r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0BF61C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF64C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4) 	
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF63E,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr 	

loc_8C0BF63E:
#data 0x013c

loc_8C0BF640:
#data 0x00Dc

loc_8C0BF642:
#data 0x012c

loc_8C0BF644:
#data 0x01A3

loc_8C0BF646:
#data 0x0130

#align4
loc_8C0BF648:
#data 0x41700000

#align4
loc_8C0BF64C:
#data 0x8c034e8c

loc_8C0BF650:
#data 0x8c129560

loc_8C0BF654:
#data 0x8c1294C8

loc_8C0BF658:
#data 0x8c15B1D4

loc_8C0BF65C:
#data 0x8c15B1D8


loc_8C0BF660:
mov.w @(loc_8C0BF7C2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0BF7C2,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x14,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF7CC,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF7C4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x14,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x14,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF7C6,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x14,r4),r2
mov.l @(loc_8C0BF7D0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0BF6F2
mov.l @(0x14,r4),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF7D4,pc),r0 ; r0 set to 0x8C15B1E4
extu.b r3,r3
mov r3,r1
shll r3
add r1,r3
shll2 r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF704
fneg fr3

loc_8C0BF6F2:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0BF7D4,pc),r0 ; r0 set to 0x8C15B1E4
extu.b r3,r3
mov r3,r1
shll r3
add r1,r3
shll2 r3
fmov.s @(r0,r3),fr3

loc_8C0BF704:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0BF7D4,pc),r5 ; r5 set to 0x8C15B1E4, r5 set to 0x8C15B1E4
fmov.s @(r0,r2),fr2
fldi0 fr4
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l @(0x14,r4),r3
extu.b r2,r2
mov r2,r1
shll r2
add r1,r2
shll2 r2
add r5,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
mov.w @(loc_8C0BF7C8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0BF75e
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
extu.b r3,r3
mov r3,r2
shll r3
add r2,r3
shll2 r3
add r5,r3
fmov.s @(r0,r3),fr3
bra loc_8C0BF774
nop 	

loc_8C0BF75E:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x08,r0 ; r0 set to 0x08
extu.b r2,r2
mov r2,r3
shll r2
add r3,r2
shll2 r2
add r5,r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0BF774:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0BF7D8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4) 	
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8C0BF7CA,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
mov 0x0F,r6 ; r6 set to 0x0F, r6 set to 0x0f
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13D, r0 set to 0x13d
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov 0x30,r5 ; r5 set to 0x30, r5 set to 0x30
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r5,@(r0,r4) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
lds.l @r15+,pr 	

loc_8C0BF796:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0BF7DC,pc),r0 ; r0 set to 0x8C15B214
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0BF7AA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0BF7E0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0BF7E4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BF846
mov.l @r15+,r14

loc_8C0BF7C2:
#data 0x00Dc

loc_8C0BF7C4:
#data 0x012c

loc_8C0BF7C6:
#data 0x01A3

loc_8C0BF7C8:
#data 0x0130

loc_8C0BF7CA:
#data 0x013c

#align4
loc_8C0BF7CC:
#data 0x8c129560

loc_8C0BF7D0:
#data 0x8c1294C8

loc_8C0BF7D4:
#data 0x8c15B1E4

loc_8C0BF7D8:
#data 0x8c034e8c

loc_8C0BF7DC:
#data 0x8c15B214

loc_8C0BF7E0:
#data 0x8c034dee


loc_8C0BF7E4:
mov.w @(loc_8C0BF856,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0BF800
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
bsr loc_8C0BF246
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0BF85C,pc),r2 ; r2 set to 0x8C042008
mov 0x20,r5 ; r5 set to 0x20
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0BF800:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BF806:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0BF860,pc),r3 ; r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0BF864,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0BF840
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BF846
mov.l @r15+,r14

loc_8C0BF840:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0BF846:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BF858,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0BF850:
mov.l @(loc_8C0BF868,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0BF856:
#data 0x0141

loc_8C0BF858:
#data 0x012c
#data 0x0000

#align4
loc_8C0BF85C:
#data 0x8c042008

loc_8C0BF860:
#data 0x8c034dee

loc_8C0BF864:
#data 0x8c03340c

loc_8C0BF868:
#data 0x8c0450C0
#data 0x7FF44F22
#data 0x60531F42
#data 0xD34B0009
#data 0x80F4E503
#data 0xE6002F61
#data 0x6463430b
#data 0x8D0D2008
#data 0xE1216403
#data 0x314CD346
#data 0x93801434
#data 0x142652F2
#data 0x210084F4
#data 0x814E60F1
#data 0x0435E026
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0BF8AC:
mov r4,r3
mov.l @(loc_8C0BF9AC,pc),r1 ; r1 set to 0x8C15B224
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BF8BE:
mov.w @(loc_8C0BF998,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0BF9B0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BF998,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
add 0x50,r1
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.l @(0x18,r4),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0BF99C,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.l @(loc_8C0BF9B4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0BF938:
mov.l @(0x18,r4),r5
mov.b @(0x03,r5),r0 	
tst r0,r0
bf/s loc_8C0BF958
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.w @(loc_8C0BF99E,pc),r0 ; r0 set to 0x19F, r0 set to 0x19f
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
tst r2,r2
bf loc_8C0BF964
mov.w @(loc_8C0BF9A0,pc),r0 ; r0 set to 0x1A0, r0 set to 0x1A0
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0BF958
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r6,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BF958:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0BF968

loc_8C0BF964:
bra loc_8C0BF986
nop 	

#align4
loc_8C0BF968:
#data 0x04649017
#data 0x034CE021
#data 0x89062338
#data 0x9110D310
#data 0x314C6032
#data 0xC9015007
#data 0x2100

loc_8C0BF982:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0BF986:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0BF99A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0BF990:
mov.l @(loc_8C0BF9BC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0502

loc_8C0BF998:
#data 0x00Dc

loc_8C0BF99A:
#data 0x012c

loc_8C0BF99C:
#data 0x01A3

loc_8C0BF99E:
#data 0x019f

loc_8C0BF9A0:
#data 0x01A0
#data 0x0000

#align4
loc_8C0BF9A4:
#data 0x8c044F12

loc_8C0BF9A8:
#data 0x8c0BF8Ac

loc_8C0BF9AC:
#data 0x8c15B224

loc_8C0BF9B0:
#data 0x8c129560

loc_8C0BF9B4:
#data 0x8c1294C8
#data 0x8C26823c

#align4
loc_8C0BF9BC:
#data 0x8c0450C0

loc_8C0BF9C0:
#data 0x7FF84F22
#data 0xE600D342
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D33e
#data 0x52F11434
#data 0x63F01426
#data 0x0434926d
#data 0x0425E026

#align4
loc_8C0BF9EC:
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BF9F4:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD334E503
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D122008
#data 0xD3316403
#data 0x71346143
#data 0x52E61434
#data 0x1426D32f
#data 0x723462E3
#data 0x430B14E5
#data 0x62F0E00c
#data 0x934AE020
#data 0xE0260424
#data 0x0435

loc_8C0BFA32:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BFA3E:
mov r4,r3
mov.l @(loc_8C0BFADC,pc),r1 ; r1 set to 0x8C15B2A8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFA50:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BFAC4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BFAC4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BFAE0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BFAC6,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0BFAC8,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
mov.b @(0x02,r4),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r4),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BFACA,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BFAD8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r4 ; r4 set to 0x00
mov.b r2,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0BFAE4
mov.w @(loc_8C0BFACC,pc),r0 ; r0 set to 0x158
bra loc_8C0BFAE8
mov.b r4,@(r0,r14) 	
#data 0x0600

loc_8C0BFAC4:
#data 0x00Dc

loc_8C0BFAC6:
#data 0x00C0

loc_8C0BFAC8:
#data 0x012c

loc_8C0BFACA:
#data 0x01A3

loc_8C0BFACC:
#data 0x0158
#data 0x0000

#align4
loc_8C0BFAD0:
#data 0x8c044F12

loc_8C0BFAD4:
#data 0x8c0BFA3e

loc_8C0BFAD8:
#data 0x8c1294C8

loc_8C0BFADC:
#data 0x8c15B2A8

loc_8C0BFAE0:
#data 0x8c129560

loc_8C0BFAE4:
#data 0x0E549088

#align4
loc_8C0BFAE8:
#data 0xE3FFE031
#data 0xE51B0E34
#data 0xD3439082
#data 0x430B06Ec
#data 0x4F2664E3
#data 0x6EF664E3

#align4
loc_8C0BFB00:
#data 0x4F222FE6
#data 0x90787FF8
#data 0x6E43E500
#data 0x0E5454E6
#data 0x034CE024
#data 0xE0200E34
#data 0x222802Ec
#data 0x62438B4d
#data 0x61E3D338
#data 0x71347234
#data 0xE00C430b
#data 0x0E549065
#data 0x2338034c
#data 0x93618952
#data 0x8431334c
#data 0x894D2008
#data 0x65F3935c
#data 0x334CD730
#data 0x40088431
#data 0xC72F037d
#data 0x435AF208
#data 0xF32D9053
#data 0xF53AF322
#data 0x2338034d
#data 0xE0348F04
#data 0xF3686653
#data 0xF63AF34d

#align4
loc_8C0BFB6C:
#data 0x62E3F2E6
#data 0x9343F358
#data 0x334CF230
#data 0xE038FE27
#data 0x2F26320c
#data 0x40088431
#data 0x8571370c
#data 0x435A6303
#data 0xC72063F6
#data 0xF32DF008
#data 0xF23EF238
#data 0x85EEF32a
#data 0x81EE70Ff
#data 0x4011600f
#data 0xE0038904
#data 0x81EEE501
#data 0x64E3BF22

#align4
loc_8C0BFBB0:
#data 0x420BD218
#data 0xA00A64E3
#data 0x0009

loc_8C0BFBBA:
#data 0xD316
#data 0x64E3430b
#data 0x4011600e
#data 0x84E48903
#data 0xA0077001
#data 0x80E4

loc_8C0BFBCE:
#data 0xD312
#data 0x60329113
#data 0x500731Ec
#data 0x2100C901

#align4
loc_8C0BFBDC:
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BFBE4:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0BFBFA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0BFBF2:
mov.l @(loc_8C0BFC1C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0158

loc_8C0BFBFA:
#data 0x012c
#data 0x01300150

#align4
loc_8C0BFC00:
#data 0x8c034C38

loc_8C0BFC04:
#data 0x8c1294C8

loc_8C0BFC08:
#data 0x8c15B234
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0BFC14:
#data 0x8c034D8c
#data 0x8C26823c

#align4
loc_8C0BFC1C:
#data 0x8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3580009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D10
#data 0xE120D354
#data 0x1434314c
#data 0x62F2939b
#data 0x84F41426
#data 0xE0262100
#data 0x90950435
#data 0x032D62F2
#data 0x04359093
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0BFC64:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD347E503
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D122008
#data 0xD3446403
#data 0x71346143
#data 0x52E61434
#data 0x1426D342
#data 0x723462E3
#data 0x430B14E5
#data 0x62F0E00c
#data 0x9370E020
#data 0xE0260424
#data 0x0435

loc_8C0BFCA2:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BFCAE:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D334
#data 0x430BE601
#data 0x2008E400
#data 0x64038D12
#data 0x6143D331
#data 0x14347134
#data 0xD33052E6
#data 0x62E31426
#data 0x14E57234
#data 0xE00C430b
#data 0xE02062F0
#data 0x0424934b
#data 0x0435E026

#align4
loc_8C0BFCEC:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0BFCF8:
mov r4,r3
mov.l @(loc_8C0BFD98,pc),r1 ; r1 set to 0x8C15B2B8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFD0A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0BFD84,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0BFD84,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0BFD9C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0BFD86,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0BFD88,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r2,@(r0,r14) 	
mov.b @(0x02,r5),r0 	
mov.b r0,@(0x02,r14) 	
mov.b @(0x01,r5),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0BFD8A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0BFD94,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0BFDA0,pc),r0 ; r0 set to 0x8C15B2C8
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0BFF86
mov.l @r15+,r14
#data 0x0601
#data 0x00CC0158

loc_8C0BFD84:
#data 0x00Dc

loc_8C0BFD86:
#data 0x00C0

loc_8C0BFD88:
#data 0x012c

loc_8C0BFD8A:
#data 0x01A3

#align4
loc_8C0BFD8C:
#data 0x8c044F12

loc_8C0BFD90:
#data 0x8c0BFCF8

loc_8C0BFD94:
#data 0x8c1294C8

loc_8C0BFD98:
#data 0x8c15B2B8

loc_8C0BFD9C:
#data 0x8c129560

loc_8C0BFDA0:
#data 0x8c15B2C8


loc_8C0BFDA4:
mov.w @(loc_8C0BFED8,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
mov r5,r2
mov.l @(loc_8C0BFEDC,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0BFEE0,pc),r0  ; r0 set to 0x8C0BFEE0
fmov.s @r0,fr4
mov.w @(loc_8C0BFEDA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bt loc_8C0BFDCe
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
bra loc_8C0BFDD4
fadd fr4,fr3

loc_8C0BFDCE:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
fsub fr4,fr3

loc_8C0BFDD4:
fmov.s fr3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0BFDE8
mov.l @(loc_8C0BFEE4,pc),r1 ; r1 set to 0x433EB6DB, r1 set to 0x433EB6Db
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul 	
bra loc_8C0BFDF0
fsts fpul,fr3

loc_8C0BFDE8:
mov.l @(loc_8C0BFEE8,pc),r1 ; r1 set to 0x43070000
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul 	
fsts fpul,fr3

loc_8C0BFDF0:
fmov.s @(r0,r4),fr2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFF, r3 set to 0xFFFFFFFf
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fmov.s fr2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0BFE06:
mov 0x31,r0 ; r0 set to 0x31
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r3,@(r0,r4) 	
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFE14:
mov 0x31,r0 ; r0 set to 0x31
mov r5,r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov r4,r1
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
add 0x34,r2
mov.l @(loc_8C0BFEDC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0BFEF0,pc),r0  ; r0 set to 0x8C0BFEF0
fmov.s @r0,fr4
mov.w @(loc_8C0BFEDA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0BFE3e
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
bra loc_8C0BFE44
fadd fr4,fr3

loc_8C0BFE3E:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
fsub fr4,fr3

loc_8C0BFE44:
mov.l @(loc_8C0BFEF4,pc),r1 ; r1 set to 0x43542492, r1 set to 0x43542492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul 	
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
fmov.s @(r0,r4),fr2
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BFE5E:
#data 0xE031
#data 0xE3FF6253
#data 0x4F226143
#data 0x72340434
#data 0x7134D31b
#data 0xE00C430b
#data 0xD123C720
#data 0xE060F308
#data 0xF437415a
#data 0xF308C71e
#data 0xF437E06c
#data 0xF308C71d
#data 0xF437E05c
#data 0xF38DE068
#data 0xE038F437
#data 0xF30DF246
#data 0xF427F230
#data 0xF408C719
#data 0x034D9019
#data 0x89052338
#data 0xF246E05c
#data 0xF427F24d
#data 0xF408C715

#align4
loc_8C0BFEB8:
#data 0xD30CE034
#data 0xE51BF346
#data 0xF340E605
#data 0x432BF437
#data 0x4F26


loc_8C0BFECA:
mov 0x31,r0 ; r0 set to 0x31
mov 0xF0,r3 ; r3 set to 0xFFFFFFF0
mov.b r3,@(r0,r4) 	
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_8C0BFEEC,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFED8:
#data 0x012c

loc_8C0BFEDA:
#data 0x0130

#align4
loc_8C0BFEDC:
#data 0x8c1294C8

loc_8C0BFEE0:
#data 0x42820000

#align4
loc_8C0BFEE4:
#data 0x433EB6Db

#align4
loc_8C0BFEE8:
#data 0x43070000

#align4
loc_8C0BFEEC:
#data 0x8c034C38

loc_8C0BFEF0:
#data 0x41F00000

#align4
loc_8C0BFEF4:
#data 0x43542492
#data 0x414DB6Db
#data 0xBF092492
#data 0x40555555
#data 0x433C9249
#data 0x42A00000
#data 0xC2A00000


loc_8C0BFF10:
mov 0x31,r0 ; r0 set to 0x31
mov 0x88,r3 ; r3 set to 0xFFFFFF88
mov.b r3,@(r0,r4) 	
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C0C002C,pc),r0 ; r0 set to 0x130
mov 0x07,r6 ; r6 set to 0x07
mov.w @(r0,r4),r2
xor r3,r2
mov.w r2,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.l @(0x14,r4),r1
mov.b @(r0,r1),r2
mov.l @(loc_8C0C0030,pc),r0 ; r0 set to 0x8C15B2Ec
extu.b r2,r2
mov.b @(r0,r2),r1
mov.l @(loc_8C0C0034,pc),r0 ; r0 set to 0x8C15B2Fc
extu.b r1,r1
shll r1
mov.w @(r0,r1),r2
mov 0x48,r0 ; r0 set to 0x48
extu.w r2,r2
mov.l r2,@(r0,r4) 	
mov.l @(loc_8C0C0038,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov 0x1B,r5

loc_8C0BFF42:
mov 0x31,r0 ; r0 set to 0x31
mov r5,r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov r4,r1
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
add 0x34,r2
mov.l @(loc_8C0C003C,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0C0040,pc),r0  ; r0 set to 0x8C0C0040
mov.l @(loc_8C0C0038,pc),r3 ; r3 set to 0x8C034C38
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
mov 0x60,r1 ; r1 set to 0x60
fmov.s fr3,@(r0,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x04,r6 ; r6 set to 0x04
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0BFF78:
mov 0x31,r0 ; r0 set to 0x31
mov 0xF0,r3 ; r3 set to 0xFFFFFFF0
mov.b r3,@(r0,r4) 	
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_8C0C0038,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0BFF86:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0C0044,pc),r0 ; r0 set to 0x8C15B308
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0BFFA4:
#data 0x4F222FE6
#data 0x430BD327
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349037

#align4
loc_8C0BFFC0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0BFFC6:
mov r4,r3
mov.l @(loc_8C0C004C,pc),r1 ; r1 set to 0x8C15B32c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0BFFD8:
mov.w @(loc_8C0C002E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
add 0x15,r0 ; r0 set to 0x141
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x00,r0 	
bt/s loc_8C0BFFF2
fldi0 fr4
cmp/eq 0x03,r0 	
bt loc_8C0BFFFa
bra bank0c.loc_8C0C005c
nop 	

loc_8C0BFFF2:
mov.w @(loc_8C0C002E,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
bra bank0c.loc_8C0C00A0
mov.b r3,@(r0,r4) 	

loc_8C0BFFFA:
#data 0x8445
#data 0x80457001
#data 0xF447E068
#data 0xF308C712
#data 0xF437E05c
#data 0x034D900e
#data 0x8B032338
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0C001C:
#data 0xF308C70d
#data 0xF437E060
#data 0xF308C70c
#data 0xE06CA039

loc_8C0C002C:
#data 0x0130

loc_8C0C002E:
#data 0x012c

#align4
loc_8C0C0030:
#data 0x8c15B2Ec

loc_8C0C0034:
#data 0x8c15B2Fc

loc_8C0C0038:
#data 0x8c034C38

loc_8C0C003C:
#data 0x8c1294C8

loc_8C0C0040:
#data 0x434FDB6d

#align4
loc_8C0C0044:
#data 0x8c15B308

loc_8C0C0048:
#data 0x8c034D8c

loc_8C0C004C:
#data 0x8c15B32c
#data 0x3FD55555
#data 0x414DB6Db
#data 0xBF092492
