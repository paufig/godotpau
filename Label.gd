extends Label


var temps_inicial = 0
var temps_actual = 0
var actualitza_cronometre := true
var diferencia = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	temps_inicial = OS.get_system_time_msecs()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(actualitza_cronometre)
	if actualitza_cronometre:
		temps_actual = OS.get_system_time_msecs()
	diferencia = temps_actual - temps_inicial
	var minuts = floor(diferencia/1000/60)

	var segons = (diferencia/1000 - minuts*60)
	text = "%02d:%02d" % [minuts,segons]
