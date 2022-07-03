
Run("notepad")
WinWaitActive("无标题 - 记事本")
Local $name[7]=["Hello,I am IceAbyss.","Don't worried,this is not a virus.This is just a test.","You can search me on github:https://github.com/ice-abyss","Welcome to follow me.","And you can buy me a coffee.","Thank you for watch it.","byebye~"]

For $i In $name
	Send($i & @CR)
Next

Send("^s")
WinWaitActive("另存为")
ControlSend("另存为","保存(&S)","[CLASS:Edit; INSTANCE:1]","try to click it")
Sleep(800)
Send("!s")
Sleep(1000)
ProcessClose("notepad.exe")

