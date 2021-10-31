
!RAM_BSZ1_Global_UpdateEntirePaletteFlag = $000024

!RAM_BSZ1_Global_RandomByte01 = $000031
!RAM_BSZ1_Global_RandomByte02 = !RAM_BSZ1_Global_RandomByte01+$01
!RAM_BSZ1_Global_RandomByte03 = !RAM_BSZ1_Global_RandomByte01+$02
!RAM_BSZ1_Global_RandomByte04 = !RAM_BSZ1_Global_RandomByte01+$03
!RAM_BSZ1_Global_RandomByte05 = !RAM_BSZ1_Global_RandomByte01+$04
!RAM_BSZ1_Global_RandomByte06 = !RAM_BSZ1_Global_RandomByte01+$05
!RAM_BSZ1_Global_RandomByte07 = !RAM_BSZ1_Global_RandomByte01+$06
!RAM_BSZ1_Global_RandomByte08 = !RAM_BSZ1_Global_RandomByte01+$07
!RAM_BSZ1_Global_RandomByte09 = !RAM_BSZ1_Global_RandomByte01+$08
!RAM_BSZ1_Global_RandomByte0A = !RAM_BSZ1_Global_RandomByte01+$09
!RAM_BSZ1_Global_RandomByte0B = !RAM_BSZ1_Global_RandomByte01+$0A
!RAM_BSZ1_Global_RandomByte0C = !RAM_BSZ1_Global_RandomByte01+$0B
!RAM_BSZ1_Global_RandomByte0D = !RAM_BSZ1_Global_RandomByte01+$0C
!RAM_BSZ1_Global_RandomByte0E = !RAM_BSZ1_Global_RandomByte01+$0D
!RAM_BSZ1_Global_RandomByte0F = !RAM_BSZ1_Global_RandomByte01+$0E
!RAM_BSZ1_Global_RandomByte10 = !RAM_BSZ1_Global_RandomByte01+$0F

!RAM_BSZ1_Player_DisplayedRupeeCountLo = $0000B0
!RAM_BSZ1_Player_DisplayedRupeeCountHi = !RAM_BSZ1_Player_DisplayedRupeeCountLo+$01

!RAM_BSZ1_Global_CurrentWeek = $0000B3

!RAM_BSZ1_Global_HeldButtonsLoP1 = $0000C0
!RAM_BSZ1_Global_HeldButtonsHiP1 = !RAM_BSZ1_Global_HeldButtonsLoP1+$01
!RAM_BSZ1_Global_HeldButtonsLoP2 = $0000C2
!RAM_BSZ1_Global_HeldButtonsHiP2 = !RAM_BSZ1_Global_HeldButtonsLoP2+$01

!RAM_BSZ1_Global_PressedButtonsLoP1 = $0000C8
!RAM_BSZ1_Global_PressedButtonsHiP1 = !RAM_BSZ1_Global_PressedButtonsLoP1+$01
!RAM_BSZ1_Global_PressedButtonsLoP2 = $0000CA
!RAM_BSZ1_Global_PressedButtonsHiP2 = !RAM_BSZ1_Global_PressedButtonsLoP2+$01

!RAM_BSZ1_Global_DisableButtonsLoP1 = $0000D0
!RAM_BSZ1_Global_DisableButtonsLoP2 = $0000D1
!RAM_BSZ1_Global_DisableButtonsHiP1 = $0000D4
!RAM_BSZ1_Global_DisableButtonsHiP2 = $0000D5

!RAM_BSZ1_Global_SpriteRAMTable = $000600
;
;	$00 - Sprite ID

;$000605 = Player On Screen X position

;$000608 = Player On Screen Y position

!RAM_BSZ1_Global_OAMBuffer = $001C00
!RAM_BSZ1_Global_OAMTileSizeBuffer = $001E20

