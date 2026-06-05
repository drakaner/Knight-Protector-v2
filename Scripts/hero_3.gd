extends Node2D

signal guiStatueOpen
signal guiCoffreStockage
signal guiForgeronOpen
signal guiArsenalOpen
signal guiItemOpen
signal guiAlchimieOpen

@onready var Animated = get_node_or_null("Area2D/AnimatedSprite2D")
@onready var snd_walk = get_node_or_null("walk_audio")
@onready var snd_dash = get_node_or_null("dash_audio")
@onready var snd_hurt1 = get_node_or_null("hurt1_audio")
@onready var snd_hurt2 = get_node_or_null("hurt2_audio")
@onready var snd_hurt3 = get_node_or_null("hurt3_audio")
@onready var snd_dead1 = get_node_or_null("dead1_audio")
@onready var snd_dead2 = get_node_or_null("dead2_audio")
@onready var snd_attack = get_node_or_null("coupSword_audio")

var old_animations = "down"
var vx = 0
var vy = 0
var isCollide = {right=false, down=false, left=false, up=false}

var lst_endSort = {
	isStart = false,
	nbTime = 1
}

var old_anime = "idle_down"

var isGuiOpen = false
var isGuiStatueOpen = false
var isGuiCoffreStockageOpen = false
var isGuiForgeronOpen = false
var isGuiArsenalOpen = false
var isGuiItemOpen = false
var isGuiAlchimieOpen = false

