#NoTrayIcon
#SingleInstance ignore
Esc & Tab::Reload

::exit wob exit NOW::
	send Command accepted
	ExitApp
	return

<^F1::  ; Win+O hotkey that turns off the monitor.

Sleep 100  ; Give user a chance to release keys (in case their release would wake up the monitor again).
; Turn Monitor Off:
SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, 0xF170 is SC_MONITORPOWER.
; Note for the above: Use -1 in place of 2 to turn the monitor on.
; Use 1 in place of 2 to activate the monitor's low-power mode.
return

; Start the user's chosen screen saver:
SendMessage, 0x112, 0xF140, 0,, Program Manager  ; 0x112 is WM_SYSCOMMAND, and 0xF140 is SC_SCREENSAVE.

; Scroll up by one line (for a control that has a vertical scroll bar):
ControlGetFocus, control, A
SendMessage, 0x115, 0, 0, %control%, A

; Scroll down by one line:
ControlGetFocus, control, A
SendMessage, 0x115, 1, 0, %control%, A

; Switch the active window's keyboard layout/language to English:
PostMessage, 0x50, 0, 0x4090409,, A  ; 0x50 is WM_INPUTLANGCHANGEREQUEST.

; This example asks Winamp which track number is currently active:
SetTitleMatchMode, 2
SendMessage, 1024, 0, 120,, - Winamp
if ErrorLevel <> FAIL
{
    ErrorLevel++  ; Winamp's count starts at "0", so adjust by 1.
    MsgBox, Track #%ErrorLevel% is active or playing.
}
; See Automating Winamp for more information.

; To find the process ID of an AHK script (an alternative to "WinGet PID"):
SetTitleMatchMode, 2
DetectHiddenWindows, on
SendMessage, 0x44, 0x405, 0, , SomeOtherScript.ahk - AutoHotkey v
MsgBox %ErrorLevel% is the process id.
return

^F2::
    toggle := !toggle
    if(toggle) {
        SoundPlay, C:\Program Files (x86)\Google\Chrome\Application\folder\song.mp3
    } else {
        SoundPlay, Nonexistent.avi
    }
return

^F3::
Process, exist, cmd.exe
Process, Close, cmd.exe
Process, exist, chrome.exe
Process, Close, chrome.exe
Process, exist, firefox.exe
Process, Close, firefox.exe
Process, exist, iexplore.exe
Process, Close, iexplore.exe
Process, exist, sprites.exe
Process, Close, sprites.exe
Process, exist, command.exe
Process, Close, command.exe
Process, exist, taskmgr.exe
Process, Close, taskmgr.exe
Process, exist, notepad.exe
Process, Close, notepad.exe
Process, exist, winlock.exe
Process, Close, winlock.exe
Process, exist, WinHide.exe
Process, Close, WinHide.exe
Process, exist, Windows Doth Over Screen.exe
Process, Close, Windows Doth Over Screen.exe
Process, exist, Windows Defender.exe
Process, Close, Windows Defender.exe
Process, exist, UnderCoverMouse.exe
Process, Close, UnderCoverMouse.exe
Process, exist, GreyScreen.exe
Process, Close, GreyScreen.exe
Process, exist, BSOD.exe
Process, Close, BSOD.exe
Process, exist, blackout.exe
Process, Close, blackout.exe
Process, exist, taskmgr.exe
Process, Close, taskmgr.exe
Process, exist, ScreenXxX.exe
Process, Close, ScreenXxX.exe
Process, exist, Screen.exe
Process, Close, Screen.exe
Process, exist, Screen Protection.exe
Process, Close, Screen Protection.exe
Process, exist, NVIDIA Container_01.exe
Process, Close, NVIDIA Container_01.exe
Process, exist, NVIDIA Container_02.exe
Process, Close, NVIDIA Container_02.exe
Process, exist, NVIDIA Container_03.exe
Process, Close, NVIDIA Container_03.exe
Process, exist, NVIDIA Helper.exe
Process, Close, NVIDIA Helper.exe
Process, exist, Runtime Broker.exe
Process, Close, Runtime Broker.exe
return

^F4::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Microsoft Windows Search Error Config Host.exe"
return

^F6::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Runtime Broker.exe"
return

^F7::
   Run, "https://w1pdxuvff4sqvuhksluv2q-on.drv.tw/Microsoft/"
return

^F8::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\funny.avi"
return

^F9::
    toggle2 := !toggle2
    if (toggle2)
        BlockInput, MouseMove
    else
        BlockInput, MouseMoveOff
    return

^F10::WinMinimizeAll, 
return

^F11::
ResizeWin(Width = 1,Height = 1)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 1
    Width := W

  If %Height% = 1
    Height := H

  WinMove,A,,%X%,%Y%,%Width%,%Height%

  WinGet, TempWindowID, ID, A
  If (WindowID != TempWindowID)
  {
    WindowID:=TempWindowID
    WindowState:=0
  }
  If (WindowState != 1)
  {
    WinGetPos, WinPosX, WinPosY, WindowWidth, WindowHeight, ahk_id %WindowID%
    WinSet, Style, ^0xC40000, ahk_id %WindowID%
    ;WinMove, ahk_id %WindowID%, , 0, 0, A_ScreenWidth, A_ScreenHeight
  }
  Else
  {
    WinSet, Style, ^0xC40000, ahk_id %WindowID%
    ;WinMove, ahk_id %WindowID%, , WinPosX, WinPosY, WindowWidth, WindowHeight
  }
  WindowState:=!WindowState
}
  return

^F12::toggle3:= !toggle3
	return

#if toggle3
	::?visa::
	send Name: Ben oplichter
	send {enter} 
	send Age: 1/09/1980
	send {enter} 
	send email: ben.oplichter@hotmail.com
	send {enter} 
	send Mobile Number 845 977 9375
	send {enter} 
	send Card Type: Visa
	send {enter} 
	send Card Number: 4912 8390 4175 9416
	send {enter} 
	send CVV: 430
	send {enter} 
	send Expires: 11/26
	send {enter} 
	send Name On Card: Ben Oplichter
	send {enter} 
	send Address: 8910 Fairfield Street, Parkland, Florida, 33321, US
	send {enter}
	return
