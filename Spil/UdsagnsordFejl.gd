extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var totalfail_u = Score.fail_list_u.size()
	set_text("Udsagnsord: " + str(totalfail_u) + " ud af " + str(Score.total_u) + " Fejl")
