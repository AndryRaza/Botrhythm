#include <Color.au3>

global $y = 0, $x = 0

HotKeySet("{d}","checkDown")
HotKeySet("{ESC}","stop")

Func stop()
	MsgBox(0,"Byebye","Le script s'est arr�t�")
	Exit
EndFunc

Global $hWnd = WinWait("Stickman Vs. Friday Night Funkin' - Jeux en ligne sur Snokido - Google Chrome")


Func checkDown()

	Local $color = 0x00ffff
	Local $aClientSize = WinGetClientSize($hWnd)
	Local $aClientPos =  WinGetPos($hWnd)

	Local $aX = $aClientPos[0]
	Local $aY = $aClientPos[1]
	Local $aHeight = $aClientPos[3]
	Local $aWidth = $aClientPos[2]

	
	While 1 	
	
		;Local $aPixelFound = PixelSearch($aX,$aY,$aX + $aWidth,$aY + $aHeight,$color,0,10,$hWnd)
		Local $searchGreen = PixelSearch(533,245,821,309,$color,0,1,$hWnd)
		If Not @error Then Send("{DOWN}")
			
		Sleep(100)
		
	WEnd
	
EndFunc

While 1
	;
WEnd
