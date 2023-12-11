extends CharacterBody2D

var SPEED = 300.0

func _physics_process(delta):

	move_and_slide()
