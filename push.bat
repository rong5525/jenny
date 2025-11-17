@echo off
echo ============================
echo Auto Git 3-step Commit Script
echo ============================

REM 1. add all changes
git add .
echo [1/3] Added all changes.

REM 2. commit with message
set /p msg=Commit message (default: "update"): 
if "%msg%"=="" set msg=update
git commit -m "%msg%"
echo [2/3] Commit done.

REM 3. push to remote
git push
echo [3/3] Push done.

echo ============================
echo All steps finished successfully!
pause