!RAM_BSZ1_Global_ScreenDisplayRegister = $001F00
!RAM_BSZ1_Global_OAMSizeAndDataAreaDesignation = $001F01
!RAM_BSZ1_Global_BGModeAndTileSizeSetting = $001F02
!RAM_BSZ1_Global_MosaicSizeAndBGEnable = $001F03
!RAM_BSZ1_Global_BG1AddressAndSize = $001F04
!RAM_BSZ1_Global_BG2AddressAndSize = !RAM_BSZ1_Global_BG1AddressAndSize+$01
!RAM_BSZ1_Global_BG3AddressAndSize = $001F06
!RAM_BSZ1_Global_BG1And2TileDataDesignation = $001F07
!RAM_BSZ1_Global_Layer1XPosLo = $001F08
!RAM_BSZ1_Global_Layer1XPosHi = !RAM_BSZ1_Global_Layer1XPosLo+$01
!RAM_BSZ1_Global_Layer1YPosLo = $001F0A
!RAM_BSZ1_Global_Layer1YPosHi = !RAM_BSZ1_Global_Layer1YPosLo+$01
!RAM_BSZ1_Global_Layer2XPosLo = $001F0C
!RAM_BSZ1_Global_Layer2XPosHi = !RAM_BSZ1_Global_Layer2XPosLo+$01
!RAM_BSZ1_Global_Layer2YPosLo = $001F0E
!RAM_BSZ1_Global_Layer2YPosHi = !RAM_BSZ1_Global_Layer2YPosLo+$01
!RAM_BSZ1_Global_Layer3XPosLo = $001F10
!RAM_BSZ1_Global_Layer3XPosHi = !RAM_BSZ1_Global_Layer3XPosLo+$01
!RAM_BSZ1_Global_Layer3YPosLo = $001F12
!RAM_BSZ1_Global_Layer3YPosHi = !RAM_BSZ1_Global_Layer3YPosLo+$01
!RAM_BSZ1_Global_BG1And2WindowMaskSettings = $001F14
!RAM_BSZ1_Global_BG3And4WindowMaskSettings = !RAM_BSZ1_Global_BG1And2WindowMaskSettings+$01
!RAM_BSZ1_Global_ObjectAndColorWindowSettings = $001F16
!RAM_BSZ1_Global_MainScreenLayers = $001F17
!RAM_BSZ1_Global_SubScreenLayers = !RAM_BSZ1_Global_MainScreenLayers+$01
!RAM_BSZ1_Global_MainScreenWindowMask = $001F19
!RAM_BSZ1_Global_SubScreenWindowMask = !RAM_BSZ1_Global_MainScreenWindowMask+$01
!RAM_BSZ1_Global_ColorMathInitialSettings = $001F1B
!RAM_BSZ1_Global_ColorMathSelectAndEnable = !RAM_BSZ1_Global_ColorMathInitialSettings+$01
!RAM_BSZ1_Global_FixedColorData1 = $001F1D
!RAM_BSZ1_Global_FixedColorData2 = $001F1E
!RAM_BSZ1_Global_FixedColorData3 = $001F1F
!RAM_BSZ1_Global_InitialScreenSettings = $001F20
!RAM_BSZ1_Global_HDMAEnable = $001F21

!RAM_BSZ1_Player_CurrentHP = $7E6DDC
!RAM_BSZ1_Player_MaxHP = $7E6DDD

;$7F72FD = Cave Unlock Flags

!RAM_BSZ1_Player_EnemyKillCount = $7E7411
!RAM_BSZ1_Player_BombDropCounter = $7E7412
!RAM_BSZ1_Player_FairyDropCounter = $7E7413

