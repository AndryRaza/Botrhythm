#include <ImageSearch2015.au3>


global $y = 0, $x = 0

HotKeySet("{d}","checkUp")
HotKeySet("{ESC}","stop")

Func stop()
	MsgBox(0,"Byebye","Le script s'est arrêté")
	Exit
EndFunc

Func checkUp()
	MsgBox(0,"Lancement","Go")
	Local $iTarget = "up.png"

	While 1 
		
		;Local $bResult = _ImageSearchArea($iTarget,1,710,263,727,275,$x,$y)
		Local $test = PixelGetColor(710,263)
		If  Hex($test) = 0x18FC04 Then ConsoleWrite(Hex($test,6) & " ") 
		
		
		Sleep(500)
		
	WEnd
	
EndFunc

While 1
	;
WEnd
