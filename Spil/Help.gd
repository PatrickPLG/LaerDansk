extends Area2D

var mouseover = false

func _input(event):
	if mouseover and event.is_pressed() and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://HelpPage.tscn")
		Global.prevscene = get_tree().get_current_scene().get_name()

func _on_Help_mouse_entered():
	mouseover = true


func _on_Help_mouse_exited():
	mouseover = false
