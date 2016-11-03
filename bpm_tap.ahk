#SingleInstance Force

NameString    := "BPM Tapper"
VersionString := "0.10"

Gosub Main

Return

Main:
	Count := -1
	Gui Margin, 5,5
	Gui +ToolWindow
	Gui Font, s20, Lucida Console
	Gui Add, Text, w300 Center vGuiBPM, 0.0
	Gui Font, s9, MS Sans Serif
	Gui Add, Text, wp Center, Tap s ans w according to the beat (Space to Reset)
	Gui Show,, %NameString% %VersionString%
Return

GuiEscape:
GuiClose:
	ExitApp
Return

;#IfWinActive BPM ahk_Class AutoHotkeyGUI
~s::
 
	Count ++

	Tap1 := Tap2
	Tap2 := A_TickCount
	
	If( Count = 0 )
		Return
	
	Sum += Tap2-Tap1

	Avg := Sum / Count
	BPM := Round( 60 / ( Avg / 1000 ), 1 )

	GuiControl,,GuiBPM,%BPM%	
Return

~d::
 
	Count ++

	Tap1 := Tap2
	Tap2 := A_TickCount
	
	If( Count = 0 )
		Return
	
	Sum += Tap2-Tap1

	Avg := Sum / Count
	BPM := Round( 60 / ( Avg / 1000 ), 1 )

	GuiControl,,GuiBPM,%BPM%	
Return

~Space::
NumpadEnter::
	Count := -1
	Sum := 0
	GuiControl,,GuiBPM,0
Return