func _etat_anime(pAnime, pLoop):
	
	Animated.sprite_frames.set_animation_loop(pAnime, pLoop)
	Animated.animation = pAnime
	if pAnime == "attack_up" or pAnime == "attack_right" or pAnime == "attack_down" or pAnime == "attack_left":
		Animated.speed_scale = 4
	elif pAnime == "run_up" or pAnime == "run_right" or pAnime == "run_down" or pAnime == "run_left":
		Animated.speed_scale = 3
	else:
		Animated.speed_scale = 1
	Animated.play()
	
	
	if old_anime != "walk_down" and pAnime == "walk_down":
		snd_walk.play()
	if old_anime != "walk_left" and pAnime == "walk_left":
		snd_walk.play()
	if old_anime != "walk_up" and pAnime == "walk_up":
		snd_walk.play()
	if old_anime != "walk_right" and pAnime == "walk_right":
		snd_walk.play()
	if old_anime != "run_down" and pAnime == "run_down":
		snd_walk.play()
	if old_anime != "run_left" and pAnime == "run_left":
		snd_walk.play()
	if old_anime != "run_up" and pAnime == "run_up":
		snd_walk.play()
	if old_anime != "run_right" and pAnime == "run_right":
		snd_walk.play()
	old_anime = pAnime #attack


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_etat_anime("idle_down", true)
	#snd_dead2.volume_db = 0
	#snd_dead2.play()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not Input.is_action_pressed("ui_up"):
		if isCollide.up == true:
			isCollide.up = false
			print("je remet .up a faux")
	if not Input.is_action_pressed("ui_right"):
		if isCollide.right == true:
			isCollide.right = false
			print("je remet .right a faux")
	if not Input.is_action_pressed("ui_down"):
		if isCollide.down == true:
			isCollide.down = false
			print("je remet .down a faux")
	if not Input.is_action_pressed("ui_left"):
		if isCollide.left == true:
			isCollide.left = false
			print("je remet .left a faux")
			
	if lst_endSort.isStart == true: 
		lst_endSort.nbTime -= delta
		if lst_endSort.nbTime <= 0:
			if Animated.animation == "sort_down": 
				_etat_anime("idle_down", true)
			elif Animated.animation == "sort_left":
				_etat_anime("idle_left", true)
			elif Animated.animation == "sort_up":
				_etat_anime("idle_up", true)
			elif Animated.animation == "sort_right":
				_etat_anime("idle_right", true)
			lst_endSort.nbTime = 1 
			lst_endSort.isStart = false
	
	#MOUVEMENTS ET IDLE DU PERSONNAGE
	if not Animated.animation == "sort_right" and not Animated.animation == "sort_down" and not Animated.animation == "sort_left" and not Animated.animation == "sort_up" and not Animated.animation == "attack_down" and not Animated.animation == "attack_left" and not Animated.animation == "attack_up" and not Animated.animation == "attack_right":
		if not Animated.animation == "dash" and not Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_left"):
			vx = 0
			vy = 0
			if old_animations == "up":
				_etat_anime("idle_up", true)
			if old_animations == "right":
				_etat_anime("idle_right", true)
			if old_animations == "down":
				_etat_anime("idle_down", true)
			if old_animations == "left":
				_etat_anime("idle_left", true)

		if Input.is_action_pressed("ui_up") and not Animated.animation == "dash" and isGuiOpen == false:
			if isCollide.up == false:
				vy = 100
			position.y -= vy*delta
			if Input.is_action_pressed("Shift"):
				if isCollide.up == false:
					vy = 200
				position.y -= vy*delta
				_etat_anime("run_up", true)
				if Input.is_action_just_pressed("ui_up"):
					snd_walk.pitch_scale = 2
					snd_walk.play()
			else:
				_etat_anime("walk_up", true)
				if Input.is_action_just_pressed("ui_up"):
					snd_walk.pitch_scale = 0.8
					snd_walk.play()
			old_animations = "up"
		elif Input.is_action_pressed("ui_right") and not Animated.animation == "dash" and isGuiOpen == false:
			if isCollide.right == false:
				vx = 100
				#print("right : ", isCollide.right)
			position.x += vx*delta
			if Input.is_action_pressed("Shift"):
				if isCollide.right == false:
					vx = 200
				position.x += vx*delta
				_etat_anime("run_right", true)
				if Input.is_action_just_pressed("ui_right"):
					snd_walk.pitch_scale = 2
					snd_walk.play()
			else:
				_etat_anime("walk_right", true)
				if Input.is_action_just_pressed("ui_right"):
					snd_walk.pitch_scale = 0.8
					snd_walk.play()
			old_animations = "right"
		elif Input.is_action_pressed("ui_down") and not Animated.animation == "dash" and isGuiOpen == false:
			if isCollide.down == false:
				vy = 100
			position.y += vy*delta
			if Input.is_action_pressed("Shift"):
				if isCollide.down == false:
					vy = 200
				position.y += vy*delta
				_etat_anime("run_down", true)
				if Input.is_action_just_pressed("ui_down"):
					snd_walk.pitch_scale = 2
					snd_walk.play()
			else: 
				_etat_anime("walk_down", true)
				if Input.is_action_just_pressed("ui_down"):
					snd_walk.pitch_scale = 0.8
					snd_walk.play()
			old_animations = "down"
		elif Input.is_action_pressed("ui_left") and not Animated.animation == "dash" and isGuiOpen == false:
			if isCollide.left == false:
				vx = 100
			position.x -= vx*delta
			if Input.is_action_pressed("Shift"):
				if isCollide.left == false:
					vx = 200
				position.x -= vx*delta
				_etat_anime("run_left", true)
				if Input.is_action_just_pressed("ui_left"):
					snd_walk.pitch_scale = 2
					snd_walk.play()
			else:
				_etat_anime("walk_left", true)
				if Input.is_action_just_pressed("ui_left"):
					snd_walk.pitch_scale = 0.8
					snd_walk.play()
			old_animations = "left"
	
	#DASH
	#if Animated.animation == "idle_up" or Animated.animation == "idle_right" or Animated.animation == "idle_down" or Animated.animation == "idle_left" or Animated.animation == "walk_up" or Animated.animation == "walk_right" or Animated.animation == "walk_down" or Animated.animation == "walk_left" or Animated.animation == "run_up" or Animated.animation == "run_right" or Animated.animation == "run_down" or Animated.animation == "run_left":
		if Input.is_action_pressed("m") and isGuiOpen == false:
			if Input.is_action_just_pressed("m"):
				_etat_anime("dash", true)
				snd_dash.play()
			if Animated.animation != "dash":
				_etat_anime("dash", true)
				snd_dash.play()
				print("c'est diff de dash donc je rentre dans cette condition de secours !")
			if Input.is_action_pressed("ui_up"):
				position.y -= 300*delta
			if Input.is_action_pressed("ui_right"):
				position.x += 300*delta
			if Input.is_action_pressed("ui_down"):
				position.y += 300*delta
			if Input.is_action_pressed("ui_left"):
				position.x -= 300*delta
			#print("dash ! ")
		elif not Input.is_action_pressed("m") and Animated.animation == "dash":
			_etat_anime("idle_down", true)
			snd_walk.play()
	
	#ATTAQUE DU PERSONNAGE 
	if not Animated.animation == "dash" and not Animated.animation == "sort_right" and not Animated.animation == "sort_down" and not Animated.animation == "sort_left" and not Animated.animation == "sort_up":
		if Input.is_action_just_pressed("button_left") and isGuiOpen == false:
			if old_animations == "up": 
				if Animated.animation != "attack_up":
					snd_attack.play()
				_etat_anime("attack_up", false)
			if old_animations == "right":
				if Animated.animation != "attack_right":
					snd_attack.play()
				_etat_anime("attack_right", false)
			if old_animations == "down":
				if Animated.animation != "attack_down":
					snd_attack.play()
				_etat_anime("attack_down", false)
			if old_animations == "left":
				if Animated.animation != "attack_left":
					snd_attack.play()
				_etat_anime("attack_left", false)
			
	if Animated.animation == "attack_up" or Animated.animation == "attack_right" or Animated.animation == "attack_down" or Animated.animation == "attack_left":
		if Input.is_action_just_pressed("button_right") and Animated.animation == "attack_up":
				_etat_anime("sort_up", false)
				lst_endSort.isStart = true
		if Input.is_action_just_pressed("button_right") and Animated.animation == "attack_right":
				_etat_anime("sort_right", false)
				lst_endSort.isStart = true
		if Input.is_action_just_pressed("button_right") and Animated.animation == "attack_down":
				_etat_anime("sort_down", false)
				lst_endSort.isStart = true
		if Input.is_action_just_pressed("button_right") and Animated.animation == "attack_left":
				_etat_anime("sort_left", false)
				lst_endSort.isStart = true


