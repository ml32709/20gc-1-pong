extends Node2D
# TODO: add game reset
# TODO: allow pause

var P1Score = 0
var P2Score = 0

func _process(delta):
	updateScoreLabels()
	
	if get_node("Ball").contestantPoint == -1:
		P1Score += 1
		get_node("Ball").resetStatus()

	elif get_node("Ball").contestantPoint == 1:
		P2Score += 1
		get_node("Ball").resetStatus()

func updateScoreLabels():
	get_node("P1Score").text = "P1: " + str(P1Score)
	get_node("P2Score").text = "P2: " + str(P2Score)

