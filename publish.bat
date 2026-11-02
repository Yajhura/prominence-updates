@echo off
setlocal
cd /d "%~dp0"
"C:\SERVERS\_tools\packwiz.exe" refresh
git add -A
git commit -m "chore: %~1"
git push
echo Published. Friends get the change next time they launch (GitHub Pages can take a minute).
echo If the mod also runs on the server, stop the server and run update-server.bat.
pause
