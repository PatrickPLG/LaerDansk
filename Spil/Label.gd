extends Label


signal rigtig
signal forkert

# Opretter variablerne, som indeholder de forskellige tillægsord, navneord og udsagnsord
var t_ord = ["Absolut","Adskillig","Afgørende","Afhængig","Aktiv","Aktuel","Almindelig","Alvorlig","Amerikansk","Anderledes","Bange","Bekendt","Berømt","Bestemt","Betydelig","Bevidst","Billig","Blød","Blå","Borgerlig","Bred","Brun","Britisk","Central","Daglig","Dansk","Dejlig","Demokratisk","Direkte","Dobbelt","Dyb","Dygtig","Dyr","Død","Dårlig","Effektiv","Egen","Egentlig","Ekstra","Endelig","Ene","Eneste","Engelsk","Enig","Enkel","Enkelt","Enorm","Europæisk","Eventuel","Evig","Fantastisk","Farlig","Fast","Fattig","Fin","Flot","Foreløbig","forkert","Fornuftig","Forsigtig","Forskellig","Fransk","Fremmed","Fri","Frisk","Frivillig","Fuld","Fuldstændig","Fysisk","Fælles","Færdig","Første","Gal","Gammel","General","Gift","Glad","God","Gratis","Grov","Grundig"]
var n_ord = ["Akvarium","Appelsin","Barn","Billede","Blender","Blomst","Bog","Brev","Brevvægt","Brød","Dug","Dybfryser","Emballage","Fjerkræ","Fjernsyn","Flyttemappe","Frimærke","Frugt","Føl","Får","Gaffel","Gardin","Griokort","Glas","Gris","Gryde","Grøntsag","Gulerod","Hane","Hest","Hund","Hundehvalp","Hvidløg","Høne","Kaffedåse","Kaffemaskine","Kagedåse","Kalv","Kanariefugl","Kartoffel","Kat","Kedel","Kniv","Ko","Komfur","Konvolut","Kop","Krus","Kuvert","Kvinde","Kylling","Køkkenskab","Køleskab","Lam","Luftpostbrev","Lænestol","Løg","Mad","Maleri","Mand","Mikrobølgeovn","Mink","Mælk","Nummer","Oksekød","Pakke","Peber","Persille","Porre","Postbud","Posthus","Postkasse","Postkort","Postsæk","Potteplante","Reol","Ris","Rudekuvert","Røremaskine","Salt","Skranke"]
var u_ord = ["Er","Har","Kan","Bliver","Skal","Vil","Får","Siger","Kommer","Går","Gør","Ser","Må","Tager","Giver","Står","Finder","Holder","Sætter","Viser","Bruger","Ligger","Ved","Tror","Mener","Sker","Fortæller","Hører","Laver","Lægger","Skriver","Sidder","Lader","Spiller","Synes","Følger","Begynder","Kører","Stiller","Tænker","Kalder","Ønsker","Slår","Lever","Fører","Bør","Spørger","Arbejder","Skaber","Sender","Falder","Kender","Vælger","Føler","Betyder","Trækker","Samler","Venter","Forstår","Gælder","Betaler","Når","Prøver","Rejser","Køber","Bor","Taler","Læser","Svarer","Vender","Vinder","Sælger","Hjælper","Møder","Forsøger","Lærer","Hedder","Findes","Forsætter","Stiger","Lyder","Kræver","Passer","Sikrer","Klarer","Koster","Starter","Søger","Tæller","Bryder"]
# Sætter activeword lig med ingenting
var activeword = ""


func _ready():
	# Randomizer
	randomize()
	# Laver en variabel kaldet ordsamlet, som samler alle orderne
	var ordsamlet = [t_ord,n_ord,u_ord]
	# Laver en variabel kaldet randomord, som vælger en af orderne fra ordsamlet
	var randomord = ordsamlet[randi() % ordsamlet.size()]
	
	# Sætter activeword lig med et tilfældigt ord fra det randomord, der blev udvalgt
	activeword = randomord[randi() % randomord.size()]
	#activeword = n_ord[randi() % n_ord.size()]

func _process(_delta):
	# Sætter teksten lig med activeword
	set_text(activeword)


func _on_Udsagnsord_pressed():
	if u_ord.has(activeword):
		Score.total_u += 1
		Score.fail_list_u.append(activeword)
		emit_signal("rigtig")
		_ready()
	else:
		emit_signal("forkert")
		_ready()


func _on_Tillgsord_pressed():
	if t_ord.has(activeword):
		Score.total_t += 1
		Score.fail_list_t.append(activeword)
		emit_signal("rigtig")
		_ready()
	else:
		emit_signal("forkert")
		_ready()


func _on_Navneord_pressed():
	if n_ord.has(activeword):
		Score.total_n += 1
		Score.fail_list_n.append(activeword)
		emit_signal("rigtig")
		_ready()
	else:
		emit_signal("forkert")
		_ready()


func _on_BackgroundTimer_timeout():
	VisualServer.set_default_clear_color(Color(0.27,0.27,0.27,1))
	get_node("../../Grafisk/TextureRect2").texture = load("res://Baggrund_hvid.png")
	$"../../Wrong".hide()
	$"../../Right".hide()


func _on_Frdig_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Ending.tscn")


func _on_Ord_forkert():
	if n_ord.has(activeword):
		Score.total_n += 1
	elif t_ord.has(activeword):
		Score.total_t += 1
	elif u_ord.has(activeword):
		Score.total_u += 1