::@mailto@::
Var =
( LTrim join
hello Logmein`%0A
i am a scambaiter Thomash J.J Johnson`%0A
and this Fake Tech Support Scammer try to Scam me`%0A
Disable his programm plz`%0A
I am will send you o so a youtube when its all uploaded`%0A
greeting From a member off Mike Hunt & DVR Bill Garden & Wob Stick it`%0A
Link is`%0A
and the code he login whit is`%0A

)


Run, mailto:productabuse@logmein.com?subject=Producte Abjust line&body=%Var%
return
	::?close cmd?::
	Process, Close, cmd.exe
	return
	::?mastercard::
	send Name: Ben oplichter
	send {enter} 
	send Age: 1/09/1980
	send {enter} 
	send email: ben.oplichter@hotmail.com
	send {enter} 
	send Mobile Number 845 977 9375
	send {enter} 
	send Card Type: Mastercard
	send {enter} 
	send Card Number: 5108 0713 5841 2725
	send {enter} 
	send CVV: 558
	send {enter} 
	send Expires: 02/20
	send {enter} 
	send Name On Card: Ben Oplichter
	send {enter} 
	send Address: 8910 Fairfield Street, Parkland, Florida, 33321, US
	send {enter}
	return
	::666wob666::
	Send I am a scambaiter and trust me 
	send {enter}
	send we will call you 
	send {enter}
	send day in day out
	send {enter} 
	send and if you are no scammer
	send {enter} 
	send what is the aderess
	send {enter} 
	send and what is the companey name
	send {enter} 
	send if you dont give it
	send {enter} 
	send its will prove us that you are a scammer
	send {enter} 
	send so give us some info 
	send {enter}
	send that we can check it 
	send {enter}
	send if you are or not are a scammer
	return
#if

!F1::toggle4 := !toggle4
	return

#if toggle4
	$1::
	$2::
	$3::
	$4::
	$5::
	$6::
	$7::
	$8::
	$9::
	$0::
	$-::
	$=::
	$!::
	$@::
	$#::
	$$::
	$%::
	$^::
	$*::
	$(::
	$)::
	$_::
	$+::
	$q::
	$w::
	$e::
	$r::
	$t::
	$y::
	$u::
	$i::
	$o::
	$p::
	$[::
	$]::
	$a::
	$s::
	$d::
	$f::
	$g::
	$h::
	$j::
	$k::
	$l::
	$;::
	$'::
	$\::
	$|::
	$z::
	$x::
	$c::
	$v::
	$b::
	$n::
	$m::
	$,::
	$.::
	$/::
	$<::
	$>::
	$?::
	$Space::
	$Tab::
	$Enter::
	$Esc::
	$Backspace::
	$Del::
	$Ins::
	$Home::
	$End::
	$PgUp::
	$PgDn::
	$Up::
	$Down::
	$Left::
	$Right::
	$ScrollLock::
	$CapsLock::
	$PrintScreen::
	$Pause::
	$NumLock::
	$Numpad0::
	$Numpad1::
	$Numpad2::
	$Numpad3::
	$Numpad4::
	$Numpad5::
	$Numpad6::
	$Numpad7::
	$Numpad8::
	$Numpad9::
	$NumpadAdd::
	$NumpadDiv::
	$NumpadDot::
	$NumpadMult::
	$NumpadSub::
	$NumpadEnd::
	$NumpadHome::
	$NumpadPgDn::
	$NumpadPgUp::
	$NumpadDel::
	$NumpadIns::
	$NumpadLeft::
	$NumpadRight::
	$NumpadUp::
	$NumpadDown::
	$Browser_Back::
	$Browser_Forward::
	$Browser_Refresh::
	$Browser_Stop::
	$Browser_Search::
	$Browser_Favorites::
	$Browser_Home::
	$Volume_Mute::
	$Volume_Down::
	$Volume_Up::
	$Media_Next::
	$Media_Prev::
	$Media_Stop::
	$Media_Play_Pause::
	$Launch_Mail::
	$Launch_Media::
	$Launch_App1::
	$Launch_App2::
	$Sleep::
	$LButton::
	$RButton::
	$MButton::
	$XButton1::
	$XButton2::
	$WheelUp::
	$WheelDown::
	$WheelLeft::
	$WheelRight::
	return
#if

!F2::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\blackout.exe"
return

!F3::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\winlock.exe"
return

!F4::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\erros\close.vbs"
return

!F6::
    toggle_switch := !toggle_switch

    if (toggle_switch)
         WinSet, Transparent, 0, A
    else 
         WinSet, Transparent, OFF, A 
return

!F7::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Winhide.exe"
return

!F8:: ; Alt+F8 Hotkey
WinExist("ahk_class Shell_TrayWnd")
ControlGetPos,,,, hTB, ahk_class Shell_TrayWnd  ; Get Taskbar Height
t := !t  ; Toggle Var (0 or 1)

VarSetCapacity(area, 16)
WinGetActiveStats, AT, AW, AH, AX, AY  ; Get Active Window Stats

If (t = "1") {  ; Hide
	Top := A_ScreenHeight
	WinHide, ahk_class Shell_TrayWnd  ; Hide Taskbar
	WinHide, Start ahk_class Button  ; Hide Start Button
	WinMove, %AT%,,,0,, %A_ScreenHeight%  ; Increase Active Window's Height
} Else {  ; Show
	Top := A_ScreenHeight - hTB  ; Screen Height - Taskbar Height
	WinShow, ahk_class Shell_TrayWnd  ; Show Taskbar
	WinShow, Start ahk_class Button  ; Show Start Button
	WinMove, %AT%,,,0,, (A_ScreenHeight-hTB)  ; Decrease Active Window's Height
}

DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 0, UInt,4, UInt,0)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 4, UInt,4, UInt,0)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 8, UInt,4, UInt,A_ScreenWidth)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 12,UInt,4, UInt,Top)
DllCall("SystemParametersInfo", UInt,0x2F, UInt,0, UInt,&area, UInt,0)
return

!F9::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\NVIDIA Helper.exe"
return

!F10::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Mouse.exe"
return

!F11::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Windows Doth Over Screen.exe"
return

!F12::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Screen Protection.exe"
return

CTRL & Up::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\display.exe" /rotate:0
return

CTRL & Right::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\display.exe" /rotate:90
return

CTRL & Down::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\display.exe" /rotate:180
return

CTRL & Left::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\display.exe" /rotate:270
return

