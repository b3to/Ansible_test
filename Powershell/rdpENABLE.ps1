$pc = Read-Host "whats the pc?"
$user = Read-host "whats the user?"


Invoke-Command -ComputerName $pc -ScriptBlock {NET LOCALGROUP "Remote Desktop Users" /ADD "$user"}