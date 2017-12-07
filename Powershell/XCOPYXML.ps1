$source = "\\MTLSVRLAWV01\defaultpackageshare$\Installers\NezumiPRO\lnpLicense.xml"
$destination =%systemdrive%\Users\%a\AppData\Local\Lazy Nezumi Pro
$pc = Get-Content c:\pcs.txt
$file = test-path $path
$path = "C:\Program Files(x86)\Lazy NezumiPRO"

foreach($xpc in $pc)
{
if ($file -eq $True){
write-host " the software is installed"
}
else{
#echo F | xcopy $source $destination /F /Y
Write-host " nope couldnt find it!"
}
}