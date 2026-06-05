extends CanvasLayer

var isPanelClose = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("data item : ",DataSave.items_posession.potionVie)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
