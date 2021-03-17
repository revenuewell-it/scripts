mkdir C:\HWID
mkdir C:\HWID\IntuneScripts
mkdir C:\HWID\IntuneScripts\Autopilot
mkdir C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM

Copy-Item "https://raw.githubusercontent.com/revenuewell-it/scripts/main/Autopilot.ps1" -Destination "C:\HWID\IntuneScripts\Autopilot"
Copy-Item "https://raw.githubusercontent.com/revenuewell-it/scripts/main/ReadBatchRMGPnSCCM.ps1" -Destination "C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM"
