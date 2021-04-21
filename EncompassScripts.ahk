WorkspaceENV = D:\Users\Jeffrey\Documents\Inetpub


; Updates all ECP versions using SVN. Need svn_update.bat to work
^+u::
	Run, %WorkspaceENV%\svn_update.bat
Return


; Adds a placeholder inline so that you can make a breakpoint wherever you want
^+p::
	Send, Dim placeholder As Integer = 0
	Send, {f9}
return

; Opens, builds, and closes ECP_Root
^+!e::
	Run, %WorkspaceENV%\ECP_Root\ECP_Root.sln
	Sleep, 5000
	Send, {alt}BR
	Sleep, 3000
	Send, {alt down}{f4}{alt up}
return

