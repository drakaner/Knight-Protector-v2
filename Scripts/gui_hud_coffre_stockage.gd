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

@onready var nodeParent = get_node(".")
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

var nbCompteurPotionVie = 0
var nbCompteurPotionMana = 0
var nbCompteurPotionElixir = 0
var nbCompteurBague1 = 0
var nbCompteurBague2 = 0
var nbCompteurBague3 = 0
var nbCompteurBottes1 = 0
var nbCompteurBottes2 = 0
var nbCompteurBottes3 = 0
var nbCompteurBottes4 = 0
var nbCompteurBottes5 = 0
var nbCompteurBottes6 = 0
var nbCompteurBouclier1 = 0
var nbCompteurBouclier2 = 0
var nbCompteurBouclier3 = 0
var nbCompteurBouclier4 = 0
var nbCompteurBouclier5 = 0
var nbCompteurBouclier6 = 0
var nbCompteurBouclier7 = 0
var nbCompteurCasque1 = 0
var nbCompteurCasque2 = 0
var nbCompteurCasque3 = 0
var nbCompteurCasque4 = 0
var nbCompteurCasque5 = 0
var nbCompteurCasque6 = 0
var nbCompteurCollier1 = 0
var nbCompteurCollier2 = 0
var nbCompteurCollier3 = 0
var nbCompteurHeaume1 = 0
var nbCompteurHeaume2 = 0
var nbCompteurHeaume3 = 0
var nbCompteurHeaume4 = 0
var nbCompteurHeaume5 = 0
var nbCompteurHeaume6 = 0
var nbCompteurSword1 = 0
var nbCompteurSword2 = 0
var nbCompteurSword3 = 0
var nbCompteurSword4 = 0
var nbCompteurSword5 = 0
var nbCompteurSword6 = 0
var nbCompteurSword7 = 0
var nbCompteurSword8 = 0



var isPanelClose = true

var nbPlaceDispo = 10 #nv1 : 10, nv2 : 15, nv3 : 20


