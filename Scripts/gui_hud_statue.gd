extends CanvasLayer

@onready var nodeParent = get_node(".")

var isPanelClose = true 

var childSlotButtonSave

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	childSlotButtonSave = get_node("panel_sauvegarde")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse = get_viewport().get_mouse_position()
	
	if mouse.x >= childSlotButtonSave.position.x + nodeParent.offset.x and mouse.x <= childSlotButtonSave.position.x + nodeParent.offset.x + 191 and mouse.y >= childSlotButtonSave.position.y + nodeParent.offset.y and mouse.y <= childSlotButtonSave.position.y + nodeParent.offset.y + 37:
		if Input.is_action_just_pressed("button_left"):
			DataSave.save_data()
			#Faire des test sur la sauvegarde si ça marche bien ou pas
			print("je clique sur le bouton sauvegarde") 


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
