@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Apr 24 10:01:00 -0600 2023
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto af347546e64c4e0299d1f9d87f2efb47 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot regB_behav xil_defaultlib.regB -log elaborate.log"
call xelab  -wto af347546e64c4e0299d1f9d87f2efb47 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot regB_behav xil_defaultlib.regB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
