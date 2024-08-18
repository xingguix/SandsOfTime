@tool
extends VBoxContainer


func _process(delta):
	add_theme_constant_override("separation", size.y/6)
