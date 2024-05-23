@echo off
REM Get the directory of the batch file
set BATCH_DIR=%~dp0

REM Navigate to the frontend directory
cd "%BATCH_DIR%bistra-web-frontend"
echo Pulling latest changes from the frontend repository...
git pull origin develop

REM Check if there are any changes
IF %ERRORLEVEL% == 0 (
    REM Run frontend specific commands
    echo Installing frontend dependencies...
    npm install
) ELSE (
    echo No changes in frontend.
)

echo Frontend update complete!
pause
