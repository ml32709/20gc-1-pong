extends CharacterBody2D

var SPEED = 300.0

func _physics_process(delta):

	move_and_slide()

func _on_bump_detection_body_entered(body):
	if body.name == "player":
		# Flip x direction
		pass
		
	if body.name == "foe":
		#Flip x direction
		pass
		
	if body.name == "PointWall":
		# Need to distinguish between left and right wall, then change score accordingly
		pass
