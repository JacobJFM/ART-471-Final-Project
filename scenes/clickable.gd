extends StaticBody2D

signal got_clicked

var hovered: bool

func _mouse_enter():
	hovered = true
	
func _mouse_exit():
	hovered = true
	
func _input_event(_viewport, event, _shape_idx):
	if hovered and event.is_action("click") and event.is_pressed():
		got_clicked.emit()
