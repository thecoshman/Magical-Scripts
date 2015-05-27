#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2 ; string just needs to be in the window tittle

; for giggles and shits

; launching programs
#p::Run "C:\Program Files (x86)\PuTTY\PuTTY.exe"

#j::
IfWinExist Java EE - 
  WinActivate Java EE - 
else
  Run "C:\Program Files\eclipse\eclipse.exe"
return

^!s::
IfWinExist %A_ScriptName%
  WinActivate %A_ScriptName%
else
  Run Notepad C:\Users\edacosh\Documents\AutoHotkey.ahk
return


; little extra signiture for emails
#IfWinActive Message (Rich Text)
:*:sig ::Thanks{Enter}    Dan{ENTER}
#IfWinActive
#IfWinActive Message (Plain Text)
:*:sig ::Thanks{Enter}    Dan{ENTER}
#IfWinActive
#IfWinActive Message (HTML)
:*:sig ::Thanks{Enter}    Dan{ENTER}
#IfWinActive

;auto reload this script on save
~^s:: 
IfWinActive %A_ScriptName% 
{ 
  SplashTextOn,,,Updated script, 
  Sleep, 200 
  SplashTextOff 
  Reload
} 
return

;#v::
;IfWinNotExist Vbuntu
;{
;  MsgBox,262180,IR4,Start Vbuntu?
;  IfMsgBox,Yes
;  run c:\PROGRAM FILES\Oracle VM VirtualBox\VBoxManage.exe startvm Vbuntu
;}
;else
;  MsgBox,262180,IR4,Save State and Close Vbuntu?
;  IfMsgBox,Yes
;  run c:\PROGRAM FILES\Oracle VM VirtualBox\VBoxManage.exe controlvm Vbuntu savestate
;return

:*:goodps1::PS1="\[\e]0;\u@\H:\w\a\]\$ "
