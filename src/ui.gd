extends HBoxContainer

var score := [0, 0]

@onready var player_one_score_label := $PlayerOneScoreLabel
@onready var player_two_score_label := $PlayerTwoScoreLabel

func _on_right_goal_body_entered(_body: Node2D) -> void:
	score[0] += 1
	player_one_score_label.text = str(score[0])

func _on_left_goal_body_entered(_body: Node2D) -> void:
	score[1] += 1
	player_two_score_label.text = str(score[1])
