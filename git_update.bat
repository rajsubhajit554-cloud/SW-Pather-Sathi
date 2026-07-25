@echo off
echo ===================================
echo   SW Pather Sathi - Git Update Script
echo ===================================
echo.

echo Checking Git status...
git status
echo.

set /p commit_msg="Enter commit message (or press Enter for default 'Update website files'): "
if "%commit_msg%"=="" set commit_msg=Update website files

echo.
echo Adding files...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing to GitHub (origin main)...
git push -u origin main

echo.
echo ===================================
echo   Git Update Finished!
echo ===================================
pause
