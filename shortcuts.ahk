#Include, functions.ahk

^1::^#Left					                            ; Move to previus virtual desktop
^2::^#Right					                            ; Move to next virtual desktop

#1::+#Left					                            ; Move selected window to previus screen
#2::+#Right					                            ; Move selected window to next screen 

^F2::SetCapsLockState % (t:=!t) ?  "On" :  "Off"		; Toggle On/Off CaspLock
^F12::ToggleAudioOutput() 	                            ; Toggle audio output