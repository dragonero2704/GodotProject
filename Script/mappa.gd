extends CanvasLayer
@onready var pianeta_2 = %pianeta_2
@onready var pianeta_1 = %pianeta_1

const level1Scene = "/Scenes" # path to game scene 1
const level2Scene = "/Scenes"
const level3Scene = "/Scenes"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pianeta_1_pressed():
	get_tree().change_scene_to_file(level1Scene)
	pass # Replace with function body.


func _on_pianeta_2_pressed():
	get_tree().change_scene_to_file(level2Scene)
	pass # Replace with function body.
