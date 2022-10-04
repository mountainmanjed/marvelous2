#symbol player_start 0x8c268340

#symbol player_start_charA 0x8c268340 ;p1
#symbol player_start_charB 0x8c2688e4 ;p2
#symbol player_start_charC 0x8c268e88 ;p1
#symbol player_start_charD 0x8c26942c ;p2
#symbol player_start_charE 0x8c2699d0 ;p1
#symbol player_start_charF 0x8c269f74 ;p2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Used to jump into character programming
;Table
;	0		4		8		c
;	Unknown Unknown Normal1 Normal2 ; 00
;	FwrdDsh BackDsh FgIntro MtchWin ; 10
;	SpecPRG Unknown Unknown Unknown ; 20
;	Unknown DlyHypC Unknown Unknown ; 30
;	TmHypMn TmHypAs Assists AlphCnt ; 40
;	Unknown Unknown Unknown Unknown ; 50
;	Unknown Unknown Unknown Unknown ; 60

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#symbol SPL_A_Jump_TBL 0x8c289bd8
#symbol SPL_B_Jump_TBL 0x8c289c58
#symbol SPL_C_Jump_TBL 0x8c289cd8
#symbol SPL_D_Jump_TBL 0x8c289d58
#symbol SPL_E_Jump_TBL 0x8c289dd8
#symbol SPL_F_Jump_TBL 0x8c289e58

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
; pointer to where character programming gets loaded
; see also loc_8c14E9F8 and loc_8c04f0ec
#symbol ptr_to_char_programming_A 0x0CE30000
#symbol ptr_to_char_programming_B 0x0CE38000
#symbol ptr_to_char_programming_C 0x0CE40000
#symbol ptr_to_char_programming_D 0x0CE48000
#symbol ptr_to_char_programming_E 0x0CE50000
#symbol ptr_to_char_programming_F 0x0CE58000

#symbol pl_A_datfile 0x0c420000 ;P1 C1
#symbol pl_A_FACfile 0x0c568000
#symbol pl_C_datfile 0x0c570000 ;P1 C2
#symbol pl_C_FACfile 0x0C6B8000
#symbol pl_E_datfile 0x0c6c0000 ;P1 C3
#symbol pl_E_FACfile 0x0c808000

#symbol pl_B_datfile 0x0c810000 ;P2 C1
#symbol pl_B_FACfile 0x0c958000
#symbol pl_D_datfile 0x0c960000 ;P2 C2
#symbol pl_D_FACfile 0x0caa8000
#symbol pl_F_datfile 0x0cab0000 ;P2 C3
#symbol pl_F_FACfile 0x0cbf8000

;==============================================
;Player Memory Offsets
;==============================================
;00-7f
#symbol active 0x00						; byte
#symbol charid0 0x01					; byte

#symbol unnamed_state 0x05				; byte
#symbol Special_Move_State 0x06			; byte

; used for many mash moves as well as sent's dash
#symbol mash_timer 0x1c					; int16
; used for ruby heart balls count, tron drill mash, psylocke psyblade
#symbol mash_counter 0x1e				; int16

; airdash direction(?)
#symbol airdash_direction 0x22			; byte

;Color Selected in match
#symbol pl_palid_match 0x25				; byte

; absolute to world/stage
#symbol x_pos 0x34						; float
#symbol y_pos 0x38						; float

#symbol char_pal_effect 0x40			; word

#symbol x_sprite_scale 0x50				; float
#symbol y_sprite_scale 0x54				; float
#symbol z_sprite_scale 0x58				; float

#symbol x_velocity 0x5c					; float
#symbol y_velocity 0x60					; float

#symbol JumpUNK 0x68					; float
#symbol y_drag 0x6c						; float

;==============================================
;0x0080 - 0x05a4 requires use of data section,
; and can't be used as immediates
;==============================================

#symbol x_pos_screenspace 0xe0			; float
#symbol y_pos_screenspace 0xe4			; float

#symbol xflip_copy_2 0x110				;byte

; not sure, seems to be 1 all the time
; loc_8c05176e sets it to 1
#symbol unk_012c 0x012c					; byte

#symbol xflip_copy 0x130				; byte

; if == 128 then opponent can preblock
; also seems to control whether special cancels are allowed
; 64
; seems to directly inherit from 0x10 of animation structs in pldat files
; definitely flags
; 0x20 = can't special cancel, super cancel, or call assist
; 0x40 = recovery frames?
; 0x80 = opponent can proximity block
#symbol anim_flags 0x014a				; byte

#symbol frame_count 0x0142				; int16
#symbol sprite_id 0x0144				; int16

#symbol current_cell_data 0x0154		; pointer

#symbol anim_id 0x0158					; byte
#symbol anim_group 0x0158				; byte

;Dat File Pointers
#symbol Dat_GFX1 0x015c					; pointer
#symbol Dat_GFX2 0x0160					; pointer
#symbol Dat_Pal 0x0164					; pointer
#symbol animations 0x0168				; pointer
#symbol hitbox_pattern_table 0x016c		; pointer
#symbol hitbox_data 0x0170				; pointer
#symbol attack_data 0x0174				; pointer
#symbol Sprite_Extras 0x0178			; pointer
#symbol Dat_FilePointer 0x017c			; pointer

#symbol FAC_ptr 0x0184					; pointer

#symbol attack_data_index 0x01a1		; byte	

#symbol sp_move_strength 0x01a3			; byte

#symbol hitbox_group_index 0x01c0		; byte

; seems to control what animation/move to play
#symbol unk_01d0 0x01d0					; byte

