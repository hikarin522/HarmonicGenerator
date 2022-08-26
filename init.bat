@echo off
pwsh -nop -ep RemoteSigned -wd "%~dp0." -f "%~dpn0.ps1"
pause
