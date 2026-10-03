extends CanvasLayer

signal guiHeroOpen

const LARGEUR_MAX_BARRE_VIE = 148
const LARGEUR_MAX_BARRE_MANA = 126
const LARGEUR_MAX_BARRE_ENDURANCE = 112

var childBarreVie
var childBarreMana
var childBarreEndurance

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	childBarreVie = get_node("hud_barreVie")
	childBarreMana = get_node("hud_barreMana")
	childBarreEndurance = get_node("hud_barreEndurance")
	#print("point de vie max : ", DataSave.hero.vieMax)
	#print("point de vie restant : ", DataSave.hero.vie)
	#print("largeur de la barre de vie : ", childBarreVie.size.x)
	
	childBarreVie.size.x = float(DataSave.hero.vie) / DataSave.hero.vieMax * LARGEUR_MAX_BARRE_VIE
	childBarreMana.size.x = float(DataSave.hero.mana) / DataSave.hero.manaMax * LARGEUR_MAX_BARRE_MANA
	childBarreEndurance.size.x = float(DataSave.hero.endurance) / DataSave.hero.enduranceMax * LARGEUR_MAX_BARRE_ENDURANCE


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print("largeur de la barre de vie : ", childBarreVie.size.x)
	childBarreVie.size.x = float(DataSave.hero.vie) / DataSave.hero.vieMax * LARGEUR_MAX_BARRE_VIE
	childBarreMana.size.x = float(DataSave.hero.mana) / DataSave.hero.manaMax * LARGEUR_MAX_BARRE_MANA
	childBarreEndurance.size.x = float(DataSave.hero.endurance) / DataSave.hero.enduranceMax * LARGEUR_MAX_BARRE_ENDURANCE
	if DataSave.hero.vie <= 0:
		DataSave.hero.vie = 0
		childBarreVie.size.x = 0
	if DataSave.hero.mana <= 0:
		DataSave.hero.mana = 0
		childBarreMana.size.x = 0
	if DataSave.hero.endurance <= 0:
		DataSave.hero.endurance = 0
		childBarreEndurance.size.x = 0


func _on_panel_statsequipements_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		emit_signal("guiHeroOpen", "hero")
