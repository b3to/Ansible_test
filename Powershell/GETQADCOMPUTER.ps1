add-pssnapin quest.activeroles.admanagement
Import-Module activedirectory

$pcs = gc 'C:\SCR1PT5\migra01.txt'
$reporrt = @() 
$getadc = @()

#cat C:\SCR1PT5\pcstorestart.txt|


    ForEach($pc in $pcs)
     {
     $npc = "$pc"
     add-content $pcs "-w7"
     $getadc = get-ADComputer -filter 'Name -like "*$npc*"' -searchbase "DC=a2m.com" -Server "a2m.com" | select Name 
      #write-host $getadc
     $reporrt += $getadc
     }
    $reporrt | out-file C:\SCR1PT5\pcnames.txt