New-Item "D:\production" -type directory
New-PSDrive -Persist  -Name Z -PSProvider FileSystem -Root D:\production -scope Global
New-SmbShare -Name "Production" -path "D:\production" -FullAccess everyone