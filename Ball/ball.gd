extends CharacterBody2D

var SPEED = 300.0
var xDirection = -1
var yDirection = -1
var contestantPoint = 0

func _physics_process(delta):
	velocity.x = xDirection * SPEED
	velocity.y = yDirection * SPEED
	move_and_slide()

func _on_bump_detection_body_entered(body):
	if body.name == "PointWall" || body.name == "PointWall2":
		SPEED = 0
		if xDirection == -1:
			contestantPoint = 1
		if xDirection == 1:
			contestantPoint = -1
	else:
		SPEED += 20
		xDirection *= -1

func _on_wall_bump_detection_body_entered(body):
	yDirection *= -1

func resetStatus():
	position.x = 575
	position.y = 325
	contestantPoint = 0
	SPEED = 300
