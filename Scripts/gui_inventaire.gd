extends CanvasLayer

@onready var nodeParent = get_node(".")
@onready var childSlot = []
#sword8
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
var GuiFenetre = preload("res://Objets/gui_fenetre_black.tscn")
var GuiTextUi = preload("res://Objets/gui_text_fenetre.tscn")


var txt_titre
var txt_stat_1
var txt_stat_2
var gui_fenetre
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

var isSlot_libre = []

var txtItemType = []

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

var nbDecaleTextName = 0

func _on_mouse_exited_potion_vie():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potion_mana():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potion_elixir():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague1():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague2():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague3():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes1():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes2():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes3():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes4():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes5():
	gui_fenetre.queue_free()
	txt_titre.queue_free()
	txt_stat_1.queue_free()
	txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes6():
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

func _on_mouse_entered_potion_vie():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_vie[n] != null:
			childGuiTxtNameItem.text = gui_potion_vie[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_vie[n] != null:
			childGuiTxtStat1.text = "Vie : " + str(gui_potion_vie[n].txt_description)


func _on_mouse_entered_potion_mana():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_mana[n] != null:
			childGuiTxtNameItem.text = gui_potion_mana[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_mana[n] != null:
			childGuiTxtStat1.text = "Mana : " + str(gui_potion_mana[n].txt_description)

func _on_mouse_entered_potion_elixir():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_elixir[n] != null:
			childGuiTxtNameItem.text = gui_potion_elixir[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_potion_elixir[n] != null:
			childGuiTxtStat1.text = "Mana + Vie : " + str(gui_potion_elixir[n].txt_description)

func _on_mouse_entered_bague1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague1[n] != null:
			childGuiTxtNameItem.text = gui_bague1[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague1[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague1[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague1[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague1[n].nb_mana)

func _on_mouse_entered_bague2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague2[n] != null:
			childGuiTxtNameItem.text = gui_bague2[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague2[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague2[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague2[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague2[n].nb_mana)

func _on_mouse_entered_bague3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague3[n] != null:
			childGuiTxtNameItem.text = gui_bague3[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague3[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_bague3[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bague3[n] != null:
			childGuiTxtStat2.text = "Mana : + " + str(gui_bague3[n].nb_mana)

func _on_mouse_entered_bottes1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes1[n] != null:
			childGuiTxtNameItem.text = gui_bottes1[n].txt_name
	nbDecaleTextName = 40
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes1[n].nb_defense)

func _on_mouse_entered_bottes2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes2[n] != null:
			childGuiTxtNameItem.text = gui_bottes2[n].txt_name
	nbDecaleTextName = 7
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes2[n].nb_defense)

func _on_mouse_entered_bottes3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes3[n] != null:
			childGuiTxtNameItem.text = gui_bottes3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes3[n].nb_defense)

func _on_mouse_entered_bottes4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes4[n] != null:
			childGuiTxtNameItem.text = gui_bottes4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes4[n].nb_defense)

func _on_mouse_entered_bottes5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes5[n] != null:
			childGuiTxtNameItem.text = gui_bottes5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes5[n].nb_defense)

func _on_mouse_entered_bottes6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes6[n] != null:
			childGuiTxtNameItem.text = gui_bottes6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bottes6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bottes6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bottes6[n].nb_defense)

func _on_mouse_entered_bouclier1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier1[n] != null:
			childGuiTxtNameItem.text = gui_bouclier1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier1[n].nb_defense)

func _on_mouse_entered_bouclier2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier2[n] != null:
			childGuiTxtNameItem.text = gui_bouclier2[n].txt_name
	nbDecaleTextName = 10
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier2[n].nb_defense)

func _on_mouse_entered_bouclier3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier3[n] != null:
			childGuiTxtNameItem.text = gui_bouclier3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier3[n].nb_defense)

func _on_mouse_entered_bouclier4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier4[n] != null:
			childGuiTxtNameItem.text = gui_bouclier4[n].txt_name
	nbDecaleTextName = 5
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier4[n].nb_defense)

func _on_mouse_entered_bouclier5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier5[n] != null:
			childGuiTxtNameItem.text = gui_bouclier5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier5[n].nb_defense)

func _on_mouse_entered_bouclier6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier6[n] != null:
			childGuiTxtNameItem.text = gui_bouclier6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier6[n].nb_defense)

func _on_mouse_entered_bouclier7():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier7[n] != null:
			childGuiTxtNameItem.text = gui_bouclier7[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier7[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_bouclier7[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_bouclier7[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_bouclier7[n].nb_defense)

func _on_mouse_entered_casque1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque1[n] != null:
			childGuiTxtNameItem.text = gui_casque1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque1[n].nb_defense)

func _on_mouse_entered_casque2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque2[n] != null:
			childGuiTxtNameItem.text = gui_casque2[n].txt_name
	nbDecaleTextName = 15
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque2[n].nb_defense)

func _on_mouse_entered_casque3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque3[n] != null:
			childGuiTxtNameItem.text = gui_casque3[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque3[n].nb_defense)

func _on_mouse_entered_casque4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque4[n] != null:
			childGuiTxtNameItem.text = gui_casque4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque4[n].nb_defense)

