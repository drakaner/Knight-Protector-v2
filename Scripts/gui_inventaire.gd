extends CanvasLayer

@onready var nodeSceneGameplay = get_parent()
@onready var nodeHudHero = get_node("../gui_hudHero")
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
var GuiButtonOn = preload("res://Objets/gui_button_on.tscn")
var GuiButtonOff = preload("res://Objets/gui_button_off.tscn")
var GuiPopUp = preload("res://Objets/gui_pop_up.tscn")


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
var gui_popUp
var gui_buttonOnEquiper
var gui_buttonOffEquiper
var gui_buttonOnStocker
var gui_buttonOffStocker
var gui_buttonOnJeter
var gui_buttonOffJeter
var gui_buttonOnUse
var gui_buttonOffUse
var txt_popup_1
var txt_popup_2
var txt_popup_3
var txt_gold

var isSlot_libre = []

var txtItemSelect = []

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

var txtTypeClic = ""

var isPanelClose = true

var isPopUpOpen = false
var isPopUpOpenPotionVie = false
var isPopUpOpenPotionMana = false
var isPopUpOpenPotionElixir = false
var isPopUpOpenBague1 = false
var isPopUpOpenBague2 = false
var isPopUpOpenBague3 = false
var isPopUpOpenBottes1 = false
var isPopUpOpenBottes2 = false
var isPopUpOpenBottes3 = false
var isPopUpOpenBottes4 = false
var isPopUpOpenBottes5 = false
var isPopUpOpenBottes6 = false
var isPopUpOpenBouclier1 = false
var isPopUpOpenBouclier2 = false
var isPopUpOpenBouclier3 = false
var isPopUpOpenBouclier4 = false
var isPopUpOpenBouclier5 = false
var isPopUpOpenBouclier6 = false
var isPopUpOpenBouclier7 = false
var isPopUpOpenCasque1 = false
var isPopUpOpenCasque2 = false
var isPopUpOpenCasque3 = false
var isPopUpOpenCasque4 = false
var isPopUpOpenCasque5 = false
var isPopUpOpenCasque6 = false
var isPopUpOpenCollier1 = false
var isPopUpOpenCollier2 = false
var isPopUpOpenCollier3 = false
var isPopUpOpenHeaume1 = false
var isPopUpOpenHeaume2 = false
var isPopUpOpenHeaume3 = false
var isPopUpOpenHeaume4 = false
var isPopUpOpenHeaume5 = false
var isPopUpOpenHeaume6 = false
var isPopUpOpenSword1 = false
var isPopUpOpenSword2 = false
var isPopUpOpenSword3 = false
var isPopUpOpenSword4 = false
var isPopUpOpenSword5 = false
var isPopUpOpenSword6 = false
var isPopUpOpenSword7 = false
var isPopUpOpenSword8 = false

var nbDecaleTextName = 0

func _on_mouse_exited_potion_vie():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potion_mana():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_potion_elixir():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague1():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague2():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bague3():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes1():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes2():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes3():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes4():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes5():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bottes6():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_bouclier():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_casque():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_collier():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_heaume():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	if txt_stat_2 != null:
		txt_stat_2.queue_free()
	nbDecaleTextName = 0

func _on_mouse_exited_sword():
	if gui_fenetre != null:
		gui_fenetre.queue_free()
	if txt_titre != null:
		txt_titre.queue_free()
	if txt_stat_1 != null:
		txt_stat_1.queue_free()
	nbDecaleTextName = 0

func _on_mouse_entered_potion_vie():
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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
	if isPopUpOpen == false:
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

