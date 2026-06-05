extends CanvasLayer

@onready var gui_button_buy = get_node(".")
@onready var child_button = gui_button_buy.get_node("hud_button_125")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sizeScreen = get_viewport().get_visible_rect().size
	gui_button_buy.offset = Vector2(sizeScreen.x/2-150, sizeScreen.y/2-185)
	child_button.modulate = Color(1, 1, 1, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("button_left"):
		child_button.modulate = Color(1, 1, 1, 0)

func _on_hud_button_125_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		child_button.modulate = Color(1, 1, 1, 1)
		if DataSave.hero.gold >= 125:
			DataSave.hero.gold -= 125
			DataSave.items_posession.bouclier1 += 1
			DataSave.save_data()
