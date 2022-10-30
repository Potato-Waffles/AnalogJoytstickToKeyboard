#Persistent  ; Keep this script running until the user explicitly exits it.
SetTimer, WatchAxis, 1
return

WatchAxis:
JoyX := GetKeyState("JoyX")  ; Get position of X axis.
;JoyZ := GetKeyState("JoyZ")  ; Get position of Y axis.
KeyToHoldDownPrev := KeyToHoldDown  ; Prev now holds the key that was down before (if any).

rgt := Floor((JoyX-50)//5)
lft := Floor((50-JoyX)//5)

;L2 := Floor((JoyZ-50)//5)
;R2 := Floor((50-JoyZ)//5)

;MsgBox (%JoyZ% %L2% %R2%)

SetKeyDelay -1  ; Avoid delays between keystrokes.

if (JoyX > 55)
{
	SendInput {A up}
	
	if (rgt > 9)
		SendInput {D down}
	else if (rgt > 1)
	{
		SendInput {D down}
		sleep rgt*15
		SendInput {D up}
	}
	else
		SendInput {D up}
	
	KeyToHoldDown := ""
	
	;return
}

else if (JoyX < 45)
{
	SendInput {D up}
	
	if (lft > 9)
		SendInput {A down}
	else if (lft > 1)
	{
		SendInput {A down}
		sleep lft*15
		SendInput {A up}
	}
	else
		SendInput {A up}
	
	KeyToHoldDown := ""
		
	;return
}

else 
{
	KeyToHoldDown := 1
}



;MsgBox %right%


if (KeyToHoldDown = KeyToHoldDownPrev)  ; The correct key is already down (or no key is needed).
    return  ; Do nothing.

if KeyToHoldDown   ; There is a key to press down.
{
    Send, {S up}  ; Press it down.
    Send, {W up}  ; Press it down.
}
	
return