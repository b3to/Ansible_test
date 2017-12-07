$pcs = (gc 'C:\SCR1PT5\pcstorestart.txt') -split ' '
#$pcs = gc 'C:\SCR1PT5\pcstorestart.txt' |  ConvertFrom-String -Delimiter " " -PropertyNames Prenom, Nom
#$separator = ' '
#$option = [system.stringsplitoptions]::RemoveEmptyEntries
$pcnames = $pcs.substring(0) + $pcs.substring(1)
#foreach P1 

#write-host $pcs

write-host $pcnames