if !Define_Global_ROMToAssemble&(!ROM_BSZ1_OM1W3) != $00
!RAM_BSZ1_RAM7E741B = $7E741B
!RAM_BSZ1_RAM7E741C = $7E741C
!RAM_BSZ1_RAM7E741D = $7E741D
!RAM_BSZ1_RAM7E741E = $7E741E
!RAM_BSZ1_RAM7E741F = $7E741F
!RAM_BSZ1_RAM7E7420 = $7E7420
!RAM_BSZ1_Player_Inventory = $7E7421
else
!RAM_BSZ1_Player_Inventory = $7E741B
endif
	!RAM_BSZ1_Player_CurrentBoomerang = !RAM_BSZ1_Player_Inventory
	!RAM_BSZ1_Player_CurrentBombCount = !RAM_BSZ1_Player_Inventory+$01
	!RAM_BSZ1_Player_CurrentArrow = !RAM_BSZ1_Player_Inventory+$02
	!RAM_BSZ1_Player_CurrentCandle = !RAM_BSZ1_Player_Inventory+$03
	!RAM_BSZ1_Player_GotOcarinaFlag = !RAM_BSZ1_Player_Inventory+$04
	!RAM_BSZ1_Player_GotMeatFlag = !RAM_BSZ1_Player_Inventory+$05
	!RAM_BSZ1_Player_CurrentPotion = !RAM_BSZ1_Player_Inventory+$06
	!RAM_BSZ1_Player_GotMagicalRodFlag = !RAM_BSZ1_Player_Inventory+$07
	!RAM_BSZ1_Player_GotRaftFlag = !RAM_BSZ1_Player_Inventory+$08
	!RAM_BSZ1_Player_GotBookOfMagicFlag = !RAM_BSZ1_Player_Inventory+$09
	!RAM_BSZ1_Player_CurrentRing = !RAM_BSZ1_Player_Inventory+$0A
	!RAM_BSZ1_Player_GotStepladderFlag = !RAM_BSZ1_Player_Inventory+$0B
	!RAM_BSZ1_Player_GotUnknownItem1Flag = !RAM_BSZ1_Player_Inventory+$0C
	!RAM_BSZ1_Player_GotPowerBraceletFlag = !RAM_BSZ1_Player_Inventory+$0D
	!RAM_BSZ1_Player_GotLetterFlag = !RAM_BSZ1_Player_Inventory+$0E
	!RAM_BSZ1_Player_CollectedCompasses = !RAM_BSZ1_Player_Inventory+$0F
	!RAM_BSZ1_Player_GotUnknownItem3Flag = !RAM_BSZ1_Player_Inventory+$10
	!RAM_BSZ1_Player_CollectedDungeonMaps = !RAM_BSZ1_Player_Inventory+$11
	!RAM_BSZ1_Player_GotUnknownItem5Flag = !RAM_BSZ1_Player_Inventory+$12
	!RAM_BSZ1_Player_GotUnknownItem6Flag = !RAM_BSZ1_Player_Inventory+$13
	!RAM_BSZ1_Player_GotUnknownItem7Flag = !RAM_BSZ1_Player_Inventory+$14
	!RAM_BSZ1_Player_CurrentRupeeCountLo = !RAM_BSZ1_Player_Inventory+$15
	!RAM_BSZ1_Player_CurrentRupeeCountHi = 	!RAM_BSZ1_Player_CurrentRupeeCountLo+$01
	!RAM_BSZ1_Player_CurrentKeyCount = !RAM_BSZ1_Player_Inventory+$17	
	!RAM_BSZ1_Player_CollectedTriforcePieces = !RAM_BSZ1_Player_Inventory+$18
	!RAM_BSZ1_Player_CurrentSword = !RAM_BSZ1_Player_Inventory+$19						; Note: Also affects whether you can screen transition or not.
	!RAM_BSZ1_Player_GotMagicalShieldFlag = !RAM_BSZ1_Player_Inventory+$1A
	!RAM_BSZ1_Player_GotBowFlag = !RAM_BSZ1_Player_Inventory+$1B