#symbol xflip 0x01d2					; byte
; 0 when walking forward, 1 when walking backward, 0xFF when not walking
#symbol unk_01d3 0x01d3					; byte

; if != 0, can't do normal jump specials. also prevents some SJ specials
; like ruby heart ball and lightning attack
#symbol special_move_jump_limiter 0x01d4; byte
#symbol airdash_counter 0x01d5			; byte

; unfly glitch is based on this value
#symbol normal_jump_action_counter 0x01d6; byte

#symbol double_jump_counter 0x01d9		; byte

#symbol undizzy 0x01e1					; byte
; counts down, when reaches 0, sets plmem[0x1e1] = 0
#symbol undizzy_reset_timer 0x01e1		; byte

#symbol chain_strength 0x01e8			; byte
#symbol sp_move_id 0x01e9				; byte

; invincible to throws when > 0
; timer, counts down, set when getting up
#symbol throw_immunity 0x01eb			; byte

; invincible to attack when > 0
; timer, counts down, set when tagged out
#symbol attack_immunity 0x01ed			; byte

; counts down. when > 0x00, prevents special/super moves, airdash, tag
#symbol disable_special_move_counter 0x01f2; byte

; counts down. when > 0x00, prevents all moves
; set during fly screen dash
#symbol disable_all_move_counter 0x01f3	; byte

; ?? loaded as byte by loc_8c0500ac
#symbol unk_1f4 0x01f4					; byte

; 00 = standing
; 01 = crouching
; 02 = jumping
; 03 = otg stun? used near loc_8c05470c

#symbol stance 0x01f9					; byte

; 00 = not superjumping
; 01 = superjump rising
; 02 = superjump falling
#symbol superjump_state 0x01fc			; byte

; 00 = no corner
; 01 = right corner
; 02 = left corner
#symbol corner_touching 0x01fd			; byte

; 00 if doing a punch attack
; 01 if doing a kick attack
#symbol limb_choice 0x01fe				; byte

; 00 ground
; 01 normal jump
; 02 super jump
#symbol in_air_normal 0x1ff				; byte

;Buffs
#symbol Buff_Speed 0x0200				; byte
#symbol Flight_Flag 0x0201				; byte
#symbol Buff_HyperArmor 0x0202			; byte
; for magneto at least this toggles his idle floating anim
#symbol Buff_Unk_03 0x0203				; byte
#symbol Buff_Unk_04 0x0204				; byte
#symbol Buff_Damage 0x0205				; byte
#symbol Buff_Defense 0x0206				; byte
; how hard the screen shakes when you land
#symbol landing_screen_shake_strength 0x0207 ; byte
#symbol Buff_Unk_08 0x0208				; byte
#symbol Buff_Unk_09 0x0209				; byte
#symbol Buff_Unk_0a 0x020a				; byte
#symbol Buff_Unk_0b 0x020b				; byte

; pointer to opponent's currently active character's plmem struct
#symbol EnemyPointer 0x020c				; pointer

; 00 normally, 01 once you block in the current jump
; causes guard breaks if normal jumping ([0x1fc] == 00)
#symbol has_blocked_this_jump 0x0210	; byte

; if 1, camera follows this character (used for fs dummy)
; opponent can leave edge of screen, and will be forced to fs-dash in
#symbol flying_screen_camera_follows 0x0235	; byte

#symbol air_hitstun_counter 0x0239		; byte

; if >= 2, you can't be airthrown.
; incremented when you get thrown
; set to 0 when you press an attack, or when you land
#symbol airthrow_protection_counter 0x023a	; byte

; loaded by loc_8c0500ac as a float
#symbol unk244 0x0244					; float

#symbol dhc_move_id 0x0258				; byte

; starts out as 0
; set to 1 when you call assist
; when you do a team super, it gets set to 3 if you have 3 chars, 2 if you have 2, 1 if you have 1
; decrements when your assist chars leave screen
; if it's greater than > 1 while thcing, you cant move
#symbol unk259 0x0259					; byte

;Used in Damage Calc
#symbol unk270 0x0270					;word and byte

; 0xff when in hitstun
#symbol unk275 0x0275					; byte

#symbol x_opponent_distance 0x0298		; float

#symbol unk29e 0x029e
#symbol snapout_disable_timer 0x02a0	; int16
; 0x2a9 Ice Man Palette effect var
; 0x340 through 0x350 are inputs?

; compared using tst 0x0400 in omega red char programming,
; which indicates it might be bit flags?
#symbol unk_034e 0x034e					; int16

; 0x354 and 0x35c might be int16 input timers??

;in damage_calc
#symbol unk_0411 0x0411					; byte

; loaded around loc_8c0518c6 and compared to y position
#symbol unk_041c_float 0x041c			; float

#symbol health 0x0420					; int16
; might be red health??
#symbol health2 0x0424					; int16

#symbol UnkCpuData440 0x0440			; word

#symbol assist_type 0x04c9				; byte


;Control_ID 0x524
; if != 0, controlled by cpu
#symbol is_cpu 0x0525					; byte

;#symbol unk_52c 0x052c

#symbol pal_id 0x052d					; byte

; Char A & B Only
#symbol num_wins 0x540                  ; byte
#symbol num_lose 0x541                  ; byte
#symbol num_draw 0x542                  ; byte
#symbol handicap_level 0x543            ; byte

;#symbol unk_55c 0x55c

;==============================================
;Character IDs
;==============================================
#symbol Char_ID_Ryu 0x00
#symbol Char_ID_Zangief 0x01
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
