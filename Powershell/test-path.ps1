$Items = Get-Content C:\SCR1PT5\pcnames.txt
$compu = import-csv C:\SCR1PT5\pcnames.csv

$pcs= ForEach ($Item In $ITems)
{
    $Value = "*$ITem*"
     Get-ADComputer -Filter {Name -Like $Value} | Select Name
}
$pcs | export-csv -path "C:\SCR1PT5\pcnames.csv"

