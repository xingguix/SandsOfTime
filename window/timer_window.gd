class_name TimerWindow extends Window

var screen_size = DisplayServer.screen_get_size()
@export var son: Control

# Called when the node enters the scene tree for the first time.
func to_center():
	position = Vector2i(screen_size.x / 2, 0) - size/2

func match_size():
	size = son.size

func _process(delta):
	to_center()

func _ready():
	pass
