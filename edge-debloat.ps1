# ================================
#     WEBVIEW CONTROL (PRO)
# ================================

Write-Host "Configuring WebView2..." -ForegroundColor Green

# -------------------------------
# STOP PROCESSES
# -------------------------------
Write-Host "Stopping WebView..." -ForegroundColor Yellow
Stop-Process -Name msedgewebview2 -Force -ErrorAction SilentlyContinue

# -------------------------------
# DISABLE EDGE BACKGROUND MODE
# -------------------------------
Write-Host "Disabling background mode..." -ForegroundColor Yellow

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f | Out-Null
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v StartupBoostEnabled /t REG_DWORD /d 0 /f | Out-Null

# -------------------------------
# DISABLE EDGE UPDATE SERVICES
# -------------------------------
Write-Host "Disabling Edge updates..." -ForegroundColor Yellow

sc stop edgeupdate 2>$null
sc stop edgeupdatem 2>$null

sc config edgeupdate start= disabled 2>$null
sc config edgeupdatem start= disabled 2>$null

# -------------------------------
# REMOVE SCHEDULED TASKS
# -------------------------------
Write-Host "Removing scheduled tasks..." -ForegroundColor Yellow

schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineCore" /f 2>$null
schtasks /delete /tn "MicrosoftEdgeUpdateTaskMachineUA" /f 2>$null

# -------------------------------
# BLOCK PRELOAD
# -------------------------------
Write-Host "Disabling preload..." -ForegroundColor Yellow

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v AllowPrelaunch /t REG_DWORD /d 0 /f | Out-Null
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v AllowTabPreloading /t REG_DWORD /d 0 /f | Out-Null

# -------------------------------
# FINAL
# -------------------------------
Write-Host ""
Write-Host "WebView2 optimized (no background)!" -ForegroundColor Green