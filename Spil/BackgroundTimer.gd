extends Timer

func _on_Ord_rigtig():
	start()
	VisualServer.set_default_clear_color(Color(0.24,0.64,0.37,1))


func _on_Ord_forkert():
	start()
	VisualServer.set_default_clear_color(Color(0.75,0.04,0.19,1))
