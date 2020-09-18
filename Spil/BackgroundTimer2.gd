extends Timer


func _on_Ord_han_sin_forkert2():
	start()
	VisualServer.set_default_clear_color(Color(0.75,0.04,0.19,1))
	get_node("../Grafisk/TextureRect2").texture = load("res://Baggrund_rd.png")
	$"../Wrong".show()
	


func _on_Ord_han_sin_rigtig2():
	start()
	VisualServer.set_default_clear_color(Color(0.24,0.64,0.37,1))
	#$".".set_texture = load("res://Baggrund_grn.png")
	get_node("../Grafisk/TextureRect2").texture = load("res://Baggrund_grn.png")
	$"../Right".show()
