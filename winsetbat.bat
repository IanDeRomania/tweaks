@echo off
REM ; POWERSHELL
REM ; Allow scripts in CMD set-executionpolicy remotesigned
Reg.exe add "HKLM\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "Path" /t REG_SZ /d "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "RemoteSigned" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "Path" /t REG_SZ /d "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" /v "ExecutionPolicy" /t REG_SZ /d "RemoteSigned" /f
REM ;File System
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f
REM ;videos
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f
REM ;pictures
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f
REM ;documents
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f
REM ;app diagonstics
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f
REM ;radios
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f
REM ;Messaging
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f
REM ;tasks
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f
REM ;email
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f
REM ;call history
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
REM ;phone calls
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f
REM ;calendar
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f
REM ;calendar
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f
REM ;account info
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
REM ;notifications
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
REM ;camera
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f
REM ;location
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
REM ;inking
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
REM ;tablet mode
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "TabletMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "ConvertibleSlateModePromptPreference" /t REG_DWORD /d "0" /f
REM ;Disable Shared Experiences
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
REM ;remoteplay
Reg.exe add "HKLM\SYSTEM\CurRentControlSet\Control\Terminal Server" /v "fDenyTSConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d "1" /f
REM ; CHROME
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "StartupBoostEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "HardwareAccelerationModeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
REM ; EDGE
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "StartupBoostEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HardwareAccelerationModeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineCore" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\MicrosoftEdgeUpdateTaskMachineUA" /f
REM ; STORE
REM ; Update apps automatically
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f
REM ; TASKBAR
REM ; Left taskbar alignment
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
REM ; Remove chat from taskbar
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
REM ; Remove task view from taskbar
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
REM ; Remove search from taskbar
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
REM ; Remove meet now
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
REM ; Remove action center
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
REM ; Remove news and interests
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
REM ; Show all taskbar icons
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f
REM ; Remove security taskbar icon
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /t REG_BINARY /d "0700000005DB8A698A49D901" /f
REM ; START MENU
REM ; Always hide most used list in start menu
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ShowOrHideMostUsedApps" /t REG_DWORD /d "2" /f
Reg.exe delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ShowOrHideMostUsedApps" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMFUprogramsList" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoStartMenuMFUprogramsList" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInstrumentation" /f
REM ; Disable show recently added apps
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
REM ; Disable show recently opened items in start, jump lists and file explorer
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
REM ; EXPLORER
REM ; Open file explorer to this pc
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f
REM ; Hide frequent folders in quick access
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f
REM ; Disable Search histroy
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f
REM ; Restore the classic context menu
Reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
REM ; PERSONALIZATION
REM ; Dark theme
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "StartColorMenu" /t REG_DWORD /d "4282203969" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentColorMenu" /t REG_DWORD /d "4282927692" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Accent" /v "AccentPalette" /t REG_BINARY /d "DFDEDC00A6A5A100686562004C4A4800413F3D0027252400100D0D00107C1000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "AccentColor" /t REG_DWORD /d "4282927692" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationColor" /t REG_DWORD /d "3293334088" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorizationAfterglow" /t REG_DWORD /d "3293334088" /f
REM ; Disable windows widgets
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
REM ; Disable transparency
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
REM ; 100% dpi scaling
Reg.exe add "HKCU\Control Panel\Desktop" /v "LogPixels" /t REG_DWORD /d "96" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "Win8DpiScaling" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "UseDpiScaling" /t REG_DWORD /d "0" /f
REM ; Disable fix scaling for apps
Reg.exe add "HKCU\Control Panel\Desktop" /v "EnablePerProcessSystemDPI" /t REG_DWORD /d "0" /f
REM ; Network throttling
REM ; System responsiveness
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
REM ; Disable core isolation
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
REM ; GAMING
REM ; Disable game bar
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
REM ; Disable enable open xbox game bar using game controller
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
REM ; Enable game mode
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
REM ; Other settings
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioEncodingBitrate" /t REG_DWORD /d "128000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingBitrate" /t REG_DWORD /d "4000000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingHeight" /t REG_DWORD /d "720" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CustomVideoEncodingWidth" /t REG_DWORD /d "1280" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLength" /t REG_DWORD /d "30" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalBufferLengthUnit" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnBatteryAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureOnWirelessDisplayAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingBitrateMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingResolutionMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VideoEncodingFrameRateMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "EchoCancellationEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleGameBar" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleGameBar" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKSaveHistoricalVideo" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMSaveHistoricalVideo" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecording" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecording" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKTakeScreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMTakeScreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleRecordingIndicator" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleRecordingIndicator" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleMicrophoneCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleMicrophoneCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleCameraCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleCameraCapture" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKToggleBroadcast" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "VKMToggleBroadcast" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f
REM ; Disable let websites show me locally relevant content by accessing my language list
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
REM ; Disable let windows improve start and search results by tracking app launches
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d "1" /f
REM ; Disable personal inking and typing dictionary
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
REM ; Feedback frequency never
Reg.exe add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
REM ; Disable store my activity history on this device
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
REM ; Safe search off
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d "0" /f
REM ; Disable cloud content search for work or school account
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f
REM ; Disable cloud content search for microsoft account
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f
REM ; ACCESSIBILITY
REM ; Disable notifications
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.CapabilityAccess" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f
REM ; Disable focus assist
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.notifications.quiethourssettings\Current" /v "Data" /t REG_BINARY /d "02000000B4672B68F00BD8010000000043420100C20A01D214284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0055006E007200650073007400720069006300740065006400CA28D014020000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentfullscreen$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "02000000971D2D68F00BD8010000000043420100C20A01D21E264D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0041006C00610072006D0073004F006E006C007900C22801CA500000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentgame$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "020000006C392D68F00BD8010000000043420100C20A01D21E284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E005000720069006F0072006900740079004F006E006C007900C22801CA500000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentpostoobe$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "0200000006542D68F00BD8010000000043420100C20A01D21E284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E005000720069006F0072006900740079004F006E006C007900C22801CA500000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentpresentation$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "02000000836E2D68F00BD8010000000043420100C20A01D21E264D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E0041006C00610072006D0073004F006E006C007900C22801CA500000" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$quietmomentscheduled$windows.data.notifications.quietmoment\Current" /v "Data" /t REG_BINARY /d "020000002E8A2D68F00BD8010000000043420100C20A01D21E284D006900630072006F0073006F00660074002E005100750069006500740048006F00750072007300500072006F00660069006C0065002E005000720069006F0072006900740079004F006E006C007900C22801D13280E0AA8A9930D13C80E0F6C5D50ECA500000" /f
REM ; Disable magnifier settings
Reg.exe add "HKCU\SOFTWARE\Microsoft\ScreenMagnifier" /v "FollowCaret" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\ScreenMagnifier" /v "FollowNarrator" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\ScreenMagnifier" /v "FollowMouse" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\ScreenMagnifier" /v "FollowFocus" /t REG_DWORD /d "0" /f
REM ; Disable narrator settings
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator" /v "IntonationPause" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator" /v "ReadHints" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator" /v "ErrorNotificationType" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator" /v "EchoChars" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator" /v "EchoWords" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator\NarratorHome" /v "MinimizeType" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator\NarratorHome" /v "AutoStart" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Narrator\NoRoam" /v "EchoToggleKeys" /t REG_DWORD /d "0" /f
REM ; EASE OF ACCESS
REM ; Disable narrator
Reg.exe add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "DuckAudio" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "WinEnterLaunchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ScriptingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Narrator" /v "NarratorCursorHighlight" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Narrator" /v "CoupleNarratorCursorKeyboard" /t REG_DWORD /d "0" /f
REM ; Disable ease of access settings
Reg.exe add "HKCU\Software\Microsoft\Ease of Access" /v "selfvoice" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Ease of Access" /v "selfscan" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility" /v "Sound on Activation" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility" /v "Warning Sounds" /t REG_DWORD /d "0" /f
REM ; OTHER
REM ; Disable driver searching
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
REM ; Disable automatic maintenance
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
REM ; Disable background apps global
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
REM ; Disable use my sign in info after restart
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f
REM ; Disable automatically update maps
Reg.exe add "HKLM\SYSTEM\Maps" /v "AutoUpdateEnabled" /t REG_DWORD /d "0" /f
REM ; Alt tab open windows only
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MultiTaskingAltTabFilter" /t REG_DWORD /d "3" /f
REM ; Disable UAC
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
REM ; Device installation settings - no
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
REM ; Disable driver searching + updates
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
REM ; W11 Disable suggested actions
REM ;[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard]
REM ;"Disabled"=dword:00000001
REM ; W11 Disable search highlights
REM ;[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SearchSettings]
REM ;"IsDynamicSearchBoxEnabled"=dword:00000000
REM ; W11 Disable storage sense
REM ;[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\StorageSense]
REM ;"AllowStorageSenseGlobal"=dword:00000000
exit

