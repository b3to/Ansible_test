 if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
#Rename-Item C:\Windows\SoftwareDistribution SoftwareDistribution.old
#Rename-Item C:\Windows\System32\catroot2 catroot2.old
remove-item  C:\Windows\softwareDistribution.old -Recurse
remove-item  C:\Windows\System32\catroot2.old -Recurse
net start wuauserv
net start cryptSvc
net start bits
net start msiserver
pause