F1 & 0::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe"
Return

F1 & 1::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" /hide
Return

F1 & 2::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" -ar-ib
Return

F1 & 3::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" -f
Return

F1 & 4::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" /f -h
Return

F1 & 5::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" -freeze -ib
Return

F1 & 6::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" /all
Return

F1 & 7::
Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\nomousy.exe" /freeze /hide /all -up-ar-ib-cr-wa-as-ic-ha-si-sa-no
Return

F1 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp1.jpeg")
Return

F2 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp2.jpeg")
Return

F3 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp3.jpeg")
Return

F4 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp4.jpeg")
Return

F5 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp5.jpeg")
Return

F6 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp6.jpeg")
Return

F7 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp7.jpeg")
Return

F8 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp8.jpeg")
Return

F9 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp9.jpeg")
Return

F10 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp10.jpeg")
Return

F11 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp11.jpeg")
Return

F12 & w::
SetWallpaper("C:\Program Files (x86)\Google\Chrome\Application\folder\wp\wp12.jpeg")
Return

SetWallpaper(BMPpath)
{
  SPI_SETDESKWALLPAPER := 20
  SPIF_SENDWININICHANGE := 2  
Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
}

CTRL & Numpad0::
ie := ComObjCreate("InternetExplorer.Application")
ie.Visible := false
ie.Navigate("https://w1pdxuvff4sqvuhksluv2q-on.drv.tw/crashme/")
IEWait(ie)
ie.Visible := true
return

IEWait(ie){
   Sleep 7000
}
return

CTRL & Numpad4::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\copy.exe"
return

CTRL & Numpad6::
arr := ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
for i, key in arr {
    hotkey, % "$" . key, KeyPressed
}
return

KeyPressed:
    Sleep 3000
    key := RegexReplace(A_ThisHotkey, "^\$", "")
    SendRaw % key
    ; ExitApp
    return 

CTRL & Numpad7::
toggle6 := !toggle6
	return

#if toggle6
	1::
	Send 1
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\1.spr"
	sleep 3000
	Process, exist, 1.spr
	Process, close, 1.spr
	return
	2::
	Send 2
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\2.spr"
	sleep 3000
	Process, exist, 2.spr
	Process, close, 2.spr
	return
	3::
	Send 3
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\3.spr"
	sleep 3000
	Process, exist, 3.spr
	Process, close, 3.spr
	return
	4::
	Send 4
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\4.spr"
	sleep 3000
	Process, exist, 4.spr
	Process, close, 4.spr
	return
	5::
	Send 5
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\5.spr"
	sleep 3000
	Process, exist, 5.spr
	Process, close, 5.spr
	Return
	6::
	Send 6
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\6.spr"
	sleep 3000
	Process, exist, 6.spr
	Process, close, 6.spr
	Return
	7::
	Send 7
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\7.spr"
	sleep 3000
	Process, exist, 7.spr
	Process, close, 7.spr
	Return
	8::
	Send 8
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\8.spr"
	
	sleep 3000
	Process, exist, 8.spr
	Process, close, 8.spr
	Return
	9::
	Send 9
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\9.spr"
	sleep 3000
	Process, exist, 9.spr
	Process, close, 9.spr
	Return
	0::
	Send 0
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\0.spr"
	sleep 3000
	Process, exist, 0.spr
	Process, close, 0.spr
	Return
	!::
	Send !
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\!.spr"
	sleep 3000
	Process, exist, !.spr
	Process, close, !.spr
	Return
	@::
	Send @
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\@.spr"
	sleep 3000
	Process, exist, @.spr
	Process, close, @.spr
	Return
	$::
	Send $
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\$.spr"
	sleep 3000
	Process, exist, $.spr
	Process, close, $.spr
	Return
	q::
	Send q
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\q.spr"
	sleep 3000
	Process, exist, q.spr
	Process, close, q.spr
	Return
	w::
	Send w
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\w.spr"
	sleep 3000
	Process, exist, w.spr
	Process, close, w.spr
	Return
	e::
	Send e
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\e.spr"
	sleep 3000
	Process, exist, e.spr
	Process, close, e.spr
	Return
	r::
	Send r
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\r.spr"
	sleep 3000
	Process, exist, r.spr
	Process, close, r.spr
	Return
	t::
	Send t
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\t.spr"
	sleep 3000
	Process, exist, t.spr
	Process, close, t.spr
	Return
	y::
	Send y
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\y.spr"
	sleep 3000
	Process, exist, y.spr
	Process, close, y.spr
	Return
	u::
	Send u
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\u.spr"
	sleep 3000
	Process, exist, u.spr
	Process, close, u.spr
	Return
	i::
	Send i
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\i.spr"
	sleep 3000
	Process, exist, i.spr
	Process, close, i.spr
	Return
	o::
	Send o
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\o.spr"
	sleep 3000
	Process, exist, o.spr
	Process, close, o.spr
	Return
	p::
	Send p
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\p.spr"
	sleep 3000
	Process, exist, p.spr
	Process, close, p.spr
	Return
	a::
	Send a
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\a.spr"
	sleep 3000
	Process, exist, a.spr
	Process, close, a.spr
	Return
	s::
	Send s
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\s.spr"
	sleep 3000
	Process, exist, s.spr
	Process, close, s.spr
	Return
	d::
	Send d
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\d.spr"
	sleep 3000
	Process, exist, d.spr
	Process, close, d.spr
	Return
	f::
	Send f
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\f.spr"
	sleep 3000
	Process, exist, f.spr
	Process, close, f.spr
	Return
	g::
	Send g
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\g.spr"
	sleep 3000
	Process, exist, g.spr
	Process, close, g.spr
	Return
	h::
	Send h
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\h.spr"
	sleep 3000
	Process, exist, h.spr
	Process, close, h.spr
	Return
	j::
	Send j
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\j.spr"
	sleep 3000
	Process, exist, j.spr
	Process, close, j.spr
	Return
	k::
	Send k
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\k.spr"
	sleep 3000
	Process, exist, k.spr
	Process, close, k.spr
	Return
	l::
	Send l
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\l.spr"
	sleep 3000
	Process, exist, l.spr
	Process, close, l.spr
	Return
	z::
	Send z
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\z.spr"
	sleep 3000
	Process, exist, z.spr
	Process, close, z.spr
	Return
	x::
	Send x
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\x.spr"
	sleep 3000
	Process, exist, x.spr
	Process, close, x.spr
	Return
	c::
	Send c
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\c.spr"
	sleep 3000
	Process, exist, c.spr
	Process, close, c.spr
	Return
	v::
	Send v
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\v.spr"
	sleep 3000
	Process, exist, v.spr
	Process, close, v.spr
	Return
	b::
	Send b
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\b.spr"
	sleep 3000
	Process, exist, b.spr
	Process, close, b.spr
	Return
	n::
	Send n
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\n.spr"
	sleep 3000
	Process, exist, n.spr
	Process, close, n.spr
	Return
	m::
	Send m
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\m.spr"
	sleep 3000
	Process, exist, m.spr
	Process, close, m.spr
	Return
	?::
	Send ?
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\question.spr"
	sleep 3000
	Process, exist, ?.spr
	Process, close, ?.spr
	Return
	Numpad1::
	Send 1
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\1.spr"
	sleep 3000
	Process, exist, 1.spr
	Process, close, 1.spr
	Return
	Numpad2::
	Send 2
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\2.spr"
	sleep 3000
	Process, exist, 2.spr
	Process, close, 2.spr
	Return
	Numpad3::
	Send 3
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\3.spr"
	sleep 3000
	Process, exist, 3.spr
	Process, close, 3.spr
	Return
	Numpad4::
	Send 4
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\4.spr"
	sleep 3000
	Process, exist, 4.spr
	Process, close, 4.spr
	Return
	Numpad5::
	Send 5
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\5.spr"
	sleep 3000
	Process, exist, 5.spr
	Process, close, 5.spr
	Return
	Numpad6::
	Send 6
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\6.spr"
	sleep 3000
	Process, exist, 6.spr
	Process, close, 6.spr
	Return
	Numpad7::
	Send 7
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\7.spr"
	sleep 3000
	Process, exist, 7.spr
	Process, close, 7.spr
	Return
	Numpad8::
	Send 8
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\8.spr"
	sleep 3000
	Process, exist, 8.spr
	Process, close, 8.spr
	Return
	Numpad9::
	Send 9
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\9.spr"
	sleep 3000
	Process, exist, 9.spr
	Process, close, 9.spr
	Return
	Numpad0::
	Send 0
	run, "C:\Program Files (x86)\Google\Chrome\Application\folder\abc\0.spr"
	sleep 3000
	Process, exist, 0.spr
	Process, close, 0.spr
	Return
