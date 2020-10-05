extends Control

var gameplay = ["Du får via tavlen midt på skærmen vist et ord der skal indgives i en af de tre følgende kategorier; Navneord (substantiv), Udsagnsord (verbum) og Tillægsord (adjektiver).\n Efter du har indgivet ordene i kategorierne kan du trykke på døren ved siden af tavlen for at afslutte øvelsen og se hvor mange rigtige du har fået.", "Du får via tavlen midt på skærmen vist en sætning der mangler et ord. Du kan vælge mellem to ord ’hans’ eller ’sin’. Du skal vælge den der passer bedst ind i sætningen.\n Efter du har valgt et par ord til sætningerne, kan du trykke på døren ved siden af tavlen for at afslutte øvelsen og se hvor mange rigtige du har fået."]

var overskrift = ["Ordklasser", "Generalt", "Hans/sin"]

var underskrift = ["Navneord/Substantiv", "Udsagnsord/Verber", "Tillægsord/Adjektiver", "Hans/sin"]

var tekst = ["Substantiver er ord der betegner levende væsener, ting og begreber. De kan inddeles i fælleskønsord (de ord man kan sætte en foran, fx en stol, stolen) og intetkønsord (de ord man kan sætte et foran, fx et bord, bordet):\n\nEksempel:\n -	kvinde, dreng, hund, demokrati, hus, bord, stol, barndom, bilisme, internet", "Sådan opfører verber sig\n\nInfinitiv (navnemåde)\n– er verbets grundform og den form der står som opslagsord i Retskrivningsordbogen. Sæt et at foran verbet for at finde infinitivformen:\n- (at) kysse, bo, spise, sms’e, elske, cykle.\n\nImperativ (bydemåde)\n– laver man ved at fjerne -e (eller konsonant og -e) fra grundformen:\n- kys, bo, spis, sms, elsk, cykl.\n\nPræsens (nutid)\n– laver man ved at sætte et -r på grundformen, fx kysse-r. Sæt jeg foran verbet for at finde præsensformen:\n- kysser, bor, spiser, sms’er, elsker, cykler.\n\nPræteritum (datid)\n– laver man ved at sætte -(e)de på grundformen eller -te på imperativformen. Sæt jeg foran verbet for at finde præteritumformen:\n- kyssede, boede, spiste.\nEnkelte verber omdannes i datid, og nogle har ingen endelse:\n- sagde, bragte, gik, stod.\n\nPassiv (lideform)\n– laver man ved at sætte et -s på infinitivformen eller præteritumsformen:\n- de køres (dvs. 'de bliver kørt').\n- de kørtes (dvs. 'de blev kørt').\n", "Ord der lægger sig til substantiver og beskriver typisk en egenskab ved en person, en genstand eller lignende.\nAdjektivet bøjes efter det ord det lægger sig til, og kan stå både foran og efter dette ord:\n- en rød trøje, et rødt bælte, trøjen er rød, bæltet er rødt.\n\nSådan bøjes adjektiverne\nAdjektiver bøjes i køn, tal og bestemthed:\n- en rød bil, et rødt hus (køn)\n- et rødt hus, flere røde huse (tal)\n- en rød bil, den røde bil (bestemthed)\n- et rødt hus, det røde hus (bestemthed).\n\nAdjektiver kan også gradbøjes\n- rød, rødere, rødest.\n\nMange adjektiver kan gradbøjes med mere og mest\n- populær, mere populær, mest populær.\n\nEn lille gruppe adjektiver skifter vokal når de bøjes\n- lang, længere, længst.\n\nOg nogle skifter til en anden ordform\n- ammel, ældre, ældst.\n\nNår adjektiver ender på en vokal\nAdjektiver som moderne og lilla der ender på en vokal, har ingen endelse i singularis (ental), intetkøn:\n- et moderne hus og et lilla tørklæde.\nDette gælder dog ikke ordene fri og ny (et frit marked, et nyt tørklæde) og adjektiver på -å (et blåt tørklæde).\n", "Brug sin når den der ejer noget, er subjekt (grundled) i sætningen:\n-	Drengen tog altid sin kasket omvendt på (hvis du skriver hans, er det en andens kasket).\n-	Søren gav sin hund et kødben (hvis du skriver hans, er det en andens hund).\n-	Hun hørte sin far spille guitar (hvis du skriver hendes, er det en andens far).\n\nMan bruger også sin når man henviser til subjektet i en skjult sætning (indlejret sætning), fx\n-	Camilla ser Louise sidde på sin hest. (Dvs. 'Camilla ser Louise, og Louise sidder på sin). hest' – hvor den skjulte sætning kan omskrives til Louise sidder på sin hest\nDen slags sætninger kan betyde flere ting. Sætningen kan nemlig også betyde at 'Louise sidder på Camillas hest'. Hvis man skrev Camilla ser Louise sidde på hendes hest, ville det i standarddansk betyde at Louise sidder på en helt anden piges hest."]

var ordklasser = true
var generalt = false
var hanssin = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ordklasser == true:
		$Overskrift.set_text(overskrift[0])
		$Underskrift.set_text(underskrift[0])
		$"Brødtekst".set_text(tekst[0])
		
		$Underskrift2.set_text(underskrift[1])
		$"Brødtekst2".set_text(tekst[1])
		
		$Underskrift3.set_text(underskrift[2])
		$"Brødtekst3".set_text(tekst[2])
		
		$GeneralOverskrift.set_text("Hvordan virker spillet?")
		$GeneraltTekst.set_text(gameplay[0])
	elif generalt == true:
		$Overskrift.set_text(overskrift[1])
		$Underskrift.set_text(underskrift[2])
		$"Brødtekst".set_text(tekst[0])
	elif hanssin == true:
		$Overskrift.set_text(overskrift[2])
		$Underskrift.set_text(underskrift[3])
		$"Brødtekst".set_text(tekst[3])
		
		$Underskrift2.set_text("")
		$"Brødtekst2".set_text("")
		
		$Underskrift3.set_text("")
		$"Brødtekst3".set_text("")
		
		$GeneralOverskrift.set_text("Hvordan virker spillet?")
		$GeneraltTekst.set_text(gameplay[1])

func _on_Ordklasser_pressed():
	ordklasser = true
	generalt = false
	hanssin = false

func _on_Generalt_pressed():
	generalt = true
	ordklasser = false
	hanssin = false

func _on_HansSin_pressed():
	hanssin = true
	ordklasser = false
	generalt = false


func _on_Button_pressed():
	get_tree().change_scene(str(Global.prevscene)+".tscn")
