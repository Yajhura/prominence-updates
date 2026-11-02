@echo off
setlocal
cd /d "%~dp0"
set "PACKWIZ=C:\SERVERS\_tools\packwiz.exe"
"%PACKWIZ%" list
set /p "MOD=Name to remove (without .pw.toml): "
"%PACKWIZ%" remove "%MOD%"
if errorlevel 1 ( echo Could not remove the mod. Nothing was published. & pause & exit /b 1 )
call "%~dp0publish.bat" "remove %MOD%"
