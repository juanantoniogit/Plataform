extends Node

var SelecNiveles = preload("res://Menus/Select Niveles/SelectNiveles.tscn").instantiate()

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	pass
	
func _load_scene(personaje):
	Global.personaje = load(personaje).instantiate()
	Global.personaje.set_name("personaje")
	Global.RutaPersonajeSelect = personaje
	get_node("/root/Global Menus").add_child(SelecNiveles)
	$".".queue_free()

func _on_player_1_pressed():
	_load_scene("res://Juego/Players/Player01/player01.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body

func _on_player_2_pressed():
	_load_scene("res://Juego/Players/Player02/player02.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body

#func _process(delta):
#	print (Global.personaje)
#	print (Global.personajeSelect)