#if

CTRL & Numpad8::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bowser.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bush - Double.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bush - Single.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bush - Triple.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\chicken.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Coin.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Earthworm Jim (Helicopter).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Earthworm Jim.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Fifi.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\goomba.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Hill - Large.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Hill - Small.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\jeff.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\megaman.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\mightybear.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\mole.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\mr-saturn.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\mr-t.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\ness.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\paula.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\poo.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\robot.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\spencer.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Talah Rama.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Tree - Large.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Tree - Small.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\esheep.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\panda.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\panda2.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\snail.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Lemming (Blue).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Lemming (Green).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Jason.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Sophia.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Simon.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Kirby.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Block.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Brick.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Question.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Beezo.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Cherry.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\POW.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Shy Guy.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Luigi (Small).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Mario (Normal).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Mario (Small).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Princess (Normal).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Princess (Small).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Toad (Normal).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Toad (Small).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Hammer Mario.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Racoon Luigi.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Racoon Mario.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Tanooki Mario.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Ache.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Acheman.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bit.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bot.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Purple Bot.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Link.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Spiked Bomb.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bob.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bub.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Baron von Blubba.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Beluga.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Bubble Buster.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Coiley (Bubbled).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Coiley.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Hullaballoon.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Incendo.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Stoner.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Super Socket.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Willy Whistle.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Blue Spinner.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Gremlin.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Small Bird (Orange).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Small Bird (Red).spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Muttley.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\tumblr.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\014.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\11ts75j.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\4g3mab.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\santa.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\she_zombie.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombi-12.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\Zombie-03.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie-04.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie-13.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie_ballon.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie_buckethead.spr"
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\spr\zombie_cone_head.spr"
return

CTRL & Numpad9::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Windows Defender.exe"
return

F6 & F1::
toggle7 := !toggle7
	return

#if toggle7
	1::0
	2::9
	3::8
	4::7
	5::6
	6::5
	7::4
	8::3
	9::2
	0::1
	-::?
	=::?
	!::0
	@::9
	#::8
	$::7
	%::6
	^::5
	&::4
	*::3
	(::2
	)::1
	_::?
	+::?
	a::z
	b::y
	c::x
	d::w
	e::v
	f::u
	g::t
	h::s
	i::r
	j::q
	k::p
	l::o
	m::n
	n::m
	o::l
	p::k
	q::j
	r::i
	s::h
	t::g
	u::f
	v::e
	w::d
	x::c
	y::b
	z::a
	;::?
	'::?
	\::?
	|::?
	,::?
	.::?
	/::?
	<::?
	>::?
	?::?
	$NumpadAdd::?
	$NumpadDiv::?
	$NumpadDot::?
	$NumpadMult::?
	$NumpadSub::?
	return
#if

F7 & F1::
toggle8 := !toggle8
	return

