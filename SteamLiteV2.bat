:SteamUltraLite

echo ======================================
echo        STEAM ULTRA LITE
echo ======================================

:: Kill Steam
taskkill /f /im steam.exe >nul 2>&1

:: Start Steam minimal
start "" "C:\Program Files (x86)\Steam\steam.exe" ^
-no-browser ^
-nofriendsui ^
-nochatui ^
-nointro ^
-silent ^
-nocrashmonitor ^
-noverifyfiles

echo [OK] Steam Ultra Lite started
exit /b