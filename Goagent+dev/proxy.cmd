@echo off
:: #!C:\Windows\System32\Cmd.exe
:: coding:cp936
:: GoAgent APPID list generator
:: by ehs2013 <xiaodong.que+gaegen@gmail.com>
:: Thanks to the GoAgent Project
setlocal enabledelayedexpansion
for /f "tokens=1-2 delims=:" %%i in ('findstr /n ".*" lovejiani.bak') do set _%%i=%%j
:: ���� appid ����
set line=1056
:: proxy.ini ���� appid ����
set num=64
set i=0
echo �������ɴ�������
:main
set /a rani=%random%%%%line%+1
set /p=!_%rani%!^|<nul>>tmp2
set /a i+=1
if %i% equ %num% goto gen
goto main
:gen
copy /b ini1+tmp4+tmp2+ini2 proxy.ini >nul 2>nul
if "%personalid%" == "none" copy /b ini1+tmp2+ini2 proxy.ini >nul 2>nul
del tmp2 /f /s /q>nul 2>nul
del tmp4 /f /s /q>nul 2>nul
echo ����������
python27.exe proxy.py
pause