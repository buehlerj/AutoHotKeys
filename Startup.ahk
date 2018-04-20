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
