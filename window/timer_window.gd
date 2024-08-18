class_name TimerWindow extends Window

var screen_size = DisplayServer.screen_get_size()
@export var window_timer: WindowTimer

# Called when the node enters the scene tree for the first time.
func to_center():
	position = Vector2i(screen_size.x / 2, 0) + Vector2i(-size.x/2, 0)
	

func start():
	show()
	window_timer.start()

func _process(_delta):
	to_center()

func _ready():
	get_viewport().transparent_bg = true
