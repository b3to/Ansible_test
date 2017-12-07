#get-service winrm -computername helpdesk-w10 |Start-Service
#Enter-PSSession -ComputerName helpdesk-w10

$users = gc C:\SCR1PT5\users.txt
$sids = gc C:\SCR1PT5\sids.txt

<#
Delete C:\Users\[account name]
Delete HKEY_USERS\[SID]\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
Delete HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\ProfileList\[SID]
#>



 $sid = foreach ($user in $users){
 
 get-aduser -identity $user | select sid, Name
 
 } 

 $sid | out-file C:\SCR1PT5\sids.txt

 if ($sid -NotMatch $sids){
 write-host who dat user $sid}
 else {

 write-host im gonna clean them...should i ?}