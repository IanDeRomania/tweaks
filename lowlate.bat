@echo off
curl -s https://cdn.discordapp.com/attachments/916071940794486825/1190751149188468866/nvidiaProfileInspector.exe > "%temp%\nvidiaProfileInspector.exe"
curl -s https://raw.githubusercontent.com/IanDeRomania/tweaks/main/lowlatency.nip > "%temp%\lowlatency.nip"
Start "" "%temp%\nvidiaProfileInspector.exe" "%temp%\lowlatency.nip"
exit
