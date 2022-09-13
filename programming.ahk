#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Copy Line using ctrl + alt + c
^+!c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{down}{shift up}
	Send, {ctrl down}cvv{ctrl up}
	Send, {up}{home}
	clipboard = %ClipboardTempVar%
return

; Ready to merge using shift + alt + r
+!r::
	Send, Looks nominal to me, RTM :thumbsup:
return
