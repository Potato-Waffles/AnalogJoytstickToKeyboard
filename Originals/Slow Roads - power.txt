#Persistent  ; Keep this script running until the user explicitly exits it.
SetTimer, WatchAxis, 1
return

WatchAxis:
;JoyX := GetKeyState("JoyX")  ; Get position of X axis.
JoyZ := GetKeyState("JoyZ")  ; Get position of Y axis.
KeyToHoldDownPrev := KeyToHoldDown  ; Prev now holds the key that was down before (if any).

;rgt := Floor((JoyX-50)//5)
;lft := Floor((50-JoyX)//5)

L2 := Floor((JoyZ-50)//5)
R2 := Floor((50-JoyZ)//5)

;MsgBox (%JoyZ% %L2% %R2%)

SetKeyDelay -1  ; Avoid delays between keystrokes.


if (JoyZ < 40)
{
	;MsgBox R2
	
	if (R2 > 7)
		SendInput {W down}
	else if (R2 > 1)
	{
		SendInput {W down}
		sleep R2*15
		SendInput {W up}
	}
	
	KeyToHoldDown := ""
		
	;return

}

	
else if (JoyZ > 60)
{
	;MsgBox L2
	
	SendInput {W up}
	
	if (L2 > 7)
		SendInput {S down}
	else if (L2 > 1)
	{
		SendInput {S down}
		sleep L2*15
		SendInput {S up}
	}
		
	KeyToHoldDown := ""
		
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