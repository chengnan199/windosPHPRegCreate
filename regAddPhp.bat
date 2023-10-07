
::REG ADD HKEY_CLASSES_ROOT\directory\background\shell\php\shell\php7.2.1\command
::pause>nul

@echo off
set dir=D:\Software\phpstudy_pro\Extensions\php
set regedit=%dir%\regedit

cd /d %regedit%
::REG DELETE  HKEY_CLASSES_ROOT\directory\background\shell\php\shell\php7.2.1 /f 2>nul
::pause
set lastPart=""
set return=""
setlocal enabledelayedexpansion
for /r %%i in (*) do (
echo %%i
      rem 获取最后一层目录名
       for /f "tokens=* delims=\" %%a in ("%%i") do (
         set "lastPart=%%~nxa"
       )
       set a=!lastPart!
       echo %a%\
   REG ADD  HKEY_CLASSES_ROOT\directory\background\shell\php\shell\%a%\command /d "D:\Software\phpstudy_pro\Extensions\php\regedit\7.2.9.bat %V" /f
)
pause


