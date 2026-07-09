extends Node2D

var HeroScene1 = preload("res://Objets/hero_1.tscn")
var HeroScene2 = preload("res://Objets/hero_2.tscn")
var HeroScene3 = preload("res://Objets/hero_3.tscn")
var GUIStatue = preload("res://Objets/gui_hud_statue.tscn")
var GUICoffreStockage = preload("res://Objets/gui_hud_coffre_stockage.tscn")
var GUIForgeron = preload("res://Objets/gui_forgeron.tscn")
var GUIArsenal = preload("res://Objets/gui_boutique_arsenal.tscn")
var GUIItems = preload("res://Objets/gui_boutique_items.tscn")
var GUIAlchimie = preload("res://Objets/gui_alchimie.tscn")
var GUIInventaire = preload("res://Objets/gui_inventaire.tscn")
var GUIEquipement = preload("res://Objets/gui_hud_equipement.tscn")

var hero = { rnd=randi_range(1, 3), img={}, current=0, gold=500 }
var gui_statue
var gui_coffre_stockage
var gui_forgeron
var gui_arsenal
var gui_items
var gui_alchimie
var gui_inventaire
var gui_equipement

@onready var gui_hero = get_node("gui_hudHero")

func _Sgui_open(pTypeGui):
	var sizeScreen = get_viewport().get_visible_rect().size
	if pTypeGui == "statue":
		gui_statue = GUIStatue.instantiate()
		add_child(gui_statue)
		gui_statue.offset = Vector2(sizeScreen.x/2-150, 0)
		gui_statue.isPanelClose = false
	elif pTypeGui == "coffre_stockage":
		gui_coffre_stockage = GUICoffreStockage.instantiate()
		add_child(gui_coffre_stockage)
		gui_coffre_stockage.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-155)
		gui_coffre_stockage.isPanelClose = false
	elif pTypeGui == "forgeron":
		gui_forgeron = GUIForgeron.instantiate()
		add_child(gui_forgeron)
		gui_forgeron.offset = Vector2(sizeScreen.x/2-220, sizeScreen.y/2-130)
		gui_forgeron.isPanelClose = false
	elif pTypeGui == "arsenal":
		gui_arsenal = GUIArsenal.instantiate()
		add_child(gui_arsenal)
		gui_arsenal.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-185)
		gui_arsenal.isPanelClose = false
	elif pTypeGui == "items":
		gui_items = GUIItems.instantiate()
		add_child(gui_items)
		gui_items.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-185)
		gui_items.isPanelClose = false
	elif pTypeGui == "alchimie":
		gui_alchimie = GUIAlchimie.instantiate()
		add_child(gui_alchimie)
		gui_alchimie.offset = Vector2(sizeScreen.x/2-220, sizeScreen.y/2-130)
		gui_alchimie.isPanelClose = false
	elif pTypeGui == "inventaire":
		hero.img[hero.current].isGuiOpen = true
		gui_inventaire = GUIInventaire.instantiate()
		add_child(gui_inventaire)
		gui_inventaire.offset = Vector2(sizeScreen.x/2-300, sizeScreen.y/2-100)
		gui_inventaire.isPanelClose = false
	elif pTypeGui == "hero":
		if hero.img[hero.current].isGuiOpen == false:
			hero.img[hero.current].isGuiOpen = true
			gui_equipement = GUIEquipement.instantiate()
			add_child(gui_equipement)
			gui_equipement.offset = Vector2(sizeScreen.x/2-300, sizeScreen.y/2-100)
			gui_equipement.isPanelClose = false
		
	#print("jouvre le gui de type : ", pTypeGui)
	#print("OOOOOOOAAAAAAAAAAAAHHHHHHHH : ",hero.img[hero.current].isGuiStatueOpen)

