#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CurrentKey := 0

*s::
if (CurrentKey = 0) {
    SetKeyDelay -1
    Send {Blind}{s Down}
    CurrentKey := 1
}
return

*s up::
SetKeyDelay -1
Send {Blind}{s Up}
return

*d::
if (CurrentKey = 1) {
    SetKeyDelay -1
    Send {Blind}{d Down}
    CurrentKey := 0
}
return

*d up::
SetKeyDelay -1
Send {Blind}{d Up}
return