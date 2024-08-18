@tool
extends VBoxContainer


func _process(delta):
	var label: Label = get_child(0)
	var line_height = label.get_line_height()
	add_theme_constant_override("separation", size.y/4 - line_height)
	for i in get_children():
		i.add_theme_font_size_override("font_size", size.y /4 /3 /1.8)