var isSlotLibre = []
var txtItemType = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#DataSave.items_stocker.bague1 = 1
	isSlotLibre.resize(nbPlaceDispo)
	txtItemType.resize(nbPlaceDispo)
	
	
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
	
	childSlot.resize(20)
	
	childSlot[0] = nodeParent.get_node("panel_slot1")
	childSlot[1] = nodeParent.get_node("panel_slot2")
	childSlot[2] = nodeParent.get_node("panel_slot3")
	childSlot[3] = nodeParent.get_node("panel_slot4")
	childSlot[4] = nodeParent.get_node("panel_slot5")
	childSlot[5] = nodeParent.get_node("panel_slot6")
	childSlot[6] = nodeParent.get_node("panel_slot7")
	childSlot[7] = nodeParent.get_node("panel_slot8")
	childSlot[8] = nodeParent.get_node("panel_slot9")
	childSlot[9] = nodeParent.get_node("panel_slot10")
	childSlot[10] = nodeParent.get_node("panel_slot11")
	childSlot[11] = nodeParent.get_node("panel_slot12")
	childSlot[12] = nodeParent.get_node("panel_slot13")
	childSlot[13] = nodeParent.get_node("panel_slot14")
	childSlot[14] = nodeParent.get_node("panel_slot15")
	childSlot[15] = nodeParent.get_node("panel_slot16")
	childSlot[16] = nodeParent.get_node("panel_slot17")
	childSlot[17] = nodeParent.get_node("panel_slot18")
	childSlot[18] = nodeParent.get_node("panel_slot19")
	childSlot[19] = nodeParent.get_node("panel_slot20")
	
	
	for n in range(nbPlaceDispo):
		isSlotLibre[n] = true
		txtItemType[n] = "vide"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	
	nbPlaceDispo = DataSave.nbStockageMax
	
	#print("stockage actuel : ", nbItemsStocker)
	
	for n in range(nbPlaceDispo):
		if isSlotLibre[n] == true:
			if DataSave.items_stocker.potionVie != nbCompteurPotionVie and txtItemType[n] == "vide":
				gui_potion_vie[n] = GuiPotionVie.instantiate()
				add_child(gui_potion_vie[n])
				gui_potion_vie[n].scale = Vector2(0.85, 0.95)
				gui_potion_vie[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_vie[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionVie += 1
				isSlotLibre[n] = false
				txtItemType[n] = "potion_vie"
		
			if DataSave.items_stocker.potionMana != nbCompteurPotionMana and txtItemType[n] == "vide":
				gui_potion_mana[n] = GuiPotionMana.instantiate()
				add_child(gui_potion_mana[n])
				gui_potion_mana[n].scale = Vector2(0.85, 0.95)
				gui_potion_mana[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_mana[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionMana += 1
				isSlotLibre[n] = false
				txtItemType[n] = "potion_mana"
			
			if DataSave.items_stocker.potionElixir != nbCompteurPotionElixir and txtItemType[n] == "vide":
				gui_potion_elixir[n] = GuiPotionElixir.instantiate()
				add_child(gui_potion_elixir[n])
				gui_potion_elixir[n].scale = Vector2(0.85, 0.95)
				gui_potion_elixir[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_elixir[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionElixir += 1
				isSlotLibre[n] = false
				txtItemType[n] = "potion_elixir"
			
			if DataSave.items_stocker.bague1 != nbCompteurBague1 and txtItemType[n] == "vide":
				gui_bague1[n] = GuiBague1.instantiate()
				add_child(gui_bague1[n])
				gui_bague1[n].scale = Vector2(0.85, 0.95)
				gui_bague1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bague_1"
			
			if DataSave.items_stocker.bague2 != nbCompteurBague2 and txtItemType[n] == "vide":
				gui_bague2[n] = GuiBague2.instantiate()
				add_child(gui_bague2[n])
				gui_bague2[n].scale = Vector2(0.85, 0.95)
				gui_bague2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bague_2"
			
			if DataSave.items_stocker.bague3 != nbCompteurBague3 and txtItemType[n] == "vide":
				gui_bague3[n] = GuiBague3.instantiate()
				add_child(gui_bague3[n])
				gui_bague3[n].scale = Vector2(0.85, 0.95)
				gui_bague3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bague3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBague3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bague_3"
			
			if DataSave.items_stocker.bottes1 != nbCompteurBottes1 and txtItemType[n] == "vide":
				gui_bottes1[n] = GuiBottes1.instantiate()
				add_child(gui_bottes1[n])
				gui_bottes1[n].scale = Vector2(0.85, 0.95)
				gui_bottes1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_1"
			
			if DataSave.items_stocker.bottes2 != nbCompteurBottes2 and txtItemType[n] == "vide":
				gui_bottes2[n] = GuiBottes2.instantiate()
				add_child(gui_bottes2[n])
				gui_bottes2[n].scale = Vector2(0.85, 0.95)
				gui_bottes2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_2"
			
			if DataSave.items_stocker.bottes3 != nbCompteurBottes3 and txtItemType[n] == "vide":
				gui_bottes3[n] = GuiBottes3.instantiate()
				add_child(gui_bottes3[n])
				gui_bottes3[n].scale = Vector2(0.85, 0.95)
				gui_bottes3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_3"
			
			if DataSave.items_stocker.bottes4 != nbCompteurBottes4 and txtItemType[n] == "vide":
				gui_bottes4[n] = GuiBottes4.instantiate()
				add_child(gui_bottes4[n])
				gui_bottes4[n].scale = Vector2(0.85, 0.95)
				gui_bottes4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes4 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_4"
			
			if DataSave.items_stocker.bottes5 != nbCompteurBottes5 and txtItemType[n] == "vide":
				gui_bottes5[n] = GuiBottes5.instantiate()
				add_child(gui_bottes5[n])
				gui_bottes5[n].scale = Vector2(0.85, 0.95)
				gui_bottes5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes5 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_5"
			
			if DataSave.items_stocker.bottes6 != nbCompteurBottes6 and txtItemType[n] == "vide":
				gui_bottes6[n] = GuiBottes6.instantiate()
				add_child(gui_bottes6[n])
				gui_bottes6[n].scale = Vector2(0.85, 0.95)
				gui_bottes6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes6 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bottes_6"
			
			if DataSave.items_stocker.bouclier1 != nbCompteurBouclier1 and txtItemType[n] == "vide":
				gui_bouclier1[n] = GuiBouclier1.instantiate()
				add_child(gui_bouclier1[n])
				gui_bouclier1[n].scale = Vector2(0.85, 0.95)
				gui_bouclier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_1"
			
			if DataSave.items_stocker.bouclier2 != nbCompteurBouclier2 and txtItemType[n] == "vide":
				gui_bouclier2[n] = GuiBouclier2.instantiate()
				add_child(gui_bouclier2[n])
				gui_bouclier2[n].scale = Vector2(0.85, 0.95)
				gui_bouclier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_2"
			
			if DataSave.items_stocker.bouclier3 != nbCompteurBouclier3 and txtItemType[n] == "vide":
				gui_bouclier3[n] = GuiBouclier3.instantiate()
				add_child(gui_bouclier3[n])
				gui_bouclier3[n].scale = Vector2(0.85, 0.95)
				gui_bouclier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_3"
			
			if DataSave.items_stocker.bouclier4 != nbCompteurBouclier4 and txtItemType[n] == "vide":
				gui_bouclier4[n] = GuiBouclier4.instantiate()
				add_child(gui_bouclier4[n])
				gui_bouclier4[n].scale = Vector2(0.85, 0.95)
				gui_bouclier4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier4 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_4"
			
			if DataSave.items_stocker.bouclier5 != nbCompteurBouclier5 and txtItemType[n] == "vide":
				gui_bouclier5[n] = GuiBouclier5.instantiate()
				add_child(gui_bouclier5[n])
				gui_bouclier5[n].scale = Vector2(0.85, 0.95)
				gui_bouclier5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier5 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_5"
			
			if DataSave.items_stocker.bouclier6 != nbCompteurBouclier6 and txtItemType[n] == "vide":
				gui_bouclier6[n] = GuiBouclier6.instantiate()
				add_child(gui_bouclier6[n])
				gui_bouclier6[n].scale = Vector2(0.85, 0.95)
				gui_bouclier6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier6 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_6"
			
			if DataSave.items_stocker.bouclier7 != nbCompteurBouclier7 and txtItemType[n] == "vide":
				gui_bouclier7[n] = GuiBouclier7.instantiate()
				add_child(gui_bouclier7[n])
				gui_bouclier7[n].scale = Vector2(0.85, 0.95)
				gui_bouclier7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier7 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "bouclier_7"
			
			if DataSave.items_stocker.casque1 != nbCompteurCasque1 and txtItemType[n] == "vide":
				gui_casque1[n] = GuiCasque1.instantiate()
				add_child(gui_casque1[n])
				gui_casque1[n].scale = Vector2(0.85, 0.95)
				gui_casque1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_1"
			
			if DataSave.items_stocker.casque2 != nbCompteurCasque2 and txtItemType[n] == "vide":
				gui_casque2[n] = GuiCasque2.instantiate()
				add_child(gui_casque2[n])
				gui_casque2[n].scale = Vector2(0.85, 0.95)
				gui_casque2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_2"
			
			if DataSave.items_stocker.casque3 != nbCompteurCasque3 and txtItemType[n] == "vide":
				gui_casque3[n] = GuiCasque3.instantiate()
				add_child(gui_casque3[n])
				gui_casque3[n].scale = Vector2(0.85, 0.95)
				gui_casque3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_3"
			
			if DataSave.items_stocker.casque4 != nbCompteurCasque4 and txtItemType[n] == "vide":
				gui_casque4[n] = GuiCasque4.instantiate()
				add_child(gui_casque4[n])
				gui_casque4[n].scale = Vector2(0.85, 0.95)
				gui_casque4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque4 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_4"
			
			if DataSave.items_stocker.casque5 != nbCompteurCasque5 and txtItemType[n] == "vide":
				gui_casque5[n] = GuiCasque5.instantiate()
				add_child(gui_casque5[n])
				gui_casque5[n].scale = Vector2(0.85, 0.95)
				gui_casque5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque5 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_5"
			
			if DataSave.items_stocker.casque6 != nbCompteurCasque6 and txtItemType[n] == "vide":
				gui_casque6[n] = GuiCasque6.instantiate()
				add_child(gui_casque6[n])
				gui_casque6[n].scale = Vector2(0.85, 0.95)
				gui_casque6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque6 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "casque_6"
			
			if DataSave.items_stocker.collier1 != nbCompteurCollier1 and txtItemType[n] == "vide":
				gui_collier1[n] = GuiCollier1.instantiate()
				add_child(gui_collier1[n])
				gui_collier1[n].scale = Vector2(0.85, 0.95)
				gui_collier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "collier_1"
			
			if DataSave.items_stocker.collier2 != nbCompteurCollier2 and txtItemType[n] == "vide":
				gui_collier2[n] = GuiCollier2.instantiate()
				add_child(gui_collier2[n])
				gui_collier2[n].scale = Vector2(0.85, 0.95)
				gui_collier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "collier_2"
			
			if DataSave.items_stocker.collier3 != nbCompteurCollier3 and txtItemType[n] == "vide":
				gui_collier3[n] = GuiCollier3.instantiate()
				add_child(gui_collier3[n])
				gui_collier3[n].scale = Vector2(0.85, 0.95)
				gui_collier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "collier_3"
			
			if DataSave.items_stocker.heaume1 != nbCompteurHeaume1 and txtItemType[n] == "vide":
				gui_heaume1[n] = GuiHeaume1.instantiate()
				add_child(gui_heaume1[n])
				gui_heaume1[n].scale = Vector2(0.85, 0.95)
				gui_heaume1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_1"
				
			
			if DataSave.items_stocker.heaume2 != nbCompteurHeaume2 and txtItemType[n] == "vide":
				gui_heaume2[n] = GuiHeaume2.instantiate()
				add_child(gui_heaume2[n])
				gui_heaume2[n].scale = Vector2(0.85, 0.95)
				gui_heaume2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_2"
				
			
			if DataSave.items_stocker.heaume3 != nbCompteurHeaume3 and txtItemType[n] == "vide":
				gui_heaume3[n] = GuiHeaume3.instantiate()
				add_child(gui_heaume3[n])
				gui_heaume3[n].scale = Vector2(0.85, 0.95)
				gui_heaume3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_3"
				
			
			if DataSave.items_stocker.heaume4 != nbCompteurHeaume4 and txtItemType[n] == "vide":
				gui_heaume4[n] = GuiHeaume4.instantiate()
				add_child(gui_heaume4[n])
				gui_heaume4[n].scale = Vector2(0.85, 0.95)
				gui_heaume4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume4 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_4"
				
			
			if DataSave.items_stocker.heaume5 != nbCompteurHeaume5 and txtItemType[n] == "vide":
				gui_heaume5[n] = GuiHeaume5.instantiate()
				add_child(gui_heaume5[n])
				gui_heaume5[n].scale = Vector2(0.85, 0.95)
				gui_heaume5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume5 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_5"
				
			
			if DataSave.items_stocker.heaume6 != nbCompteurHeaume6 and txtItemType[n] == "vide":
				gui_heaume6[n] = GuiHeaume6.instantiate()
				add_child(gui_heaume6[n])
				gui_heaume6[n].scale = Vector2(0.85, 0.95)
				gui_heaume6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume6 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "heaume_6"
				
			
			if DataSave.items_stocker.sword1 != nbCompteurSword1 and txtItemType[n] == "vide":
				gui_sword1[n] = GuiSword1.instantiate()
				add_child(gui_sword1[n])
				gui_sword1[n].scale = Vector2(0.85, 0.95)
				gui_sword1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword1 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_1"
				
			
			if DataSave.items_stocker.sword2 != nbCompteurSword2 and txtItemType[n] == "vide":
				gui_sword2[n] = GuiSword2.instantiate()
				add_child(gui_sword2[n])
				gui_sword2[n].scale = Vector2(0.85, 0.95)
				gui_sword2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword2 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_2"
				
			
			if DataSave.items_stocker.sword3 != nbCompteurSword3 and txtItemType[n] == "vide":
				gui_sword3[n] = GuiSword3.instantiate()
				add_child(gui_sword3[n])
				gui_sword3[n].scale = Vector2(0.85, 0.95)
				gui_sword3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword3 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_3"
				
			
			if DataSave.items_stocker.sword4 != nbCompteurSword4 and txtItemType[n] == "vide":
				gui_sword4[n] = GuiSword4.instantiate()
				add_child(gui_sword4[n])
				gui_sword4[n].scale = Vector2(0.85, 0.95)
				gui_sword4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword4 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_4"
				
			
			if DataSave.items_stocker.sword5 != nbCompteurSword5 and txtItemType[n] == "vide":
				gui_sword5[n] = GuiSword5.instantiate()
				add_child(gui_sword5[n])
				gui_sword5[n].scale = Vector2(0.85, 0.95)
				gui_sword5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword5 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_5"
				
			
			if DataSave.items_stocker.sword6 != nbCompteurSword6 and txtItemType[n] == "vide":
				gui_sword6[n] = GuiSword6.instantiate()
				add_child(gui_sword6[n])
				gui_sword6[n].scale = Vector2(0.85, 0.95)
				gui_sword6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword6 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_6"
				
			
			if DataSave.items_stocker.sword7 != nbCompteurSword7 and txtItemType[n] == "vide":
				gui_sword7[n] = GuiSword7.instantiate()
				add_child(gui_sword7[n])
				gui_sword7[n].scale = Vector2(0.85, 0.95)
				gui_sword7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword7 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_7"
				
			
			if DataSave.items_stocker.sword8 != nbCompteurSword8 and txtItemType[n] == "vide":
				gui_sword8[n] = GuiSword8.instantiate()
				add_child(gui_sword8[n])
				gui_sword8[n].scale = Vector2(0.85, 0.95)
				gui_sword8[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword8[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword8 += 1
				isSlotLibre[n] = false
				txtItemType[n] = "sword_8"
				


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true


func _input(event):
	var mouse_pos = get_viewport().get_mouse_position()
	
	for n in range(nbPlaceDispo):
		if Input.is_action_just_pressed("button_left"):
			if mouse_pos.x >= childSlot[n].position.x + nodeParent.offset.x and mouse_pos.x <= childSlot[n].position.x + nodeParent.offset.x + childSlot[n].size.x and mouse_pos.y >= childSlot[n].position.y + nodeParent.offset.y and mouse_pos.y <= childSlot[n].position.y + childSlot[n].size.y + nodeParent.offset.y:
				if txtItemType[n] == "potion_vie":
					DataSave.items_posession.potionVie += 1
					DataSave.items_stocker.potionVie -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_potion_vie[n].queue_free()
					nbCompteurPotionVie -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "potion_mana":
					DataSave.items_posession.potionMana += 1
					DataSave.items_stocker.potionMana -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_potion_mana[n].queue_free()
					nbCompteurPotionMana -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "potion_elixir":
					DataSave.items_posession.potionElixir += 1
					DataSave.items_stocker.potionElixir -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_potion_elixir[n].queue_free()
					nbCompteurPotionElixir -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bague_1":
					DataSave.items_posession.bague1 += 1
					DataSave.items_stocker.bague1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bague1[n].queue_free()
					nbCompteurBague1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bague_2":
					DataSave.items_posession.bague2 += 1
					DataSave.items_stocker.bague2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bague2[n].queue_free()
					nbCompteurBague2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bague_3":
					DataSave.items_posession.bague3 += 1
					DataSave.items_stocker.bague3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bague3[n].queue_free()
					nbCompteurBague3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_1":
					DataSave.items_posession.bottes1 += 1
					DataSave.items_stocker.bottes1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes1[n].queue_free()
					nbCompteurBottes1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_2":
					DataSave.items_posession.bottes2 += 1
					DataSave.items_stocker.bottes2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes2[n].queue_free()
					nbCompteurBottes2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_3":
					DataSave.items_posession.bottes3 += 1
					DataSave.items_stocker.bottes3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes3[n].queue_free()
					nbCompteurBottes3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_4":
					DataSave.items_posession.bottes4 += 1
					DataSave.items_stocker.bottes4 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes4[n].queue_free()
					nbCompteurBottes4 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_5":
					DataSave.items_posession.bottes5 += 1
					DataSave.items_stocker.bottes5 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes5[n].queue_free()
					nbCompteurBottes5 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bottes_6":
					DataSave.items_posession.bottes6 += 1
					DataSave.items_stocker.bottes6 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bottes6[n].queue_free()
					nbCompteurBottes6 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_1":
					DataSave.items_posession.bouclier1 += 1
					DataSave.items_stocker.bouclier1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier1[n].queue_free()
					nbCompteurBouclier1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_2":
					DataSave.items_posession.bouclier2 += 1
					DataSave.items_stocker.bouclier2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier2[n].queue_free()
					nbCompteurBouclier2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_3":
					DataSave.items_posession.bouclier3 += 1
					DataSave.items_stocker.bouclier3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier3[n].queue_free()
					nbCompteurBouclier3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_4":
					DataSave.items_posession.bouclier4 += 1
					DataSave.items_stocker.bouclier4 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier4[n].queue_free()
					nbCompteurBouclier4 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_5":
					DataSave.items_posession.bouclier5 += 1
					DataSave.items_stocker.bouclier5 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier5[n].queue_free()
					nbCompteurBouclier5 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_6":
					DataSave.items_posession.bouclier6 += 1
					DataSave.items_stocker.bouclier6 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier6[n].queue_free()
					nbCompteurBouclier6 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "bouclier_7":
					DataSave.items_posession.bouclier7 += 1
					DataSave.items_stocker.bouclier7 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_bouclier7[n].queue_free()
					nbCompteurBouclier7 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_1":
					DataSave.items_posession.casque1 += 1
					DataSave.items_stocker.casque1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque1[n].queue_free()
					nbCompteurCasque1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_2":
					DataSave.items_posession.casque2 += 1
					DataSave.items_stocker.casque2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque2[n].queue_free()
					nbCompteurCasque2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_3":
					DataSave.items_posession.casque3 += 1
					DataSave.items_stocker.casque3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque3[n].queue_free()
					nbCompteurCasque3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_4":
					DataSave.items_posession.casque4 += 1
					DataSave.items_stocker.casque4 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque4[n].queue_free()
					nbCompteurCasque4 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_5":
					DataSave.items_posession.casque5 += 1
					DataSave.items_stocker.casque5 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque5[n].queue_free()
					nbCompteurCasque5 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "casque_6":
					DataSave.items_posession.casque6 += 1
					DataSave.items_stocker.casque6 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_casque6[n].queue_free()
					nbCompteurCasque6 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "collier_1":
					DataSave.items_posession.collier1 += 1
					DataSave.items_stocker.collier1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_collier1[n].queue_free()
					nbCompteurCollier1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "collier_2":
					DataSave.items_posession.collier2 += 1
					DataSave.items_stocker.collier2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_collier2[n].queue_free()
					nbCompteurCollier2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "collier_3":
					DataSave.items_posession.collier3 += 1
					DataSave.items_stocker.collier3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_collier3[n].queue_free()
					nbCompteurCollier3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_1":
					DataSave.items_posession.heaume1 += 1
					DataSave.items_stocker.heaume1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume1[n].queue_free()
					nbCompteurHeaume1 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_2":
					DataSave.items_posession.heaume2 += 1
					DataSave.items_stocker.heaume2 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume2[n].queue_free()
					nbCompteurHeaume2 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_3":
					DataSave.items_posession.heaume3 += 1
					DataSave.items_stocker.heaume3 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume3[n].queue_free()
					nbCompteurHeaume3 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_4":
					DataSave.items_posession.heaume4 += 1
					DataSave.items_stocker.heaume4 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume4[n].queue_free()
					nbCompteurHeaume4 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_5":
					DataSave.items_posession.heaume5 += 1
					DataSave.items_stocker.heaume5 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume5[n].queue_free()
					nbCompteurHeaume5 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "heaume_6":
					DataSave.items_posession.heaume6 += 1
					DataSave.items_stocker.heaume6 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_heaume6[n].queue_free()
					nbCompteurHeaume6 -= 1
					isSlotLibre[n] = true
				
				if txtItemType[n] == "sword_1":
					DataSave.items_posession.sword1 += 1
					DataSave.items_stocker.sword1 -= 1
					DataSave.nbItemsStocker -= 1
					txtItemType[n] = "vide"
					gui_sword1[n].queue_free()
					nbCompteurSword1 -= 1
					isSlotLibre[n] = true
				print("clic clic clic clic clic:::", txtItemType[n])
			
