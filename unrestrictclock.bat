@echo off
for /f %%f in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
	for /f "tokens=3" %%b in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%f" /v "Driver"') do (
		for /f %%f in ('echo %%b ^| findstr "{"') do (
		     Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%f" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
                   )
                )
             )

exit