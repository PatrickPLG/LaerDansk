extends Timer



func _on_Ord_rigtig():
	start()
	VisualServer.set_default_clear_color(Color(0.24,0.64,0.37,1))
	#$".".set_texture = load("res://Baggrund_grn.png")
	get_node("../TextureRect2").texture = load("res://Baggrund_grn.png")

func _on_Ord_forkert():
	start()
	VisualServer.set_default_clear_color(Color(0.75,0.04,0.19,1))
	get_node("../TextureRect2").texture = load("res://Baggrund_rd.png")
