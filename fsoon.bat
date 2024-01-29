@echo off
REM ; Configure Fullscreen Optimizations (FSO)
REM ; Windows default
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "0" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "__COMPAT_LAYER" /f
REM ; Enable Game Bar
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /f
REM ; Enable Game Bar tips
REM ; Enable 'Open Xbox Game Bar using this button on a controller'
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /f
reg delete "HKCU\SOFTWARE\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /f
reg delete "HKCU\SOFTWARE\Microsoft\GameBar" /v "ShowStartupPanel" /f
reg delete "HKCU\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /f
REM ; Enable Game Bar Presence Writer
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "1" /f
REM ; Enable Windows Game Recording and Broadcasting (DVR)
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "1" /f

REM ; xbox serv
sc config xbgm start= demand
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand
exit
