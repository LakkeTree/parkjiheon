extends RigidBody2D

const SPEED = 300;

var last_direction = Vector2.ZERO  

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
