@echo off

set "rootDir=%~dp0"
cd /d "%rootDir%"

powershell -ExecutionPolicy Bypass -File deploy.ps1

pause
exit /b 0