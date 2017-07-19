; AHK rapid click script by Rob Chiocchio
; https://github.com/RobethX/AutoHotKey-Scripts
; Copyright (c) 2017 Rob Chiocchio

#SingleInstance force

ClickDelay = 50

NumpadAdd::
ClickDelay = %ClickDelay% - 5
if (ClickDelay < 5) {
	ClickDelay = 5
}

NumpadSub::
ClickDelay = %ClickDelay% + 5


if NOT ErrorLevel {
    NumpadEnter::
		MouseClick,left
		sleep,%ClickDelay%
	Return
}
