@echo off
if "%1" NEQ "" (
    set dir=%1
) ELSE (
set dir=D:\Software\phpstudy_pro\Extensions\php
)

set regedit=%dir%\regedit

if exist "%regedit%" (
    rd /s /Q %dir%\regedit
)
mkdir %regedit%
set "b=%%"
cd /d %dir%
for /d %%i in (*) do (
      echo %%i
      echo @echo off >> %regedit%\%%i.bat
      echo set PATH=%dir%\%%i;%b%PATH%b% >> %regedit%\%%i.bat
      echo PATH% >> %regedit%\%%i.bat
      echo PHP %%i >> %regedit%\%%i.bat
      echo cmd >> %regedit%\%%i.bat
)
del /s /q  %regedit%\regedit.*

:: set dirs=php7.2.9nts php7.3.4nts php7.4.3nts php-8.0.30 php8.2.8nts php8.2.9nts
:: set version=7.2.9 7.3.4 7.4.3 8.0.30 8.2.8 8.2.9


cmd