extends CanvasLayer

# Faire le pop up puis dès que c'est fini vérifier tout les items si tout est ok dans équipement


@onready var nodeParent = get_node(".")
@onready var childSlot = []
@onready var childSlotEquip = []

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
var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")

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

var gui_equiper = {}

var txtItemType = []
var isSlot_libre = []

var isPanelClose = true

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

var txt_titre
var txt_stat_1
var txt_stat_2
var gui_fenetre

var interrupteur_Bague = [] 
var interrupteur_Bottes = []
var interrupteur_Bouclier = []
var interrupteur_Casque = []
var interrupteur_Collier = []
var interrupteur_Heaume = []
var interrupteur_Sword = []

var bCreationBague = []
var bCreationBottes = []
var bCreationBouclier = []
var bCreationCasque = []
var bCreationCollier = []
var bCreationHeaume = []
var bCreationSword = []

var nbDecaleTextName = 0

func _on_mouse_exited_bague():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bouclier():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_casque():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_collier():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_heaume():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_sword():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_entered_bague1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague1[n] != null:
			childGuiTxtNameItem.text = gui_bague1[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague1[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague1[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague1[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague1[n].nb_mana)

func _on_mouse_entered_bague2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague2[n] != null:
			childGuiTxtNameItem.text = gui_bague2[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague2[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague2[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague2[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague2[n].nb_mana)

func _on_mouse_entered_bague3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague3[n] != null:
			childGuiTxtNameItem.text = gui_bague3[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague3[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague3[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bague3[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague3[n].nb_mana)

func _on_mouse_entered_bottes1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes1[n] != null:
			childGuiTxtNameItem.text = gui_bottes1[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes1[n].nb_defense)

func _on_mouse_entered_bottes2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes2[n] != null:
			childGuiTxtNameItem.text = gui_bottes2[n].txt_name
	nbDecaleTextName = 7
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes2[n].nb_defense)

func _on_mouse_entered_bottes3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes3[n] != null:
			childGuiTxtNameItem.text = gui_bottes3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes3[n].nb_defense)

func _on_mouse_entered_bottes4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes4[n] != null:
			childGuiTxtNameItem.text = gui_bottes4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes4[n].nb_defense)

func _on_mouse_entered_bottes5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes5[n] != null:
			childGuiTxtNameItem.text = gui_bottes5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes5[n].nb_defense)

func _on_mouse_entered_bottes6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes6[n] != null:
			childGuiTxtNameItem.text = gui_bottes6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bottes6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes6[n].nb_defense)

func _on_mouse_entered_bouclier1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier1[n] != null:
			childGuiTxtNameItem.text = gui_bouclier1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier1[n].nb_defense)

func _on_mouse_entered_bouclier2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier2[n] != null:
			childGuiTxtNameItem.text = gui_bouclier2[n].txt_name
	nbDecaleTextName = 10
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier2[n].nb_defense)

func _on_mouse_entered_bouclier3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier3[n] != null:
			childGuiTxtNameItem.text = gui_bouclier3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier3[n].nb_defense)

func _on_mouse_entered_bouclier4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier4[n] != null:
			childGuiTxtNameItem.text = gui_bouclier4[n].txt_name
	nbDecaleTextName = 5
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier4[n].nb_defense)

func _on_mouse_entered_bouclier5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier5[n] != null:
			childGuiTxtNameItem.text = gui_bouclier5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier5[n].nb_defense)

func _on_mouse_entered_bouclier6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier6[n] != null:
			childGuiTxtNameItem.text = gui_bouclier6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier6[n].nb_defense)

func _on_mouse_entered_bouclier7():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier7[n] != null:
			childGuiTxtNameItem.text = gui_bouclier7[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier7[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier7[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_bouclier7[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier7[n].nb_defense)

func _on_mouse_entered_casque1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque1[n] != null:
			childGuiTxtNameItem.text = gui_casque1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque1[n].nb_defense)

func _on_mouse_entered_casque2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque2[n] != null:
			childGuiTxtNameItem.text = gui_casque2[n].txt_name
	nbDecaleTextName = 15
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque2[n].nb_defense)

func _on_mouse_entered_casque3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque3[n] != null:
			childGuiTxtNameItem.text = gui_casque3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque3[n].nb_defense)

func _on_mouse_entered_casque4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque4[n] != null:
			childGuiTxtNameItem.text = gui_casque4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque4[n].nb_defense)

func _on_mouse_entered_casque5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque5[n] != null:
			childGuiTxtNameItem.text = gui_casque5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque5[n].nb_defense)

func _on_mouse_entered_casque6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque6[n] != null:
			childGuiTxtNameItem.text = gui_casque6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_casque6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque6[n].nb_defense)

