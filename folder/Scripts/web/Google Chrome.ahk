#Warn All, Off
;Only works if you have Adobe Flash Player ActiveX installed
Gui Add, ActiveX, w360 h360 vWB, Shell.Explorer
WB.Navigate("http://web.archive.org/web/20020202215058/raus.de/crashme")
Gui Show
return
GuiClose:
ExitApp