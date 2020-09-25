extends Area2D

var mouseover = false

func _input(event):
	if mouseover and event.is_pressed() and event.button_index == BUTTON_LEFT:
		get_tree().change_scene("res://Ending2.tscn")

func _on_Door_mouse_entered():
	$DoorOpen.show()
	$DoorClosed.hide()
	mouseover = true


func _on_Door_mouse_exited():
	$DoorOpen.hide()
	$DoorClosed.show()
	mouseover = false
