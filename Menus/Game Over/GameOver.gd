extends Node

var tope = 160
var contador = 0
@onready var MenuPrincipal = preload("res://Menus/Menu Principal/MenuPrincipal.tscn").instantiate()


func _ready():
	set_process(true)
	#print($".".get_node("AudioGameOver").play())
	pass

func _process(delta):
	contador += 100*delta
	if contador > tope:
		print("fuera")
		
		get_node("/root/Global Menus").add_child(MenuPrincipal)
		get_parent().get_node("Global Menus/Sonidos/Musica03").play()
		#get_parent().get_node("Global Menus/SelectNiveles").queue_free()
		#get_node("/root/SelectNiveles").queue_free()
		$".".queue_free()
	pass
