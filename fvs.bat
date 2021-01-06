@echo off & setlocal enabledelayedexpansion
SET BE=--------------------------------------------------
SET BF=**************************************************
set /a CC=0
:LP
cls
set /A CC+=1
SET "PB=!BF:~0,%CC%!!BE:~%CC%,50!"
SET /A TP=%CC%*2
echo ####################################################################
echo # Downloading the virus databasis                                  #
echo #                                                                  #
echo # Download Jiangmin                                                #
echo #                                                                  #
echo #                                                                  #
echo # Loading...                                                       #
echo # ---------------------------------------------------------------- #
echo # Progress:%PB% %TP%%%   #
echo # ---------------------------------------------------------------- #
echo ####################################################################
timeout 1 >nul
if %CC% NEQ 50 goto :LP