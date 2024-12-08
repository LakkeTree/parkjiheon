extends CharacterBody2D


var direction = 1  
var speed = 100  

func _ready():	
	$RayCast2D.target_position.y = abs($RayCast2D.target_position.y)

func _physics_process(delta: float) -> void:
	$AnimatedSprite2D.play("spin")  

	# RayCast 충돌 감지
	if $RayCast2D.is_colliding():	
		direction *= -1		
		$RayCast2D.target_position.y = abs($RayCast2D.target_position.y) * direction
	
	velocity.y = speed * direction
	move_and_slide()
	

func _on_area_body_entered(body: Node2D) -> void:
	Global.Health -= 10
