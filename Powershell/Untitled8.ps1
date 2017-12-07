$pcs = gc C:\SCR1PT5\todelete.txt

foreach($pc in $pcs){

Get-ADComputer "$pc"  -Properties *  | Sort LastLogonDate | FT Name, LastLogonDate -Autosize #| Out-File C:\Temp\ComputerLastLogonDate.txt
}
