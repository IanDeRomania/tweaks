@echo off
curl -s https://github.com/IanDeRomania/tweaks/raw/main/PowerRun.exe > "%temp%\PowerRun.exe"
curl -s https://raw.githubusercontent.com/IanDeRomania/tweaks/main/windows10settings.reg > "%temp%\windows10settings.reg"
Start "" "%temp%\PowerRun.exe" "%temp%\windows10settings.reg"
exit