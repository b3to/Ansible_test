cd C:\psTOOLS

set /p id="Enter ID: "
psexec \\%id%-w7 net localgroup Utilisateurs du Bureau à distance "a2m\%id%" /ADD

psexec \\%id%-w7 net localgroup "Remote Desktop Users" "a2m\%id%" /ADD

cd c:\SCR1PT5