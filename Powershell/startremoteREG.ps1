cls
$computers = get-content C:\SCR1PT5\win10pcs.txt

foreach ($computer in $computers)
{
if (Test-Connection -count 1 -computerName $computer -quiet){
Write-Host "Updating system" $computer "....." -ForegroundColor Green
Set-Service –Name remoteregistry –ComputerName $computer -StartupType Automatic
Get-Service remoteregistry -ComputerName $computer| start-service
}
else
{
Write-Host "System Offline " $computer "....." -ForegroundColor Red
echo $computer >> C:\scripts\Inventory\offlineRemoteRegStartup.txt}
}