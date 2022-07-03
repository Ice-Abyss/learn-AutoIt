#include<GUIConstants.au3>

GUICreate("main",400,300)
GUISetState(@SW_SHOW)
 
GUICtrlCreateLabel("this is a tap",30,10)
 
$okbutton = GUICtrlCreateButton("ok",70,50)



While 1
	$msg = GUIGetMsg()
	If $msg == $okbutton Then
		MsgBox(0,"try","hey!")
	EndIf
WEnd

