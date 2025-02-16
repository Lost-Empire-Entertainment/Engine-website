@echo off
cd /d %~dp0 ::Ensure we are in the project directory
powershell -ExecutionPolicy Bypass -File deploy.ps1

pause
exit /b 0