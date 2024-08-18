extends Label

var tween: Tween
var wait_time: float = 1
var invisible_time: float = 0.5

func show_time(time: int):
	text = str(time)
	modulate = Color.WHITE
	if tween:
		tween.stop()
	tween = create_tween()
	tween.tween_interval(wait_time)
	tween.tween_property(self, "modulate", Color(1,1,1,0), invisible_time)
