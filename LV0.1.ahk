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
;0xFE8E2
Gui, Add, Text, x20 y130 w90 Left,0xFE80E2
Gui, Add, Edit, x20 y150 w180 h19 vTrimE Left, 
Gui, Add, Button, x20 y170 w80 h20 vWRITE2 gTRIMBw ,Write
Gui, Add, Button, x120 y170 w80 h20 vREAD2 gTRIMBr ,Read
;Average
Gui, Add, Text, x20 y190 w90 Left,Average (Hit V)
Gui, Add, Button, x20 y210 w80 h40 vAv0 gAvg0 ,Average (Cells 34-52)
Gui, Add, Button, x120 y210 w80 h40 vAv1 gAvg1 ,Average (Cells 35-53)
;Zues
Gui, Add, Button, x20 y250 w180 h20 vZeu gZeus ,SuttersMill_BB_I_V_Zeus4B.xml
;Sense Gain
Gui, Add, Button, x20 y270 w40 h40 vRV gRV ,RV
Gui, Add, Button, x65 y270 w40 h40 vEnRV gEnRV ,EnRV
Gui, Add, Button, x110 y270 w40 h40 vRA gRA ,RA
Gui, Add, Button, x155 y270 w40 h40 vLV gLV ,LV
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

TRIMEw:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE80E2{Enter}%TrimE%{Enter}
send, {LShift down}{Tab 8}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

TRIMEr:
{
Gui, Submit, NoHide
RunOrActivate("C:\SWTools\Hw Dev Tools\Software Tools\Product Test Platform\ProductTestPlatform.exe")
send, 0xFE80E2{Enter}2{Enter}
send, {LShift down}{Tab 11}{LShift Up}
sleep, 1000
send, {Enter}
sleep, 1000 
send, {Tab 5}
return
}

Avg0:
{
Gui, Submit, NoHide
Keywait, v, D
send, {Backspace}
send, =AVERAGE(C34,C36,C38,C40,C42,C44,C46,C48,C50,C52){Enter}
return
}

Avg1:
{
Gui, Submit, NoHide
Keywait, v, D
send, {Backspace}
send, =AVERAGE($C$35,$C$37,$C$39,$C$41,$C$43,$C$45,$C$47,$C$49,$C$51,$C$53)
return
}

Zeus:
{
RunOrActivate("C:\SWTools\Hw Dev Tools\Product Test Releases\Ellipse Quad\Characterization\Sequences\SuttersMill_BB_I_V_Zeus4B.xml")
send, {Home}{PgUp 5}
send, {LControl down}f{LControl}
sleep, 1000
send, 0xFE81D4{Tab 6}{Enter}{Tab 4}{Enter}{down}{End}{Left 4}{Backspace 2}
send, %TrimD%{Backspace 9}{Left 2}{Backspace 6}
send, {down 4}{End}{Left 4}{Backspace 2}
send, %TrimD%{Backspace 6}{Left 2}{Backspace 9}
send, {down 13}{End}{Left 4}{Backspace 2}
send, %TrimD%{Backspace 15}
send, {down 4}{End}{Left 4}{Backspace 2}
send, %TrimD%{Backspace 12}{left 2}{Backspace 3}
send, {down 13}{End}{Left 4}{Backspace 2}
send, %TrimD%{Backspace 3}{Left 2}{Backspace 12}
send, {down 4}{End}{Left 4}{Backspace 2}
send, %TrimD%{Left 2}{Backspace 15}
send, {down 13}{End}{Left 4}{Backspace 2}
send, %TrimB%{Backspace 3}
send, {down 4}{End}{Left 4}{Backspace 2}
send, %TrimB%{left 2}{Backspace 3}
WinClose
return
}

RV:
{
Keywait, v, D
send, {Backspace}
send, Sensing RV - V_in = 5 {Enter}
send, MIN{Tab}MAX{Tab}PRE-GAIN{Tab}GAIN{Enter}
send, =MIN($C:$C){Tab}=MAX($C:$C){Tab}=($E$3-$D$3)/5{Tab}=$F$3*2.148{Enter}
return
}

EnRV:
{
Keywait, v, D
send, {Backspace}
send, Sensing RV - V_in = 5 {Enter}
send, MIN{Tab}MAX{Tab}PRE-GAIN{Tab}GAIN{Enter}
send, =MIN($C:$C){Tab}=MAX($C:$C){Tab}=($E$3-$D$3)/2.8{Tab}=$F$3*2.148{Enter}
return
}

RA:
{
Keywait, v, D
send, {Backspace}
send, Sensing RV - V_in = 5 {Enter}
send, MIN{Tab}MAX{Tab}PRE-GAIN{Tab}GAIN{Enter}
send, =MIN($C:$C){Tab}=MAX($C:$C){Tab}=($E$3-$D$3)/2.3{Tab}=$F$3*2.148{Enter}
return
}

LV:
{
Keywait, v, D
send, {Backspace}
send, Sensing RV - V_in = 5 {Enter}
send, MIN{Tab}MAX{Tab}PRE-GAIN{Tab}GAIN{Enter}
send, =MIN($C:$C){Tab}=MAX($C:$C){Tab}=($E$3-$D$3)/4{Tab}=$F$3*2.148{Enter}
return
}

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