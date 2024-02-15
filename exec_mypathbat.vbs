Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c mypath.bat", 0, False
Set WshShell = Nothing
