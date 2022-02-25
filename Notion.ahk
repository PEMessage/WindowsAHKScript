#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


:b0:{}::
;MsgBox You typed "btw".
if WinActive("ahk_exe Notion.exe")
{
    SendInput {BS 3}
    SendInput {Text}{  }
    SendInput {Left}{Left}
    Return
}



:b0:\t::
;MsgBox You typed "btw".
if WinActive("ahk_exe Notion.exe")
{
    SendInput {BS 2}
    SendInput {Text} \text{  }
    SendInput {Left 2}
    Return
}


:b0:\fa::
;MsgBox You typed "btw".
if WinActive("ahk_exe Notion.exe")
{
    SendInput {BS 3}
    SendInput {Text} \frac{  }
    SendInput {Left 2}
    Return
}

:b0:\abs::
;MsgBox You typed "btw".
if WinActive("ahk_exe Notion.exe")
{
    SendInput {BS 4}
    SendInput {Text} |  |
    SendInput {Left 2}
    Return
}







    

