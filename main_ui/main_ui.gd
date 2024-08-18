extends Control

@export var button_player: AudioStreamPlayer2D
@export var finish_player: AudioStreamPlayer2D
@export var music_player: AudioStreamPlayer2D
@export var timer: Timer
@export var timer_window: TimerWindow

@onready var p10 = $"AudioPlayers/10"
@onready var p20 = $"AudioPlayers/20"
@onready var p30 = $"AudioPlayers/30"

func _ready():
	TranslationServer.set_locale(OS.get_locale_language())

func play_button_sound():
	button_player.play()

func finish():
	timer.stop()
	music_player.stop()
	finish_player.play()
	get_window().mode = Window.MODE_WINDOWED

func start():
	if OS.get_name() == "Windows":
		get_window().mode = Window.MODE_MINIMIZED
	timer.start()
	timer_window.start()
	music_player.play()

func _on_start_pressed():
	start()

func _on_settings_pressed():
	play_button_sound()

func _on_music_finished():
	music_player.play()

func _on_timer_timeout():
	if TimeTransfer.time > 0:
		TimeTransfer.time -= 1
	var time = TimeTransfer.time
	if time == 30:
		p30.play()
	elif time == 20:
		p20.play()
	elif time <= 10:
		p10.play()
		if time == 0:
			finish()
