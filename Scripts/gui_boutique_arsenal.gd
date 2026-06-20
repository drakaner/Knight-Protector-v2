extends CanvasLayer

var GuiSword1 = preload("res://Objets/gui_sword_1.tscn")
var GuiBouclier1 = preload("res://Objets/gui_bouclier_1.tscn")
var GuiCasque1 = preload("res://Objets/gui_casque_1.tscn")
var GuiHeaume1 = preload("res://Objets/gui_heaume_1.tscn")
var GuiBottes1 = preload("res://Objets/gui_bottes_1.tscn")
var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")

var gui_sword1
var gui_bouclier1
var gui_casque1
var gui_heaume1
var gui_bottes1
var guiFenetre
var guiTxtNameItem
var guiTxtStat1
var guiTxtStat2
var txtGoldHero 

var nbDecaleTextName = 0
var isPanelClose = true

func _on_mouse_entered_sword():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = gui_sword1.txt_name
	nbDecaleTextName = 40
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Attaque : + " + str(gui_sword1.nb_attaque)
	

func _on_mouse_entered_bouclier():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = gui_bouclier1.txt_name
	nbDecaleTextName = 35
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier1.nb_vie)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier1.nb_defense)

func _on_mouse_entered_casque():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = gui_casque1.txt_name
	nbDecaleTextName = 35
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Vie : + " + str(gui_casque1.nb_vie)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Défense : + " + str(gui_casque1.nb_defense)

func _on_mouse_entered_heaume():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = gui_heaume1.txt_name
	nbDecaleTextName = 35
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Vie : + " + str(gui_heaume1.nb_vie)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Défense : + " + str(gui_heaume1.nb_defense)

func _on_mouse_entered_bottes():
	guiFenetre = GuiFenetre.instantiate()
	add_child(guiFenetre)
	guiTxtNameItem = GuiTextUi.instantiate()
	add_child(guiTxtNameItem)
	var childGuiTxtNameItem = guiTxtNameItem.get_node("labelGuiTextFenetre")
	childGuiTxtNameItem.text = gui_bottes1.txt_name
	nbDecaleTextName = 35
	guiTxtStat1 = GuiTextUi.instantiate()
	add_child(guiTxtStat1)
	var childGuiTxtStat1 = guiTxtStat1.get_node("labelGuiTextFenetre")
	childGuiTxtStat1.text = "Vie : + " + str(gui_bottes1.nb_vie)
	guiTxtStat2 = GuiTextUi.instantiate()
	add_child(guiTxtStat2)
	var childGuiTxtStat2 = guiTxtStat2.get_node("labelGuiTextFenetre")
	childGuiTxtStat2.text = "Défense : + " + str(gui_bottes1.nb_defense)

func _on_mouse_exited_sword():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bouclier():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_casque():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_heaume():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes():
	guiFenetre.queue_free()
	guiTxtNameItem.queue_free()
	guiTxtStat1.queue_free()
	guiTxtStat2.queue_free()
	nbDecaleTextName = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	txtGoldHero = GuiTextUi.instantiate()
	add_child(txtGoldHero)
	txtGoldHero.offset.x = 495
	txtGoldHero.offset.y = 469
	
	gui_sword1 = GuiSword1.instantiate()
	add_child(gui_sword1)
	gui_sword1.offset.x = 472
	gui_sword1.offset.y = 197
	var childGuiSword1 = gui_sword1.get_node("textureSword1")
	childGuiSword1.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword"))
	childGuiSword1.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
	
	gui_bouclier1 = GuiBouclier1.instantiate()
	add_child(gui_bouclier1)
	gui_bouclier1.offset.x = 552
	gui_bouclier1.offset.y = 197
	var childGuiBouclier1 = gui_bouclier1.get_node("textureBouclier1")
	childGuiBouclier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier"))
	childGuiBouclier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
	
	gui_casque1 = GuiCasque1.instantiate()
	add_child(gui_casque1)
	gui_casque1.offset.x = 630
	gui_casque1.offset.y = 197
	var childGuiCasque1 = gui_casque1.get_node("textureCasque1")
	childGuiCasque1.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque"))
	childGuiCasque1.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
	
	gui_heaume1 = GuiHeaume1.instantiate()
	add_child(gui_heaume1)
	gui_heaume1.offset.x = 472
	gui_heaume1.offset.y = 334
	var childGuiHeaume1 = gui_heaume1.get_node("textureHeaume1")
	childGuiHeaume1.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume"))
	childGuiHeaume1.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
	
	gui_bottes1 = GuiBottes1.instantiate()
	add_child(gui_bottes1)
	gui_bottes1.offset.x = 552
	gui_bottes1.offset.y = 334
	var childGuiBottes1 = gui_bottes1.get_node("textureBottes1")
	childGuiBottes1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes"))
	childGuiBottes1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
	
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
