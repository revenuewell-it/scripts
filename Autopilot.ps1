#Script to auto enroll in Autopilot
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}
Set-Itemproperty -path 'HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell\' -Name 'ExecutionPolicy' -value 'Bypass'
Write-Output "Autopilot enrollment is initialized"
Set-ExecutionPolicy Bypass -Scope Process -Force
Install-Script -Name Get-WindowsAutoPilotInfo -Force
Get-WindowsAutoPilotInfo.ps1 -OutputFile AutoPilotHWID.csv
$myshell = New-Object -com "Wscript.Shell"
$User = Read-Host -Prompt 'Input the user name that will be using this computer e.g: xyz@revenuewell.com' 
$computername = Read-Host -Prompt 'Input the computer name with "RW-" prefix e.g: RW-XYZ-W1' 
Rename-Computer -Newname $computername
$myshell.sendkeys("{ENTER}")
Get-WindowsAutoPilotInfo.ps1 -OutputFile C:\HWID\IntuneScripts\Autopilot\AutoPilotHWID.csv -AssignedUser $User -AssignedComputerName $computername -GroupTag Revenuewell -AddToGroup  IntuneDeviceMgmtPolicy-All -online
Restart-Computer
stop-process -Id $PID
exit