func _on_walk_audio_finished() -> void:
	if Animated.animation == "run_up" or Animated.animation == "run_right" or Animated.animation == "run_down" or Animated.animation == "run_left" or Animated.animation == "walk_up" or Animated.animation == "walk_right" or Animated.animation == "walk_down" or Animated.animation == "walk_left":
		if Animated.animation == "run_up" or Animated.animation == "run_right" or Animated.animation == "run_down" or Animated.animation == "run_left":
			snd_walk.pitch_scale = 2
		elif Animated.animation == "walk_up" or Animated.animation == "walk_right" or Animated.animation == "walk_down" or Animated.animation == "walk_left":
			snd_walk.pitch_scale = 0.8
		snd_walk.play()


func _on_animated_sprite_2d_animation_finished() -> void:
	print("anime fini : ",Animated.animation)
	if Animated.animation == "attack_up":
		Animated.animation = "idle_up"
	
	if Animated.animation == "attack_right":
		Animated.animation = "idle_right"
		
	if Animated.animation == "attack_down":
		Animated.animation = "idle_down"
	
	if Animated.animation == "attack_left":
		Animated.animation = "idle_left"


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("COLLIDE HERO : ", area.name)
	if area.name == "Area2D_statue" and isGuiStatueOpen == false:
		isGuiStatueOpen = true
		isGuiOpen = true
		emit_signal("guiStatueOpen", "statue")
	if area.name == "Area2D_coffreStockage" and isGuiCoffreStockageOpen == false:
		isGuiCoffreStockageOpen = true
		isGuiOpen = true
		emit_signal("guiCoffreStockage", "coffre_stockage")
	if area.name == "Area2D_vForgeron" or area.name == "Area2D_mForgeron" and isGuiForgeronOpen == false:
		isGuiForgeronOpen = true
		isGuiOpen = true
		emit_signal("guiForgeronOpen", "forgeron")
	if area.name == "Area2D_vArmeArmure" or area.name == "Area2D_mArmeArmure" and isGuiArsenalOpen == false:
		isGuiArsenalOpen = true
		isGuiOpen = true
		emit_signal("guiArsenalOpen", "arsenal")
	if area.name == "Area2D_vItems" or area.name == "Area2D_mItems" and isGuiItemOpen == false:
		isGuiItemOpen = true
		isGuiOpen = true
		emit_signal("guiItemOpen", "items")
	if area.name == "Area2D_vAlchimie" or area.name == "Area2D_mAlchimie" and isGuiAlchimieOpen == false:
		isGuiAlchimieOpen = true
		isGuiOpen = true
		emit_signal("guiAlchimieOpen", "alchimie")
	if area.is_in_group("collide"):
		if Animated.animation == "idle_right" or Animated.animation == "walk_right" or Animated.animation == "run_right":
			isCollide.right = true
			vx = 0
			position.x -= 10
		if Animated.animation == "idle_down" or Animated.animation == "walk_down" or Animated.animation == "run_down":
			isCollide.down = true
			vy = 0
			position.y -= 10
		if Animated.animation == "idle_left" or Animated.animation == "walk_left" or Animated.animation == "run_left":
			isCollide.left = true
			vx = 0
			position.x += 10
		if Animated.animation == "idle_up" or Animated.animation == "walk_up" or Animated.animation == "run_up":
			isCollide.up = true
			vy = 0
			position.y += 10

func _on_area_2d_area_exited(area: Area2D) -> void:
	print("...")
	if area.is_in_group("collide"):
		print("je quitte se putain d'area ma gueule")
