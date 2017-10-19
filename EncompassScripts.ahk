WorkspaceENV = D:\Users\Jeffrey\Documents\Inetpub


; Rebuild using ctrl + shift + r
^+r::
	Send, !BR
return


; Debug using ctrl + shift + d
^+d::
	Send, !Dpw3wp{enter}
return

; Copy Line using ctrl + shift + c
^+c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{down}{shift up}
	Send, {ctrl down}cvv{ctrl up}
	Send, {up}{up}{end}
	clipboard = %ClipboardTempVar%
return


; Opens, builds, and closes ECP_Root
^+!e::
	Run, %WorkspaceENV%\ECP_Root\ECP_Root.sln
	Sleep, 5000
	Send, {alt}BR
	Sleep, 5000
	Send, {alt down}{f4}{alt up}
return


; Updates all ECP versions using SVN. Need svn_update.bat to work
^+u::
	Run, %WorkspaceENV%\svn_update.bat
Return


; Adds a placeholder inline so that you can make a breakpoint wherever you want
^+p::
	Send, Dim placeholder As Integer = 0
	Send, {f9}
return


; While in debug mode, have the debugger jump to the selected spot
^+g::
	Send, {appskey}
	Send, n
return

; While in debug mode, watch the variable you have selected
^+w::
	Send, {appskey}
	Send, w
return
