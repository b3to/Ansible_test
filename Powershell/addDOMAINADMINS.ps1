$DomainGroup = "Domain Admins"
$LocalGroup  = "Administrateurs"
$LocalGroup2 = "Administrators"
$Computer    = $env:computername
#$Domain      = a2m.com

if ( $(try {[ADSI]::Exists("WinNT://localhost/Administrateurs")} catch {$False}) ) {
([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://a2m/$DomainGroup").path)
}
else {
([ADSI]"WinNT://$Computer/$LocalGroup2,group").psbase.Invoke("Add",([ADSI]"WinNT://a2m/$DomainGroup").path)
}

