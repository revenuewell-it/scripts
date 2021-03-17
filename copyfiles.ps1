mkdir C:\HWID
mkdir C:\HWID\IntuneScripts
mkdir C:\HWID\IntuneScripts\Autopilot
mkdir C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM

Copy-Item "scripts/blob/main/Autopilot.ps1" -Destination "C:\HWID\IntuneScripts\Autopilot"
Copy-Item "scripts/blob/main/ReadBatchRMGPnSCCM.ps1" -Destination "C:\HWID\IntuneScripts\ReadBatchRMGPnSCCM"
