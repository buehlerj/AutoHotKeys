; Copy Line using ctrl + shift + c
^+c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{end}{shift up}
	Send, {ctrl down}cv{ctrl up}
	Send, {enter}
	Send, {ctrl down}v{ctrl up}
	Send, {up}{end}
	clipboard = %ClipboardTempVar%
return

^!c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{end}{shift up}
	Send, {ctrl down}cv{ctrl up}
	Send, {enter}
	Send, {ctrl down}v{ctrl up}
	Send, {home}{right}/
	Send, {up}{end}
	clipboard = %ClipboardTempVar%
return
