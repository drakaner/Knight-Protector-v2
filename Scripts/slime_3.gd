extends Node2D

@onready var Animated = get_node("area_slime_3/AnimatedSprite2D_slime3")
@onready var NodeGamePlay = get_parent()

var isCollide = { up = false, right = false, down = false, left = false }

#idle / move / run / attack / hurt / dead
var etat_ennemy = ""
var etat_time = 0
var etat_timePoursuite = 0
var etat_bool = false
var rnd_etat = 0
var etat_vx = 0
var etat_vy = 0

var area = ""

var nb_stat_attaque = 20
var nb_stat_vie = 100
var nb_stat_defense = 0
var nb_gain_xp = 10

func _etat_anime(pAnime, pLoop):
	
	Animated.sprite_frames.set_animation_loop(pAnime, pLoop)
	Animated.animation = pAnime
	if pAnime == "attack_up" or pAnime == "attack_right" or pAnime == "attack_down" or pAnime == "attack_left":
		Animated.speed_scale = 5
	elif pAnime == "run_up" or pAnime == "run_right" or pAnime == "run_down" or pAnime == "run_left":
		Animated.speed_scale = 3
	else:
		Animated.speed_scale = 1
	Animated.play()

func _choisir_direction_poursuite() -> String:
	var cible = NodeGamePlay.hero.img[NodeGamePlay.hero.current].position
	var diff = cible - position

	if abs(diff.x) > abs(diff.y):
		return "run_right" if diff.x > 0 else "run_left"
	else:
		return "run_down" if diff.y > 0 else "run_up"

func _machine_a_etat(delta: float):
	var dx = NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.x - position.x
	var dy = NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.y - position.y
	
	var distance = sqrt( dx * dx + dy * dy)
	
	#print("la distance entre le hero et le slime est de : ", distance)
	
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
		
		if distance < 200:
			etat_ennemy = "poursuite"
			etat_bool = false
		
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
		
		if distance < 200:
			etat_ennemy = "poursuite"
			etat_bool = false
		
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
	
	elif etat_ennemy == "poursuite":
		if NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.x > position.x:
			etat_ennemy = "run_right"
		if NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.x < position.x:
			etat_ennemy = "run_left"
		
		if NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.y > position.y:
			etat_ennemy = "run_down"
		if NodeGamePlay.hero.img[NodeGamePlay.hero.current].position.y < position.y:
			etat_ennemy = "run_up"
		
	
	elif etat_ennemy.begins_with("run_"):
		etat_timePoursuite -= delta
		
		if etat_timePoursuite <= 0:
			etat_timePoursuite = 0.2
			var nouvel_etat = _choisir_direction_poursuite()
			if nouvel_etat != etat_ennemy:
				etat_ennemy = nouvel_etat
				etat_bool = false

		match etat_ennemy:
			"run_up":    position += Vector2(0, -140) * delta
			"run_down":  position += Vector2(0, 140) * delta
			"run_left":  position += Vector2(-140, 0) * delta
			"run_right": position += Vector2(140, 0) * delta

		if etat_bool == false:
			_etat_anime(etat_ennemy, true)
			etat_bool = true
		
		if distance <= 20:
			if etat_ennemy == "run_up":
				etat_ennemy = "attack_up"
			elif etat_ennemy == "run_right":
				etat_ennemy = "attack_right"
			elif etat_ennemy == "run_down":
				etat_ennemy = "attack_down"
			elif etat_ennemy == "run_left":
				etat_ennemy = "attack_left"
			etat_bool = false
			etat_timePoursuite = 0.2
			etat_time = 1
		
		if distance > 250:
			etat_ennemy = "idle_down"
			etat_bool = false
			etat_timePoursuite = 0.2
			etat_time = 1
	
	elif etat_ennemy == "attack_up" or etat_ennemy == "attack_right" or etat_ennemy == "attack_down" or etat_ennemy == "attack_left" :
		if etat_bool == false:
			_etat_anime(etat_ennemy, false)
			etat_bool = true
		position += Vector2(etat_vx, etat_vy)*delta
		etat_vx = 0
		etat_vy = 0
		if $area_slime_3/AnimatedSprite2D_slime3.frame >= 8:
			print("l'animation est finie !")
			etat_ennemy = "reflexion"
			$area_slime_3/AnimatedSprite2D_slime3.frame = 0
			DataSave.hero.vie -= nb_stat_attaque
			etat_time = randi_range(2, 5)
			etat_timePoursuite = 0.5
			etat_bool = false
	
	elif etat_ennemy == "reflexion":
		if etat_bool == false:
			_etat_anime("idle_down", true)
			etat_bool = true
		etat_time -= delta
		if etat_time <= 0:
			etat_ennemy = "idle_down"
			etat_bool = false
			etat_time = randi_range(1, 2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$area_slime_3.add_to_group("collide")
	
	etat_ennemy = "idle_down"
	
	_etat_anime("idle_down", true)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_machine_a_etat(delta)


func _on_area_slime_3_area_entered(area: Area2D) -> void:
	if area.is_in_group("collide"):
		if Animated.animation == "idle_right" or Animated.animation == "walk_right" or Animated.animation == "run_right":
			isCollide.right = true
			etat_vx = 0
			position.x -= 10
			etat_ennemy = "idle_right"
			etat_bool = false
		if Animated.animation == "idle_down" or Animated.animation == "walk_down" or Animated.animation == "run_down":
			isCollide.down = true
			etat_vy = 0
			position.y -= 10
			etat_ennemy = "idle_down"
			etat_bool = false
		if Animated.animation == "idle_left" or Animated.animation == "walk_left" or Animated.animation == "run_left":
			isCollide.left = true
			etat_vx = 0
			position.x += 10
			etat_ennemy = "idle_left"
			etat_bool = false
		if Animated.animation == "idle_up" or Animated.animation == "walk_up" or Animated.animation == "run_up":
			isCollide.up = true
			etat_vy = 0
			position.y += 10
			etat_ennemy = "idle_up"
			etat_bool = false
