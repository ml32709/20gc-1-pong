extends Node2D

var P1Score = 0
var P2Score = 0

func _process(delta):
	checkScore()
	updateScoreLabels()
	doInputActions()
	
	if get_node("Ball").contestantPoint == -1:
		P1Score += 1
		get_node("Ball").resetStatus()

	elif get_node("Ball").contestantPoint == 1:
		P2Score += 1
		get_node("Ball").resetStatus()

func updateScoreLabels():
	get_node("P1Score").text = "P1: " + str(P1Score)
	get_node("P2Score").text = "P2: " + str(P2Score)
	
func changePauseState():
	if get_tree().paused == true:
		get_node("PauseMenu").visible = false
		get_tree().paused = false
	else:
		get_node("PauseMenu").visible = true
		get_tree().paused = true
	
func doInputActions():
	if Input.is_action_just_pressed("ui_select"):
		changePauseState()

func checkScore():
	if (P1Score == 3) || (P2Score == 3):
		get_node("PauseMenu").menuText = "GAME OVER"
		get_node("PauseMenu").visible = true
		get_tree().paused = true
		