func _close_inventaire():
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

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#DataSave.hero.vie = 90
	#DataSave.hero.mana = -1
	print("test de self de scene a ici : ", nodeHudHero)
	nodeSceneGameplay.connect("guiHeroOpen", Callable(self, "_Sgui_open"))
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
	txtItemSelect.resize(20)
	DataSave.items_posession.potionVie = 3
	DataSave.items_posession.potionMana = 1
	DataSave.items_posession.potionElixir = 3
	DataSave.items_posession.bague1 = 1
	DataSave.items_posession.bottes6 = 1
	DataSave.items_posession.bouclier7 = 1
	DataSave.items_posession.casque6 = 1
	DataSave.items_posession.collier3 = 2
	DataSave.items_posession.heaume6 = 2
	DataSave.items_posession.sword7 = 3
	DataSave.items_posession.sword8 = 3
	
	txt_gold = GuiTextUi.instantiate()
	add_child(txt_gold)
	var childTxtGold = txt_gold.get_node("labelGuiTextFenetre")
	childTxtGold.position.x = 360
	childTxtGold.position.y = 430
	childTxtGold.text = str(DataSave.hero.gold)
	childTxtGold.add_theme_font_size_override("font_size", 29)
	childTxtGold.add_theme_color_override("font_color", Color(1.0, 0.494, 0.0, 1.0) )
	
	for n in range(20):
		isSlot_libre[n] = true
		txtItemType[n] = "vide"
		txtItemSelect[n] = "none"
	
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
	#DataSave.hero.vie = 50
	#print("is pop up est : ", txtItemSelect[0])
	
	
	for i in range(20):
		
		if txtItemSelect[i] == "potion_vie": # faut que je verifie cette condition en large
			#print("item select est potion de vie : ", txtItemSelect)
			if DataSave.hero.vie != DataSave.hero.vieMax:
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnUse = GuiButtonOn.instantiate()
					add_child(gui_buttonOnUse)
					gui_buttonOnUse.scale = Vector2(0.5, 0.5)
					gui_buttonOnUse.offset.x = mouse_pos.x + 20
					gui_buttonOnUse.offset.y = mouse_pos.y + 30
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_1 = GuiTextUi.instantiate()
					add_child(txt_popup_1)
					
					var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
					childTxtPop1.text = "Utiliser"
					childTxtPop1.position.x = mouse_pos.x + 24
					childTxtPop1.position.y = mouse_pos.y + 35
					childTxtPop1.add_theme_font_size_override("font_size", 29)
					childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionVie = true
					print("J'ouvre le pop up")
			else:
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionVie = true 
				#print("Vie déja plein j'ouvre pas le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == true and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if gui_buttonOnUse != null:
					if mouse_pos.x >= gui_buttonOnUse.offset.x and mouse_pos.x <= gui_buttonOnUse.offset.x + 90 and mouse_pos.y >= gui_buttonOnUse.offset.y and mouse_pos.y <= gui_buttonOnUse.offset.y + 35:
						if Input.is_action_just_pressed("button_left"):
							print("on clique sur le button use ")
							DataSave.hero.vie = DataSave.hero.vieMax
							gui_potion_vie[i].queue_free()
							txtItemType[i] = "vide"
							DataSave.items_posession.potionVie -= 1
							nbCompteurPotionVie -= 1
							isSlot_libre[i] = true
							gui_popUp.queue_free()
							gui_buttonOnUse.queue_free()
							gui_buttonOnStocker.queue_free()
							gui_buttonOnJeter.queue_free()
							txt_popup_1.queue_free()
							txt_popup_2.queue_free()
							txt_popup_3.queue_free()
							isPopUpOpen = false
							isPopUpOpenPotionVie = false
							txtItemSelect[i] = "none"
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_potion_vie[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionVie -= 1
						DataSave.items_stocker.potionVie += 1
						nbCompteurPotionVie -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionVie = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_potion_vie[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionVie -= 1
						nbCompteurPotionVie -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionVie = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
	
		if txtItemSelect[i] == "potion_mana":
			#print("item select est potion de mana : ", txtItemSelect)
			if DataSave.hero.mana != DataSave.hero.manaMax:
				
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnUse = GuiButtonOn.instantiate()
					add_child(gui_buttonOnUse)
					gui_buttonOnUse.scale = Vector2(0.5, 0.5)
					gui_buttonOnUse.offset.x = mouse_pos.x + 20
					gui_buttonOnUse.offset.y = mouse_pos.y + 30
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_1 = GuiTextUi.instantiate()
					add_child(txt_popup_1)
					
					var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
					childTxtPop1.text = "Utiliser"
					childTxtPop1.position.x = mouse_pos.x + 24
					childTxtPop1.position.y = mouse_pos.y + 35
					childTxtPop1.add_theme_font_size_override("font_size", 29)
					childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionMana = true
					print("J'ouvre le pop up")
			else:
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionMana = true
					print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == true and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if gui_buttonOnUse != null:
					if mouse_pos.x >= gui_buttonOnUse.offset.x and mouse_pos.x <= gui_buttonOnUse.offset.x + 90 and mouse_pos.y >= gui_buttonOnUse.offset.y and mouse_pos.y <= gui_buttonOnUse.offset.y + 35:
						if Input.is_action_just_pressed("button_left"):
							print("on clique sur le button use ")
							DataSave.hero.mana = DataSave.hero.manaMax
							gui_potion_mana[i].queue_free()
							txtItemType[i] = "vide"
							DataSave.items_posession.potionMana -= 1
							nbCompteurPotionMana -= 1
							isSlot_libre[i] = true
							gui_popUp.queue_free()
							gui_buttonOnUse.queue_free()
							gui_buttonOnStocker.queue_free()
							gui_buttonOnJeter.queue_free()
							txt_popup_1.queue_free()
							txt_popup_2.queue_free()
							txt_popup_3.queue_free()
							isPopUpOpen = false
							isPopUpOpenPotionMana = false
							txtItemSelect[i] = "none"
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_potion_mana[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionMana -= 1
						DataSave.items_stocker.potionMana += 1
						nbCompteurPotionMana -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionMana = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_potion_mana[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionMana -= 1
						nbCompteurPotionMana -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionMana = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
	
		if txtItemSelect[i] == "potion_elixir":
			#print("item select est potion de elixir : ", txtItemSelect)
			if DataSave.hero.vie != DataSave.hero.vieMax or DataSave.hero.mana != DataSave.hero.manaMax:
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnUse = GuiButtonOn.instantiate()
					add_child(gui_buttonOnUse)
					gui_buttonOnUse.scale = Vector2(0.5, 0.5)
					gui_buttonOnUse.offset.x = mouse_pos.x + 20
					gui_buttonOnUse.offset.y = mouse_pos.y + 30
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_1 = GuiTextUi.instantiate()
					add_child(txt_popup_1)
					
					var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
					childTxtPop1.text = "Utiliser"
					childTxtPop1.position.x = mouse_pos.x + 24
					childTxtPop1.position.y = mouse_pos.y + 35
					childTxtPop1.add_theme_font_size_override("font_size", 29)
					childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionElixir = true
					print("J'ouvre le pop up")
			else:
				if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
					gui_popUp = GuiPopUp.instantiate()
					add_child(gui_popUp)
					gui_popUp.scale = Vector2(0.5, 0.5)
					gui_popUp.offset.x = mouse_pos.x
					gui_popUp.offset.y = mouse_pos.y
					
					gui_buttonOnStocker = GuiButtonOn.instantiate()
					add_child(gui_buttonOnStocker)
					gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
					gui_buttonOnStocker.offset.x = mouse_pos.x + 20
					gui_buttonOnStocker.offset.y = mouse_pos.y + 75
					
					gui_buttonOnJeter = GuiButtonOn.instantiate()
					add_child(gui_buttonOnJeter)
					gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
					gui_buttonOnJeter.offset.x = mouse_pos.x + 20
					gui_buttonOnJeter.offset.y = mouse_pos.y + 120
					
					txt_popup_2 = GuiTextUi.instantiate()
					add_child(txt_popup_2)
					
					var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
					childTxtPop2.text = "Stocker"
					childTxtPop2.position.x = mouse_pos.x + 24
					childTxtPop2.position.y = mouse_pos.y + 80
					childTxtPop2.add_theme_font_size_override("font_size", 29)
					childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					
					txt_popup_3 = GuiTextUi.instantiate()
					add_child(txt_popup_3)
					
					var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
					childTxtPop3.text = "Jeter"
					childTxtPop3.position.x = mouse_pos.x + 37
					childTxtPop3.position.y = mouse_pos.y + 125
					childTxtPop3.add_theme_font_size_override("font_size", 29)
					childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
					
					isPopUpOpen = true
					isPopUpOpenPotionElixir = true
					print("J'ouvre le pop up")
					
					
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == true and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if gui_buttonOnUse != null:
					if mouse_pos.x >= gui_buttonOnUse.offset.x and mouse_pos.x <= gui_buttonOnUse.offset.x + 90 and mouse_pos.y >= gui_buttonOnUse.offset.y and mouse_pos.y <= gui_buttonOnUse.offset.y + 35:
						if Input.is_action_just_pressed("button_left"):
							print("on clique sur le button use ")
							DataSave.hero.vie = DataSave.hero.vieMax
							DataSave.hero.mana = DataSave.hero.manaMax
							gui_potion_elixir[i].queue_free()
							txtItemType[i] = "vide"
							DataSave.items_posession.potionElixir -= 1
							nbCompteurPotionElixir -= 1
							isSlot_libre[i] = true
							gui_popUp.queue_free()
							gui_buttonOnUse.queue_free()
							gui_buttonOnStocker.queue_free()
							gui_buttonOnJeter.queue_free()
							txt_popup_1.queue_free()
							txt_popup_2.queue_free()
							txt_popup_3.queue_free()
							isPopUpOpen = false
							isPopUpOpenPotionElixir = false
							txtItemSelect[i] = "none"
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_potion_elixir[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionElixir -= 1
						DataSave.items_stocker.potionElixir += 1
						nbCompteurPotionElixir -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionElixir = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_potion_elixir[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.potionElixir -= 1
						nbCompteurPotionElixir -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						if gui_buttonOnUse != null:
							gui_buttonOnUse.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						if txt_popup_1 != null:
							txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenPotionElixir = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bague_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBague1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == true and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bague1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague1 -= 1
						DataSave.items_stocker.bague1 += 1
						nbCompteurBague1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bague1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague1 -= 1
						nbCompteurBague1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bague_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBague2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == true and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bague2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague2 -= 1
						DataSave.items_stocker.bague2 += 1
						nbCompteurBague2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bague2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague2 -= 1
						nbCompteurBague2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bague_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBague3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == true and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague3 = false 
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bague3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague3 -= 1
						DataSave.items_stocker.bague3 += 1
						nbCompteurBague3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bague3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bague3 -= 1
						nbCompteurBague3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBague3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == true and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes1 -= 1
						DataSave.items_stocker.bottes1 += 1
						nbCompteurBottes1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes1 = false
						txtItemSelect[i] = "none"
						
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes1 -= 1
						nbCompteurBottes1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == true and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes2 -= 1
						DataSave.items_stocker.bottes2 += 1
						nbCompteurBottes2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes2 -= 1
						nbCompteurBottes2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == true and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes3 -= 1
						DataSave.items_stocker.bottes3 += 1
						nbCompteurBottes3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes3 -= 1
						nbCompteurBottes3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_4":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes4 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == true and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes4 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes4 -= 1
						DataSave.items_stocker.bottes4 += 1
						nbCompteurBottes4 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes4 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes4 -= 1
						nbCompteurBottes4 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes4 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_5":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes5 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == true and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes5 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes5 -= 1
						DataSave.items_stocker.bottes5 += 1
						nbCompteurBottes5 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes5 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes5 -= 1
						nbCompteurBottes5 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes5 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bottes_6":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBottes6 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == true and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes6 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bottes6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes6 -= 1
						DataSave.items_stocker.bottes6 += 1
						nbCompteurBottes6 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes6 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bottes6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bottes6 -= 1
						nbCompteurBottes6 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBottes6 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == true and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier1 -= 1
						DataSave.items_stocker.bouclier1 += 1
						nbCompteurBouclier1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier1 -= 1
						nbCompteurBouclier1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == true and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier2 -= 1
						DataSave.items_stocker.bouclier2 += 1
						nbCompteurBouclier2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier2 -= 1
						nbCompteurBouclier2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == true and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier3 -= 1
						DataSave.items_stocker.bouclier3 += 1
						nbCompteurBouclier3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier3 -= 1
						nbCompteurBouclier3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_4":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier4 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == true and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier4 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier4 -= 1
						DataSave.items_stocker.bouclier4 += 1
						nbCompteurBouclier4 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier4 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier4 -= 1
						nbCompteurBouclier4 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier4 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_5":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier5 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == true and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier5 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier5 -= 1
						DataSave.items_stocker.bouclier5 += 1
						nbCompteurBouclier5 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier5 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier5 -= 1
						nbCompteurBouclier5 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier5 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_6":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier6 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == true and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier6 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier6 -= 1
						DataSave.items_stocker.bouclier6 += 1
						nbCompteurBouclier6 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier6 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier6 -= 1
						nbCompteurBouclier6 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier6 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "bouclier_7":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenBouclier7 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == true and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier7 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_bouclier7[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier7 -= 1
						DataSave.items_stocker.bouclier7 += 1
						nbCompteurBouclier7 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier7 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_bouclier7[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.bouclier7 -= 1
						nbCompteurBouclier7 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenBouclier7 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == true and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque1 -= 1
						DataSave.items_stocker.casque1 += 1
						nbCompteurCasque1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque1 -= 1
						nbCompteurCasque1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == true and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque2 -= 1
						DataSave.items_stocker.casque2 += 1
						nbCompteurCasque2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque2 -= 1
						nbCompteurCasque2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == true and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque3 -= 1
						DataSave.items_stocker.casque3 += 1
						nbCompteurCasque3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque3 -= 1
						nbCompteurCasque3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_4":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque4 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == true and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque4 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque4 -= 1
						DataSave.items_stocker.casque4 += 1
						nbCompteurCasque4 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque4 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque4 -= 1
						nbCompteurCasque4 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque4 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_5":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque5 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == true and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque5 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque5 -= 1
						DataSave.items_stocker.casque5 += 1
						nbCompteurCasque5 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque5 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque5 -= 1
						nbCompteurCasque5 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque5 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "casque_6":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCasque6 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == true and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque6 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_casque6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque6 -= 1
						DataSave.items_stocker.casque6 += 1
						nbCompteurCasque6 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque6 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_casque6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.casque6 -= 1
						nbCompteurCasque6 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque6 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "collier_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCollier1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == true and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_collier1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier1 -= 1
						DataSave.items_stocker.collier1 += 1
						nbCompteurCollier1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_collier1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier1 -= 1
						nbCompteurCollier1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCasque1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "collier_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCollier2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == true and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_collier2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier2 -= 1
						DataSave.items_stocker.collier2 += 1
						nbCompteurCollier2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_collier2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier2 -= 1
						nbCompteurCollier2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "collier_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenCollier3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == true and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_collier3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier3 -= 1
						DataSave.items_stocker.collier3 += 1
						nbCompteurCollier3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_collier3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.collier3 -= 1
						nbCompteurCollier3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenCollier3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == true and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume1 -= 1
						DataSave.items_stocker.heaume1 += 1
						nbCompteurHeaume1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume1 -= 1
						nbCompteurHeaume1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == true and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume2 -= 1
						DataSave.items_stocker.heaume2 += 1
						nbCompteurHeaume2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume2 -= 1
						nbCompteurHeaume2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == true and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume3 -= 1
						DataSave.items_stocker.heaume3 += 1
						nbCompteurHeaume3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume3 -= 1
						nbCompteurHeaume3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_4":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume4 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == true and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume4 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume4 -= 1
						DataSave.items_stocker.heaume4 += 1
						nbCompteurHeaume4 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume4 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume4 -= 1
						nbCompteurHeaume4 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume4 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_5":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume5 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == true and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume5 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume5 -= 1
						DataSave.items_stocker.heaume5 += 1
						nbCompteurHeaume5 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume5 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume5 -= 1
						nbCompteurHeaume5 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume5 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "heaume_6":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenHeaume6 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == true and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume6 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_heaume6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume6 -= 1
						DataSave.items_stocker.heaume6 += 1
						nbCompteurHeaume6-= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume6 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_heaume6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.heaume6 -= 1
						nbCompteurHeaume6-= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenHeaume6 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_1":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword1 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == true and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword1 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword1 -= 1
						DataSave.items_stocker.sword1 += 1
						nbCompteurSword1 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword1 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword1[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword1 -= 1
						nbCompteurSword1 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword1 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_2":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword2 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == true and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword2 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword2 -= 1
						DataSave.items_stocker.sword2 += 1
						nbCompteurSword2 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword2 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword2[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword2 -= 1
						nbCompteurSword2 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword2 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_3":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword3 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == true and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword3 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword3 -= 1
						DataSave.items_stocker.sword3 += 1
						nbCompteurSword3 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword3 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword3[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword3 -= 1
						nbCompteurSword3 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword3 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_4":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword4 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == true and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword4 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword4 -= 1
						DataSave.items_stocker.sword4 += 1
						nbCompteurSword4 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword4 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword4[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword4 -= 1
						nbCompteurSword4 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword4 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_5":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword5 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == true and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword5 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword5 -= 1
						DataSave.items_stocker.sword5 += 1
						nbCompteurSword5 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword5 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword5[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword5 -= 1
						nbCompteurSword5 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword5 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_6":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword6 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == true and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword6 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword6 -= 1
						DataSave.items_stocker.sword6 += 1
						nbCompteurSword6 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword6 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword6[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword6 -= 1
						nbCompteurSword6 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword6 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_7":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword7 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == true and isPopUpOpenSword8 == false :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword7 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword7[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword7 -= 1
						DataSave.items_stocker.sword7 += 1
						DataSave.nbItemsStocker += 1
						nbCompteurSword7 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false 
						isPopUpOpenSword7 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword7[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword7 -= 1
						nbCompteurSword7 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword7 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
		if txtItemSelect[i] == "sword_8":
			#print("item select est bague : ", txtItemSelect)
			if isPopUpOpen == false and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == false :
				gui_popUp = GuiPopUp.instantiate()
				add_child(gui_popUp)
				gui_popUp.scale = Vector2(0.5, 0.5)
				gui_popUp.offset.x = mouse_pos.x
				gui_popUp.offset.y = mouse_pos.y
				
				gui_buttonOnEquiper = GuiButtonOn.instantiate()
				add_child(gui_buttonOnEquiper)
				gui_buttonOnEquiper.scale = Vector2(0.5, 0.5)
				gui_buttonOnEquiper.offset.x = mouse_pos.x + 20
				gui_buttonOnEquiper.offset.y = mouse_pos.y + 30
				
				gui_buttonOnStocker = GuiButtonOn.instantiate()
				add_child(gui_buttonOnStocker)
				gui_buttonOnStocker.scale = Vector2(0.5, 0.5)
				gui_buttonOnStocker.offset.x = mouse_pos.x + 20
				gui_buttonOnStocker.offset.y = mouse_pos.y + 75
				
				gui_buttonOnJeter = GuiButtonOn.instantiate()
				add_child(gui_buttonOnJeter)
				gui_buttonOnJeter.scale = Vector2(0.5, 0.5)
				gui_buttonOnJeter.offset.x = mouse_pos.x + 20
				gui_buttonOnJeter.offset.y = mouse_pos.y + 120
				
				txt_popup_1 = GuiTextUi.instantiate()
				add_child(txt_popup_1)
				
				var childTxtPop1 = txt_popup_1.get_node("labelGuiTextFenetre")
				childTxtPop1.text = "Equiper"
				childTxtPop1.position.x = mouse_pos.x + 24
				childTxtPop1.position.y = mouse_pos.y + 35
				childTxtPop1.add_theme_font_size_override("font_size", 29)
				childTxtPop1.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				txt_popup_2 = GuiTextUi.instantiate()
				add_child(txt_popup_2)
				
				var childTxtPop2 = txt_popup_2.get_node("labelGuiTextFenetre")
				childTxtPop2.text = "Stocker"
				childTxtPop2.position.x = mouse_pos.x + 24
				childTxtPop2.position.y = mouse_pos.y + 80
				childTxtPop2.add_theme_font_size_override("font_size", 29)
				childTxtPop2.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				
				txt_popup_3 = GuiTextUi.instantiate()
				add_child(txt_popup_3)
				
				var childTxtPop3 = txt_popup_3.get_node("labelGuiTextFenetre")
				childTxtPop3.text = "Jeter"
				childTxtPop3.position.x = mouse_pos.x + 37
				childTxtPop3.position.y = mouse_pos.y + 125
				childTxtPop3.add_theme_font_size_override("font_size", 29)
				childTxtPop3.add_theme_color_override("font_color", Color(0, 0, 0, 1) )
				
				isPopUpOpen = true
				isPopUpOpenSword8 = true
				print("J'ouvre le pop up")
			
			if isPopUpOpen == true and isPopUpOpenPotionVie == false and isPopUpOpenPotionMana == false and isPopUpOpenPotionElixir == false and isPopUpOpenBague1 == false and isPopUpOpenBague2 == false and isPopUpOpenBague3 == false and isPopUpOpenBottes1 == false and isPopUpOpenBottes2 == false and isPopUpOpenBottes3 == false and isPopUpOpenBottes4 == false and isPopUpOpenBottes5 == false and isPopUpOpenBottes6 == false and isPopUpOpenBouclier1 == false and isPopUpOpenBouclier2 == false and isPopUpOpenBouclier3 == false and isPopUpOpenBouclier4 == false and isPopUpOpenBouclier5 == false and isPopUpOpenBouclier6 == false and isPopUpOpenBouclier7 == false and isPopUpOpenCasque1 == false and isPopUpOpenCasque2 == false and isPopUpOpenCasque3 == false and isPopUpOpenCasque4 == false and isPopUpOpenCasque5 == false and isPopUpOpenCasque6 == false and isPopUpOpenCollier1 == false and isPopUpOpenCollier2 == false and isPopUpOpenCollier3 == false and isPopUpOpenHeaume1 == false and isPopUpOpenHeaume2 == false and isPopUpOpenHeaume3 == false and isPopUpOpenHeaume4 == false and isPopUpOpenHeaume5 == false and isPopUpOpenHeaume6 == false and isPopUpOpenSword1 == false and isPopUpOpenSword2 == false and isPopUpOpenSword3 == false and isPopUpOpenSword4 == false and isPopUpOpenSword5 == false and isPopUpOpenSword6 == false and isPopUpOpenSword7 == false and isPopUpOpenSword8 == true :
				if mouse_pos.x >= gui_buttonOnEquiper.offset.x and mouse_pos.x <= gui_buttonOnEquiper.offset.x + 90 and mouse_pos.y >= gui_buttonOnEquiper.offset.y and mouse_pos.y <= gui_buttonOnEquiper.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button equiper ")
						#_Sgui_open()
						nodeSceneGameplay.hero.img[nodeSceneGameplay.hero.current].isGuiOpen = false
						nodeHudHero.emit_signal("guiHeroOpen", "hero")
						_close_inventaire()
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword8 = false
						txtItemSelect[i] = "none"
						#sceneGameplay._Sgui_open("hero")
						
				
				if mouse_pos.x >= gui_buttonOnStocker.offset.x and mouse_pos.x <= gui_buttonOnStocker.offset.x + 90 and mouse_pos.y >= gui_buttonOnStocker.offset.y and mouse_pos.y <= gui_buttonOnStocker.offset.y + 35:
					if Input.is_action_just_pressed("button_left") and DataSave.nbItemsStocker < DataSave.nbStockageMax:
						print("on clique sur le button stocker ")
						gui_sword8[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword8 -= 1
						DataSave.items_stocker.sword8 += 1
						nbCompteurSword8 -= 1
						DataSave.nbItemsStocker += 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword8 = false
						txtItemSelect[i] = "none"
				
				if mouse_pos.x >= gui_buttonOnJeter.offset.x and mouse_pos.x <= gui_buttonOnJeter.offset.x + 90 and mouse_pos.y >= gui_buttonOnJeter.offset.y and mouse_pos.y <= gui_buttonOnJeter.offset.y + 35:
					if Input.is_action_just_pressed("button_left"):
						print("on clique sur le button jeter ")
						gui_sword8[i].queue_free()
						txtItemType[i] = "vide"
						DataSave.items_posession.sword8 -= 1
						nbCompteurSword8 -= 1
						isSlot_libre[i] = true
						gui_popUp.queue_free()
						gui_buttonOnEquiper.queue_free()
						gui_buttonOnStocker.queue_free()
						gui_buttonOnJeter.queue_free()
						txt_popup_1.queue_free()
						txt_popup_2.queue_free()
						txt_popup_3.queue_free()
						isPopUpOpen = false
						isPopUpOpenSword8 = false
						txtItemSelect[i] = "none"
			#Faut creer lobjet popup (button interface text et tout)
			#Faut que j'ajoute les conditions pour le clic et tout 
			#A la fin remettre la variable txtItemSelect a "none"
		
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
	
	if gui_popUp != null:
		if Input.is_action_just_pressed("button_left"):
			if !(mouse_pos.x >= gui_popUp.offset.x and mouse_pos.x <= gui_popUp.offset.x + 258/2 and mouse_pos.y >= gui_popUp.offset.y and mouse_pos.y <= gui_popUp.offset.y + 360/2):
				isPopUpOpen = false
				isPopUpOpenPotionVie = false
				isPopUpOpenPotionMana = false
				isPopUpOpenPotionElixir = false
				isPopUpOpenBague1 = false
				isPopUpOpenBague2 = false
				isPopUpOpenBague3 = false
				isPopUpOpenBottes1 = false
				isPopUpOpenBottes2 = false
				isPopUpOpenBottes3 = false
				isPopUpOpenBottes4 = false
				isPopUpOpenBottes5 = false
				isPopUpOpenBottes6 = false
				isPopUpOpenBouclier1 = false
				isPopUpOpenBouclier2 = false
				isPopUpOpenBouclier3 = false
				isPopUpOpenBouclier4 = false
				isPopUpOpenBouclier5 = false
				isPopUpOpenBouclier6 = false
				isPopUpOpenBouclier7 = false
				isPopUpOpenCasque1 = false
				isPopUpOpenCasque2 = false
				isPopUpOpenCasque3 = false
				isPopUpOpenCasque4 = false
				isPopUpOpenCasque5 = false
				isPopUpOpenCasque6 = false
				isPopUpOpenCollier1 = false
				isPopUpOpenCollier2 = false
				isPopUpOpenCollier3 = false
				isPopUpOpenHeaume1 = false
				isPopUpOpenHeaume2 = false
				isPopUpOpenHeaume3 = false
				isPopUpOpenHeaume4 = false
				isPopUpOpenHeaume5 = false
				isPopUpOpenHeaume6 = false
				isPopUpOpenSword1 = false
				isPopUpOpenSword2 = false
				isPopUpOpenSword3 = false
				isPopUpOpenSword4 = false
				isPopUpOpenSword5 = false
				isPopUpOpenSword6 = false
				isPopUpOpenSword7 = false
				isPopUpOpenSword8 = false
				gui_popUp.queue_free()
				if gui_buttonOnUse != null:
					gui_buttonOnUse.queue_free()
				if gui_buttonOnEquiper != null:
					gui_buttonOnEquiper.queue_free()
				gui_buttonOnStocker.queue_free()
				gui_buttonOnJeter.queue_free()
				if txt_popup_1 != null:
					txt_popup_1.queue_free()
					#print("test de si le txt 1 est bien supprimé")
				txt_popup_2.queue_free()
				txt_popup_3.queue_free()
				for i in range(20):
					txtItemSelect[i] = "none"
				print("Je clique en dehors de la zone : ", isPopUpOpen)


func _on_panel_retour_gui_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("button_left"):
		_close_inventaire()

func _input(event): #l'équivalent de keypressed dans love2D avec le fait qu'il execute en continue comme un update
	var mouse_pos = get_viewport().get_mouse_position()
	var slot_posX = []
	var slot_posY = [] 
	
	slot_posX.resize(20)
	slot_posY.resize(20)
	
	for n in range(20):
		slot_posX[n] = childSlot[n].position.x + nodeParent.offset.x
		slot_posY[n] = childSlot[n].position.y + nodeParent.offset.y
	#print("recuperation de la variable txtTypeClic : ", txtTypeClic)
	
	txtTypeClic = ""
	if Input.is_action_just_pressed("button_left") or Input.is_action_just_pressed("button_right"): # je vais faire clic gauche ou droit et avant le prochain if mettre une variable qui dit droite ou gauche donc mettre vite fait une autre condition puis en fonction de cette variable soit sa jette soit sa utiliser 
		if Input.is_action_just_pressed("button_left") and txtTypeClic == "": 
			txtTypeClic = "left"
			print("LEFTTTT")
		if Input.is_action_just_pressed("button_right") and txtTypeClic == "":
			txtTypeClic = "right"
			print("RIGHTTTT")
		#print("BB : ", slot_posY[7]) // surement ajouter une autre variable qui dit quel item a dans telle slot dans lupdate 
		for n in range(20):
			#finalement rester uniquement sur clik gauche et afficher 3 options : - utiliser , coffret , jeter
			if mouse_pos.x >= slot_posX[n] and mouse_pos.x <= slot_posX[n] + childSlot[n].size.x-1 and mouse_pos.y >= slot_posY[n] and mouse_pos.y <= slot_posY[n] + childSlot[n].size.y-1:
				#print("Je clic sur la potion", n)
				if txtItemType[n] == "potion_vie" and gui_popUp == null:
					if gui_potion_vie[n] != null:
						if n == 0:
							if txtTypeClic == "left": 
								print("on utilise l'item")
								txtItemSelect[0] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
								print("on supprime !!!! : ", txtTypeClic)
						elif n == 1:
							if txtTypeClic == "left":
								print("on utilise l'item")
								txtItemSelect[1] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
								print("on supprime !!!! : ", txtTypeClic)
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise l'item")
								txtItemSelect[2] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
								print("on supprime !!!! : ", txtTypeClic)
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise l'item")
								txtItemSelect[3] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise l'item")
								txtItemSelect[4] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[5] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[6] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[7] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left": 
								print("utilise item")
								txtItemSelect[8] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[9] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[10] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[11] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[12] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[13] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[14] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left": 
								print("utilise item")
								txtItemSelect[15] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[16] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[17] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[18] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[19] = "potion_vie"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_vie[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.potionVie -= 1
								nbCompteurPotionVie -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				#Potion de mana
				if txtItemType[n] == "potion_mana" and gui_popUp == null:
					if gui_potion_mana[n] != null:
						if n == 0:
							if  txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[0] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[1] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[2] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[3] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[4] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[5] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[6] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[7] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[8] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[9] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[10] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[11] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[12] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[13] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[14] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[15] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[16] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[17] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[18] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[19] = "potion_mana"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_mana[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.potionMana -= 1
								nbCompteurPotionMana -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
						
				#Potion d'exilir
				if txtItemType[n] == "potion_elixir" and gui_popUp == null:
					if gui_potion_elixir[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[0] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[1] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[2] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[3] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[4] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[5] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[6] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[7] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[8] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[9] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[10] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[11] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[12] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[13] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[14] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[15] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[16] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[17] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[18] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise item")
								txtItemSelect[19] = "potion_elixir"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_potion_elixir[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.potionElixir -= 1
								nbCompteurPotionElixir -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
						
				#Bague 1
				if txtItemType[n] == "bague_1" and gui_popUp == null:
					if gui_bague1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bague_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bague1 -= 1
								nbCompteurBague1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bague 2
				if txtItemType[n] == "bague_2" and gui_popUp == null:
					if gui_bague2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bague_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bague2 -= 1
								nbCompteurBague2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bague 3
				if txtItemType[n] == "bague_3" and gui_popUp == null:
					if gui_bague3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bague_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bague3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bague3 -= 1
								nbCompteurBague3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
							
				#faire les bottes 
				#Bottes 1
				if txtItemType[n] == "bottes_1" and gui_popUp == null:
					if gui_bottes1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes1 -= 1
								nbCompteurBottes1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bottes 2
				if txtItemType[n] == "bottes_2" and gui_popUp == null:
					if gui_bottes2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes2 -= 1
								nbCompteurBottes2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bottes 3
				if txtItemType[n] == "bottes_3" and gui_popUp == null:
					if gui_bottes3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes3 -= 1
								nbCompteurBottes3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bottes 4
				if txtItemType[n] == "bottes_4" and gui_popUp == null:
					if gui_bottes4[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes4[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes4 -= 1
								nbCompteurBottes4 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bottes 5
				if txtItemType[n] == "bottes_5" and gui_popUp == null:
					if gui_bottes5[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes5[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes5 -= 1
								nbCompteurBottes5 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bottes 6
				if txtItemType[n] == "bottes_6" and gui_popUp == null:
					if gui_bottes6[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bottes_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bottes6[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bottes6 -= 1
								nbCompteurBottes6 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 1
				if txtItemType[n] == "bouclier_1" and gui_popUp == null:
					if gui_bouclier1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1-= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier1 -= 1
								nbCompteurBouclier1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 2
				if txtItemType[n] == "bouclier_2" and gui_popUp == null:
					if gui_bouclier2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier2 -= 1
								nbCompteurBouclier2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 3
				if txtItemType[n] == "bouclier_3" and gui_popUp == null:
					if gui_bouclier3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[9] = true
								txtTypeClic  = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier3 -= 1
								nbCompteurBouclier3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 4
				if txtItemType[n] == "bouclier_4" and gui_popUp == null:
					if gui_bouclier4[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier4[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier4 -= 1
								nbCompteurBouclier4 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 5
				if txtItemType[n] == "bouclier_5" and gui_popUp == null:
					if gui_bouclier5[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier5[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier5 -= 1
								nbCompteurBouclier5 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 6
				if txtItemType[n] == "bouclier_6" and gui_popUp == null:
					if gui_bouclier6[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier6[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier6 -= 1
								nbCompteurBouclier6 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Bouclier 7
				if txtItemType[n] == "bouclier_7" and gui_popUp == null:
					if gui_bouclier7[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "bouclier_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_bouclier7[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.bouclier7 -= 1
								nbCompteurBouclier7 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque1
				if txtItemType[n] == "casque_1" and gui_popUp == null:
					if gui_casque1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque1 -= 1
								nbCompteurCasque1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque2
				if txtItemType[n] == "casque_2" and gui_popUp == null:
					if gui_casque2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque2 -= 1
								nbCompteurCasque2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque3
				if txtItemType[n] == "casque_3" and gui_popUp == null:
					if gui_casque3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque3 -= 1
								nbCompteurCasque3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque4
				if txtItemType[n] == "casque_4" and gui_popUp == null:
					if gui_casque4[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque4[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque4 -= 1
								nbCompteurCasque4 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque5
				if txtItemType[n] == "casque_5" and gui_popUp == null:
					if gui_casque5[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque5[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque5 -= 1
								nbCompteurCasque5 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Casque6
				if txtItemType[n] == "casque_6" and gui_popUp == null:
					if gui_casque6[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "casque_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_casque6[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.casque6 -= 1
								nbCompteurCasque6 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Collier1
				if txtItemType[n] == "collier_1" and gui_popUp == null:
					if gui_collier1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "collier_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.collier1 -= 1
								nbCompteurCollier1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Collier2
				if txtItemType[n] == "collier_2" and gui_popUp == null:
					if gui_collier2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "collier_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.collier2 -= 1
								nbCompteurCollier2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Collier3
				if txtItemType[n] == "collier_3" and gui_popUp == null:
					if gui_collier3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "collier_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_collier3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.collier3 -= 1
								nbCompteurCollier3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume1
				if txtItemType[n] == "heaume_1" and gui_popUp == null:
					if gui_heaume1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[13] = true
								txtTypeClic  = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume1 -= 1
								nbCompteurHeaume1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume2
				if txtItemType[n] == "heaume_2" and gui_popUp == null:
					if gui_heaume2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[2] = true
								txtTypeClic  = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume2 -= 1
								nbCompteurHeaume2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume3
				if txtItemType[n] == "heaume_3" and gui_popUp == null:
					if gui_heaume3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume3 -= 1
								nbCompteurHeaume3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume4
				if txtItemType[n] == "heaume_4" and gui_popUp == null:
					if gui_heaume4[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume4[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume4 -= 1
								nbCompteurHeaume4 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume5
				if txtItemType[n] == "heaume_5" and gui_popUp == null:
					if gui_heaume5[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume5[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume5 -= 1
								nbCompteurHeaume5 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Heaume6
				if txtItemType[n] == "heaume_6" and gui_popUp == null:
					if gui_heaume6[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "heaume_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_heaume6[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.heaume6 -= 1
								nbCompteurHeaume6 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword1
				if txtItemType[n] == "sword_1" and gui_popUp == null:
					if gui_sword1[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_1"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword1[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword1 -= 1
								nbCompteurSword1 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword2
				if txtItemType[n] == "sword_2" and gui_popUp == null:
					if gui_sword2[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_2"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword2[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword2 -= 1
								nbCompteurSword2 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword3
				if txtItemType[n] == "sword_3" and gui_popUp == null:
					if gui_sword3[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_3"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword3[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword3 -= 1
								nbCompteurSword3 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword4
				if txtItemType[n] == "sword_4" and gui_popUp == null:
					if gui_sword4[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_4"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword4[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword4 -= 1
								nbCompteurSword4 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword5
				if txtItemType[n] == "sword_5" and gui_popUp == null:
					if gui_sword5[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_5"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword5[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword5 -= 1
								nbCompteurSword5 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword6
				if txtItemType[n] == "sword_6" and gui_popUp == null:
					if gui_sword6[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_6"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword6[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword6 -= 1
								nbCompteurSword6 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword7
				if txtItemType[n] == "sword_7" and gui_popUp == null:
					if gui_sword7[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_7"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword7[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword7 -= 1
								nbCompteurSword7 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
				
				#Sword8
				if txtItemType[n] == "sword_8" and gui_popUp == null:
					if gui_sword8[n] != null:
						if n == 0:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[0] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[0].queue_free()
								txtItemType[0] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[0] = true
								txtTypeClic = ""
						elif n == 1:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[1] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[1].queue_free()
								txtItemType[1] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[1] = true
								txtTypeClic = ""
						elif n == 2:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[2] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[2].queue_free()
								txtItemType[2] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[2] = true
								txtTypeClic = ""
						elif n == 3:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[3] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[3].queue_free()
								txtItemType[3] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[3] = true
								txtTypeClic = ""
						elif n == 4:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[4] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[4].queue_free()
								txtItemType[4] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[4] = true
								txtTypeClic = ""
						elif n == 5:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[5] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[5].queue_free()
								txtItemType[5] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[5] = true
								txtTypeClic = ""
						elif n == 6:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[6] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[6].queue_free()
								txtItemType[6] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[6] = true
								txtTypeClic = ""
						elif n == 7:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[7] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[7].queue_free()
								txtItemType[7] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[7] = true
								txtTypeClic = ""
						elif n == 8:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[8] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[8].queue_free()
								txtItemType[8] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[8] = true
								txtTypeClic = ""
						elif n == 9:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[9] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[9].queue_free()
								txtItemType[9] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[9] = true
								txtTypeClic = ""
						elif n == 10:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[10] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[10].queue_free()
								txtItemType[10] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[10] = true
								txtTypeClic = ""
						elif n == 11:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[11] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[11].queue_free()
								txtItemType[11] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[11] = true
								txtTypeClic = ""
						elif n == 12:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[12] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[12].queue_free()
								txtItemType[12] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[12] = true
								txtTypeClic = ""
						elif n == 13:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[13] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[13].queue_free()
								txtItemType[13] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[13] = true
								txtTypeClic = ""
						elif n == 14:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[14] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[14].queue_free()
								txtItemType[14] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[14] = true
								txtTypeClic = ""
						elif n == 15:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[15] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[15].queue_free()
								txtItemType[15] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[15] = true
								txtTypeClic = ""
						elif n == 16:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[16] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[16].queue_free()
								txtItemType[16] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[16] = true
								txtTypeClic = ""
						elif n == 17:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[17] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[17].queue_free()
								txtItemType[17] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[17] = true
								txtTypeClic = ""
						elif n == 18:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[18] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[18].queue_free()
								txtItemType[18] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[18] = true
								txtTypeClic = ""
						elif n == 19:
							if txtTypeClic == "left":
								print("utilise arme")
								txtItemSelect[19] = "sword_8"
								txtTypeClic = ""
							elif txtTypeClic == "right":
								gui_sword8[19].queue_free()
								txtItemType[19] = "vide"
								DataSave.items_posession.sword8 -= 1
								nbCompteurSword8 -= 1
								isSlot_libre[19] = true
								txtTypeClic = ""
