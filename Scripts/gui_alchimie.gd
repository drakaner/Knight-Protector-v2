extends CanvasLayer

var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")

var GuiPotionVie = preload("res://Objets/gui_potion_vie.tscn")
var GuiPotionMana = preload("res://Objets/gui_potion_mana.tscn")
var GuiPotionElixir = preload("res://Objets/gui_potion_elixir.tscn")

@onready var nodeParent = get_node(".")
@onready var childSlot = []
@onready var childSlotIngredient = []
@onready var childSlotResultat
@onready var childButtonFlecheLeft
@onready var childButtonFlecheRight
@onready var childButtonCreation

var gui_items_resultat = {}

var gui_potion_vie = []
var gui_potion_mana = []
var gui_potion_elixir = []

var lstIngredientsSelect = { item1 = "vide", item2 = "vide", index1 = -1, index2 = -1 }
var lstTextCraftFinal = { etat = "tuto" }

var nbCompteurPotionVie = 0
var nbCompteurPotionMana = 0
var nbCompteurPotionElixir = 0

var isPanelClose = true
var isPopUpOpen = false

var txtNbGold
var txtNbGoldTotalIngredients
var txt_titre
var txt_stat_1
var txt_stat_2
var gui_fenetre

var nbDecaleTextName = 0
var nbPage = 1

var nbPrixCraft = 0

var txtItemType = []
var isSlot_libre = []

func _on_mouse_entered_potion_vie():
	var mouse_pos = get_viewport().get_mouse_position()
	
	if isPopUpOpen == false:
		gui_fenetre = GuiFenetre.instantiate()
		add_child(gui_fenetre)
		var childGuiFenetre = gui_fenetre.get_node("panelGuiFenetre")
		childGuiFenetre.position.x = mouse_pos.x
		childGuiFenetre.position.y = mouse_pos.y
		txt_titre = GuiTextUi.instantiate()
		add_child(txt_titre)
		var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
		childGuiTxtNameItem.position.x = mouse_pos.x + 20
		childGuiTxtNameItem.position.y = mouse_pos.y
		for n in range(21):
			if gui_potion_vie[n] != null:
				childGuiTxtNameItem.text = gui_potion_vie[n].txt_name
		nbDecaleTextName = 40
		txt_stat_1 = GuiTextUi.instantiate()
		add_child(txt_stat_1)
		var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
		childGuiTxtStat1.position.x = mouse_pos.x
		childGuiTxtStat1.position.y = mouse_pos.y + 30
		for n in range(21):
			if gui_potion_vie[n] != null:
				childGuiTxtStat1.text = gui_potion_vie[n].txt_description

func _on_mouse_entered_potion_mana():
	var mouse_pos = get_viewport().get_mouse_position()
	
	if isPopUpOpen == false:
		gui_fenetre = GuiFenetre.instantiate()
		add_child(gui_fenetre)
		var childGuiFenetre = gui_fenetre.get_node("panelGuiFenetre")
		childGuiFenetre.position.x = mouse_pos.x
		childGuiFenetre.position.y = mouse_pos.y
		txt_titre = GuiTextUi.instantiate()
		add_child(txt_titre)
		var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
		childGuiTxtNameItem.position.x = mouse_pos.x + 20
		childGuiTxtNameItem.position.y = mouse_pos.y
		for n in range(21):
			if gui_potion_mana[n] != null:
				childGuiTxtNameItem.text = gui_potion_mana[n].txt_name
		nbDecaleTextName = 40
		txt_stat_1 = GuiTextUi.instantiate()
		add_child(txt_stat_1)
		var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
		childGuiTxtStat1.position.x = mouse_pos.x
		childGuiTxtStat1.position.y = mouse_pos.y + 30
		for n in range(21):
			if gui_potion_mana[n] != null:
				childGuiTxtStat1.text = gui_potion_mana[n].txt_description