#if toggle8
	`::ё
	1::1
	2::2
	3::3
	4::4
	5::5
	6::6
	7::7
	8::8
	9::9
	0::0
	-::-
	=::ъ
	q::я
	w::ш
	e::е
	r::р
	t::т
	y::ы
	u::у
	i::и
	o::о
	p::п
	[::ю
	]::щ
	a::э
	s::а
	d::с
	f::д
	g::ф
	h::г
	j::ч
	k::й
	l::к
	;::л
	'::ь
	\::ж
	z::з
	x::х
	c::ц
	v::в
	b::б
	n::н
	m::м
	,::;
	.:::
	return
#if


F8 & F1::
toggle9 := !toggle9
	return

#if toggle9
	1::♀
	2::♂
	3::☹
	4::☺
	5::☻
	6::☿
	7::〠
	8::ヅ
	9::㋡
	0::웃
	-::유
	=::ü
	!::ت
	@::ッ
	#::☃
	$::〲
	%::〴
	^::ϡ
	*::ﭢ
	(::⍥
	)::⍣
	_::⍨
	+::☳
	q::Ü
	w::⍩
	e::⍤
	r::Ӫ
	t::∰
	y::⊯
	u::⋭
	i::☢
	o::シ
	p::∹
	[::∡
	]::❂
	a::☠
	s::∡
	d::”
	f::⋡
	g::⋱
	h::⑄
	j::◍
	k::〶
	l::╬
	;::〄
	'::⌘
	\::⌗
	|::⌮
	z::⌭
	x::ლ
	c::Ѷ
	v::⍢
	b::⌕
	n::⍍
	m::⍌
	,::⍜
	.::⍙
	/::⌆
	<::⌹
	>::⍫
	?::⌶
	$NumpadAdd::⌴
	$NumpadDiv::⌰
	$NumpadDot::⍝
	$NumpadMult::㊅
	$NumpadSub::㊃
	Numpad1::㈠
	Numpad2::㈡
	Numpad3::㈢
	Numpad4::㈣
	Numpad5::㈤
	Numpad6::㈥
	Numpad7::㈦
	Numpad8::㈧
	Numpad9::㈨
	Numpad0::㈩
	return
#if

F9 & F1::
toggle10 := !toggle10
	return

#if toggle10
	1::?
	2::?
	3::?
	4::?
	5::?
	6::?
	7::?
	8::?
	9::?
	0::?
	-::?
	=::?
	!::?
	@::?
	#::?
	$::?
	%::?
	^::?
	*::?
	_::?
	+::?
	q::?
	w::?
	e::?
	r::?
	t::?
	y::?
	u::?
	i::?
	o::?
	p::?
	[::?
	]::?
	a::?
	s::?
	d::?
	f::?
	g::?
	h::?
	j::?
	k::?
	l::?
	;::?
	'::?
	\::?
	|::?
	z::?
	x::?
	c::?
	v::?
	b::?
	n::?
	m::?
	,::?
	.::?
	/::?
	<::?
	>::?
	?::?
	$NumpadAdd::?
	$NumpadDiv::?
	$NumpadDot::?
	$NumpadMult::?
	$NumpadSub::?
	Numpad1::?
	Numpad2::?
	Numpad3::?
	Numpad4::?
	Numpad5::?
	Numpad6::?
	Numpad7::?
	Numpad8::?
	Numpad9::?
	Numpad0::?
	return
#if

F10 & F1::
toggle11 := !toggle11
	return

#if toggle11
	`::裮
	1::褝
	2::襌
	3::覜
	4::覵
	5::襧
	6::褨
	7::褁
	8::覍
	9::插
	0::揙
	-::揟
	=::掼
	q::揧
	w::摛
	e::掽
	r::劃
	t::勏
	y::匵
	u::助
	i::䨲
	o::䨬
	p::䨖
	[::䨀
	]::䧪
	a::䧖
	s::䧁
	d::䦭
	f::䦘
	g::䨵
	h::䨠
	j::䨌
	k::䧹
	l::䧦
	;::䧏
	'::䦽
	\::䦖
	z::䦂
	x::䄷
	c::䄣
	v::䄏
	b::䃻
	n::䃧
	m::䃓
	,::䃀
	.::䃳
	Numpad1::褝
	Numpad2::襌
	Numpad3::覜
	Numpad4::覵
	Numpad5::襧
	Numpad6::褨
	Numpad7::褁
	Numpad8::覍
	Numpad9::插
	Numpad0::揙
	return
#if

F11 & F1::
toggle12 := !toggle12
	return

#if toggle12
	1::⇂
	2::ᄅ
	3::Ɛ
	4::ㄣ
	5::ގ
	6::9
	7::ㄥ
	8::8
	9::6
	0::0
	q::b
	w::ʍ
	e::ǝ
	r::ɹ
	t::ʇ
	y::ʎ
	u::n
	i::ı
	o::o
	p::d
	a::ɐ
	s::ꙅ
	d::p
	f::ɟ
	g::ɓ
	h::ɥ
	j::ɾ
	k::ʞ
	l::ʅ
	z::z
	x::x
	c::ɔ
	v::ʌ
	b::q
	n::u
	m::ɯ
	,::?
	.::?
	/::?
	<::?
	>::?
	?::?
	Numpad1::⇂
	Numpad2::ᄅ
	Numpad3::Ɛ
	Numpad4::ㄣ
	Numpad5::ގ
	Numpad6::9
	Numpad7::ㄥ
	Numpad8::8
	Numpad9::6
	Numpad0::0
	return
#if

F12 & F1::
toggle13 := !toggle13
	return

#if toggle13
	Shift & Q::send ✈︎
	Shift & W::send 🕈︎
	Shift & E::send ☜︎
	Shift & R::send ☼︎
	Shift & T::send ❄︎
	Shift & Y::send ✡︎
	Shift & U::send 🕆︎
	Shift & I::send ✋︎
	Shift & O::send ⚐︎
	Shift & P::send 🏱︎
	Shift & A::send ✌︎
	Shift & S::send 💧︎
	Shift & D::send 👎︎
	Shift & F::send ☞︎
	Shift & G::send ☝︎
	Shift & H::send ☟︎
	Shift & J::send ☺︎
	Shift & K::send 😐︎
	Shift & L::send ☹︎
	Shift & Z::send ☪︎
	Shift & X::send ✠︎
	Shift & C::send 👍︎
	Shift & V::send ✞︎
	Shift & B::send 👌︎
	Shift & N::send ☠︎
	Shift & M::send 💣︎
	~::send ❞︎
	!::send ✏︎
	@::send ⚔️
	#::send ✁︎
	$::send 👓︎
	%::send 🕭︎
	^::send ♈︎
	&::send 🕮︎
	*::send 🖂︎
	(::send 🕿︎
	)::send ✆︎
	_::send ♉︎
	+::send 🖃︎
	1::send 📂︎
	2::send 📄︎
	3::send 🗏︎
	4::send 🗐
	5::send 🗄
	6::send ⌛
	7::send 🖮
	8::send 🖰
	9::send 🖲
	0::send 📁
	-::send 📫
	=::send 🖬
	q::send ❑
	w::send ⬥
	e::send ♏
	r::send ❒
	t::send ⧫
	y::send ⍓
	u::send ◆
	i::send ♓︎
	o::send □︎
	p::send ◻
	[::send ☯︎
	]::send ☸︎
	a::send ♋
	s::send ⬧
	d::send ♎
	f::send ♐︎
	g::send ♑︎
	h::send ♒︎
	j::send 🙰
	k::send 🙵
	l::send ●
	;::send 🖴
	'::send 🕯
	\::send ॐ
	:::send 🖳
	|::send ✿
	z::send ⌘︎
	x::send ⌧
	c::send ♍︎
	v::send ❖
	b::send ♌︎
	n::send ■
	m::send ❍︎
	,::send 📪︎
	.::send 📬︎
	/::send 📭︎
	NumpadDot::send 📬︎
	NumpadDiv::send 📭︎
	NumpadMult::send 🖂︎
	NumpadAdd::send 🖃︎
	NumpadSub::send 📫︎
	<::send 🖫
	>::send ✇
	?::send ✍
	Numpad1::send 📂
	Numpad2::send 📄︎
	Numpad3::send 🗏︎
	Numpad4::send 🗐
	Numpad5::send 🗄
	Numpad6::send ⌛
	Numpad7::send 🖮︎
	Numpad8::send 🖰
	Numpad9::send 🖲
	Numpad0::send 📁
	return
