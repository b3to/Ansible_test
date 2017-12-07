$machines = Get-Content C:\SCR1PT5\pcs.txt

foreach ($pc in $machines){
#Get-WmiObject win32_networkadapterconfiguration | select description, macaddress #| select-string -pattern "Broadcom"
Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'True'" -ComputerName $pc <#|Select PSComputername,
#@{Name = "IPAddress";Expression = {
#[regex]$rx = "(\d{1,3}(\.?)){4}"
#$rx.matches($_.IPAddress).Value}},MACAddress#> |Export-Csv "C:\SCR1PT5\macs.csv"
} 