func _on_mouse_entered_potion_elixir():
	var mouse_pos = get_viewport().get_mouse_position()
	
	if isPopUpOpen == false:
		gui_fenetre = GuiFenetre.instantiate()
		add_child(gui_fenetre)
		var childGuiFenetre = gui_fenetre.get_node("panelGuiFenetre")
		childGuiFenetre.position.x = mouse_pos.x
		childGuiFenetre.position.y = mouse_pos.y
		txt_titre = GuiTextUi.instantiate()
		add_child(txt_titre)
		var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
		childGuiTxtNameItem.position.x = mouse_pos.x + 20
		childGuiTxtNameItem.position.y = mouse_pos.y
		for n in range(21):
			if gui_potion_elixir[n] != null:
				childGuiTxtNameItem.text = gui_potion_elixir[n].txt_name
		nbDecaleTextName = 40
		txt_stat_1 = GuiTextUi.instantiate()
		add_child(txt_stat_1)
		var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
		childGuiTxtStat1.position.x = mouse_pos.x
		childGuiTxtStat1.position.y = mouse_pos.y + 30
		for n in range(21):
			if gui_potion_elixir[n] != null:
				childGuiTxtStat1.text = gui_potion_elixir[n].txt_description

func _on_mouse_exited():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	nbDecaleTextName = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	lstTextCraftFinal["TUTO"] = {}
	lstTextCraftFinal["TUTO"].create = {}
	lstTextCraftFinal["TUTO"].titre = "Tuto"
	lstTextCraftFinal["TUTO"].description = "Pour créer un nouvel \n item, \n assemblez deux items \n identiques. \n L'item obtenu sera \n de qualité supérieure."
	
	lstTextCraftFinal["APERCU"] = {}
	lstTextCraftFinal["APERCU"].create = {}
	lstTextCraftFinal["APERCU"].titre = "Statistiques"
	lstTextCraftFinal["APERCU"].description1 = "name item"
	lstTextCraftFinal["APERCU"].stat1 = "Stat : 1"
	lstTextCraftFinal["APERCU"].stat2 = "Stat : 2"
	lstTextCraftFinal["APERCU"].description2 = "Qualité 2"
	
	lstTextCraftFinal["MINI_JEU"] = {}
	lstTextCraftFinal["MINI_JEU"].create = null
	lstTextCraftFinal["MINI_JEU"].titre = "Forge parfaite..."
	lstTextCraftFinal["MINI_JEU"].description = ""
	
	lstTextCraftFinal["TUTO"].create[0] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["TUTO"].create[0])
	lstTextCraftFinal["TUTO"].create[0].visible = true
	var childTextUi_1 = lstTextCraftFinal["TUTO"].create[0].get_node("labelGuiTextFenetre")
	childTextUi_1.text = lstTextCraftFinal["TUTO"].titre
	#childTextUi_1.scale = Vector2(2, 2)
	childTextUi_1.position.x = 660
	childTextUi_1.position.y = 240
	childTextUi_1.add_theme_font_size_override("font_size", 40)
	childTextUi_1.add_theme_color_override("font_color", Color(1.0, 0.22, 0.0, 1.0) )
	
	lstTextCraftFinal["TUTO"].create[1] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["TUTO"].create[1])
	lstTextCraftFinal["TUTO"].create[1].visible = true
	var childTextUi_2 = lstTextCraftFinal["TUTO"].create[1].get_node("labelGuiTextFenetre")
	childTextUi_2.text = lstTextCraftFinal["TUTO"].description
	childTextUi_2.position.x = 640
	childTextUi_2.position.y = 280
	
	lstTextCraftFinal["APERCU"].create[0] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["APERCU"].create[0])
	lstTextCraftFinal["APERCU"].create[0].visible = false
	var childTextUiApercu_1 = lstTextCraftFinal["APERCU"].create[0].get_node("labelGuiTextFenetre")
	childTextUiApercu_1.text = lstTextCraftFinal["APERCU"].titre
	childTextUiApercu_1.position.x = 642
	childTextUiApercu_1.position.y = 240
	childTextUiApercu_1.add_theme_font_size_override("font_size", 28)
	childTextUiApercu_1.add_theme_color_override("font_color", Color(1.0, 0.22, 0.0, 1.0) )
	
	lstTextCraftFinal["APERCU"].create[1] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["APERCU"].create[1])
	lstTextCraftFinal["APERCU"].create[1].visible = false
	var childTextUiApercu_2 = lstTextCraftFinal["APERCU"].create[1].get_node("labelGuiTextFenetre")
	childTextUiApercu_2.text = lstTextCraftFinal["APERCU"].stat1
	childTextUiApercu_2.position.x = 640
	childTextUiApercu_2.position.y = 300
	
	lstTextCraftFinal["APERCU"].create[2] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["APERCU"].create[2])
	lstTextCraftFinal["APERCU"].create[2].visible = false
	var childTextUiApercu_3 = lstTextCraftFinal["APERCU"].create[2].get_node("labelGuiTextFenetre")
	childTextUiApercu_3.text = lstTextCraftFinal["APERCU"].stat2
	childTextUiApercu_3.position.x = 640
	childTextUiApercu_3.position.y = 320
	
	lstTextCraftFinal["APERCU"].create[3] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["APERCU"].create[3])
	lstTextCraftFinal["APERCU"].create[3].visible = false
	var childTextUiApercu_4 = lstTextCraftFinal["APERCU"].create[3].get_node("labelGuiTextFenetre")
	childTextUiApercu_4.text = lstTextCraftFinal["APERCU"].description2
	childTextUiApercu_4.position.x = 650
	childTextUiApercu_4.position.y = 355
	childTextUiApercu_4.add_theme_font_size_override("font_size", 23)
	childTextUiApercu_4.add_theme_color_override("font_color", Color(0.0, 0.656, 0.532, 1.0) )
	
	lstTextCraftFinal["APERCU"].create[4] = GuiTextUi.instantiate()
	add_child(lstTextCraftFinal["APERCU"].create[4])
	lstTextCraftFinal["APERCU"].create[4].visible = false
	var childTextUiApercu_5 = lstTextCraftFinal["APERCU"].create[4].get_node("labelGuiTextFenetre")
	childTextUiApercu_5.text = lstTextCraftFinal["APERCU"].description1
	childTextUiApercu_5.position.x = 640
	childTextUiApercu_5.position.y = 280
	
	txtItemType.resize(21)
	isSlot_libre.resize(21)
	
	gui_potion_vie.resize(21)
	gui_potion_mana.resize(21)
	gui_potion_elixir.resize(21)
	
	childSlot.resize(21)
	childSlotIngredient.resize(2)
	
	gui_items_resultat["potion_elixir"] = GuiPotionElixir.instantiate()
	add_child(gui_items_resultat["potion_elixir"])
	
	gui_items_resultat["potion_elixir"].visible = false
	
	childSlot[0] = nodeParent.get_node("panel_slot1")
	childSlot[1] = nodeParent.get_node("panel_slot2")
	childSlot[2] = nodeParent.get_node("panel_slot3")
	childSlot[3] = nodeParent.get_node("panel_slot4")
	childSlot[4] = nodeParent.get_node("panel_slot5")
	childSlot[5] = nodeParent.get_node("panel_slot6")
	childSlot[6] = nodeParent.get_node("panel_slot7")
	childSlot[7] = nodeParent.get_node("panel_slot8")
	childSlot[8] = nodeParent.get_node("panel_slot9")
	childSlot[9] = nodeParent.get_node("panel_slot10")
	childSlot[10] = nodeParent.get_node("panel_slot11")
	childSlot[11] = nodeParent.get_node("panel_slot12")
	childSlot[12] = nodeParent.get_node("panel_slot13")
	childSlot[13] = nodeParent.get_node("panel_slot14")
	childSlot[14] = nodeParent.get_node("panel_slot15")
	childSlot[15] = nodeParent.get_node("panel_slot16")
	childSlot[16] = nodeParent.get_node("panel_slot17")
	childSlot[17] = nodeParent.get_node("panel_slot18")
	childSlot[18] = nodeParent.get_node("panel_slot19")
	childSlot[19] = nodeParent.get_node("panel_slot20")
	childSlot[20] = nodeParent.get_node("panel_slot21")
	
	childSlotIngredient[0] = nodeParent.get_node("panel_slot_ingredient1")
	childSlotIngredient[1] = nodeParent.get_node("panel_slot_ingredient2")
	
	childSlotResultat = nodeParent.get_node("panel_slot_resultat")
	
	childButtonCreation = nodeParent.get_node("panel_button_creation")
	
	childButtonFlecheLeft = nodeParent.get_node("panel_fleche_gauche")
	childButtonFlecheRight = nodeParent.get_node("panel_fleche_droite")
	
	for n in range(21):
		txtItemType[n] = "vide"
		isSlot_libre[n] = true
	
	txtNbGoldTotalIngredients = GuiTextUi.instantiate()
	add_child(txtNbGoldTotalIngredients)
	txtNbGoldTotalIngredients.visible = false
	
	txtNbGold = GuiTextUi.instantiate()
	add_child(txtNbGold)
	var childTxtGold = txtNbGold.get_node("labelGuiTextFenetre")
	childTxtGold.position.x = 400
	childTxtGold.position.y = 247
	childTxtGold.text = str(DataSave.hero.gold)
	childTxtGold.add_theme_font_size_override("font_size", 27)
	childTxtGold.add_theme_color_override("font_color", Color(1.0, 0.443, 0.0, 1.0) )


