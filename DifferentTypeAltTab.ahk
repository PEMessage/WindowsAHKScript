#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
;---------------------------------------
;PEMessage
;Time:2020.6.2
;Always on single key Alttab
;---------------------------------------
;
;Old Version of Alttab
;XButton2::
; {
; send {Alt up}
; send {Alt down}
; send {tab}
; KeyWait, LButton, D T10
; if(ErrorLevel==1)
; {
; 
; send {Alt up}
; ErrorLevel:=0
; Return
; }
; Click
; send {Alt up}
; Return
; }
;


Xbutton2::
    {
        send {Alt up}
        send {Alt down}
        send {tab}
        KeyWait, Xbutton2,
        KeyState1:= 0
        KeyState2:= 0
        Counter:= 0
        While(not KeyState1+KeyState2)
        {
            KeyState1:=GetKeyState("F14")
            KeyState2:=GetKeyState("LButton")
            
            sleep 10
            Counter:=Counter+1
            if(Counter>1000) ;Wait 1000-->10s
            {
                Break
            }
        }
        if(KeyState2)
        {
            KeyWait, LButton,
        }
        Send {Alt up}
        Return
    }
 
    
