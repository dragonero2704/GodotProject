extends Control
const menu = "res://Scenes/menu.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	var punteggio = %punteggio
	punteggio.clip_text = Globals.score #punteggio
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file(menu)
	pass # Replace with function body.
