extends Control

var editing: bool = false
@export var sand_pillar: TextureRect
@export var time_label: Label

func closest_number(exact_number: int, numbers: Array) -> int:
	var closest: int
	for i in numbers:
		var diff: int = abs(exact_number - i)
		if diff < abs(exact_number - closest):
			closest = i
	return closest

func _process(_delta):
	time_label.position = size/2 - time_label.size/2
	time_label.add_theme_font_size_override("font_size", sand_pillar.size.x/4)
	time_label.get_theme_stylebox("normal").set_corner_radius_all(sand_pillar.size.x/4/3)
	time_label.size = time_label.get_minimum_size()

func _physics_process(_delta):
	if editing:
		var mouse_position = get_local_mouse_position()
		var exact_time: int = ((size.y - mouse_position.y)/size.y) * 120
		var result_time
		if Input.is_action_pressed("shift"):
			result_time = exact_time
		else:
			result_time = closest_number(exact_time, range(0, 121, 10))
		if TimeTransfer.time != result_time:
			time_label.show_time(result_time)
			TimeTransfer.time = result_time


func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			editing = event.pressed
