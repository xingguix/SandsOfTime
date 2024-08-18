extends TextureRect

func _process(delta):
	var parent = get_parent()
	pivot_offset = Vector2(size.x/2, parent.size.y)
	var time = TimeTransfer.time
	time = 30
	size.y = (time / 120) * parent.size.y