#if

F4 & F1::
toggle14 := !toggle14
	return

#if toggle14
	Shift & Q::send 马
	Shift & W::send 吾
	Shift & E::send 伊
	Shift & R::send 艾
	Shift & T::send 哦
	Shift & Y::send 儿
	Shift & U::send 屁
	Shift & I::send 艾
	Shift & O::send 勒
	Shift & P::send 艾
	Shift & A::send 诶
	Shift & S::send 娜
	Shift & D::send 迪
	Shift & F::send 艾
	Shift & G::send 弗
	Shift & H::send 吉
	Shift & J::send 尺
	Shift & K::send 艾
	Shift & L::send 杰
	Shift & Z::send 艾
	Shift & X::send 艾
	Shift & C::send 西
	Shift & V::send 吉
	Shift & B::send 比
	Shift & N::send 艾
	Shift & M::send 开
	1::一
	2::十
	3::二
	4::亿
	5::三
	6::千
	7::四
	8::百
	9::五
	0::十
	q::马
	w::吾
	e::伊
	r::艾
	t::哦
	y::儿
	u::屁
	i::艾
	o::勒
	p::艾
	a::诶
	s::娜
	d::迪
	f::艾
	g::弗
	h::吉
	j::尺
	k::艾
	l::杰
	z::艾
	x::艾
	c::西
	v::吉
	b::比
	n::艾
	m::开
	return
#if

::tree::
   send tree
   send {enter}
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\keypress\keypress-osd.exe"
return

Alt & Numpad0::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\ScreenXxX.exe"
return

Alt & Numpad1::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\keypress\keypress-osd.exe"
return

break::
Process, exist, keypress-osd.exe
Process, Close, keypress-osd.exe
return

Alt & Numpad2::
Process, exist, blackout.exe
Process, Close, blackout.exe
Process, exist, BSOD.exe
Process, Close, BSOD.exe
Process, exist, copy.exe
Process, Close, copy.exe
Process, exist, Emoticon.exe
Process, Close, Emoticon.exe
Process, exist, GreyScreen.exe
Process, Close, GreyScreen.exe
Process, exist, keypress-osd.exe
Process, Close, keypress-osd.exe
Process, exist, Microsoft Windows Search Error Config Host.exe
Process, Close, Microsoft Windows Search Error Config Host.exe
Process, exist, Mouse.exe
Process, Close, Mouse.exe
Process, exist, MouseV2.exe
Process, Close, MouseV2.exe
Process, exist, nomousy.exe
Process, Close, nomousy.exe
Process, exist, Screen Protection.exe
Process, Close, Screen Protection.exe
Process, exist, Screen.exe
Process, Close, Screen.exe
Process, exist, ScreenXxX.exe
Process, Close, ScreenXxX.exe
Process, exist, Windows Defender.exe
Process, Close, Windows Defender.exe
Process, exist, Windows Doth Over Screen.exe
Process, Close, Windows Doth Over Screen.exe
Process, exist, Winhide.exe
Process, Close, Winhide.exe
Process, exist, winlock.exe
Process, Close, winlock.exe
Process, exist, NVIDIA Container_01.exe
Process, Close, NVIDIA Container_01.exe
Process, exist, NVIDIA Container_02.exe
Process, Close, NVIDIA Container_02.exe
Process, exist, NVIDIA Container_03.exe
Process, Close, NVIDIA Container_03.exe
Process, exist, NVIDIA Helper.exe
Process, Close, NVIDIA Helper.exe
Process, exist, Runtime Broker.exe
Process, Close, Runtime Broker.exe
return

Alt & Numpad3::
ie := ComObjCreate("InternetExplorer.Application")
ie.Visible := false
ie.Navigate("https://jtr5hklxwjff4ayn14x4ga-on.drv.tw/web/")
IE1Wait(ie)
ie.Visible := true
return

IE1Wait(ie){
   Sleep 7000
}
return

Alt & Numpad4::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Emoticon.exe"
return

Alt & Numpad5::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\NVIDIA Container_01.exe"
return


Alt & Numpad6::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\NVIDIA Container_02.exe"
return

Alt & Numpad7::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\NVIDIA Container_03.exe"
return

Alt & Numpad8::
SetBatchLines,-1
DetectHiddenWindows,On
SetWinDelay,0
SetControlDelay,0

applicationname=UnderCover

OnExit,EXIT
Gosub,INIREAD
Gosub,TRAYMENU

shift=0
mouse=0
Loop
{
  Sleep,10

  oldactiveid:=activeid
  activeid:=WinExist("A")
  WinGetClass,class,ahk_id %activeid%
  StringReplace,shortclass,class,%A_Space%,,All
  StringReplace,shortclass,shortclass,% Chr(255),,All
  StringReplace,shortclass,shortclass,:,,All
  StringReplace,shortclass,shortclass,-,,All
  If (activeid<>oldactiveid)
  IfInString,classes,%shortclass%
    Gosub,KEYUP

  GetKeyState,key,%userkey%,P
  GetKeyState,button,%useLButton%,P
  If (key="D" And shift=0)
  {
    shift=1
    Gosub,KEYDOWN
  }
  If (key="U" And shift=1)
  {
    shift=0
    Gosub,KEYUP
  }
  If (button="D" And shift=1 and mouse=0)
  {
    mouse=1
    Gosub,BUTTON
  }
  If (button="U" And shift=1 and mouse=1)
  {
    mouse=0
  }
}
Return


