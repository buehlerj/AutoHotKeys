; Copy Line using ctrl + shift + c
^+c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{end}{shift up}
	Send, {ctrl down}cv{ctrl up}
	Send, {enter}
	Send, {ctrl down}v
	Send, {up}{down}{ctrl up}
	Send, {up}{end}
	clipboard = %ClipboardTempVar%
return

^!c::
	ClipboardTempVar := clipboard
	Send, {home}{home}
	Send, {shift down}{end}{shift up}
	Send, {ctrl down}cv{ctrl up}
	Send, {enter}
	Send, {shift down}{home}{shift up}
	Send, {ctrl down}v{ctrl up}
	Send, {home}{right}/
	Send, {up}{end}
	clipboard = %ClipboardTempVar%
return

^!+c::
	Send, console.log("");
	SEND, {left}{left}{left}
return

^+r::
  Send, Looks good to me{!} RTM {:}thumbsup{:}
return
