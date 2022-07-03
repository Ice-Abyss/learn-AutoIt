$num=35
Select
Case $num >=0 And $num<60
	MsgBox(0,"","lose")
Case $num >=60 And $num<85
	MsgBox(0,"","good")
Case $num >=85 And $num<=100
	MsgBox(0,"","nice")
Case Else
	MsgBox(0,"","please type 1-100 number")
EndSelect