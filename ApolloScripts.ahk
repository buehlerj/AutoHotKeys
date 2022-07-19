#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Start Dev Servers (ctrl + shift + alt + g)
^+!g::
	; Core
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-Core

	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-Core
	Sleep, 2000
	Send ng s {enter}

	; Clinical
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-Clinical

	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-Clinical
	Sleep, 2000
	Send ng s {enter}

	; Mobile
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-mobile
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-mobile
	Sleep, 2000
	; Send npm run serve-android {enter}
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-mobile
	Sleep, 2000
	; Send npm run serve-ios {enter}
	
	; Dataservices
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\dataservices

	; Database
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-database

	; Capture
	Run,  D:\Program Files\Git\git-bash.exe, C:\Users\jbuehler\workspace\arcc-capture-v2

	Run, explorer "C:\Users\jbuehler\Documents\workspace"
Return

; Use Apollo IP with ctrl + shift + i
^+i::
	Send \\192.168.112.
Return
