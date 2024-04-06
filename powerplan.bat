@echo off
curl -s https://github.com/IanDeRomania/tweaks/raw/main/Custom1.pow > "%temp%\Custom1.pow"
powercfg -import "%temp%\Custom1.pow" 70ed9b2c-6a1b-47d5-a99d-3d48f753238d >nul 2>&1
powercfg -SETACTIVE "70ed9b2c-6a1b-47d5-a99d-3d48f753238d" >nul 2>&1
powercfg /changename 70ed9b2c-6a1b-47d5-a99d-3d48f753238d "Custom Power Plan" ""
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
exit
