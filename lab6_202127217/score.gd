extends Label

func _process(delta: float) -> void:
	text = "Coins: " + str(Global.score)
	
