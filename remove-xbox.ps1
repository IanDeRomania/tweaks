# ================================
#   REMOVE XBOX APPS
# ================================

Write-Host "Removing Xbox Apps..." -ForegroundColor Green

$xboxList = @(
    "*Xbox*"
)

$apps = Get-AppxPackage -AllUsers

foreach ($pattern in $xboxList) {

    $matchedApps = $apps | Where-Object { $_.Name -like $pattern }

    if ($matchedApps.Count -eq 0) {
        Write-Host "[NOT FOUND] $pattern" -ForegroundColor DarkGray
        continue
    }

    foreach ($app in $matchedApps) {

        Write-Host "[REMOVING] $($app.Name)" -ForegroundColor Red

        try {
            Remove-AppxPackage -Package $app.PackageFullName -AllUsers -ErrorAction Stop
            Write-Host "[REMOVED] $($app.Name)" -ForegroundColor Green
        } catch {
            Write-Host "[FAILED] $($app.Name)" -ForegroundColor Magenta
        }
    }
}

# Provisioned apps
$provApps = Get-AppxProvisionedPackage -Online

foreach ($pattern in $xboxList) {

    $matchedApps = $provApps | Where-Object { $_.DisplayName -like $pattern }

    foreach ($app in $matchedApps) {
        try {
            Remove-AppxProvisionedPackage -Online -PackageName $app.PackageName -ErrorAction Stop | Out-Null
            Write-Host "[REMOVED PROV] $($app.DisplayName)" -ForegroundColor Green
        } catch {}
    }
}

Write-Host ""
Write-Host "Xbox removal complete!" -ForegroundColor Green
Read-Host "Press Enter to exit"