extends Node2D

@onready var Animated = get_node("area_slime_3/AnimatedSprite2D_slime3")
#faut plus qu'il puisse traverser les murs donc inspire toi du code sur le hero
#idle / move / run / attack / hurt / dead
var etat_ennemy = ""
var etat_time = 0
var etat_bool = false
var rnd_etat = 0
var etat_vx = 0
var etat_vy = 0

func _etat_anime(pAnime, pLoop):
	
	Animated.sprite_frames.set_animation_loop(pAnime, pLoop)
	Animated.animation = pAnime
	if pAnime == "attack_up" or pAnime == "attack_right" or pAnime == "attack_down" or pAnime == "attack_left":
		Animated.speed_scale = 2
	elif pAnime == "run_up" or pAnime == "run_right" or pAnime == "run_down" or pAnime == "run_left":
		Animated.speed_scale = 3
	else:
		Animated.speed_scale = 1
	Animated.play()

func _machine_a_etat(delta: float):
	if etat_ennemy == "idle_down" or etat_ennemy == "idle_left" or etat_ennemy == "idle_up" or etat_ennemy == "idle_right" :
		etat_vx = 0
		etat_vy = 0
		if etat_bool == false:
			if etat_ennemy == "idle_down":
				_etat_anime("idle_down", true)
			elif etat_ennemy == "idle_left":
				_etat_anime("idle_left", true)
			elif etat_ennemy == "idle_up":
				_etat_anime("idle_up", true)
			elif etat_ennemy == "idle_right":
				_etat_anime("idle_right", true)
			etat_time = randi_range(2, 3)
			etat_bool = true
		
		etat_time -= delta
		if etat_time <= 0:
			rnd_etat = randi_range(1, 4)
			etat_bool = false
			if rnd_etat == 1:
				etat_ennemy = "walk_up"
			elif rnd_etat == 2:
				etat_ennemy = "walk_right"
			elif rnd_etat == 3:
				etat_ennemy = "walk_down"
			elif rnd_etat == 4:
				etat_ennemy = "walk_left"
	
	elif etat_ennemy == "walk_down" or etat_ennemy == "walk_left" or etat_ennemy == "walk_up" or etat_ennemy == "walk_right" :
		if etat_bool == false:
			if etat_ennemy == "walk_down":
				_etat_anime("walk_down", true)
				etat_vy = 70
			elif etat_ennemy == "walk_left":
				_etat_anime("walk_left", true)
				etat_vx = -70
			elif etat_ennemy == "walk_up":
				_etat_anime("walk_up", true)
				etat_vy = -70
			elif etat_ennemy == "walk_right":
				_etat_anime("walk_right", true)
				etat_vx = 70
			etat_time = randi_range(4, 6)
			etat_bool = true
		
		position += Vector2(etat_vx, etat_vy)*delta
		
		etat_time -= delta
		if etat_time <= 0:
			rnd_etat = randi_range(1, 4)
			etat_bool = false
			if rnd_etat == 1:
				etat_ennemy = "idle_up"
			elif rnd_etat == 2:
				etat_ennemy = "idle_right"
			elif rnd_etat == 3:
				etat_ennemy = "idle_down"
			elif rnd_etat == 4:
				etat_ennemy = "idle_left"
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$area_slime_3.add_to_group("collide")
	
	etat_ennemy = "idle_down"
	
	_etat_anime("idle_down", true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_machine_a_etat(delta)
