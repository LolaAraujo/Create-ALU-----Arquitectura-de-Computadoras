@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Feb 21 09:03:00 -0600 2023
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 3eb97e9f70214a44aa26947979f9a2b7 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FullAdder_D16_behav xil_defaultlib.FullAdder_D16 -log elaborate.log"
call xelab  -wto 3eb97e9f70214a44aa26947979f9a2b7 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FullAdder_D16_behav xil_defaultlib.FullAdder_D16 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0