extends Area2D


@export var speed = 600


func _physics_process(delta):
	global_position.y += -speed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_area_entered(area):
	print(area)
	print(Enemy)
	if area is Enemy:
		Globals.score += 1
		area.die()
		queue_free()