func _on_mouse_entered_collier1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier1[n] != null:
			childGuiTxtNameItem.text = gui_collier1[n].txt_name
	nbDecaleTextName = 5
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier1[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier1[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier1[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier1[n].nb_endurance)

func _on_mouse_entered_collier2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier2[n] != null:
			childGuiTxtNameItem.text = gui_collier2[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier2[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier2[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier2[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier2[n].nb_endurance)

func _on_mouse_entered_collier3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier3[n] != null:
			childGuiTxtNameItem.text = gui_collier3[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier3[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier3[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_collier3[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier3[n].nb_endurance)

func _on_mouse_entered_heaume1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume1[n] != null:
			childGuiTxtNameItem.text = gui_heaume1[n].txt_name
	nbDecaleTextName = 35
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume1[n].nb_defense)

func _on_mouse_entered_heaume2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume2[n] != null:
			childGuiTxtNameItem.text = gui_heaume2[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume2[n].nb_defense)

func _on_mouse_entered_heaume3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume3[n] != null:
			childGuiTxtNameItem.text = gui_heaume3[n].txt_name
	nbDecaleTextName = 35
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume3[n].nb_defense)

func _on_mouse_entered_heaume4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume4[n] != null:
			childGuiTxtNameItem.text = gui_heaume4[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume4[n].nb_defense)

func _on_mouse_entered_heaume5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume5[n] != null:
			childGuiTxtNameItem.text = gui_heaume5[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume5[n].nb_defense)

func _on_mouse_entered_heaume6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume6[n] != null:
			childGuiTxtNameItem.text = gui_heaume6[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_heaume6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume6[n].nb_defense)

func _on_mouse_entered_sword1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword1[n] != null:
			childGuiTxtNameItem.text = gui_sword1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword1[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword1[n].nb_attaque)

func _on_mouse_entered_sword2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword2[n] != null:
			childGuiTxtNameItem.text = gui_sword2[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword2[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword2[n].nb_attaque)

func _on_mouse_entered_sword3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword3[n] != null:
			childGuiTxtNameItem.text = gui_sword3[n].txt_name
	nbDecaleTextName = 1
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword3[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword3[n].nb_attaque)

func _on_mouse_entered_sword4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword4[n] != null:
			childGuiTxtNameItem.text = gui_sword4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword4[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword4[n].nb_attaque)

func _on_mouse_entered_sword5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword5[n] != null:
			childGuiTxtNameItem.text = gui_sword5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword5[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword5[n].nb_attaque)

func _on_mouse_entered_sword6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword6[n] != null:
			childGuiTxtNameItem.text = gui_sword6[n].txt_name
	nbDecaleTextName = 50
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword6[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword6[n].nb_attaque)

func _on_mouse_entered_sword7():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword7[n] != null:
			childGuiTxtNameItem.text = gui_sword7[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword7[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword7[n].nb_attaque)

func _on_mouse_entered_sword8():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword8[n] != null:
			childGuiTxtNameItem.text = gui_sword8[n].txt_name
	nbDecaleTextName = 45
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(16):
		if gui_sword8[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword8[n].nb_attaque)
#a tester
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("data item : ",DataSave.items_posession.potionVie)
	gui_bague1.resize(16)
	gui_bague2.resize(16)
	gui_bague3.resize(16)
	gui_bottes1.resize(16)
	gui_bottes2.resize(16)
	gui_bottes3.resize(16)
	gui_bottes4.resize(16)
	gui_bottes5.resize(16)
	gui_bottes6.resize(16)
	gui_bouclier1.resize(16)
	gui_bouclier2.resize(16)
	gui_bouclier3.resize(16)
	gui_bouclier4.resize(16)
	gui_bouclier5.resize(16)
	gui_bouclier6.resize(16)
	gui_bouclier7.resize(16)
	gui_casque1.resize(16)
	gui_casque2.resize(16)
	gui_casque3.resize(16)
	gui_casque4.resize(16)
	gui_casque5.resize(16)
	gui_casque6.resize(16)
	gui_collier1.resize(16)
	gui_collier2.resize(16)
	gui_collier3.resize(16)
	gui_heaume1.resize(16)
	gui_heaume2.resize(16)
	gui_heaume3.resize(16)
	gui_heaume4.resize(16)
	gui_heaume5.resize(16)
	gui_heaume6.resize(16)
	gui_sword1.resize(16)
	gui_sword2.resize(16)
	gui_sword3.resize(16)
	gui_sword4.resize(16)
	gui_sword5.resize(16)
	gui_sword6.resize(16)
	gui_sword7.resize(16)
	gui_sword8.resize(16)
	txtItemType.resize(16)
	isSlot_libre.resize(16)
	childSlot.resize(16)
	childSlotEquip.resize(7)
	interrupteur_Bague.resize(3)
	interrupteur_Bottes.resize(6)
	interrupteur_Bouclier.resize(7)
	interrupteur_Casque.resize(6)
	interrupteur_Collier.resize(3)
	interrupteur_Heaume.resize(6)
	interrupteur_Sword.resize(8)
	bCreationBague.resize(3)
	bCreationBottes.resize(6)
	bCreationBouclier.resize(7)
	bCreationCasque.resize(6)
	bCreationCollier.resize(3)
	bCreationHeaume.resize(6)
	bCreationSword.resize(8)
	
	childSlotEquip[0] = nodeParent.get_node("panel_equip_casque")
	childSlotEquip[1] = nodeParent.get_node("panel_equip_heaume")
	childSlotEquip[2] = nodeParent.get_node("panel_equip_bouclier")
	childSlotEquip[3] = nodeParent.get_node("panel_equip_sword")
	childSlotEquip[4] = nodeParent.get_node("panel_equip_jambes")
	childSlotEquip[5] = nodeParent.get_node("panel_equip_bague")
	childSlotEquip[6] = nodeParent.get_node("panel_equip_collier")
	
	childSlot[0] = nodeParent.get_node("panel_slot_1")
	childSlot[1] = nodeParent.get_node("panel_slot_2")
	childSlot[2] = nodeParent.get_node("panel_slot_3")
	childSlot[3] = nodeParent.get_node("panel_slot_4")
	childSlot[4] = nodeParent.get_node("panel_slot_5")
	childSlot[5] = nodeParent.get_node("panel_slot_6")
	childSlot[6] = nodeParent.get_node("panel_slot_7")
	childSlot[7] = nodeParent.get_node("panel_slot_8")
	childSlot[8] = nodeParent.get_node("panel_slot_9")
	childSlot[9] = nodeParent.get_node("panel_slot_10")
	childSlot[10] = nodeParent.get_node("panel_slot_11")
	childSlot[11] = nodeParent.get_node("panel_slot_12")
	childSlot[12] = nodeParent.get_node("panel_slot_13")
	childSlot[13] = nodeParent.get_node("panel_slot_14")
	childSlot[14] = nodeParent.get_node("panel_slot_15")
	childSlot[15] = nodeParent.get_node("panel_slot_16")
	
	for n in range(16):
		isSlot_libre[n] = true
		txtItemType[n] = "vide"
	
	for n in range(3):
		interrupteur_Bague[n] = false
		interrupteur_Collier[n] = false
		bCreationBague[n] = false
		bCreationCollier[n] = false
	

	for n in range(6):
		interrupteur_Bottes[n] = false
		interrupteur_Casque[n] = false
		interrupteur_Heaume[n] = false
		bCreationBottes[n] = false
		bCreationCasque[n] = false
		bCreationHeaume[n] = false
	
	for n in range(7): 
		interrupteur_Bouclier[n] = false
		bCreationBouclier[n] = false
	
	for n in range(8):
		interrupteur_Sword[n] = false
		bCreationSword[n] = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if DataSave.items_equiper.bague1 == 1:
		if bCreationBague[0] == false:
			gui_equiper.bague_1 = GuiBague1.instantiate()
			add_child(gui_equiper.bague_1)
			bCreationBague[0] = true
		gui_equiper.bague_1.offset.x = childSlotEquip[5].position.x + nodeParent.offset.x
		gui_equiper.bague_1.offset.y = childSlotEquip[5].position.y + nodeParent.offset.y
		gui_equiper.bague_1.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bague[0] == true:
			if DataSave.items_equiper.bague2 != 0:
				gui_equiper.bague_2.queue_free()
				DataSave.items_equiper.bague2 = 0
				DataSave.items_posession.bague2 += 1
				bCreationBague[1] = false
				
			if DataSave.items_equiper.bague3 != 0:
				#print(is_instance_valid(gui_equiper.bague_3))
				gui_equiper.bague_3.queue_free()
				#print(is_instance_valid(gui_equiper.bague_3))
				#print("JE VIENS DE SUPPRIMER LE COLLIER 3 LA ON EST APRES QUEUE FREE : ", gui_equiper.bague_3)
				DataSave.items_equiper.bague3 = 0
				DataSave.items_posession.bague3 += 1
				bCreationBague[2] = false
			
			interrupteur_Bague[0] = false
		
	
	if DataSave.items_equiper.bague2 == 1:
		if bCreationBague[1] == false:
			gui_equiper.bague_2 = GuiBague2.instantiate()
			add_child(gui_equiper.bague_2)
			bCreationBague[1] = true
		gui_equiper.bague_2.offset.x = childSlotEquip[5].position.x + nodeParent.offset.x
		gui_equiper.bague_2.offset.y = childSlotEquip[5].position.y + nodeParent.offset.y
		gui_equiper.bague_2.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bague[1] == true:
			if DataSave.items_equiper.bague1 != 0:
				gui_equiper.bague_1.queue_free()
				DataSave.items_equiper.bague1 = 0
				DataSave.items_posession.bague1 += 1
				bCreationBague[0] = false
				
			if DataSave.items_equiper.bague3 != 0:
				gui_equiper.bague_3.queue_free()
				DataSave.items_equiper.bague3 = 0
				DataSave.items_posession.bague3 += 1
				bCreationBague[2] = false
			
			interrupteur_Bague[1] = false
	
	if DataSave.items_equiper.bague3 == 1:
		if bCreationBague[2] == false:
			gui_equiper.bague_3 = GuiBague3.instantiate()
			add_child(gui_equiper.bague_3)
			bCreationBague[2] = true
			print("creation bague 3")
			
		gui_equiper.bague_3.offset.x = childSlotEquip[5].position.x + nodeParent.offset.x
		gui_equiper.bague_3.offset.y = childSlotEquip[5].position.y + nodeParent.offset.y
		gui_equiper.bague_3.scale = Vector2(0.6, 0.7)
		if interrupteur_Bague[2] == true:
			if DataSave.items_equiper.bague1 != 0:
				gui_equiper.bague_1.queue_free()
				DataSave.items_equiper.bague1 = 0
				DataSave.items_posession.bague1 += 1
				bCreationBague[0] = false
				
			if DataSave.items_equiper.bague2 != 0:
				gui_equiper.bague_2.queue_free()
				DataSave.items_equiper.bague2 = 0
				DataSave.items_posession.bague2 += 1
				bCreationBague[1] = false
			
			interrupteur_Bague[2] = false
	
	if DataSave.items_equiper.bottes1 == 1:
		if bCreationBottes[0] == false:
			gui_equiper.bottes_1 = GuiBottes1.instantiate()
			add_child(gui_equiper.bottes_1)
			bCreationBottes[0] = true 
		gui_equiper.bottes_1.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_1.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_1.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[0] == true:
			if DataSave.items_equiper.bottes2 != 0:
				gui_equiper.bottes_2.queue_free()
				DataSave.items_equiper.bottes2 = 0
				DataSave.items_posession.bottes2 += 1
				bCreationBottes[1] = false
				
			if DataSave.items_equiper.bottes3 != 0:
				gui_equiper.bottes_3.queue_free()
				DataSave.items_equiper.bottes3 = 0
				DataSave.items_posession.bottes3 += 1
				bCreationBottes[2] = false
			
			if DataSave.items_equiper.bottes4 != 0:
				gui_equiper.bottes_4.queue_free()
				DataSave.items_equiper.bottes4 = 0
				DataSave.items_posession.bottes4 += 1
				bCreationBottes[3] = false
			
			if DataSave.items_equiper.bottes5 != 0:
				gui_equiper.bottes_5.queue_free()
				DataSave.items_equiper.bottes5 = 0
				DataSave.items_posession.bottes5 += 1
				bCreationBottes[4] = false
			
			if DataSave.items_equiper.bottes6 != 0:
				gui_equiper.bottes_6.queue_free()
				DataSave.items_equiper.bottes6 = 0
				DataSave.items_posession.bottes6 += 1
				bCreationBottes[5] = false
			
			interrupteur_Bottes[0] = false
	
	if DataSave.items_equiper.bottes2 == 1:
		if bCreationBottes[1] == false:
			gui_equiper.bottes_2 = GuiBottes2.instantiate()
			add_child(gui_equiper.bottes_2)
			bCreationBottes[1] = true 
		gui_equiper.bottes_2.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_2.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_2.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[1] == true:
			if DataSave.items_equiper.bottes1 != 0:
				gui_equiper.bottes_1.queue_free()
				DataSave.items_equiper.bottes1 = 0
				DataSave.items_posession.bottes1 += 1
				bCreationBottes[0] = false
				
			if DataSave.items_equiper.bottes3 != 0:
				gui_equiper.bottes_3.queue_free()
				DataSave.items_equiper.bottes3 = 0
				DataSave.items_posession.bottes3 += 1
				bCreationBottes[2] = false
			
			if DataSave.items_equiper.bottes4 != 0:
				gui_equiper.bottes_4.queue_free()
				DataSave.items_equiper.bottes4 = 0
				DataSave.items_posession.bottes4 += 1
				bCreationBottes[3] = false
			
			if DataSave.items_equiper.bottes5 != 0:
				gui_equiper.bottes_5.queue_free()
				DataSave.items_equiper.bottes5 = 0
				DataSave.items_posession.bottes5 += 1
				bCreationBottes[4] = false
			
			if DataSave.items_equiper.bottes6 != 0:
				gui_equiper.bottes_6.queue_free()
				DataSave.items_equiper.bottes6 = 0
				DataSave.items_posession.bottes6 += 1
				bCreationBottes[5] = false
			
			interrupteur_Bottes[1] = false
	
	if DataSave.items_equiper.bottes3 == 1:
		if bCreationBottes[2] == false:
			gui_equiper.bottes_3 = GuiBottes3.instantiate()
			add_child(gui_equiper.bottes_3)
			bCreationBottes[2] = true
		gui_equiper.bottes_3.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_3.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_3.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[2] == true:
			if DataSave.items_equiper.bottes1 != 0:
				gui_equiper.bottes_1.queue_free()
				DataSave.items_equiper.bottes1 = 0
				DataSave.items_posession.bottes1 += 1
				bCreationBottes[0] = false
				
			if DataSave.items_equiper.bottes2 != 0:
				gui_equiper.bottes_2.queue_free()
				DataSave.items_equiper.bottes2 = 0
				DataSave.items_posession.bottes2 += 1
				bCreationBottes[1] = false
			
			if DataSave.items_equiper.bottes4 != 0:
				gui_equiper.bottes_4.queue_free()
				DataSave.items_equiper.bottes4 = 0
				DataSave.items_posession.bottes4 += 1
				bCreationBottes[3] = false
			
			if DataSave.items_equiper.bottes5 != 0:
				gui_equiper.bottes_5.queue_free()
				DataSave.items_equiper.bottes5 = 0
				DataSave.items_posession.bottes5 += 1
				bCreationBottes[4] = false
			
			if DataSave.items_equiper.bottes6 != 0:
				gui_equiper.bottes_6.queue_free()
				DataSave.items_equiper.bottes6 = 0
				DataSave.items_posession.bottes6 += 1
				bCreationBottes[5] = false
			
			interrupteur_Bottes[2] = false
	
	if DataSave.items_equiper.bottes4 == 1:
		if bCreationBottes[3] == false:
			gui_equiper.bottes_4 = GuiBottes4.instantiate()
			add_child(gui_equiper.bottes_4)
			bCreationBottes[3] = true
		gui_equiper.bottes_4.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_4.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_4.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[3] == true:
			if DataSave.items_equiper.bottes1 != 0:
				gui_equiper.bottes_1.queue_free()
				DataSave.items_equiper.bottes1 = 0
				DataSave.items_posession.bottes1 += 1
				bCreationBottes[0] = false
				
			if DataSave.items_equiper.bottes2 != 0:
				gui_equiper.bottes_2.queue_free()
				DataSave.items_equiper.bottes2 = 0
				DataSave.items_posession.bottes2 += 1
				bCreationBottes[1] = false
			
			if DataSave.items_equiper.bottes3 != 0:
				gui_equiper.bottes_3.queue_free()
				DataSave.items_equiper.bottes3 = 0
				DataSave.items_posession.bottes3 += 1
				bCreationBottes[2] = false
			
			if DataSave.items_equiper.bottes5 != 0:
				gui_equiper.bottes_5.queue_free()
				DataSave.items_equiper.bottes5 = 0
				DataSave.items_posession.bottes5 += 1
				bCreationBottes[4] = false
			
			if DataSave.items_equiper.bottes6 != 0:
				gui_equiper.bottes_6.queue_free()
				DataSave.items_equiper.bottes6 = 0
				DataSave.items_posession.bottes6 += 1
				bCreationBottes[5] = false
			
			interrupteur_Bottes[3] = false
	
	if DataSave.items_equiper.bottes5 == 1:
		if bCreationBottes[4] == false:
			gui_equiper.bottes_5 = GuiBottes5.instantiate()
			add_child(gui_equiper.bottes_5)
			bCreationBottes[4] = true 
		gui_equiper.bottes_5.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_5.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_5.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[4] == true:
			if DataSave.items_equiper.bottes1 != 0:
				gui_equiper.bottes_1.queue_free()
				DataSave.items_equiper.bottes1 = 0
				DataSave.items_posession.bottes1 += 1
				bCreationBottes[0] = false
				
			if DataSave.items_equiper.bottes2 != 0:
				gui_equiper.bottes_2.queue_free()
				DataSave.items_equiper.bottes2 = 0
				DataSave.items_posession.bottes2 += 1
				bCreationBottes[1] = false
			
			if DataSave.items_equiper.bottes3 != 0:
				gui_equiper.bottes_3.queue_free()
				DataSave.items_equiper.bottes3 = 0
				DataSave.items_posession.bottes3 += 1
				bCreationBottes[2] = false
			
			if DataSave.items_equiper.bottes4 != 0:
				gui_equiper.bottes_4.queue_free()
				DataSave.items_equiper.bottes4 = 0
				DataSave.items_posession.bottes4 += 1
				bCreationBottes[3] = false
			
			if DataSave.items_equiper.bottes6 != 0:
				gui_equiper.bottes_6.queue_free()
				DataSave.items_equiper.bottes6 = 0
				DataSave.items_posession.bottes6 += 1
				bCreationBottes[5] = false
			
			interrupteur_Bottes[4] = false
	
	if DataSave.items_equiper.bottes6 == 1:
		if bCreationBottes[5] == false:
			gui_equiper.bottes_6 = GuiBottes6.instantiate()
			add_child(gui_equiper.bottes_6)
			bCreationBottes[5] = true 
		gui_equiper.bottes_6.offset.x = childSlotEquip[4].position.x + nodeParent.offset.x
		gui_equiper.bottes_6.offset.y = childSlotEquip[4].position.y + nodeParent.offset.y
		gui_equiper.bottes_6.scale = Vector2(0.6, 0.7)
		
		if interrupteur_Bottes[5] == true:
			if DataSave.items_equiper.bottes1 != 0:
				gui_equiper.bottes_1.queue_free()
				DataSave.items_equiper.bottes1 = 0
				DataSave.items_posession.bottes1 += 1
				bCreationBottes[0] = false
				
			if DataSave.items_equiper.bottes2 != 0:
				gui_equiper.bottes_2.queue_free()
				DataSave.items_equiper.bottes2 = 0
				DataSave.items_posession.bottes2 += 1
				bCreationBottes[1] = false
			
			if DataSave.items_equiper.bottes3 != 0:
				gui_equiper.bottes_3.queue_free()
				DataSave.items_equiper.bottes3 = 0
				DataSave.items_posession.bottes3 += 1
				bCreationBottes[2] = false
			
			if DataSave.items_equiper.bottes4 != 0:
				gui_equiper.bottes_4.queue_free()
				DataSave.items_equiper.bottes4 = 0
				DataSave.items_posession.bottes4 += 1
				bCreationBottes[3] = false
			
			if DataSave.items_equiper.bottes5 != 0:
				gui_equiper.bottes_5.queue_free()
				DataSave.items_equiper.bottes5 = 0
				DataSave.items_posession.bottes5 += 1
				bCreationBottes[4] = false
			
			interrupteur_Bottes[5] = false
	
	if DataSave.items_equiper.bouclier1 == 1:
		gui_bouclier1[0] = GuiBouclier1.instantiate()
		add_child(gui_bouclier1[0])
		gui_bouclier1[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier1[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier1[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier2 == 1:
		gui_bouclier2[0] = GuiBouclier2.instantiate()
		add_child(gui_bouclier2[0])
		gui_bouclier2[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier2[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier2[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier3 == 1:
		gui_bouclier3[0] = GuiBouclier3.instantiate()
		add_child(gui_bouclier3[0])
		gui_bouclier3[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier3[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier3[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier4 == 1:
		gui_bouclier4[0] = GuiBouclier4.instantiate()
		add_child(gui_bouclier4[0])
		gui_bouclier4[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier4[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier4[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier5 == 1:
		gui_bouclier5[0] = GuiBouclier5.instantiate()
		add_child(gui_bouclier5[0])
		gui_bouclier5[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier5[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier5[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier6 == 1:
		gui_bouclier6[0] = GuiBouclier6.instantiate()
		add_child(gui_bouclier6[0])
		gui_bouclier6[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier6[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier6[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.bouclier7 == 1:
		gui_bouclier7[0] = GuiBouclier7.instantiate()
		add_child(gui_bouclier7[0])
		gui_bouclier7[0].offset.x = childSlotEquip[2].position.x + nodeParent.offset.x
		gui_bouclier7[0].offset.y = childSlotEquip[2].position.y + nodeParent.offset.y
		gui_bouclier7[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque1 == 1:
		gui_casque1[0] = GuiCasque1.instantiate()
		add_child(gui_casque1[0])
		gui_casque1[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque1[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque1[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque2 == 1:
		gui_casque2[0] = GuiCasque2.instantiate()
		add_child(gui_casque2[0])
		gui_casque2[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque2[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque2[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque3 == 1:
		gui_casque3[0] = GuiCasque3.instantiate()
		add_child(gui_casque3[0])
		gui_casque3[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque3[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque3[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque4 == 1:
		gui_casque4[0] = GuiCasque4.instantiate()
		add_child(gui_casque4[0])
		gui_casque4[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque4[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque4[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque5 == 1:
		gui_casque5[0] = GuiCasque5.instantiate()
		add_child(gui_casque5[0])
		gui_casque5[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque5[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque5[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.casque6 == 1:
		gui_casque6[0] = GuiCasque6.instantiate()
		add_child(gui_casque6[0])
		gui_casque6[0].offset.x = childSlotEquip[0].position.x + nodeParent.offset.x
		gui_casque6[0].offset.y = childSlotEquip[0].position.y + nodeParent.offset.y
		gui_casque6[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.collier1 == 1:
		gui_collier1[0] = GuiCollier1.instantiate()
		add_child(gui_collier1[0])
		gui_collier1[0].offset.x = childSlotEquip[6].position.x + nodeParent.offset.x
		gui_collier1[0].offset.y = childSlotEquip[6].position.y + nodeParent.offset.y
		gui_collier1[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.collier2 == 1:
		gui_collier2[0] = GuiCollier2.instantiate()
		add_child(gui_collier2[0])
		gui_collier2[0].offset.x = childSlotEquip[6].position.x + nodeParent.offset.x
		gui_collier2[0].offset.y = childSlotEquip[6].position.y + nodeParent.offset.y
		gui_collier2[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.collier3 == 1:
		gui_collier3[0] = GuiCollier3.instantiate()
		add_child(gui_collier3[0])
		gui_collier3[0].offset.x = childSlotEquip[6].position.x + nodeParent.offset.x
		gui_collier3[0].offset.y = childSlotEquip[6].position.y + nodeParent.offset.y
		gui_collier3[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume1 == 1:
		gui_heaume1[0] = GuiHeaume1.instantiate()
		add_child(gui_heaume1[0])
		gui_heaume1[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume1[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume1[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume2 == 1:
		gui_heaume2[0] = GuiHeaume2.instantiate()
		add_child(gui_heaume2[0])
		gui_heaume2[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume2[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume2[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume3 == 1:
		gui_heaume3[0] = GuiHeaume3.instantiate()
		add_child(gui_heaume3[0])
		gui_heaume3[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume3[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume3[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume4 == 1:
		gui_heaume4[0] = GuiHeaume4.instantiate()
		add_child(gui_heaume4[0])
		gui_heaume4[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume4[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume4[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume5 == 1:
		gui_heaume5[0] = GuiHeaume5.instantiate()
		add_child(gui_heaume5[0])
		gui_heaume5[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume5[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume5[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.heaume6 == 1:
		gui_heaume6[0] = GuiHeaume6.instantiate()
		add_child(gui_heaume6[0])
		gui_heaume6[0].offset.x = childSlotEquip[1].position.x + nodeParent.offset.x
		gui_heaume6[0].offset.y = childSlotEquip[1].position.y + nodeParent.offset.y
		gui_heaume6[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword1 == 1:
		gui_sword1[0] = GuiSword1.instantiate()
		add_child(gui_sword1[0])
		gui_sword1[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword1[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword1[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword2 == 1:
		gui_sword2[0] = GuiSword2.instantiate()
		add_child(gui_sword2[0])
		gui_sword2[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword2[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword2[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword3 == 1:
		gui_sword3[0] = GuiSword3.instantiate()
		add_child(gui_sword3[0])
		gui_sword3[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword3[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword3[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword4 == 1:
		gui_sword4[0] = GuiSword4.instantiate()
		add_child(gui_sword4[0])
		gui_sword4[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword4[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword4[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword5 == 1:
		gui_sword5[0] = GuiSword5.instantiate()
		add_child(gui_sword5[0])
		gui_sword5[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword5[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword5[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword6 == 1:
		gui_sword6[0] = GuiSword6.instantiate()
		add_child(gui_sword6[0])
		gui_sword6[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword6[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword6[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword7 == 1:
		gui_sword7[0] = GuiSword7.instantiate()
		add_child(gui_sword7[0])
		gui_sword7[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword7[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword7[0].scale = Vector2(0.6, 0.7)
	
	if DataSave.items_equiper.sword8 == 1:
		gui_sword8[0] = GuiSword8.instantiate()
		add_child(gui_sword8[0])
		gui_sword8[0].offset.x = childSlotEquip[3].position.x + nodeParent.offset.x
		gui_sword8[0].offset.y = childSlotEquip[3].position.y + nodeParent.offset.y
		gui_sword8[0].scale = Vector2(0.6, 0.7)
	
	var mouse_pos = get_viewport().get_mouse_position()
	#----
	if gui_fenetre != null:
		gui_fenetre.offset.x = mouse_pos.x+10
		gui_fenetre.offset.y = mouse_pos.y+13
	if txt_titre != null:
		txt_titre.offset.x = mouse_pos.x+10+nbDecaleTextName
		txt_titre.offset.y = mouse_pos.y+13
	if txt_stat_1 != null:
		txt_stat_1.offset.x = mouse_pos.x+10
		txt_stat_1.offset.y = mouse_pos.y+40
	if txt_stat_2 != null:
		txt_stat_2.offset.x = mouse_pos.x+10
		txt_stat_2.offset.y = mouse_pos.y+55
	
	for n in range(16):	
		if DataSave.items_posession.bague1 != nbCompteurBague1 and txtItemType[n] == "vide":
					gui_bague1[n] = GuiBague1.instantiate()
					add_child(gui_bague1[n])
					var child_bague1 = gui_bague1[n].get_node("textureBague1")
					child_bague1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague1"))
					child_bague1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague"))
					gui_bague1[n].scale = Vector2(0.6, 0.7)
					gui_bague1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
					gui_bague1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
					nbCompteurBague1 += 1
					isSlot_libre[n] = false
					txtItemType[n] = "bague_1"
		
		if DataSave.items_posession.bague2 != nbCompteurBague2 and txtItemType[n] == "vide":
					gui_bague2[n] = GuiBague2.instantiate()
					add_child(gui_bague2[n])
					var child_bague2 = gui_bague2[n].get_node("textureBague2")
					child_bague2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague2"))
					child_bague2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague"))
					gui_bague2[n].scale = Vector2(0.6, 0.7)
					gui_bague2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
					gui_bague2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
					nbCompteurBague2 += 1
					isSlot_libre[n] = false
					txtItemType[n] = "bague_2"
		
		if DataSave.items_posession.bague3 != nbCompteurBague3 and txtItemType[n] == "vide":
					gui_bague3[n] = GuiBague3.instantiate()
					add_child(gui_bague3[n])
					var child_bague3 = gui_bague3[n].get_node("textureBague3")
					child_bague3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague3"))
					child_bague3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague"))
					gui_bague3[n].scale = Vector2(0.6, 0.7)
					gui_bague3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
					gui_bague3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
					nbCompteurBague3 += 1
					isSlot_libre[n] = false
					txtItemType[n] = "bague_3"
		
		if DataSave.items_posession.bottes1 != nbCompteurBottes1 and txtItemType[n] == "vide":
				gui_bottes1[n] = GuiBottes1.instantiate()
				add_child(gui_bottes1[n])
				var child_bottes1 = gui_bottes1[n].get_node("textureBottes1")
				child_bottes1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes1"))
				child_bottes1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes1[n].scale = Vector2(0.6, 0.7)
				gui_bottes1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_1"
		
		if DataSave.items_posession.bottes2 != nbCompteurBottes2 and txtItemType[n] == "vide":
				gui_bottes2[n] = GuiBottes2.instantiate()
				add_child(gui_bottes2[n])
				var child_bottes2 = gui_bottes2[n].get_node("textureBottes2")
				child_bottes2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes2"))
				child_bottes2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes2[n].scale = Vector2(0.6, 0.7)
				gui_bottes2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_2"
		
		if DataSave.items_posession.bottes3 != nbCompteurBottes3 and txtItemType[n] == "vide":
				gui_bottes3[n] = GuiBottes3.instantiate()
				add_child(gui_bottes3[n])
				var child_bottes3 = gui_bottes3[n].get_node("textureBottes3")
				child_bottes3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes3"))
				child_bottes3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes3[n].scale = Vector2(0.6, 0.7)
				gui_bottes3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_3"
		
		if DataSave.items_posession.bottes4 != nbCompteurBottes4 and txtItemType[n] == "vide":
				gui_bottes4[n] = GuiBottes4.instantiate()
				add_child(gui_bottes4[n])
				var child_bottes4 = gui_bottes4[n].get_node("textureBottes4")
				child_bottes4.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes4"))
				child_bottes4.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes4[n].scale = Vector2(0.6, 0.7)
				gui_bottes4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_4"
		
		if DataSave.items_posession.bottes5 != nbCompteurBottes5 and txtItemType[n] == "vide":
				gui_bottes5[n] = GuiBottes5.instantiate()
				add_child(gui_bottes5[n])
				var child_bottes5 = gui_bottes5[n].get_node("textureBottes5")
				child_bottes5.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes5"))
				child_bottes5.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes5[n].scale = Vector2(0.6, 0.7)
				gui_bottes5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_5"
		
		if DataSave.items_posession.bottes6 != nbCompteurBottes6 and txtItemType[n] == "vide":
				gui_bottes6[n] = GuiBottes6.instantiate()
				add_child(gui_bottes6[n])
				var child_bottes6 = gui_bottes6[n].get_node("textureBottes6")
				child_bottes6.connect("mouse_entered", Callable(self, "_on_mouse_entered_bottes6"))
				child_bottes6.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes"))
				gui_bottes6[n].scale = Vector2(0.6, 0.7)
				gui_bottes6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bottes6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBottes6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bottes_6"
		
		if DataSave.items_posession.bouclier1 != nbCompteurBouclier1 and txtItemType[n] == "vide":
				gui_bouclier1[n] = GuiBouclier1.instantiate()
				add_child(gui_bouclier1[n])
				var child_bouclier1 = gui_bouclier1[n].get_node("textureBouclier1")
				child_bouclier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier1"))
				child_bouclier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier1[n].scale = Vector2(0.6, 0.7)
				gui_bouclier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_1"
		
		if DataSave.items_posession.bouclier2 != nbCompteurBouclier2 and txtItemType[n] == "vide":
				gui_bouclier2[n] = GuiBouclier2.instantiate()
				add_child(gui_bouclier2[n])
				var child_bouclier2 = gui_bouclier2[n].get_node("textureBouclier2")
				child_bouclier2.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier2"))
				child_bouclier2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier2[n].scale = Vector2(0.6, 0.7)
				gui_bouclier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_2"
		
		if DataSave.items_posession.bouclier3 != nbCompteurBouclier3 and txtItemType[n] == "vide":
				gui_bouclier3[n] = GuiBouclier3.instantiate()
				add_child(gui_bouclier3[n])
				var child_bouclier3 = gui_bouclier3[n].get_node("textureBouclier3")
				child_bouclier3.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier3"))
				child_bouclier3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier3[n].scale = Vector2(0.6, 0.7)
				gui_bouclier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_3"
		
		if DataSave.items_posession.bouclier4 != nbCompteurBouclier4 and txtItemType[n] == "vide":
				gui_bouclier4[n] = GuiBouclier4.instantiate()
				add_child(gui_bouclier4[n])
				var child_bouclier4 = gui_bouclier4[n].get_node("textureBouclier4")
				child_bouclier4.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier4"))
				child_bouclier4.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier4[n].scale = Vector2(0.6, 0.7)
				gui_bouclier4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_4"
		
		if DataSave.items_posession.bouclier5 != nbCompteurBouclier5 and txtItemType[n] == "vide":
				gui_bouclier5[n] = GuiBouclier5.instantiate()
				add_child(gui_bouclier5[n])
				var child_bouclier5 = gui_bouclier5[n].get_node("textureBouclier5")
				child_bouclier5.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier5"))
				child_bouclier5.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier5[n].scale = Vector2(0.6, 0.7)
				gui_bouclier5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_5"
		
		if DataSave.items_posession.bouclier6 != nbCompteurBouclier6 and txtItemType[n] == "vide":
				gui_bouclier6[n] = GuiBouclier6.instantiate()
				add_child(gui_bouclier6[n])
				var child_bouclier6 = gui_bouclier6[n].get_node("textureBouclier6")
				child_bouclier6.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier6"))
				child_bouclier6.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier6[n].scale = Vector2(0.6, 0.7)
				gui_bouclier6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_6"
		
		if DataSave.items_posession.bouclier7 != nbCompteurBouclier7 and txtItemType[n] == "vide":
				gui_bouclier7[n] = GuiBouclier7.instantiate()
				add_child(gui_bouclier7[n])
				var child_bouclier7 = gui_bouclier7[n].get_node("textureBouclier7")
				child_bouclier7.connect("mouse_entered", Callable(self, "_on_mouse_entered_bouclier7"))
				child_bouclier7.connect("mouse_exited", Callable(self, "_on_mouse_exited_bouclier"))
				gui_bouclier7[n].scale = Vector2(0.6, 0.7)
				gui_bouclier7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_bouclier7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurBouclier7 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "bouclier_7"
		
		if DataSave.items_posession.casque1 != nbCompteurCasque1 and txtItemType[n] == "vide":
				gui_casque1[n] = GuiCasque1.instantiate()
				add_child(gui_casque1[n])
				var child_casque1 = gui_casque1[n].get_node("textureCasque1")
				child_casque1.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque1"))
				child_casque1.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque1[n].scale = Vector2(0.6, 0.7)
				gui_casque1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_1"
		
		if DataSave.items_posession.casque2 != nbCompteurCasque2 and txtItemType[n] == "vide":
				gui_casque2[n] = GuiCasque2.instantiate()
				add_child(gui_casque2[n])
				var child_casque2 = gui_casque2[n].get_node("textureCasque2")
				child_casque2.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque2"))
				child_casque2.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque2[n].scale = Vector2(0.6, 0.7)
				gui_casque2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_2"
		
		if DataSave.items_posession.casque3 != nbCompteurCasque3 and txtItemType[n] == "vide":
				gui_casque3[n] = GuiCasque3.instantiate()
				add_child(gui_casque3[n])
				var child_casque3 = gui_casque3[n].get_node("textureCasque3")
				child_casque3.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque3"))
				child_casque3.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque3[n].scale = Vector2(0.6, 0.7)
				gui_casque3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_3"
		
		if DataSave.items_posession.casque4 != nbCompteurCasque4 and txtItemType[n] == "vide":
				gui_casque4[n] = GuiCasque4.instantiate()
				add_child(gui_casque4[n])
				var child_casque4 = gui_casque4[n].get_node("textureCasque4")
				child_casque4.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque4"))
				child_casque4.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque4[n].scale = Vector2(0.6, 0.7)
				gui_casque4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_4"
		
		if DataSave.items_posession.casque5 != nbCompteurCasque5 and txtItemType[n] == "vide":
				gui_casque5[n] = GuiCasque5.instantiate()
				add_child(gui_casque5[n])
				var child_casque5 = gui_casque5[n].get_node("textureCasque5")
				child_casque5.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque5"))
				child_casque5.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque5[n].scale = Vector2(0.6, 0.7)
				gui_casque5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_5"
		
		if DataSave.items_posession.casque6 != nbCompteurCasque6 and txtItemType[n] == "vide":
				gui_casque6[n] = GuiCasque6.instantiate()
				add_child(gui_casque6[n])
				var child_casque6 = gui_casque6[n].get_node("textureCasque6")
				child_casque6.connect("mouse_entered", Callable(self, "_on_mouse_entered_casque6"))
				child_casque6.connect("mouse_exited", Callable(self, "_on_mouse_exited_casque"))
				gui_casque6[n].scale = Vector2(0.6, 0.7)
				gui_casque6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_casque6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCasque6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "casque_6"
		
		if DataSave.items_posession.collier1 != nbCompteurCollier1 and txtItemType[n] == "vide":
				gui_collier1[n] = GuiCollier1.instantiate()
				add_child(gui_collier1[n])
				var child_collier1 = gui_collier1[n].get_node("textureCollier1")
				child_collier1.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier1"))
				child_collier1.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier1[n].scale = Vector2(0.6, 0.7)
				gui_collier1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_1"
		
		if DataSave.items_posession.collier2 != nbCompteurCollier2 and txtItemType[n] == "vide":
				gui_collier2[n] = GuiCollier2.instantiate()
				add_child(gui_collier2[n])
				var child_collier2 = gui_collier2[n].get_node("textureCollier2")
				child_collier2.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier2"))
				child_collier2.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier2[n].scale = Vector2(0.6, 0.7)
				gui_collier2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_2"
		
		if DataSave.items_posession.collier3 != nbCompteurCollier3 and txtItemType[n] == "vide":
				gui_collier3[n] = GuiCollier3.instantiate()
				add_child(gui_collier3[n])
				var child_collier3 = gui_collier3[n].get_node("textureCollier3")
				child_collier3.connect("mouse_entered", Callable(self, "_on_mouse_entered_collier3"))
				child_collier3.connect("mouse_exited", Callable(self, "_on_mouse_exited_collier"))
				gui_collier3[n].scale = Vector2(0.6, 0.7)
				gui_collier3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_collier3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurCollier3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "collier_3"
		
		if DataSave.items_posession.heaume1 != nbCompteurHeaume1 and txtItemType[n] == "vide":
				gui_heaume1[n] = GuiHeaume1.instantiate()
				add_child(gui_heaume1[n])
				var child_heaume1 = gui_heaume1[n].get_node("textureHeaume1")
				child_heaume1.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume1"))
				child_heaume1.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume1[n].scale = Vector2(0.6, 0.7)
				gui_heaume1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_1"
		
		if DataSave.items_posession.heaume2 != nbCompteurHeaume2 and txtItemType[n] == "vide":
				gui_heaume2[n] = GuiHeaume2.instantiate()
				add_child(gui_heaume2[n])
				var child_heaume2 = gui_heaume2[n].get_node("textureHeaume2")
				child_heaume2.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume2"))
				child_heaume2.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume2[n].scale = Vector2(0.6, 0.7)
				gui_heaume2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_2"
		
		if DataSave.items_posession.heaume3 != nbCompteurHeaume3 and txtItemType[n] == "vide":
				gui_heaume3[n] = GuiHeaume3.instantiate()
				add_child(gui_heaume3[n])
				var child_heaume3 = gui_heaume3[n].get_node("textureHeaume3")
				child_heaume3.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume3"))
				child_heaume3.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume3[n].scale = Vector2(0.6, 0.7)
				gui_heaume3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_3"
		
		if DataSave.items_posession.heaume4 != nbCompteurHeaume4 and txtItemType[n] == "vide":
				gui_heaume4[n] = GuiHeaume4.instantiate()
				add_child(gui_heaume4[n])
				var child_heaume4 = gui_heaume4[n].get_node("textureHeaume4")
				child_heaume4.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume4"))
				child_heaume4.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume4[n].scale = Vector2(0.6, 0.7)
				gui_heaume4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_4"
		
		if DataSave.items_posession.heaume5 != nbCompteurHeaume5 and txtItemType[n] == "vide":
				gui_heaume5[n] = GuiHeaume5.instantiate()
				add_child(gui_heaume5[n])
				var child_heaume5 = gui_heaume5[n].get_node("textureHeaume5")
				child_heaume5.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume5"))
				child_heaume5.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume5[n].scale = Vector2(0.6, 0.7)
				gui_heaume5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_5"
		
		if DataSave.items_posession.heaume6 != nbCompteurHeaume6 and txtItemType[n] == "vide":
				gui_heaume6[n] = GuiHeaume6.instantiate()
				add_child(gui_heaume6[n])
				var child_heaume6 = gui_heaume6[n].get_node("textureHeaume6")
				child_heaume6.connect("mouse_entered", Callable(self, "_on_mouse_entered_heaume6"))
				child_heaume6.connect("mouse_exited", Callable(self, "_on_mouse_exited_heaume"))
				gui_heaume6[n].scale = Vector2(0.6, 0.7)
				gui_heaume6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_heaume6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurHeaume6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "heaume_6"
		
		if DataSave.items_posession.sword1 != nbCompteurSword1 and txtItemType[n] == "vide":
				gui_sword1[n] = GuiSword1.instantiate()
				add_child(gui_sword1[n])
				var child_sword1 = gui_sword1[n].get_node("textureSword1")
				child_sword1.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword1"))
				child_sword1.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword1[n].scale = Vector2(0.6, 0.7)
				gui_sword1[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword1[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword1 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_1"
		
		if DataSave.items_posession.sword2 != nbCompteurSword2 and txtItemType[n] == "vide":
				gui_sword2[n] = GuiSword2.instantiate()
				add_child(gui_sword2[n])
				var child_sword2 = gui_sword2[n].get_node("textureSword2")
				child_sword2.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword2"))
				child_sword2.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword2[n].scale = Vector2(0.6, 0.7)
				gui_sword2[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword2[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword2 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_2"
		
		if DataSave.items_posession.sword3 != nbCompteurSword3 and txtItemType[n] == "vide":
				gui_sword3[n] = GuiSword3.instantiate()
				add_child(gui_sword3[n])
				var child_sword3 = gui_sword3[n].get_node("textureSword3")
				child_sword3.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword3"))
				child_sword3.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword3[n].scale = Vector2(0.6, 0.7)
				gui_sword3[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword3[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword3 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_3"
		
		if DataSave.items_posession.sword4 != nbCompteurSword4 and txtItemType[n] == "vide":
				gui_sword4[n] = GuiSword4.instantiate()
				add_child(gui_sword4[n])
				var child_sword4 = gui_sword4[n].get_node("textureSword4")
				child_sword4.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword4"))
				child_sword4.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword4[n].scale = Vector2(0.6, 0.7)
				gui_sword4[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword4[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword4 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_4"
		
		if DataSave.items_posession.sword5 != nbCompteurSword5 and txtItemType[n] == "vide":
				gui_sword5[n] = GuiSword5.instantiate()
				add_child(gui_sword5[n])
				var child_sword5 = gui_sword5[n].get_node("textureSword5")
				child_sword5.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword5"))
				child_sword5.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword5[n].scale = Vector2(0.6, 0.7)
				gui_sword5[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword5[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword5 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_5"
		
		if DataSave.items_posession.sword6 != nbCompteurSword6 and txtItemType[n] == "vide":
				gui_sword6[n] = GuiSword6.instantiate()
				add_child(gui_sword6[n])
				var child_sword6 = gui_sword6[n].get_node("textureSword6")
				child_sword6.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword6"))
				child_sword6.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword6[n].scale = Vector2(0.6, 0.7)
				gui_sword6[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword6[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword6 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_6"
		
		if DataSave.items_posession.sword7 != nbCompteurSword7 and txtItemType[n] == "vide":
				gui_sword7[n] = GuiSword7.instantiate()
				add_child(gui_sword7[n])
				var child_sword7 = gui_sword7[n].get_node("textureSword7")
				child_sword7.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword7"))
				child_sword7.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword7[n].scale = Vector2(0.6, 0.7)
				gui_sword7[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword7[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword7 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_7"
		
		if DataSave.items_posession.sword8 != nbCompteurSword8 and txtItemType[n] == "vide":
				gui_sword8[n] = GuiSword8.instantiate()
				add_child(gui_sword8[n])
				var child_sword8 = gui_sword8[n].get_node("textureSword8")
				child_sword8.connect("mouse_entered", Callable(self, "_on_mouse_entered_sword8"))
				child_sword8.connect("mouse_exited", Callable(self, "_on_mouse_exited_sword"))
				gui_sword8[n].scale = Vector2(0.6, 0.7)
				gui_sword8[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword8[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword8 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_8"

func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true

func _input(event):
	var mouse_pos = get_viewport().get_mouse_position()
	var slot_posX = []
	var slot_posY = []
	
	slot_posX.resize(16)
	slot_posY.resize(16)
	
	#Interaction avec les items 
	for n in range(16):
		slot_posX[n] = childSlot[n].position.x + nodeParent.offset.x
		slot_posY[n] = childSlot[n].position.y + nodeParent.offset.y
		if Input.is_action_just_pressed("button_left"):
			if mouse_pos.x >= slot_posX[n] and mouse_pos.x <= slot_posX[n] + childSlot[n].size.x-1 and mouse_pos.y >= slot_posY[n] and mouse_pos.y <= slot_posY[n] + childSlot[n].size.y-1:
				
				if txtItemType[n] == "bague_1" and DataSave.items_equiper.bague1 == 0:
					if gui_bague1[n] != null:
						if n == n:
							#print("coucou c'est la bague du chaos !",n)
							gui_bague1[n].queue_free()
							
							txtItemType[n] = "vide"
							DataSave.items_posession.bague1 -= 1
							DataSave.items_equiper.bague1 = 1
							interrupteur_Bague[0] = true
							
							nbCompteurBague1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bague_2" and DataSave.items_equiper.bague2 == 0:
					if gui_bague2[n] != null:
						if n == n:
							print("coucou c'est la bague du deuxieme !",n)
							gui_bague2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bague2 -= 1
							DataSave.items_equiper.bague2 = 1
							interrupteur_Bague[1] = true
							
							nbCompteurBague2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bague_3" and DataSave.items_equiper.bague3 == 0:
					if gui_bague3[n] != null:
						if n == n:
							print("coucou c'est la bague du trois !",n)
							gui_bague3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bague3 -= 1
							DataSave.items_equiper.bague3 = 1
							interrupteur_Bague[2] = true
							
							nbCompteurBague3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_1" and DataSave.items_equiper.bottes1 == 0:
					if gui_bottes1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes1 -= 1
							DataSave.items_equiper.bottes1 = 1
							interrupteur_Bottes[0] = true
							
							nbCompteurBottes1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_2" and DataSave.items_equiper.bottes2 == 0:
					if gui_bottes2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes2 -= 1
							DataSave.items_equiper.bottes2 = 1
							interrupteur_Bottes[1] = true
							
							nbCompteurBottes2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_3" and DataSave.items_equiper.bottes3 == 0:
					if gui_bottes3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes3 -= 1
							DataSave.items_equiper.bottes3 = 1
							interrupteur_Bottes[2] = true
							
							nbCompteurBottes3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_4" and DataSave.items_equiper.bottes4 == 0:
					if gui_bottes4[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes4[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes4 -= 1
							DataSave.items_equiper.bottes4 = 1
							interrupteur_Bottes[3] = true
							
							nbCompteurBottes4 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_5" and DataSave.items_equiper.bottes5 == 0:
					if gui_bottes5[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes5[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes5 -= 1
							DataSave.items_equiper.bottes5 = 1
							interrupteur_Bottes[4] = true
							
							nbCompteurBottes5 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bottes_6" and DataSave.items_equiper.bottes6 == 0:
					if gui_bottes6[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bottes6[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bottes6 -= 1
							DataSave.items_equiper.bottes6 = 1
							interrupteur_Bottes[5] = true
							
							nbCompteurBottes6 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_1" and DataSave.items_equiper.bouclier1 == 0:
					if gui_bouclier1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							DataSave.items_equiper.bouclier1 = 1
							interrupteur_Bouclier[0] = true
							
							nbCompteurBouclier1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_2" and DataSave.items_equiper.bouclier2 == 0:
					if gui_bouclier2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							DataSave.items_equiper.bouclier2 = 1
							interrupteur_Bouclier[1] = true
							
							nbCompteurBouclier2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_3" and DataSave.items_equiper.bouclier3 == 0:
					if gui_bouclier3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							DataSave.items_equiper.bouclier3 = 1
							interrupteur_Bouclier[2] = true
							
							nbCompteurBouclier3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_4" and DataSave.items_equiper.bouclier4 == 0:
					if gui_bouclier4[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier4[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							DataSave.items_equiper.bouclier4 = 1
							interrupteur_Bouclier[3] = true
							
							nbCompteurBouclier4 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_5" and DataSave.items_equiper.bouclier5 == 0:
					if gui_bouclier5[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier5[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							DataSave.items_equiper.bouclier5 = 1
							interrupteur_Bouclier[4] = true
							
							nbCompteurBouclier5 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_6" and DataSave.items_equiper.bouclier6 == 0:
					if gui_bouclier6[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier6[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							DataSave.items_equiper.bouclier6 = 1
							interrupteur_Bouclier[5] = true
							
							nbCompteurBouclier6 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "bouclier_7" and DataSave.items_equiper.bouclier7 == 0:
					if gui_bouclier7[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_bouclier7[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							DataSave.items_equiper.bouclier7 = 1
							interrupteur_Bouclier[6] = true
							
							nbCompteurBouclier7 -= 1
							isSlot_libre[n] = true
				
				
				if txtItemType[n] == "casque_1" and DataSave.items_equiper.casque1 == 0:
					if gui_casque1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque1 -= 1
							DataSave.items_equiper.casque1 = 1
							interrupteur_Casque[0] = true
							
							nbCompteurCasque1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "casque_2" and DataSave.items_equiper.casque2 == 0:
					if gui_casque2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque2 -= 1
							DataSave.items_equiper.casque2 = 1
							interrupteur_Casque[1] = true
							
							nbCompteurCasque2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "casque_3" and DataSave.items_equiper.casque3 == 0:
					if gui_casque3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque3 -= 1
							DataSave.items_equiper.casque3 = 1
							interrupteur_Casque[2] = true
							
							nbCompteurCasque3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "casque_4" and DataSave.items_equiper.casque4 == 0:
					if gui_casque4[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque4[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque4 -= 1
							DataSave.items_equiper.casque4 = 1
							interrupteur_Casque[3] = true
							
							nbCompteurCasque4 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "casque_5" and DataSave.items_equiper.casque5 == 0:
					if gui_casque5[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque5[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque5 -= 1
							DataSave.items_equiper.casque5 = 1
							interrupteur_Casque[4] = true
							
							nbCompteurCasque5 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "casque_6" and DataSave.items_equiper.casque6 == 0:
					if gui_casque6[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_casque6[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.casque6 -= 1
							DataSave.items_equiper.casque6 = 1
							interrupteur_Casque[5] = true
							
							nbCompteurCasque6 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "collier_1" and DataSave.items_equiper.collier1 == 0:
					if gui_collier1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_collier1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.collier1 -= 1
							DataSave.items_equiper.collier1 = 1
							interrupteur_Collier[0] = true
							
							nbCompteurCollier1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "collier_2" and DataSave.items_equiper.collier2 == 0:
					if gui_collier2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_collier2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.collier2 -= 1
							DataSave.items_equiper.collier2 = 1
							interrupteur_Collier[1] = true
							
							nbCompteurCollier2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "collier_3" and DataSave.items_equiper.collier3 == 0:
					if gui_collier3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_collier3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.collier3 -= 1
							DataSave.items_equiper.collier3 = 1
							interrupteur_Collier[2] = true
							
							nbCompteurCollier3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_1" and DataSave.items_equiper.heaume1 == 0:
					if gui_heaume1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume1 -= 1
							DataSave.items_equiper.heaume1 = 1
							interrupteur_Heaume[0] = true
							
							nbCompteurHeaume1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_2" and DataSave.items_equiper.heaume2 == 0:
					if gui_heaume2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume2 -= 1
							DataSave.items_equiper.heaume2 = 1
							interrupteur_Heaume[1] = true
							
							nbCompteurHeaume2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_3" and DataSave.items_equiper.heaume3 == 0:
					if gui_heaume3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume3 -= 1
							DataSave.items_equiper.heaume3 = 1
							interrupteur_Heaume[2] = true
							
							nbCompteurHeaume3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_4" and DataSave.items_equiper.heaume4 == 0:
					if gui_heaume4[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume4[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume4 -= 1
							DataSave.items_equiper.heaume4 = 1
							interrupteur_Heaume[3] = true
							
							nbCompteurHeaume4 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_5" and DataSave.items_equiper.heaume5 == 0:
					if gui_heaume5[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume5[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume5 -= 1
							DataSave.items_equiper.heaume5 = 1
							interrupteur_Heaume[4] = true
							
							nbCompteurHeaume5 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "heaume_6" and DataSave.items_equiper.heaume6 == 0:
					if gui_heaume6[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_heaume6[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.heaume6 -= 1
							DataSave.items_equiper.heaume6 = 1
							interrupteur_Heaume[5] = true
							
							nbCompteurHeaume6 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_1" and DataSave.items_equiper.sword1 == 0:
					if gui_sword1[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword1[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword1 -= 1
							DataSave.items_equiper.sword1 = 1
							interrupteur_Sword[0] = true
							
							nbCompteurSword1 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_2" and DataSave.items_equiper.sword2 == 0:
					if gui_sword2[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword2[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword2 -= 1
							DataSave.items_equiper.sword2 = 1
							interrupteur_Sword[1] = true
							
							nbCompteurSword2 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_3" and DataSave.items_equiper.sword3 == 0:
					if gui_sword3[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword3[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword3 -= 1
							DataSave.items_equiper.sword3 = 1
							interrupteur_Sword[2] = true
							
							nbCompteurSword3 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_4" and DataSave.items_equiper.sword4 == 0:
					if gui_sword4[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword4[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword4 -= 1
							DataSave.items_equiper.sword4 = 1
							interrupteur_Sword[3] = true
							
							nbCompteurSword4 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_5" and DataSave.items_equiper.sword5 == 0:
					if gui_sword5[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword5[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword5 -= 1
							DataSave.items_equiper.sword5 = 1
							interrupteur_Sword[4] = true
							
							nbCompteurSword5 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_6" and DataSave.items_equiper.sword6 == 0:
					if gui_sword6[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword6[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword6 -= 1
							DataSave.items_equiper.sword6 = 1
							interrupteur_Sword[5] = true
							
							nbCompteurSword6 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_7" and DataSave.items_equiper.sword7 == 0:
					if gui_sword7[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword7[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword7 -= 1
							DataSave.items_equiper.sword7 = 1
							interrupteur_Sword[6] = true
							
							nbCompteurSword7 -= 1
							isSlot_libre[n] = true
				
				if txtItemType[n] == "sword_8" and DataSave.items_equiper.sword8 == 0:
					if gui_sword8[n] != null:
						if n == n:
							#print("coucou c'est la bottes !",n)
							gui_sword8[n].queue_free()
							txtItemType[n] = "vide"
							DataSave.items_posession.sword8 -= 1
							DataSave.items_equiper.sword8 = 1
							interrupteur_Sword[7] = true
							
							nbCompteurSword8 -= 1
							isSlot_libre[n] = true
	
