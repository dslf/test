#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#]::
SoundBeep
Run, cmd /c "type z:\now_play.txt >> C:\Users\laque\OneDrive\notes\good_tracks_from_online_radio.txt", ,Hide
return