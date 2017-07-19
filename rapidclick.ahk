; AHK rapid click script by Rob Chiocchio
; https://github.com/RobethX/AutoHotKey-Scripts
; Copyright (c) 2017 Rob Chiocchio

#SingleInstance force

EnvGet, AppData, LOCALAPPDATA
ConfigIni = %AppData%\Rob-AHK-Scripts\config.ini

IfNotExist, %AppData%\Rob-AHK-Scripts
	FileCreateDir, %AppData%\Rob-AHK-Scripts
	
IniRead, ClickDelay, %ConfigIni%, Rapid Click, ClickDelay, 50

if NOT ErrorLevel {
    NumpadEnter::
		MouseClick,left
		sleep,%ClickDelay%
	Return

	NumpadAdd::
		ClickDelay := ClickDelay - 5
		if (ClickDelay < 5) {
			ClickDelay := 5
		}
		IniWrite, %ClickDelay%, %ConfigIni%, Rapid Click, ClickDelay 
	Return

	NumpadSub::
		ClickDelay := ClickDelay + 5
		IniWrite, %ClickDelay%, %ConfigIni%, Rapid Click, ClickDelay 
	Return
}
