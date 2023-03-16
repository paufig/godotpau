extends Sprite


func _ready():
	
	pass
export (Texture) var nova_textura

func _on_detector_body_entered(body):
	if body name == "copa"
		var mbappe = get_node("../Sprite")
		$Sprite.texture = nova_textura
