ToggleAudioOutput(){
	IniRead, defaultOutput, config.ini, outputs, default
	IniRead, headset, config.ini, outputs, headset
	IniRead, creative, config.ini, outputs, creative

	if defaultOutput = %headset% 
		defaultOutput = %creative%
	else if defaultOutput = %creative%
		defaultOutput = %headset%
	TrayTip, Salida de audio, %defaultOutput%,1,32

	IniWrite, %defaultOutput%, config.ini, outputs, default
	run %A_WinDir%\nircmd.exe setdefaultsounddevice "%defaultOutput%"
}

Exit() {
    MsgBox, You clicked the Exit entry! The script will close itself now.
    ExitApp
}