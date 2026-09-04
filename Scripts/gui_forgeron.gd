extends CanvasLayer

var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")

var gui_potion_vie = []
var gui_potion_mana = []
var gui_potion_elixir = []
var gui_bague1 = []
var gui_bague2 = []
var gui_bague3 = []
var gui_bottes1 = []
var gui_bottes2 = []
var gui_bottes3 = []
var gui_bottes4 = []
var gui_bottes5 = []
var gui_bottes6 = []
var gui_bouclier1 = []
var gui_bouclier2 = []
var gui_bouclier3 = []
var gui_bouclier4 = []
var gui_bouclier5 = []
var gui_bouclier6 = []
var gui_bouclier7 = []
var gui_casque1 = []
var gui_casque2 = []
var gui_casque3 = []
var gui_casque4 = []
var gui_casque5 = []
var gui_casque6 = []
var gui_collier1 = []
var gui_collier2 = []
var gui_collier3 = []
var gui_heaume1 = []
var gui_heaume2 = []
var gui_heaume3 = []
var gui_heaume4 = []
var gui_heaume5 = []
var gui_heaume6 = []
var gui_sword1 = []
var gui_sword2 = []
var gui_sword3 = []
var gui_sword4 = []
var gui_sword5 = []
var gui_sword6 = []
var gui_sword7 = []
var gui_sword8 = []

var nbCompteurPotionVie = 0
var nbCompteurPotionMana = 0
var nbCompteurPotionElixir = 0
var nbCompteurBague1 = 0
var nbCompteurBague2 = 0
var nbCompteurBague3 = 0
var nbCompteurBottes1 = 0
var nbCompteurBottes2 = 0
var nbCompteurBottes3 = 0
var nbCompteurBottes4 = 0
var nbCompteurBottes5 = 0
var nbCompteurBottes6 = 0
var nbCompteurBouclier1 = 0
var nbCompteurBouclier2 = 0
var nbCompteurBouclier3 = 0
var nbCompteurBouclier4 = 0
var nbCompteurBouclier5 = 0
var nbCompteurBouclier6 = 0
var nbCompteurBouclier7 = 0
var nbCompteurCasque1 = 0
var nbCompteurCasque2 = 0
var nbCompteurCasque3 = 0
var nbCompteurCasque4 = 0
var nbCompteurCasque5 = 0
var nbCompteurCasque6 = 0
var nbCompteurCollier1 = 0
var nbCompteurCollier2 = 0
var nbCompteurCollier3 = 0
var nbCompteurHeaume1 = 0
var nbCompteurHeaume2 = 0
var nbCompteurHeaume3 = 0
var nbCompteurHeaume4 = 0
var nbCompteurHeaume5 = 0
var nbCompteurHeaume6 = 0
var nbCompteurSword1 = 0
var nbCompteurSword2 = 0
var nbCompteurSword3 = 0
var nbCompteurSword4 = 0
var nbCompteurSword5 = 0
var nbCompteurSword6 = 0
var nbCompteurSword7 = 0
var nbCompteurSword8 = 0

var isPanelClose = true

var txtNbGold

