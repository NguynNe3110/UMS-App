@echo off
echo "Checking commit message..."
set commit_message=%~1

(echo %commit_message% | findstr /R /C:"^[[]EMS-[0-9]][ ][a-z0-9_-]*") || (
    echo Commit message "%commit_message%" is invalid. See example: "[EMS-2] some text"
    exit 1
)

echo Commit message "%commit_message%" is valid
