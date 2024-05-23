@echo off
REM Get the directory of the batch file
set BATCH_DIR=%~dp0

REM Navigate to the backend directory
cd "%BATCH_DIR%bistra-web-backend"
echo Pulling latest changes from the backend repository...
git pull origin develop

REM Check if there are any changes
IF %ERRORLEVEL% == 0 (
    REM Run backend specific commands
    echo Installing backend dependencies...
    composer install

    echo Running database migrations...
    php artisan migrate:refresh --seed

    echo linking images 
    php artisan storage:link 
) ELSE (
    echo No changes in backend.
)

echo Backend update complete!
pause
