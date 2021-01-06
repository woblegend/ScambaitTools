SetTitleMatchMode 2
#SingleInstance ignore
#NoTrayIcon

; Win + Alt + D
F2::
ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

If DllCall("IsWindowVisible", UInt, HWND)
	WinHide, ahk_id %HWND%
Else
	WinShow, ahk_id %HWND%
return
Q & m::
Exit:
GuiClose:
Gui,Destroy
ExitApp
Return