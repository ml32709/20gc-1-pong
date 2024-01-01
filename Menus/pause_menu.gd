extends Node2D

var menuText = "PAUSED"

func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	get_node("Label").text = menuText
	visible = false
	
func _process(delta):
	get_node("Label").text = menuText

func _on_continue_button_pressed():
	visible = false
	get_tree().paused = false

func _on_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://main.tscn")
