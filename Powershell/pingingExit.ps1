
$pcs = gc 'C:\SCR1PT5\Migra09.txt'
$report = @() 
$object = @() 


clear
start-sleep 1800
foreach($pc in $pcs){

if (Test-Connection -computername $pc){
 #if(!(Test-Connection -Cn $pc -BufferSize 16 -Count 1 -ea 0 -quiet))

write-host "$pc works! " #| export-csv C:\scr1pts\pinglog.csv
Restart-Computer -Force -computername $pc
start-sleep 200 
$object = gwmi win32_operatingsystem -ComputerName $pc | select csname, @{LABEL='LastBootUpTime';EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}} 
$report += $object

}
else
{
write-host " can't find $pc"}
}
$report | Export-csv C:\Users\rbarrios\Desktop\MIGRA09.csv
start excel.exe "C:\Users\rbarrios\Desktop\MIGRA09.csv"