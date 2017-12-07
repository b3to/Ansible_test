set-location -path C:\Users\rbarrios\Desktop\vids\

$fileItems = Get-childitem -filter *.mp4

start-process “C:\Program Files (x86)\VideoLAN\vlc\vlc.exe" /f  -filepath *.mp4

