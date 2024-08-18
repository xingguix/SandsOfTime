@tool
extends VBoxContainer


func _process(delta):
	add_theme_constant_override("separation", size.y/6)
	for i in get_children():
		if i is Button:
			i.add_theme_font_size_override("font_size", size.y/8)
