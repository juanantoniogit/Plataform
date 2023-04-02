extends Control

@onready var vidas = $"Label"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(Global.puntos)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	vidas.text = "Vidas: " + str(Global.vida)
	

#	$".".position.x= get_viewport().size.x *(-0.49)
	#(get_viewport().size*0.1)
	
	
	#get_viewport().position = $"/root/partida/PosicionSalida1/personaje".position
	# Obtener el viewport actual
	#var viewport = get_viewport()
	#var posPlayer = $"/root/partida/PosicionSalida1/personaje".position
# Obtener la posición actual del viewport
	#var position = viewport.get_position()
	#viewport.set_position(posPlayer)
	
	
	
	pass
