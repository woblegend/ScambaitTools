﻿#Persistent
#NoTrayIcon
SetBatchLines -1
Random, justafewmoreminutes, 7500, 12000
sleep %justafewmoreminutes%
sleep 1000
loop
{
i := Ceil(0.01*%A_Index%)
if (%A_Index% > 50) {
DetectHiddenWindows, on
}
winget, winlist, list
loop, %winlist%
{
wid := winlist%A_Index%
WinShow, ahk_id %wid%
WinGet, conlist, ControlList, ahk_id %wid%
WinGetPos, wX, wY,,, ahk_id %wid%
Loop, Parse, conlist, `n, `r
{
ControlGetPos, cX, cY, cW, cH, %A_LoopField%, ahk_id %wid%
Random, rX, -1, 1
Random, rY, -1, 1
ControlMove, %A_LoopField%, cX+rX, cY+rY,,, ahk_id %wid%
}
}
}
Q & m::
Exit:
GuiClose:
Gui,Destroy
ExitApp
Return