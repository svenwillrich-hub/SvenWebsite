@echo off
title SvenWebsite - Lokal
echo.
echo ============================================
echo   SvenWebsite - Lokale Entwicklung
echo ============================================
echo.

echo Starte Docker-Compose (Container wird neu gebaut falls noetig)...
echo.
docker-compose up -d
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Docker-Compose konnte nicht gestartet werden!
    echo Ist Docker Desktop gestartet?
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   Laeuft! -> http://localhost:8080
echo ============================================
echo.
echo Zeige Logs (Strg+C zum Beenden der Logs):
echo.
docker-compose logs -f
