extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var totalfail_sin = Score.fail_list_sin.size()
	set_text("Sin: " + str(totalfail_sin) + " ud af " + str(Score.total_sin) + " rigtige")
