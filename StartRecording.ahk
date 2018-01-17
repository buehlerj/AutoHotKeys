#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Start a recording
^+m::
	Run, C:\Program Files (x86)\Audacity\audacity.exe
	Sleep, 1500
	Send, {shift down}r{shift up}
	Send, {rwin down}{down}{down}{rwin up}
Return
