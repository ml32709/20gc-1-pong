extends CharacterBody2D

var SPEED = 300

func _physics_process(delta):
	position.x = 100
	# Get input directions up or down
	var direction = Input.get_axis("p1_up", "p1_down")

	velocity.y = direction * SPEED
	
	move_and_slide()
