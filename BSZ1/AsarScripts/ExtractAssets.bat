@echo off

set PATH="../../Global"
set Input1=
set ROMName=
set ROMName0=BSZ1_OM1W1.sfc
set ROMName1=BSZ1_OM1W2.sfc
set ROMName2=BSZ1_OM1W3.sfc
set ROMName3=BSZ1_OM1W4.sfc
set ROMName4=BSZ1_OM2W1.sfc
set ROMName5=BSZ1_OM2W2.sfc
set ROMName6=BSZ1_OM2W3.sfc
set ROMName7=BSZ1_OM2W4.sfc
set ROMName8=BSZ1_RM1W1.sfc
set ROMName9=BSZ1_RM1W2.sfc
set ROMName10=BSZ1_RM1W3.sfc
set ROMName11=BSZ1_RM1W4.sfc
set ROMName12=BSZ1_RM2W1.sfc
set ROMName13=BSZ1_RM2W2.sfc
set ROMName14=BSZ1_RM2W3.sfc
set ROMName15=BSZ1_RM2W4.sfc
set MemMap=hirom

setlocal EnableDelayedExpansion

echo To fully extract all files for supported ROMs, you'll need one of the following ROMs in each group:
echo - Graphics: Any
echo - Palettes: Any
echo - Map Data: Any
echo - Samples: Any
echo - Music: Any
echo.

:Start
echo Place a headerless BSZ1 ROM with one of the following names in this folder, then type the number representing what ROM to extract from.
echo 0 = "%ROMName1%" (BS Legend of Zelda, Map 1 Week 2)
echo 1 = "%ROMName2%" (BS Legend of Zelda, Map 1 Week 3)
echo 2 = "%ROMName4%" (BS Legend of Zelda, Map 2 Week 1)
echo 3 = "%ROMName11%" (BS Legend of Zelda, Map 1 Week 4 Rerun)

:Mode
set /p Input1=""

if "%Input1%" equ "0" goto :OM1W2
if "%Input1%" equ "1" goto :OM1W3
if "%Input1%" equ "2" goto :OM2W1
if "%Input1%" equ "3" goto :RM1W4

echo %Input1% is not a valid mode.
goto :Mode

:ROMNotFound
echo %ROMName% is not in the folder or is not named correctly^^!
goto :Mode

:OM1W1
set ROMName=%ROMName0%
if not exist %ROMName0% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0001
goto :BeginExtract

:OM1W2
set ROMName=%ROMName1%
if not exist %ROMName1% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0002
goto :BeginExtract

:OM1W3
set ROMName=%ROMName2%
if not exist %ROMName2% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0004
goto :BeginExtract

:OM1W4
set ROMName=%ROMName3%
if not exist %ROMName3% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0008
goto :BeginExtract

:OM2W1
set ROMName=%ROMName4%
if not exist %ROMName4% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0010
goto :BeginExtract

:OM2W2
set ROMName=%ROMName5%
if not exist %ROMName5% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0020
goto :BeginExtract

:OM2W3
set ROMName=%ROMName6%
if not exist %ROMName6% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0040
goto :BeginExtract

:OM2W4
set ROMName=%ROMName7%
if not exist %ROMName7% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0080
goto :BeginExtract

:RM1W1
set ROMName=%ROMName8%
if not exist %ROMName8% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0100
goto :BeginExtract

:RM1W2
set ROMName=%ROMName9%
if not exist %ROMName9% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0200
goto :BeginExtract

:RM1W3
set ROMName=%ROMName10%
if not exist %ROMName10% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0400
goto :BeginExtract

:RM1W4
set ROMName=%ROMName11%
if not exist %ROMName11% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map1/Overworld"
set CaveMapLoc="../MapData/Map1/Caves"
set Level1MapLoc="../MapData/Map1/Level1"
set Level2MapLoc="../MapData/Map1/Level2"
set Level3MapLoc="../MapData/Map1/Level3"
set Level4MapLoc="../MapData/Map1/Level4"
set Level5MapLoc="../MapData/Map1/Level5"
set Level6MapLoc="../MapData/Map1/Level6"
set Level7MapLoc="../MapData/Map1/Level7"
set Level8MapLoc="../MapData/Map1/Level8"
set UnknownMapLoc="../MapData/Map1/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$0800
goto :BeginExtract

:RM2W1
set ROMName=%ROMName12%
if not exist %ROMName12% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$1000
goto :BeginExtract

