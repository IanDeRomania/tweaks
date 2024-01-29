@echo off
curl -s https://cdn.discordapp.com/attachments/916071940794486825/1190721034131873943/PowerRun.exe > "%temp%\PowerRun.exe"
curl -s https://raw.githubusercontent.com/IanDeRomania/tweaks/main/windows10settings.reg > "%temp%\windows10settings.reg"
Start "" "%temp%\PowerRun.exe" "%temp%\windows10settings.reg"
exit