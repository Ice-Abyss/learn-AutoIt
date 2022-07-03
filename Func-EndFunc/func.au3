Func mbox($mb)
	MsgBox(0,"",$mb)
EndFunc
;mbox("my name is iceabyss")

Func double($db)
	$db=$db*2
	Return $db
EndFunc

$num=double(666)
mbox($num)
