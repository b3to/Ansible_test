function Add-DomainGroupToLocalAdministrator {
param (
[parameter(Mandatory = $true)]
$ComputerName,            

[parameter(Mandatory = $true)]
$GroupName,            

$DomainName
)            

if(!($DomainName)) {
    Import-Module ActiveDirectory
    $DomainName = (Get-AdDomain).DNSRoot.ToString()
}            

try {            

    $AdminGroup = [ADSI]("WinNT://$ComputerName/Administrators,Group")
    $AdminGroup.Add("WinNT://$DomainName/$GroupName,Group")
    Write-host "Successfully Added $GroupName to local administrators group of $computerName"            

}
catch {
    Write-Error $_
}            

} 