extends Area2D

@onready var timer: Timer = $Timer  # Make sure you have a Timer node as child

func _ready():
	# Configure the timer
	timer.wait_time = 2.0  # Set how long to wait (in seconds)
	timer.one_shot = true  # Timer runs once, then stops
	timer.timeout.connect(_on_timer_timeout)  # Connect the signal

func _on_body_entered(body):
	print("think about the cavities!")
	timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()
