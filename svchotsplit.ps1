# Run as Administrator

# Get total RAM in KB
$ramBytes = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory
$ramKB = [math]::Round($ramBytes / 1KB)

# Registry path
$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control"

# Apply SvcHostSplitThresholdInKB
New-ItemProperty -Path $regPath -Name "SvcHostSplitThresholdInKB" -PropertyType DWord -Value $ramKB -Force | Out-Null