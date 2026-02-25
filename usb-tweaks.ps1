# ================================
#   USB TWEAKS (LOW LATENCY)
# ================================

Write-Host "Applying USB Tweaks..." -ForegroundColor Cyan

# -------------------------------
# DISABLE USB SELECTIVE SUSPEND
# -------------------------------
$plans = powercfg -list | Select-String ":" 

foreach ($p in $plans) {
    $guid = ($p -split "\s+")[3]

    powercfg -setacvalueindex $guid SUB_USB USBSELECTIVE SUSPEND 0 | Out-Null
    powercfg -setdcvalueindex $guid SUB_USB USBSELECTIVE SUSPEND 0 | Out-Null
}

powercfg -setactive scheme_current | Out-Null

# -------------------------------
# REGISTRY
# -------------------------------
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\USB" -Name "DisableSelectiveSuspend" -PropertyType DWord -Value 1 -Force | Out-Null
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\USB" -Name "DisableSelectiveSuspend" -PropertyType DWord -Value 1 -Force | Out-Null

# -------------------------------
# DISABLE USB POWER MANAGEMENT
# -------------------------------
Get-ChildItem "HKLM:\SYSTEM\CurrentControlSet\Enum" -Recurse -ErrorAction SilentlyContinue | ForEach-Object {
    try {
        New-ItemProperty -Path ($_.PSPath + "\Device Parameters") `
            -Name "EnhancedPowerManagementEnabled" `
            -PropertyType DWord `
            -Value 0 `
            -Force -ErrorAction SilentlyContinue | Out-Null
    } catch {}
}

Write-Host "USB Tweaks Applied!" -ForegroundColor Green