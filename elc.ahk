#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileAppend, , %A_AppData%/elc/clip.ini
; Reading Info From ini
<!<^z::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo1
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 1
Sleep, 1000
ToolTip
Return

<!<^x::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo2
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 2
Sleep, 1000
ToolTip
Return

<!<^c::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo3
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 3
Sleep, 1000
ToolTip
Return

<!z::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo4
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 4
Sleep, 1000
ToolTip
Return

<!x::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo5
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 5
Sleep, 1000
ToolTip
Return

<!c::
IniRead, clipboardContent, %A_AppData%/elc/clip.ini, ClipInfo,ClipInfo6
Clipboard = %clipboardContent%
ToolTip, Clipboard Retreaved From Slot 6
Sleep, 1000
ToolTip
Return
; Open GUI
<!<^m::
MouseGetPos, x , y
Gui, Add, Button, x12 y9 w80 h70 gslotOne, Slot 1
Gui, Add, Button, x12 y89 w80 h70 gslotTwo, Slot 2
Gui, Add, Button, x102 y9 w80 h70 gslotThree, Slot 3
Gui, Add, Button, x102 y89 w80 h70 gslotFour, Slot 4
Gui, Add, Button, x192 y9 w80 h70 gslotFive, Slot 5
Gui, Add, Button, x192 y89 w80 h70 gslotSix, Slot 6
Gui, Add, Text, x282 y19 w80 h140 , Cick A Slot To Save To
Gui, Show, x%x% y%y% h164 w367, ELC Slot Selector
Return
;close GUI
GuiClose:
Gui, destroy
Return
;Write To The ini File
slotOne:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo1
Gui, destroy
Return

slotTwo:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo2
Gui, destroy
Return

slotThree:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo3
Gui, destroy
Return

slotFour:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo4
Gui, destroy
Return

slotFive:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo5
Gui, destroy
Return

slotSix:
IniWrite, %clipboard%, %A_AppData%/elc/clip.ini, ClipInfo, ClipInfo6
Gui, destroy
Return