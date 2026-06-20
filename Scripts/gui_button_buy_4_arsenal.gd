extends CanvasLayer

@onready var gui_button_buy = get_node(".")
@onready var child_button = gui_button_buy.get_node("hud_button_175-2")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sizeScreen = get_viewport().get_visible_rect().size
	gui_button_buy.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-185)
	child_button.modulate = Color(1, 1, 1, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	DataSave.nbTotalItemsEquipements = DataSave.items_posession.sword1 + DataSave.items_posession.sword2 + DataSave.items_posession.sword3 + DataSave.items_posession.sword4 + DataSave.items_posession.sword5 + DataSave.items_posession.sword6 + DataSave.items_posession.sword7 + DataSave.items_posession.sword8 + DataSave.items_posession.heaume1 + DataSave.items_posession.heaume2 + DataSave.items_posession.heaume3 + DataSave.items_posession.heaume4 + DataSave.items_posession.heaume5 + DataSave.items_posession.heaume6 + DataSave.items_posession.collier1 + DataSave.items_posession.collier2 + DataSave.items_posession.collier3 + DataSave.items_posession.casque1 + DataSave.items_posession.casque2 + DataSave.items_posession.casque3 + DataSave.items_posession.casque4 + DataSave.items_posession.casque5 + DataSave.items_posession.casque6 + DataSave.items_posession.bouclier1 + DataSave.items_posession.bouclier2 + DataSave.items_posession.bouclier3 + DataSave.items_posession.bouclier4 + DataSave.items_posession.bouclier5 + DataSave.items_posession.bouclier6 + DataSave.items_posession.bouclier7 + DataSave.items_posession.bottes1 + DataSave.items_posession.bottes2 + DataSave.items_posession.bottes3 + DataSave.items_posession.bottes4 + DataSave.items_posession.bottes5 + DataSave.items_posession.bottes6 + DataSave.items_posession.bague1 + DataSave.items_posession.bague2 + DataSave.items_posession.bague3 
	if Input.is_action_just_released("button_left"):
		child_button.modulate = Color(1, 1, 1, 0)



func _on_hud_button_1752_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		child_button.modulate = Color(1, 1, 1, 1)
		if DataSave.hero.gold >= 175 and DataSave.nbTotalItemsEquipements < 14:
			DataSave.hero.gold -= 175
			DataSave.items_posession.bottes1 += 1
			DataSave.save_data()
