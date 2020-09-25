extends Label


signal rigtig2
signal forkert2

var hanord = ["Han spurgte om han måtte låne __ tandbørste", "Jacob lånte _ bil", "_ hus var var flot", "Han stjal __ telefon", "__ lærer var god", "Mekanikeren fiksede __ bil", "Peter syntes at __ kollega var rar", "__ mor havde altid travlt", "Frederik sidder på __ plads", "Ole passer __ barn", "Inger samlede __ ting", "De brugte alle __ penge"]
var sinord = ["Lars blev glad for at se __ far igen", "Henrik er i fuld gang med __ uddannelse", "Han har altid levet lidt i __ egen verden", "Han kunne ikke engang betro sig til __ bedste ven.", "Jensen kysser _ kone", "Børge havde __ bukser på", "Han tog __ hat", "Han gik __ vej", "Han snakkede med __ ven", "Peters var sammen __ familie", "Søren elsker __ fiskestang"]

# "Han havde ofte rådet Maria til at rejse et sted hen med __ familie",

var activeword = ""


func _ready():
	
	randomize()
	var ordsamlet = [hanord,sinord]
	var randomord = ordsamlet[randi() % ordsamlet.size()]
	
	activeword = randomord[randi() % randomord.size()]
	#activeword = n_ord[randi() % n_ord.size()]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	set_text(activeword)

func _on_Han_pressed():
	Score.total_han += 1
	if hanord.has(activeword):
		Score.score += 1
		Score.fail_list_han.append(activeword)
		emit_signal("rigtig2")
		_ready()
	else:
		emit_signal("forkert2")
		_ready()


func _on_Sin_pressed():
	Score.total_sin += 1
	if sinord.has(activeword):
		Score.score += 1
		Score.fail_list_sin.append(activeword)
		emit_signal("rigtig2")
		_ready()
	else:
		emit_signal("forkert2")
		_ready()


func _on_BackgroundTimer2_timeout():
	VisualServer.set_default_clear_color(Color(0.27,0.27,0.27,1))
	get_node("../../Grafisk/TextureRect2").texture = load("res://Baggrund_hvid.png")
	$"../../Wrong".hide()
	$"../../Right".hide()
