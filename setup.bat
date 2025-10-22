@echo off
REM ACAJOU GAMES - Quick Setup Script for Windows
REM This script helps you configure your deployment

echo.
echo ========================================
echo    ACAJOU GAMES - Setup Assistant
echo ========================================
echo.

:MENU
echo Please choose an option:
echo.
echo [1] Setup Google Analytics
echo [2] Prepare for Mobile App Build
echo [3] Create Deployment Package
echo [4] View Deployment Guide
echo [5] Exit
echo.

set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto ANALYTICS
if "%choice%"=="2" goto MOBILE
if "%choice%"=="3" goto PACKAGE
if "%choice%"=="4" goto GUIDE
if "%choice%"=="5" goto END
goto MENU

:ANALYTICS
echo.
echo === Google Analytics Setup ===
echo.
set /p GA_ID="Enter your GA Measurement ID (e.g., G-XXXXXXXXXX): "
if "%GA_ID%"=="" (
    echo Error: No ID provided
    goto MENU
)
echo.
echo Your Google Analytics ID: %GA_ID%
echo.
echo IMPORTANT: You need to manually update the following files:
echo - index.html (line 18)
echo - Each game HTML file (add analytics code in head section)
echo.
echo See DEPLOYMENT_GUIDE.md for detailed instructions
echo.
pause
goto MENU

:MOBILE
echo.
echo === Mobile App Preparation ===
echo.
echo Creating www directory for Capacitor...
if not exist "www" mkdir www
echo.
echo Copying files to www directory...
copy *.html www\ >nul 2>&1
copy manifest.json www\ >nul 2>&1
echo.
echo Files copied! Next steps:
echo 1. Install Node.js from nodejs.org
echo 2. Run: npm install
echo 3. Run: npx cap add android
echo 4. Run: npx cap sync
echo.
pause
goto MENU

:PACKAGE
echo.
echo === Creating Deployment Package ===
echo.
if exist "acajou-games-deploy.zip" del "acajou-games-deploy.zip"
echo.
echo Creating deployment package...
echo This will create a ZIP file with all necessary files.
echo.
echo Files to include:
echo - All HTML game files
echo - index.html (landing page)
echo - manifest.json
echo - capacitor.config.json
echo - package.json
echo.
echo Please use a ZIP tool to create acajou-games-deploy.zip
echo Include all .html, .json, and .md files
echo.
pause
goto MENU

:GUIDE
echo.
echo === Opening Deployment Guide ===
echo.
if exist "DEPLOYMENT_GUIDE.md" (
    start DEPLOYMENT_GUIDE.md
    echo Guide opened in your default editor
) else (
    echo DEPLOYMENT_GUIDE.md not found in current directory
)
echo.
pause
goto MENU

:END
echo.
echo Thank you for using ACAJOU GAMES Setup!
echo Good luck with your launch! 🎮
echo.
pause
exit