var txtItemType = []
var isSlot_libre = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	txtItemType.resize(15)
	isSlot_libre.resize(15)
	
	for n in range(15):
		txtItemType[n] = "vide"
		isSlot_libre[n] = true
	
	txtNbGold = GuiTextUi.instantiate()
	add_child(txtNbGold)
	var childTxtGold = txtNbGold.get_node("labelGuiTextFenetre")
	childTxtGold.position.x = 400
	childTxtGold.position.y = 247
	childTxtGold.text = str(DataSave.hero.gold)
	childTxtGold.add_theme_font_size_override("font_size", 27)
	childTxtGold.add_theme_color_override("font_color", Color(1.0, 0.443, 0.0, 1.0) )


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for n in range(15):
		if isSlot_libre[n] == true:
			if DataSave.items_posession.potionVie != nbCompteurPotionVie and txtItemType[n] == "vide":
				gui_potion_vie[n] = GuiPotionVie.instantiate()
				add_child(gui_potion_vie[n])
				var child_potion_vie = gui_potion_vie[n].get_node("texturePotionVie")
				child_potion_vie.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_vie"))
				child_potion_vie.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_vie"))
				gui_potion_vie[n].scale = Vector2(0.7, 0.8)
				gui_potion_vie[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_vie[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionVie += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_vie"
			
			if DataSave.items_posession.potionMana != nbCompteurPotionMana and txtItemType[n] == "vide":
				gui_potion_mana[n] = GuiPotionMana.instantiate()
				add_child(gui_potion_mana[n])
				var child_potion_mana = gui_potion_mana[n].get_node("texturePotionMana")
				child_potion_mana.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_mana"))
				child_potion_mana.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_mana"))
				gui_potion_mana[n].scale = Vector2(0.7, 0.8)
				gui_potion_mana[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_mana[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionMana += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_mana"
			
			if DataSave.items_posession.potionElixir != nbCompteurPotionElixir and txtItemType[n] == "vide":
				gui_potion_elixir[n] = GuiPotionElixir.instantiate()
				add_child(gui_potion_elixir[n])
				var child_potion_elixir = gui_potion_elixir[n].get_node("texturePotionElixir")
				child_potion_elixir.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_elixir"))
				child_potion_elixir.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_elixir"))
				gui_potion_elixir[n].scale = Vector2(0.7, 0.8)
				gui_potion_elixir[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_elixir[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionElixir += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_elixir"
			
			if DataSave.items_posession.bague1 != nbCompteurBague1 and txtItemType[n] == "vide":
				gui_bague1[n] = GuiBague1.instantiate()
				add_child(gui_bague1[n])
				var child_bague1 = gui_bague1[n].get_node("textureBague1")
				child_bague1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague1"))
				child_bague1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague1"))
				gui_bague1[n].scale = Vector2(0.7, 0.8)
				gui_bague1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bague_1"
			
			if DataSave.items_posession.bague2 != nbCompteurBague2 and txtItemType[n] == "vide":
				gui_bague2[n] = GuiBague2.instantiate()
				add_child(gui_bague2[n])
				var child_bague2 = gui_bague2[n].get_node("textureBague2")
				child_bague2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague2"))
				child_bague2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague2"))
				gui_bague2[n].scale = Vector2(0.7, 0.8)
				gui_bague2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bague_2"
			
			if DataSave.items_posession.bague3 != nbCompteurBague3 and txtItemType[n] == "vide":
				gui_bague3[n] = GuiBague3.instantiate()
				add_child(gui_bague3[n])
				var child_bague3 = gui_bague3[n].get_node("textureBague3")
				child_bague3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague3"))
				child_bague3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague3"))
				gui_bague3[n].scale = Vector2(0.7, 0.8)
				gui_bague3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bague_3"
			
			if DataSave.items_posession.bottes1 != nbCompteurBottes1 and txtItemType[n] == "vide":
				gui_bottes1[n] = GuiBottes1.instantiate()
				add_child(gui_bottes1[n])
				var child_bottes1 = gui_bottes1[n].get_node("textureBottes1")
				child_bottes1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes1"))
				child_bottes1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes1"))
				gui_bottes1[n].scale = Vector2(0.7, 0.8)
				gui_bottes1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_1"
			
			if DataSave.items_posession.bottes2 != nbCompteurBottes2 and txtItemType[n] == "vide":
				gui_bottes2[n] = GuiBottes2.instantiate()
				add_child(gui_bottes2[n])
				var child_bottes2 = gui_bottes2[n].get_node("textureBottes2")
				child_bottes2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes2"))
				child_bottes2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes2"))
				gui_bottes2[n].scale = Vector2(0.7, 0.8)
				gui_bottes2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_2"
			
			if DataSave.items_posession.bottes3 != nbCompteurBottes3 and txtItemType[n] == "vide":
				gui_bottes3[n] = GuiBottes3.instantiate()
				add_child(gui_bottes3[n])
				var child_bottes3 = gui_bottes3[n].get_node("textureBottes3")
				child_bottes3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes3"))
				child_bottes3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes3"))
				gui_bottes3[n].scale = Vector2(0.7, 0.8)
				gui_bottes3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_3"
			
			if DataSave.items_posession.bottes4 != nbCompteurBottes4 and txtItemType[n] == "vide":
				gui_bottes4[n] = GuiBottes4.instantiate()
				add_child(gui_bottes4[n])
				var child_bottes4 = gui_bottes4[n].get_node("textureBottes4")
				child_bottes4.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes4"))
				child_bottes4.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes4"))
				gui_bottes4[n].scale = Vector2(0.7, 0.8)
				gui_bottes4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_4"
			
			if DataSave.items_posession.bottes5 != nbCompteurBottes5 and txtItemType[n] == "vide":
				gui_bottes5[n] = GuiBottes5.instantiate()
				add_child(gui_bottes5[n])
				var child_bottes5 = gui_bottes5[n].get_node("textureBottes5")
				child_bottes5.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes5"))
				child_bottes5.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes5"))
				gui_bottes5[n].scale = Vector2(0.7, 0.8)
				gui_bottes5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_5"
			
			if DataSave.items_posession.bottes6 != nbCompteurBottes6 and txtItemType[n] == "vide":
				gui_bottes6[n] = GuiBottes6.instantiate()
				add_child(gui_bottes6[n])
				var child_bottes6 = gui_bottes6[n].get_node("textureBottes6")
				child_bottes6.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes6"))
				child_bottes6.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes6"))
				gui_bottes6[n].scale = Vector2(0.7, 0.8)
				gui_bottes6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_6"
			
			if DataSave.items_posession.bouclier1 != nbCompteurBouclier1 and txtItemType[n] == "vide":
				gui_bouclier1[n] = GuiBouclier1.instantiate()
				add_child(gui_bouclier1[n])
				var child_bouclier1 = gui_bouclier1[n].get_node("textureBouclier1")
				child_bouclier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier1"))
				child_bouclier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier1[n].scale = Vector2(0.7, 0.8)
				gui_bouclier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_1"
			
			if DataSave.items_posession.bouclier2 != nbCompteurBouclier2 and txtItemType[n] == "vide":
				gui_bouclier2[n] = GuiBouclier2.instantiate()
				add_child(gui_bouclier2[n])
				var child_bouclier2 = gui_bouclier2[n].get_node("textureBouclier2")
				child_bouclier2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier2"))
				child_bouclier2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier2[n].scale = Vector2(0.7, 0.8)
				gui_bouclier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_2"
			
			if DataSave.items_posession.bouclier3 != nbCompteurBouclier3 and txtItemType[n] == "vide":
				gui_bouclier3[n] = GuiBouclier3.instantiate()
				add_child(gui_bouclier3[n])
				var child_bouclier3 = gui_bouclier3[n].get_node("textureBouclier3")
				child_bouclier3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier3"))
				child_bouclier3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier3[n].scale = Vector2(0.7, 0.8)
				gui_bouclier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_3"
			
			if DataSave.items_posession.bouclier4 != nbCompteurBouclier4 and txtItemType[n] == "vide":
				gui_bouclier4[n] = GuiBouclier4.instantiate()
				add_child(gui_bouclier4[n])
				var child_bouclier4 = gui_bouclier4[n].get_node("textureBouclier4")
				child_bouclier4.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier4"))
				child_bouclier4.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier4[n].scale = Vector2(0.7, 0.8)
				gui_bouclier4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_4"
			
			if DataSave.items_posession.bouclier5 != nbCompteurBouclier5 and txtItemType[n] == "vide":
				gui_bouclier5[n] = GuiBouclier5.instantiate()
				add_child(gui_bouclier5[n])
				var child_bouclier5 = gui_bouclier5[n].get_node("textureBouclier5")
				child_bouclier5.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier5"))
				child_bouclier5.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier5[n].scale = Vector2(0.7, 0.8)
				gui_bouclier5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_5"
			
			if DataSave.items_posession.bouclier6 != nbCompteurBouclier6 and txtItemType[n] == "vide":
				gui_bouclier6[n] = GuiBouclier6.instantiate()
				add_child(gui_bouclier6[n])
				var child_bouclier6 = gui_bouclier6[n].get_node("textureBouclier6")
				child_bouclier6.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier6"))
				child_bouclier6.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier6[n].scale = Vector2(0.7, 0.8)
				gui_bouclier6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_6"
			
			if DataSave.items_posession.bouclier7 != nbCompteurBouclier7 and txtItemType[n] == "vide":
				gui_bouclier7[n] = GuiBouclier7.instantiate()
				add_child(gui_bouclier7[n])
				var child_bouclier7 = gui_bouclier7[n].get_node("textureBouclier7")
				child_bouclier7.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier7"))
				child_bouclier7.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier7[n].scale = Vector2(0.7, 0.8)
				gui_bouclier7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier7 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_7"
			
			if DataSave.items_posession.casque1 != nbCompteurCasque1 and txtItemType[n] == "vide":
				gui_casque1[n] = GuiCasque1.instantiate()
				add_child(gui_casque1[n])
				var child_casque1 = gui_casque1[n].get_node("textureCasque1")
				child_casque1.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque1"))
				child_casque1.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque1[n].scale = Vector2(0.7, 0.8)
				gui_casque1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_1"
			
			if DataSave.items_posession.casque2 != nbCompteurCasque2 and txtItemType[n] == "vide":
				gui_casque2[n] = GuiCasque2.instantiate()
				add_child(gui_casque2[n])
				var child_casque2 = gui_casque2[n].get_node("textureCasque2")
				child_casque2.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque2"))
				child_casque2.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque2[n].scale = Vector2(0.7, 0.8)
				gui_casque2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_2"
			
			if DataSave.items_posession.casque3 != nbCompteurCasque3 and txtItemType[n] == "vide":
				gui_casque3[n] = GuiCasque3.instantiate()
				add_child(gui_casque3[n])
				var child_casque3 = gui_casque3[n].get_node("textureCasque3")
				child_casque3.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque3"))
				child_casque3.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque3[n].scale = Vector2(0.7, 0.8)
				gui_casque3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_3"
			
			if DataSave.items_posession.casque4 != nbCompteurCasque4 and txtItemType[n] == "vide":
				gui_casque4[n] = GuiCasque4.instantiate()
				add_child(gui_casque4[n])
				var child_casque4 = gui_casque4[n].get_node("textureCasque4")
				child_casque4.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque4"))
				child_casque4.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque4[n].scale = Vector2(0.7, 0.8)
				gui_casque4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_4"
			
			if DataSave.items_posession.casque5 != nbCompteurCasque5 and txtItemType[n] == "vide":
				gui_casque5[n] = GuiCasque5.instantiate()
				add_child(gui_casque5[n])
				var child_casque5 = gui_casque5[n].get_node("textureCasque5")
				child_casque5.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque5"))
				child_casque5.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque5[n].scale = Vector2(0.7, 0.8)
				gui_casque5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_5"
			
			if DataSave.items_posession.casque6 != nbCompteurCasque6 and txtItemType[n] == "vide":
				gui_casque6[n] = GuiCasque6.instantiate()
				add_child(gui_casque6[n])
				var child_casque6 = gui_casque6[n].get_node("textureCasque6")
				child_casque6.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque6"))
				child_casque6.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque6[n].scale = Vector2(0.7, 0.8)
				gui_casque6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_6"
			
			if DataSave.items_posession.collier1 != nbCompteurCollier1 and txtItemType[n] == "vide":
				gui_collier1[n] = GuiCollier1.instantiate()
				add_child(gui_collier1[n])
				var child_collier1 = gui_collier1[n].get_node("textureCollier1")
				child_collier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier1"))
				child_collier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier1[n].scale = Vector2(0.7, 0.8)
				gui_collier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_1"
			
			if DataSave.items_posession.collier2 != nbCompteurCollier2 and txtItemType[n] == "vide":
				gui_collier2[n] = GuiCollier2.instantiate()
				add_child(gui_collier2[n])
				var child_collier2 = gui_collier2[n].get_node("textureCollier2")
				child_collier2.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier2"))
				child_collier2.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier2[n].scale = Vector2(0.7, 0.8)
				gui_collier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_2"
			
			if DataSave.items_posession.collier3 != nbCompteurCollier3 and txtItemType[n] == "vide":
				gui_collier3[n] = GuiCollier3.instantiate()
				add_child(gui_collier3[n])
				var child_collier3 = gui_collier3[n].get_node("textureCollier3")
				child_collier3.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier3"))
				child_collier3.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier3[n].scale = Vector2(0.7, 0.8)
				gui_collier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_3"
			
			if DataSave.items_posession.heaume1 != nbCompteurHeaume1 and txtItemType[n] == "vide":
				gui_heaume1[n] = GuiHeaume1.instantiate()
				add_child(gui_heaume1[n])
				var child_heaume1 = gui_heaume1[n].get_node("textureHeaume1")
				child_heaume1.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume1"))
				child_heaume1.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume1[n].scale = Vector2(0.7, 0.8)
				gui_heaume1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_1"
			
			if DataSave.items_posession.heaume2 != nbCompteurHeaume2 and txtItemType[n] == "vide":
				gui_heaume2[n] = GuiHeaume2.instantiate()
				add_child(gui_heaume2[n])
				var child_heaume2 = gui_heaume2[n].get_node("textureHeaume2")
				child_heaume2.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume2"))
				child_heaume2.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume2[n].scale = Vector2(0.7, 0.8)
				gui_heaume2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_2"
			
			if DataSave.items_posession.heaume3 != nbCompteurHeaume3 and txtItemType[n] == "vide":
				gui_heaume3[n] = GuiHeaume3.instantiate()
				add_child(gui_heaume3[n])
				var child_heaume3 = gui_heaume3[n].get_node("textureHeaume3")
				child_heaume3.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume3"))
				child_heaume3.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume3[n].scale = Vector2(0.7, 0.8)
				gui_heaume3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_3"
			
			if DataSave.items_posession.heaume4 != nbCompteurHeaume4 and txtItemType[n] == "vide":
				gui_heaume4[n] = GuiHeaume4.instantiate()
				add_child(gui_heaume4[n])
				var child_heaume4 = gui_heaume4[n].get_node("textureHeaume4")
				child_heaume4.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume4"))
				child_heaume4.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume4[n].scale = Vector2(0.7, 0.8)
				gui_heaume4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_4"
			
			if DataSave.items_posession.heaume5 != nbCompteurHeaume5 and txtItemType[n] == "vide":
				gui_heaume5[n] = GuiHeaume5.instantiate()
				add_child(gui_heaume5[n])
				var child_heaume5 = gui_heaume5[n].get_node("textureHeaume5")
				child_heaume5.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume5"))
				child_heaume5.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume5[n].scale = Vector2(0.7, 0.8)
				gui_heaume5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_5"
			
			if DataSave.items_posession.heaume6 != nbCompteurHeaume6 and txtItemType[n] == "vide":
				gui_heaume6[n] = GuiHeaume6.instantiate()
				add_child(gui_heaume6[n])
				var child_heaume6 = gui_heaume6[n].get_node("textureHeaume6")
				child_heaume6.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume6"))
				child_heaume6.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume6[n].scale = Vector2(0.7, 0.8)
				gui_heaume6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_6"
			
			if DataSave.items_posession.sword1 != nbCompteurSword1 and txtItemType[n] == "vide":
				gui_sword1[n] = GuiSword1.instantiate()
				add_child(gui_sword1[n])
				var child_sword1 = gui_sword1[n].get_node("textureSword1")
				child_sword1.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword1"))
				child_sword1.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword1[n].scale = Vector2(0.7, 0.8)
				gui_sword1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_1"
			
			if DataSave.items_posession.sword2 != nbCompteurSword2 and txtItemType[n] == "vide":
				gui_sword2[n] = GuiSword2.instantiate()
				add_child(gui_sword2[n])
				var child_sword2 = gui_sword2[n].get_node("textureSword2")
				child_sword2.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword2"))
				child_sword2.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword2[n].scale = Vector2(0.7, 0.8)
				gui_sword2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_2"
			
			if DataSave.items_posession.sword3 != nbCompteurSword3 and txtItemType[n] == "vide":
				gui_sword3[n] = GuiSword3.instantiate()
				add_child(gui_sword3[n])
				var child_sword3 = gui_sword3[n].get_node("textureSword3")
				child_sword3.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword3"))
				child_sword3.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword3[n].scale = Vector2(0.7, 0.8)
				gui_sword3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_3"
			
			if DataSave.items_posession.sword4 != nbCompteurSword4 and txtItemType[n] == "vide":
				gui_sword4[n] = GuiSword4.instantiate()
				add_child(gui_sword4[n])
				var child_sword4 = gui_sword4[n].get_node("textureSword4")
				child_sword4.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword4"))
				child_sword4.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword4[n].scale = Vector2(0.7, 0.8)
				gui_sword4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_4"
			
			if DataSave.items_posession.sword5 != nbCompteurSword5 and txtItemType[n] == "vide":
				gui_sword5[n] = GuiSword5.instantiate()
				add_child(gui_sword5[n])
				var child_sword5 = gui_sword5[n].get_node("textureSword5")
				child_sword5.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword5"))
				child_sword5.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword5[n].scale = Vector2(0.7, 0.8)
				gui_sword5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_5"
			
			if DataSave.items_posession.sword6 != nbCompteurSword6 and txtItemType[n] == "vide":
				gui_sword6[n] = GuiSword6.instantiate()
				add_child(gui_sword6[n])
				var child_sword6 = gui_sword6[n].get_node("textureSword6")
				child_sword6.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword6"))
				child_sword6.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword6[n].scale = Vector2(0.7, 0.8)
				gui_sword6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_6"
			
			if DataSave.items_posession.sword7 != nbCompteurSword7 and txtItemType[n] == "vide":
				gui_sword7[n] = GuiSword7.instantiate()
				add_child(gui_sword7[n])
				var child_sword7 = gui_sword7[n].get_node("textureSword7")
				child_sword7.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword7"))
				child_sword7.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword7[n].scale = Vector2(0.7, 0.8)
				gui_sword7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword7 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_7"
			
			if DataSave.items_posession.sword8 != nbCompteurSword8 and txtItemType[n] == "vide":
				gui_sword8[n] = GuiSword8.instantiate()
				add_child(gui_sword8[n])
				var child_sword8 = gui_sword8[n].get_node("textureSword8")
				child_sword8.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword8"))
				child_sword8.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword8[n].scale = Vector2(0.7, 0.8)
				gui_sword8[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword8[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword8 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_8"


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
