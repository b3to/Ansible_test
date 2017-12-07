$names = Get-content "C:\Scr1pt5\builds.txt"

foreach ($name in $names)
{


  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue)
  {
   Write-Host "$name,up" >> C:\Scr1pt5\pcisresponding.txt
  
  }

  #$up| Out-File C:\Scr1pt5\pcisresponding.txt

  else
  {
   Write-Host "$name,down" >> C:\Scr1pt5\pcisdown.txt
    #Remove-ADComputer -Identity $name -Confirm:$false
   
  }
  
}