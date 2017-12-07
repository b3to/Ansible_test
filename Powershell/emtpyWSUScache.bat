net stop wuauserv
net stop bits
REG DELETE “HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate” /v AccountDomainSid /f
REG DELETE “HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate” /v PingID /f
REG DELETE “HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate” /v SusClientId /f
RD /s /q %windir%\SoftwareDistribution
net start wuauserv
net start bits
wuauclt /resetauthorization /detectnow