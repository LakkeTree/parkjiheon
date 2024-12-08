extends TextureProgressBar

func _ready():
	self.value = Global.Health
	
func _process(delta: float) -> void:
	self.value = Global.Health
