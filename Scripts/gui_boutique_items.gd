extends CanvasLayer

var GuiBague1 = preload("res://Objets/gui_bague_1.tscn")
var GuiCollier1 = preload("res://Objets/gui_collier_1.tscn")
var GuiPotionVie = preload("res://Objets/gui_potion_vie.tscn")
var GuiPotionMana = preload("res://Objets/gui_potion_mana.tscn")
var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")


var guiBague1
var guiCollier1
var guiPotionVie
var guiPotionMana
var guiFenetre
var guiTxtNameItem
var guiTxtStat1
var guiTxtStat2
var txtGoldHero 

var isPanelClose = true
var nbDecaleTextName = 0

#Faudra que je duplique les function de ce signal de godot pour diferencier les items : puissance et mana
func _on_mouse_entered_bague():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = guiBague1.txt_name
	nbDecaleTextName = 35
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Puissance : + " + str(guiBague1.nb_puissance)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Mana : + " + str(guiBague1.nb_mana)

func _on_mouse_entered_collier():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = guiCollier1.txt_name
	nbDecaleTextName = 5
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Puissance : + " + str(guiCollier1.nb_puissance)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Endurance : + " + str(guiCollier1.nb_endurance)

func _on_mouse_entered_potionVie():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = guiPotionVie.txt_name
	nbDecaleTextName = 47
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Récupère l'intégralité de ses \n points de vie"

func _on_mouse_entered_potionMana():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = guiPotionMana.txt_name
	nbDecaleTextName = 38
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Récupère l'intégralité de ses \n points de mana"

func _on_mouse_exited_bague():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_collier():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potionVie():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potionMana():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	nbDecaleTextName = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	txtGoldHero = GuiTextUi.instantiate()
	add_child(txtGoldHero)
	txtGoldHero.offset.x = 495
	txtGoldHero.offset.y = 469
	
	guiBague1 = GuiBague1.instantiate()
	add_child(guiBague1)
	guiBague1.offset.x = 473
	guiBague1.offset.y = 198
	var childGuiBague1 = guiBague1.get_node("textureBague1")
	childGuiBague1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague"))
	childGuiBague1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague"))
	
	guiCollier1 = GuiCollier1.instantiate()
	add_child(guiCollier1)
	guiCollier1.offset.x = 552
	guiCollier1.offset.y = 198
	var childGuiCollier1 = guiCollier1.get_node("textureCollier1")
	childGuiCollier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier"))
	childGuiCollier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
	
	guiPotionVie = GuiPotionVie.instantiate()
	add_child(guiPotionVie)
	guiPotionVie.offset.x = 630
	guiPotionVie.offset.y = 198
	var childGuiPotionVie = guiPotionVie.get_node("texturePotionVie")
	childGuiPotionVie.connect("mouse_entered", Callable(self, "_on_mouse_entered_potionVie"))
	childGuiPotionVie.connect("mouse_exited", Callable(self, "_on_mouse_exited_potionVie"))
	
	guiPotionMana = GuiPotionMana.instantiate()
	add_child(guiPotionMana)
	guiPotionMana.offset.x = 473
	guiPotionMana.offset.y = 334
	var childGuiPotionMana = guiPotionMana.get_node("texturePotionMana")
	childGuiPotionMana.connect("mouse_entered", Callable(self, "_on_mouse_entered_potionMana"))
	childGuiPotionMana.connect("mouse_exited", Callable(self, "_on_mouse_exited_potionMana"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	if guiFenetre != null:
		guiFenetre.offset.x = mouse_pos.x+10
		guiFenetre.offset.y = mouse_pos.y+13
	if guiTxtNameItem != null:
		guiTxtNameItem.offset.x = mouse_pos.x+10+nbDecaleTextName
		guiTxtNameItem.offset.y = mouse_pos.y+13
	if guiTxtStat1 != null:
		guiTxtStat1.offset.x = mouse_pos.x+10
		guiTxtStat1.offset.y = mouse_pos.y+40
	if guiTxtStat2 != null:
		guiTxtStat2.offset.x = mouse_pos.x+10
		guiTxtStat2.offset.y = mouse_pos.y+55
	
	var childTxtGoldHero = txtGoldHero.get_node("labelGuiTextFenetre")
	childTxtGoldHero.text = str(DataSave.hero.gold)
	childTxtGoldHero.add_theme_color_override("font_color", Color(1, 0.30, 0.03, 1))
	childTxtGoldHero.add_theme_font_size_override("font_size", 28)


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
