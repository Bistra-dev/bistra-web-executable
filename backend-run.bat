REM Navigate to the backend directory
cd "%BATCH_DIR%bistra-web-backend"
REM Start the backend server
echo Starting the backend server...
php -S 0.0.0.0:8000 -t public

