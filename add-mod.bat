@echo off
setlocal
cd /d "%~dp0"
set "PACKWIZ=C:\SERVERS\_tools\packwiz.exe"
set /p "MOD=Modrinth or CurseForge URL: "
echo %MOD% | find /i "curseforge" >nul
if errorlevel 1 (
  "%PACKWIZ%" modrinth add "%MOD%" -y
) else (
  "%PACKWIZ%" curseforge add "%MOD%" -y
)
if errorlevel 1 ( echo Could not add the mod. Nothing was published. & pause & exit /b 1 )
call "%~dp0publish.bat" "add %MOD%"
