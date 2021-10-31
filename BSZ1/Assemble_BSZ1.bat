@echo off

set PATH="../Global"
set Input1=
set asarVer=asar
set GAMDID="BSZ1"
set ROMVer=
set ROMExt=.bs
set HackCheck=""
set HackName=""

setlocal EnableDelayedExpansion

echo Enter the ROM version you want to assemble.
echo Valid options: "BSZ1_OM1W2" "BSZ1_OM1W3" "BSZ1_OM2W1" "BSZ1_RM1W4"
echo For custom ROM versions, use "HACK_<HackName>, where <HackName> is the rest of the custom ROM Map file's name before the extension."

:Input
set /p Input1="%Input1%"
set HackCheck=%Input1:~0,5%
if "%Input1%" equ "" goto :Exit
if "%HackCheck%" equ "HACK_" goto :Hack
::if "%Input1%" equ "BSZ1_OM1W1" goto :OM1W1
if "%Input1%" equ "BSZ1_OM1W2" goto :OM1W2
if "%Input1%" equ "BSZ1_OM1W3" goto :OM1W3
::if "%Input1%" equ "BSZ1_OM1W4" goto :OM1W4
if "%Input1%" equ "BSZ1_OM2W1" goto :OM2W1
::if "%Input1%" equ "BSZ1_OM2W2" goto :OM2W2
::if "%Input1%" equ "BSZ1_OM2W3" goto :OM2W3
::if "%Input1%" equ "BSZ1_OM2W4" goto :OM2W4
::if "%Input1%" equ "BSZ1_RM1W1" goto :RM1W1
::if "%Input1%" equ "BSZ1_RM1W2" goto :RM1W2
::if "%Input1%" equ "BSZ1_RM1W3" goto :RM1W3
if "%Input1%" equ "BSZ1_RM1W4" goto :RM1W4
::if "%Input1%" equ "BSZ1_RM2W1" goto :RM2W1
::if "%Input1%" equ "BSZ1_RM2W2" goto :RM2W2
::if "%Input1%" equ "BSZ1_RM2W3" goto :RM2W3
::if "%Input1%" equ "BSZ1_RM2W4" goto :RM2W4

echo. "%Input1%" is not a valid ROM version.
set Input1=
goto :Input

:Hack
set ROMNAME=%Input1:~5,100%
set ROMVer=(Hack)
goto :Assemble

:OM1W1
set ROMVer=(Map 1 Week 1)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM1W2
set ROMVer=(Map 1 Week 2)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM1W3
set ROMVer=(Map 1 Week 3)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM1W4
set ROMVer=(Map 1 Week 4)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM2W1
set ROMVer=(Map 2 Week 1)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM2W2
set ROMVer=(Map 2 Week 2)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM2W3
set ROMVer=(Map 2 Week 3)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:OM2W4
set ROMVer=(Map 2 Week 4)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM1W1
set ROMVer=(Map 1 Week 1 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM1W2
set ROMVer=(Map 1 Week 2 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM1W3
set ROMVer=(Map 1 Week 3 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM1W4
set ROMVer=(Map 1 Week 4 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM2W1
set ROMVer=(Map 2 Week 1 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM2W2
set ROMVer=(Map 2 Week 2 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM2W3
set ROMVer=(Map 2 Week 3 Rerun)
set ROMNAME=BS Zelda no Densetsu
goto :Assemble

:RM2W4
set ROMVer=(Map 2 Week 4 Rerun)
set ROMNAME=BS Zelda no Densetsu

:Assemble

set output="%ROMNAME% %ROMVer%%ROMExt%"

if exist %output% del %output%
echo Assembling "%ROMNAME% %ROMVer%%ROMExt%" ... this may take a minute.
echo.

%asarVer% --fix-checksum=on --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=0 ..\Global\AssembleFile.asm %output%

echo Assembling %ROMNAME% SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/SPC700_Engine_%GAMDID%.asm" ..\Global\AssembleFile.asm SPC700\SPC700_Engine_%GAMDID%.bin

echo Assembling ROM...
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=1 ..\Global\AssembleFile.asm %output%

if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=6 ..\Global\AssembleFile.asm Temp.txt
for /f "delims=" %%x in (Temp.txt) do set Firmware=%%x
if "%Firmware%" equ "NULL" goto :NoFirmware
if exist %Firmware% goto :NoFirmware
if exist ..\Firmware\%Firmware% goto :CopyFirmware
goto :NoFirmware

:CopyFirmware
echo Copied %Firmware% to the disassembly folder
copy ..\Firmware\%Firmware% %Firmware%
:NoFirmware
if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt

%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=2 ..\Global\AssembleFile.asm %output%

%asarVer% --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=3 ..\Global\AssembleFile.asm %output%

echo Cleaning up...
if exist ..\%GAMDID%\SPC700\SPC700_Engine_%GAMDID%.bin del ..\%GAMDID%\SPC700\SPC700_Engine_%GAMDID%.bin

echo.
echo Done^^!
echo.
echo Press Enter to re-assemble the chosen ROM.
goto :Input

:Exit
exit
