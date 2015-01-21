# Create a TaskManager shortcut in the current user's startup dir. Make the shortcut minimized.
$WshShell = New-Object -ComObject WScript.Shell
$taskMgrShortcutPath="$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\TaskMgr.lnk"
$shortcut = $WshShell.CreateShortcut($taskMgrShortcutPath)
$shortcut.TargetPath = "TaskMgr"
$shortcut.WorkingDirectory = "$env:WINDIR\system32"
$shortcut.WindowStyle = 7 #Minimized
$shortcut.Save()
Invoke-Item $taskMgrShortcutPath

