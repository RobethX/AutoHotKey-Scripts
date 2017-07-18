; AHK spam script by Rob Chiocchio
; https://github.com/RobethX/AutoHotKey-Scripts
; Copyright (c) 2017 Rob Chiocchio

SetKeyDelay, 0

InputBox, spam, Rob's Spammer, What would you like to spam? (enter - spam and esc - stop), , 200, 130
if NOT ErrorLevel {
    Enter::
		send,%spam%
		sleep,3
		send,{Enter}
		sleep,1
	Return
}
	else {
	ExitApp
}

Pause::Suspend 
Esc::ExitApp
