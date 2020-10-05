extends Control


func _on_StartIgen_pressed():
	get_tree().change_scene("res://Main.tscn")
	Score.fail_list_n = []
	Score.fail_list_u = []
	Score.fail_list_t = []
	Score.total_t = 0
	Score.total_u = 0
	Score.total_n = 0
	Score.total_han = 0
	Score.total_sin = 0
	Score.fail_list_han = []
	Score.fail_list_sin = []
