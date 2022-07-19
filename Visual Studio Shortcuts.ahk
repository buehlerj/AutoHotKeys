WorkspaceENV = D:\Users\Jeffrey\Documents\Inetpub


; Rebuild using ctrl + shift + r
^+r::
	Send, !BR
return


; Debug using ctrl + shift + d
^+d::
	Send, !Dpw3wp{enter}
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


; Publish using ctrl + shift + p
^+p::
	Send, !Bh{enter}
return


; Try Catch using ctrl + shift + alt + the
^+!t::
	Send,			try`n
	Send,            {{}`n`n
	Send,            {}}`n
	Send,            catch (Exception exception)`n
	Send,            {{}`n
	Send,                AppendToLog(exception.Message);`n
	Send,            {}}
	Send,			{Up}{Up}{Up}{Up}{Up}
return
