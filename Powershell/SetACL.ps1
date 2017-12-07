#$cred = Get-Credential a2m\rbarrios_admin
$pcs = Get-Content c:\pcs.txt
$Right="FullControl"
$Principal="BUILTIN\Utilisateurs"
$path ="HKLM:\Software\Microsoft\Windows NT\Current\Fonts"
$rule=New-Object -TypeName 'System.Security.AccessControl.FileSystemAccessRule' ("a2m.com/Users","FullControl",$inherit,$propagation,"Allow")
$acl = Get-Acl -path HKLM:\Software\Microsoft\Windows NT\Current\Fonts
$inherit = [system.security.accesscontrol.InheritanceFlags]"ContainerInherit, ObjectInherit"
$propagation = [system.security.accesscontrol.PropagationFlags]"None"




foreach ($pc in $pcs)
{
cls
Enter-PSSession -computername $pc 
#cd HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts
Get-Acl -path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts"
$acl.addAccessRule($rule)    
$acl | Set-Acl
Write-Host "Permissions have been set!" -ForeGroundColor Green
exit
}