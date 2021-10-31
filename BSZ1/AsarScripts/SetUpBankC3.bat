@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe --fix-checksum=off --no-title-check SetUpBankC3.asm bs_zelda2_M1_W2.bs > output1.asm

pause
asar.exe --fix-checksum=off --no-title-check output1.asm bs_zelda2_M1_W2.bs > output2.asm

pause
exit