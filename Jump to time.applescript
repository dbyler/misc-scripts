﻿--Tells QuickTime Player to jump to the given time. First prompts for minutes, then seconds--Keep in ~/Library/Scripts/Applications/QuickTime Player/tell application "QuickTime Player"	display dialog "Jump to time (minutes)" default answer "0" buttons {"Cancel", "OK"} default button 2	set theMinutes to ((the text returned of the result) as integer) * 60	display dialog "Jump to time (seconds)" default answer "0" buttons {"Cancel", "OK"} default button 2	set current time of document 1 to (((the text returned of the result) as integer) + theMinutes)end tell