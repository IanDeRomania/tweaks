# MSI Mode Script PRO (GPU + NVMe + Network)
# Run as Administrator

Write-Host "===============================" -ForegroundColor Green
Write-Host "   MSI MODE SETUP (PRO)" -ForegroundColor Green
Write-Host "===============================" -ForegroundColor Green
Write-Host ""

# Priority values
$PRIORITY_LOW = 1
$PRIORITY_MEDIUM = 2
$PRIORITY_HIGH = 3

function Enable-MSI {
    param (
        [string]$Filter,
        [int]$Priority
    )

    $devices = Get-PnpDevice -PresentOnly | Where-Object {
        $_.InstanceId -like "PCI*" -and
        $_.FriendlyName -match $Filter
    }

    if ($devices.Count -eq 0) {
        Write-Host "[INFO] No devices found for filter: $Filter" -ForegroundColor Yellow
        return
    }

    foreach ($device in $devices) {

        # Exclude unwanted devices
        if ($device.FriendlyName -match "Audio|USB|Bluetooth|Virtual") {
            continue
        }

        $basePath = "HKLM:\SYSTEM\CurrentControlSet\Enum\$($device.InstanceId)\Device Parameters\Interrupt Management"
        $msiPath = "$basePath\MessageSignaledInterruptProperties"
        $affinityPath = "$msiPath\Affinity Policy"

        try {
            # Create paths if missing
            if (!(Test-Path $msiPath)) {
                New-Item -Path $msiPath -Force | Out-Null
            }

            # Check current state
            $current = Get-ItemProperty -Path $msiPath -Name "MSISupported" -ErrorAction SilentlyContinue

            if ($current.MSISupported -eq 1) {
                Write-Host "[SKIP] Already MSI -> $($device.FriendlyName)" -ForegroundColor DarkYellow
            }
            else {
                Set-ItemProperty -Path $msiPath -Name "MSISupported" -Value 1 -Type DWord
                Write-Host "[OK] MSI Enabled -> $($device.FriendlyName)" -ForegroundColor Cyan
            }

            # Set priority
            if (!(Test-Path $affinityPath)) {
                New-Item -Path $affinityPath -Force | Out-Null
            }

            Set-ItemProperty -Path $affinityPath -Name "DevicePriority" -Value $Priority -Type DWord

            switch ($Priority) {
                1 { $p = "LOW" }
                2 { $p = "MEDIUM" }
                3 { $p = "HIGH" }
            }

            Write-Host "     Priority -> $p" -ForegroundColor Gray
        }
        catch {
            Write-Host "[ERROR] $($device.FriendlyName)" -ForegroundColor Red
        }
    }
}

# -------------------------------
# GPU (NVIDIA / AMD)
# -------------------------------
Enable-MSI -Filter "NVIDIA|AMD Radeon" -Priority $PRIORITY_HIGH

# -------------------------------
# NVMe SSD / Storage Controller
# -------------------------------
Enable-MSI -Filter "NVMe|NVM Express" -Priority $PRIORITY_HIGH

# -------------------------------
# Network (Ethernet / Wi-Fi)
# -------------------------------
Enable-MSI -Filter "Ethernet|Wi-Fi|Wireless|Intel\(R\) Wi-Fi" -Priority $PRIORITY_MEDIUM

Write-Host ""
Write-Host "================================" -ForegroundColor Green
Write-Host "   MSI CONFIGURATION COMPLETE" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""
Write-Host "Restart your PC for changes!" -ForegroundColor Yellow

pause