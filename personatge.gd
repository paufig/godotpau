extends KinematicBody2D
var velocitat := 500
var degrees := 100
var escala := Vector2(0.25,-0.25)
var moviment := Vector2(0,0)
var gravetat := Vector2.DOWN*100
var direccio = Vector2.ZERO
var temps = 0


func _ready():
	pass



func _process(delta):

	#MOVIMENT
	moviment.x = 0
	direccio.x = 0
	moviment += gravetat * delta
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT*10
	if Input.is_action_pressed("ves_esquerra"):
		direccio += Vector2.LEFT*10
	if Input.is_action_just_pressed("saltar") and is_on_floor():
		moviment.y = -200
	
	if Input.is_action_pressed("ajupir"):
		scale = Vector2(0.5,0.5)
	else:
		scale = Vector2(1,1)
		
	moviment += direccio.normalized()*velocitat
	moviment += gravetat * delta
	moviment = move_and_slide(moviment, Vector2.UP)
	



export(Texture) var nova_textura

func _on_detector_body_entered(body):
	if body.name == "personatge":
		$Label.actualitza_cronometre = false
		$guanyat.text = "Has guanyat :)"

func _on_lava_body_entered(body):
	if body.name == "personatge":
		$Label.actualitza_cronometre = false
		var mbappe = get_node("../Sprite")
		$Icon.texture = nova_textura
		$perdut.text = "Has perdut :("
		
