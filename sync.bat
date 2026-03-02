@echo off
chcp 65001 >nul
echo ====================================
echo    Sync Notes to GitHub
echo ====================================
echo.

echo Current status:
git status

echo.
set /p commit_msg=Enter commit message: 

if "%commit_msg%"=="" (
    echo Error: Commit message cannot be empty!
    pause
    exit /b 1
)

echo.
echo Adding files...
git add .

echo Committing changes...
git commit -m "%commit_msg%"

echo Pushing to GitHub...
git push

echo.
echo ====================================
echo    Sync Completed Successfully!
echo ====================================
pause