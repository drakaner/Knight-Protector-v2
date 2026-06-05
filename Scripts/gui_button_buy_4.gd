extends CanvasLayer

@onready var gui_button_buy = get_node(".")
@onready var child_node = gui_button_buy.get_node("hud_button_85")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sizeScreen = get_viewport().get_visible_rect().size
	gui_button_buy.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-185)
	child_node.modulate = Color(1, 1, 1, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("button_left"):
		child_node.modulate = Color(1, 1, 1, 0)


func _on_hud_button_85_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		child_node.modulate = Color(1, 1, 1, 1)
		print("bon la ca marche pour le button buy !!!!!")
		if DataSave.hero.gold >= 85:
			DataSave.hero.gold -= 85
			DataSave.items_posession.potionVie += 1
			DataSave.save_data()