func update_inventaires_visibility():
	for potion_vie in gui_potion_vie:
		if potion_vie != null:
			gui_potion_vie.visible = true
	
	for potion_mana in gui_potion_mana:
		if potion_mana != null:
			gui_potion_mana.visible = true
	
	for potion_elixir in gui_potion_elixir:
		if potion_elixir != null:
			gui_potion_elixir.visible = true
	
	if nbPage == 1:
		for n in range(15, gui_potion_vie.size()):
			if gui_potion_vie[n] != null:
				gui_potion_vie[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_vie":
					gui_potion_vie[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_vie":
					gui_potion_vie[lstIngredientsSelect.index2].visible = true
			
		for n in range(15, gui_potion_mana.size()):
			if gui_potion_mana[n] != null:
				gui_potion_mana[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_mana":
					gui_potion_mana[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_mana":
					gui_potion_mana[lstIngredientsSelect.index2].visible = true
		
		for n in range(15, gui_potion_elixir.size()):
			if gui_potion_elixir[n] != null:
				gui_potion_elixir[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_elixir":
					gui_potion_elixir[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_elixir":
					gui_potion_elixir[lstIngredientsSelect.index2].visible = true
	
	if nbPage == 2:
		for n in range(15):
			if gui_potion_vie[n] != null:
				#if lstIngredientsSelect.item1 == "bague_1" or lstIngredientsSelect.item2 == "bague_1":
				gui_potion_vie[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_vie":
					gui_potion_vie[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_vie":
					gui_potion_vie[lstIngredientsSelect.index2].visible = true
		
		for n in range(15):
			if gui_potion_mana[n] != null:
				#if lstIngredientsSelect.item1 == "bague_1" or lstIngredientsSelect.item2 == "bague_1":
				gui_potion_mana[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_mana":
					gui_potion_mana[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_mana":
					gui_potion_mana[lstIngredientsSelect.index2].visible = true
		
		for n in range(15):
			if gui_potion_elixir[n] != null:
				#if lstIngredientsSelect.item1 == "bague_1" or lstIngredientsSelect.item2 == "bague_1":
				gui_potion_elixir[n].visible = false
				if lstIngredientsSelect.index1 != -1 and lstIngredientsSelect.item1 == "potion_elixir":
					gui_potion_elixir[lstIngredientsSelect.index1].visible = true
				if lstIngredientsSelect.index2 != -1 and lstIngredientsSelect.item2 == "potion_elixir":
					gui_potion_elixir[lstIngredientsSelect.index2].visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	
	if mouse_pos.x - nodeParent.offset.x >= childButtonFlecheRight.position.x and mouse_pos.x - nodeParent.offset.x <= childButtonFlecheRight.position.x + 9 and mouse_pos.y - nodeParent.offset.y >= childButtonFlecheRight.position.y and mouse_pos.y - nodeParent.offset.y <= childButtonFlecheRight.position.y + 17:
		if Input.is_action_just_pressed("button_left"):
			nbPage += 1
			if nbPage >= 3:
				nbPage = 1
			#print("+page : ", nbPage)
	
	if mouse_pos.x - nodeParent.offset.x >= childButtonFlecheLeft.position.x and mouse_pos.x - nodeParent.offset.x <= childButtonFlecheLeft.position.x + 9 and mouse_pos.y - nodeParent.offset.y >= childButtonFlecheLeft.position.y and mouse_pos.y - nodeParent.offset.y <= childButtonFlecheLeft.position.y + 17:
		if Input.is_action_just_pressed("button_left"):
			nbPage -= 1
			if nbPage <= 0:
				nbPage = 2
			#print("-page : ", nbPage)
	
	if lstTextCraftFinal.etat == "tuto":
		lstTextCraftFinal["TUTO"].create[0].visible = true
		lstTextCraftFinal["TUTO"].create[1].visible = true
		lstTextCraftFinal["APERCU"].create[0].visible = false
		lstTextCraftFinal["APERCU"].create[1].visible = false
		lstTextCraftFinal["APERCU"].create[2].visible = false
		lstTextCraftFinal["APERCU"].create[3].visible = false
		lstTextCraftFinal["APERCU"].create[4].visible = false
	elif lstTextCraftFinal.etat == "stats":
		lstTextCraftFinal["TUTO"].create[0].visible = false
		lstTextCraftFinal["TUTO"].create[1].visible = false
		lstTextCraftFinal["APERCU"].create[0].visible = true
		lstTextCraftFinal["APERCU"].create[1].visible = true
		lstTextCraftFinal["APERCU"].create[2].visible = true
		lstTextCraftFinal["APERCU"].create[3].visible = true
		lstTextCraftFinal["APERCU"].create[4].visible = true
		if mouse_pos.x - nodeParent.offset.x >= childButtonCreation.position.x and mouse_pos.x - nodeParent.offset.x <= childButtonCreation.position.x + 91 and mouse_pos.y - nodeParent.offset.y >= childButtonCreation.position.y and mouse_pos.y - nodeParent.offset.y <= childButtonCreation.position.y + 27:
			if Input.is_action_just_pressed("button_left"):
				if DataSave.hero.gold >= nbPrixCraft:
					DataSave.hero.gold -= nbPrixCraft
					
					#Coder la suite de cette condition que je suit ...
	
	if lstIngredientsSelect.item1 == "potion_vie" and lstIngredientsSelect.item2 == "potion_mana" or lstIngredientsSelect.item1 == "potion_mana" and lstIngredientsSelect.item2 == "potion_vie":
		lstTextCraftFinal.etat = "stats"
	else:
		lstTextCraftFinal.etat = "tuto"
	
	
	if lstTextCraftFinal.etat == "stats":
		if lstIngredientsSelect.item1 == "potion_vie" and lstIngredientsSelect.item2 == "potion_mana" or lstIngredientsSelect.item1 == "potion_mana" and lstIngredientsSelect.item2 == "potion_vie":
			lstTextCraftFinal["APERCU"].description1 = "Nom : " + gui_items_resultat["potion_elixir"].txt_name
			var childName = lstTextCraftFinal["APERCU"].create[4].get_node("labelGuiTextFenetre")
			childName.text = lstTextCraftFinal["APERCU"].description1
			lstTextCraftFinal["APERCU"].stat1 = "Puissance : " + str(gui_items_resultat["potion_elixir"].nb_puissance)
			var childStat1 = lstTextCraftFinal["APERCU"].create[1].get_node("labelGuiTextFenetre")
			childStat1.text = lstTextCraftFinal["APERCU"].stat1
			lstTextCraftFinal["APERCU"].stat2 = "Mana : " + str(gui_items_resultat["potion_elixir"].nb_mana)
			var childStat2 = lstTextCraftFinal["APERCU"].create[2].get_node("labelGuiTextFenetre")
			childStat2.text = lstTextCraftFinal["APERCU"].stat2
	
	for n in range(21):
		
		if lstIngredientsSelect.item1 != "vide" and lstIngredientsSelect.item2 != "vide":
			if lstIngredientsSelect.item1 == txtItemType[n] and lstIngredientsSelect.item2 == lstIngredientsSelect.item1:
				if txtNbGoldTotalIngredients.visible == false:
					txtNbGoldTotalIngredients.visible = true
					var childTxtGold = txtNbGoldTotalIngredients.get_node("labelGuiTextFenetre")
					childTxtGold.position.x = 545
					childTxtGold.position.y = 313
					if lstIngredientsSelect.item1 == "potion_vie" and lstIngredientsSelect.item2 == "potion_mana" or lstIngredientsSelect.item1 == "potion_mana" and lstIngredientsSelect.item2 == "potion_vie" :
						nbPrixCraft = 100
						if gui_items_resultat["potion_elixir"].visible == false:
							gui_items_resultat["potion_elixir"].visible = true  
							gui_items_resultat["potion_elixir"].offset.x = nodeParent.offset.x + childSlotResultat.position.x
							gui_items_resultat["potion_elixir"].offset.y = nodeParent.offset.y + childSlotResultat.position.y
							gui_items_resultat["potion_elixir"].scale = Vector2(0.80, 0.80)
					else:
						nbPrixCraft = 0
					
					childTxtGold.text = str(nbPrixCraft)
					childTxtGold.add_theme_font_size_override("font_size", 27)
					childTxtGold.add_theme_color_override("font_color", Color(1.0, 0.443, 0.0, 1.0) )
					print("on affiche le prix et on va rendre possible le crafting !")
		
		if isSlot_libre[n] == true:
			if DataSave.items_posession.potionVie != nbCompteurPotionVie and txtItemType[n] == "vide":
				gui_potion_vie[n] = GuiPotionVie.instantiate()
				add_child(gui_potion_vie[n])
				var child_potionVie = gui_potion_vie[n].get_node("texturePotionVie")
				child_potionVie.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_vie"))
				child_potionVie.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
				gui_potion_vie[n].scale = Vector2(0.58, 0.68)
				gui_potion_vie[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_vie[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionVie += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_vie"
			
			if DataSave.items_posession.potionMana != nbCompteurPotionMana and txtItemType[n] == "vide":
				gui_potion_mana[n] = GuiPotionMana.instantiate()
				add_child(gui_potion_mana[n])
				var child_potionMana = gui_potion_mana[n].get_node("texturePotionMana")
				child_potionMana.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_mana"))
				child_potionMana.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
				gui_potion_mana[n].scale = Vector2(0.58, 0.68)
				gui_potion_mana[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_mana[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionMana += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_mana"
			
			if DataSave.items_posession.potionElixir != nbCompteurPotionElixir and txtItemType[n] == "vide":
				gui_potion_elixir[n] = GuiPotionElixir.instantiate()
				add_child(gui_potion_elixir[n])
				var child_potionElixir = gui_potion_elixir[n].get_node("texturePotionElixir")
				child_potionElixir.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_elixir"))
				child_potionElixir.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
				gui_potion_elixir[n].scale = Vector2(0.58, 0.68)
				gui_potion_elixir[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_elixir[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionElixir += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_elixir"
			
	update_inventaires_visibility()


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
