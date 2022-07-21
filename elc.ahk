#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
loopTime = 1
<!<^c::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, iniinfo,info1
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved
Sleep, 1000
ToolTip
Return
<!<^m::
IniWrite, %Clipboard%, %A_AppData%/elc/clip.ini, iniinfo,info1
ToolTip, Clipboard Submited
Sleep, 1000
ToolTip
Return

