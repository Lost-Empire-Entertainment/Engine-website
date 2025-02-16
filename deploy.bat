@echo off

set "rootDir=%~dp0"
cd /d "%rootDir%"

powershell -ExecutionPolicy Bypass -File deploy.ps1

echo.
echo Deployment complete! Press any key to exit...
pause
exit /b 0