:RM2W2
set ROMName=%ROMName13%
if not exist %ROMName13% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$2000
goto :BeginExtract

:RM2W3
set ROMName=%ROMName14%
if not exist %ROMName14% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$4000
goto :BeginExtract

:RM2W4
set ROMName=%ROMName15%
if not exist %ROMName15% goto :ROMNotFound

set GFXLoc="../Graphics"
set PaletteLoc="../Palettes"
set Map16Loc="../Map16"
set OverworldMapLoc="../MapData/Map2/Overworld"
set CaveMapLoc="../MapData/Map2/Caves"
set Level1MapLoc="../MapData/Map2/Level1"
set Level2MapLoc="../MapData/Map2/Level2"
set Level3MapLoc="../MapData/Map2/Level3"
set Level4MapLoc="../MapData/Map2/Level4"
set Level5MapLoc="../MapData/Map2/Level5"
set Level6MapLoc="../MapData/Map2/Level6"
set Level7MapLoc="../MapData/Map2/Level7"
set Level8MapLoc="../MapData/Map2/Level8"
set UnknownMapLoc="../MapData/Map2/Unknown"
set UnsortedDataLoc="../UnsortedData"
set GarbageDataLoc="../GarbageData"
set SPCDataLoc="../SPC700"
set BRRLoc="../SPC700/Samples"
set ROMBit=$8000
goto :BeginExtract

:BeginExtract
set i=0
set PointerSet=0

echo Generating temporary ROM
asar --fix-checksum=off --no-title-check --define ROMVer="%ROMBit%" "AssetPointersAndFiles.asm" TEMP.sfc

CALL :GetLoopIndex
set MaxFileTypes=%Length%
set PointerSet=6

:GetNewLoopIndex
CALL :GetLoopIndex

:ExtractLoop
if %i% equ %Length% goto :NewFileType

CALL :GetGFXFileName
CALL :ExtractFile
set /a i = %i%+1
if exist TEMP1.asm del TEMP1.asm
if exist TEMP2.asm del TEMP2.asm
if exist TEMP3.txt del TEMP3.txt
goto :ExtractLoop

:NewFileType
echo Moving extracted files to appropriate locations
if %PointerSet% equ 6 goto :MoveGFX
if %PointerSet% equ 12 goto :MovePalette
if %PointerSet% equ 18 goto :MoveMap16
if %PointerSet% equ 24 goto :MoveOverworldMap
if %PointerSet% equ 30 goto :MoveCaveMap
if %PointerSet% equ 36 goto :MoveLevel1Map
if %PointerSet% equ 42 goto :MoveLevel2Map
if %PointerSet% equ 48 goto :MoveLevel3Map
if %PointerSet% equ 54 goto :MoveLevel4Map
if %PointerSet% equ 60 goto :MoveLevel5Map
if %PointerSet% equ 66 goto :MoveLevel6Map
if %PointerSet% equ 72 goto :MoveLevel7Map
if %PointerSet% equ 78 goto :MoveLevel8Map
if %PointerSet% equ 84 goto :MoveUnknownMap
if %PointerSet% equ 90 goto :MoveUnsortedData
if %PointerSet% equ 96 goto :MoveGarbageData
if %PointerSet% equ 102 goto :MoveSPCData
if %PointerSet% equ 108 goto :MoveBRR
goto :MoveNothing

:MoveGFX
move "*.bin" %GFXLoc%
goto :MoveNothing

:MovePalette
move "*.bin" %PaletteLoc%
goto :MoveNothing

:MoveMap16
move "*.bin" %Map16Loc%
goto :MoveNothing

:MoveOverworldMap
move "*.bin" %OverworldMapLoc%
goto :MoveNothing

:MoveCaveMap
move "*.bin" %CaveMapLoc%
goto :MoveNothing

:MoveLevel1Map
move "*.bin" %Level1MapLoc%
goto :MoveNothing

:MoveLevel2Map
move "*.bin" %Level2MapLoc%
goto :MoveNothing

:MoveLevel3Map
move "*.bin" %Level3MapLoc%
goto :MoveNothing

:MoveLevel4Map
move "*.bin" %Level4MapLoc%
goto :MoveNothing

:MoveLevel5Map
move "*.bin" %Level5MapLoc%
goto :MoveNothing

:MoveLevel6Map
move "*.bin" %Level6MapLoc%
goto :MoveNothing