if !Define_Global_ROMToAssemble&(!ROM_BSZ1_OM1W3) != $00
!RAM_BSZ1_Sprite_EnemiesFrozenFlag = $7E743D
!RAM_BSZ1_RAM7E7438 = $7E743E
!RAM_BSZ1_RAM7E7439 = $7E743F
!RAM_BSZ1_RAM7E743F = $7E7445
!RAM_BSZ1_RAM7E7441 = $7E7447
!RAM_BSZ1_RAM7E7443 = $7E7449
!RAM_BSZ1_RAM7E7445 = $7E744B
!RAM_BSZ1_RAM7E7447 = $7E744D
!RAM_BSZ1_RAM7E7449 = $7E744F
!RAM_BSZ1_RAM7E744B = $7E7451
!RAM_BSZ1_RAM7E744D = $7E7453
!RAM_BSZ1_RAM7E745F = $7E7465
!RAM_BSZ1_RAM7E7460 = $7E7466
!RAM_BSZ1_RAM7E7461 = $7E7467
!RAM_BSZ1_RAM7E7462 = $7E7468
!RAM_BSZ1_RAM7E7468 = $7E746E
!RAM_BSZ1_RAM7E7497 = $7E749D
!RAM_BSZ1_RAM7E7498 = $7E749E
!RAM_BSZ1_RAM7E749A = $7E74A0
!RAM_BSZ1_RAM7E749B = $7E74A1
!RAM_BSZ1_RAM7E749C = $7E74A2
!RAM_BSZ1_RAM7E749E = $7E74A4
!RAM_BSZ1_RAM7E749F = $7E74A5
!RAM_BSZ1_RAM7E74A0 = $7E74A6
!RAM_BSZ1_RAM7E74A2 = $7E74A8
!RAM_BSZ1_RAM7E74A3 = $7E74A9
!RAM_BSZ1_RAM7E74A4 = $7E74AA
!RAM_BSZ1_RAM7E74A6 = $7E74AC
!RAM_BSZ1_RAM7E74A7 = $7E74AD
!RAM_BSZ1_RAM7E74A9 = $7E74AF
!RAM_BSZ1_RAM7E74AA = $7E74B0
!RAM_BSZ1_RAM7E74AC = $7E74B2
!RAM_BSZ1_RAM7E74B0 = $7E74B6
!RAM_BSZ1_RAM7E74B1 = $7E74B7
!RAM_BSZ1_RAM7E74B2 = $7E74B8
!RAM_BSZ1_RAM7E74B3 = $7E74B9
!RAM_BSZ1_RAM7E74B5 = $7E74BB
!RAM_BSZ1_RAM7E74B6 = $7E74BC
!RAM_BSZ1_RAM7E74B7 = $7E74BD
!RAM_BSZ1_RAM7E74B8 = $7E74BE
!RAM_BSZ1_RAM7E74B9 = $7E74BF
!RAM_BSZ1_RAM7E74C5 = $7E74CB
!RAM_BSZ1_RAM7E74C7 = $7E74CD
!RAM_BSZ1_RAM7E74C8 = $7E74CE
!RAM_BSZ1_RAM7E74D5 = $7E74DB
!RAM_BSZ1_Player_MaxBombCount = $7E74DC
!RAM_BSZ1_RAM7E74D9 = $7E74DF

