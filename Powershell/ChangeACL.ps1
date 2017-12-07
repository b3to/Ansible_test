

Get-Item c:\Wndows\Fonts | set-owner -Recurse -Account 'a2m\rbarrios_admin'

get-item c:\windows\fonts | foreach {$_.Attributes ='Normal'} #[enum]::GetNames("system.io.fileattributes")


$acl = GET-ACL -path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"
#$arguments = "NT AUTHORITY\Authenticated Users","FullControl","Allow"
$arguments = "BUILTIN\Users","FullControl","Allow"
$accessRule = New-Object System.Security.AccessControl.registryAccessRule ($arguments)
$acl.SetAccessRule($accessRule)
$acl | Set-Acl#Write-host "Attr changed for Fonts" -foregroundcolor red -backgroundcolor yellow

