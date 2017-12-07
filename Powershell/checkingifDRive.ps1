$testlocation = Test-Path '\\jmonastier-w7\d$\production\'
while ($testlocation)
{
clear
write-host " it's still there"
$a = new-object -comobject wscript.shell
$b = $a.popup("It's still there")#"Test Message Box",1)
start-sleep 30
}
        $shell = New-Object -ComObject "Shell.Application"
        $shell.minimizeall()
        start-sleep 3  # This is where the pop-up would be called.  It is just a placeholder.
        $pop = New-Object -ComObject WScript.Shell
        $answer = $pop.Popup("OK, the Disk is gone again !!!!!!")

        $shell = New-Object -ComObject "Shell.Application"
        $shell.undominimizeall()
        