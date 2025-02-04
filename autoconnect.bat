@echo off
:retry
ssh -o ConnectTimeout=0.1 pi@10.0.0.2 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [31mConnection failed.[0m
    timeout /t 0 /nobreak >nul
    goto retry
) ELSE (
    echo [32mConnection successful![0m
    start cmd /k ssh pi@10.0.0.2
)

rem made by yuri
rem join https://discord.gg/GN8AaWuP2n