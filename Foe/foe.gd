extends CharacterBody2D

var SPEED = 300.0
var yDirection = 0

func _physics_process(delta):
	position.x = 1050
	
	var arena_node = get_parent()
	var ball_node = arena_node.get_node("Ball")
	var ball_position = ball_node.global_position
	
	if ball_position.y > position.y:
		yDirection = 1
	
	if ball_position.y < position.y:
		yDirection = -1
	
	if ball_position.y == position.y:
		yDirection = 0
		
	velocity.y = yDirection * SPEED
		
	move_and_slide()
