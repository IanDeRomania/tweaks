# ================================
#    ONEDRIVE FULL REMOVE PRO
# ================================

Write-Host "Removing OneDrive..." -ForegroundColor Green

# Admin check
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Run as Administrator!" -ForegroundColor Red
    Read-Host "Press Enter"
    exit
}

# Stop process
Stop-Process -Name OneDrive -Force -ErrorAction SilentlyContinue

# Uninstall
$paths = @(
    "$env:SystemRoot\System32\OneDriveSetup.exe",
    "$env:SystemRoot\SysWOW64\OneDriveSetup.exe"
)

foreach ($path in $paths) {
    if (Test-Path $path) {
        Start-Process $path "/uninstall" -NoNewWindow -Wait
    }
}

# Remove Appx
Get-AppxPackage *OneDrive* -AllUsers | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue

# Remove folders
$folders = @(
    "$env:USERPROFILE\OneDrive",
    "$env:LOCALAPPDATA\Microsoft\OneDrive",
    "$env:PROGRAMDATA\Microsoft OneDrive",
    "$env:ProgramFiles\Microsoft OneDrive",
    "$env:ProgramFiles(x86)\Microsoft OneDrive",
    "C:\OneDriveTemp"
)

foreach ($folder in $folders) {
    Remove-Item $folder -Recurse -Force -ErrorAction SilentlyContinue
}

# Disable OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f | Out-Null

# Remove Explorer entry
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 2>$null
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f 2>$null

# Remove startup
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v OneDrive /f 2>$null

# Remove tasks
Get-ScheduledTask | Where-Object { $_.TaskName -like "*OneDrive*" } | ForEach-Object {
    try {
        Unregister-ScheduledTask -TaskName $_.TaskName -Confirm:$false -ErrorAction SilentlyContinue
    } catch {}
}

# Remove registry
Remove-Item "HKCU:\Software\Microsoft\OneDrive" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "HKLM:\SOFTWARE\Microsoft\OneDrive" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "OneDrive fully removed!" -ForegroundColor Green
Read-Host "Press Enter to exit"