func demarreJeu():
	hero.rnd = randi_range(1, 3)
	if hero.rnd == 1:
		hero.img[0] = HeroScene1.instantiate()
		hero.current = 0
		DataSave.hero.vieMax = 50
		DataSave.hero.vie = DataSave.hero.vieMax
		DataSave.hero.manaMax = 15
		DataSave.hero.mana = DataSave.hero.manaMax
		DataSave.hero.puissance = 10
		DataSave.hero.endurance = 70
		DataSave.hero.regene_endurance = 2
		DataSave.hero.attaque = 9
		DataSave.hero.defense = 9
	elif hero.rnd == 2:
		hero.img[1] = HeroScene2.instantiate()
		hero.current = 1
		DataSave.hero.vieMax = 100
		DataSave.hero.vie = DataSave.hero.vieMax
		DataSave.hero.manaMax = 15
		DataSave.hero.mana = DataSave.hero.manaMax
		DataSave.hero.puissance = 10
		DataSave.hero.endurance = 25
		DataSave.hero.regene_endurance = 1
		DataSave.hero.attaque = 5
		DataSave.hero.defense = 15
	elif hero.rnd == 3:
		hero.img[2] = HeroScene3.instantiate()
		hero.current = 2
		DataSave.hero.vieMax = 35
		DataSave.hero.vie = DataSave.hero.vieMax
		DataSave.hero.manaMax = 15
		DataSave.hero.mana = DataSave.hero.manaMax
		DataSave.hero.puissance = 20
		DataSave.hero.endurance = 90
		DataSave.hero.regene_endurance = 3
		DataSave.hero.attaque = 15
		DataSave.hero.defense = 5
	
	$YSortHeros.add_child(hero.img[hero.current])
	print("Le hero rnd choisie est : ",hero.rnd)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	demarreJeu()
	hero.img[hero.current].connect("guiStatueOpen", Callable(self, "_Sgui_open"))
	hero.img[hero.current].connect("guiCoffreStockage", Callable(self, "_Sgui_open"))
	hero.img[hero.current].connect("guiForgeronOpen", Callable(self, "_Sgui_open"))
	hero.img[hero.current].connect("guiArsenalOpen", Callable(self, "_Sgui_open"))
	hero.img[hero.current].connect("guiItemOpen", Callable(self, "_Sgui_open"))
	hero.img[hero.current].connect("guiAlchimieOpen", Callable(self, "_Sgui_open"))
	gui_hero.connect("guiHeroOpen", Callable(self, "_Sgui_open"))

func gestuinInterfaceUI():
	if Input.is_action_just_pressed("i"):
		if hero.img[hero.current].isGuiOpen == false:
			_Sgui_open("inventaire")
	
	if gui_statue != null:
		if gui_statue.isPanelClose == true:
			hero.img[hero.current].isGuiStatueOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_statue.queue_free()
	elif gui_coffre_stockage != null:
		if gui_coffre_stockage.isPanelClose == true:
			hero.img[hero.current].isGuiCoffreStockageOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_coffre_stockage.queue_free()
	elif gui_forgeron != null:
		if gui_forgeron.isPanelClose == true:
			hero.img[hero.current].isGuiForgeronOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_forgeron.queue_free()
	elif gui_arsenal != null:
		if gui_arsenal.isPanelClose == true:
			hero.img[hero.current].isGuiArsenalOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_arsenal.queue_free()
	elif gui_items != null:
		if gui_items.isPanelClose == true:
			hero.img[hero.current].isGuiItemOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_items.queue_free()
	elif gui_alchimie != null:
		if gui_alchimie.isPanelClose == true:
			hero.img[hero.current].isGuiAlchimieOpen = false
			hero.img[hero.current].isGuiOpen = false
			gui_alchimie.queue_free()
	elif gui_inventaire != null:
		if gui_inventaire.isPanelClose == true:
			hero.img[hero.current].isGuiOpen = false
			gui_inventaire.queue_free()
	elif gui_equipement != null:
		if gui_equipement.isPanelClose == true:
			hero.img[hero.current].isGuiOpen = false
			gui_equipement.queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	gestuinInterfaceUI()
