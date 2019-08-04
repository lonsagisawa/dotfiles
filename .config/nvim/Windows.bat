@echo off

set SRC="C:\Users\lon\Project\dotfiles\.config\nvim"
set DIST="%UserProfile%\AppData\Local\nvim"

echo Link nvim config
echo ################
echo.

cd /d %~dp0

mklink %DIST%\init.vim %SRC%\init.vim
mklink %DIST%\ginit.vim %SRC%\ginit.vim 

echo nvim settings has been copied.
echo Don't forget to install dein.vim.
echo #################################
echo.
pause
