@echo off

set SRC="."
set DIST="%UserProfile%\AppData\Local\nvim"

echo Link nvim config
echo ################
echo.

cd /d %~dp0

copy /Y %SRC%\init.vim %DIST%\init.vim  > nul 2>&1
copy /Y %SRC%\ginit.vim %DIST%\ginit.vim > nul 2>&1

echo nvim settings has been copied.
echo Don't forget to install dein,vim.
echo #################################
echo.
pause
