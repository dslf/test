#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
#UseHook On

;SetIcon, D:\Games\SteamLibrary\steamapps\common\Dark Souls Prepare to Die Edition\DATA\DARKSOULS.exe
Menu, Tray, Icon, shell32.dll, 44

f5::
ifWinActive, DARK SOULS ; Save (copy save file to backup folder) 
  {
		SoundBeep
    FormatTime, TimeString,, _S_(MM-dd_HH-mm-ss)
    FileCopy, D:\temp\dark-souls\DS30000.sl2, D:\temp\dark-souls\DS30000.sl2%TimeString%, 1
    FileCopy, C:\Users\laque\AppData\Roaming\DarkSoulsIII\01100001012e6189\DS30000.sl2, D:\temp\dark-souls, 1
    return
  }

f6::
ifWinActive, DARK SOULS ; Load (copy save file from backup to save folder)
	{
		SoundBeep
		FormatTime, TimeString,, _L_(MM-dd_HH-mm-ss)
    FileCopy, C:\Users\laque\AppData\Roaming\DarkSoulsIII\01100001012e6189\DS30000.sl2, D:\temp\dark-souls\DS30000.sl2%TimeString%, 1
    FileCopy, D:\temp\dark-souls\DS30000.sl2, C:\Users\laque\AppData\Roaming\DarkSoulsIII\01100001012e6189\, 1
		return
	}