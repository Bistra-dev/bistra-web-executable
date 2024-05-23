@echo off

REM Set the directory where you want to clone the repositories (same directory as the batch file)
set "CLONE_DIR=%~dp0"

REM Clone the backend repository
echo Cloning the backend repository...
git clone https://bistradev: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@github.com/Bistra-dev/bistra-web-backend.git "%CLONE_DIR%\bistra-web-backend"

REM Clone the frontend repository
echo Cloning the frontend repository...
git clone https://bistradev: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@github.com/Bistra-dev/bistra-web-frontend.git "%CLONE_DIR%\bistra-web-frontend"

echo Cloning complete!
pause
