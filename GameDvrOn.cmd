@echo off
goto check_Permissions
:check_Permissions
    echo Administrative permissions required. Detecting permissions...
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
move "C:\Windows\System32\GameBarPresenceWriter.OLD" "C:\Windows\System32\GameBarPresenceWriter.exe"
icacls "%WinDir%\System32\GameBarPresenceWriter.exe" /setowner "NT Service\TrustedInstaller" /c
icacls "%WinDir%\System32\GameBarPresenceWriter.exe" /grant:r Ville:RX /c
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Enable
move C:\Windows\System32\bcastdvr.OLD C:\Windows\System32\bcastdvr.exe
icacls "%WinDir%\System32\bcastdvr.exe" /setowner "NT Service\TrustedInstaller" /c
icacls "%WinDir%\System32\bcastdvr.exe" /grant:r Ville:RX /c
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Enable
sc config XblAuthManager start= auto
sc config XblGameSave start= auto
sc config XboxGipSvc start= auto
sc config XboxNetApiSvc start= auto
reg add "HKLM\System\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "1" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f
    ) else (
        echo Failure: Current permissions inadequate.
    )
    pause >nul