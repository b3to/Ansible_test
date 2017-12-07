$pcs = Get-Content 'C:\SCR1PT5\pcs.txt'

$value = foreach ($pc in $pcs){

test-path -path "\\$pc\C$\aw\maya2018"
}

$value + $pc