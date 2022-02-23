#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Ayeo (ctrl + shift + alt + a)
^+!a::
	Send Ayeo :fire: 
return

; Shrug (ctrl + shift + alt + s)
^+!s::
	Send ¯\_(ツ)_/¯
return

; If you know what I mean ;) (ctrl + shift + alt + i)
^+!i::
	Send if you know what I mean `;)
return