!RAM_BSZ1_RAM7E75D9 = $7E75DF
!RAM_BSZ1_RAM7E75DA = $7E75E0
!RAM_BSZ1_RAM7E75DB = $7E75E1
!RAM_BSZ1_RAM7E75DC = $7E75E2
!RAM_BSZ1_RAM7E75DD = $7E75E3
!RAM_BSZ1_RAM7E75DE = $7E75E4
else
!RAM_BSZ1_Sprite_EnemiesFrozenFlag = $7E7437
!RAM_BSZ1_RAM7E7438 = $7E7438
!RAM_BSZ1_RAM7E7439 = $7E7439
!RAM_BSZ1_RAM7E743F = $7E743F
!RAM_BSZ1_RAM7E7441 = $7E7441
!RAM_BSZ1_RAM7E7443 = $7E7443
!RAM_BSZ1_RAM7E7445 = $7E7445
!RAM_BSZ1_RAM7E7447 = $7E7447
!RAM_BSZ1_RAM7E7449 = $7E7449
!RAM_BSZ1_RAM7E744B = $7E744B
!RAM_BSZ1_RAM7E744D = $7E744D
!RAM_BSZ1_RAM7E745F = $7E745F
!RAM_BSZ1_RAM7E7460 = $7E7460
!RAM_BSZ1_RAM7E7461 = $7E7461
!RAM_BSZ1_RAM7E7462 = $7E7462
!RAM_BSZ1_RAM7E7468 = $7E7468
!RAM_BSZ1_RAM7E7497 = $7E7497
!RAM_BSZ1_RAM7E7498 = $7E7498
!RAM_BSZ1_RAM7E749A = $7E749A
!RAM_BSZ1_RAM7E749B = $7E749B
!RAM_BSZ1_RAM7E749C = $7E749C
!RAM_BSZ1_RAM7E749E = $7E749E
!RAM_BSZ1_RAM7E749F = $7E749F
!RAM_BSZ1_RAM7E74A0 = $7E74A0
!RAM_BSZ1_RAM7E74A2 = $7E74A2
!RAM_BSZ1_RAM7E74A3 = $7E74A3
!RAM_BSZ1_RAM7E74A4 = $7E74A4
!RAM_BSZ1_RAM7E74A6 = $7E74A6
!RAM_BSZ1_RAM7E74A7 = $7E74A7
!RAM_BSZ1_RAM7E74A9 = $7E74A9
!RAM_BSZ1_RAM7E74AA = $7E74AA
!RAM_BSZ1_RAM7E74AC = $7E74AC
!RAM_BSZ1_RAM7E74B0 = $7E74B0
!RAM_BSZ1_RAM7E74B1 = $7E74B1
!RAM_BSZ1_RAM7E74B2 = $7E74B2
!RAM_BSZ1_RAM7E74B3 = $7E74B3
!RAM_BSZ1_RAM7E74B5 = $7E74B5
!RAM_BSZ1_RAM7E74B6 = $7E74B6
!RAM_BSZ1_RAM7E74B7 = $7E74B7
!RAM_BSZ1_RAM7E74B8 = $7E74B8
!RAM_BSZ1_RAM7E74B9 = $7E74B9
!RAM_BSZ1_RAM7E74C5 = $7E74C5
!RAM_BSZ1_RAM7E74C7 = $7E74C7
!RAM_BSZ1_RAM7E74C8 = $7E74C8
!RAM_BSZ1_RAM7E74D5 = $7E74D5
!RAM_BSZ1_Player_MaxBombCount = $7E74D6
!RAM_BSZ1_RAM7E74D9 = $7E74D9

!RAM_BSZ1_RAM7E75D9 = $7E75D9
!RAM_BSZ1_RAM7E75DA = $7E75DA
!RAM_BSZ1_RAM7E75DB = $7E75DB
!RAM_BSZ1_RAM7E75DC = $7E75DC
!RAM_BSZ1_RAM7E75DD = $7E75DD
!RAM_BSZ1_RAM7E75DE = $7E75DE
endif

!RAM_BSZ1_Global_PaletteMirror = $7FA000

struct BSZ1_Global_PaletteMirror !RAM_BSZ1_Global_PaletteMirror
	.LowByte: skip $01
	.HighByte: skip $01
endstruct align $02

struct BSZ1_Global_OAMBuffer !RAM_BSZ1_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct BSZ1_Global_UpperOAMBuffer !RAM_BSZ1_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct BSZ1_OAMTileSizeBuffer !RAM_BSZ1_Global_OAMTileSizeBuffer
	.Slot: skip $01
endstruct
