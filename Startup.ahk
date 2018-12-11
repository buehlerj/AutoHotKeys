#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^+!u::
	Send {Volume_Up}
return

^+!d::
	Send {Volume_Down}
return

!p::
	Run, control
	Sleep, 1000
	Send, power {enter}
return

; Toggle Mic Mute
^+!m::
	SoundSet, +1, MASTER, mute,4 ;4 was my mic id number use the code below the dotted line to find your mic id. you need to replace all 4's  <---------IMPORTANT
	SoundGet, master_mute, , mute, 4

	ToolTip, Mute %master_mute% ;use a tool tip at mouse pointer to show what state mic is after toggle
	SetTimer, RemoveToolTip, 1000
	return

	RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	ToolTip
return
