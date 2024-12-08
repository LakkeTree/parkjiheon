extends Area2D

@onready var asp = $CoinSound

	

func _process(delta: float) -> void:
	$AnimatedSprite2D.play("coin_anim")


func _on_body_entered(body: Node2D) -> void:	
	queue_free()	
	Global.score += 1
