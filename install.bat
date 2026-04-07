@echo off
echo Installing Flux for Amazon Q...
echo.

set SOURCE=%~dp0prompts
set TARGET=%USERPROFILE%\.aws\amazonq\prompts

if not exist "%USERPROFILE%\.aws\amazonq" (
    echo Error: Amazon Q directory not found at %USERPROFILE%\.aws\amazonq
    echo Please ensure Amazon Q is installed.
    pause
    exit /b 1
)

if not exist "%TARGET%" (
    echo Creating prompts directory...
    mkdir "%TARGET%"
)

echo Copying prompts to %TARGET%...
xcopy /E /I /Y "%SOURCE%" "%TARGET%"

echo.
echo Installation complete!
echo.
echo Available prompts:
echo   @repo-init
echo   @session-start
echo   @session-update
echo   @session-end
echo   @session-current
echo   @session-list
echo   @session-help
echo   @git-commit
echo   @git-merge-cleanup
echo   @git-merge-retain
echo.
pause
