' Create FileSystemObject
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Create Shell object
Set WshShell = CreateObject("WScript.Shell")

' Get the directory of the current VBScript file
strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)

' Check if the directory is already in the PATH variable
If InStr(1, WshShell.Environment("User").Item("PATH"), strScriptPath, vbTextCompare) = 0 Then
    ' Append the directory to the PATH variable
    WshShell.Environment("User").Item("PATH") = strScriptPath & ";" & WshShell.Environment("User").Item("PATH")
End If
