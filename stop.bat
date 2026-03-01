@echo off
title SvenWebsite - Stop
echo.
echo ============================================
echo   SvenWebsite - Stoppe Container
echo ============================================
echo.

docker-compose down
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Konnte Container nicht stoppen!
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   Container gestoppt.
echo ============================================
echo.
pause