func _on_mouse_entered_casque5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque5[n] != null:
			childGuiTxtNameItem.text = gui_casque5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque5[n].nb_defense)

func _on_mouse_entered_casque6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque6[n] != null:
			childGuiTxtNameItem.text = gui_casque6[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_casque6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_casque6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_casque6[n].nb_defense)

func _on_mouse_entered_collier1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier1[n] != null:
			childGuiTxtNameItem.text = gui_collier1[n].txt_name
	nbDecaleTextName = 5
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier1[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier1[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier1[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier1[n].nb_endurance)

func _on_mouse_entered_collier2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier2[n] != null:
			childGuiTxtNameItem.text = gui_collier2[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier2[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier2[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier2[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier2[n].nb_endurance)

func _on_mouse_entered_collier3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier3[n] != null:
			childGuiTxtNameItem.text = gui_collier3[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier3[n] != null:
			childGuiTxtStat1.text = "Puissance : + " + str(gui_collier3[n].nb_puissance)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_collier3[n] != null:
			childGuiTxtStat2.text = "Endurance : + " + str(gui_collier3[n].nb_endurance)

func _on_mouse_entered_heaume1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume1[n] != null:
			childGuiTxtNameItem.text = gui_heaume1[n].txt_name
	nbDecaleTextName = 35
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume1[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume1[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume1[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume1[n].nb_defense)

func _on_mouse_entered_heaume2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume2[n] != null:
			childGuiTxtNameItem.text = gui_heaume2[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume2[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume2[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume2[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume2[n].nb_defense)

func _on_mouse_entered_heaume3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume3[n] != null:
			childGuiTxtNameItem.text = gui_heaume3[n].txt_name
	nbDecaleTextName = 35
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume3[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume3[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume3[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume3[n].nb_defense)

func _on_mouse_entered_heaume4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume4[n] != null:
			childGuiTxtNameItem.text = gui_heaume4[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume4[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume4[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume4[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume4[n].nb_defense)

func _on_mouse_entered_heaume5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume5[n] != null:
			childGuiTxtNameItem.text = gui_heaume5[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume5[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume5[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume5[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume5[n].nb_defense)

func _on_mouse_entered_heaume6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume6[n] != null:
			childGuiTxtNameItem.text = gui_heaume6[n].txt_name
	nbDecaleTextName = 20
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume6[n] != null:
			childGuiTxtStat1.text = "Vie : + " + str(gui_heaume6[n].nb_vie)
	txt_stat_2 = GuiTextUi.instantiate()
	add_child(txt_stat_2)
	var childGuiTxtStat2 = txt_stat_2.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_heaume6[n] != null:
			childGuiTxtStat2.text = "Défense : + " + str(gui_heaume6[n].nb_defense)

func _on_mouse_entered_sword1():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword1[n] != null:
			childGuiTxtNameItem.text = gui_sword1[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword1[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword1[n].nb_attaque)

func _on_mouse_entered_sword2():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword2[n] != null:
			childGuiTxtNameItem.text = gui_sword2[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword2[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword2[n].nb_attaque)

func _on_mouse_entered_sword3():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword3[n] != null:
			childGuiTxtNameItem.text = gui_sword3[n].txt_name
	nbDecaleTextName = 1
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword3[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword3[n].nb_attaque)

func _on_mouse_entered_sword4():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword4[n] != null:
			childGuiTxtNameItem.text = gui_sword4[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword4[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword4[n].nb_attaque)

func _on_mouse_entered_sword5():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword5[n] != null:
			childGuiTxtNameItem.text = gui_sword5[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword5[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword5[n].nb_attaque)

func _on_mouse_entered_sword6():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword6[n] != null:
			childGuiTxtNameItem.text = gui_sword6[n].txt_name
	nbDecaleTextName = 50
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword6[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword6[n].nb_attaque)

func _on_mouse_entered_sword7():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword7[n] != null:
			childGuiTxtNameItem.text = gui_sword7[n].txt_name
	nbDecaleTextName = 30
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword7[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword7[n].nb_attaque)

func _on_mouse_entered_sword8():
	gui_fenetre = GuiFenetre.instantiate()
	add_child(gui_fenetre)
	txt_titre = GuiTextUi.instantiate()
	add_child(txt_titre)
	var childGuiTxtNameItem = txt_titre.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword8[n] != null:
			childGuiTxtNameItem.text = gui_sword8[n].txt_name
	nbDecaleTextName = 45
	txt_stat_1 = GuiTextUi.instantiate()
	add_child(txt_stat_1)
	var childGuiTxtStat1 = txt_stat_1.get_node("labelGuiTextFenetre")
	for n in range(20):
		if gui_sword8[n] != null:
			childGuiTxtStat1.text = "Attaque : + " + str(gui_sword8[n].nb_attaque)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gui_potion_vie.resize(20)
	gui_potion_mana.resize(20)
	gui_potion_elixir.resize(20)
	gui_bague1.resize(20)
	gui_bague2.resize(20)
	gui_bague3.resize(20)
	gui_bottes1.resize(20)
	gui_bottes2.resize(20)
	gui_bottes3.resize(20)
	gui_bottes4.resize(20)
	gui_bottes5.resize(20)
	gui_bottes6.resize(20)
	gui_bouclier1.resize(20)
	gui_bouclier2.resize(20)
	gui_bouclier3.resize(20)
	gui_bouclier4.resize(20)
	gui_bouclier5.resize(20)
	gui_bouclier6.resize(20)
	gui_bouclier7.resize(20)
	gui_casque1.resize(20)
	gui_casque2.resize(20)
	gui_casque3.resize(20)
	gui_casque4.resize(20)
	gui_casque5.resize(20)
	gui_casque6.resize(20)
	gui_collier1.resize(20)
	gui_collier2.resize(20)
	gui_collier3.resize(20)
	gui_heaume1.resize(20)
	gui_heaume2.resize(20)
	gui_heaume3.resize(20)
	gui_heaume4.resize(20)
	gui_heaume5.resize(20)
	gui_heaume6.resize(20)
	gui_sword1.resize(20)
	gui_sword2.resize(20)
	gui_sword3.resize(20)
	gui_sword4.resize(20)
	gui_sword5.resize(20)
	gui_sword6.resize(20)
	gui_sword7.resize(20)
	gui_sword8.resize(20)
	isSlot_libre.resize(20)
	childSlot.resize(20)
	txtItemType.resize(20)
	DataSave.items_posession.potionVie = 3
	DataSave.items_posession.potionMana = 1
	DataSave.items_posession.potionElixir = 3
	DataSave.items_posession.bague3 = 1
	DataSave.items_posession.bottes6 = 1
	DataSave.items_posession.bouclier7 = 1
	DataSave.items_posession.casque6 = 1
	DataSave.items_posession.collier3 = 2
	DataSave.items_posession.heaume6 = 2
	DataSave.items_posession.sword8 = 3
	DataSave.items_posession.bague1 = 3
	
	for n in range(20):
		isSlot_libre[n] = true
		txtItemType[n] = "vide"
	
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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var sizeScreen = get_viewport().get_visible_rect().size
	var mouse_pos = get_viewport().get_mouse_position()
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
	
	
	for n in range(20):
		if isSlot_libre[n] == true:
			if DataSave.items_posession.potionVie != nbCompteurPotionVie and txtItemType[n] == "vide":
				gui_potion_vie[n] = GuiPotionVie.instantiate()
				add_child(gui_potion_vie[n])
				var child_potion_vie = gui_potion_vie[n].get_node("texturePotionVie")
				child_potion_vie.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_vie"))
				child_potion_vie.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_vie"))
				gui_potion_vie[n].scale = Vector2(0.7, 0.8)
				gui_potion_vie[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_vie[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionVie += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_vie"
			
			if DataSave.items_posession.potionMana != nbCompteurPotionMana and txtItemType[n] == "vide":
				gui_potion_mana[n] = GuiPotionMana.instantiate()
				add_child(gui_potion_mana[n])
				var child_potion_mana = gui_potion_mana[n].get_node("texturePotionMana")
				child_potion_mana.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_mana"))
				child_potion_mana.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_mana"))
				gui_potion_mana[n].scale = Vector2(0.7, 0.8)
				gui_potion_mana[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_mana[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionMana += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_mana"
			
			if DataSave.items_posession.potionElixir != nbCompteurPotionElixir and txtItemType[n] == "vide":
				gui_potion_elixir[n] = GuiPotionElixir.instantiate()
				add_child(gui_potion_elixir[n])
				var child_potion_elixir = gui_potion_elixir[n].get_node("texturePotionElixir")
				child_potion_elixir.connect("mouse_entered", Callable(self, "_on_mouse_entered_potion_elixir"))
				child_potion_elixir.connect("mouse_exited", Callable(self, "_on_mouse_exited_potion_elixir"))
				gui_potion_elixir[n].scale = Vector2(0.7, 0.8)
				gui_potion_elixir[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_potion_elixir[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurPotionElixir += 1
				isSlot_libre[n] = false
				txtItemType[n] = "potion_elixir"
			
			if DataSave.items_posession.bague1 != nbCompteurBague1 and txtItemType[n] == "vide":
				gui_bague1[n] = GuiBague1.instantiate()
				add_child(gui_bague1[n])
				var child_bague1 = gui_bague1[n].get_node("textureBague1")
				child_bague1.connect("mouse_entered", Callable(self, "_on_mouse_entered_bague1"))
				child_bague1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague1"))
				gui_bague1[n].scale = Vector2(0.7, 0.8)
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
				child_bague2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague2"))
				gui_bague2[n].scale = Vector2(0.7, 0.8)
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
				child_bague3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bague3"))
				gui_bague3[n].scale = Vector2(0.7, 0.8)
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
				child_bottes1.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes1"))
				gui_bottes1[n].scale = Vector2(0.7, 0.8)
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
				child_bottes2.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes2"))
				gui_bottes2[n].scale = Vector2(0.7, 0.8)
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
				child_bottes3.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes3"))
				gui_bottes3[n].scale = Vector2(0.7, 0.8)
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
				child_bottes4.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes4"))
				gui_bottes4[n].scale = Vector2(0.7, 0.8)
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
				child_bottes5.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes5"))
				gui_bottes5[n].scale = Vector2(0.7, 0.8)
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
				child_bottes6.connect("mouse_exited", Callable(self, "_on_mouse_exited_bottes6"))
				gui_bottes6[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier1[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier2[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier3[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier4[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier5[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier6[n].scale = Vector2(0.7, 0.8)
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
				gui_bouclier7[n].scale = Vector2(0.7, 0.8)
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
				gui_casque1[n].scale = Vector2(0.7, 0.8)
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
				gui_casque2[n].scale = Vector2(0.7, 0.8)
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
				gui_casque3[n].scale = Vector2(0.7, 0.8)
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
				gui_casque4[n].scale = Vector2(0.7, 0.8)
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
				gui_casque5[n].scale = Vector2(0.7, 0.8)
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
				gui_casque6[n].scale = Vector2(0.7, 0.8)
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
				gui_collier1[n].scale = Vector2(0.7, 0.8)
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
				gui_collier2[n].scale = Vector2(0.7, 0.8)
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
				gui_collier3[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume1[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume2[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume3[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume4[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume5[n].scale = Vector2(0.7, 0.8)
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
				gui_heaume6[n].scale = Vector2(0.7, 0.8)
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
				gui_sword1[n].scale = Vector2(0.7, 0.8)
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
				gui_sword2[n].scale = Vector2(0.7, 0.8)
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
				gui_sword3[n].scale = Vector2(0.7, 0.8)
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
				gui_sword4[n].scale = Vector2(0.7, 0.8)
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
				gui_sword5[n].scale = Vector2(0.7, 0.8)
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
				gui_sword6[n].scale = Vector2(0.7, 0.8)
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
				gui_sword7[n].scale = Vector2(0.7, 0.8)
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
				gui_sword8[n].scale = Vector2(0.7, 0.8)
				gui_sword8[n].offset.x = childSlot[n].position.x + nodeParent.offset.x + 2
				gui_sword8[n].offset.y = childSlot[n].position.y + nodeParent.offset.y + 1
				nbCompteurSword8 += 1
				isSlot_libre[n] = false
				txtItemType[n] = "sword_8"
	


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		isPanelClose = true
		for n in range(20):
			if gui_potion_vie[n] != null:
				gui_potion_vie[n].queue_free()
			if gui_potion_mana[n] != null:
				gui_potion_mana[n].queue_free()
			if gui_potion_elixir[n] != null:
				gui_potion_elixir[n].queue_free()
			if gui_bague1[n] != null:
				gui_bague1[n].queue_free()
			if gui_bague2[n] != null:
				gui_bague2[n].queue_free()
			if gui_bague3[n] != null:
				gui_bague3[n].queue_free()
			if gui_bottes1[n] != null:
				gui_bottes1[n].queue_free()
			if gui_bottes2[n] != null:
				gui_bottes2[n].queue_free()
			if gui_bottes3[n] != null:
				gui_bottes3[n].queue_free()
			if gui_bottes4[n] != null:
				gui_bottes4[n].queue_free()
			if gui_bottes5[n] != null:
				gui_bottes5[n].queue_free()
			if gui_bottes6[n] != null:
				gui_bottes6[n].queue_free()
			if gui_bouclier1[n] != null:
				gui_bouclier1[n].queue_free()
			if gui_bouclier2[n] != null:
				gui_bouclier2[n].queue_free()
			if gui_bouclier3[n] != null:
				gui_bouclier3[n].queue_free()
			if gui_bouclier4[n] != null:
				gui_bouclier4[n].queue_free()
			if gui_bouclier5[n] != null:
				gui_bouclier5[n].queue_free()
			if gui_bouclier6[n] != null:
				gui_bouclier6[n].queue_free()
			if gui_bouclier7[n] != null:
				gui_bouclier7[n].queue_free()
			if gui_casque1[n] != null:
				gui_casque1[n].queue_free()
			if gui_casque2[n] != null:
				gui_casque2[n].queue_free()
			if gui_casque3[n] != null:
				gui_casque3[n].queue_free()
			if gui_casque4[n] != null:
				gui_casque4[n].queue_free()
			if gui_casque5[n] != null:
				gui_casque5[n].queue_free()
			if gui_casque6[n] != null:
				gui_casque6[n].queue_free()
			if gui_collier1[n] != null:
				gui_collier1[n].queue_free()
			if gui_collier2[n] != null:
				gui_collier2[n].queue_free()
			if gui_collier3[n] != null:
				gui_collier3[n].queue_free()
			if gui_heaume1[n] != null:
				gui_heaume1[n].queue_free()
			if gui_heaume2[n] != null:
				gui_heaume2[n].queue_free()
			if gui_heaume3[n] != null:
				gui_heaume3[n].queue_free()
			if gui_heaume4[n] != null:
				gui_heaume4[n].queue_free()
			if gui_heaume5[n] != null:
				gui_heaume5[n].queue_free()
			if gui_heaume6[n] != null:
				gui_heaume6[n].queue_free()
			if gui_sword1[n] != null:
				gui_sword1[n].queue_free()
			if gui_sword2[n] != null:
				gui_sword2[n].queue_free()
			if gui_sword3[n] != null:
				gui_sword3[n].queue_free()
			if gui_sword4[n] != null:
				gui_sword4[n].queue_free()
			if gui_sword5[n] != null:
				gui_sword5[n].queue_free()
			if gui_sword6[n] != null:
				gui_sword6[n].queue_free()
			if gui_sword7[n] != null:
				gui_sword7[n].queue_free()
			if gui_sword8[n] != null:
				gui_sword8[n].queue_free()

func _input(event): #l'équivalent de keypressed dans love2D
	var mouse_pos = get_viewport().get_mouse_position()
	var slot_posX = []
	var slot_posY = [] 
	
	slot_posX.resize(20)
	slot_posY.resize(20)
	
	for n in range(20):
		slot_posX[n] = childSlot[n].position.x + nodeParent.offset.x
		slot_posY[n] = childSlot[n].position.y + nodeParent.offset.y
	
	if Input.is_action_just_pressed("button_left"):
		#print("BB : ", slot_posY[7]) // surement ajouter une autre variable qui dit quel item a dans telle slot dans lupdate 
		for n in range(20):
			#print("NNNNNNN : ", n)
			if mouse_pos.x >= slot_posX[n] and mouse_pos.x <= slot_posX[n] + childSlot[n].size.x-1 and mouse_pos.y >= slot_posY[n] and mouse_pos.y <= slot_posY[n] + childSlot[n].size.y-1:
				#print("Je clic sur la potion", n)
				if txtItemType[n] == "potion_vie":
					if gui_potion_vie[n] != null:
						if n == 0:
							#a tester avec des print
							gui_potion_vie[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_potion_vie[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_potion_vie[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_potion_vie[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_potion_vie[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_potion_vie[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_potion_vie[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_potion_vie[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_potion_vie[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_potion_vie[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_potion_vie[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_potion_vie[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_potion_vie[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_potion_vie[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_potion_vie[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_potion_vie[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_potion_vie[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_potion_vie[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_potion_vie[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_potion_vie[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[19] = true
				#Potion de mana
				if txtItemType[n] == "potion_mana":
					if gui_potion_mana[n] != null:
						if n == 0:
							gui_potion_mana[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_potion_mana[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_potion_mana[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_potion_mana[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_potion_mana[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_potion_mana[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_potion_mana[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_potion_mana[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_potion_mana[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_potion_mana[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_potion_mana[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_potion_mana[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_potion_mana[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_potion_mana[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_potion_mana[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_potion_mana[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_potion_mana[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_potion_mana[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_potion_mana[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_potion_mana[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[19] = true
						
				#Potion d'exilir
				if txtItemType[n] == "potion_elixir":
					if gui_potion_elixir[n] != null:
						if n == 0:
							gui_potion_elixir[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_potion_elixir[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_potion_elixir[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_potion_elixir[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_potion_elixir[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_potion_elixir[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_potion_elixir[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_potion_elixir[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_potion_elixir[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_potion_elixir[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_potion_elixir[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_potion_elixir[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_potion_elixir[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_potion_elixir[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_potion_elixir[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_potion_elixir[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_potion_elixir[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_potion_elixir[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_potion_elixir[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_potion_elixir[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[19] = true
						
				#Bague 1
				if txtItemType[n] == "bague_1":
					if gui_bague1[n] != null:
						if n == 0:
							gui_bague1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bague1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bague1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bague1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bague1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bague1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bague1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bague1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bague1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bague1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bague1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bague1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bague1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bague1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bague1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bague1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bague1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bague1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bague1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bague1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bague1 -= 1
							nbCompteurBague1 -= 1
							isSlot_libre[19] = true
				
				#Bague 2
				if txtItemType[n] == "bague_2":
					if gui_bague2[n] != null:
						if n == 0:
							gui_bague2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bague2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bague2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bague2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bague2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bague2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bague2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bague2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bague2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bague2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bague2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bague2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bague2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bague2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bague2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bague2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bague2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bague2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bague2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bague2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bague2 -= 1
							nbCompteurBague2 -= 1
							isSlot_libre[19] = true
				
				#Bague 3
				if txtItemType[n] == "bague_3":
					if gui_bague3[n] != null:
						if n == 0:
							gui_bague3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bague3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bague3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bague3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bague3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bague3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bague3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bague3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bague3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bague3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bague3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bague3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bague3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bague3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bague3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bague3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bague3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bague3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bague3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bague3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bague3 -= 1
							nbCompteurBague3 -= 1
							isSlot_libre[19] = true
							
				#faire les bottes 
				#Bottes 1
				if txtItemType[n] == "bottes_1":
					if gui_bottes1[n] != null:
						if n == 0:
							gui_bottes1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes1 -= 1
							nbCompteurBottes1 -= 1
							isSlot_libre[19] = true
				
				#Bottes 2
				if txtItemType[n] == "bottes_2":
					if gui_bottes2[n] != null:
						if n == 0:
							gui_bottes2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes2 -= 1
							nbCompteurBottes2 -= 1
							isSlot_libre[19] = true
				
				#Bottes 3
				if txtItemType[n] == "bottes_3":
					if gui_bottes3[n] != null:
						if n == 0:
							gui_bottes3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes3 -= 1
							nbCompteurBottes3 -= 1
							isSlot_libre[19] = true
				
				#Bottes 4
				if txtItemType[n] == "bottes_4":
					if gui_bottes4[n] != null:
						if n == 0:
							gui_bottes4[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes4[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes4[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes4[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes4[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes4[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes4[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes4[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes4[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes4[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes4[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes4[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes4[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes4[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes4[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes4[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes4[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes4[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes4[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes4[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes4 -= 1
							nbCompteurBottes4 -= 1
							isSlot_libre[19] = true
				
				#Bottes 5
				if txtItemType[n] == "bottes_5":
					if gui_bottes5[n] != null:
						if n == 0:
							gui_bottes5[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes5[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes5[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes5[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes5[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes5[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes5[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes5[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes5[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes5[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes5[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes5[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes5[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes5[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes5[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes5[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes5[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes5[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes5[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes5[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes5 -= 1
							nbCompteurBottes5 -= 1
							isSlot_libre[19] = true
				
				#Bottes 6
				if txtItemType[n] == "bottes_6":
					if gui_bottes6[n] != null:
						if n == 0:
							gui_bottes6[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bottes6[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bottes6[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bottes6[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bottes6[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bottes6[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bottes6[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bottes6[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bottes6[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bottes6[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bottes6[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bottes6[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bottes6[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bottes6[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bottes6[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bottes6[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bottes6[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bottes6[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bottes6[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bottes6[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bottes6 -= 1
							nbCompteurBottes6 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 1
				if txtItemType[n] == "bouclier_1":
					if gui_bouclier1[n] != null:
						if n == 0:
							gui_bouclier1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1-= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier1 -= 1
							nbCompteurBouclier1 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 2
				if txtItemType[n] == "bouclier_2":
					if gui_bouclier2[n] != null:
						if n == 0:
							gui_bouclier2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier2 -= 1
							nbCompteurBouclier2 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 3
				if txtItemType[n] == "bouclier_3":
					if gui_bouclier3[n] != null:
						if n == 0:
							gui_bouclier3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier3 -= 1
							nbCompteurBouclier3 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 4
				if txtItemType[n] == "bouclier_4":
					if gui_bouclier4[n] != null:
						if n == 0:
							gui_bouclier4[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier4[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier4[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier4[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier4[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier4[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier4[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier4[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier4[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier4[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier4[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier4[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier4[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier4[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier4[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier4[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier4[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier4[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier4[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier4[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier4 -= 1
							nbCompteurBouclier4 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 5
				if txtItemType[n] == "bouclier_5":
					if gui_bouclier5[n] != null:
						if n == 0:
							gui_bouclier5[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier5[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier5[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier5[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier5[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier5[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier5[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier5[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier5[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier5[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier5[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier5[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier5[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier5[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier5[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier5[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier5[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier5[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier5[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier5[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier5 -= 1
							nbCompteurBouclier5 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 6
				if txtItemType[n] == "bouclier_6":
					if gui_bouclier6[n] != null:
						if n == 0:
							gui_bouclier6[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier6[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier6[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier6[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier6[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier6[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier6[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier6[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier6[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier6[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier6[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier6[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier6[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier6[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier6[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier6[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier6[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier6[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier6[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier6[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier6 -= 1
							nbCompteurBouclier6 -= 1
							isSlot_libre[19] = true
				
				#Bouclier 7
				if txtItemType[n] == "bouclier_7":
					if gui_bouclier7[n] != null:
						if n == 0:
							gui_bouclier7[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_bouclier7[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_bouclier7[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_bouclier7[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_bouclier7[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_bouclier7[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_bouclier7[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_bouclier7[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_bouclier7[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_bouclier7[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_bouclier7[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_bouclier7[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_bouclier7[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_bouclier7[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_bouclier7[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_bouclier7[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_bouclier7[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_bouclier7[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_bouclier7[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_bouclier7[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.bouclier7 -= 1
							nbCompteurBouclier7 -= 1
							isSlot_libre[19] = true
				
				#Casque1
				if txtItemType[n] == "casque_1":
					if gui_casque1[n] != null:
						if n == 0:
							gui_casque1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque1 -= 1
							nbCompteurCasque1 -= 1
							isSlot_libre[19] = true
				
				#Casque2
				if txtItemType[n] == "casque_2":
					if gui_casque2[n] != null:
						if n == 0:
							gui_casque2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque2 -= 1
							nbCompteurCasque2 -= 1
							isSlot_libre[19] = true
				
				#Casque3
				if txtItemType[n] == "casque_3":
					if gui_casque3[n] != null:
						if n == 0:
							gui_casque3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque3 -= 1
							nbCompteurCasque3 -= 1
							isSlot_libre[19] = true
				
				#Casque4
				if txtItemType[n] == "casque_4":
					if gui_casque4[n] != null:
						if n == 0:
							gui_casque4[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque4[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque4[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque4[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque4[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque4[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque4[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque4[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque4[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque4[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque4[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque4[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque4[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque4[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque4[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque4[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque4[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque4[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque4[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque4[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque4 -= 1
							nbCompteurCasque4 -= 1
							isSlot_libre[19] = true
				
				#Casque5
				if txtItemType[n] == "casque_5":
					if gui_casque5[n] != null:
						if n == 0:
							gui_casque5[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque5[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque5[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque5[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque5[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque5[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque5[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque5[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque5[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque5[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque5[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque5[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque5[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque5[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque5[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque5[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque5[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque5[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque5[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque5[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque5 -= 1
							nbCompteurCasque5 -= 1
							isSlot_libre[19] = true
				
				#Casque6
				if txtItemType[n] == "casque_6":
					if gui_casque6[n] != null:
						if n == 0:
							gui_casque6[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_casque6[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_casque6[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_casque6[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_casque6[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_casque6[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_casque6[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_casque6[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_casque6[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_casque6[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_casque6[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_casque6[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_casque6[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_casque6[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_casque6[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_casque6[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_casque6[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_casque6[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_casque6[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_casque6[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.casque6 -= 1
							nbCompteurCasque6 -= 1
							isSlot_libre[19] = true
				
				#Collier1
				if txtItemType[n] == "collier_1":
					if gui_collier1[n] != null:
						if n == 0:
							gui_collier1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_collier1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_collier1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_collier1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_collier1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_collier1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_collier1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_collier1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_collier1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_collier1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_collier1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_collier1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_collier1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_collier1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_collier1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_collier1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_collier1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_collier1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_collier1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_collier1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.collier1 -= 1
							nbCompteurCollier1 -= 1
							isSlot_libre[19] = true
				
				#Collier2
				if txtItemType[n] == "collier_2":
					if gui_collier2[n] != null:
						if n == 0:
							gui_collier2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_collier2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_collier2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_collier2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_collier2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_collier2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_collier2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_collier2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_collier2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_collier2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_collier2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_collier2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_collier2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_collier2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_collier2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_collier2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_collier2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_collier2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_collier2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_collier2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.collier2 -= 1
							nbCompteurCollier2 -= 1
							isSlot_libre[19] = true
				
				#Collier3
				if txtItemType[n] == "collier_3":
					if gui_collier3[n] != null:
						if n == 0:
							gui_collier3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_collier3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_collier3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_collier3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_collier3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_collier3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_collier3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_collier3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_collier3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_collier3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_collier3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_collier3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_collier3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_collier3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_collier3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_collier3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_collier3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_collier3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_collier3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_collier3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.collier3 -= 1
							nbCompteurCollier3 -= 1
							isSlot_libre[19] = true
				
				#Heaume1
				if txtItemType[n] == "heaume_1":
					if gui_heaume1[n] != null:
						if n == 0:
							gui_heaume1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume1 -= 1
							nbCompteurHeaume1 -= 1
							isSlot_libre[19] = true
				
				#Heaume2
				if txtItemType[n] == "heaume_2":
					if gui_heaume2[n] != null:
						if n == 0:
							gui_heaume2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume2 -= 1
							nbCompteurHeaume2 -= 1
							isSlot_libre[19] = true
				
				#Heaume3
				if txtItemType[n] == "heaume_3":
					if gui_heaume3[n] != null:
						if n == 0:
							gui_heaume3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume3 -= 1
							nbCompteurHeaume3 -= 1
							isSlot_libre[19] = true
				
				#Heaume4
				if txtItemType[n] == "heaume_4":
					if gui_heaume4[n] != null:
						if n == 0:
							gui_heaume4[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume4[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume4[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume4[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume4[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume4[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume4[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume4[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume4[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume4[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume4[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume4[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume4[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume4[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume4[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume4[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume4[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume4[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume4[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume4[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume4 -= 1
							nbCompteurHeaume4 -= 1
							isSlot_libre[19] = true
				
				#Heaume5
				if txtItemType[n] == "heaume_5":
					if gui_heaume5[n] != null:
						if n == 0:
							gui_heaume5[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume5[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume5[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume5[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume5[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume5[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume5[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume5[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume5[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume5[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume5[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume5[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume5[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume5[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume5[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume5[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume5[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume5[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume5[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume5[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume5 -= 1
							nbCompteurHeaume5 -= 1
							isSlot_libre[19] = true
				
				#Heaume6
				if txtItemType[n] == "heaume_6":
					if gui_heaume6[n] != null:
						if n == 0:
							gui_heaume6[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_heaume6[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_heaume6[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_heaume6[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_heaume6[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_heaume6[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_heaume6[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_heaume6[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_heaume6[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_heaume6[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_heaume6[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_heaume6[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_heaume6[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_heaume6[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_heaume6[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_heaume6[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_heaume6[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_heaume6[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_heaume6[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_heaume6[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.heaume6 -= 1
							nbCompteurHeaume6 -= 1
							isSlot_libre[19] = true
				
				#Sword1
				if txtItemType[n] == "sword_1":
					if gui_sword1[n] != null:
						if n == 0:
							gui_sword1[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword1[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword1[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword1[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword1[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword1[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword1[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword1[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword1[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword1[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword1[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword1[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword1[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword1[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword1[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword1[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword1[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword1[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword1[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword1[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword1 -= 1
							nbCompteurSword1 -= 1
							isSlot_libre[19] = true
				
				#Sword2
				if txtItemType[n] == "sword_2":
					if gui_sword2[n] != null:
						if n == 0:
							gui_sword2[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword2[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword2[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword2[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword2[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword2[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword2[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword2[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword2[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword2[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword2[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword2[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword2[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword2[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword2[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword2[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword2[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword2[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword2[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword2[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword2 -= 1
							nbCompteurSword2 -= 1
							isSlot_libre[19] = true
				
				#Sword3
				if txtItemType[n] == "sword_3":
					if gui_sword3[n] != null:
						if n == 0:
							gui_sword3[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword3[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword3[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword3[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword3[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword3[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword3[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword3[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword3[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword3[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword3[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword3[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword3[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword3[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword3[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword3[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword3[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword3[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword3[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword3[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword3 -= 1
							nbCompteurSword3 -= 1
							isSlot_libre[19] = true
				
				#Sword4
				if txtItemType[n] == "sword_4":
					if gui_sword4[n] != null:
						if n == 0:
							gui_sword4[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword4[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword4[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword4[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword4[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword4[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword4[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword4[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword4[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword4[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword4[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword4[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword4[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword4[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword4[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword4[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword4[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword4[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword4[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword4[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword4 -= 1
							nbCompteurSword4 -= 1
							isSlot_libre[19] = true
				
				#Sword5
				if txtItemType[n] == "sword_5":
					if gui_sword5[n] != null:
						if n == 0:
							gui_sword5[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword5[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword5[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword5[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword5[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword5[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword5[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword5[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword5[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword5[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword5[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword5[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword5[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword5[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword5[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword5[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword5[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword5[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword5[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword5[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword5 -= 1
							nbCompteurSword5 -= 1
							isSlot_libre[19] = true
				
				#Sword6
				if txtItemType[n] == "sword_6":
					if gui_sword6[n] != null:
						if n == 0:
							gui_sword6[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword6[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword6[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword6[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword6[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword6[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword6[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword6[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword6[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword6[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword6[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword6[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword6[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword6[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword6[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword6[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword6[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword6[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword6[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword6[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword6 -= 1
							nbCompteurSword6 -= 1
							isSlot_libre[19] = true
				
				#Sword7
				if txtItemType[n] == "sword_7":
					if gui_sword7[n] != null:
						if n == 0:
							gui_sword7[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword7[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword7[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword7[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword7[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword7[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword7[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword7[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword7[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword7[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword7[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword7[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword7[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword7[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword7[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword7[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword7[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword7[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword7[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword7[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword7 -= 1
							nbCompteurSword7 -= 1
							isSlot_libre[19] = true
				
				#Sword8
				if txtItemType[n] == "sword_8":
					if gui_sword8[n] != null:
						if n == 0:
							gui_sword8[0].queue_free()
							txtItemType[0] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[0] = true
						elif n == 1:
							gui_sword8[1].queue_free()
							txtItemType[1] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[1] = true
						elif n == 2:
							gui_sword8[2].queue_free()
							txtItemType[2] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[2] = true
						elif n == 3:
							gui_sword8[3].queue_free()
							txtItemType[3] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[3] = true
						elif n == 4:
							gui_sword8[4].queue_free()
							txtItemType[4] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[4] = true
						elif n == 5:
							gui_sword8[5].queue_free()
							txtItemType[5] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[5] = true
						elif n == 6:
							gui_sword8[6].queue_free()
							txtItemType[6] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[6] = true
						elif n == 7:
							gui_sword8[7].queue_free()
							txtItemType[7] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[7] = true
						elif n == 8:
							gui_sword8[8].queue_free()
							txtItemType[8] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[8] = true
						elif n == 9:
							gui_sword8[9].queue_free()
							txtItemType[9] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[9] = true
						elif n == 10:
							gui_sword8[10].queue_free()
							txtItemType[10] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[10] = true
						elif n == 11:
							gui_sword8[11].queue_free()
							txtItemType[11] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[11] = true
						elif n == 12:
							gui_sword8[12].queue_free()
							txtItemType[12] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[12] = true
						elif n == 13:
							gui_sword8[13].queue_free()
							txtItemType[13] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[13] = true
						elif n == 14:
							gui_sword8[14].queue_free()
							txtItemType[14] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[14] = true
						elif n == 15:
							gui_sword8[15].queue_free()
							txtItemType[15] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[15] = true
						elif n == 16:
							gui_sword8[16].queue_free()
							txtItemType[16] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[16] = true
						elif n == 17:
							gui_sword8[17].queue_free()
							txtItemType[17] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[17] = true
						elif n == 18:
							gui_sword8[18].queue_free()
							txtItemType[18] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[18] = true
						elif n == 19:
							gui_sword8[19].queue_free()
							txtItemType[19] = "vide"
							DataSave.items_posession.sword8 -= 1
							nbCompteurSword8 -= 1
							isSlot_libre[19] = true
