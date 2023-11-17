extends CharacterBody2D

@export var speed:            int
@export var player_character: bool

var _direction := Vector2.ZERO

func _process(_delta: float) -> void:
	_direction = Vector2.ZERO
	
	if player_character:
		_direction.y = Input.get_axis('player-one-up', 'player-one-down')
	else:
		_direction.y = Input.get_axis('player-two-up', 'player-two-down')

func _physics_process(delta: float) -> void:
	move_and_collide(speed * delta * _direction)
