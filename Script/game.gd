extends Node2D

@onready var player_spawn_pos = $PlayerSpawnPos
@onready var laser_container = $LaserContainer

@export var enemy_scenes: Array[PackedScene] = []
@onready var timer =  $EnemySpawnerTimer
@onready var EnemyContainer = $EnemyContainer
var player = null

func _ready():
	player = get_tree().get_first_node_in_group("player")
	assert(player!=null)
	player.global_position = player_spawn_pos.global_position
	player.laser_shoot.connect(_on_player_laser_shoot)

func _process(_delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
	
func _on_player_laser_shoot(laser_scene, location):
	var laser = laser_scene.instantiate()
	laser.global_position = location
	laser_container.add_child(laser)


func _on_enemy_spawner_timer_timeout():
	print("Spawning enemy")
	var e = enemy_scenes[0].instantiate()
	e.global_position = Vector2(270, 50)
	EnemyContainer.add_child(e)
	print(EnemyContainer)
	 # Replace with function body.
