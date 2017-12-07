$pc = get-content C:\adlist.txt
$path = "\\$pc\d$\production"
$ValidPath = Test-Path $path -IsValid


foreach ($p in $pc ){

If ($ValidPath -eq $True) {Write-Host "Path is OK"}
Else {Write-Host "path is not there"}
}
