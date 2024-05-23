class_name Enemy extends Area2D

@export var speed = 150

func _physics_process(delta):
	global_position.y += speed * delta

func die():
	queue_free()

func _on_body_entered(body):
	if body.name == "Player":
		body.die()
		self.die()
		get_tree().change_scene_to_file("res://Scenes/gameover.tscn")
