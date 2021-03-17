mkdir C:\HWID
mkdir C:\HWID\IntuneScripts
mkdir C:\HWID\IntuneScripts\Autopilot
mkdir C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM

Copy-Item "https://github.com/revenuewell-it/scripts/blob/main/Autopilot.ps1" -Destination "C:\HWID\IntuneScripts\Autopilot"
Copy-Item "https://github.com/revenuewell-it/scripts/blob/main/ReadBatchRMGPnSCCM.ps1" -Destination "C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM"
