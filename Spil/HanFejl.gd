extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var totalfail_han = Score.fail_list_han.size()
	set_text("Han: " + str(totalfail_han) + " ud af " + str(Score.total_han) + " rigtige")
