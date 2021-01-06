ShowOnOff() {
    Static X := MakeGui(), bool := True
    GuiControl % (bool := !bool) ? "Show" : "Hide", % X
}

MakeGui() {
    Gui, New, -Caption +Toolwindow +AlwaysOnTop +HwndGuiHwnd
    Gui, Color, White
    Gui, Font, s300 bold Q3, Arial
    Gui, Add, Text, +HwndHwnd cRed TransColor, X
    DetectHiddenWindows, On
    WinSet, TransColor, White, % "ahk_id " GuiHwnd
    Gui, Show, % "x" A_ScreenWidth-1600 " y" A_ScreenHeight-750
    return Hwnd
}

End::ShowOnOff()
Esc & Tab::
GuiClose:
Gui,Destroy
ExitApp
return