class_name WindowTimer extends Control

@export var label: Label

func start():
	pass

func _process(delta):
	label.text = str(TimeTransfer.time)

func _ready():
	start()
