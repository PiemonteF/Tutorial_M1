extends Node2D


var recieve
var sort = []




func _on_Button_pressed():
	var z = len(sort)
	for i in range(z-1):
		for k in range(z-1):
			if sort[k] > sort[k+1]:
				var novo = sort[k]
				sort[k] = sort[k+1]
				sort[k+1] = novo
	
	$Label.text = str(sort)
	

func _on_Button2_pressed():
	recieve = float($LineEdit.text)
	sort.append(recieve)
