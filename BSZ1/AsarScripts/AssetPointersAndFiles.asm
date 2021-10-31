; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!BSZ1_OM1W1 = $0001
!BSZ1_OM1W2 = $0002
!BSZ1_OM1W3 = $0004
!BSZ1_OM1W4 = $0008
!BSZ1_OM2W1 = $0010
!BSZ1_OM2W2 = $0020
!BSZ1_OM2W3 = $0040
!BSZ1_OM2W4 = $0080
!BSZ1_RM1W1 = $0100
!BSZ1_RM1W2 = $0200
!BSZ1_RM1W3 = $0400
!BSZ1_RM1W4 = $0800
!BSZ1_RM2W1 = $1000
!BSZ1_RM2W2 = $2000
!BSZ1_RM2W3 = $4000
!BSZ1_RM2W4 = $8000

check bankcross off
org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl Map16PointersStart,(Map16PointersEnd-Map16PointersStart)/$0C
	dl Map1OverworldDataPointersStart,(Map1OverworldDataPointersEnd-Map1OverworldDataPointersStart)/$0C
	dl Map1CaveDataPointersStart,(Map1CaveDataPointersEnd-Map1CaveDataPointersStart)/$0C
	dl Map1Level1DataPointersStart,(Map1Level1DataPointersEnd-Map1Level1DataPointersStart)/$0C
	dl Map1Level2DataPointersStart,(Map1Level2DataPointersEnd-Map1Level2DataPointersStart)/$0C
	dl Map1Level3DataPointersStart,(Map1Level3DataPointersEnd-Map1Level3DataPointersStart)/$0C
	dl Map1Level4DataPointersStart,(Map1Level4DataPointersEnd-Map1Level4DataPointersStart)/$0C
	dl Map1Level5DataPointersStart,(Map1Level5DataPointersEnd-Map1Level5DataPointersStart)/$0C
	dl Map1Level6DataPointersStart,(Map1Level6DataPointersEnd-Map1Level6DataPointersStart)/$0C
	dl Map1Level7DataPointersStart,(Map1Level7DataPointersEnd-Map1Level7DataPointersStart)/$0C
	dl Map1Level8DataPointersStart,(Map1Level8DataPointersEnd-Map1Level8DataPointersStart)/$0C
	dl UnknownMapDataPointersStart,(UnknownMapDataPointersEnd-UnknownMapDataPointersStart)/$0C
	dl UnsortedDataPointersStart,(UnsortedDataPointersEnd-UnsortedDataPointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl SPC700DataPointersStart,(SPC700DataPointersEnd-SPC700DataPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $C00000,$C02000,GFX_Sprite_GlobalSprites,GFX_Sprite_GlobalSpritesEnd
	dl $C02000,$C04000,GFX_Sprite_OverworldEnemies,GFX_Sprite_OverworldEnemiesEnd
	dl $C10000,$C12000,GFX_Sprite_DungeonBossesAndEnemies,GFX_Sprite_DungeonBossesAndEnemiesEnd
	dl $C12000,$C14000,GFX_Sprite_ZeldaAndGanon,GFX_Sprite_ZeldaAndGanonEnd
	dl $C14000,$C1A000,GFX_FGBG_Dungeon,GFX_FGBG_DungeonEnd
	dl $C41800,$C42000,GFX_Sprite_FemalePlayer,GFX_Sprite_FemalePlayerEnd
	dl $C61000,$C62000,GFX_FGBG_UnknownGraphics,GFX_FGBG_UnknownGraphicsEnd
	dl $C70000,$C71000,GFX_Layer3_Font,GFX_Layer3_FontEnd
	dl $C72000,$C7A000,GFX_FGBG_Overworld,GFX_FGBG_OverworldEnd
	dl $C9D000,$C9E000,GFX_FGBG_UnknownGraphics,GFX_FGBG_UnknownGraphicsEnd
	dl $CB0000,$CB2000,GFX_Sprite_Level1Enemies,GFX_Sprite_Level1EnemiesEnd
	dl $CB2000,$CB4000,GFX_Sprite_Level2Enemies,GFX_Sprite_Level2EnemiesEnd
	dl $CB4000,$CB6000,GFX_Sprite_Level3Enemies,GFX_Sprite_Level3EnemiesEnd
	dl $CB6000,$CB8000,GFX_Sprite_Level4Enemies,GFX_Sprite_Level4EnemiesEnd
	dl $CB8000,$CBA000,GFX_Sprite_Level5Enemies,GFX_Sprite_Level5EnemiesEnd
	dl $CBA000,$CBC000,GFX_Sprite_Level6Enemies,GFX_Sprite_Level6EnemiesEnd
	dl $CBC000,$CBE000,GFX_Sprite_Level7Enemies,GFX_Sprite_Level7EnemiesEnd
	dl $CBE000,$CC0000,GFX_Sprite_Level8Enemies,GFX_Sprite_Level8EnemiesEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

PalettesPointersStart:
	dl $C41200,$C41400,PAL_Unknown1,PAL_Unknown1End
	dl $C41400,$C41700,PAL_Unknown2,PAL_Unknown2End
	dl $C41700,$C41800,PAL_Player,PAL_PlayerEnd
	dl $C60000,$C60200,PAL_Level1,PAL_Level1End
	dl $C60200,$C60400,PAL_Level2,PAL_Level2End
	dl $C60400,$C60600,PAL_Level3,PAL_Level3End
	dl $C60600,$C60800,PAL_Level4,PAL_Level4End
	dl $C60800,$C60A00,PAL_Level5,PAL_Level5End
	dl $C60A00,$C60C00,PAL_Level6,PAL_Level6End
	dl $C60C00,$C60E00,PAL_Level7,PAL_Level7End
	dl $C60E00,$C61000,PAL_Level8,PAL_Level8End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C62300,$C62500,PAL_Unknown3,PAL_Unknown3End
	dl $C62500,$C62700,PAL_Unknown4,PAL_Unknown4End
endif
	dl $C7F800,$C7FC00,PAL_Overworld,PAL_OverworldEnd
PalettesPointersEnd:

;--------------------------------------------------------------------

Map16PointersStart:
	dl $C1B800,$C1C000,M16_Unknown1,M16_Unknown1End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C62800,$C63800,M16_Unknown3,M16_Unknown3End
	dl $C7B800,$C7C000,M16_Unknown4,M16_Unknown4End
endif
	dl $C7C000,$C7C800,M16_Overworld,M16_OverworldEnd
	dl $C7C800,$C7D000,M16_Dungeon,M16_DungeonEnd
	dl $C9E000,$C9F000,M16_PauseMenu,M16_PauseMenuEnd
	dl $C9F000,$CA0000,M16_Unknown2,M16_Unknown2End
Map16PointersEnd:

;--------------------------------------------------------------------

Map1OverworldDataPointersStart:
	dl $C80000,$C80200,M1OW_SpriteData_Quadrant_1_1,M1OW_SpriteData_Quadrant_1_1End
	dl $C80200,$C80400,M1OW_SpriteData_Quadrant_1_2,M1OW_SpriteData_Quadrant_1_2End
	dl $C80400,$C80600,M1OW_SpriteData_Quadrant_1_3,M1OW_SpriteData_Quadrant_1_3End
	dl $C80600,$C80800,M1OW_SpriteData_Quadrant_1_4,M1OW_SpriteData_Quadrant_1_4End
	dl $C80800,$C80A00,M1OW_SpriteData_Quadrant_1_5,M1OW_SpriteData_Quadrant_1_5End
	dl $C80A00,$C80C00,M1OW_SpriteData_Quadrant_1_6,M1OW_SpriteData_Quadrant_1_6End
	dl $C80C00,$C80E00,M1OW_SpriteData_Quadrant_1_7,M1OW_SpriteData_Quadrant_1_7End
	dl $C80E00,$C81000,M1OW_SpriteData_Quadrant_1_8,M1OW_SpriteData_Quadrant_1_8End
	dl $C81000,$C81200,M1OW_SpriteData_Quadrant_2_1,M1OW_SpriteData_Quadrant_2_1End
	dl $C81200,$C81400,M1OW_SpriteData_Quadrant_2_2,M1OW_SpriteData_Quadrant_2_2End
	dl $C81400,$C81600,M1OW_SpriteData_Quadrant_2_3,M1OW_SpriteData_Quadrant_2_3End
	dl $C81600,$C81800,M1OW_SpriteData_Quadrant_2_4,M1OW_SpriteData_Quadrant_2_4End
	dl $C81800,$C81A00,M1OW_SpriteData_Quadrant_2_5,M1OW_SpriteData_Quadrant_2_5End
	dl $C81A00,$C81C00,M1OW_SpriteData_Quadrant_2_6,M1OW_SpriteData_Quadrant_2_6End
	dl $C81C00,$C81E00,M1OW_SpriteData_Quadrant_2_7,M1OW_SpriteData_Quadrant_2_7End
	dl $C81E00,$C82000,M1OW_SpriteData_Quadrant_2_8,M1OW_SpriteData_Quadrant_2_8End
	dl $C82000,$C82200,M1OW_SpriteData_Quadrant_3_1,M1OW_SpriteData_Quadrant_3_1End
	dl $C82200,$C82400,M1OW_SpriteData_Quadrant_3_2,M1OW_SpriteData_Quadrant_3_2End
	dl $C82400,$C82600,M1OW_SpriteData_Quadrant_3_3,M1OW_SpriteData_Quadrant_3_3End
	dl $C82600,$C82800,M1OW_SpriteData_Quadrant_3_4,M1OW_SpriteData_Quadrant_3_4End
	dl $C82800,$C82A00,M1OW_SpriteData_Quadrant_3_5,M1OW_SpriteData_Quadrant_3_5End
	dl $C82A00,$C82C00,M1OW_SpriteData_Quadrant_3_6,M1OW_SpriteData_Quadrant_3_6End
	dl $C82C00,$C82E00,M1OW_SpriteData_Quadrant_3_7,M1OW_SpriteData_Quadrant_3_7End
	dl $C82E00,$C83000,M1OW_SpriteData_Quadrant_3_8,M1OW_SpriteData_Quadrant_3_8End
	dl $C83000,$C83200,M1OW_SpriteData_Quadrant_4_1,M1OW_SpriteData_Quadrant_4_1End
	dl $C83200,$C83400,M1OW_SpriteData_Quadrant_4_2,M1OW_SpriteData_Quadrant_4_2End
	dl $C83400,$C83600,M1OW_SpriteData_Quadrant_4_3,M1OW_SpriteData_Quadrant_4_3End
	dl $C83600,$C83800,M1OW_SpriteData_Quadrant_4_4,M1OW_SpriteData_Quadrant_4_4End
	dl $C83800,$C83A00,M1OW_SpriteData_Quadrant_4_5,M1OW_SpriteData_Quadrant_4_5End
	dl $C83A00,$C83C00,M1OW_SpriteData_Quadrant_4_6,M1OW_SpriteData_Quadrant_4_6End
	dl $C83C00,$C83E00,M1OW_SpriteData_Quadrant_4_7,M1OW_SpriteData_Quadrant_4_7End
	dl $C83E00,$C84000,M1OW_SpriteData_Quadrant_4_8,M1OW_SpriteData_Quadrant_4_8End
	dl $C84000,$C84200,M1OW_SpriteData_Quadrant_5_1,M1OW_SpriteData_Quadrant_5_1End
	dl $C84200,$C84400,M1OW_SpriteData_Quadrant_5_2,M1OW_SpriteData_Quadrant_5_2End
	dl $C84400,$C84600,M1OW_SpriteData_Quadrant_5_3,M1OW_SpriteData_Quadrant_5_3End
	dl $C84600,$C84800,M1OW_SpriteData_Quadrant_5_4,M1OW_SpriteData_Quadrant_5_4End
	dl $C84800,$C84A00,M1OW_SpriteData_Quadrant_5_5,M1OW_SpriteData_Quadrant_5_5End
	dl $C84A00,$C84C00,M1OW_SpriteData_Quadrant_5_6,M1OW_SpriteData_Quadrant_5_6End
	dl $C84C00,$C84E00,M1OW_SpriteData_Quadrant_5_7,M1OW_SpriteData_Quadrant_5_7End
	dl $C84E00,$C85000,M1OW_SpriteData_Quadrant_5_8,M1OW_SpriteData_Quadrant_5_8End
	dl $C85000,$C85200,M1OW_SpriteData_Quadrant_6_1,M1OW_SpriteData_Quadrant_6_1End
	dl $C85200,$C85400,M1OW_SpriteData_Quadrant_6_2,M1OW_SpriteData_Quadrant_6_2End
	dl $C85400,$C85600,M1OW_SpriteData_Quadrant_6_3,M1OW_SpriteData_Quadrant_6_3End
	dl $C85600,$C85800,M1OW_SpriteData_Quadrant_6_4,M1OW_SpriteData_Quadrant_6_4End
	dl $C85800,$C85A00,M1OW_SpriteData_Quadrant_6_5,M1OW_SpriteData_Quadrant_6_5End
	dl $C85A00,$C85C00,M1OW_SpriteData_Quadrant_6_6,M1OW_SpriteData_Quadrant_6_6End
	dl $C85C00,$C85E00,M1OW_SpriteData_Quadrant_6_7,M1OW_SpriteData_Quadrant_6_7End
	dl $C85E00,$C86000,M1OW_SpriteData_Quadrant_6_8,M1OW_SpriteData_Quadrant_6_8End
	dl $C86000,$C86200,M1OW_SpriteData_Quadrant_7_1,M1OW_SpriteData_Quadrant_7_1End
	dl $C86200,$C86400,M1OW_SpriteData_Quadrant_7_2,M1OW_SpriteData_Quadrant_7_2End
	dl $C86400,$C86600,M1OW_SpriteData_Quadrant_7_3,M1OW_SpriteData_Quadrant_7_3End
	dl $C86600,$C86800,M1OW_SpriteData_Quadrant_7_4,M1OW_SpriteData_Quadrant_7_4End
	dl $C86800,$C86A00,M1OW_SpriteData_Quadrant_7_5,M1OW_SpriteData_Quadrant_7_5End
	dl $C86A00,$C86C00,M1OW_SpriteData_Quadrant_7_6,M1OW_SpriteData_Quadrant_7_6End
	dl $C86C00,$C86E00,M1OW_SpriteData_Quadrant_7_7,M1OW_SpriteData_Quadrant_7_7End
	dl $C86E00,$C87000,M1OW_SpriteData_Quadrant_7_8,M1OW_SpriteData_Quadrant_7_8End
	dl $C87000,$C87200,M1OW_SpriteData_Quadrant_8_1,M1OW_SpriteData_Quadrant_8_1End
	dl $C87200,$C87400,M1OW_SpriteData_Quadrant_8_2,M1OW_SpriteData_Quadrant_8_2End
	dl $C87400,$C87600,M1OW_SpriteData_Quadrant_8_3,M1OW_SpriteData_Quadrant_8_3End
	dl $C87600,$C87800,M1OW_SpriteData_Quadrant_8_4,M1OW_SpriteData_Quadrant_8_4End
	dl $C87800,$C87A00,M1OW_SpriteData_Quadrant_8_5,M1OW_SpriteData_Quadrant_8_5End
	dl $C87A00,$C87C00,M1OW_SpriteData_Quadrant_8_6,M1OW_SpriteData_Quadrant_8_6End
	dl $C87C00,$C87E00,M1OW_SpriteData_Quadrant_8_7,M1OW_SpriteData_Quadrant_8_7End
	dl $C87E00,$C88000,M1OW_SpriteData_Quadrant_8_8,M1OW_SpriteData_Quadrant_8_8End
	dl $C90000,$C90100,M1OW_TileData_Quadrant_1_1,M1OW_TileData_Quadrant_1_1End
	dl $C90100,$C90200,M1OW_TileData_Quadrant_1_2,M1OW_TileData_Quadrant_1_2End
	dl $C90200,$C90300,M1OW_TileData_Quadrant_1_3,M1OW_TileData_Quadrant_1_3End
	dl $C90300,$C90400,M1OW_TileData_Quadrant_1_4,M1OW_TileData_Quadrant_1_4End
	dl $C90400,$C90500,M1OW_TileData_Quadrant_1_5,M1OW_TileData_Quadrant_1_5End
	dl $C90500,$C90600,M1OW_TileData_Quadrant_1_6,M1OW_TileData_Quadrant_1_6End
	dl $C90600,$C90700,M1OW_TileData_Quadrant_1_7,M1OW_TileData_Quadrant_1_7End
	dl $C90700,$C90800,M1OW_TileData_Quadrant_1_8,M1OW_TileData_Quadrant_1_8End
	dl $C90800,$C90900,M1OW_TileData_Quadrant_2_1,M1OW_TileData_Quadrant_2_1End
	dl $C90900,$C90A00,M1OW_TileData_Quadrant_2_2,M1OW_TileData_Quadrant_2_2End
	dl $C90A00,$C90B00,M1OW_TileData_Quadrant_2_3,M1OW_TileData_Quadrant_2_3End
	dl $C90B00,$C90C00,M1OW_TileData_Quadrant_2_4,M1OW_TileData_Quadrant_2_4End
	dl $C90C00,$C90D00,M1OW_TileData_Quadrant_2_5,M1OW_TileData_Quadrant_2_5End
	dl $C90D00,$C90E00,M1OW_TileData_Quadrant_2_6,M1OW_TileData_Quadrant_2_6End
	dl $C90E00,$C90F00,M1OW_TileData_Quadrant_2_7,M1OW_TileData_Quadrant_2_7End
	dl $C90F00,$C91000,M1OW_TileData_Quadrant_2_8,M1OW_TileData_Quadrant_2_8End
	dl $C91000,$C91100,M1OW_TileData_Quadrant_3_1,M1OW_TileData_Quadrant_3_1End
	dl $C91100,$C91200,M1OW_TileData_Quadrant_3_2,M1OW_TileData_Quadrant_3_2End
	dl $C91200,$C91300,M1OW_TileData_Quadrant_3_3,M1OW_TileData_Quadrant_3_3End
	dl $C91300,$C91400,M1OW_TileData_Quadrant_3_4,M1OW_TileData_Quadrant_3_4End
	dl $C91400,$C91500,M1OW_TileData_Quadrant_3_5,M1OW_TileData_Quadrant_3_5End
	dl $C91500,$C91600,M1OW_TileData_Quadrant_3_6,M1OW_TileData_Quadrant_3_6End
	dl $C91600,$C91700,M1OW_TileData_Quadrant_3_7,M1OW_TileData_Quadrant_3_7End
	dl $C91700,$C91800,M1OW_TileData_Quadrant_3_8,M1OW_TileData_Quadrant_3_8End
	dl $C91800,$C91900,M1OW_TileData_Quadrant_4_1,M1OW_TileData_Quadrant_4_1End
	dl $C91900,$C91A00,M1OW_TileData_Quadrant_4_2,M1OW_TileData_Quadrant_4_2End
	dl $C91A00,$C91B00,M1OW_TileData_Quadrant_4_3,M1OW_TileData_Quadrant_4_3End
	dl $C91B00,$C91C00,M1OW_TileData_Quadrant_4_4,M1OW_TileData_Quadrant_4_4End
	dl $C91C00,$C91D00,M1OW_TileData_Quadrant_4_5,M1OW_TileData_Quadrant_4_5End
	dl $C91D00,$C91E00,M1OW_TileData_Quadrant_4_6,M1OW_TileData_Quadrant_4_6End
	dl $C91E00,$C91F00,M1OW_TileData_Quadrant_4_7,M1OW_TileData_Quadrant_4_7End
	dl $C91F00,$C92000,M1OW_TileData_Quadrant_4_8,M1OW_TileData_Quadrant_4_8End
	dl $C92000,$C92100,M1OW_TileData_Quadrant_5_1,M1OW_TileData_Quadrant_5_1End
	dl $C92100,$C92200,M1OW_TileData_Quadrant_5_2,M1OW_TileData_Quadrant_5_2End
	dl $C92200,$C92300,M1OW_TileData_Quadrant_5_3,M1OW_TileData_Quadrant_5_3End
	dl $C92300,$C92400,M1OW_TileData_Quadrant_5_4,M1OW_TileData_Quadrant_5_4End
	dl $C92400,$C92500,M1OW_TileData_Quadrant_5_5,M1OW_TileData_Quadrant_5_5End
	dl $C92500,$C92600,M1OW_TileData_Quadrant_5_6,M1OW_TileData_Quadrant_5_6End
	dl $C92600,$C92700,M1OW_TileData_Quadrant_5_7,M1OW_TileData_Quadrant_5_7End
	dl $C92700,$C92800,M1OW_TileData_Quadrant_5_8,M1OW_TileData_Quadrant_5_8End
	dl $C92800,$C92900,M1OW_TileData_Quadrant_6_1,M1OW_TileData_Quadrant_6_1End
	dl $C92900,$C92A00,M1OW_TileData_Quadrant_6_2,M1OW_TileData_Quadrant_6_2End
	dl $C92A00,$C92B00,M1OW_TileData_Quadrant_6_3,M1OW_TileData_Quadrant_6_3End
	dl $C92B00,$C92C00,M1OW_TileData_Quadrant_6_4,M1OW_TileData_Quadrant_6_4End
	dl $C92C00,$C92D00,M1OW_TileData_Quadrant_6_5,M1OW_TileData_Quadrant_6_5End
	dl $C92D00,$C92E00,M1OW_TileData_Quadrant_6_6,M1OW_TileData_Quadrant_6_6End
	dl $C92E00,$C92F00,M1OW_TileData_Quadrant_6_7,M1OW_TileData_Quadrant_6_7End
	dl $C92F00,$C93000,M1OW_TileData_Quadrant_6_8,M1OW_TileData_Quadrant_6_8End
	dl $C93000,$C93100,M1OW_TileData_Quadrant_7_1,M1OW_TileData_Quadrant_7_1End
	dl $C93100,$C93200,M1OW_TileData_Quadrant_7_2,M1OW_TileData_Quadrant_7_2End
	dl $C93200,$C93300,M1OW_TileData_Quadrant_7_3,M1OW_TileData_Quadrant_7_3End
	dl $C93300,$C93400,M1OW_TileData_Quadrant_7_4,M1OW_TileData_Quadrant_7_4End
	dl $C93400,$C93500,M1OW_TileData_Quadrant_7_5,M1OW_TileData_Quadrant_7_5End
	dl $C93500,$C93600,M1OW_TileData_Quadrant_7_6,M1OW_TileData_Quadrant_7_6End
	dl $C93600,$C93700,M1OW_TileData_Quadrant_7_7,M1OW_TileData_Quadrant_7_7End
	dl $C93700,$C93800,M1OW_TileData_Quadrant_7_8,M1OW_TileData_Quadrant_7_8End
	dl $C93800,$C93900,M1OW_TileData_Quadrant_8_1,M1OW_TileData_Quadrant_8_1End
	dl $C93900,$C93A00,M1OW_TileData_Quadrant_8_2,M1OW_TileData_Quadrant_8_2End
	dl $C93A00,$C93B00,M1OW_TileData_Quadrant_8_3,M1OW_TileData_Quadrant_8_3End
	dl $C93B00,$C93C00,M1OW_TileData_Quadrant_8_4,M1OW_TileData_Quadrant_8_4End
	dl $C93C00,$C93D00,M1OW_TileData_Quadrant_8_5,M1OW_TileData_Quadrant_8_5End
	dl $C93D00,$C93E00,M1OW_TileData_Quadrant_8_6,M1OW_TileData_Quadrant_8_6End
	dl $C93E00,$C93F00,M1OW_TileData_Quadrant_8_7,M1OW_TileData_Quadrant_8_7End
	dl $C93F00,$C94000,M1OW_TileData_Quadrant_8_8,M1OW_TileData_Quadrant_8_8End
Map1OverworldDataPointersEnd:

;--------------------------------------------------------------------

Map1CaveDataPointersStart:
	dl $C67000,$C67200,M1C_SpriteData_ShopWithShieldKeyAndCandle,M1C_SpriteData_ShopWithShieldKeyAndCandleEnd
	dl $C67200,$C67400,M1C_SpriteData_LetterOldMan,M1C_SpriteData_LetterOldManEnd
	dl $C67C00,$C67E00,M1C_SpriteData_PotionShop,M1C_SpriteData_PotionShopEnd
	dl $C67E00,$C68000,M1C_SpriteData_WhiteSwordOldMan,M1C_SpriteData_WhiteSwordOldManEnd
	dl $C68000,$C68200,M1C_SpriteData_ShopWithArrowBlueRingAndMeat,M1C_SpriteData_ShopWithArrowBlueRingAndMeatEnd
	dl $C68200,$C68400,M1C_SpriteData_PotionOrHeartContainerOldMan,M1C_SpriteData_PotionOrHeartContainerOldManEnd
	dl $C68400,$C68600,M1C_SpriteData_AdviceOldMan1,M1C_SpriteData_AdviceOldMan1End
	dl $C68600,$C68800,M1C_SpriteData_SecretToEveryoneMoblin1,M1C_SpriteData_SecretToEveryoneMoblin1End
	dl $C68800,$C68A00,M1C_SpriteData_SecretToEveryoneMoblin2,M1C_SpriteData_SecretToEveryoneMoblin2End
	dl $C68A00,$C68C00,M1C_SpriteData_AdviceOldMan2,M1C_SpriteData_AdviceOldMan2End
	dl $C68C00,$C68E00,M1C_SpriteData_MoneyMakingGameOldMan,M1C_SpriteData_MoneyMakingGameOldManEnd
	dl $C68E00,$C69000,M1C_SpriteData_UnknownMoblin,M1C_SpriteData_UnknownMoblinEnd
	dl $C69000,$C69200,M1C_SpriteData_UnknownMoblin2,M1C_SpriteData_UnknownMoblin2End
	dl $C69200,$C69400,M1C_SpriteData_ShopWithShieldKeyAndMeat,M1C_SpriteData_ShopWithShieldKeyAndMeatEnd
	dl $C69400,$C69600,M1C_SpriteData_UnknownOldMan1,M1C_SpriteData_UnknownOldMan1End
	dl $C69600,$C69800,M1C_SpriteData_AdviceOldMan3,M1C_SpriteData_AdviceOldMan3End
	dl $C69800,$C69A00,M1C_SpriteData_DoorRepairOldMan,M1C_SpriteData_DoorRepairOldManEnd
	dl $C69A00,$C69C00,M1C_SpriteData_AdviceOldMan4,M1C_SpriteData_AdviceOldMan4End
	dl $C69C00,$C69E00,M1C_SpriteData_AdviceOldMan5,M1C_SpriteData_AdviceOldMan5End
	dl $C69E00,$C6A000,M1C_SpriteData_ShopWithHeartAndMeat,M1C_SpriteData_ShopWithHeartAndMeatEnd
	dl $C6A000,$C6A200,M1C_SpriteData_UnknownOldMan2,M1C_SpriteData_UnknownOldMan2End
	dl $C7D900,$C7DA00,M1C_TileData_Unknown,M1C_TileData_UnknownEnd
	dl $C7DA00,$C7DC00,M1C_SpriteData_Rupees,M1C_SpriteData_RupeesEnd
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C7DC00,$C7DE00,M1C_SpriteData_Unknown,M1C_SpriteData_UnknownEnd
endif
	dl $C7FC00,$C7FD00,M1C_TileData_OldManCave,M1C_TileData_OldManCaveEnd
	dl $C7FD00,$C7FF00,M1C_SpriteData_WoodenSwordOldMan,M1C_SpriteData_WoodenSwordOldManEnd
	dl $C7FF00,$C80000,M1C_TileData_Shop,M1C_TileData_ShopEnd
Map1CaveDataPointersEnd:

;--------------------------------------------------------------------

Map1Level1DataPointersStart:
	dl $C66700,$C66800,M1L1_TileData_Quadrant_5_2,M1L1_TileData_Quadrant_5_2End
	dl $C66800,$C66900,M1L1_TileData_Quadrant_8_3,M1L1_TileData_Quadrant_8_3End
	dl $C66900,$C66A00,M1L1_TileData_Quadrant_8_2,M1L1_TileData_Quadrant_8_2End
	dl $C66A00,$C66B00,M1L1_TileData_Quadrant_8_4,M1L1_TileData_Quadrant_8_4End
	dl $C66B00,$C66C00,M1L1_TileData_Quadrant_7_4,M1L1_TileData_Quadrant_7_4End
	dl $C6A200,$C6A300,M1L1_TileData_Quadrant_6_4,M1L1_TileData_Quadrant_6_4End
	dl $C6A300,$C6A400,M1L1_TileData_Quadrant_5_4,M1L1_TileData_Quadrant_5_4End
	dl $C6A400,$C6A500,M1L1_TileData_Quadrant_4_3,M1L1_TileData_Quadrant_4_3End
	dl $C6A500,$C6A600,M1L1_TileData_Quadrant_4_1,M1L1_TileData_Quadrant_4_1End
	dl $C6A700,$C6A800,M1L1_TileData_Quadrant_1_1,M1L1_TileData_Quadrant_1_1End
	dl $C6A800,$C6A900,M1L1_TileData_Quadrant_1_2,M1L1_TileData_Quadrant_1_2End
	dl $C6A900,$C6AA00,M1L1_TileData_Quadrant_1_3,M1L1_TileData_Quadrant_1_3End
	dl $C6B500,$C6B600,M1L1_TileData_Quadrant_9_1,M1L1_TileData_Quadrant_9_1End
	dl $C6B700,$C6B800,M1L1_TileData_Quadrant_1_4,M1L1_TileData_Quadrant_1_4End
	dl $C6B800,$C6B900,M1L1_TileData_Quadrant_3_1,M1L1_TileData_Quadrant_3_1End
	dl $C6B900,$C6BA00,M1L1_TileData_Quadrant_4_2,M1L1_TileData_Quadrant_4_2End
	dl $C6BA00,$C6BB00,M1L1_TileData_Quadrant_5_3,M1L1_TileData_Quadrant_5_3End
	dl $C6BD00,$C6BE00,M1L1_TileData_Quadrant_2_1,M1L1_TileData_Quadrant_2_1End
	dl $C6BE00,$C6BF00,M1L1_TileData_Quadrant_8_1,M1L1_TileData_Quadrant_8_1End
	dl $C88000,$C88200,M1L1_SpriteData_Quadrant_5_2,M1L1_SpriteData_Quadrant_5_2End
	dl $C88200,$C88400,M1L1_SpriteData_Quadrant_8_3,M1L1_SpriteData_Quadrant_8_3End
	dl $C88400,$C88600,M1L1_SpriteData_Quadrant_8_2,M1L1_SpriteData_Quadrant_8_2End
	dl $C88600,$C88800,M1L1_SpriteData_Quadrant_8_4,M1L1_SpriteData_Quadrant_8_4End
	dl $C88800,$C88A00,M1L1_SpriteData_Quadrant_7_4,M1L1_SpriteData_Quadrant_7_4End
	dl $C88A00,$C88C00,M1L1_SpriteData_Quadrant_6_4,M1L1_SpriteData_Quadrant_6_4End
	dl $C88C00,$C88E00,M1L1_SpriteData_Quadrant_5_4,M1L1_SpriteData_Quadrant_5_4End
	dl $C88E00,$C89000,M1L1_SpriteData_Quadrant_4_3,M1L1_SpriteData_Quadrant_4_3End
	dl $C89000,$C89200,M1L1_SpriteData_Quadrant_4_1,M1L1_SpriteData_Quadrant_4_1End
	dl $C89400,$C89600,M1L1_SpriteData_Quadrant_1_1,M1L1_SpriteData_Quadrant_1_1End
	dl $C89600,$C89800,M1L1_SpriteData_Quadrant_1_2,M1L1_SpriteData_Quadrant_1_2End
	dl $C89800,$C89A00,M1L1_SpriteData_Quadrant_1_3,M1L1_SpriteData_Quadrant_1_3End
	dl $C8B000,$C8B200,M1L1_SpriteData_Quadrant_9_1,M1L1_SpriteData_Quadrant_9_1End
	dl $C8B200,$C8B400,M1L1_SpriteData_Quadrant_8_1,M1L1_SpriteData_Quadrant_8_1End
	dl $C8B800,$C8BA00,M1L1_SpriteData_Quadrant_3_1,M1L1_SpriteData_Quadrant_3_1End
	dl $C8BA00,$C8BC00,M1L1_SpriteData_Quadrant_1_4,M1L1_SpriteData_Quadrant_1_4End
	dl $C8BC00,$C8BE00,M1L1_SpriteData_Quadrant_5_3,M1L1_SpriteData_Quadrant_5_3End
	dl $C8BE00,$C8C000,M1L1_SpriteData_Quadrant_4_2,M1L1_SpriteData_Quadrant_4_2End
	dl $C8C200,$C8C400,M1L1_SpriteData_Quadrant_2_1,M1L1_SpriteData_Quadrant_2_1End
Map1Level1DataPointersEnd:

;--------------------------------------------------------------------

Map1Level2DataPointersStart:
	dl $C6A600,$C6A700,M1L2_TileData_Quadrant_7_4,M1L2_TileData_Quadrant_7_4End
	dl $C6AA00,$C6AB00,M1L2_TileData_Quadrant_7_2,M1L2_TileData_Quadrant_7_2End
	dl $C6AB00,$C6AC00,M1L2_TileData_Quadrant_6_2,M1L2_TileData_Quadrant_6_2End
	dl $C6AC00,$C6AD00,M1L2_TileData_Quadrant_5_2,M1L2_TileData_Quadrant_5_2End
	dl $C6AD00,$C6AE00,M1L2_TileData_Quadrant_4_2,M1L2_TileData_Quadrant_4_2End
	dl $C6AE00,$C6AF00,M1L2_TileData_Quadrant_3_2,M1L2_TileData_Quadrant_3_2End
	dl $C6AF00,$C6B000,M1L2_TileData_Quadrant_3_3,M1L2_TileData_Quadrant_3_3End
	dl $C6B000,$C6B100,M1L2_TileData_Quadrant_2_2,M1L2_TileData_Quadrant_2_2End
	dl $C6B100,$C6B200,M1L2_TileData_Quadrant_2_3,M1L2_TileData_Quadrant_2_3End
	dl $C6B300,$C6B400,M1L2_TileData_Quadrant_6_4,M1L2_TileData_Quadrant_6_4End
	dl $C6B400,$C6B500,M1L2_TileData_Quadrant_8_2,M1L2_TileData_Quadrant_8_2End
	dl $C6B600,$C6B700,M1L2_TileData_Quadrant_1_2,M1L2_TileData_Quadrant_1_2End
	dl $C6BB00,$C6BC00,M1L2_TileData_Quadrant_3_1,M1L2_TileData_Quadrant_3_1End
	dl $C6BC00,$C6BD00,M1L2_TileData_Quadrant_2_1,M1L2_TileData_Quadrant_2_1End
	dl $C89200,$C89400,M1L2_SpriteData_Quadrant_7_4,M1L2_SpriteData_Quadrant_7_4End
	dl $C89A00,$C89C00,M1L2_SpriteData_Quadrant_7_2,M1L2_SpriteData_Quadrant_7_2End
	dl $C89C00,$C89E00,M1L2_SpriteData_Quadrant_6_2,M1L2_SpriteData_Quadrant_6_2End
	dl $C89E00,$C8A000,M1L2_SpriteData_Quadrant_5_2,M1L2_SpriteData_Quadrant_5_2End
	dl $C8A000,$C8A200,M1L2_SpriteData_Quadrant_4_2,M1L2_SpriteData_Quadrant_4_2End
	dl $C8A200,$C8A400,M1L2_SpriteData_Quadrant_3_2,M1L2_SpriteData_Quadrant_3_2End
	dl $C8A400,$C8A600,M1L2_SpriteData_Quadrant_3_3,M1L2_SpriteData_Quadrant_3_3End
	dl $C8A600,$C8A800,M1L2_SpriteData_Quadrant_2_2,M1L2_SpriteData_Quadrant_2_2End
	dl $C8A800,$C8AA00,M1L2_SpriteData_Quadrant_2_3,M1L2_SpriteData_Quadrant_2_3End
	dl $C8AE00,$C8B000,M1L2_SpriteData_Quadrant_8_2,M1L2_SpriteData_Quadrant_8_2End
	dl $C8B400,$C8B600,M1L2_SpriteData_Quadrant_2_1,M1L2_SpriteData_Quadrant_2_1End
	dl $C8B600,$C8B800,M1L2_SpriteData_Quadrant_3_1,M1L2_SpriteData_Quadrant_3_1End
	dl $C8C000,$C8C200,M1L2_SpriteData_Quadrant_1_2,M1L2_SpriteData_Quadrant_1_2End
Map1Level2DataPointersEnd:

;--------------------------------------------------------------------

Map1Level3DataPointersStart:
	dl $C65300,$C65400,M1L3_TileData_Quadrant_4_3,M1L3_TileData_Quadrant_4_3End
	dl $C6BF00,$C6C000,M1L3_TileData_Quadrant_1_1,M1L3_TileData_Quadrant_1_1End
	dl $C6C000,$C6C100,M1L3_TileData_Quadrant_8_3,M1L3_TileData_Quadrant_8_3End
	dl $C6C100,$C6C200,M1L3_TileData_Quadrant_8_2,M1L3_TileData_Quadrant_8_2End
	dl $C6C200,$C6C300,M1L3_TileData_Quadrant_7_1,M1L3_TileData_Quadrant_7_1End
	dl $C6C300,$C6C400,M1L3_TileData_Quadrant_7_3,M1L3_TileData_Quadrant_7_3End
	dl $C6C400,$C6C500,M1L3_TileData_Quadrant_4_1,M1L3_TileData_Quadrant_4_1End
	dl $C6C500,$C6C600,M1L3_TileData_Quadrant_8_4,M1L3_TileData_Quadrant_8_4End
	dl $C6C600,$C6C700,M1L3_TileData_Quadrant_7_4,M1L3_TileData_Quadrant_7_4End
	dl $C6C700,$C6C800,M1L3_TileData_Quadrant_6_4,M1L3_TileData_Quadrant_6_4End
	dl $C6C800,$C6C900,M1L3_TileData_Quadrant_3_1,M1L3_TileData_Quadrant_3_1End
	dl $C6C900,$C6CA00,M1L3_TileData_Quadrant_2_1,M1L3_TileData_Quadrant_2_1End
	dl $C6CA00,$C6CB00,M1L3_TileData_Quadrant_5_4,M1L3_TileData_Quadrant_5_4End
	dl $C6CB00,$C6CC00,M1L3_TileData_Quadrant_1_2,M1L3_TileData_Quadrant_1_2End
	dl $C6CC00,$C6CD00,M1L3_TileData_Quadrant_1_3,M1L3_TileData_Quadrant_1_3End
	dl $C6CD00,$C6CE00,M1L3_TileData_Quadrant_7_2,M1L3_TileData_Quadrant_7_2End
	dl $C6CE00,$C6CF00,M1L3_TileData_Quadrant_6_1,M1L3_TileData_Quadrant_6_1End
	dl $C6CF00,$C6D000,M1L3_TileData_Quadrant_4_4,M1L3_TileData_Quadrant_4_4End
	dl $C8C400,$C8C600,M1L3_SpriteData_Quadrant_1_1,M1L3_SpriteData_Quadrant_1_1End
	dl $C8C600,$C8C800,M1L3_SpriteData_Quadrant_8_3,M1L3_SpriteData_Quadrant_8_3End
	dl $C8C800,$C8CA00,M1L3_SpriteData_Quadrant_8_2,M1L3_SpriteData_Quadrant_8_2End
	dl $C8CA00,$C8CC00,M1L3_SpriteData_Quadrant_7_1,M1L3_SpriteData_Quadrant_7_1End
	dl $C8CC00,$C8CE00,M1L3_SpriteData_Quadrant_7_3,M1L3_SpriteData_Quadrant_7_3End
	dl $C8CE00,$C8D000,M1L3_SpriteData_Quadrant_4_1,M1L3_SpriteData_Quadrant_4_1End
	dl $C8D000,$C8D200,M1L3_SpriteData_Quadrant_8_4,M1L3_SpriteData_Quadrant_8_4End
	dl $C8D200,$C8D400,M1L3_SpriteData_Quadrant_7_4,M1L3_SpriteData_Quadrant_7_4End
	dl $C8D400,$C8D600,M1L3_SpriteData_Quadrant_6_4,M1L3_SpriteData_Quadrant_6_4End
	dl $C8D600,$C8D800,M1L3_SpriteData_Quadrant_3_1,M1L3_SpriteData_Quadrant_3_1End
	dl $C8D800,$C8DA00,M1L3_SpriteData_Quadrant_2_1,M1L3_SpriteData_Quadrant_2_1End
	dl $C8DA00,$C8DC00,M1L3_SpriteData_Quadrant_5_1,M1L3_SpriteData_Quadrant_5_1End
	dl $C8DC00,$C8DE00,M1L3_SpriteData_Quadrant_1_2,M1L3_SpriteData_Quadrant_1_2End
	dl $C8DE00,$C8E000,M1L3_SpriteData_Quadrant_1_3,M1L3_SpriteData_Quadrant_1_3End
	dl $C8E000,$C8E200,M1L3_SpriteData_Quadrant_7_2,M1L3_SpriteData_Quadrant_7_2End
	dl $C8E200,$C8E400,M1L3_SpriteData_Quadrant_6_1,M1L3_SpriteData_Quadrant_6_1End
	dl $C8E400,$C8E600,M1L3_SpriteData_Quadrant_4_4,M1L3_SpriteData_Quadrant_4_4End
	dl $C8E600,$C8E800,M1L3_SpriteData_Quadrant_4_3,M1L3_SpriteData_Quadrant_4_3End
	dl $C8E800,$C8EA00,M1L3_SpriteData_Quadrant_5_4,M1L3_SpriteData_Quadrant_5_4End
	dl $C8EA00,$C8EC00,M1L3_SpriteData_Quadrant_9_1,M1L3_SpriteData_Quadrant_9_1End
	dl $C8EC00,$C8EE00,M1L3_SpriteData_Quadrant_9_2,M1L3_SpriteData_Quadrant_9_2End
Map1Level3DataPointersEnd:

;--------------------------------------------------------------------

Map1Level4DataPointersStart:
	dl $C65400,$C65500,M1L4_TileData_Quadrant_1_1,M1L4_TileData_Quadrant_1_1End
	dl $C65500,$C65600,M1L4_TileData_Quadrant_1_2,M1L4_TileData_Quadrant_1_2End
	dl $C65600,$C65700,M1L4_TileData_Quadrant_1_3,M1L4_TileData_Quadrant_1_3End
	dl $C65700,$C65800,M1L4_TileData_Quadrant_1_4,M1L4_TileData_Quadrant_1_4End
	dl $C65800,$C65900,M1L4_TileData_Quadrant_2_2,M1L4_TileData_Quadrant_2_2End
	dl $C65900,$C65A00,M1L4_TileData_Quadrant_2_3,M1L4_TileData_Quadrant_2_3End
	dl $C65A00,$C65B00,M1L4_TileData_Quadrant_3_2,M1L4_TileData_Quadrant_3_2End
	dl $C65B00,$C65C00,M1L4_TileData_Quadrant_3_3,M1L4_TileData_Quadrant_3_3End
	dl $C65C00,$C65D00,M1L4_TileData_Quadrant_4_2,M1L4_TileData_Quadrant_4_2End
	dl $C65D00,$C65E00,M1L4_TileData_Quadrant_4_3,M1L4_TileData_Quadrant_4_3End
	dl $C65E00,$C65F00,M1L4_TileData_Quadrant_5_2,M1L4_TileData_Quadrant_5_2End
	dl $C65F00,$C66000,M1L4_TileData_Quadrant_5_3,M1L4_TileData_Quadrant_5_3End
	dl $C66000,$C66100,M1L4_TileData_Quadrant_6_2,M1L4_TileData_Quadrant_6_2End
	dl $C66100,$C66200,M1L4_TileData_Quadrant_6_3,M1L4_TileData_Quadrant_6_3End
	dl $C66200,$C66300,M1L4_TileData_Quadrant_7_2,M1L4_TileData_Quadrant_7_2End
	dl $C66300,$C66400,M1L4_TileData_Quadrant_7_3,M1L4_TileData_Quadrant_7_3End
	dl $C66400,$C66500,M1L4_TileData_Quadrant_8_1,M1L4_TileData_Quadrant_8_1End
	dl $C66500,$C66600,M1L4_TileData_Quadrant_8_3,M1L4_TileData_Quadrant_8_3End
	dl $C66600,$C66700,M1L4_TileData_Quadrant_8_4,M1L4_TileData_Quadrant_8_4End
	dl $CA0000,$CA0200,M1L4_SpriteData_Quadrant_1_1,M1L4_SpriteData_Quadrant_1_1End
	dl $CA0200,$CA0400,M1L4_SpriteData_Quadrant_1_2,M1L4_SpriteData_Quadrant_1_2End
	dl $CA0400,$CA0600,M1L4_SpriteData_Quadrant_1_3,M1L4_SpriteData_Quadrant_1_3End
	dl $CA0600,$CA0800,M1L4_SpriteData_Quadrant_1_4,M1L4_SpriteData_Quadrant_1_4End
	dl $CA0800,$CA0A00,M1L4_SpriteData_Quadrant_2_2,M1L4_SpriteData_Quadrant_2_2End
	dl $CA0A00,$CA0C00,M1L4_SpriteData_Quadrant_2_3,M1L4_SpriteData_Quadrant_2_3End
	dl $CA0C00,$CA0E00,M1L4_SpriteData_Quadrant_3_2,M1L4_SpriteData_Quadrant_3_2End
	dl $CA0E00,$CA1000,M1L4_SpriteData_Quadrant_3_3,M1L4_SpriteData_Quadrant_3_3End
	dl $CA1000,$CA1200,M1L4_SpriteData_Quadrant_4_2,M1L4_SpriteData_Quadrant_4_2End
	dl $CA1200,$CA1400,M1L4_SpriteData_Quadrant_4_3,M1L4_SpriteData_Quadrant_4_3End
	dl $CA1400,$CA1600,M1L4_SpriteData_Quadrant_5_2,M1L4_SpriteData_Quadrant_5_2End
	dl $CA1600,$CA1800,M1L4_SpriteData_Quadrant_5_3,M1L4_SpriteData_Quadrant_5_3End
	dl $CA1800,$CA1A00,M1L4_SpriteData_Quadrant_6_2,M1L4_SpriteData_Quadrant_6_2End
	dl $CA1A00,$CA1C00,M1L4_SpriteData_Quadrant_6_3,M1L4_SpriteData_Quadrant_6_3End
	dl $CA1C00,$CA1E00,M1L4_SpriteData_Quadrant_7_2,M1L4_SpriteData_Quadrant_7_2End
	dl $CA2000,$CA2200,M1L4_SpriteData_Quadrant_8_1,M1L4_SpriteData_Quadrant_8_1End
	dl $CA2200,$CA2400,M1L4_SpriteData_Quadrant_8_2,M1L4_SpriteData_Quadrant_8_2End
	dl $CA2400,$CA2600,M1L4_SpriteData_Quadrant_8_3,M1L4_SpriteData_Quadrant_8_3End
	dl $CA2600,$CA2800,M1L4_SpriteData_Quadrant_8_4,M1L4_SpriteData_Quadrant_8_4End
	dl $CA2800,$CA2A00,M1L4_SpriteData_Quadrant_9_2,M1L4_SpriteData_Quadrant_9_2End
	dl $CA2A00,$CA2C00,M1L4_SpriteData_Quadrant_9_1,M1L4_SpriteData_Quadrant_9_1End
Map1Level4DataPointersEnd:

;--------------------------------------------------------------------

Map1Level5DataPointersStart:
	dl $CA2C00,$CA2E00,M1L5_SpriteData_Quadrant_1_1,M1L5_SpriteData_Quadrant_1_1End
	dl $CA2E00,$CA3000,M1L5_SpriteData_Quadrant_1_2,M1L5_SpriteData_Quadrant_1_2End
	dl $CA3000,$CA3200,M1L5_SpriteData_Quadrant_1_3,M1L5_SpriteData_Quadrant_1_3End
	dl $CA3200,$CA3400,M1L5_SpriteData_Quadrant_1_4,M1L5_SpriteData_Quadrant_1_4End
	dl $CA3600,$CA3800,M1L5_SpriteData_Quadrant_2_1,M1L5_SpriteData_Quadrant_2_1End
	dl $CA3800,$CA3A00,M1L5_SpriteData_Quadrant_2_2,M1L5_SpriteData_Quadrant_2_2End
	dl $CA3A00,$CA3C00,M1L5_SpriteData_Quadrant_3_1,M1L5_SpriteData_Quadrant_3_1End
	dl $CA3C00,$CA3E00,M1L5_SpriteData_Quadrant_3_2,M1L5_SpriteData_Quadrant_3_2End
	dl $CA3E00,$CA4000,M1L5_SpriteData_Quadrant_4_1,M1L5_SpriteData_Quadrant_4_1End
	dl $CA4000,$CA4200,M1L5_SpriteData_Quadrant_4_2,M1L5_SpriteData_Quadrant_4_2End
	dl $CA4200,$CA4400,M1L5_SpriteData_Quadrant_4_4,M1L5_SpriteData_Quadrant_4_4End
	dl $CA4400,$CA4600,M1L5_SpriteData_Quadrant_4_5,M1L5_SpriteData_Quadrant_4_5End
	dl $CA4600,$CA4800,M1L5_SpriteData_Quadrant_5_1,M1L5_SpriteData_Quadrant_5_1End
	dl $CA4800,$CA4A00,M1L5_SpriteData_Quadrant_5_2,M1L5_SpriteData_Quadrant_5_2End
	dl $CA4A00,$CA4C00,M1L5_SpriteData_Quadrant_5_5,M1L5_SpriteData_Quadrant_5_5End
	dl $CA4C00,$CA4E00,M1L5_SpriteData_Quadrant_6_1,M1L5_SpriteData_Quadrant_6_1End
	dl $CA4E00,$CA5000,M1L5_SpriteData_Quadrant_6_2,M1L5_SpriteData_Quadrant_6_2End
	dl $CA5000,$CA5200,M1L5_SpriteData_Quadrant_6_5,M1L5_SpriteData_Quadrant_6_5End
	dl $CA5200,$CA5400,M1L5_SpriteData_Quadrant_7_1,M1L5_SpriteData_Quadrant_7_1End
	dl $CA5400,$CA5600,M1L5_SpriteData_Quadrant_7_2,M1L5_SpriteData_Quadrant_7_2End
	dl $CA5600,$CA5800,M1L5_SpriteData_Quadrant_7_3,M1L5_SpriteData_Quadrant_7_3End
	dl $CA5800,$CA5A00,M1L5_SpriteData_Quadrant_7_4,M1L5_SpriteData_Quadrant_7_4End
	dl $CA5A00,$CA5C00,M1L5_SpriteData_Quadrant_7_5,M1L5_SpriteData_Quadrant_7_5End
	dl $CA5C00,$CA5E00,M1L5_SpriteData_Quadrant_8_1,M1L5_SpriteData_Quadrant_8_1End
	dl $CA5E00,$CA6000,M1L5_SpriteData_Quadrant_8_2,M1L5_SpriteData_Quadrant_8_2End
	dl $CA6000,$CA6200,M1L5_SpriteData_Quadrant_8_3,M1L5_SpriteData_Quadrant_8_3End
	dl $CA6200,$CA6400,M1L5_SpriteData_Quadrant_8_4,M1L5_SpriteData_Quadrant_8_4End
	dl $CA6400,$CA6600,M1L5_SpriteData_Quadrant_8_5,M1L5_SpriteData_Quadrant_8_5End
	dl $CA6600,$CA6800,M1L5_SpriteData_Quadrant_9_1,M1L5_SpriteData_Quadrant_9_1End
	dl $CA6800,$CA6A00,M1L5_SpriteData_Quadrant_9_2,M1L5_SpriteData_Quadrant_9_2End
	dl $CA6A00,$CA6C00,M1L5_SpriteData_Quadrant_9_3,M1L5_SpriteData_Quadrant_9_3End
	dl $CAB600,$CAB700,M1L5_TileData_Quadrant_1_1,M1L5_TileData_Quadrant_1_1End
	dl $CAB700,$CAB800,M1L5_TileData_Quadrant_1_2,M1L5_TileData_Quadrant_1_2End
	dl $CAB800,$CAB900,M1L5_TileData_Quadrant_1_3,M1L5_TileData_Quadrant_1_3End
	dl $CAB900,$CABA00,M1L5_TileData_Quadrant_1_4,M1L5_TileData_Quadrant_1_4End
	dl $CABA00,$CABB00,M1L5_TileData_Quadrant_1_5,M1L5_TileData_Quadrant_1_5End
	dl $CABB00,$CABC00,M1L5_TileData_Quadrant_2_1,M1L5_TileData_Quadrant_2_1End
	dl $CABC00,$CABD00,M1L5_TileData_Quadrant_2_2,M1L5_TileData_Quadrant_2_2End
	dl $CABD00,$CABE00,M1L5_TileData_Quadrant_3_1,M1L5_TileData_Quadrant_3_1End
	dl $CABE00,$CABF00,M1L5_TileData_Quadrant_3_2,M1L5_TileData_Quadrant_3_2End
	dl $CABF00,$CAC000,M1L5_TileData_Quadrant_4_1,M1L5_TileData_Quadrant_4_1End
	dl $CAC000,$CAC100,M1L5_TileData_Quadrant_4_2,M1L5_TileData_Quadrant_4_2End
	dl $CAC100,$CAC200,M1L5_TileData_Quadrant_4_4,M1L5_TileData_Quadrant_4_4End
	dl $CAC200,$CAC300,M1L5_TileData_Quadrant_4_5,M1L5_TileData_Quadrant_4_5End
	dl $CAC300,$CAC400,M1L5_TileData_Quadrant_5_1,M1L5_TileData_Quadrant_5_1End
	dl $CAC400,$CAC500,M1L5_TileData_Quadrant_5_2,M1L5_TileData_Quadrant_5_2End
	dl $CAC500,$CAC600,M1L5_TileData_Quadrant_5_5,M1L5_TileData_Quadrant_5_5End
	dl $CAC600,$CAC700,M1L5_TileData_Quadrant_6_1,M1L5_TileData_Quadrant_6_1End
	dl $CAC700,$CAC800,M1L5_TileData_Quadrant_6_2,M1L5_TileData_Quadrant_6_2End
	dl $CAC800,$CAC900,M1L5_TileData_Quadrant_6_5,M1L5_TileData_Quadrant_6_5End
	dl $CAC900,$CACA00,M1L5_TileData_Quadrant_7_1,M1L5_TileData_Quadrant_7_1End
	dl $CACA00,$CACB00,M1L5_TileData_Quadrant_7_2,M1L5_TileData_Quadrant_7_2End
	dl $CACB00,$CACC00,M1L5_TileData_Quadrant_7_3,M1L5_TileData_Quadrant_7_3End
	dl $CACC00,$CACD00,M1L5_TileData_Quadrant_7_4,M1L5_TileData_Quadrant_7_4End
	dl $CACD00,$CACE00,M1L5_TileData_Quadrant_7_5,M1L5_TileData_Quadrant_7_5End
	dl $CACE00,$CACF00,M1L5_TileData_Quadrant_8_1,M1L5_TileData_Quadrant_8_1End
	dl $CACF00,$CAD000,M1L5_TileData_Quadrant_8_2,M1L5_TileData_Quadrant_8_2End
	dl $CAD000,$CAD100,M1L5_TileData_Quadrant_8_3,M1L5_TileData_Quadrant_8_3End
	dl $CAD100,$CAD200,M1L5_TileData_Quadrant_8_4,M1L5_TileData_Quadrant_8_4End
	dl $CAD200,$CAD300,M1L5_TileData_Quadrant_8_5,M1L5_TileData_Quadrant_8_5End
Map1Level5DataPointersEnd:

;--------------------------------------------------------------------

Map1Level6DataPointersStart:
	dl $C66F00,$C67000,M1L6_TileData_Quadrant_6_3,M1L6_TileData_Quadrant_6_3End
	dl $CA8000,$CA8200,M1L6_SpriteData_Quadrant_5_2,M1L6_SpriteData_Quadrant_5_2End
	dl $CA8200,$CA8400,M1L6_SpriteData_Quadrant_1_2,M1L6_SpriteData_Quadrant_1_2End
	dl $CA8400,$CA8600,M1L6_SpriteData_Quadrant_3_2,M1L6_SpriteData_Quadrant_3_2End
	dl $CA8600,$CA8800,M1L6_SpriteData_Quadrant_2_2,M1L6_SpriteData_Quadrant_2_2End
	dl $CA8800,$CA8A00,M1L6_SpriteData_Quadrant_2_1,M1L6_SpriteData_Quadrant_2_1End
	dl $CA8A00,$CA8C00,M1L6_SpriteData_Quadrant_3_1,M1L6_SpriteData_Quadrant_3_1End
	dl $CA8C00,$CA8E00,M1L6_SpriteData_Quadrant_4_1,M1L6_SpriteData_Quadrant_4_1End
	dl $CA8E00,$CA9000,M1L6_SpriteData_Quadrant_5_1,M1L6_SpriteData_Quadrant_5_1End
	dl $CA9000,$CA9200,M1L6_SpriteData_Quadrant_6_1,M1L6_SpriteData_Quadrant_6_1End
	dl $CA9200,$CA9400,M1L6_SpriteData_Quadrant_6_3,M1L6_SpriteData_Quadrant_6_3End
	dl $CA9400,$CA9600,M1L6_SpriteData_Quadrant_6_2,M1L6_SpriteData_Quadrant_6_2End
	dl $CA9600,$CA9800,M1L6_SpriteData_Quadrant_8_2,M1L6_SpriteData_Quadrant_8_2End
	dl $CA9800,$CA9A00,M1L6_SpriteData_Quadrant_4_3,M1L6_SpriteData_Quadrant_4_3End
	dl $CA9A00,$CA9C00,M1L6_SpriteData_Quadrant_5_3,M1L6_SpriteData_Quadrant_5_3End
	dl $CA9C00,$CA9E00,M1L6_SpriteData_Quadrant_3_3,M1L6_SpriteData_Quadrant_3_3End
	dl $CA9E00,$CAA000,M1L6_SpriteData_Quadrant_7_3,M1L6_SpriteData_Quadrant_7_3End
	dl $CAA000,$CAA200,M1L6_SpriteData_Quadrant_4_2,M1L6_SpriteData_Quadrant_4_2End
	dl $CAA200,$CAA400,M1L6_SpriteData_Quadrant_7_1,M1L6_SpriteData_Quadrant_7_1End
	dl $CAA400,$CAA600,M1L6_SpriteData_Quadrant_9_1,M1L6_SpriteData_Quadrant_9_1End
	dl $CAA600,$CAA800,M1L6_SpriteData_Quadrant_9_2,M1L6_SpriteData_Quadrant_9_2End
	dl $CAA800,$CAA900,M1L6_TileData_Quadrant_5_2,M1L6_TileData_Quadrant_5_2End
	dl $CAA900,$CAAA00,M1L6_TileData_Quadrant_1_2,M1L6_TileData_Quadrant_1_2End
	dl $CAAA00,$CAAB00,M1L6_TileData_Quadrant_3_2,M1L6_TileData_Quadrant_3_2End
	dl $CAAB00,$CAAC00,M1L6_TileData_Quadrant_2_2,M1L6_TileData_Quadrant_2_2End
	dl $CAAC00,$CAAD00,M1L6_TileData_Quadrant_2_1,M1L6_TileData_Quadrant_2_1End
	dl $CAAD00,$CAAE00,M1L6_TileData_Quadrant_4_1,M1L6_TileData_Quadrant_4_1End
	dl $CAAE00,$CAAF00,M1L6_TileData_Quadrant_5_1,M1L6_TileData_Quadrant_5_1End
	dl $CAAF00,$CAB000,M1L6_TileData_Quadrant_6_1,M1L6_TileData_Quadrant_6_1End
	dl $CAB000,$CAB100,M1L6_TileData_Quadrant_3_1,M1L6_TileData_Quadrant_3_1End
	dl $CAB100,$CAB200,M1L6_TileData_Quadrant_6_2,M1L6_TileData_Quadrant_6_2End
	dl $CAB200,$CAB300,M1L6_TileData_Quadrant_8_3,M1L6_TileData_Quadrant_8_3End
	dl $CAB300,$CAB400,M1L6_TileData_Quadrant_4_3,M1L6_TileData_Quadrant_4_3End
	dl $CAB400,$CAB500,M1L6_TileData_Quadrant_5_3,M1L6_TileData_Quadrant_5_3End
	dl $CAB500,$CAB600,M1L6_TileData_Quadrant_3_3,M1L6_TileData_Quadrant_3_3End
	dl $CAD300,$CAD400,M1L6_TileData_Quadrant_4_2,M1L6_TileData_Quadrant_4_2End
Map1Level6DataPointersEnd:

;--------------------------------------------------------------------

Map1Level7DataPointersStart:
	dl $C8EE00,$C8EF00,M1L7_TileData_Quadrant_3_3,M1L7_TileData_Quadrant_3_3End
	dl $C8EF00,$C8F000,M1L7_TileData_Quadrant_4_2,M1L7_TileData_Quadrant_4_2End
	dl $C8F000,$C8F100,M1L7_TileData_Quadrant_4_3,M1L7_TileData_Quadrant_4_3End
	dl $C8F100,$C8F200,M1L7_TileData_Quadrant_4_5,M1L7_TileData_Quadrant_4_5End
	dl $C8F200,$C8F400,M1L7_SpriteData_Quadrant_3_5,M1L7_SpriteData_Quadrant_3_5End
	dl $C8F400,$C8F600,M1L7_SpriteData_Quadrant_4_2,M1L7_SpriteData_Quadrant_4_2End
	dl $C8F600,$C8F800,M1L7_SpriteData_Quadrant_4_3,M1L7_SpriteData_Quadrant_4_3End
	dl $C8F800,$C8FA00,M1L7_SpriteData_Quadrant_4_5,M1L7_SpriteData_Quadrant_4_5End
	dl $C8FA00,$C8FB00,M1L7_TileData_Quadrant_4_6,M1L7_TileData_Quadrant_4_6End
	dl $C94000,$C94100,M1L7_TileData_Quadrant_1_2,M1L7_TileData_Quadrant_1_2End
	dl $C94100,$C94200,M1L7_TileData_Quadrant_1_3,M1L7_TileData_Quadrant_1_3End
	dl $C94200,$C94300,M1L7_TileData_Quadrant_1_4,M1L7_TileData_Quadrant_1_4End
	dl $C94300,$C94400,M1L7_TileData_Quadrant_1_5,M1L7_TileData_Quadrant_1_5End
	dl $C94400,$C94500,M1L7_TileData_Quadrant_2_1,M1L7_TileData_Quadrant_2_1End
	dl $C94500,$C94600,M1L7_TileData_Quadrant_2_2,M1L7_TileData_Quadrant_2_2End
	dl $C94600,$C94700,M1L7_TileData_Quadrant_2_3,M1L7_TileData_Quadrant_2_3End
	dl $C94700,$C94800,M1L7_TileData_Quadrant_2_4,M1L7_TileData_Quadrant_2_4End
	dl $C94800,$C94900,M1L7_TileData_Quadrant_2_5,M1L7_TileData_Quadrant_2_5End
	dl $C94900,$C94A00,M1L7_TileData_Quadrant_2_6,M1L7_TileData_Quadrant_2_6End
	dl $C94A00,$C94B00,M1L7_TileData_Quadrant_2_7,M1L7_TileData_Quadrant_2_7End
	dl $C94B00,$C94C00,M1L7_TileData_Quadrant_3_1,M1L7_TileData_Quadrant_3_1End
	dl $C94C00,$C94D00,M1L7_TileData_Quadrant_3_2,M1L7_TileData_Quadrant_3_2End
	dl $C94D00,$C94E00,M1L7_TileData_Quadrant_3_4,M1L7_TileData_Quadrant_3_4End
	dl $C94E00,$C94F00,M1L7_TileData_Quadrant_3_6,M1L7_TileData_Quadrant_3_6End
	dl $C94F00,$C95000,M1L7_TileData_Quadrant_3_7,M1L7_TileData_Quadrant_3_7End
	dl $C95000,$C95100,M1L7_TileData_Quadrant_4_1,M1L7_TileData_Quadrant_4_1End
	dl $C95100,$C95200,M1L7_TileData_Quadrant_4_4,M1L7_TileData_Quadrant_4_4End
	dl $C95200,$C95300,M1L7_TileData_Quadrant_4_7,M1L7_TileData_Quadrant_4_7End
	dl $C95300,$C95400,M1L7_TileData_Quadrant_5_1,M1L7_TileData_Quadrant_5_1End
	dl $C95400,$C95500,M1L7_TileData_Quadrant_5_2,M1L7_TileData_Quadrant_5_2End
	dl $C95500,$C95600,M1L7_TileData_Quadrant_5_3,M1L7_TileData_Quadrant_5_3End
	dl $C95600,$C95700,M1L7_TileData_Quadrant_5_4,M1L7_TileData_Quadrant_5_4End
	dl $C95700,$C95800,M1L7_TileData_Quadrant_5_5,M1L7_TileData_Quadrant_5_5End
	dl $C95800,$C95900,M1L7_TileData_Quadrant_5_6,M1L7_TileData_Quadrant_5_6End
	dl $C95900,$C95A00,M1L7_TileData_Quadrant_5_7,M1L7_TileData_Quadrant_5_7End
	dl $C95A00,$C95B00,M1L7_TileData_Quadrant_6_3,M1L7_TileData_Quadrant_6_3End
	dl $C95B00,$C95C00,M1L7_TileData_Quadrant_6_4,M1L7_TileData_Quadrant_6_4End
	dl $C95C00,$C95D00,M1L7_TileData_Quadrant_6_5,M1L7_TileData_Quadrant_6_5End
	dl $C99400,$C99600,M1L7_SpriteData_Quadrant_2_6,M1L7_SpriteData_Quadrant_2_6End
	dl $C99600,$C99800,M1L7_SpriteData_Quadrant_2_7,M1L7_SpriteData_Quadrant_2_7End
	dl $C99800,$C99A00,M1L7_SpriteData_Quadrant_3_1,M1L7_SpriteData_Quadrant_3_1End
	dl $C99A00,$C99C00,M1L7_SpriteData_Quadrant_3_2,M1L7_SpriteData_Quadrant_3_2End
	dl $C99C00,$C99E00,M1L7_SpriteData_Quadrant_3_4,M1L7_SpriteData_Quadrant_3_4End
	dl $C99E00,$C9A000,M1L7_SpriteData_Quadrant_3_6,M1L7_SpriteData_Quadrant_3_6End
	dl $C9A000,$C9A200,M1L7_SpriteData_Quadrant_3_7,M1L7_SpriteData_Quadrant_3_7End
	dl $C9A200,$C9A400,M1L7_SpriteData_Quadrant_4_1,M1L7_SpriteData_Quadrant_4_1End
	dl $C9A400,$C9A600,M1L7_SpriteData_Quadrant_4_4,M1L7_SpriteData_Quadrant_4_4End
	dl $C9A600,$C9A800,M1L7_SpriteData_Quadrant_4_7,M1L7_SpriteData_Quadrant_4_7End
	dl $C9A800,$C9AA00,M1L7_SpriteData_Quadrant_5_1,M1L7_SpriteData_Quadrant_5_1End
	dl $C9AA00,$C9AC00,M1L7_SpriteData_Quadrant_5_2,M1L7_SpriteData_Quadrant_5_2End
	dl $C9AC00,$C9AE00,M1L7_SpriteData_Quadrant_5_3,M1L7_SpriteData_Quadrant_5_3End
	dl $C9AE00,$C9B000,M1L7_SpriteData_Quadrant_5_4,M1L7_SpriteData_Quadrant_5_4End
	dl $C9B000,$C9B200,M1L7_SpriteData_Quadrant_5_5,M1L7_SpriteData_Quadrant_5_5End
	dl $C9B200,$C9B400,M1L7_SpriteData_Quadrant_5_6,M1L7_SpriteData_Quadrant_5_6End
	dl $C9B400,$C9B600,M1L7_SpriteData_Quadrant_5_7,M1L7_SpriteData_Quadrant_5_7End
	dl $C9B600,$C9B800,M1L7_SpriteData_Quadrant_6_3,M1L7_SpriteData_Quadrant_6_3End
	dl $C9B800,$C9BA00,M1L7_SpriteData_Quadrant_3_3,M1L7_SpriteData_Quadrant_3_3End
	dl $C9BA00,$C9BC00,M1L7_SpriteData_Quadrant_6_5,M1L7_SpriteData_Quadrant_6_5End
	dl $C9BC00,$C9BE00,M1L7_SpriteData_Quadrant_7_1,M1L7_SpriteData_Quadrant_7_1End
	dl $C9BE00,$C9C000,M1L7_SpriteData_Quadrant_7_2,M1L7_SpriteData_Quadrant_7_2End
	dl $C9C000,$C9C200,M1L7_SpriteData_Quadrant_7_3,M1L7_SpriteData_Quadrant_7_3End
	dl $C9C200,$C9C400,M1L7_SpriteData_Quadrant_7_4,M1L7_SpriteData_Quadrant_7_4End
	dl $CAEE00,$CAF000,M1L7_SpriteData_Quadrant_1_2,M1L7_SpriteData_Quadrant_1_2End
	dl $CAF000,$CAF200,M1L7_SpriteData_Quadrant_1_3,M1L7_SpriteData_Quadrant_1_3End
	dl $CAF200,$CAF400,M1L7_SpriteData_Quadrant_1_4,M1L7_SpriteData_Quadrant_1_4End
	dl $CAF400,$CAF600,M1L7_SpriteData_Quadrant_1_5,M1L7_SpriteData_Quadrant_1_5End
	dl $CAF600,$CAF800,M1L7_SpriteData_Quadrant_2_1,M1L7_SpriteData_Quadrant_2_1End
	dl $CAF800,$CAFA00,M1L7_SpriteData_Quadrant_2_2,M1L7_SpriteData_Quadrant_2_2End
	dl $CAFA00,$CAFC00,M1L7_SpriteData_Quadrant_2_3,M1L7_SpriteData_Quadrant_2_3End
	dl $CAFC00,$CAFE00,M1L7_SpriteData_Quadrant_2_4,M1L7_SpriteData_Quadrant_2_4End
	dl $CAFE00,$CB0000,M1L7_SpriteData_Quadrant_2_5,M1L7_SpriteData_Quadrant_2_5End
Map1Level7DataPointersEnd:

;--------------------------------------------------------------------

Map1Level8DataPointersStart:
	dl $C96200,$C96400,M1L8_SpriteData_Quadrant_1_3,M1L8_SpriteData_Quadrant_1_3End
	dl $C96400,$C96600,M1L8_SpriteData_Quadrant_1_4,M1L8_SpriteData_Quadrant_1_4End
	dl $C96600,$C96800,M1L8_SpriteData_Quadrant_2_2,M1L8_SpriteData_Quadrant_2_2End
	dl $C96800,$C96A00,M1L8_SpriteData_Quadrant_2_3,M1L8_SpriteData_Quadrant_2_3End
	dl $C96A00,$C96C00,M1L8_SpriteData_Quadrant_2_4,M1L8_SpriteData_Quadrant_2_4End
	dl $C96C00,$C96E00,M1L8_SpriteData_Quadrant_3_2,M1L8_SpriteData_Quadrant_3_2End
	dl $C96E00,$C97000,M1L8_SpriteData_Quadrant_3_3,M1L8_SpriteData_Quadrant_3_3End
	dl $C97000,$C97200,M1L8_SpriteData_Quadrant_3_4,M1L8_SpriteData_Quadrant_3_4End
	dl $C97200,$C97400,M1L8_SpriteData_Quadrant_4_2,M1L8_SpriteData_Quadrant_4_2End
	dl $C97400,$C97600,M1L8_SpriteData_Quadrant_4_3,M1L8_SpriteData_Quadrant_4_3End
	dl $C97600,$C97800,M1L8_SpriteData_Quadrant_4_4,M1L8_SpriteData_Quadrant_4_4End
	dl $C97800,$C97A00,M1L8_SpriteData_Quadrant_5_2,M1L8_SpriteData_Quadrant_5_2End
	dl $C97A00,$C97C00,M1L8_SpriteData_Quadrant_5_3,M1L8_SpriteData_Quadrant_5_3End
	dl $C97C00,$C97E00,M1L8_SpriteData_Quadrant_5_4,M1L8_SpriteData_Quadrant_5_4End
	dl $C97E00,$C98000,M1L8_SpriteData_Quadrant_6_1,M1L8_SpriteData_Quadrant_6_1End
	dl $C98000,$C98200,M1L8_SpriteData_Quadrant_6_2,M1L8_SpriteData_Quadrant_6_2End
	dl $C98200,$C98400,M1L8_SpriteData_Quadrant_6_3,M1L8_SpriteData_Quadrant_6_3End
	dl $C98400,$C98600,M1L8_SpriteData_Quadrant_6_4,M1L8_SpriteData_Quadrant_6_4End
	dl $C98600,$C98800,M1L8_SpriteData_Quadrant_6_5,M1L8_SpriteData_Quadrant_6_5End
	dl $C98800,$C98A00,M1L8_SpriteData_Quadrant_7_2,M1L8_SpriteData_Quadrant_7_2End
	dl $C98A00,$C98C00,M1L8_SpriteData_Quadrant_7_3,M1L8_SpriteData_Quadrant_7_3End
	dl $C98C00,$C98E00,M1L8_SpriteData_Quadrant_7_4,M1L8_SpriteData_Quadrant_7_4End
	dl $C98E00,$C99000,M1L8_SpriteData_Quadrant_8_3,M1L8_SpriteData_Quadrant_8_3End
	dl $C99000,$C99200,M1L8_SpriteData_Quadrant_9_1,M1L8_SpriteData_Quadrant_9_1End
	dl $C99200,$C99400,M1L8_SpriteData_Quadrant_9_2,M1L8_SpriteData_Quadrant_9_2End
	dl $CAD400,$CAD500,M1L8_TileData_Quadrant_1_2,M1L8_TileData_Quadrant_1_2End
	dl $CAD500,$CAD600,M1L8_TileData_Quadrant_1_3,M1L8_TileData_Quadrant_1_3End
	dl $CAD600,$CAD700,M1L8_TileData_Quadrant_1_4,M1L8_TileData_Quadrant_1_4End
	dl $CAD700,$CAD800,M1L8_TileData_Quadrant_2_2,M1L8_TileData_Quadrant_2_2End
	dl $CAD800,$CAD900,M1L8_TileData_Quadrant_2_3,M1L8_TileData_Quadrant_2_3End
	dl $CAD900,$CADA00,M1L8_TileData_Quadrant_2_4,M1L8_TileData_Quadrant_2_4End
	dl $CADA00,$CADB00,M1L8_TileData_Quadrant_3_2,M1L8_TileData_Quadrant_3_2End
	dl $CADB00,$CADC00,M1L8_TileData_Quadrant_3_3,M1L8_TileData_Quadrant_3_3End
	dl $CADC00,$CADD00,M1L8_TileData_Quadrant_3_4,M1L8_TileData_Quadrant_3_4End
	dl $CADD00,$CADE00,M1L8_TileData_Quadrant_4_2,M1L8_TileData_Quadrant_4_2End
	dl $CADE00,$CADF00,M1L8_TileData_Quadrant_4_3,M1L8_TileData_Quadrant_4_3End
	dl $CADF00,$CAE000,M1L8_TileData_Quadrant_4_4,M1L8_TileData_Quadrant_4_4End
	dl $CAE000,$CAE100,M1L8_TileData_Quadrant_5_2,M1L8_TileData_Quadrant_5_2End
	dl $CAE100,$CAE200,M1L8_TileData_Quadrant_5_3,M1L8_TileData_Quadrant_5_3End
	dl $CAE200,$CAE300,M1L8_TileData_Quadrant_5_4,M1L8_TileData_Quadrant_5_4End
	dl $CAE300,$CAE400,M1L8_TileData_Quadrant_6_1,M1L8_TileData_Quadrant_6_1End
	dl $CAE400,$CAE500,M1L8_TileData_Quadrant_6_2,M1L8_TileData_Quadrant_6_2End
	dl $CAE500,$CAE600,M1L8_TileData_Quadrant_6_3,M1L8_TileData_Quadrant_6_3End
	dl $CAE600,$CAE700,M1L8_TileData_Quadrant_6_4,M1L8_TileData_Quadrant_6_4End
	dl $CAE700,$CAE800,M1L8_TileData_Quadrant_6_5,M1L8_TileData_Quadrant_6_5End
	dl $CAE800,$CAE900,M1L8_TileData_Quadrant_7_2,M1L8_TileData_Quadrant_7_2End
	dl $CAE900,$CAEA00,M1L8_TileData_Quadrant_7_3,M1L8_TileData_Quadrant_7_3End
	dl $CAEA00,$CAEB00,M1L8_TileData_Quadrant_7_4,M1L8_TileData_Quadrant_7_4End
	dl $CAEB00,$CAEC00,M1L8_TileData_Quadrant_8_3,M1L8_TileData_Quadrant_8_3End
Map1Level8DataPointersEnd:

;--------------------------------------------------------------------

UnknownMapDataPointersStart:
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C62000,$C62100,M1U_TileData8,M1U_TileData8End
	dl $C62100,$C62300,M1U_SpriteData10,M1U_SpriteData10End
endif
	dl $C66C00,$C66D00,M1U_TileData1,M1U_TileData1End
	dl $C66D00,$C66F00,M1U_SpriteData1,M1U_SpriteData1End
	dl $C6B200,$C6B300,M1U_TileData2,M1U_TileData2End
	dl $C7D000,$C7D100,M1U_TileData3,M1U_TileData3End
	dl $C7D100,$C7D200,M1U_TileData4,M1U_TileData4End
	dl $C7D200,$C7D300,M1U_TileData5,M1U_TileData5End
	dl $C7D300,$C7D500,M1U_SpriteData2,M1U_SpriteData2End
	dl $C7D500,$C7D700,M1U_SpriteData3,M1U_SpriteData3End
	dl $C7D700,$C7D800,M1U_SpriteData4,M1U_SpriteData4End
	dl $C7D800,$C7D900,M1U_SpriteData5,M1U_SpriteData5End
	dl $C8AA00,$C8AC00,M1U_SpriteData6,M1U_SpriteData6End
	dl $C8AC00,$C8AE00,M1U_SpriteData7,M1U_SpriteData7End
	dl $CA1E00,$CA2000,M1U_SpriteData8,M1U_SpriteData8End
	dl $CA3400,$CA3600,M1U_SpriteData9,M1U_SpriteData9End
	dl $CAEC00,$CAED00,M1U_TileData6,M1U_TileData6End
	dl $CAED00,$CAEE00,M1U_TileData7,M1U_TileData7End
UnknownMapDataPointersEnd:

;--------------------------------------------------------------------

UnsortedDataPointersStart:
	dl $C28000,$C29000,DATA_C28000,DATA_C28000End
	dl $C7E000,$C7E800,DATA_C7E000,DATA_C7E000End
	dl $C7E800,$C7F000,DATA_C7E800,DATA_C7E800End
	dl $C7F000,$C7F800,DATA_C7F000,DATA_C7F000End
UnsortedDataPointersEnd:

;--------------------------------------------------------------------

GarbageDataPointersStart:
	dl $C0BD00,$C0C000,DATA_C0BD00,DATA_C0BD00End
	dl $C0C685,$C0C8C5,DATA_C0C685,DATA_C0C685End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C0E900,$C0FF80,DATA_C0E900,DATA_C0E900End
else
	dl $C0DC80,$C0E000,DATA_C0DC80,DATA_C0DC80End
	dl $C0E1E1,$C0FF80,DATA_C0E1E1,DATA_C0E1E1End
endif
	dl $C1A000,$C1B800,DATA_C1A000,DATA_C1A000End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C1E800,$C20000,DATA_C1E800,DATA_C1E800End
else
	dl $C1D400,$C20000,DATA_C1D400,DATA_C1D400End
endif
	dl $C27B06,$C28000,DATA_C27B06,DATA_C27B06End
	dl $C2FC08,$C30000,DATA_C2FC08,DATA_C2FC08End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C3F800,$C40000,DATA_C3F800,DATA_C3F800End
endif
	dl $C4022C,$C41200,DATA_C4022C,DATA_C4022CEnd
	dl $C42456,$C42600,DATA_C42456,DATA_C42456End
	dl $C42A56,$C42C00,DATA_C42A56,DATA_C42A56End
	dl $C42C56,$C42E00,DATA_C42C56,DATA_C42C56End
	dl $C43456,$C43600,DATA_C43456,DATA_C43456End
	dl $C43856,$C43A00,DATA_C43856,DATA_C43856End
	dl $C43A56,$C43C00,DATA_C43A56,DATA_C43A56End
	dl $C43C56,$C43E00,DATA_C43C56,DATA_C43C56End
	dl $C43E56,$C44000,DATA_C43E56,DATA_C43E56End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C4EDA6,$C50000,DATA_C4EDA6,DATA_C4EDA6End
	dl $C5FBD2,$C60000,DATA_C5FBD2,DATA_C5FBD2End
	dl $C63800,$C65300,DATA_C63800,DATA_C63800End
else
	dl $C4E78E,$C50000,DATA_C4E78E,DATA_C4E78EEnd
	dl $C5FF39,$C60000,DATA_C5FF39,DATA_C5FF39End
	dl $C62000,$C65300,DATA_C62000,DATA_C62000End
	dl $C6E800,$C6F800,DATA_C6E800,DATA_C6E800End
endif
	dl $C6F800,$C70000,DATA_C6F800,DATA_C6F800End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $C7A000,$C7B800,DATA_C7A000,DATA_C7A000End
	dl $C7DE00,$C7E000,DATA_C7DE00,DATA_C7DE00End
else
	dl $C7A000,$C7C000,DATA_C7A000,DATA_C7A000End
	dl $C7DC00,$C7E000,DATA_C7DC00,DATA_C7DC00End
endif
	dl $C8FB00,$C90000,DATA_C8FB00,DATA_C8FB00End
	dl $C95D00,$C96200,DATA_C95D00,DATA_C95D00End
	dl $C9C400,$C9D000,DATA_C9C400,DATA_C9C400End
	dl $CA6C00,$CA8000,DATA_CA6C00,DATA_CA6C00End
if !ROMVer&(!BSZ1_OM1W3) != $00
	dl $CC8737,$CD0000,DATA_CC8737,DATA_CC8737End
	dl $CEC7B7,$CF0000,DATA_CEC7B7,DATA_CEC7B7End
else
	dl $CC73FC,$CD0000,DATA_CC73FC,DATA_CC73FCEnd
	dl $CEC544,$CF0000,DATA_CEC544,DATA_CEC544End
endif
GarbageDataPointersEnd:

;--------------------------------------------------------------------

SPC700DataPointersStart:
	dl $C215E2,$C219AA,DATA_C215E2,DATA_C215E2End
	dl $C29000,$C2AE00,DATA_C29000,DATA_C29000End
	dl $C2AE00,$C2D000,DATA_C2AE00,DATA_C2AE00End
	dl $C2D000,$C2FC08,DATA_C2D000,DATA_C2D000End
SPC700DataPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $C21A52,$C21A88,BRRFile00,BRRFile00End
	dl $C21A88,$C21E6F,BRRFile01,BRRFile01End
	dl $C21E6F,$C21FAA,BRRFile02,BRRFile02End
	dl $C21FAA,$C22028,BRRFile03,BRRFile03End
	dl $C22028,$C22067,BRRFile04,BRRFile04End
	dl $C22067,$C220C1,BRRFile05,BRRFile05End
	dl $C220C1,$C222B0,BRRFile06,BRRFile06End
	dl $C222B0,$C223D9,BRRFile07,BRRFile07End
	dl $C223D9,$C224D5,BRRFile08,BRRFile08End
	dl $C224D5,$C22553,BRRFile09,BRRFile09End
	dl $C22553,$C225A4,BRRFile0A,BRRFile0AEnd
	dl $C225A4,$C227A5,BRRFile0B,BRRFile0BEnd
	dl $C227A5,$C22982,BRRFile0C,BRRFile0CEnd
	dl $C22982,$C22B7A,BRRFile0D,BRRFile0DEnd
	dl $C22B7A,$C22DF0,BRRFile0E,BRRFile0EEnd
	dl $C22DF0,$C23A59,BRRFile0F,BRRFile0FEnd
	dl $C23A59,$C23A98,BRRFile10,BRRFile10End
	dl $C23A98,$C23D56,BRRFile11,BRRFile11End
	dl $C23D56,$C24173,BRRFile12,BRRFile12End
	dl $C24173,$C2429C,BRRFile13,BRRFile13End
	dl $C2429C,$C2456C,BRRFile14,BRRFile14End
	dl $C2456C,$C246F8,BRRFile15,BRRFile15End
	dl $C246F8,$C24ACD,BRRFile16,BRRFile16End
	dl $C24ACD,$C254C9,BRRFile17,BRRFile17End
	dl $C254C9,$C258C2,BRRFile18,BRRFile18End
	dl $C258C2,$C263A8,BRRFile19,BRRFile19End
	dl $C263A8,$C26816,BRRFile1A,BRRFile1AEnd
	dl $C26816,$C26C7B,BRRFile1B,BRRFile1BEnd
	dl $C26C7B,$C27047,BRRFile1C,BRRFile1CEnd
	dl $C27047,$C27998,BRRFile1D,BRRFile1DEnd
	dl $C27998,$C279C5,BRRFile1E,BRRFile1EEnd
	dl $C279C5,$C279F2,BRRFile1F,BRRFile1FEnd
	dl $C279F2,$C27A1F,BRRFile20,BRRFile20End
	dl $C27A1F,$C27A4C,BRRFile21,BRRFile21End
	dl $C27A4C,$C27A79,BRRFile22,BRRFile22End
	dl $C27A79,$C27AA6,BRRFile23,BRRFile23End
	dl $C27AA6,$C27AD3,BRRFile24,BRRFile24End
	dl $C27AD3,$C27B02,BRRFile25,BRRFile25End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Sprite_GlobalSprites:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "GFX_Sprite_GlobalSprites_BSZ1_OM1W3.bin"
else
	db "GFX_Sprite_GlobalSprites_BSZ1_OM1W2.bin"
endif
GFX_Sprite_GlobalSpritesEnd:
GFX_Sprite_OverworldEnemies:
	db "GFX_Sprite_OverworldEnemies.bin"
GFX_Sprite_OverworldEnemiesEnd:
GFX_Sprite_DungeonBossesAndEnemies:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "GFX_Sprite_DungeonBossesAndEnemies_BSZ1_OM1W3.bin"
else
	db "GFX_Sprite_DungeonBossesAndEnemies_BSZ1_OM1W2.bin"
endif
GFX_Sprite_DungeonBossesAndEnemiesEnd:
GFX_Sprite_ZeldaAndGanon:
	db "GFX_Sprite_ZeldaAndGanon.bin"
GFX_Sprite_ZeldaAndGanonEnd:
GFX_FGBG_Dungeon:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "GFX_FGBG_Dungeon_BSZ1_OM1W3.bin"
else
	db "GFX_FGBG_Dungeon_BSZ1_OM1W2.bin"
endif
GFX_FGBG_DungeonEnd:
GFX_Sprite_FemalePlayer:
	db "GFX_Sprite_FemalePlayer.bin"
GFX_Sprite_FemalePlayerEnd:
GFX_FGBG_UnknownGraphics:
	db "GFX_FGBG_UnknownGraphics.bin"
GFX_FGBG_UnknownGraphicsEnd:
GFX_Layer3_Font:
	db "GFX_Layer3_Font.bin"
GFX_Layer3_FontEnd:
GFX_FGBG_Overworld:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "GFX_FGBG_Overworld_BSZ1_OM1W3.bin"
else
	db "GFX_FGBG_Overworld_BSZ1_OM1W2.bin"
endif
GFX_FGBG_OverworldEnd:
;GFX_FGBG_UnknownGraphics:
;	db "GFX_FGBG_UnknownGraphics.bin"
;GFX_FGBG_UnknownGraphicsEnd:
GFX_Sprite_Level1Enemies:
	db "GFX_Sprite_Level1Enemies.bin"
GFX_Sprite_Level1EnemiesEnd:
GFX_Sprite_Level2Enemies:
	db "GFX_Sprite_Level2Enemies.bin"
GFX_Sprite_Level2EnemiesEnd:
GFX_Sprite_Level3Enemies:
	db "GFX_Sprite_Level3Enemies.bin"
GFX_Sprite_Level3EnemiesEnd:
GFX_Sprite_Level4Enemies:
	db "GFX_Sprite_Level4Enemies.bin"
GFX_Sprite_Level4EnemiesEnd:
GFX_Sprite_Level5Enemies:
	db "GFX_Sprite_Level5Enemies.bin"
GFX_Sprite_Level5EnemiesEnd:
GFX_Sprite_Level6Enemies:
	db "GFX_Sprite_Level6Enemies.bin"
GFX_Sprite_Level6EnemiesEnd:
GFX_Sprite_Level7Enemies:
	db "GFX_Sprite_Level7Enemies.bin"
GFX_Sprite_Level7EnemiesEnd:
GFX_Sprite_Level8Enemies:
	db "GFX_Sprite_Level8Enemies.bin"
GFX_Sprite_Level8EnemiesEnd:

;--------------------------------------------------------------------

PAL_Unknown1:
	db "Unknown1.bin"
PAL_Unknown1End:
PAL_Unknown2:
	db "Unknown2.bin"
PAL_Unknown2End:
PAL_Player:
	db "Player.bin"
PAL_PlayerEnd:
PAL_Level1:
	db "Level1.bin"
PAL_Level1End:
PAL_Level2:
	db "Level2.bin"
PAL_Level2End:
PAL_Level3:
	db "Level3.bin"
PAL_Level3End:
PAL_Level4:
	db "Level4.bin"
PAL_Level4End:
PAL_Level5:
	db "Level5.bin"
PAL_Level5End:
PAL_Level6:
	db "Level6.bin"
PAL_Level6End:
PAL_Level7:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "Level7_BSZ1_OM1W3.bin"
else
	db "Level7_BSZ1_OM1W2.bin"
endif
PAL_Level7End:
PAL_Level8:
	db "Level8.bin"
PAL_Level8End:
if !ROMVer&(!BSZ1_OM1W3) != $00
PAL_Unknown3:
	db "Unknown3_BSZ1_OM1W3.bin"
PAL_Unknown3End:
PAL_Unknown4:
	db "Unknown4_BSZ1_OM1W3.bin"
PAL_Unknown4End:
endif
PAL_Overworld:
	db "Overworld.bin"
PAL_OverworldEnd:

;--------------------------------------------------------------------

M16_Unknown1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "Unknown1_BSZ1_OM1W3.bin"
else
	db "Unknown1_BSZ1_OM1W2.bin"
endif
M16_Unknown1End:
if !ROMVer&(!BSZ1_OM1W3) != $00
M16_Unknown3:
	db "Unknown3_BSZ1_OM1W3.bin"
M16_Unknown3End:
M16_Unknown4:
	db "Unknown4_BSZ1_OM1W3.bin"
M16_Unknown4End:
endif
M16_Overworld:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "Overworld_BSZ1_OM1W3.bin"
else
	db "Overworld_BSZ1_OM1W2.bin"
endif
M16_OverworldEnd:
M16_Dungeon:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "Dungeon_BSZ1_OM1W3.bin"
else
	db "Dungeon_BSZ1_OM1W2.bin"
endif
M16_DungeonEnd:
M16_PauseMenu:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "PauseMenu_BSZ1_OM1W3.bin"
else
	db "PauseMenu_BSZ1_OM1W2.bin"
endif
M16_PauseMenuEnd:
M16_Unknown2:
	db "Unknown2.bin"
M16_Unknown2End:

;--------------------------------------------------------------------

M1OW_SpriteData_Quadrant_1_1:
	db "SpriteData_Quadrant_1_1.bin"
M1OW_SpriteData_Quadrant_1_1End:
M1OW_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1OW_SpriteData_Quadrant_1_2End:
M1OW_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1OW_SpriteData_Quadrant_1_3End:
M1OW_SpriteData_Quadrant_1_4:
	db "SpriteData_Quadrant_1_4.bin"
M1OW_SpriteData_Quadrant_1_4End:
M1OW_SpriteData_Quadrant_1_5:
	db "SpriteData_Quadrant_1_5.bin"
M1OW_SpriteData_Quadrant_1_5End:
M1OW_SpriteData_Quadrant_1_6:
	db "SpriteData_Quadrant_1_6.bin"
M1OW_SpriteData_Quadrant_1_6End:
M1OW_SpriteData_Quadrant_1_7:
	db "SpriteData_Quadrant_1_7.bin"
M1OW_SpriteData_Quadrant_1_7End:
M1OW_SpriteData_Quadrant_1_8:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_1_8_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_1_8_BSZ1_OM1W2.bin"
endif
M1OW_SpriteData_Quadrant_1_8End:
M1OW_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1OW_SpriteData_Quadrant_2_1End:
M1OW_SpriteData_Quadrant_2_2:
	db "SpriteData_Quadrant_2_2.bin"
M1OW_SpriteData_Quadrant_2_2End:
M1OW_SpriteData_Quadrant_2_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_3_BSZ1_OM1W2.bin"
endif
M1OW_SpriteData_Quadrant_2_3End:
M1OW_SpriteData_Quadrant_2_4:
	db "SpriteData_Quadrant_2_4.bin"
M1OW_SpriteData_Quadrant_2_4End:
M1OW_SpriteData_Quadrant_2_5:
	db "SpriteData_Quadrant_2_5.bin"
M1OW_SpriteData_Quadrant_2_5End:
M1OW_SpriteData_Quadrant_2_6:
	db "SpriteData_Quadrant_2_6.bin"
M1OW_SpriteData_Quadrant_2_6End:
M1OW_SpriteData_Quadrant_2_7:
	db "SpriteData_Quadrant_2_7.bin"
M1OW_SpriteData_Quadrant_2_7End:
M1OW_SpriteData_Quadrant_2_8:
	db "SpriteData_Quadrant_2_8.bin"
M1OW_SpriteData_Quadrant_2_8End:
M1OW_SpriteData_Quadrant_3_1:
	db "SpriteData_Quadrant_3_1.bin"
M1OW_SpriteData_Quadrant_3_1End:
M1OW_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1OW_SpriteData_Quadrant_3_2End:
M1OW_SpriteData_Quadrant_3_3:
	db "SpriteData_Quadrant_3_3.bin"
M1OW_SpriteData_Quadrant_3_3End:
M1OW_SpriteData_Quadrant_3_4:
	db "SpriteData_Quadrant_3_4.bin"
M1OW_SpriteData_Quadrant_3_4End:
M1OW_SpriteData_Quadrant_3_5:
	db "SpriteData_Quadrant_3_5.bin"
M1OW_SpriteData_Quadrant_3_5End:
M1OW_SpriteData_Quadrant_3_6:
	db "SpriteData_Quadrant_3_6.bin"
M1OW_SpriteData_Quadrant_3_6End:
M1OW_SpriteData_Quadrant_3_7:
	db "SpriteData_Quadrant_3_7.bin"
M1OW_SpriteData_Quadrant_3_7End:
M1OW_SpriteData_Quadrant_3_8:
	db "SpriteData_Quadrant_3_8.bin"
M1OW_SpriteData_Quadrant_3_8End:
M1OW_SpriteData_Quadrant_4_1:
	db "SpriteData_Quadrant_4_1.bin"
M1OW_SpriteData_Quadrant_4_1End:
M1OW_SpriteData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1OW_SpriteData_Quadrant_4_2End:
M1OW_SpriteData_Quadrant_4_3:
	db "SpriteData_Quadrant_4_3.bin"
M1OW_SpriteData_Quadrant_4_3End:
M1OW_SpriteData_Quadrant_4_4:
	db "SpriteData_Quadrant_4_4.bin"
M1OW_SpriteData_Quadrant_4_4End:
M1OW_SpriteData_Quadrant_4_5:
	db "SpriteData_Quadrant_4_5.bin"
M1OW_SpriteData_Quadrant_4_5End:
M1OW_SpriteData_Quadrant_4_6:
	db "SpriteData_Quadrant_4_6.bin"
M1OW_SpriteData_Quadrant_4_6End:
M1OW_SpriteData_Quadrant_4_7:
	db "SpriteData_Quadrant_4_7.bin"
M1OW_SpriteData_Quadrant_4_7End:
M1OW_SpriteData_Quadrant_4_8:
	db "SpriteData_Quadrant_4_8.bin"
M1OW_SpriteData_Quadrant_4_8End:
M1OW_SpriteData_Quadrant_5_1:
	db "SpriteData_Quadrant_5_1.bin"
M1OW_SpriteData_Quadrant_5_1End:
M1OW_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1OW_SpriteData_Quadrant_5_2End:
M1OW_SpriteData_Quadrant_5_3:
	db "SpriteData_Quadrant_5_3.bin"
M1OW_SpriteData_Quadrant_5_3End:
M1OW_SpriteData_Quadrant_5_4:
	db "SpriteData_Quadrant_5_4.bin"
M1OW_SpriteData_Quadrant_5_4End:
M1OW_SpriteData_Quadrant_5_5:
	db "SpriteData_Quadrant_5_5.bin"
M1OW_SpriteData_Quadrant_5_5End:
M1OW_SpriteData_Quadrant_5_6:
	db "SpriteData_Quadrant_5_6.bin"
M1OW_SpriteData_Quadrant_5_6End:
M1OW_SpriteData_Quadrant_5_7:
	db "SpriteData_Quadrant_5_7.bin"
M1OW_SpriteData_Quadrant_5_7End:
M1OW_SpriteData_Quadrant_5_8:
	db "SpriteData_Quadrant_5_8.bin"
M1OW_SpriteData_Quadrant_5_8End:
M1OW_SpriteData_Quadrant_6_1:
	db "SpriteData_Quadrant_6_1.bin"
M1OW_SpriteData_Quadrant_6_1End:
M1OW_SpriteData_Quadrant_6_2:
	db "SpriteData_Quadrant_6_2.bin"
M1OW_SpriteData_Quadrant_6_2End:
M1OW_SpriteData_Quadrant_6_3:
	db "SpriteData_Quadrant_6_3.bin"
M1OW_SpriteData_Quadrant_6_3End:
M1OW_SpriteData_Quadrant_6_4:
	db "SpriteData_Quadrant_6_4.bin"
M1OW_SpriteData_Quadrant_6_4End:
M1OW_SpriteData_Quadrant_6_5:
	db "SpriteData_Quadrant_6_5.bin"
M1OW_SpriteData_Quadrant_6_5End:
M1OW_SpriteData_Quadrant_6_6:
	db "SpriteData_Quadrant_6_6.bin"
M1OW_SpriteData_Quadrant_6_6End:
M1OW_SpriteData_Quadrant_6_7:
	db "SpriteData_Quadrant_6_7.bin"
M1OW_SpriteData_Quadrant_6_7End:
M1OW_SpriteData_Quadrant_6_8:
	db "SpriteData_Quadrant_6_8.bin"
M1OW_SpriteData_Quadrant_6_8End:
M1OW_SpriteData_Quadrant_7_1:
	db "SpriteData_Quadrant_7_1.bin"
M1OW_SpriteData_Quadrant_7_1End:
M1OW_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1OW_SpriteData_Quadrant_7_2End:
M1OW_SpriteData_Quadrant_7_3:
	db "SpriteData_Quadrant_7_3.bin"
M1OW_SpriteData_Quadrant_7_3End:
M1OW_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1OW_SpriteData_Quadrant_7_4End:
M1OW_SpriteData_Quadrant_7_5:
	db "SpriteData_Quadrant_7_5.bin"
M1OW_SpriteData_Quadrant_7_5End:
M1OW_SpriteData_Quadrant_7_6:
	db "SpriteData_Quadrant_7_6.bin"
M1OW_SpriteData_Quadrant_7_6End:
M1OW_SpriteData_Quadrant_7_7:
	db "SpriteData_Quadrant_7_7.bin"
M1OW_SpriteData_Quadrant_7_7End:
M1OW_SpriteData_Quadrant_7_8:
	db "SpriteData_Quadrant_7_8.bin"
M1OW_SpriteData_Quadrant_7_8End:
M1OW_SpriteData_Quadrant_8_1:
	db "SpriteData_Quadrant_8_1.bin"
M1OW_SpriteData_Quadrant_8_1End:
M1OW_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1OW_SpriteData_Quadrant_8_2End:
M1OW_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1OW_SpriteData_Quadrant_8_3End:
M1OW_SpriteData_Quadrant_8_4:
	db "SpriteData_Quadrant_8_4.bin"
M1OW_SpriteData_Quadrant_8_4End:
M1OW_SpriteData_Quadrant_8_5:
	db "SpriteData_Quadrant_8_5.bin"
M1OW_SpriteData_Quadrant_8_5End:
M1OW_SpriteData_Quadrant_8_6:
	db "SpriteData_Quadrant_8_6.bin"
M1OW_SpriteData_Quadrant_8_6End:
M1OW_SpriteData_Quadrant_8_7:
	db "SpriteData_Quadrant_8_7.bin"
M1OW_SpriteData_Quadrant_8_7End:
M1OW_SpriteData_Quadrant_8_8:
	db "SpriteData_Quadrant_8_8.bin"
M1OW_SpriteData_Quadrant_8_8End:
M1OW_TileData_Quadrant_1_1:
	db "TileData_Quadrant_1_1.bin"
M1OW_TileData_Quadrant_1_1End:
M1OW_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1OW_TileData_Quadrant_1_2End:
M1OW_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1OW_TileData_Quadrant_1_3End:
M1OW_TileData_Quadrant_1_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_1_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_1_4_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_1_4End:
M1OW_TileData_Quadrant_1_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_1_5_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_1_5_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_1_5End:
M1OW_TileData_Quadrant_1_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_1_6_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_1_6_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_1_6End:
M1OW_TileData_Quadrant_1_7:
	db "TileData_Quadrant_1_7.bin"
M1OW_TileData_Quadrant_1_7End:
M1OW_TileData_Quadrant_1_8:
	db "TileData_Quadrant_1_8.bin"
M1OW_TileData_Quadrant_1_8End:
M1OW_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1OW_TileData_Quadrant_2_1End:
M1OW_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1OW_TileData_Quadrant_2_2End:
M1OW_TileData_Quadrant_2_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_3_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_2_3End:
M1OW_TileData_Quadrant_2_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_4_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_2_4End:
M1OW_TileData_Quadrant_2_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_5_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_5_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_2_5End:
M1OW_TileData_Quadrant_2_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_6_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_6_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_2_6End:
M1OW_TileData_Quadrant_2_7:
	db "TileData_Quadrant_2_7.bin"
M1OW_TileData_Quadrant_2_7End:
M1OW_TileData_Quadrant_2_8:
	db "TileData_Quadrant_2_8.bin"
M1OW_TileData_Quadrant_2_8End:
M1OW_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1OW_TileData_Quadrant_3_1End:
M1OW_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1OW_TileData_Quadrant_3_2End:
M1OW_TileData_Quadrant_3_3:
	db "TileData_Quadrant_3_3.bin"
M1OW_TileData_Quadrant_3_3End:
M1OW_TileData_Quadrant_3_4:
	db "TileData_Quadrant_3_4.bin"
M1OW_TileData_Quadrant_3_4End:
M1OW_TileData_Quadrant_3_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_3_5_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_3_5_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_3_5End:
M1OW_TileData_Quadrant_3_6:
	db "TileData_Quadrant_3_6.bin"
M1OW_TileData_Quadrant_3_6End:
M1OW_TileData_Quadrant_3_7:
	db "TileData_Quadrant_3_7.bin"
M1OW_TileData_Quadrant_3_7End:
M1OW_TileData_Quadrant_3_8:
	db "TileData_Quadrant_3_8.bin"
M1OW_TileData_Quadrant_3_8End:
M1OW_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1OW_TileData_Quadrant_4_1End:
M1OW_TileData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_4_2End:
M1OW_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1OW_TileData_Quadrant_4_3End:
M1OW_TileData_Quadrant_4_4:
	db "TileData_Quadrant_4_4.bin"
M1OW_TileData_Quadrant_4_4End:
M1OW_TileData_Quadrant_4_5:
	db "TileData_Quadrant_4_5.bin"
M1OW_TileData_Quadrant_4_5End:
M1OW_TileData_Quadrant_4_6:
	db "TileData_Quadrant_4_6.bin"
M1OW_TileData_Quadrant_4_6End:
M1OW_TileData_Quadrant_4_7:
	db "TileData_Quadrant_4_7.bin"
M1OW_TileData_Quadrant_4_7End:
M1OW_TileData_Quadrant_4_8:
	db "TileData_Quadrant_4_8.bin"
M1OW_TileData_Quadrant_4_8End:
M1OW_TileData_Quadrant_5_1:
	db "TileData_Quadrant_5_1.bin"
M1OW_TileData_Quadrant_5_1End:
M1OW_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1OW_TileData_Quadrant_5_2End:
M1OW_TileData_Quadrant_5_3:
	db "TileData_Quadrant_5_3.bin"
M1OW_TileData_Quadrant_5_3End:
M1OW_TileData_Quadrant_5_4:
	db "TileData_Quadrant_5_4.bin"
M1OW_TileData_Quadrant_5_4End:
M1OW_TileData_Quadrant_5_5:
	db "TileData_Quadrant_5_5.bin"
M1OW_TileData_Quadrant_5_5End:
M1OW_TileData_Quadrant_5_6:
	db "TileData_Quadrant_5_6.bin"
M1OW_TileData_Quadrant_5_6End:
M1OW_TileData_Quadrant_5_7:
	db "TileData_Quadrant_5_7.bin"
M1OW_TileData_Quadrant_5_7End:
M1OW_TileData_Quadrant_5_8:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_5_8_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_5_8_BSZ1_OM1W2.bin"
endif
M1OW_TileData_Quadrant_5_8End:
M1OW_TileData_Quadrant_6_1:
	db "TileData_Quadrant_6_1.bin"
M1OW_TileData_Quadrant_6_1End:
M1OW_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1OW_TileData_Quadrant_6_2End:
M1OW_TileData_Quadrant_6_3:
	db "TileData_Quadrant_6_3.bin"
M1OW_TileData_Quadrant_6_3End:
M1OW_TileData_Quadrant_6_4:
	db "TileData_Quadrant_6_4.bin"
M1OW_TileData_Quadrant_6_4End:
M1OW_TileData_Quadrant_6_5:
	db "TileData_Quadrant_6_5.bin"
M1OW_TileData_Quadrant_6_5End:
M1OW_TileData_Quadrant_6_6:
	db "TileData_Quadrant_6_6.bin"
M1OW_TileData_Quadrant_6_6End:
M1OW_TileData_Quadrant_6_7:
	db "TileData_Quadrant_6_7.bin"
M1OW_TileData_Quadrant_6_7End:
M1OW_TileData_Quadrant_6_8:
	db "TileData_Quadrant_6_8.bin"
M1OW_TileData_Quadrant_6_8End:
M1OW_TileData_Quadrant_7_1:
	db "TileData_Quadrant_7_1.bin"
M1OW_TileData_Quadrant_7_1End:
M1OW_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1OW_TileData_Quadrant_7_2End:
M1OW_TileData_Quadrant_7_3:
	db "TileData_Quadrant_7_3.bin"
M1OW_TileData_Quadrant_7_3End:
M1OW_TileData_Quadrant_7_4:
	db "TileData_Quadrant_7_4.bin"
M1OW_TileData_Quadrant_7_4End:
M1OW_TileData_Quadrant_7_5:
	db "TileData_Quadrant_7_5.bin"
M1OW_TileData_Quadrant_7_5End:
M1OW_TileData_Quadrant_7_6:
	db "TileData_Quadrant_7_6.bin"
M1OW_TileData_Quadrant_7_6End:
M1OW_TileData_Quadrant_7_7:
	db "TileData_Quadrant_7_7.bin"
M1OW_TileData_Quadrant_7_7End:
M1OW_TileData_Quadrant_7_8:
	db "TileData_Quadrant_7_8.bin"
M1OW_TileData_Quadrant_7_8End:
M1OW_TileData_Quadrant_8_1:
	db "TileData_Quadrant_8_1.bin"
M1OW_TileData_Quadrant_8_1End:
M1OW_TileData_Quadrant_8_2:
	db "TileData_Quadrant_8_2.bin"
M1OW_TileData_Quadrant_8_2End:
M1OW_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1OW_TileData_Quadrant_8_3End:
M1OW_TileData_Quadrant_8_4:
	db "TileData_Quadrant_8_4.bin"
M1OW_TileData_Quadrant_8_4End:
M1OW_TileData_Quadrant_8_5:
	db "TileData_Quadrant_8_5.bin"
M1OW_TileData_Quadrant_8_5End:
M1OW_TileData_Quadrant_8_6:
	db "TileData_Quadrant_8_6.bin"
M1OW_TileData_Quadrant_8_6End:
M1OW_TileData_Quadrant_8_7:
	db "TileData_Quadrant_8_7.bin"
M1OW_TileData_Quadrant_8_7End:
M1OW_TileData_Quadrant_8_8:
	db "TileData_Quadrant_8_8.bin"
M1OW_TileData_Quadrant_8_8End:

;--------------------------------------------------------------------

M1C_SpriteData_ShopWithShieldKeyAndCandle:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_ShopWithShieldKeyAndCandle_BSZ1_OM1W3.bin"
else
	db "SpriteData_ShopWithShieldKeyAndCandle_BSZ1_OM1W2.bin"
endif
M1C_SpriteData_ShopWithShieldKeyAndCandleEnd:
M1C_SpriteData_LetterOldMan:
	db "SpriteData_LetterOldMan.bin"
M1C_SpriteData_LetterOldManEnd:
M1C_SpriteData_PotionShop:
	db "SpriteData_PotionShop.bin"
M1C_SpriteData_PotionShopEnd:
M1C_SpriteData_WhiteSwordOldMan:
	db "SpriteData_WhiteSwordOldMan.bin"
M1C_SpriteData_WhiteSwordOldManEnd:
M1C_SpriteData_ShopWithArrowBlueRingAndMeat:
	db "SpriteData_ShopWithArrowBlueRingAndMeat.bin"
M1C_SpriteData_ShopWithArrowBlueRingAndMeatEnd:
M1C_SpriteData_PotionOrHeartContainerOldMan:
	db "SpriteData_PotionOrHeartContainerOldMan.bin"
M1C_SpriteData_PotionOrHeartContainerOldManEnd:
M1C_SpriteData_AdviceOldMan1:
	db "SpriteData_AdviceOldMan1.bin"
M1C_SpriteData_AdviceOldMan1End:
M1C_SpriteData_SecretToEveryoneMoblin1:
	db "SpriteData_SecretToEveryoneMoblin1.bin"
M1C_SpriteData_SecretToEveryoneMoblin1End:
M1C_SpriteData_SecretToEveryoneMoblin2:
	db "SpriteData_SecretToEveryoneMoblin2.bin"
M1C_SpriteData_SecretToEveryoneMoblin2End:
M1C_SpriteData_AdviceOldMan2:
	db "SpriteData_AdviceOldMan2.bin"
M1C_SpriteData_AdviceOldMan2End:
M1C_SpriteData_MoneyMakingGameOldMan:
	db "SpriteData_MoneyMakingGameOldMan.bin"
M1C_SpriteData_MoneyMakingGameOldManEnd:
M1C_SpriteData_UnknownMoblin:
	db "SpriteData_UnknownMoblin.bin"
M1C_SpriteData_UnknownMoblinEnd:
M1C_SpriteData_UnknownMoblin2:
	db "SpriteData_UnknownMoblin2.bin"
M1C_SpriteData_UnknownMoblin2End:
M1C_SpriteData_ShopWithShieldKeyAndMeat:
	db "SpriteData_ShopWithShieldKeyAndMeat.bin"
M1C_SpriteData_ShopWithShieldKeyAndMeatEnd:
M1C_SpriteData_UnknownOldMan1:
	db "SpriteData_UnknownOldMan1.bin"
M1C_SpriteData_UnknownOldMan1End:
M1C_SpriteData_AdviceOldMan3:
	db "SpriteData_AdviceOldMan3.bin"
M1C_SpriteData_AdviceOldMan3End:
M1C_SpriteData_DoorRepairOldMan:
	db "SpriteData_DoorRepairOldMan.bin"
M1C_SpriteData_DoorRepairOldManEnd:
M1C_SpriteData_AdviceOldMan4:
	db "SpriteData_AdviceOldMan4.bin"
M1C_SpriteData_AdviceOldMan4End:
M1C_SpriteData_AdviceOldMan5:
	db "SpriteData_AdviceOldMan5.bin"
M1C_SpriteData_AdviceOldMan5End:
M1C_SpriteData_ShopWithHeartAndMeat:
	db "SpriteData_ShopWithHeartAndMeat.bin"
M1C_SpriteData_ShopWithHeartAndMeatEnd:
M1C_SpriteData_UnknownOldMan2:
	db "SpriteData_UnknownOldMan2.bin"
M1C_SpriteData_UnknownOldMan2End:
M1C_TileData_Unknown:
	db "TileData_Unknown.bin"
M1C_TileData_UnknownEnd:
M1C_SpriteData_Rupees:
	db "SpriteData_Rupees.bin"
M1C_SpriteData_RupeesEnd:
if !ROMVer&(!BSZ1_OM1W3) != $00
M1C_SpriteData_Unknown:
	db "SpriteData_Unknown_BSZ1_OM1W3.bin"
M1C_SpriteData_UnknownEnd:
endif
M1C_TileData_OldManCave:
	db "TileData_OldManCave.bin"
M1C_TileData_OldManCaveEnd:
M1C_SpriteData_WoodenSwordOldMan:
	db "SpriteData_WoodenSwordOldMan.bin"
M1C_SpriteData_WoodenSwordOldManEnd:
M1C_TileData_Shop:
	db "TileData_Shop.bin"
M1C_TileData_ShopEnd:

;--------------------------------------------------------------------

M1L1_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L1_TileData_Quadrant_5_2End:
M1L1_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L1_TileData_Quadrant_8_3End:
M1L1_TileData_Quadrant_8_2:
	db "TileData_Quadrant_8_2.bin"
M1L1_TileData_Quadrant_8_2End:
M1L1_TileData_Quadrant_8_4:
	db "TileData_Quadrant_8_4.bin"
M1L1_TileData_Quadrant_8_4End:
M1L1_TileData_Quadrant_7_4:
	db "TileData_Quadrant_7_4.bin"
M1L1_TileData_Quadrant_7_4End:
M1L1_TileData_Quadrant_6_4:
	db "TileData_Quadrant_6_4.bin"
M1L1_TileData_Quadrant_6_4End:
M1L1_TileData_Quadrant_5_4:
	db "TileData_Quadrant_5_4.bin"
M1L1_TileData_Quadrant_5_4End:
M1L1_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1L1_TileData_Quadrant_4_3End:
M1L1_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1L1_TileData_Quadrant_4_1End:
M1L1_TileData_Quadrant_1_1:
	db "TileData_Quadrant_1_1.bin"
M1L1_TileData_Quadrant_1_1End:
M1L1_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L1_TileData_Quadrant_1_2End:
M1L1_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L1_TileData_Quadrant_1_3End:
M1L1_TileData_Quadrant_9_1:
	db "TileData_Quadrant_9_1.bin"
M1L1_TileData_Quadrant_9_1End:
M1L1_TileData_Quadrant_1_4:
	db "TileData_Quadrant_1_4.bin"
M1L1_TileData_Quadrant_1_4End:
M1L1_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L1_TileData_Quadrant_3_1End:
M1L1_TileData_Quadrant_4_2:
	db "TileData_Quadrant_4_2.bin"
M1L1_TileData_Quadrant_4_2End:
M1L1_TileData_Quadrant_5_3:
	db "TileData_Quadrant_5_3.bin"
M1L1_TileData_Quadrant_5_3End:
M1L1_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L1_TileData_Quadrant_2_1End:
M1L1_TileData_Quadrant_8_1:
	db "TileData_Quadrant_8_1.bin"
M1L1_TileData_Quadrant_8_1End:
M1L1_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L1_SpriteData_Quadrant_5_2End:
M1L1_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1L1_SpriteData_Quadrant_8_3End:
M1L1_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1L1_SpriteData_Quadrant_8_2End:
M1L1_SpriteData_Quadrant_8_4:
	db "SpriteData_Quadrant_8_4.bin"
M1L1_SpriteData_Quadrant_8_4End:
M1L1_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1L1_SpriteData_Quadrant_7_4End:
M1L1_SpriteData_Quadrant_6_4:
	db "SpriteData_Quadrant_6_4.bin"
M1L1_SpriteData_Quadrant_6_4End:
M1L1_SpriteData_Quadrant_5_4:
	db "SpriteData_Quadrant_5_4.bin"
M1L1_SpriteData_Quadrant_5_4End:
M1L1_SpriteData_Quadrant_4_3:
	db "SpriteData_Quadrant_4_3.bin"
M1L1_SpriteData_Quadrant_4_3End:
M1L1_SpriteData_Quadrant_4_1:
	db "SpriteData_Quadrant_4_1.bin"
M1L1_SpriteData_Quadrant_4_1End:
M1L1_SpriteData_Quadrant_1_1:
	db "SpriteData_Quadrant_1_1.bin"
M1L1_SpriteData_Quadrant_1_1End:
M1L1_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L1_SpriteData_Quadrant_1_2End:
M1L1_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1L1_SpriteData_Quadrant_1_3End:
M1L1_SpriteData_Quadrant_9_1:
	db "SpriteData_Quadrant_9_1.bin"
M1L1_SpriteData_Quadrant_9_1End:
M1L1_SpriteData_Quadrant_8_1:
	db "SpriteData_Quadrant_8_1.bin"
M1L1_SpriteData_Quadrant_8_1End:
M1L1_SpriteData_Quadrant_3_1:
	db "SpriteData_Quadrant_3_1.bin"
M1L1_SpriteData_Quadrant_3_1End:
M1L1_SpriteData_Quadrant_1_4:
	db "SpriteData_Quadrant_1_4.bin"
M1L1_SpriteData_Quadrant_1_4End:
M1L1_SpriteData_Quadrant_5_3:
	db "SpriteData_Quadrant_5_3.bin"
M1L1_SpriteData_Quadrant_5_3End:
M1L1_SpriteData_Quadrant_4_2:
	db "SpriteData_Quadrant_4_2.bin"
M1L1_SpriteData_Quadrant_4_2End:
M1L1_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L1_SpriteData_Quadrant_2_1End:

;--------------------------------------------------------------------

M1L2_TileData_Quadrant_7_4:
	db "TileData_Quadrant_7_4.bin"
M1L2_TileData_Quadrant_7_4End:
M1L2_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1L2_TileData_Quadrant_7_2End:
M1L2_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1L2_TileData_Quadrant_6_2End:
M1L2_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L2_TileData_Quadrant_5_2End:
M1L2_TileData_Quadrant_4_2:
	db "TileData_Quadrant_4_2.bin"
M1L2_TileData_Quadrant_4_2End:
M1L2_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L2_TileData_Quadrant_3_2End:
M1L2_TileData_Quadrant_3_3:
	db "TileData_Quadrant_3_3.bin"
M1L2_TileData_Quadrant_3_3End:
M1L2_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1L2_TileData_Quadrant_2_2End:
M1L2_TileData_Quadrant_2_3:
	db "TileData_Quadrant_2_3.bin"
M1L2_TileData_Quadrant_2_3End:
M1L2_TileData_Quadrant_6_4:
	db "TileData_Quadrant_6_4.bin"
M1L2_TileData_Quadrant_6_4End:
M1L2_TileData_Quadrant_8_2:
	db "TileData_Quadrant_8_2.bin"
M1L2_TileData_Quadrant_8_2End:
M1L2_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L2_TileData_Quadrant_1_2End:
M1L2_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L2_TileData_Quadrant_3_1End:
M1L2_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L2_TileData_Quadrant_2_1End:
M1L2_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1L2_SpriteData_Quadrant_7_4End:
M1L2_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1L2_SpriteData_Quadrant_7_2End:
M1L2_SpriteData_Quadrant_6_2:
	db "SpriteData_Quadrant_6_2.bin"
M1L2_SpriteData_Quadrant_6_2End:
M1L2_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L2_SpriteData_Quadrant_5_2End:
M1L2_SpriteData_Quadrant_4_2:
	db "SpriteData_Quadrant_4_2.bin"
M1L2_SpriteData_Quadrant_4_2End:
M1L2_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1L2_SpriteData_Quadrant_3_2End:
M1L2_SpriteData_Quadrant_3_3:
	db "SpriteData_Quadrant_3_3.bin"
M1L2_SpriteData_Quadrant_3_3End:
M1L2_SpriteData_Quadrant_2_2:
	db "SpriteData_Quadrant_2_2.bin"
M1L2_SpriteData_Quadrant_2_2End:
M1L2_SpriteData_Quadrant_2_3:
	db "SpriteData_Quadrant_2_3.bin"
M1L2_SpriteData_Quadrant_2_3End:
M1L2_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1L2_SpriteData_Quadrant_8_2End:
M1L2_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L2_SpriteData_Quadrant_2_1End:
M1L2_SpriteData_Quadrant_3_1:
	db "SpriteData_Quadrant_3_1.bin"
M1L2_SpriteData_Quadrant_3_1End:
M1L2_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L2_SpriteData_Quadrant_1_2End:

;--------------------------------------------------------------------

M1L3_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1L3_TileData_Quadrant_4_3End:
M1L3_TileData_Quadrant_1_1:
	db "TileData_Quadrant_1_1.bin"
M1L3_TileData_Quadrant_1_1End:
M1L3_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L3_TileData_Quadrant_8_3End:
M1L3_TileData_Quadrant_8_2:
	db "TileData_Quadrant_8_2.bin"
M1L3_TileData_Quadrant_8_2End:
M1L3_TileData_Quadrant_7_1:
	db "TileData_Quadrant_7_1.bin"
M1L3_TileData_Quadrant_7_1End:
M1L3_TileData_Quadrant_7_3:
	db "TileData_Quadrant_7_3.bin"
M1L3_TileData_Quadrant_7_3End:
M1L3_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1L3_TileData_Quadrant_4_1End:
M1L3_TileData_Quadrant_8_4:
	db "TileData_Quadrant_8_4.bin"
M1L3_TileData_Quadrant_8_4End:
M1L3_TileData_Quadrant_7_4:
	db "TileData_Quadrant_7_4.bin"
M1L3_TileData_Quadrant_7_4End:
M1L3_TileData_Quadrant_6_4:
	db "TileData_Quadrant_6_4.bin"
M1L3_TileData_Quadrant_6_4End:
M1L3_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L3_TileData_Quadrant_3_1End:
M1L3_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L3_TileData_Quadrant_2_1End:
M1L3_TileData_Quadrant_5_4:
	db "TileData_Quadrant_5_4.bin"
M1L3_TileData_Quadrant_5_4End:
M1L3_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L3_TileData_Quadrant_1_2End:
M1L3_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L3_TileData_Quadrant_1_3End:
M1L3_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1L3_TileData_Quadrant_7_2End:
M1L3_TileData_Quadrant_6_1:
	db "TileData_Quadrant_6_1.bin"
M1L3_TileData_Quadrant_6_1End:
M1L3_TileData_Quadrant_4_4:
	db "TileData_Quadrant_4_4.bin"
M1L3_TileData_Quadrant_4_4End:
M1L3_SpriteData_Quadrant_1_1:
	db "SpriteData_Quadrant_1_1.bin"
M1L3_SpriteData_Quadrant_1_1End:
M1L3_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1L3_SpriteData_Quadrant_8_3End:
M1L3_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1L3_SpriteData_Quadrant_8_2End:
M1L3_SpriteData_Quadrant_7_1:
	db "SpriteData_Quadrant_7_1.bin"
M1L3_SpriteData_Quadrant_7_1End:
M1L3_SpriteData_Quadrant_7_3:
	db "SpriteData_Quadrant_7_3.bin"
M1L3_SpriteData_Quadrant_7_3End:
M1L3_SpriteData_Quadrant_4_1:
	db "SpriteData_Quadrant_4_1.bin"
M1L3_SpriteData_Quadrant_4_1End:
M1L3_SpriteData_Quadrant_8_4:
	db "SpriteData_Quadrant_8_4.bin"
M1L3_SpriteData_Quadrant_8_4End:
M1L3_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1L3_SpriteData_Quadrant_7_4End:
M1L3_SpriteData_Quadrant_6_4:
	db "SpriteData_Quadrant_6_4.bin"
M1L3_SpriteData_Quadrant_6_4End:
M1L3_SpriteData_Quadrant_3_1:
	db "SpriteData_Quadrant_3_1.bin"
M1L3_SpriteData_Quadrant_3_1End:
M1L3_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L3_SpriteData_Quadrant_2_1End:
M1L3_SpriteData_Quadrant_5_1:
	db "SpriteData_Quadrant_5_1.bin"
M1L3_SpriteData_Quadrant_5_1End:
M1L3_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L3_SpriteData_Quadrant_1_2End:
M1L3_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1L3_SpriteData_Quadrant_1_3End:
M1L3_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1L3_SpriteData_Quadrant_7_2End:
M1L3_SpriteData_Quadrant_6_1:
	db "SpriteData_Quadrant_6_1.bin"
M1L3_SpriteData_Quadrant_6_1End:
M1L3_SpriteData_Quadrant_4_4:
	db "SpriteData_Quadrant_4_4.bin"
M1L3_SpriteData_Quadrant_4_4End:
M1L3_SpriteData_Quadrant_4_3:
	db "SpriteData_Quadrant_4_3.bin"
M1L3_SpriteData_Quadrant_4_3End:
M1L3_SpriteData_Quadrant_5_4:
	db "SpriteData_Quadrant_5_4.bin"
M1L3_SpriteData_Quadrant_5_4End:
M1L3_SpriteData_Quadrant_9_1:
	db "SpriteData_Quadrant_9_1.bin"
M1L3_SpriteData_Quadrant_9_1End:
M1L3_SpriteData_Quadrant_9_2:
	db "SpriteData_Quadrant_9_2.bin"
M1L3_SpriteData_Quadrant_9_2End:

;--------------------------------------------------------------------

M1L4_TileData_Quadrant_1_1:
	db "TileData_Quadrant_1_1.bin"
M1L4_TileData_Quadrant_1_1End:
M1L4_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L4_TileData_Quadrant_1_2End:
M1L4_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L4_TileData_Quadrant_1_3End:
M1L4_TileData_Quadrant_1_4:
	db "TileData_Quadrant_1_4.bin"
M1L4_TileData_Quadrant_1_4End:
M1L4_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1L4_TileData_Quadrant_2_2End:
M1L4_TileData_Quadrant_2_3:
	db "TileData_Quadrant_2_3.bin"
M1L4_TileData_Quadrant_2_3End:
M1L4_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L4_TileData_Quadrant_3_2End:
M1L4_TileData_Quadrant_3_3:
	db "TileData_Quadrant_3_3.bin"
M1L4_TileData_Quadrant_3_3End:
M1L4_TileData_Quadrant_4_2:
	db "TileData_Quadrant_4_2.bin"
M1L4_TileData_Quadrant_4_2End:
M1L4_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1L4_TileData_Quadrant_4_3End:
M1L4_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L4_TileData_Quadrant_5_2End:
M1L4_TileData_Quadrant_5_3:
	db "TileData_Quadrant_5_3.bin"
M1L4_TileData_Quadrant_5_3End:
M1L4_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1L4_TileData_Quadrant_6_2End:
M1L4_TileData_Quadrant_6_3:
	db "TileData_Quadrant_6_3.bin"
M1L4_TileData_Quadrant_6_3End:
M1L4_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1L4_TileData_Quadrant_7_2End:
M1L4_TileData_Quadrant_7_3:
	db "TileData_Quadrant_7_3.bin"
M1L4_TileData_Quadrant_7_3End:
M1L4_TileData_Quadrant_8_1:
	db "TileData_Quadrant_8_1.bin"
M1L4_TileData_Quadrant_8_1End:
M1L4_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L4_TileData_Quadrant_8_3End:
M1L4_TileData_Quadrant_8_4:
	db "TileData_Quadrant_8_4.bin"
M1L4_TileData_Quadrant_8_4End:
M1L4_SpriteData_Quadrant_1_1:
	db "SpriteData_Quadrant_1_1.bin"
M1L4_SpriteData_Quadrant_1_1End:
M1L4_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L4_SpriteData_Quadrant_1_2End:
M1L4_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1L4_SpriteData_Quadrant_1_3End:
M1L4_SpriteData_Quadrant_1_4:
	db "SpriteData_Quadrant_1_4.bin"
M1L4_SpriteData_Quadrant_1_4End:
M1L4_SpriteData_Quadrant_2_2:
	db "SpriteData_Quadrant_2_2.bin"
M1L4_SpriteData_Quadrant_2_2End:
M1L4_SpriteData_Quadrant_2_3:
	db "SpriteData_Quadrant_2_3.bin"
M1L4_SpriteData_Quadrant_2_3End:
M1L4_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1L4_SpriteData_Quadrant_3_2End:
M1L4_SpriteData_Quadrant_3_3:
	db "SpriteData_Quadrant_3_3.bin"
M1L4_SpriteData_Quadrant_3_3End:
M1L4_SpriteData_Quadrant_4_2:
	db "SpriteData_Quadrant_4_2.bin"
M1L4_SpriteData_Quadrant_4_2End:
M1L4_SpriteData_Quadrant_4_3:
	db "SpriteData_Quadrant_4_3.bin"
M1L4_SpriteData_Quadrant_4_3End:
M1L4_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L4_SpriteData_Quadrant_5_2End:
M1L4_SpriteData_Quadrant_5_3:
	db "SpriteData_Quadrant_5_3.bin"
M1L4_SpriteData_Quadrant_5_3End:
M1L4_SpriteData_Quadrant_6_2:
	db "SpriteData_Quadrant_6_2.bin"
M1L4_SpriteData_Quadrant_6_2End:
M1L4_SpriteData_Quadrant_6_3:
	db "SpriteData_Quadrant_6_3.bin"
M1L4_SpriteData_Quadrant_6_3End:
M1L4_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1L4_SpriteData_Quadrant_7_2End:
M1L4_SpriteData_Quadrant_8_1:
	db "SpriteData_Quadrant_8_1.bin"
M1L4_SpriteData_Quadrant_8_1End:
M1L4_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1L4_SpriteData_Quadrant_8_2End:
M1L4_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1L4_SpriteData_Quadrant_8_3End:
M1L4_SpriteData_Quadrant_8_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_8_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_8_4_BSZ1_OM1W2.bin"
endif
M1L4_SpriteData_Quadrant_8_4End:
M1L4_SpriteData_Quadrant_9_2:
	db "SpriteData_Quadrant_9_2.bin"
M1L4_SpriteData_Quadrant_9_2End:
M1L4_SpriteData_Quadrant_9_1:
	db "SpriteData_Quadrant_9_1.bin"
M1L4_SpriteData_Quadrant_9_1End:

;--------------------------------------------------------------------

M1L5_SpriteData_Quadrant_1_1:
	db "SpriteData_Quadrant_1_1.bin"
M1L5_SpriteData_Quadrant_1_1End:
M1L5_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L5_SpriteData_Quadrant_1_2End:
M1L5_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1L5_SpriteData_Quadrant_1_3End:
M1L5_SpriteData_Quadrant_1_4:
	db "SpriteData_Quadrant_1_4.bin"
M1L5_SpriteData_Quadrant_1_4End:
M1L5_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L5_SpriteData_Quadrant_2_1End:
M1L5_SpriteData_Quadrant_2_2:
	db "SpriteData_Quadrant_2_2.bin"
M1L5_SpriteData_Quadrant_2_2End:
M1L5_SpriteData_Quadrant_3_1:
	db "SpriteData_Quadrant_3_1.bin"
M1L5_SpriteData_Quadrant_3_1End:
M1L5_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1L5_SpriteData_Quadrant_3_2End:
M1L5_SpriteData_Quadrant_4_1:
	db "SpriteData_Quadrant_4_1.bin"
M1L5_SpriteData_Quadrant_4_1End:
M1L5_SpriteData_Quadrant_4_2:
	db "SpriteData_Quadrant_4_2.bin"
M1L5_SpriteData_Quadrant_4_2End:
M1L5_SpriteData_Quadrant_4_4:
	db "SpriteData_Quadrant_4_4.bin"
M1L5_SpriteData_Quadrant_4_4End:
M1L5_SpriteData_Quadrant_4_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_5_BSZ1_OM1W2.bin"
endif
M1L5_SpriteData_Quadrant_4_5End:
M1L5_SpriteData_Quadrant_5_1:
	db "SpriteData_Quadrant_5_1.bin"
M1L5_SpriteData_Quadrant_5_1End:
M1L5_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L5_SpriteData_Quadrant_5_2End:
M1L5_SpriteData_Quadrant_5_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_5_BSZ1_OM1W2.bin"
endif
M1L5_SpriteData_Quadrant_5_5End:
M1L5_SpriteData_Quadrant_6_1:
	db "SpriteData_Quadrant_6_1.bin"
M1L5_SpriteData_Quadrant_6_1End:
M1L5_SpriteData_Quadrant_6_2:
	db "SpriteData_Quadrant_6_2.bin"
M1L5_SpriteData_Quadrant_6_2End:
M1L5_SpriteData_Quadrant_6_5:
	db "SpriteData_Quadrant_6_5.bin"
M1L5_SpriteData_Quadrant_6_5End:
M1L5_SpriteData_Quadrant_7_1:
	db "SpriteData_Quadrant_7_1.bin"
M1L5_SpriteData_Quadrant_7_1End:
M1L5_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1L5_SpriteData_Quadrant_7_2End:
M1L5_SpriteData_Quadrant_7_3:
	db "SpriteData_Quadrant_7_3.bin"
M1L5_SpriteData_Quadrant_7_3End:
M1L5_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1L5_SpriteData_Quadrant_7_4End:
M1L5_SpriteData_Quadrant_7_5:
	db "SpriteData_Quadrant_7_5.bin"
M1L5_SpriteData_Quadrant_7_5End:
M1L5_SpriteData_Quadrant_8_1:
	db "SpriteData_Quadrant_8_1.bin"
M1L5_SpriteData_Quadrant_8_1End:
M1L5_SpriteData_Quadrant_8_2:
	db "SpriteData_Quadrant_8_2.bin"
M1L5_SpriteData_Quadrant_8_2End:
M1L5_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1L5_SpriteData_Quadrant_8_3End:
M1L5_SpriteData_Quadrant_8_4:
	db "SpriteData_Quadrant_8_4.bin"
M1L5_SpriteData_Quadrant_8_4End:
M1L5_SpriteData_Quadrant_8_5:
	db "SpriteData_Quadrant_8_5.bin"
M1L5_SpriteData_Quadrant_8_5End:
M1L5_SpriteData_Quadrant_9_1:
	db "SpriteData_Quadrant_9_1.bin"
M1L5_SpriteData_Quadrant_9_1End:
M1L5_SpriteData_Quadrant_9_2:
	db "SpriteData_Quadrant_9_2.bin"
M1L5_SpriteData_Quadrant_9_2End:
M1L5_SpriteData_Quadrant_9_3:
	db "SpriteData_Quadrant_9_3.bin"
M1L5_SpriteData_Quadrant_9_3End:
M1L5_TileData_Quadrant_1_1:
	db "TileData_Quadrant_1_1.bin"
M1L5_TileData_Quadrant_1_1End:
M1L5_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L5_TileData_Quadrant_1_2End:
M1L5_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L5_TileData_Quadrant_1_3End:
M1L5_TileData_Quadrant_1_4:
	db "TileData_Quadrant_1_4.bin"
M1L5_TileData_Quadrant_1_4End:
M1L5_TileData_Quadrant_1_5:
	db "TileData_Quadrant_1_5.bin"
M1L5_TileData_Quadrant_1_5End:
M1L5_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L5_TileData_Quadrant_2_1End:
M1L5_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1L5_TileData_Quadrant_2_2End:
M1L5_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L5_TileData_Quadrant_3_1End:
M1L5_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L5_TileData_Quadrant_3_2End:
M1L5_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1L5_TileData_Quadrant_4_1End:
M1L5_TileData_Quadrant_4_2:
	db "TileData_Quadrant_4_2.bin"
M1L5_TileData_Quadrant_4_2End:
M1L5_TileData_Quadrant_4_4:
	db "TileData_Quadrant_4_4.bin"
M1L5_TileData_Quadrant_4_4End:
M1L5_TileData_Quadrant_4_5:
	db "TileData_Quadrant_4_5.bin"
M1L5_TileData_Quadrant_4_5End:
M1L5_TileData_Quadrant_5_1:
	db "TileData_Quadrant_5_1.bin"
M1L5_TileData_Quadrant_5_1End:
M1L5_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L5_TileData_Quadrant_5_2End:
M1L5_TileData_Quadrant_5_5:
	db "TileData_Quadrant_5_5.bin"
M1L5_TileData_Quadrant_5_5End:
M1L5_TileData_Quadrant_6_1:
	db "TileData_Quadrant_6_1.bin"
M1L5_TileData_Quadrant_6_1End:
M1L5_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1L5_TileData_Quadrant_6_2End:
M1L5_TileData_Quadrant_6_5:
	db "TileData_Quadrant_6_5.bin"
M1L5_TileData_Quadrant_6_5End:
M1L5_TileData_Quadrant_7_1:
	db "TileData_Quadrant_7_1.bin"
M1L5_TileData_Quadrant_7_1End:
M1L5_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1L5_TileData_Quadrant_7_2End:
M1L5_TileData_Quadrant_7_3:
	db "TileData_Quadrant_7_3.bin"
M1L5_TileData_Quadrant_7_3End:
M1L5_TileData_Quadrant_7_4:
	db "TileData_Quadrant_7_4.bin"
M1L5_TileData_Quadrant_7_4End:
M1L5_TileData_Quadrant_7_5:
	db "TileData_Quadrant_7_5.bin"
M1L5_TileData_Quadrant_7_5End:
M1L5_TileData_Quadrant_8_1:
	db "TileData_Quadrant_8_1.bin"
M1L5_TileData_Quadrant_8_1End:
M1L5_TileData_Quadrant_8_2:
	db "TileData_Quadrant_8_2.bin"
M1L5_TileData_Quadrant_8_2End:
M1L5_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L5_TileData_Quadrant_8_3End:
M1L5_TileData_Quadrant_8_4:
	db "TileData_Quadrant_8_4.bin"
M1L5_TileData_Quadrant_8_4End:
M1L5_TileData_Quadrant_8_5:
	db "TileData_Quadrant_8_5.bin"
M1L5_TileData_Quadrant_8_5End:

;--------------------------------------------------------------------

M1L6_TileData_Quadrant_6_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_6_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_6_3_BSZ1_OM1W2.bin"
endif
M1L6_TileData_Quadrant_6_3End:
M1L6_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L6_SpriteData_Quadrant_5_2End:
M1L6_SpriteData_Quadrant_1_2:
	db "SpriteData_Quadrant_1_2.bin"
M1L6_SpriteData_Quadrant_1_2End:
M1L6_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1L6_SpriteData_Quadrant_3_2End:
M1L6_SpriteData_Quadrant_2_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_2_2End:
M1L6_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L6_SpriteData_Quadrant_2_1End:
M1L6_SpriteData_Quadrant_3_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_1_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_3_1End:
M1L6_SpriteData_Quadrant_4_1:
	db "SpriteData_Quadrant_4_1.bin"
M1L6_SpriteData_Quadrant_4_1End:
M1L6_SpriteData_Quadrant_5_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_1_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_5_1End:
M1L6_SpriteData_Quadrant_6_1:
	db "SpriteData_Quadrant_6_1.bin"
M1L6_SpriteData_Quadrant_6_1End:
M1L6_SpriteData_Quadrant_6_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_6_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_6_3_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_6_3End:
M1L6_SpriteData_Quadrant_6_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_6_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_6_2_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_6_2End:
M1L6_SpriteData_Quadrant_8_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_8_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_8_2_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_8_2End:
M1L6_SpriteData_Quadrant_4_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_4_3End:
M1L6_SpriteData_Quadrant_5_3:
	db "SpriteData_Quadrant_5_3.bin"
M1L6_SpriteData_Quadrant_5_3End:
M1L6_SpriteData_Quadrant_3_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_3_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_3_3End:
M1L6_SpriteData_Quadrant_7_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_7_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_7_3_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_7_3End:
M1L6_SpriteData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1L6_SpriteData_Quadrant_4_2End:
M1L6_SpriteData_Quadrant_7_1:
	db "SpriteData_Quadrant_7_1.bin"
M1L6_SpriteData_Quadrant_7_1End:
M1L6_SpriteData_Quadrant_9_1:
	db "SpriteData_Quadrant_9_1.bin"
M1L6_SpriteData_Quadrant_9_1End:
M1L6_SpriteData_Quadrant_9_2:
	db "SpriteData_Quadrant_9_2.bin"
M1L6_SpriteData_Quadrant_9_2End:
M1L6_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L6_TileData_Quadrant_5_2End:
M1L6_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L6_TileData_Quadrant_1_2End:
M1L6_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L6_TileData_Quadrant_3_2End:
M1L6_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1L6_TileData_Quadrant_2_2End:
M1L6_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L6_TileData_Quadrant_2_1End:
M1L6_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1L6_TileData_Quadrant_4_1End:
M1L6_TileData_Quadrant_5_1:
	db "TileData_Quadrant_5_1.bin"
M1L6_TileData_Quadrant_5_1End:
M1L6_TileData_Quadrant_6_1:
	db "TileData_Quadrant_6_1.bin"
M1L6_TileData_Quadrant_6_1End:
M1L6_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L6_TileData_Quadrant_3_1End:
M1L6_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1L6_TileData_Quadrant_6_2End:
M1L6_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L6_TileData_Quadrant_8_3End:
M1L6_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1L6_TileData_Quadrant_4_3End:
M1L6_TileData_Quadrant_5_3:
	db "TileData_Quadrant_5_3.bin"
M1L6_TileData_Quadrant_5_3End:
M1L6_TileData_Quadrant_3_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_3_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_3_3_BSZ1_OM1W2.bin"
endif
M1L6_TileData_Quadrant_3_3End:
M1L6_TileData_Quadrant_4_2:
	db "TileData_Quadrant_4_2.bin"
M1L6_TileData_Quadrant_4_2End:

;--------------------------------------------------------------------

M1L7_TileData_Quadrant_3_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_3_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_3_3_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_3_3End:
M1L7_TileData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_4_2End:
M1L7_TileData_Quadrant_4_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_3_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_4_3End:
M1L7_TileData_Quadrant_4_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_5_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_5_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_4_5End:
M1L7_SpriteData_Quadrant_3_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_5_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_3_5End:
M1L7_SpriteData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_2End:
M1L7_SpriteData_Quadrant_4_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_3End:
M1L7_SpriteData_Quadrant_4_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_5_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_5End:
M1L7_TileData_Quadrant_4_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_6_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_6_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_4_6End:
M1L7_TileData_Quadrant_1_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_1_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_1_2_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_1_2End:
M1L7_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L7_TileData_Quadrant_1_3End:
M1L7_TileData_Quadrant_1_4:
	db "TileData_Quadrant_1_4.bin"
M1L7_TileData_Quadrant_1_4End:
M1L7_TileData_Quadrant_1_5:
	db "TileData_Quadrant_1_5.bin"
M1L7_TileData_Quadrant_1_5End:
M1L7_TileData_Quadrant_2_1:
	db "TileData_Quadrant_2_1.bin"
M1L7_TileData_Quadrant_2_1End:
M1L7_TileData_Quadrant_2_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_2_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_2_2End:
M1L7_TileData_Quadrant_2_3:
	db "TileData_Quadrant_2_3.bin"
M1L7_TileData_Quadrant_2_3End:
M1L7_TileData_Quadrant_2_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_2_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_2_4_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_2_4End:
M1L7_TileData_Quadrant_2_5:
	db "TileData_Quadrant_2_5.bin"
M1L7_TileData_Quadrant_2_5End:
M1L7_TileData_Quadrant_2_6:
	db "TileData_Quadrant_2_6.bin"
M1L7_TileData_Quadrant_2_6End:
M1L7_TileData_Quadrant_2_7:
	db "TileData_Quadrant_2_7.bin"
M1L7_TileData_Quadrant_2_7End:
M1L7_TileData_Quadrant_3_1:
	db "TileData_Quadrant_3_1.bin"
M1L7_TileData_Quadrant_3_1End:
M1L7_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L7_TileData_Quadrant_3_2End:
M1L7_TileData_Quadrant_3_4:
	db "TileData_Quadrant_3_4.bin"
M1L7_TileData_Quadrant_3_4End:
M1L7_TileData_Quadrant_3_6:
	db "TileData_Quadrant_3_6.bin"
M1L7_TileData_Quadrant_3_6End:
M1L7_TileData_Quadrant_3_7:
	db "TileData_Quadrant_3_7.bin"
M1L7_TileData_Quadrant_3_7End:
M1L7_TileData_Quadrant_4_1:
	db "TileData_Quadrant_4_1.bin"
M1L7_TileData_Quadrant_4_1End:
M1L7_TileData_Quadrant_4_4:
	db "TileData_Quadrant_4_4.bin"
M1L7_TileData_Quadrant_4_4End:
M1L7_TileData_Quadrant_4_7:
	db "TileData_Quadrant_4_7.bin"
M1L7_TileData_Quadrant_4_7End:
M1L7_TileData_Quadrant_5_1:
	db "TileData_Quadrant_5_1.bin"
M1L7_TileData_Quadrant_5_1End:
M1L7_TileData_Quadrant_5_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_5_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_5_2_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_5_2End:
M1L7_TileData_Quadrant_5_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_5_3_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_5_3_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_5_3End:
M1L7_TileData_Quadrant_5_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_5_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_5_4_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_5_4End:
M1L7_TileData_Quadrant_5_5:
	db "TileData_Quadrant_5_5.bin"
M1L7_TileData_Quadrant_5_5End:
M1L7_TileData_Quadrant_5_6:
	db "TileData_Quadrant_5_6.bin"
M1L7_TileData_Quadrant_5_6End:
M1L7_TileData_Quadrant_5_7:
	db "TileData_Quadrant_5_7.bin"
M1L7_TileData_Quadrant_5_7End:
M1L7_TileData_Quadrant_6_3:
	db "TileData_Quadrant_6_3.bin"
M1L7_TileData_Quadrant_6_3End:
M1L7_TileData_Quadrant_6_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_6_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_6_4_BSZ1_OM1W2.bin"
endif
M1L7_TileData_Quadrant_6_4End:
M1L7_TileData_Quadrant_6_5:
	db "TileData_Quadrant_6_5.bin"
M1L7_TileData_Quadrant_6_5End:
M1L7_SpriteData_Quadrant_2_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_6_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_6_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_6End:
M1L7_SpriteData_Quadrant_2_7:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_7_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_7_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_7End:
M1L7_SpriteData_Quadrant_3_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_1_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_3_1End:
M1L7_SpriteData_Quadrant_3_2:
	db "SpriteData_Quadrant_3_2.bin"
M1L7_SpriteData_Quadrant_3_2End:
M1L7_SpriteData_Quadrant_3_4:
	db "SpriteData_Quadrant_3_4.bin"
M1L7_SpriteData_Quadrant_3_4End:
M1L7_SpriteData_Quadrant_3_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_6_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_6_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_3_6End:
M1L7_SpriteData_Quadrant_3_7:
	db "SpriteData_Quadrant_3_7.bin"
M1L7_SpriteData_Quadrant_3_7End:
M1L7_SpriteData_Quadrant_4_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_1_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_1End:
M1L7_SpriteData_Quadrant_4_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_4_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_4End:
M1L7_SpriteData_Quadrant_4_7:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_7_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_7_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_4_7End:
M1L7_SpriteData_Quadrant_5_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_1_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_1End:
M1L7_SpriteData_Quadrant_5_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_2_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_2End:
M1L7_SpriteData_Quadrant_5_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_3End:
M1L7_SpriteData_Quadrant_5_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_4_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_4End:
M1L7_SpriteData_Quadrant_5_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_5_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_5End:
M1L7_SpriteData_Quadrant_5_6:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_6_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_6_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_6End:
M1L7_SpriteData_Quadrant_5_7:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_5_7_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_5_7_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_5_7End:
M1L7_SpriteData_Quadrant_6_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_6_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_6_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_6_3End:
M1L7_SpriteData_Quadrant_3_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_3_3End:
M1L7_SpriteData_Quadrant_6_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_6_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_6_5_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_6_5End:
M1L7_SpriteData_Quadrant_7_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_7_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_7_1_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_7_1End:
M1L7_SpriteData_Quadrant_7_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_7_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_7_2_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_7_2End:
M1L7_SpriteData_Quadrant_7_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_7_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_7_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_7_3End:
M1L7_SpriteData_Quadrant_7_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_7_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_7_4_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_7_4End:
M1L7_SpriteData_Quadrant_1_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_1_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_1_2_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_1_2End:
M1L7_SpriteData_Quadrant_1_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_1_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_1_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_1_3End:
M1L7_SpriteData_Quadrant_1_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_1_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_1_4_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_1_4End:
M1L7_SpriteData_Quadrant_1_5:
	db "SpriteData_Quadrant_1_5.bin"
M1L7_SpriteData_Quadrant_1_5End:
M1L7_SpriteData_Quadrant_2_1:
	db "SpriteData_Quadrant_2_1.bin"
M1L7_SpriteData_Quadrant_2_1End:
M1L7_SpriteData_Quadrant_2_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_2End:
M1L7_SpriteData_Quadrant_2_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_3_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_3End:
M1L7_SpriteData_Quadrant_2_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_4_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_4End:
M1L7_SpriteData_Quadrant_2_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_5_BSZ1_OM1W2.bin"
endif
M1L7_SpriteData_Quadrant_2_5End:

;--------------------------------------------------------------------

M1L8_SpriteData_Quadrant_1_3:
	db "SpriteData_Quadrant_1_3.bin"
M1L8_SpriteData_Quadrant_1_3End:
M1L8_SpriteData_Quadrant_1_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_1_4_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_1_4_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_1_4End:
M1L8_SpriteData_Quadrant_2_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_2_2_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_2_2End:
M1L8_SpriteData_Quadrant_2_3:
	db "SpriteData_Quadrant_2_3.bin"
M1L8_SpriteData_Quadrant_2_3End:
M1L8_SpriteData_Quadrant_2_4:
	db "SpriteData_Quadrant_2_4.bin"
M1L8_SpriteData_Quadrant_2_4End:
M1L8_SpriteData_Quadrant_3_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_3_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_3_2_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_3_2End:
M1L8_SpriteData_Quadrant_3_3:
	db "SpriteData_Quadrant_3_3.bin"
M1L8_SpriteData_Quadrant_3_3End:
M1L8_SpriteData_Quadrant_3_4:
	db "SpriteData_Quadrant_3_4.bin"
M1L8_SpriteData_Quadrant_3_4End:
M1L8_SpriteData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_4_2End:
M1L8_SpriteData_Quadrant_4_3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_4_3_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_4_3End:
M1L8_SpriteData_Quadrant_4_4:
	db "SpriteData_Quadrant_4_4.bin"
M1L8_SpriteData_Quadrant_4_4End:
M1L8_SpriteData_Quadrant_5_2:
	db "SpriteData_Quadrant_5_2.bin"
M1L8_SpriteData_Quadrant_5_2End:
M1L8_SpriteData_Quadrant_5_3:
	db "SpriteData_Quadrant_5_3.bin"
M1L8_SpriteData_Quadrant_5_3End:
M1L8_SpriteData_Quadrant_5_4:
	db "SpriteData_Quadrant_5_4.bin"
M1L8_SpriteData_Quadrant_5_4End:
M1L8_SpriteData_Quadrant_6_1:
	db "SpriteData_Quadrant_6_1.bin"
M1L8_SpriteData_Quadrant_6_1End:
M1L8_SpriteData_Quadrant_6_2:
	db "SpriteData_Quadrant_6_2.bin"
M1L8_SpriteData_Quadrant_6_2End:
M1L8_SpriteData_Quadrant_6_3:
	db "SpriteData_Quadrant_6_3.bin"
M1L8_SpriteData_Quadrant_6_3End:
M1L8_SpriteData_Quadrant_6_4:
	db "SpriteData_Quadrant_6_4.bin"
M1L8_SpriteData_Quadrant_6_4End:
M1L8_SpriteData_Quadrant_6_5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_6_5_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_6_5_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_6_5End:
M1L8_SpriteData_Quadrant_7_2:
	db "SpriteData_Quadrant_7_2.bin"
M1L8_SpriteData_Quadrant_7_2End:
M1L8_SpriteData_Quadrant_7_3:
	db "SpriteData_Quadrant_7_3.bin"
M1L8_SpriteData_Quadrant_7_3End:
M1L8_SpriteData_Quadrant_7_4:
	db "SpriteData_Quadrant_7_4.bin"
M1L8_SpriteData_Quadrant_7_4End:
M1L8_SpriteData_Quadrant_8_3:
	db "SpriteData_Quadrant_8_3.bin"
M1L8_SpriteData_Quadrant_8_3End:
M1L8_SpriteData_Quadrant_9_1:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_9_1_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_9_1_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_9_1End:
M1L8_SpriteData_Quadrant_9_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData_Quadrant_9_2_BSZ1_OM1W3.bin"
else
	db "SpriteData_Quadrant_9_2_BSZ1_OM1W2.bin"
endif
M1L8_SpriteData_Quadrant_9_2End:
M1L8_TileData_Quadrant_1_2:
	db "TileData_Quadrant_1_2.bin"
M1L8_TileData_Quadrant_1_2End:
M1L8_TileData_Quadrant_1_3:
	db "TileData_Quadrant_1_3.bin"
M1L8_TileData_Quadrant_1_3End:
M1L8_TileData_Quadrant_1_4:
	db "TileData_Quadrant_1_4.bin"
M1L8_TileData_Quadrant_1_4End:
M1L8_TileData_Quadrant_2_2:
	db "TileData_Quadrant_2_2.bin"
M1L8_TileData_Quadrant_2_2End:
M1L8_TileData_Quadrant_2_3:
	db "TileData_Quadrant_2_3.bin"
M1L8_TileData_Quadrant_2_3End:
M1L8_TileData_Quadrant_2_4:
	db "TileData_Quadrant_2_4.bin"
M1L8_TileData_Quadrant_2_4End:
M1L8_TileData_Quadrant_3_2:
	db "TileData_Quadrant_3_2.bin"
M1L8_TileData_Quadrant_3_2End:
M1L8_TileData_Quadrant_3_3:
	db "TileData_Quadrant_3_3.bin"
M1L8_TileData_Quadrant_3_3End:
M1L8_TileData_Quadrant_3_4:
	db "TileData_Quadrant_3_4.bin"
M1L8_TileData_Quadrant_3_4End:
M1L8_TileData_Quadrant_4_2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_4_2_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_4_2_BSZ1_OM1W2.bin"
endif
M1L8_TileData_Quadrant_4_2End:
M1L8_TileData_Quadrant_4_3:
	db "TileData_Quadrant_4_3.bin"
M1L8_TileData_Quadrant_4_3End:
M1L8_TileData_Quadrant_4_4:
	db "TileData_Quadrant_4_4.bin"
M1L8_TileData_Quadrant_4_4End:
M1L8_TileData_Quadrant_5_2:
	db "TileData_Quadrant_5_2.bin"
M1L8_TileData_Quadrant_5_2End:
M1L8_TileData_Quadrant_5_3:
	db "TileData_Quadrant_5_3.bin"
M1L8_TileData_Quadrant_5_3End:
M1L8_TileData_Quadrant_5_4:
	db "TileData_Quadrant_5_4.bin"
M1L8_TileData_Quadrant_5_4End:
M1L8_TileData_Quadrant_6_1:
	db "TileData_Quadrant_6_1.bin"
M1L8_TileData_Quadrant_6_1End:
M1L8_TileData_Quadrant_6_2:
	db "TileData_Quadrant_6_2.bin"
M1L8_TileData_Quadrant_6_2End:
M1L8_TileData_Quadrant_6_3:
	db "TileData_Quadrant_6_3.bin"
M1L8_TileData_Quadrant_6_3End:
M1L8_TileData_Quadrant_6_4:
	db "TileData_Quadrant_6_4.bin"
M1L8_TileData_Quadrant_6_4End:
M1L8_TileData_Quadrant_6_5:
	db "TileData_Quadrant_6_5.bin"
M1L8_TileData_Quadrant_6_5End:
M1L8_TileData_Quadrant_7_2:
	db "TileData_Quadrant_7_2.bin"
M1L8_TileData_Quadrant_7_2End:
M1L8_TileData_Quadrant_7_3:
	db "TileData_Quadrant_7_3.bin"
M1L8_TileData_Quadrant_7_3End:
M1L8_TileData_Quadrant_7_4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData_Quadrant_7_4_BSZ1_OM1W3.bin"
else
	db "TileData_Quadrant_7_4_BSZ1_OM1W2.bin"
endif
M1L8_TileData_Quadrant_7_4End:
M1L8_TileData_Quadrant_8_3:
	db "TileData_Quadrant_8_3.bin"
M1L8_TileData_Quadrant_8_3End:

;--------------------------------------------------------------------

if !ROMVer&(!BSZ1_OM1W3) != $00
M1U_TileData8:
	db "TileData8_BSZ1_OM1W3.bin"
M1U_TileData8End:
M1U_SpriteData10:
	db "SpriteData10_BSZ1_OM1W3.bin"
M1U_SpriteData10End:
endif
M1U_TileData1:
	db "TileData1.bin"
M1U_TileData1End:
M1U_SpriteData1:
	db "SpriteData1.bin"
M1U_SpriteData1End:
M1U_TileData2:
	db "TileData2.bin"
M1U_TileData2End:
M1U_TileData3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData3_BSZ1_OM1W3.bin"
else
	db "TileData3_BSZ1_OM1W2.bin"
endif
M1U_TileData3End:
M1U_TileData4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData4_BSZ1_OM1W3.bin"
else
	db "TileData4_BSZ1_OM1W2.bin"
endif
M1U_TileData4End:
M1U_TileData5:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "TileData5_BSZ1_OM1W3.bin"
else
	db "TileData5_BSZ1_OM1W2.bin"
endif
M1U_TileData5End:
M1U_SpriteData2:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData2_BSZ1_OM1W3.bin"
else
	db "SpriteData2_BSZ1_OM1W2.bin"
endif
M1U_SpriteData2End:
M1U_SpriteData3:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData3_BSZ1_OM1W3.bin"
else
	db "SpriteData3_BSZ1_OM1W2.bin"
endif
M1U_SpriteData3End:
M1U_SpriteData4:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "SpriteData4_BSZ1_OM1W3.bin"
else
	db "SpriteData4_BSZ1_OM1W2.bin"
endif
M1U_SpriteData4End:
M1U_SpriteData5:
	db "SpriteData5.bin"
M1U_SpriteData5End:
M1U_SpriteData6:
	db "SpriteData6.bin"
M1U_SpriteData6End:
M1U_SpriteData7:
	db "SpriteData7.bin"
M1U_SpriteData7End:
M1U_SpriteData8:
	db "SpriteData8.bin"
M1U_SpriteData8End:
M1U_SpriteData9:
	db "SpriteData9.bin"
M1U_SpriteData9End:
M1U_TileData6:
	db "TileData6.bin"
M1U_TileData6End:
M1U_TileData7:
	db "TileData7.bin"
M1U_TileData7End:

;--------------------------------------------------------------------

DATA_C28000:
	db "DATA_C28000.bin"
DATA_C28000End:
DATA_C7E000:
	db "DATA_C7E000.bin"
DATA_C7E000End:
DATA_C7E800:
	db "DATA_C7E800.bin"
DATA_C7E800End:
DATA_C7F000:
	db "DATA_C7F000.bin"
DATA_C7F000End:

;--------------------------------------------------------------------

DATA_C0BD00:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C0BD00_BSZ1_OM1W3.bin"
else
	db "DATA_C0BD00_BSZ1_OM1W2.bin"
endif
DATA_C0BD00End:
DATA_C0C685:
	db "DATA_C0C685.bin"
DATA_C0C685End:
DATA_C0DC80:
	db "DATA_C0DC80.bin"
DATA_C0DC80End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_C0E900:
	db "DATA_C0E900_BSZ1_OM1W3.bin"
DATA_C0E900End:
else
DATA_C0E1E1:
	db "DATA_C0E1E1.bin"
DATA_C0E1E1End:
endif
DATA_C1A000:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C1A000_BSZ1_OM1W3.bin"
else
	db "DATA_C1A000_BSZ1_OM1W2.bin"
endif
DATA_C1A000End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_C1E800:
	db "DATA_C1E800_BSZ1_OM1W3.bin"
DATA_C1E800End:
else
DATA_C1D400:
	db "DATA_C1D400.bin"
DATA_C1D400End:
endif
DATA_C27B06:
	db "DATA_C27B06.bin"
DATA_C27B06End:
DATA_C2FC08:
	db "DATA_C2FC08.bin"
DATA_C2FC08End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_C3F800:
	db "DATA_C3F800_BSZ1_OM1W3.bin"
DATA_C3F800End:
endif
DATA_C4022C:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C4022C_BSZ1_OM1W3.bin"
else
	db "DATA_C4022C_BSZ1_OM1W2.bin"
endif
DATA_C4022CEnd:
DATA_C42456:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C42456_BSZ1_OM1W3.bin"
else
	db "DATA_C42456_BSZ1_OM1W2.bin"
endif
DATA_C42456End:
DATA_C42A56:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C42A56_BSZ1_OM1W3.bin"
else
	db "DATA_C42A56_BSZ1_OM1W2.bin"
endif
DATA_C42A56End:
DATA_C42C56:
	db "DATA_C42C56.bin"
DATA_C42C56End:
DATA_C43456:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C43456_BSZ1_OM1W3.bin"
else
	db "DATA_C43456_BSZ1_OM1W2.bin"
endif
DATA_C43456End:
DATA_C43856:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C43856_BSZ1_OM1W3.bin"
else
	db "DATA_C43856_BSZ1_OM1W2.bin"
endif
DATA_C43856End:
DATA_C43A56:
	db "DATA_C43A56.bin"
DATA_C43A56End:
DATA_C43C56:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C43C56_BSZ1_OM1W3.bin"
else
	db "DATA_C43C56_BSZ1_OM1W2.bin"
endif
DATA_C43C56End:
DATA_C43E56:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C43E56_BSZ1_OM1W3.bin"
else
	db "DATA_C43E56_BSZ1_OM1W2.bin"
endif
DATA_C43E56End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_C4EDA6:
	db "DATA_C4EDA6_BSZ1_OM1W3.bin"
DATA_C4EDA6End:
DATA_C5FBD2:
	db "DATA_C5FBD2_BSZ1_OM1W3.bin"
DATA_C5FBD2End:
DATA_C63800:
	db "DATA_C63800_BSZ1_OM1W3.bin"
DATA_C63800End:
else
DATA_C4E78E:
	db "DATA_C4E78E.bin"
DATA_C4E78EEnd:
DATA_C5FF39:
	db "DATA_C5FF39.bin"
DATA_C5FF39End:
DATA_C62000:
	db "DATA_C62000.bin"
DATA_C62000End:
endif
DATA_C6E800:
	db "DATA_C6E800.bin"
DATA_C6E800End:

DATA_C6F800:
	db "DATA_C6F800.bin"
DATA_C6F800End:
DATA_C7A000:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C7A000_BSZ1_OM1W3.bin"
else
	db "DATA_C7A000_BSZ1_OM1W2.bin"
endif
DATA_C7A000End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_C7DE00:
	db "DATA_C7DE00_BSZ1_OM1W3.bin"
DATA_C7DE00End:
else
DATA_C7DC00:
	db "DATA_C7DC00.bin"
DATA_C7DC00End:
endif
DATA_C8FB00:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C8FB00_BSZ1_OM1W3.bin"
else
	db "DATA_C8FB00_BSZ1_OM1W2.bin"
endif
DATA_C8FB00End:
DATA_C95D00:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C95D00_BSZ1_OM1W3.bin"
else
	db "DATA_C95D00_BSZ1_OM1W2.bin"
endif
DATA_C95D00End:
DATA_C9C400:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C9C400_BSZ1_OM1W3.bin"
else
	db "DATA_C9C400_BSZ1_OM1W2.bin"
endif
DATA_C9C400End:
DATA_CA6C00:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_CA6C00_BSZ1_OM1W3.bin"
else
	db "DATA_CA6C00_BSZ1_OM1W2.bin"
endif
DATA_CA6C00End:
if !ROMVer&(!BSZ1_OM1W3) != $00
DATA_CC8737:
	db "DATA_CC8737_BSZ1_OM1W3.bin"
DATA_CC8737End:
DATA_CEC7B7:
	db "DATA_CEC7B7_BSZ1_OM1W3.bin"
DATA_CEC7B7End:
else
DATA_CC73FC:
	db "DATA_CC73FC.bin"
DATA_CC73FCEnd:
DATA_CEC544:
	db "DATA_CEC544.bin"
DATA_CEC544End:
endif

;--------------------------------------------------------------------

DATA_C215E2:
	db "DATA_C215E2.bin"
DATA_C215E2End:
DATA_C21A52:
	db "DATA_C21A52.bin"
DATA_C21A52End:
DATA_C29000:
if !ROMVer&(!BSZ1_OM1W3) != $00
	db "DATA_C29000_BSZ1_OM1W3.bin"
else
	db "DATA_C29000_BSZ1_OM1W2.bin"
endif
DATA_C29000End:
DATA_C2AE00:
	db "DATA_C2AE00.bin"
DATA_C2AE00End:
DATA_C2D000:
	db "DATA_C2D000.bin"
DATA_C2D000End:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:

;--------------------------------------------------------------------
