# ================================
#   WINDOWS DEBLOAT (NO XBOX)
# ================================

Write-Host "Starting Debloat..." -ForegroundColor Green

$keep = @(
    "Microsoft.WindowsStore",
    "Microsoft.StorePurchaseApp",
    "Microsoft.DesktopAppInstaller",
    "Microsoft.Windows.Photos",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.WindowsNotepad",
    "Microsoft.ScreenSketch",
    "Microsoft.WindowsCalculator",
    "Microsoft.WindowsTerminal",
    "Microsoft.WindowsSecurity",
    "Microsoft.VCLibs",
    "Microsoft.UI.Xaml",
    "Microsoft.NET",
    "Microsoft.WebExperience",
    "MicrosoftEdge"
)

$removeList = @(
    "*GamingApp*",
    "*Bing*",
    "*GetHelp*",
    "*Getstarted*",
    "*Tips*",
    "*3DViewer*",
    "*MixedReality*",
    "*Solitaire*",
    "*People*",
    "*Maps*",
    "*Weather*",
    "*OfficeHub*",
    "*SkypeApp*",
    "*Teams*",
    "*Clipchamp*",
    "*YourPhone*",
    "*PhoneLink*",
    "*News*",
    "*MSN*",
    "*FeedbackHub*",
    "*PowerAutomate*",
    "*QuickAssist*",
    "*DevHome*"
)

$apps = Get-AppxPackage -AllUsers

foreach ($pattern in $removeList) {

    $matchedApps = $apps | Where-Object { $_.Name -like $pattern }

    if ($matchedApps.Count -eq 0) {
        Write-Host "[NOT FOUND] $pattern" -ForegroundColor DarkGray
        continue
    }

    foreach ($app in $matchedApps) {

        $skip = $false

        foreach ($k in $keep) {
            if ($app.Name -like "*$k*") {
                $skip = $true
            }
        }

        if ($skip) {
            Write-Host "[SKIPPED] $($app.Name)" -ForegroundColor Yellow
            continue
        }

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

foreach ($pattern in $removeList) {

    $matchedApps = $provApps | Where-Object { $_.DisplayName -like $pattern }

    foreach ($app in $matchedApps) {
        try {
            Remove-AppxProvisionedPackage -Online -PackageName $app.PackageName -ErrorAction Stop | Out-Null
            Write-Host "[REMOVED PROV] $($app.DisplayName)" -ForegroundColor Green
        } catch {}
    }
}

Write-Host ""
Write-Host "Debloat complete!" -ForegroundColor Green
Read-Host "Press Enter to exit"