:MoveLevel7Map
move "*.bin" %Level7MapLoc%
goto :MoveNothing

:MoveLevel8Map
move "*.bin" %Level8MapLoc%
goto :MoveNothing

:MoveUnknownMap
move "*.bin" %UnknownMapLoc%
goto :MoveNothing

:MoveUnsortedData
move "*.bin" %UnsortedDataLoc%
goto :MoveNothing

:MoveGarbageData
move "*.bin" %GarbageDataLoc%
goto :MoveNothing

:MoveSPCData
move "*.bin" %SPCDataLoc%
goto :MoveNothing

:MoveBRR
move "*.brr" %BRRLoc%
goto :MoveNothing

:MoveNothing
set i=0
set /a PointerSet = %PointerSet%+6
if %PointerSet% neq %MaxFileTypes% goto :GetNewLoopIndex
if exist TEMP.sfc del TEMP.sfc

echo Done^^!
goto :Start

EXIT /B %ERRORLEVEL% 

:ExtractFile
echo:%MemMap% >> TEMP1.asm
echo:org $C00000 >> TEMP1.asm
echo:check bankcross off >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$00+(%i%*$0C)))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:incbin %ROMName%:(^^!OffsetStart)-(^^!OffsetEnd) >> TEMP1.asm

echo Extracting %FileName%
asar --fix-checksum=off --no-title-check "TEMP1.asm" %FileName%
EXIT /B 0

:GetGFXFileName
echo:%MemMap% >> TEMP2.asm
echo:org $C00000 >> TEMP2.asm
echo:^^!FileNameStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$06+(%i%*$0C)))) >> TEMP2.asm
echo:^^!FileNameEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$09+(%i%*$0C)))) >> TEMP2.asm
echo:incbin TEMP.sfc:(^^!FileNameStart)-(^^!FileNameEnd) >> TEMP2.asm
asar --fix-checksum=off --no-title-check "TEMP2.asm" TEMP3.txt

for /f "delims=" %%x in (TEMP3.txt) do set FileName=%%x

EXIT /B 0

:GetLoopIndex
echo:%MemMap% >> TEMP4.asm
echo:org $C00000 >> TEMP4.asm
echo:^^!OnesDigit = 0 >> TEMP4.asm
echo:^^!TensDigit = 0 >> TEMP4.asm
echo:^^!HundredsDigit = 0 >> TEMP4.asm
echo:^^!ThousandsDigit = 0 >> TEMP4.asm
echo:^^!TensDigitSet = 0 >> TEMP4.asm
echo:^^!HundredsDigitSet = 0 >> TEMP4.asm
echo:^^!ThousandsDigitSet = 0 >> TEMP4.asm
echo:^^!Offset #= readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%+$03)) >> TEMP4.asm
echo:while ^^!Offset ^> 0 >> TEMP4.asm
::echo:print hex(^^!Offset) >> TEMP4.asm
echo:^^!OnesDigit #= ^^!OnesDigit+1 >> TEMP4.asm
echo:if ^^!OnesDigit == 10 >> TEMP4.asm
echo:^^!OnesDigit #= 0 >> TEMP4.asm
echo:^^!TensDigit #= ^^!TensDigit+1 >> TEMP4.asm
echo:^^!TensDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigit == 10 >> TEMP4.asm
echo:^^!TensDigit #= 0 >> TEMP4.asm
echo:^^!HundredsDigit #= ^^!HundredsDigit+1 >> TEMP4.asm
echo:^^!HundredsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigit == 10 >> TEMP4.asm
echo:^^!HundredsDigit #= 0 >> TEMP4.asm
echo:^^!ThousandsDigit #= ^^!ThousandsDigit+1 >> TEMP4.asm
echo:^^!ThousandsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:^^!Offset #= ^^!Offset-1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!ThousandsDigitSet == 1 >> TEMP4.asm
echo:db ^^!ThousandsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigitSet == 1 >> TEMP4.asm
echo:db ^^!HundredsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigitSet == 1 >> TEMP4.asm
echo:db ^^!TensDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:db ^^!OnesDigit+$30 >> TEMP4.asm
asar --fix-checksum=off --no-title-check "TEMP4.asm" TEMP5.txt

for /f "delims=" %%x in (TEMP5.txt) do set Length=%%x

if exist TEMP4.asm del TEMP4.asm
if exist TEMP5.txt del TEMP5.txt

EXIT /B 0
