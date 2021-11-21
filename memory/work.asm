#symbol GameGlobalPointer 0x8c26823c
#symbol GameGlobalStart 0x8c268240 ;???

;8c2895F0 Battle State

;8c289620 - Frameskip Timer Value (Turbo 1 = 4, Turbo 2 = 2)(FreeSelectNormal = 6,FreeSelectTurbo = 4)
;8c289621 - Frameskip Counter
;8c289630 - Timer
;8c289631 - Frame Timer 

;RngVal 8c16bc2c
;==============================================
;Locations
;==============================================
;0x8C268270 Char Unlocks
;0x8c268278 Color Unlocks
;0x8C26828C Game mode
;0x8c268291 Stage Unlocks
;0x8c268298 Text Name Flag

;0x8C26A8C8 Abyss Stage Flag
#symbol STG_ID 0x8c26A95C

;==============================================================================
#symbol Charsel_Input 0x8c28c474;

;8c28c490 character select data?

;8c26ac24 - Extra Sprite Render memory slot*1d0

;0ce60000 - Texture_Decompress_Buffer
;0ce80000 - DM00 Poly
;0Cea0000 - Stage Poly
;0ced0000 - Effect Poly

;==============================================
;Varibles
;==============================================
#symbol CpsXScale 0x3fd55555 ; 1.6666666269302368
#symbol CpsYScale 0x40092492 ; 2.1428570747375490

;unknown
;0x8c2681dc

;0x8c26a940
;0x8c26a944

#symbol stg_AirS1 0x00 ; Air Ship
#symbol stg_Dsrt1 0x01 ; Desert
#symbol stg_Fctry 0x02 ; Factory
#symbol stg_Carn1 0x03 ; Carnival
#symbol stg_Swmp1 0x04 ; Swamp
#symbol stg_Cave1 0x05 ; Blue Cave
#symbol stg_Clck1 0x06 ; Clock
#symbol stg_Raft1 0x07 ; Ice River
#symbol stg_Abyss 0x08 ; Abyss
#symbol stg_AirS2 0x09 ; Alt AirShip
#symbol stg_Dsrt2 0x0A ; Alt Desert
#symbol stg_Train 0x0B ; Training
#symbol stg_Carn2 0x0C ; Alt Carnival
#symbol stg_Swmp2 0x0D ; Pink Swamp
#symbol stg_Cave2 0x0E ; Lava Cave 
#symbol stg_Clck2 0x0F ; Winter Clock
#symbol stg_Raft2 0x10 ; River Raft