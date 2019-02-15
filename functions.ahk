state := GetKeyState("CapsLock")  	;Gets initial state of CapsLock

if !state{							;Set CapsLock Off
	SetCapsLockState, Off
	state:=0
}

ToggleCapsLock(){					;Toggle On/Off CapsLock
	global state
	if state
		SetCapsLockState, Off
	Else
		SetCapsLockState, On
	state:= !state
}