extends Control

const level1 = "res://Scenes/game1.tscn"
const level2 = "res://Scenes/game2.tscn"
const level3 = "res://Scenes/game3.tscn"
const menu = "res://Scenes/menu.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_icy_planet_button_pressed():
	get_tree().change_scene_to_file(level1)
	pass # Replace with function body.


func _on_water_planet_button_pressed():
	get_tree().change_scene_to_file(level2)
	pass # Replace with function body.


func _on_fire_planet_button_pressed():
	get_tree().change_scene_to_file(level3)
	pass # Replace with function body.


func _on_back_to_menu_pressed():
	get_tree().change_scene_to_file(menu)
	pass # Replace with function body.
