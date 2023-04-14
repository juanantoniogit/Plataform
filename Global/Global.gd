extends Node
@onready var MenuGameOver = preload("res://Menus/Game Over/GameOver.tscn").instantiate()
@onready var SelecNiveles = preload("res://Menus/Select Niveles/SelectNiveles.tscn").instantiate()

var personaje = 0
var RutaPersonajeSelect = 0
var nivel = 0
var vida = 0
var puntos = 0
var arma = 0
var pantalla = 0


func _physics_process(delta):
	print("pantalla: " + str(pantalla))
	print("nivel: " + str(nivel))
func Menu():
	print("MUERTE")
	if Global.vida == 0:
		$".".get_parent().add_child(MenuGameOver)
		Global.vida = 3
		Global.nivel = 0
		Global.puntos = 0
		Global.arma = 0
		Global.pantalla = 0
	#get_child(0).name
	
	get_parent().get_node("partida").queue_free()
	#get_node("/root/Global Menus").add_child(SelecNiveles)
	print (get_parent().name)
	
	#$"/root/Global Menus/SelecNiveles".queue_free()
