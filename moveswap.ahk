#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#UseHook On


#IfWinActive, DARK SOULS,
{
f1::
{
SendInput {G down}
sleep, 50
SendInput {G up}
sleep, 50
SendInput {Enter down}
sleep, 50
SendInput {Enter up}
sleep, 4950
SendInput {LShift down}
sleep, 25
SendInput {LShift up}
sleep, 25
SendInput {End down}
sleep, 200
SendInput {End up}
sleep, 25
SendInput {Right down}
sleep, 25
SendInput {Right up}{Enter down}
sleep, 25
SendInput {Enter up}
sleep, 25
SendInput {Down down}
sleep, 25
SendInput {Down up}
sleep, 25
SendInput {Enter down}
sleep, 25
SendInput {Enter up}
sleep, 100
SendInput {Down down}
sleep, 25
SendInput {Down up}
sleep, 25
SendInput {Enter down}
sleep, 25
SendInput {Enter up}


return
}
}