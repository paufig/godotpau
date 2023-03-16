extends Sprite
var velocitat := 100
var degrees := 100
var escala := Vector2(0.5,-0.5)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	rotation_degrees += degrees*delta
	#MOVIMENT
	var direccio = Vector2.ZERO
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("ves_esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("ves_amunt"):
		direccio += Vector2.UP
	if Input.is_action_pressed("ves_aball"):
		direccio += Vector2.DOWN
	position += direccio.normalized() * velocitat * delta
	
	if Input.is_action_pressed("ajupir"):
		scale = Vector2(0.5,0.5)
	else:
		scale = Vector2(1,1)
	
	
		
		
		
	pass