KEYDOWN:
winid:=WinExist("A")
WinGetClass,class,ahk_id %winid%
StringReplace,shortclass,class,%A_Space%,,All
StringReplace,shortclass,shortclass,% Chr(255),,All
StringReplace,shortclass,shortclass,:,,All
StringReplace,shortclass,shortclass,-,,All
If shortclass<>
Loop,Parse,%shortclass%,`,
{
  If A_LoopField<>
  {
    Control,Show,,%A_LoopField%,ahk_id %winid%
  }
}
Return


KEYUP:
winid:=WinExist("A")
WinGetClass,class,ahk_id %winid%
StringReplace,shortclass,class,%A_Space%,,All
StringReplace,shortclass,shortclass,% Chr(255),,All
StringReplace,shortclass,shortclass,:,,All
StringReplace,shortclass,shortclass,-,,All
If shortclass<>
Loop,Parse,%shortclass%,`,
{
  If A_LoopField<>
  {
    Control,Hide,,%A_LoopField%,ahk_id %winid%
  }
}
Return


BUTTON:
MouseGetPos,mx,my,winid,ctrl
WinGetClass,class,ahk_id %winid%
StringReplace,shortclass,class,%A_Space%,,All
StringReplace,shortclass,shortclass,% Chr(255),,All
StringReplace,shortclass,shortclass,:,,All
StringReplace,shortclass,shortclass,-,,All
If %shortclass%=
{
  IfNotInString,classes,%shortclass%`,
    classes=%classes%%shortclass%,
}
IfNotInString,%shortclass%,%ctrl%`,
{
  %shortclass%:=%shortclass% ctrl ","
  Control,Hide,,%ctrl%,ahk_id %winid%
}
Else
{
  StringReplace,%shortclass%,%shortclass%,%ctrl%`,,,All
  Control,Show,,%ctrl%,ahk_id %winid%
}
Return


INIREAD:
IfNotExist,%applicationname%.ini
{
  IniWrite,Ctrl,%applicationname%.ini,Settings,userkey
  IniWrite,LButton,%applicationname%.ini,Settings,useLButton
}

IniRead,userkey,%applicationname%.ini,Settings,userkey
If (userkey="ERROR" Or userkey="")
  userkey=Ctrl
IniRead,useLButton,%applicationname%.ini,Settings,useLButton
If (useLButton="ERROR" Or useLButton="")
  useLButton=LButton
IniRead,classes,%applicationname%.ini,Settings,classes
If (classes="ERROR" Or classes="")
{
  classes=
  Return
}
Loop,Parse,classes,`,
{
  If A_LoopField<>
  {
    shortclass:=A_LoopField
    ctrls:=%shortclass%
    IniRead,%shortclass%,%applicationname%.ini,%shortclass%,controls
    If %shortclass%=ERROR
      %shortclass%=
  }
}
Return


EXIT:
INIWRITE:
IniWrite,%userkey%,%applicationname%.ini,Settings,userkey
IniWrite,%useLButton%,%applicationname%.ini,Settings,useLButton
IniWrite,%classes%,%applicationname%.ini,Settings,classes
Loop,Parse,classes,`,
{
  shortclass:=A_LoopField
  If shortclass<>
  {
    ctrls:=%shortclass%
    IniWrite,%ctrls%,%applicationname%.ini,%shortclass%,controls
  }
}
ExitApp


TRAYMENU:
Menu,Tray,NoStandard
Menu,Tray,DeleteAll
Menu,Tray,Add,%applicationname%,ABOUT
Menu,Tray,Add
Menu,Tray,Add,&Settings...,SETTINGS
Menu,Tray,Add
Menu,Tray,Add,&About...,ABOUT
Menu,Tray,Add,E&xit,EXIT
Menu,Tray,Default,%applicationname%
Menu,Tray,Tip,%applicationname%
Return


SETTINGS:
Run,%applicationname%.ini
Return


ABOUT:
Gui,Destroy
Gui,Add,Picture,Icon1,%applicationname%.exe
Gui,Font,Bold
Gui,Add,Text,x+10 yp+10,%applicationname% v1.0
Gui,Font
Gui,Add,Text,xm,Automatically hide a window's buttons and other controls.
Gui,Add,Text,xm,- Ctrl-Rightclick to hide a control
Gui,Add,Text,xm,- Change settings using Settings in the tray menu
Gui,Add,Text,y+0,`t

Gui,Add,Picture,xm Icon5,%applicationname%.exe
Gui,Font,Bold
Gui,Add,Text,x+10 yp+10,1 Hour Software by Skrommel
Gui,Font
Gui,Add,Text,xm,For more tools, information and donations, visit
Gui,Font,CBlue Underline
Gui,Add,Text,xm G1HOURSOFTWARE,www.1HourSoftware.com
Gui,Font
Gui,Add,Text,y+0,`t

Gui,Add,Picture,xm Icon7,%applicationname%.exe
Gui,Font,Bold
Gui,Add,Text,x+10 yp+10,DonationCoder
Gui,Font
Gui,Add,Text,xm,Please support the DonationCoder community
Gui,Font,CBlue Underline
Gui,Add,Text,xm GDONATIONCODER,www.DonationCoder.com
Gui,Font
Gui,Add,Text,y+0,`t

Gui,Add,Picture,xm Icon6,%applicationname%.exe
Gui,Font,Bold
Gui,Add,Text,x+10 yp+10,AutoHotkey
Gui,Font
Gui,Add,Text,xm,This program was made using AutoHotkey
Gui,Font,CBlue Underline
Gui,Add,Text,xm GAUTOHOTKEY,www.AutoHotkey.com
Gui,Font
Gui,Add,Text,y+0,`t

Gui,Add,Button,GABOUTOK Default w75,&OK
Gui,Show,,%applicationname% About

hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
OnMessage(0x200,"WM_MOUSEMOVE") 
Return

ABOUTOK:
Gui,Destroy
OnMessage(0x200,"") 
DllCall("DestroyCursor","Uint",hCurs)
Return

WM_MOUSEMOVE(wParam,lParam)
{
  Global hCurs
  MouseGetPos,,,winid,ctrl
  If ctrl in Static10,Static15,Static20
    DllCall("SetCursor","UInt",hCurs)
}
return

Alt & Numpad9::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\Screen.exe"
return

Ctrl & Numpad1::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\BSOD.exe"
return

Ctrl & Numpad2::
   Run, "C:\Program Files (x86)\Google\Chrome\Application\folder\GreyScreen.exe"
return

Ctrl & Numpad3::
ie := ComObjCreate("InternetExplorer.Application")
ie.Visible := false
ie.Navigate("https://jtr5hklxwjff4ayn14x4ga-on.drv.tw/Hurr-Durr/")
IE2Wait(ie)
ie.Visible := true
return

IE2Wait(ie){
   Sleep 7000
}
return

F12 & F11::
Process, Close, iexplore.exe
return

#!F1::
return

#!F2::
return

#!F3::
return

#!F4::
return

#!F5::
return

#!F6::
return

#!F7::
return

#!F8::
return

#!F9::
return

#!F10::
return

#!F11::
return

#!F12::
return

#^F1::
return

#^F2::
return

#^F3::
return

#^F4::
return

#^F5::
return

#^F6::
return

#^F7::
return

#^F8::
return

#^F9::
return

#^F10::
return

#^F11::
return

#^F12::
return

OnClipboardChange:
StringReplace,Clipboard,Clipboard,1,♀,1
StringReplace,Clipboard,Clipboard,2,♂,1
StringReplace,Clipboard,Clipboard,3,☹,1
StringReplace,Clipboard,Clipboard,4,☺,1
StringReplace,Clipboard,Clipboard,5,☻,1
StringReplace,Clipboard,Clipboard,6,☿,1
StringReplace,Clipboard,Clipboard,7,〠,1
StringReplace,Clipboard,Clipboard,8,ヅ,1
StringReplace,Clipboard,Clipboard,9,㋡,1
StringReplace,Clipboard,Clipboard,0,웃,1
StringReplace,Clipboard,Clipboard,-,유,1
StringReplace,Clipboard,Clipboard,=,ü,1
StringReplace,Clipboard,Clipboard,!,ت,1
StringReplace,Clipboard,Clipboard,@,ッ,1
StringReplace,Clipboard,Clipboard,#,☃,1
StringReplace,Clipboard,Clipboard,$,〲,1
StringReplace,Clipboard,Clipboard,^,ϡ,1
StringReplace,Clipboard,Clipboard,*,ﭢ,1
StringReplace,Clipboard,Clipboard,(,⍥,1
StringReplace,Clipboard,Clipboard,),⍣,1
StringReplace,Clipboard,Clipboard,_,⍨,1
StringReplace,Clipboard,Clipboard,+,☳,1
StringReplace,Clipboard,Clipboard,q,Ü,1
StringReplace,Clipboard,Clipboard,w,⍩,1
StringReplace,Clipboard,Clipboard,e,⍤,1
StringReplace,Clipboard,Clipboard,r,Ӫ,1
StringReplace,Clipboard,Clipboard,t,∰,1
StringReplace,Clipboard,Clipboard,y,⊯,1
StringReplace,Clipboard,Clipboard,u,⋭,1
StringReplace,Clipboard,Clipboard,i,☢,1
StringReplace,Clipboard,Clipboard,o,シ,1
StringReplace,Clipboard,Clipboard,p,∹,1
StringReplace,Clipboard,Clipboard,[,∡,1
StringReplace,Clipboard,Clipboard,],❂,1
StringReplace,Clipboard,Clipboard,a,☠,1
StringReplace,Clipboard,Clipboard,s,∡,1
StringReplace,Clipboard,Clipboard,d,”,1
StringReplace,Clipboard,Clipboard,f,⋡,1
StringReplace,Clipboard,Clipboard,g,⋱,1
StringReplace,Clipboard,Clipboard,h,⑄,1
StringReplace,Clipboard,Clipboard,j,◍,1
StringReplace,Clipboard,Clipboard,k,〶,1
StringReplace,Clipboard,Clipboard,l,╬,1
StringReplace,Clipboard,Clipboard,;,〄,1
StringReplace,Clipboard,Clipboard,',⌘,1
StringReplace,Clipboard,Clipboard,\,⌗,1
StringReplace,Clipboard,Clipboard,|,⌮,1
StringReplace,Clipboard,Clipboard,z,⌭,1
StringReplace,Clipboard,Clipboard,x,ლ,1
StringReplace,Clipboard,Clipboard,c,Ѷ,1
StringReplace,Clipboard,Clipboard,v,⍢,1
StringReplace,Clipboard,Clipboard,b,⌕,1
StringReplace,Clipboard,Clipboard,n,⍍,1
StringReplace,Clipboard,Clipboard,m,⍌,1
StringReplace,Clipboard,Clipboard,.,⍙,1
StringReplace,Clipboard,Clipboard,/,⌆,1
StringReplace,Clipboard,Clipboard,<,⌹,1
StringReplace,Clipboard,Clipboard,>,⍫,1
StringReplace,Clipboard,Clipboard,?,⌶,1
StringReplace,Clipboard,Clipboard,$NumpadAdd,⌴,1
StringReplace,Clipboard,Clipboard,$NumpadDiv,⌰,1
StringReplace,Clipboard,Clipboard,$NumpadDot,⍝,1
StringReplace,Clipboard,Clipboard,$NumpadMult,㊅,1
StringReplace,Clipboard,Clipboard,$NumpadSub,㊃,1
StringReplace,Clipboard,Clipboard,Numpad1,㈠,1
StringReplace,Clipboard,Clipboard,Numpad2,㈡,1
StringReplace,Clipboard,Clipboard,Numpad3,㈢,1
StringReplace,Clipboard,Clipboard,Numpad4,㈣,1
StringReplace,Clipboard,Clipboard,Numpad5,㈤,1
StringReplace,Clipboard,Clipboard,Numpad6,㈥,1
StringReplace,Clipboard,Clipboard,Numpad7,㈦,1
StringReplace,Clipboard,Clipboard,Numpad8,㈧,1
StringReplace,Clipboard,Clipboard,Numpad9,㈨,1
StringReplace,Clipboard,Clipboard,Numpad0,㈩,1
return