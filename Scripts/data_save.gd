extends Node

var hero = { gold = 500 }
var items_posession = { potionVie = 0, potionMana = 0, bague1 = 0, bague2 = 0, bague3 = 0, bottes1 = 0,
bottes2 = 0, bottes3 = 0, bottes4 = 0, bottes5 = 0, bottes6 = 0, bouclier1 = 0, bouclier2 = 0,
bouclier3 = 0, bouclier4 = 0, bouclier5 = 0, bouclier6 = 0, bouclier7 = 0, casque1 = 0, casque2 = 0, 
casque3 = 0, casque4 = 0, casque5 = 0, casque6 = 0, collier1 = 0, collier2 = 0, collier3 = 0, heaume1 = 0,
heaume2 = 0, heaume3 = 0, heaume4 = 0, heaume5 = 0, heaume6 = 0, sword1 = 0, sword2 = 0, sword3 = 0, 
sword4 = 0, sword5 = 0, sword6 = 0, sword7 = 0, sword8 = 0, potionElixir = 0 }

const  SAVE_PATH = "user://settings.cfg"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_data()

func load_data():
	var config = ConfigFile.new()
	var err = config.load(SAVE_PATH)
	
	if err != OK:
		print("aucune sauvegarde n'a été détecté")
		save_data()
		return
	
	hero.gold = config.get_value("player", "gold", 500)
	items_posession.potionVie = config.get_value("items", "potion_vie", 0)
	items_posession.potionMana = config.get_value("items", "potion_mana", 0)
	items_posession.potionElixir = config.get_value("items", "potion_elixir", 0)
	items_posession.bague1 = config.get_value("items", "bague_1", 0)
	items_posession.bague2 = config.get_value("items", "bague_2", 0)
	items_posession.bague3 = config.get_value("items", "bague_3", 0)
	items_posession.bottes1 = config.get_value("items", "bottes_1", 0)
	items_posession.bottes2 = config.get_value("items", "bottes_2", 0)
	items_posession.bottes3 = config.get_value("items", "bottes_3", 0)
	items_posession.bottes4 = config.get_value("items", "bottes_4", 0)
	items_posession.bottes5 = config.get_value("items", "bottes_5", 0)
	items_posession.bottes6 = config.get_value("items", "bottes_6", 0)
	items_posession.bouclier1 = config.get_value("items", "bouclier_1", 0)
	items_posession.bouclier2 = config.get_value("items", "bouclier_2", 0)
	items_posession.bouclier3 = config.get_value("items", "bouclier_3", 0)
	items_posession.bouclier4 = config.get_value("items", "bouclier_4", 0)
	items_posession.bouclier5 = config.get_value("items", "bouclier_5", 0)
	items_posession.bouclier6 = config.get_value("items", "bouclier_6", 0)
	items_posession.bouclier7 = config.get_value("items", "bouclier_7", 0)
	items_posession.casque1 = config.get_value("items", "casque_1", 0)
	items_posession.casque2 = config.get_value("items", "casque_2", 0)
	items_posession.casque3 = config.get_value("items", "casque_3", 0)
	items_posession.casque4 = config.get_value("items", "casque_4", 0)
	items_posession.casque5 = config.get_value("items", "casque_5", 0)
	items_posession.casque6 = config.get_value("items", "casque_6", 0)
	items_posession.collier1 = config.get_value("items", "collier_1", 0)
	items_posession.collier2 = config.get_value("items", "collier_2", 0)
	items_posession.collier3 = config.get_value("items", "collier_3", 0)
	items_posession.heaume1 = config.get_value("items", "heaume_1", 0)
	items_posession.heaume2 = config.get_value("items", "heaume_2", 0)
	items_posession.heaume3 = config.get_value("items", "heaume_3", 0)
	items_posession.heaume4 = config.get_value("items", "heaume_4", 0)
	items_posession.heaume5 = config.get_value("items", "heaume_5", 0)
	items_posession.heaume6 = config.get_value("items", "heaume_6", 0)
	items_posession.sword1 = config.get_value("items", "sword_1", 0)
	items_posession.sword2 = config.get_value("items", "sword_2", 0)
	items_posession.sword3 = config.get_value("items", "sword_3", 0)
	items_posession.sword4 = config.get_value("items", "sword_4", 0)
	items_posession.sword5 = config.get_value("items", "sword_5", 0)
	items_posession.sword6 = config.get_value("items", "sword_6", 0)
	items_posession.sword7 = config.get_value("items", "sword_7", 0)
	items_posession.sword8 = config.get_value("items", "sword_8", 0)


func save_data():
	var config = ConfigFile.new()
	config.set_value("player", "gold", hero.gold)
	config.set_value("items", "potion_vie", items_posession.potionVie)
	config.set_value("items", "potion_mana", items_posession.potionMana)
	config.set_value("items", "potion_elixir", items_posession.potionElixir)
	config.set_value("items", "bague_1", items_posession.bague1)
	config.set_value("items", "bague_2", items_posession.bague2)
	config.set_value("items", "bague_3", items_posession.bague3)
	config.set_value("items", "bottes_1", items_posession.bottes1)
	config.set_value("items", "bottes_2", items_posession.bottes2)
	config.set_value("items", "bottes_3", items_posession.bottes3)
	config.set_value("items", "bottes_4", items_posession.bottes4)
	config.set_value("items", "bottes_5", items_posession.bottes5)
	config.set_value("items", "bottes_6", items_posession.bottes6)
	config.set_value("items", "bouclier_1", items_posession.bouclier1)
	config.set_value("items", "bouclier_2", items_posession.bouclier2)
	config.set_value("items", "bouclier_3", items_posession.bouclier3)
	config.set_value("items", "bouclier_4", items_posession.bouclier4)
	config.set_value("items", "bouclier_5", items_posession.bouclier5)
	config.set_value("items", "bouclier_6", items_posession.bouclier6)
	config.set_value("items", "bouclier_7", items_posession.bouclier7)
	config.set_value("items", "casque_1", items_posession.casque1)
	config.set_value("items", "casque_2", items_posession.casque2)
	config.set_value("items", "casque_3", items_posession.casque3)
	config.set_value("items", "casque_4", items_posession.casque4)
	config.set_value("items", "casque_5", items_posession.casque5)
	config.set_value("items", "casque_6", items_posession.casque6)
	config.set_value("items", "collier_1", items_posession.collier1)
	config.set_value("items", "collier_2", items_posession.collier2)
	config.set_value("items", "collier_3", items_posession.collier3)
	config.set_value("items", "heaume_1", items_posession.heaume1)
	config.set_value("items", "heaume_2", items_posession.heaume2)
	config.set_value("items", "heaume_3", items_posession.heaume3)
	config.set_value("items", "heaume_4", items_posession.heaume4)
	config.set_value("items", "heaume_5", items_posession.heaume5)
	config.set_value("items", "heaume_6", items_posession.heaume6)
	config.set_value("items", "sword_1", items_posession.sword1)
	config.set_value("items", "sword_2", items_posession.sword2)
	config.set_value("items", "sword_3", items_posession.sword3)
	config.set_value("items", "sword_4", items_posession.sword4)
	config.set_value("items", "sword_5", items_posession.sword5)
	config.set_value("items", "sword_6", items_posession.sword6)
	config.set_value("items", "sword_7", items_posession.sword7)
	config.set_value("items", "sword_8", items_posession.sword8)
	
	
	config.save(SAVE_PATH)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
