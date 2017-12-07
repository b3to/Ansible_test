$machines = Get-Content C:\SCR1PT5\pcs.txt

foreach ($pc in $machines){
start-sleep 30
Restart-Computer -Force -computername $pc
}