#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

; simple input/output

Gui, Show , w210 h320, SutterMill

; basic elements
;0xFE81D2
Gui, Add, Text, x20 y10 w90 Left,0xFE81D2
Gui, Add, Edit, x20 y30 w180 h19 vTrimD Left, 
Gui, Add, Button, x20 y50 w80 h20 vWRITE0 gTRIMDw ,Write
Gui, Add, Button, x120 y50 w80 h20 vREAD0 gTRIMDr ,Read
;0xFE800B
Gui, Add, Text, x20 y70 w90 Left,0xFE800B
Gui, Add, Edit, x20 y90 w180 h19 vTrimB Left, 
Gui, Add, Button, x20 y110 w80 h20 vWRITE1 gTRIMBw ,Write
Gui, Add, Button, x120 y110 w80 h20 vREAD1 gTRIMBr ,Read
;0xFEA05C
Gui, Add, Text, x20 y130 w90 Left,0xFEA05C
Gui, Add, Edit, x20 y150 w180 h19 vTrimC Left, 
Gui, Add, Button, x20 y170 w80 h20 vWRITE2 gTRIMCw ,Write
Gui, Add, Button, x120 y170 w80 h20 vREAD2 gTRIMCR ,Read
;0xFEA068
Gui, Add, Text, x20 y190 w90 Left,0xFEA068
Gui, Add, Edit, x20 y210 w180 h19 vTrimO Left, 
Gui, Add, Button, x20 y230 w80 h20 vWRITE3 gTRIMOw ,Write
Gui, Add, Button, x120 y230 w80 h20 vREAD3 gTRIMOR ,Read
;0xFEA06C
Gui, Add, Text, x20 y250 w90 Left,0xFEA06C
Gui, Add, Text, x20 y270 w180 h19 Left,00 FF
Gui, Add, Button, x20 y290 w80 h20 vWRITE4 gTRIMZw ,Write
Gui, Add, Button, x120 y290 w80 h20 vREAD4 gTRIMZR ,Read
return

TRIMDw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE81D2{Enter}%TrimD%{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMDr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE81D2{Enter}6{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}


TRIMBw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE800B{Enter}%TrimB%{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMBr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE800B{Enter}2{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMCw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA05C{Enter}%TrimC%{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMCr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA05C{Enter}2{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMOw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA068{Enter}%TrimO%{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMOr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA068{Enter}2{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMZw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA06C{Enter}00 FF{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMZr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFEA06C{Enter}2{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

Test:
Gui, Submit, NoHide
RunOrActivate("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
send, %TrimB%
return

GuiClose: 
ExitApp
return

RunOrActivate(Target, WinTitle = "")
{
	; Get the filename without a path
	SplitPath, Target, TargetNameOnly

	Process, Exist, %TargetNameOnly%
	If ErrorLevel > 0
		PID = %ErrorLevel%
	Else
		Run, %Target%, , , PID

	; At least one app (Seapine TestTrack wouldn't always become the active
	; window after using Run), so we always force a window activate.
	; Activate by title if given, otherwise use PID.
	If WinTitle <> 
	{
		SetTitleMatchMode, 2
		WinWait, %WinTitle%, , 3
		TrayTip, , Activating Window Title "%WinTitle%" (%TargetNameOnly%)
		WinActivate, %WinTitle%
	}
	Else
	{
		WinWait, ahk_pid %PID%, , 3
		TrayTip, , Activating PID %PID% (%TargetNameOnly%)
		WinActivate, ahk_pid %PID%
	}


	SetTimer, RunOrActivateTrayTipOff, 1500
}

; Turn off the tray tip
RunOrActivateTrayTipOff:
	SetTimer, RunOrActivateTrayTipOff, off
	TrayTip
Return