extends Sprite

func _ready():
	visible = false

func _on_detector_body_entered(body):
	print(body.name)
	visible = true
