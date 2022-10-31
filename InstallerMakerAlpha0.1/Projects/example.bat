@ECHO OFF
MODE CON COLS=76
MODE CON LINES=22
TITLE TGW-U_0.2.1Dev_Installer
CHCP 65001
GOTO pp1
:backpp1
SET /P download=Download?[Y/N]
if %download% equ Y (
SET /P open=Open After Downloading?[Y/N]
)
if %download% equ Y (
CLS
ECHO Downloading game.pak
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://docs.google.com/uc?authuser=0&id=1PUU3GHhlbH6IuGFPU5_hUR0ow3FKwzSt&export=download', 'game.pak')"
ECHO   game.pak downloaded.
ECHO.
ECHO Downloading game.exe
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://docs.google.com/uc?authuser=0&id=14YEBej8vtiBcBp8Acs4V5dhwxuL-RdEK&export=download', 'game.exe')"
ECHO   game.exe downloaded.
if %open% equ Y (
START game.exe
(
ECHO Set WshShell = CreateObject("WScript.Shell"^)
ECHO WshShell.AppActivate("game.exe"^)
)> active.vbs
cscript active.vbs
del active.vbs
)
)
ECHO Press any key to close the window.
PAUSE>NUL
EXIT
GOTO passpp1
:pp1
CLS
ECHO ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
ECHO ███████████▄─▄█─▄▄█─███─█████─█─███─▄▀█─▄▄█─█─███─▄─███▄▄─███▀─█████████████
ECHO ████████████─██─█─█─█─█─█▄▄▄█─█─███─█─█─▄▄█─█─███─█─███─▄▄████─█████████████
ECHO ████████████▄██▄▄▄█▄▄█▄▄█████▄▄▄███▄▄██▄▄▄██▄████▄▄▄█▄█▄▄▄█▄██▄█████████████
ECHO █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
ECHO █  This programm will download files of TGW-U to this directory.           █
ECHO █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
ECHO ▌                                                                          ▐
ECHO ▌  Name: The Great War - Underground;                                      ▐
ECHO ▌                                                                          ▐
ECHO ▌  Version: Dev0.2.1;                                                      ▐
ECHO ▌                                                                          ▐
ECHO ▌  Files:                                                                  ▐
ECHO ▌    game.pak;                                                             ▐
ECHO ▌    game.exe;                                                             ▐
ECHO ▌                                                                          ▐
ECHO ▌  Memory: 2756KB                                                          ▐
ECHO ▌                                                                          ▐
ECHO ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
ECHO.
GOTO backpp1
:passpp1
