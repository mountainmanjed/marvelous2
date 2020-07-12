#symbol player_start 0x8c268340

#symbol player_start_charA 0x8c268340
#symbol player_start_charB 0x8c2688e4
#symbol player_start_charC 0x8c268e88
#symbol player_start_charD 0x8c26942c
#symbol player_start_charE 0x8c2699d0
#symbol player_start_charF 0x8c269f74

;==============================================
;Player Memory Offsets
;==============================================
;00-7f
#symbol active 0x00						; byte
#symbol charid0 0x01					; byte

#symbol unnamed_state 0x05				; byte
#symbol Special_Move_State 0x06			; byte


#symbol x_place 0x34					; float
#symbol y_place 0x38					; float

#symbol x_sprite_scale 0x50			; float
#symbol y_sprite_scale 0x54			; float
#symbol z_sprite_scale 0x58			; float

#symbol x_velocity 0x5c				; float
#symbol y_velocity 0x60				; float

#symbol JumpUNK 0x68					; float
#symbol y_drag 0x6c						; float

;0x0080 - 0x05a4 requires use of data section

;Dat TBL Pointers
#symbol animations 0x0168 				; pointer
#symbol hitbox_pattern_table 0x016c 	; pointer
#symbol hitbox_data 0x0170 				; pointer
#symbol attack_data 0x0174 				; pointer
#symbol Sprite_Extras 0x0178			; pointer
#symbol DatFilePointer 0x017c			; pointer
	
#symbol sp_move_strength 0x01a3			; byte


#symbol chain_strength 0x01e8			; byte
#symbol sp_move_id 0x01e9				; byte

;Buffs
#symbol Buff_Speed 0x0200				; byte
#symbol Flight_Flag 0x0201				; byte
#symbol Buff_HyperArmor 0x0202			; byte
#symbol Buff_Unk_03 0x0203				; byte
#symbol Buff_Unk_04 0x0204				; byte
#symbol Buff_Damage 0x0205				; byte
#symbol Buff_Defense 0x0206				; byte
#symbol Buff_Unk_07 0x0207				; byte
#symbol Buff_Unk_08 0x0208				; byte
#symbol Buff_Unk_09 0x0209				; byte
#symbol Buff_Unk_0a 0x020a				; byte
#symbol Buff_Unk_0b 0x020b				; byte


#symbol EnemyPointer 0x020c				;Pointer

#symbol snapout 0x02a0					; byte


;==============================================
;Character IDs
;==============================================
#symbol Char_ID_Ryu 0x00
#symbol Char_ID_Zangeif 0x01
#symbol Char_ID_Guile 0x02
#symbol Char_ID_Morrigan 0x03
#symbol Char_ID_Anakaris 0x04
#symbol Char_ID_Strider 0x05
#symbol Char_ID_Cyclops 0x06
#symbol Char_ID_Wolverine 0x07
#symbol Char_ID_Psylocke 0x08
#symbol Char_ID_Iceman 0x09
#symbol Char_ID_Rogue 0x0a
#symbol Char_ID_CapAmerica 0x0b
#symbol Char_ID_Spiderman 0x0c
#symbol Char_ID_Hulk 0x0d
#symbol Char_ID_Venom 0x0e
#symbol Char_ID_DrDoom 0x0f
#symbol Char_ID_Tron 0x10
#symbol Char_ID_Jill 0x11
#symbol Char_ID_Hayato 0x12
#symbol Char_ID_Ruby 0x13
#symbol Char_ID_Sonson 0x14
#symbol Char_ID_Amingo 0x15
#symbol Char_ID_Marrow 0x16
#symbol Char_ID_Cable 0x17
#symbol Char_ID_Abyss_1 0x18
#symbol Char_ID_Abyss_2 0x19
#symbol Char_ID_Abyss_3 0x1a
#symbol Char_ID_Chunli 0x1b
#symbol Char_ID_Megaman 0x1c
#symbol Char_ID_Roll 0x1d
#symbol Char_ID_Akuma 0x1e
#symbol Char_ID_BBHood 0x1f
#symbol Char_ID_Felica 0x20
#symbol Char_ID_Charlie 0x21
#symbol Char_ID_Sakura 0x22
#symbol Char_ID_Dan 0x23
#symbol Char_ID_Cammy 0x24
#symbol Char_ID_Dhalsim 0x25
#symbol Char_ID_Dict 0x26
#symbol Char_ID_Ken 0x27
#symbol Char_ID_Gambit 0x28
#symbol Char_ID_Juggernaut 0x29
#symbol Char_ID_Storm 0x2a
#symbol Char_ID_Sabretooth 0x2b
#symbol Char_ID_Magneto 0x2c
#symbol Char_ID_Shuma 0x2d
#symbol Char_ID_War_Machine 0x2e
#symbol Char_ID_Silv_Samurai 0x2f
#symbol Char_ID_OmegaRed 0x30
#symbol Char_ID_Spiral 0x31
#symbol Char_ID_Colossus 0x32
#symbol Char_ID_Ironman 0x33
#symbol Char_ID_Sentinel 0x34
#symbol Char_ID_Blackheart 0x35
#symbol Char_ID_Thanos 0x36
#symbol Char_ID_Jin 0x37
#symbol Char_ID_CapCom 0x38
#symbol Char_ID_BoneWolv 0x39
#symbol Char_ID_Servbot 0x3a
