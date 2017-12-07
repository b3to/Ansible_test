
(Get-WmiObject Win32_Process -ComputerName reception-tv1 | ?{ $_.ProcessName -match "vlc" }).Terminate()

Get-ChildItem \\reception-tv1\c$\users\setup\desktop\newemployees -Include *.mp4 -Recurse | foreach ($_) {Remove-Item $_.FullName}

Get-ChildItem -path \\jdachelet-w10\c$\users\jdachelet\desktop\newemployees -Filter *.mp4 -Recurse | Copy-Item -Destination \\reception-tv1\c$\users\setup\desktop\newemployees

#Restart-Computer -Force -ComputerName reception-tv1

#invoke-command -computername reception-tv1 -scriptblock {Start-Process \\reception-tv1\C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\animoto.bat}