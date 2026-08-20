extends CanvasLayer

var GuiPotionVie = preload("res://Objets/gui_potion_vie.tscn")
var GuiPotionMana = preload("res://Objets/gui_potion_mana.tscn")
var GuiPotionElixir = preload("res://Objets/gui_potion_elixir.tscn")
var GuiBague1 = preload("res://Objets/gui_bague_1.tscn")
var GuiBague2 = preload("res://Objets/gui_bague_2.tscn")
var GuiBague3 = preload("res://Objets/gui_bague_3.tscn")
var GuiBottes1 = preload("res://Objets/gui_bottes_1.tscn")
var GuiBottes2 = preload("res://Objets/gui_bottes_2.tscn")
var GuiBottes3 = preload("res://Objets/gui_bottes_3.tscn")
var GuiBottes4 = preload("res://Objets/gui_bottes_4.tscn")
var GuiBottes5 = preload("res://Objets/gui_bottes_5.tscn")
var GuiBottes6 = preload("res://Objets/gui_bottes_6.tscn")
var GuiBouclier1 = preload("res://Objets/gui_bouclier_1.tscn")
var GuiBouclier2 = preload("res://Objets/gui_bouclier_2.tscn")
var GuiBouclier3 = preload("res://Objets/gui_bouclier_3.tscn")
var GuiBouclier4 = preload("res://Objets/gui_bouclier_4.tscn")
var GuiBouclier5 = preload("res://Objets/gui_bouclier_5.tscn")
var GuiBouclier6 = preload("res://Objets/gui_bouclier_6.tscn")
var GuiBouclier7 = preload("res://Objets/gui_bouclier_7.tscn")
var GuiCasque1 = preload("res://Objets/gui_casque_1.tscn")
var GuiCasque2 = preload("res://Objets/gui_casque_2.tscn")
var GuiCasque3 = preload("res://Objets/gui_casque_3.tscn")
var GuiCasque4 = preload("res://Objets/gui_casque_4.tscn")
var GuiCasque5 = preload("res://Objets/gui_casque_5.tscn")
var GuiCasque6 = preload("res://Objets/gui_casque_6.tscn")
var GuiCollier1 = preload("res://Objets/gui_collier_1.tscn")
var GuiCollier2 = preload("res://Objets/gui_collier_2.tscn")
var GuiCollier3 = preload("res://Objets/gui_collier_3.tscn")
var GuiHeaume1 = preload("res://Objets/gui_heaume_1.tscn")
var GuiHeaume2 = preload("res://Objets/gui_heaume_2.tscn")
var GuiHeaume3 = preload("res://Objets/gui_heaume_3.tscn")
var GuiHeaume4 = preload("res://Objets/gui_heaume_4.tscn")
var GuiHeaume5 = preload("res://Objets/gui_heaume_5.tscn")
var GuiHeaume6 = preload("res://Objets/gui_heaume_6.tscn")
var GuiSword1 = preload("res://Objets/gui_sword_1.tscn")
var GuiSword2 = preload("res://Objets/gui_sword_2.tscn")
var GuiSword3 = preload("res://Objets/gui_sword_3.tscn")
var GuiSword4 = preload("res://Objets/gui_sword_4.tscn")
var GuiSword5 = preload("res://Objets/gui_sword_5.tscn")
var GuiSword6 = preload("res://Objets/gui_sword_6.tscn")
var GuiSword7 = preload("res://Objets/gui_sword_7.tscn")
var GuiSword8 = preload("res://Objets/gui_sword_8.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")

@onready var childSlot = []

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

var isPanelClose = true

var nbPlaceDispo = 10 #nv1 : 10, nv2 : 15, nv3 : 20

var isSlotLibre = []
var txtTypeItem = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	isSlotLibre.resize(nbPlaceDispo)
	txtTypeItem.resize(nbPlaceDispo)
	
	
	gui_potion_vie.resize(nbPlaceDispo)
	gui_potion_mana.resize(nbPlaceDispo)
	gui_potion_elixir.resize(nbPlaceDispo)
	gui_bague1.resize(nbPlaceDispo)
	gui_bague2.resize(nbPlaceDispo)
	gui_bague3.resize(nbPlaceDispo)
	gui_bottes1.resize(nbPlaceDispo)
	gui_bottes2.resize(nbPlaceDispo)
	gui_bottes3.resize(nbPlaceDispo)
	gui_bottes4.resize(nbPlaceDispo)
	gui_bottes5.resize(nbPlaceDispo)
	gui_bottes6.resize(nbPlaceDispo)
	gui_bouclier1.resize(nbPlaceDispo)
	gui_bouclier2.resize(nbPlaceDispo)
	gui_bouclier3.resize(nbPlaceDispo)
	gui_bouclier4.resize(nbPlaceDispo)
	gui_bouclier5.resize(nbPlaceDispo)
	gui_bouclier6.resize(nbPlaceDispo)
	gui_bouclier7.resize(nbPlaceDispo)
	gui_casque1.resize(nbPlaceDispo)
	gui_casque2.resize(nbPlaceDispo)
	gui_casque3.resize(nbPlaceDispo)
	gui_casque4.resize(nbPlaceDispo)
	gui_casque5.resize(nbPlaceDispo)
	gui_casque6.resize(nbPlaceDispo)
	gui_collier1.resize(nbPlaceDispo)
	gui_collier2.resize(nbPlaceDispo)
	gui_collier3.resize(nbPlaceDispo)
	gui_heaume1.resize(nbPlaceDispo)
	gui_heaume2.resize(nbPlaceDispo)
	gui_heaume3.resize(nbPlaceDispo)
	gui_heaume4.resize(nbPlaceDispo)
	gui_heaume5.resize(nbPlaceDispo)
	gui_heaume6.resize(nbPlaceDispo)
	gui_sword1.resize(nbPlaceDispo)
	gui_sword2.resize(nbPlaceDispo)
	gui_sword3.resize(nbPlaceDispo)
	gui_sword4.resize(nbPlaceDispo)
	gui_sword5.resize(nbPlaceDispo)
	gui_sword6.resize(nbPlaceDispo)
	gui_sword7.resize(nbPlaceDispo)
	gui_sword8.resize(nbPlaceDispo)
	
	
	for n in range(nbPlaceDispo):
		isSlotLibre[n] = true
		txtTypeItem[n] = "none"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
