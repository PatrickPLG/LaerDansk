extends Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	set_text("Score: " + str(Score.score))
