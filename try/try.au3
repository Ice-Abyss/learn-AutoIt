#cs
#RequireAdmin
Run("cmd")
Sleep(1000)
Send("curl --help")
Sleep(500)
Send("{enter}")
Sleep(1000)
Send("cls")
Send("{enter}")
Sleep(500)
Send("start https://github.com")
Send("{enter}")
Sleep(1000)
WinClose("管理员: C:\WINDOWS\SYSTEM32\cmd.exe")
#ce

;------------------------------

#cs
#include <MsgBoxConstants.au3>

Sleep(1000) ; Allow time for the cursor to change its state.

; Create an array of possible cursor states using StringSplit.
Local $aArray = StringSplit("Hand|AppStarting|Arrow|Cross|Help|IBeam|Icon (obsolete)|No|" & _
                "Size (obsolete)|SizeAll|SizeNESW|SizeNS|SizeNWSE|SizeWE|UpArrow|Wait|Empty", "|", 2) ; The flag parameter is set to flag = 2 as we don't require the total count of the array.
#cs
        The array returned will contain the following values:
        $aArray[0] = "Hand"
        $aArray[1] = "AppStarting"
        $aArray[2] = "Arrow"
        ...
        $aArray[16] = "Empty"
#ce

Local $iCursor = MouseGetCursor()
MsgBox($MB_SYSTEMMODAL, "CursorID = " & $iCursor, "Which means " & $aArray[$iCursor] & ".") ; Use the CursorID value as the index value of the array
#ce

;------------------------------
#cs
#RequireAdmin
Run("cmd")
Sleep(500)
Send("start https://www.52pojie.cn")
Sleep(500)
Send("{enter}")
WinWaitActive("吾爱破解 - LCG - LSG|安卓破解|病毒分析|www.52pojie.cn - 个人 - Microsoft​ Edge")
Sleep(5000)
MouseWheel("down",8)
#ce

;----------------------------------
#RequireAdmin
send("#r")
Sleep(500)
Send("notepad {enter}")
Sleep(1000)
ClipPut("hello,i'am iceabyss{!}")
Sleep(200)
$v=ClipGet()
Send($v)


