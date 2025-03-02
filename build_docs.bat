$echo off

echo Starting build...

echo Activating virtual environment...
call "%~dp0venv\Scripts\activate.bat"

echo Running MkDocs deployment...
mkdocs build

pause
exit /b 0