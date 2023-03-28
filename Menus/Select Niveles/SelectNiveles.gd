extends Node

var partida 

func _ready():
	mostrarPantalla()
	pass
	
	
#Muestra los botones para seleccionar el nivel segun el nivel alcanzado
func mostrarPantalla():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	if Global.pantalla == 0:
#		print(get_node("VBoxContainer/Nivel2").get_global_transform()[2])
		get_node("VBoxContainer/Nivel2").hide()
		get_node("VBoxContainer/Nivel3").hide()
		get_node("VBoxContainer/Nivel4").hide()

	if Global.pantalla == 1:
		get_node("VBoxContainer/Nivel3").hide()
		get_node("VBoxContainer/Nivel4").hide()

	if Global.pantalla == 2:
		get_node("VBoxContainer/Nivel4").hide()
	
	if Global.pantalla == 3:
		pass

#func _process(delta):
#	print (Global.personajeSelect)
	
#	pass

func _load_scene(nivel):
	partida = load(nivel).instantiate()
	Global.nivel = partida.get_name()
	
	
	Global.personaje = load(Global.RutaPersonajeSelect).instantiate()
	Global.personaje.set_name("personaje")
	partida.set_name("partida")
	partida.get_node("PosicionSalida1").add_child(Global.personaje)
	get_parent().get_parent().add_child(partida)
	#print (Global.personaje.get_path())
	get_parent().get_node("Sonidos/Musica01").stop()
	
	$".".queue_free()



func _on_nivel_1_pressed():
	_load_scene("res://Juego/Escenarios/Niveles/Nivel01/nivel01.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass

func _on_nivel_2_pressed():
	_load_scene("res://Juego/Escenarios/Niveles/Nivel02/nivel02.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body

func _on_nivel_3_pressed():
	_load_scene("res://Juego/Escenarios/Niveles/Nivel03/nivel03.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body

func _on_nivel_4_pressed():
	_load_scene("res://Juego/Escenarios/Niveles/Nivel04/nivel04.tscn")
	get_parent().get_node("Sonidos/boton01").play()
	pass # replace with function body





	




