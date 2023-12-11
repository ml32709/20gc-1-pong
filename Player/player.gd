extends CharacterBody2D

var SPEED = 300

func _physics_process(delta):
	# Get input directions up or down
	var direction = Input.get_axis("ui_up", "ui_down")
	print(direction)

	velocity.y = direction * SPEED
	
	move_and_slide()
