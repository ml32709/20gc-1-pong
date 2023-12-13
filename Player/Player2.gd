extends CharacterBody2D

var SPEED = 300

func _physics_process(delta):
	position.x = 1050
	# Get input directions up or down
	var direction = Input.get_axis("ui_up", "ui_down")

	velocity.y = direction * SPEED
	
	move_and_slide()
