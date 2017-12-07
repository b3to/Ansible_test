$checkMAYA = "\\$pc\c$\AW\Maya2015"
$dbdpcs = gc "C:\dbdpcs.txt"

foreach($pc in $dbdpcs){
$folderexists = Test-Path $checkMAYA

if ($folderexists -eq $True) {Write-Host "The folder is on $pc"}

Else {Write-Host "No file at this location"}
}
