extends RigidBody2D

const SPEED = 300
var temp = 0
var tempy = 100

var last_direction = Vector2.ZERO  
@onready var asp = $CoinSound
@onready var crash = $Crash


func _process(delta: float) -> void:
	var input_direction = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)
	
	if input_direction != Vector2.ZERO:		
		last_direction = input_direction.normalized()
	elif last_direction == Vector2.ZERO:		
		linear_velocity = Vector2.ZERO
		return
	
	linear_velocity = last_direction * SPEED
	
	if Global.score != temp:
		asp.play()
		temp = Global.score
		
	if Global.Health != tempy:
		crash.play()
		$AnimatedSprite2D.play("collision")
		tempy = Global.Health
	
		
	
	
