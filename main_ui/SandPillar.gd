@tool
extends TextureRect

func _process(delta):
	var parent = get_parent()
	pivot_offset = Vector2(size.x/2, parent.size.y)
	
	if not Engine.is_editor_hint():
		var time = TimeTransfer.time
		scale.y = (float(time) / 120)
