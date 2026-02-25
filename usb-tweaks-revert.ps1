# ================================
#   USB TWEAKS REVERT
# ================================

Write-Host "Reverting USB Tweaks..." -ForegroundColor Yellow

# -------------------------------
# ENABLE USB SELECTIVE SUSPEND
# -------------------------------
$plans = powercfg -list | Select-String ":" 

foreach ($p in $plans) {
    $guid = ($p -split "\s+")[3]

    powercfg -setacvalueindex $guid SUB_USB USBSELECTIVE SUSPEND 1 | Out-Null
    powercfg -setdcvalueindex $guid SUB_USB USBSELECTIVE SUSPEND 1 | Out-Null
}

powercfg -setactive scheme_current | Out-Null

# -------------------------------
# REMOVE REG
# -------------------------------
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\USB" -Name "DisableSelectiveSuspend" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\USB" -Name "DisableSelectiveSuspend" -ErrorAction SilentlyContinue

Write-Host "USB Tweaks Reverted!" -ForegroundColor Green