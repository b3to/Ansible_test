net stop wuauserv  
CD %Windir%          
rem CD SoftwareDistribution          
rem DEL /F /S /Q Download
rd /s SoftwareDistribution
net start wuauserv